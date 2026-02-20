#include "vulkan_raw_stacker.h"
#include "accumulate_raw.comp.h"
#include "align_lk.comp.h"
#include "common.h"
#include "normalize_raw.comp.h"
#include "raw_structure_tensor.comp.h"
#include "robustness_raw.comp.h"
#include <algorithm>
#include <cstring>
#include <sys/resource.h>
#include <unistd.h>

#define VK_CHECK(x)                                                            \
  do {                                                                         \
    VkResult err = x;                                                          \
    if (err) {                                                                 \
      LOGE("Vulkan error: %d at %s:%d", err, __FILE__, __LINE__);              \
    }                                                                          \
  } while (0)

VulkanRawStacker::VulkanRawStacker(uint32_t w, uint32_t h, bool enableSuperRes,
                                   const float *blackLevel, float whiteLevel,
                                   const float *wbGains,
                                   const float *noiseModel,
                                   const float *lensShadingMap,
                                   uint32_t lscWidth, uint32_t lscHeight)
    : width(w), height(h), mEnableSuperRes(enableSuperRes),
      mWhiteLevel(whiteLevel), mLscWidth(lscWidth), mLscHeight(lscHeight) {

  if (blackLevel)
    memcpy(mBlackLevel, blackLevel, 4 * sizeof(float));
  if (wbGains)
    memcpy(mWbGains, wbGains, 4 * sizeof(float));
  if (noiseModel)
    memcpy(mNoiseModel, noiseModel, 2 * sizeof(float));
  if (lensShadingMap && lscWidth > 0 && lscHeight > 0) {
    size_t size = (size_t)lscWidth * lscHeight * 4;
    mLensShadingMap.assign(lensShadingMap, lensShadingMap + size);
  }

  numTilesX = 1;
  numTilesY = 1;

  VulkanManager::getInstance().init();
  initVulkanResources();
}

VulkanRawStacker::~VulkanRawStacker() {
  pendingFrames.clear();
  releaseVulkanResources();
}

void VulkanRawStacker::initVulkanResources() {
  VulkanManager &vm = VulkanManager::getInstance();
  VkDevice device = vm.getDevice();

  uint32_t scale = mEnableSuperRes ? 2 : 1;
  uint32_t outW = width * scale;
  uint32_t outH = height * scale;

  uint32_t planeW = outW;
  uint32_t planeH = outH;

  // Input dimensions (for Kernel/Robustness/Alignment)
  uint32_t inputW = width / 2;
  uint32_t inputH = height / 2;

  uint32_t tileW = (planeW + numTilesX - 1) / numTilesX;
  uint32_t tileH = (planeH + numTilesY - 1) / numTilesY;
  uint32_t stride = tileW + 16;
  VkDeviceSize accumBufferSize =
      (VkDeviceSize)stride * (tileH + 16) * sizeof(float) * 2;

  // We accumulate R, G, B planes separately now?
  // Or stay with 4 bayer planes if compatible?
  // Our accumulate shader supports picking output channel.
  // We allocate buffers for 3 channels (RGB) or 4 (RGGB).
  // Let's stick to 4 buffers per tile for RGGB for now,
  // but if we output RGB, we use 0,1,2.

  int totalBuffers = numTilesX * numTilesY * 4;
  accumBuffers.resize(totalBuffers);
  accumMemories.resize(totalBuffers);
  accumSets.resize(totalBuffers);
  normalizeSets.resize(totalBuffers);
  alignLkSets.resize(totalBuffers);
  robustnessSets.resize(totalBuffers);

  for (int i = 0; i < totalBuffers; ++i) {
    VkBufferCreateInfo bufferInfo{};
    bufferInfo.sType = VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO;
    bufferInfo.size = accumBufferSize;
    bufferInfo.usage =
        VK_BUFFER_USAGE_STORAGE_BUFFER_BIT | VK_BUFFER_USAGE_TRANSFER_DST_BIT;
    bufferInfo.sharingMode = VK_SHARING_MODE_EXCLUSIVE;

    VK_CHECK(vkCreateBuffer(device, &bufferInfo, nullptr, &accumBuffers[i]));

    VkMemoryRequirements memReqs;
    vkGetBufferMemoryRequirements(device, accumBuffers[i], &memReqs);

    VkMemoryAllocateInfo allocInfo{};
    allocInfo.sType = VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO;
    allocInfo.allocationSize = memReqs.size;
    allocInfo.memoryTypeIndex = vm.findMemoryType(
        memReqs.memoryTypeBits, VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT);

    VK_CHECK(vkAllocateMemory(device, &allocInfo, nullptr, &accumMemories[i]));
    vkBindBufferMemory(device, accumBuffers[i], accumMemories[i], 0);
  }

  // Staging Buffer for Planar RGB (3 channels * 16-bit)
  VkDeviceSize stagingSize =
      (VkDeviceSize)width * height * scale * scale * 3 * sizeof(uint16_t);
  VkBufferCreateInfo stagingInfo{};
  stagingInfo.sType = VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO;
  stagingInfo.size = stagingSize;
  stagingInfo.usage =
      VK_BUFFER_USAGE_STORAGE_BUFFER_BIT | VK_BUFFER_USAGE_TRANSFER_SRC_BIT;
  stagingInfo.sharingMode = VK_SHARING_MODE_EXCLUSIVE;

  VK_CHECK(vkCreateBuffer(device, &stagingInfo, nullptr, &stagingBuffer));

  VkMemoryRequirements stagingReqs;
  vkGetBufferMemoryRequirements(device, stagingBuffer, &stagingReqs);

  VkMemoryAllocateInfo stagingAlloc{};
  stagingAlloc.sType = VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO;
  stagingAlloc.allocationSize = stagingReqs.size;
  stagingAlloc.memoryTypeIndex = vm.findMemoryType(
      stagingReqs.memoryTypeBits, VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT |
                                      VK_MEMORY_PROPERTY_HOST_COHERENT_BIT);

  VK_CHECK(vkAllocateMemory(device, &stagingAlloc, nullptr, &stagingMemory));
  vkBindBufferMemory(device, stagingBuffer, stagingMemory, 0);

  // Descriptor Pool
  VkDescriptorPoolSize poolSizes[2] = {};
  poolSizes[0].type = VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER;
  poolSizes[0].descriptorCount = (uint32_t)totalBuffers * 32; // Increased
  poolSizes[1].type = VK_DESCRIPTOR_TYPE_STORAGE_BUFFER;
  poolSizes[1].descriptorCount = (uint32_t)totalBuffers * 32;

  VkDescriptorPoolCreateInfo poolInfo{};
  poolInfo.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO;
  poolInfo.flags = VK_DESCRIPTOR_POOL_CREATE_FREE_DESCRIPTOR_SET_BIT;
  poolInfo.maxSets = (uint32_t)totalBuffers * 32;
  poolInfo.poolSizeCount = 2;
  poolInfo.pPoolSizes = poolSizes;
  VK_CHECK(vkCreateDescriptorPool(device, &poolInfo, nullptr, &descriptorPool));

  // --- Alignment Buffer (Coarse) ---
  tileSize = 32; // Default
  gridW = (inputW + tileSize - 1) / tileSize;
  gridH = (inputH + tileSize - 1) / tileSize; // Grid on Plane Resolution

  VkDeviceSize alignBufferSize = (VkDeviceSize)gridW * gridH * sizeof(Point);
  VkBufferCreateInfo alignInfo{};
  alignInfo.sType = VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO;
  alignInfo.size = alignBufferSize;
  alignInfo.usage = VK_BUFFER_USAGE_STORAGE_BUFFER_BIT;
  alignInfo.sharingMode = VK_SHARING_MODE_EXCLUSIVE;
  VK_CHECK(vkCreateBuffer(device, &alignInfo, nullptr, &alignmentBuffer));

  VkMemoryRequirements alignMemReqs;
  vkGetBufferMemoryRequirements(device, alignmentBuffer, &alignMemReqs);
  VkMemoryAllocateInfo alignAlloc{};
  alignAlloc.sType = VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO;
  alignAlloc.allocationSize = alignMemReqs.size;
  alignAlloc.memoryTypeIndex = vm.findMemoryType(
      alignMemReqs.memoryTypeBits, VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT |
                                       VK_MEMORY_PROPERTY_HOST_COHERENT_BIT);
  VK_CHECK(vkAllocateMemory(device, &alignAlloc, nullptr, &alignmentMemory));
  vkBindBufferMemory(device, alignmentBuffer, alignmentMemory, 0);

  // --- Intermediate Buffers for Handheld Super-Res ---

  // 1. Kernel Buffer (vec4 per plane pixel)
  VkDeviceSize kernelSize = (VkDeviceSize)inputW * inputH * sizeof(float) * 4;
  VkBufferCreateInfo kInfo{VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO};
  kInfo.size = kernelSize;
  kInfo.usage = VK_BUFFER_USAGE_STORAGE_BUFFER_BIT;
  kInfo.sharingMode = VK_SHARING_MODE_EXCLUSIVE;
  VK_CHECK(vkCreateBuffer(device, &kInfo, nullptr, &kernelBuffer));

  VkMemoryRequirements kReqs;
  vkGetBufferMemoryRequirements(device, kernelBuffer, &kReqs);
  VkMemoryAllocateInfo kAlloc{VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO};
  kAlloc.allocationSize = kReqs.size;
  kAlloc.memoryTypeIndex = vm.findMemoryType(
      kReqs.memoryTypeBits, VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT);
  VK_CHECK(vkAllocateMemory(device, &kAlloc, nullptr, &kernelMemory));
  vkBindBufferMemory(device, kernelBuffer, kernelMemory, 0);

  // 2. Robustness Buffer (float per plane pixel)
  VkDeviceSize rSize = (VkDeviceSize)inputW * inputH * sizeof(float);
  VkBufferCreateInfo rInfo{VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO};
  rInfo.size = rSize;
  rInfo.usage = VK_BUFFER_USAGE_STORAGE_BUFFER_BIT;
  rInfo.sharingMode = VK_SHARING_MODE_EXCLUSIVE;
  VK_CHECK(vkCreateBuffer(device, &rInfo, nullptr, &robustnessBuffer));

  VkMemoryRequirements rReqs;
  vkGetBufferMemoryRequirements(device, robustnessBuffer, &rReqs);
  VkMemoryAllocateInfo rAlloc{VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO};
  rAlloc.allocationSize = rReqs.size;
  rAlloc.memoryTypeIndex = vm.findMemoryType(
      rReqs.memoryTypeBits, VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT);
  VK_CHECK(vkAllocateMemory(device, &rAlloc, nullptr, &robustnessMemory));
  vkBindBufferMemory(device, robustnessBuffer, robustnessMemory, 0);

  // Clear Accumulator Buffers
  VkCommandBuffer cb = vm.beginSingleTimeCommands();
  for (int i = 0; i < totalBuffers; ++i) {
    vkCmdFillBuffer(cb, accumBuffers[i], 0, accumBufferSize, 0);
    VkBufferMemoryBarrier barrier{};
    barrier.sType = VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER;
    barrier.srcAccessMask = VK_ACCESS_TRANSFER_WRITE_BIT;
    barrier.dstAccessMask =
        VK_ACCESS_SHADER_READ_BIT | VK_ACCESS_SHADER_WRITE_BIT;
    barrier.buffer = accumBuffers[i];
    barrier.size = accumBufferSize;
    vkCmdPipelineBarrier(cb, VK_PIPELINE_STAGE_TRANSFER_BIT,
                         VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT, 0, 0, nullptr, 1,
                         &barrier, 0, nullptr);
  }

  // Initial Clear for Alignment Buffer
  void *ptr;
  vkMapMemory(device, alignmentMemory, 0, alignBufferSize, 0, &ptr);
  memset(ptr, 0, (size_t)alignBufferSize);
  vkUnmapMemory(device, alignmentMemory);

  // --- 3. Lens Shading Map Texture ---
  VkBuffer lscStagingBuffer = VK_NULL_HANDLE;
  VkDeviceMemory lscStagingMemory = VK_NULL_HANDLE;

  if (mLensShadingMap.empty()) {
    mLscWidth = 1;
    mLscHeight = 1;
    mLensShadingMap = {1.0f, 1.0f, 1.0f, 1.0f};
  }

  {
    VkImageCreateInfo imageInfo{};
    imageInfo.sType = VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO;
    imageInfo.imageType = VK_IMAGE_TYPE_2D;
    imageInfo.extent.width = mLscWidth;
    imageInfo.extent.height = mLscHeight;
    imageInfo.extent.depth = 1;
    imageInfo.mipLevels = 1;
    imageInfo.arrayLayers = 1;
    imageInfo.format = VK_FORMAT_R32G32B32A32_SFLOAT;
    imageInfo.tiling = VK_IMAGE_TILING_OPTIMAL;
    imageInfo.initialLayout = VK_IMAGE_LAYOUT_UNDEFINED;
    imageInfo.usage =
        VK_IMAGE_USAGE_TRANSFER_DST_BIT | VK_IMAGE_USAGE_SAMPLED_BIT;
    imageInfo.samples = VK_SAMPLE_COUNT_1_BIT;
    imageInfo.sharingMode = VK_SHARING_MODE_EXCLUSIVE;

    VK_CHECK(vkCreateImage(device, &imageInfo, nullptr, &lscImage));

    VkMemoryRequirements memReqs;
    vkGetImageMemoryRequirements(device, lscImage, &memReqs);

    VkMemoryAllocateInfo allocInfo{};
    allocInfo.sType = VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO;
    allocInfo.allocationSize = memReqs.size;
    allocInfo.memoryTypeIndex = vm.findMemoryType(
        memReqs.memoryTypeBits, VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT);

    VK_CHECK(vkAllocateMemory(device, &allocInfo, nullptr, &lscMemory));
    vkBindImageMemory(device, lscImage, lscMemory, 0);

    // Upload Data using staging buffer
    VkDeviceSize lscSize = mLensShadingMap.size() * sizeof(float);
    VkBufferCreateInfo bufferInfo{};
    bufferInfo.sType = VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO;
    bufferInfo.size = lscSize;
    bufferInfo.usage = VK_BUFFER_USAGE_TRANSFER_SRC_BIT;
    bufferInfo.sharingMode = VK_SHARING_MODE_EXCLUSIVE;
    vkCreateBuffer(device, &bufferInfo, nullptr, &lscStagingBuffer);

    vkGetBufferMemoryRequirements(device, lscStagingBuffer, &memReqs);
    allocInfo.allocationSize = memReqs.size;
    allocInfo.memoryTypeIndex = vm.findMemoryType(
        memReqs.memoryTypeBits, VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT |
                                    VK_MEMORY_PROPERTY_HOST_COHERENT_BIT);
    vkAllocateMemory(device, &allocInfo, nullptr, &lscStagingMemory);
    vkBindBufferMemory(device, lscStagingBuffer, lscStagingMemory, 0);

    void *data;
    vkMapMemory(device, lscStagingMemory, 0, lscSize, 0, &data);
    memcpy(data, mLensShadingMap.data(), (size_t)lscSize);
    vkUnmapMemory(device, lscStagingMemory);

    // Transition and Copy
    VkImageMemoryBarrier barrier{};
    barrier.sType = VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER;
    barrier.oldLayout = VK_IMAGE_LAYOUT_UNDEFINED;
    barrier.newLayout = VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL;
    barrier.image = lscImage;
    barrier.subresourceRange.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
    barrier.subresourceRange.levelCount = 1;
    barrier.subresourceRange.layerCount = 1;
    barrier.srcAccessMask = 0;
    barrier.dstAccessMask = VK_ACCESS_TRANSFER_WRITE_BIT;

    vkCmdPipelineBarrier(cb, VK_PIPELINE_STAGE_TOP_OF_PIPE_BIT,
                         VK_PIPELINE_STAGE_TRANSFER_BIT, 0, 0, nullptr, 0,
                         nullptr, 1, &barrier);

    VkBufferImageCopy region{};
    region.imageSubresource.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
    region.imageSubresource.layerCount = 1;
    region.imageExtent = {mLscWidth, mLscHeight, 1};
    vkCmdCopyBufferToImage(cb, lscStagingBuffer, lscImage,
                           VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL, 1, &region);

    barrier.oldLayout = VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL;
    barrier.newLayout = VK_IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL;
    barrier.srcAccessMask = VK_ACCESS_TRANSFER_WRITE_BIT;
    barrier.dstAccessMask = VK_ACCESS_SHADER_READ_BIT;
    vkCmdPipelineBarrier(cb, VK_PIPELINE_STAGE_TRANSFER_BIT,
                         VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT, 0, 0, nullptr, 0,
                         nullptr, 1, &barrier);

    // Sampler (Linear for smooth interpolation)
    VkSamplerCreateInfo samplerInfo{};
    samplerInfo.sType = VK_STRUCTURE_TYPE_SAMPLER_CREATE_INFO;
    samplerInfo.magFilter = VK_FILTER_LINEAR;
    samplerInfo.minFilter = VK_FILTER_LINEAR;
    samplerInfo.addressModeU = VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE;
    samplerInfo.addressModeV = VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE;
    samplerInfo.mipmapMode = VK_SAMPLER_MIPMAP_MODE_LINEAR;
    vkCreateSampler(device, &samplerInfo, nullptr, &lscSampler);

    // View
    VkImageViewCreateInfo viewInfo{};
    viewInfo.sType = VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO;
    viewInfo.image = lscImage;
    viewInfo.viewType = VK_IMAGE_VIEW_TYPE_2D;
    viewInfo.format = VK_FORMAT_R32G32B32A32_SFLOAT;
    viewInfo.subresourceRange.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
    viewInfo.subresourceRange.levelCount = 1;
    viewInfo.subresourceRange.layerCount = 1;
    vkCreateImageView(device, &viewInfo, nullptr, &lscView);
  }

  vm.endSingleTimeCommands(cb);

  if (lscStagingBuffer) {
    vkDestroyBuffer(device, lscStagingBuffer, nullptr);
    vkFreeMemory(device, lscStagingMemory, nullptr);
  }
}

// Helper to create compute pipeline
VkPipeline createComputePipeline(VkDevice device, VkPipelineLayout layout,
                                 const uint32_t *shaderCode, size_t size) {
  VkShaderModule shaderModule = VulkanManager::getInstance().createShaderModule(
      std::vector<uint32_t>(shaderCode, shaderCode + size / 4));
  VkComputePipelineCreateInfo pipelineInfo{};
  pipelineInfo.sType = VK_STRUCTURE_TYPE_COMPUTE_PIPELINE_CREATE_INFO;
  pipelineInfo.layout = layout;
  pipelineInfo.stage.sType =
      VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO;
  pipelineInfo.stage.stage = VK_SHADER_STAGE_COMPUTE_BIT;
  pipelineInfo.stage.module = shaderModule;
  pipelineInfo.stage.pName = "main";
  VkPipeline pipeline;
  vkCreateComputePipelines(device, VK_NULL_HANDLE, 1, &pipelineInfo, nullptr,
                           &pipeline);
  vkDestroyShaderModule(device, shaderModule, nullptr);
  return pipeline;
}

void VulkanRawStacker::createPipelines() {
  VulkanManager &vm = VulkanManager::getInstance();
  VkDevice device = vm.getDevice();

  // Push constants (Shared)
  VkPushConstantRange pushConstantRange{};
  pushConstantRange.stageFlags = VK_SHADER_STAGE_COMPUTE_BIT;
  pushConstantRange.offset = 0;
  pushConstantRange.size = sizeof(PushConstants);

  // --- 1. Structure Tensor Pipeline ---
  VkDescriptorSetLayoutBinding stBindings[2] = {};
  stBindings[0] = {0, VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr}; // Input
  stBindings[1] = {1, VK_DESCRIPTOR_TYPE_STORAGE_BUFFER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr}; // Output Kernel

  VkDescriptorSetLayoutCreateInfo stLayoutInfo{
      VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO};
  stLayoutInfo.bindingCount = 2;
  stLayoutInfo.pBindings = stBindings;
  vkCreateDescriptorSetLayout(device, &stLayoutInfo, nullptr,
                              &structureTensorSetLayout);

  VkPipelineLayoutCreateInfo stPLInfo{
      VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO};
  stPLInfo.setLayoutCount = 1;
  stPLInfo.pSetLayouts = &structureTensorSetLayout;
  stPLInfo.pushConstantRangeCount = 1;
  stPLInfo.pPushConstantRanges = &pushConstantRange;
  vkCreatePipelineLayout(device, &stPLInfo, nullptr,
                         &structureTensorPipelineLayout);

  structureTensorPipeline = createComputePipeline(
      device, structureTensorPipelineLayout, raw_structure_tensor_comp_spv,
      raw_structure_tensor_comp_spv_size);

  // --- 2. LK Alignment Pipeline ---
  VkDescriptorSetLayoutBinding lkBindings[3] = {};
  lkBindings[0] = {0, VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr}; // Ref
  lkBindings[1] = {1, VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr}; // Trg
  lkBindings[2] = {2, VK_DESCRIPTOR_TYPE_STORAGE_BUFFER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT,
                   nullptr}; // Align Buffer (In/Out)

  VkDescriptorSetLayoutCreateInfo lkLayoutInfo{
      VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO};
  lkLayoutInfo.bindingCount = 3;
  lkLayoutInfo.pBindings = lkBindings;
  vkCreateDescriptorSetLayout(device, &lkLayoutInfo, nullptr,
                              &alignLkSetLayout);

  VkPipelineLayoutCreateInfo lkPLInfo{
      VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO};
  lkPLInfo.setLayoutCount = 1;
  lkPLInfo.pSetLayouts = &alignLkSetLayout;
  lkPLInfo.pushConstantRangeCount = 1;
  lkPLInfo.pPushConstantRanges = &pushConstantRange;
  vkCreatePipelineLayout(device, &lkPLInfo, nullptr, &alignLkPipelineLayout);

  alignLkPipeline = createComputePipeline(
      device, alignLkPipelineLayout, align_lk_comp_spv, align_lk_comp_spv_size);

  // --- 3. Robustness Pipeline ---
  VkDescriptorSetLayoutBinding rbBindings[4] = {};
  rbBindings[0] = {0, VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr}; // Ref
  rbBindings[1] = {1, VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr}; // Trg
  rbBindings[2] = {2, VK_DESCRIPTOR_TYPE_STORAGE_BUFFER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr}; // Alignment
  rbBindings[3] = {3, VK_DESCRIPTOR_TYPE_STORAGE_BUFFER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr}; // Output Map

  VkDescriptorSetLayoutCreateInfo rbLayoutInfo{
      VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO};
  rbLayoutInfo.bindingCount = 4;
  rbLayoutInfo.pBindings = rbBindings;
  vkCreateDescriptorSetLayout(device, &rbLayoutInfo, nullptr,
                              &robustnessSetLayout);

  VkPipelineLayoutCreateInfo rbPLInfo{
      VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO};
  rbPLInfo.setLayoutCount = 1;
  rbPLInfo.pSetLayouts = &robustnessSetLayout;
  rbPLInfo.pushConstantRangeCount = 1;
  rbPLInfo.pPushConstantRanges = &pushConstantRange;
  vkCreatePipelineLayout(device, &rbPLInfo, nullptr, &robustnessPipelineLayout);

  robustnessPipeline = createComputePipeline(device, robustnessPipelineLayout,
                                             robustness_raw_comp_spv,
                                             robustness_raw_comp_spv_size);

  // --- 4. Accumulate Pipeline ---
  // Updated with 6 bindings: 0=Input, 1=Accum, 2=Align, 3=Kernel, 4=Robustness,
  // 5=LSC
  VkDescriptorSetLayoutBinding bindings[6] = {};
  bindings[0] = {0, VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER, 1,
                 VK_SHADER_STAGE_COMPUTE_BIT, nullptr};
  bindings[1] = {1, VK_DESCRIPTOR_TYPE_STORAGE_BUFFER, 1,
                 VK_SHADER_STAGE_COMPUTE_BIT, nullptr};
  bindings[2] = {2, VK_DESCRIPTOR_TYPE_STORAGE_BUFFER, 1,
                 VK_SHADER_STAGE_COMPUTE_BIT, nullptr};
  bindings[3] = {3, VK_DESCRIPTOR_TYPE_STORAGE_BUFFER, 1,
                 VK_SHADER_STAGE_COMPUTE_BIT, nullptr};
  bindings[4] = {4, VK_DESCRIPTOR_TYPE_STORAGE_BUFFER, 1,
                 VK_SHADER_STAGE_COMPUTE_BIT, nullptr};
  bindings[5] = {5, VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER, 1,
                 VK_SHADER_STAGE_COMPUTE_BIT, nullptr};

  VkDescriptorSetLayoutCreateInfo layoutInfo{};
  layoutInfo.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO;
  layoutInfo.bindingCount = 6;
  layoutInfo.pBindings = bindings;
  vkCreateDescriptorSetLayout(device, &layoutInfo, nullptr,
                              &descriptorSetLayout);

  VkPipelineLayoutCreateInfo pipelineLayoutInfo{};
  pipelineLayoutInfo.sType = VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO;
  pipelineLayoutInfo.setLayoutCount = 1;
  pipelineLayoutInfo.pSetLayouts = &descriptorSetLayout;
  pipelineLayoutInfo.pushConstantRangeCount = 1;
  pipelineLayoutInfo.pPushConstantRanges = &pushConstantRange;
  vkCreatePipelineLayout(device, &pipelineLayoutInfo, nullptr, &pipelineLayout);

  accumulatePipeline =
      createComputePipeline(device, pipelineLayout, accumulate_raw_comp_spv,
                            accumulate_raw_comp_spv_size);

  // --- Normalization Pipeline (Unchanged bindings, but recreate layout usage
  // if needed) ---
  // ... (keeping existing normalization init)

  VkDescriptorSetLayoutBinding normalizeBindings[2] = {};
  normalizeBindings[0].binding = 0; // Output buffer
  normalizeBindings[0].descriptorType = VK_DESCRIPTOR_TYPE_STORAGE_BUFFER;
  normalizeBindings[0].descriptorCount = 1;
  normalizeBindings[0].stageFlags = VK_SHADER_STAGE_COMPUTE_BIT;

  normalizeBindings[1].binding = 1; // Accumulator buffer
  normalizeBindings[1].descriptorType = VK_DESCRIPTOR_TYPE_STORAGE_BUFFER;
  normalizeBindings[1].descriptorCount = 1;
  normalizeBindings[1].stageFlags = VK_SHADER_STAGE_COMPUTE_BIT;

  VkDescriptorSetLayoutCreateInfo normalizeLayoutInfo{};
  normalizeLayoutInfo.sType =
      VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO;
  normalizeLayoutInfo.bindingCount = 2;
  normalizeLayoutInfo.pBindings = normalizeBindings;
  vkCreateDescriptorSetLayout(device, &normalizeLayoutInfo, nullptr,
                              &normalizeSetLayout);

  VkPipelineLayoutCreateInfo normalizePipelineLayoutInfo{};
  normalizePipelineLayoutInfo.sType =
      VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO;
  normalizePipelineLayoutInfo.setLayoutCount = 1;
  normalizePipelineLayoutInfo.pSetLayouts = &normalizeSetLayout;
  normalizePipelineLayoutInfo.pushConstantRangeCount = 1;
  normalizePipelineLayoutInfo.pPushConstantRanges = &pushConstantRange;
  vkCreatePipelineLayout(device, &normalizePipelineLayoutInfo, nullptr,
                         &normalizePipelineLayout);

  normalizePipeline = createComputePipeline(device, normalizePipelineLayout,
                                            normalize_raw_comp_spv,
                                            normalize_raw_comp_spv_size);

  LOGD("Pipelines created");
}

bool VulkanRawStacker::addFrame(const uint16_t *rawData, int rowStride,
                                int cfaPattern) {
  if (rawData == nullptr)
    return false;

  // Copy data to internal storage
  FrameData frame;
  frame.cfaPattern = cfaPattern;
  frame.rawData.resize(width * height);

  // Handle rowStride
  if (rowStride == width * 2) {
    // Simple copy
    memcpy(frame.rawData.data(), rawData, width * height * sizeof(uint16_t));
  } else {
    // Row by row copy
    const uint8_t *src = (const uint8_t *)rawData;
    uint16_t *dst = frame.rawData.data();
    for (uint32_t y = 0; y < height; ++y) {
      memcpy(dst + y * width, src + y * rowStride, width * sizeof(uint16_t));
    }
  }

  pendingFrames.push_back(std::move(frame));
  return true;
}

// Helper to update descriptor set for image
void updateImageDescriptorSet(VkDevice device, VkDescriptorSet set,
                              VkImageView imageView, VkSampler sampler,
                              uint32_t binding) {
  VkDescriptorImageInfo imageInfo{};
  imageInfo.imageLayout = VK_IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL;
  imageInfo.imageView = imageView;
  imageInfo.sampler = sampler;

  VkWriteDescriptorSet descriptorWrite{};
  descriptorWrite.sType = VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET;
  descriptorWrite.dstSet = set;
  descriptorWrite.dstBinding = binding;
  descriptorWrite.dstArrayElement = 0;
  descriptorWrite.descriptorType = VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER;
  descriptorWrite.descriptorCount = 1;
  descriptorWrite.pImageInfo = &imageInfo;

  vkUpdateDescriptorSets(device, 1, &descriptorWrite, 0, nullptr);
}

// Helper to update descriptor set for buffer
void updateBufferDescriptorSet(VkDevice device, VkDescriptorSet set,
                               VkBuffer buffer, VkDeviceSize range,
                               uint32_t binding, VkDeviceSize offset = 0) {
  VkDescriptorBufferInfo bufferInfo{};
  bufferInfo.buffer = buffer;
  bufferInfo.offset = offset;
  bufferInfo.range = range;

  VkWriteDescriptorSet descriptorWrite{};
  descriptorWrite.sType = VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET;
  descriptorWrite.dstSet = set;
  descriptorWrite.dstBinding = binding;
  descriptorWrite.dstArrayElement = 0;
  descriptorWrite.descriptorType = VK_DESCRIPTOR_TYPE_STORAGE_BUFFER;
  descriptorWrite.descriptorCount = 1;
  descriptorWrite.pBufferInfo = &bufferInfo;

  vkUpdateDescriptorSets(device, 1, &descriptorWrite, 0, nullptr);
}

// Helper for sharpness/contrast scoring (Green channel)
static float calculateFrameScore(const uint16_t *rawData, uint32_t width,
                                 uint32_t height, int cfaPattern) {
  long long score = 0;
  int startY = (cfaPattern == 0 || cfaPattern == 1) ? 0 : 1;
  int startX = (cfaPattern == 0 || cfaPattern == 3)
                   ? 1
                   : 0; // G is usually at (0,1) or (1,0) in RGGB
  // RGGB: R G / G B. G at (0,1) and (1,0).
  // Let's pick Gr line.
  if (cfaPattern == 0) {
    startX = 1;
    startY = 0;
  } // RGGB -> Gr is at (1,0)
  else if (cfaPattern == 1) {
    startX = 0;
    startY = 0;
  } // GRBG -> G is at (0,0)
  else if (cfaPattern == 2) {
    startX = 1;
    startY = 1;
  } // GBRG -> Gb is at (1,1) (Bottom right) ... wait.
  // Simple approximation: Check gradients on raw data directly, stride 2.

  const int step = 4;
  for (uint32_t y = step; y < height - step; y += step) {
    for (uint32_t x = step; x < width - step; x += step) {
      int idx = y * width + x;
      int val = rawData[idx];
      // Local contrast
      score += std::abs(val - rawData[idx + 2]) +
               std::abs(val - rawData[idx + width * 2]);
    }
  }
  return (float)score;
}

bool VulkanRawStacker::processStack(uint16_t *outBuffer, size_t bufferSize) {
  if (pendingFrames.empty())
    return false;

  // 1. Calculate scores and sort (Highest score first = Reference)
  for (auto &frame : pendingFrames) {
    if (frame.score == 0.0f) {
      frame.score = calculateFrameScore(frame.rawData.data(), width, height,
                                        frame.cfaPattern);
    }
  }
  std::sort(
      pendingFrames.begin(), pendingFrames.end(),
      [](const FrameData &a, const FrameData &b) { return a.score > b.score; });

  VulkanManager &vm = VulkanManager::getInstance();
  VkDevice device = vm.getDevice();

  if (accumulatePipeline == VK_NULL_HANDLE) {
    createPipelines();
  }

  uint32_t scale = mEnableSuperRes ? 2 : 1;
  uint32_t outputW = width * scale;
  uint32_t outputH = height * scale;
  uint32_t inputW = width / 2;
  uint32_t inputH = height / 2;

  // Global Sampler
  VkSampler sampler;
  VkSamplerCreateInfo samplerInfo{VK_STRUCTURE_TYPE_SAMPLER_CREATE_INFO};
  samplerInfo.magFilter = VK_FILTER_NEAREST;
  samplerInfo.minFilter = VK_FILTER_NEAREST;
  samplerInfo.addressModeU = VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE;
  samplerInfo.addressModeV = VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE;
  samplerInfo.mipmapMode = VK_SAMPLER_MIPMAP_MODE_NEAREST;
  VK_CHECK(vkCreateSampler(device, &samplerInfo, nullptr, &sampler));

  // Allocate Descriptor Sets
  VkDescriptorSetAllocateInfo allocInfo{
      VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO};
  allocInfo.descriptorPool = descriptorPool;
  allocInfo.descriptorSetCount = 1;

  allocInfo.pSetLayouts = &structureTensorSetLayout;
  VK_CHECK(vkAllocateDescriptorSets(device, &allocInfo, &structureTensorSet));

  allocInfo.pSetLayouts = &alignLkSetLayout;
  VK_CHECK(vkAllocateDescriptorSets(
      device, &allocInfo,
      &alignLkSets[0])); // Use 0 for now or per-tile? Allocating 1 set.
  // Reuse same set for all frames or re-bind?
  // Use one set, update bindings per frame.
  VkDescriptorSet alignSet = alignLkSets[0];

  allocInfo.pSetLayouts = &robustnessSetLayout;
  VK_CHECK(vkAllocateDescriptorSets(device, &allocInfo, &robustnessSets[0]));
  VkDescriptorSet robustSet = robustnessSets[0];

  // Pre-allocate descriptor sets for each channel to avoid re-allocation in
  // loop
  allocInfo.pSetLayouts = &descriptorSetLayout; // Accumulate
  for (int i = 0; i < 3; ++i) {
    VK_CHECK(vkAllocateDescriptorSets(device, &allocInfo, &accumSets[i]));
    // Constant bindings for this channel
    updateBufferDescriptorSet(device, accumSets[i], accumBuffers[i],
                              VK_WHOLE_SIZE, 1);
    updateBufferDescriptorSet(device, accumSets[i], alignmentBuffer,
                              VK_WHOLE_SIZE, 2);
    updateBufferDescriptorSet(device, accumSets[i], kernelBuffer, VK_WHOLE_SIZE,
                              3);
    updateBufferDescriptorSet(device, accumSets[i], robustnessBuffer,
                              VK_WHOLE_SIZE, 4);
    updateImageDescriptorSet(device, accumSets[i], lscView, lscSampler, 5);
  }

  // Pre-update constant bindings (Buffers) for other pipelines
  updateBufferDescriptorSet(device, structureTensorSet, kernelBuffer,
                            VK_WHOLE_SIZE, 1);
  updateBufferDescriptorSet(device, alignSet, alignmentBuffer, VK_WHOLE_SIZE,
                            2);
  updateBufferDescriptorSet(device, robustSet, alignmentBuffer, VK_WHOLE_SIZE,
                            2);
  updateBufferDescriptorSet(device, robustSet, robustnessBuffer, VK_WHOLE_SIZE,
                            3);

  for (int i = 0; i < 3; ++i) {
    updateBufferDescriptorSet(device, accumSets[i], accumBuffers[i],
                              VK_WHOLE_SIZE, 1);
    updateBufferDescriptorSet(device, accumSets[i], alignmentBuffer,
                              VK_WHOLE_SIZE, 2);
    updateBufferDescriptorSet(device, accumSets[i], kernelBuffer, VK_WHOLE_SIZE,
                              3);
    updateBufferDescriptorSet(device, accumSets[i], robustnessBuffer,
                              VK_WHOLE_SIZE, 4);
    updateImageDescriptorSet(device, accumSets[i], lscView, lscSampler, 5);
  }

  VkImage refImage = VK_NULL_HANDLE;
  VkImageView refView = VK_NULL_HANDLE;
  VkDeviceMemory refMem = VK_NULL_HANDLE;

  // Process Frames
  for (size_t i = 0; i < pendingFrames.size(); ++i) {
    bool isRef = (i == 0);
    const auto &frame = pendingFrames[i];

    // Upload Frame
    VkImage currImage;
    VkImageView currView;
    VkDeviceMemory currMem;
    // ... (Inline upload logic for brevity in this replace block, similar to
    // previous)
    {
      VkImageCreateInfo imgInfo{VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO};
      imgInfo.imageType = VK_IMAGE_TYPE_2D;
      imgInfo.format = VK_FORMAT_R16_UNORM;
      imgInfo.extent = {width, height, 1};
      imgInfo.mipLevels = 1;
      imgInfo.arrayLayers = 1;
      imgInfo.samples = VK_SAMPLE_COUNT_1_BIT;
      imgInfo.usage =
          VK_IMAGE_USAGE_TRANSFER_DST_BIT | VK_IMAGE_USAGE_SAMPLED_BIT;
      vkCreateImage(device, &imgInfo, nullptr, &currImage);
      VkMemoryRequirements reqs;
      vkGetImageMemoryRequirements(device, currImage, &reqs);
      VkMemoryAllocateInfo alloc{VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO};
      alloc.allocationSize = reqs.size;
      alloc.memoryTypeIndex = vm.findMemoryType(
          reqs.memoryTypeBits, VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT);
      vkAllocateMemory(device, &alloc, nullptr, &currMem);
      vkBindImageMemory(device, currImage, currMem, 0);

      VkImageViewCreateInfo viewInfo{VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO};
      viewInfo.image = currImage;
      viewInfo.viewType = VK_IMAGE_VIEW_TYPE_2D;
      viewInfo.format = VK_FORMAT_R16_UNORM;
      viewInfo.subresourceRange = {VK_IMAGE_ASPECT_COLOR_BIT, 0, 1, 0, 1};
      vkCreateImageView(device, &viewInfo, nullptr, &currView);

      VkDeviceSize size = width * height * 2;
      void *map;
      vkMapMemory(device, stagingMemory, 0, size, 0, &map);
      memcpy(map, frame.rawData.data(), size);
      vkUnmapMemory(device, stagingMemory);

      VkCommandBuffer cb = vm.beginSingleTimeCommands();
      VkImageMemoryBarrier barrier{VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER};
      barrier.oldLayout = VK_IMAGE_LAYOUT_UNDEFINED;
      barrier.newLayout = VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL;
      barrier.image = currImage;
      barrier.subresourceRange = {VK_IMAGE_ASPECT_COLOR_BIT, 0, 1, 0, 1};
      barrier.dstAccessMask = VK_ACCESS_TRANSFER_WRITE_BIT;
      vkCmdPipelineBarrier(cb, VK_PIPELINE_STAGE_TOP_OF_PIPE_BIT,
                           VK_PIPELINE_STAGE_TRANSFER_BIT, 0, 0, nullptr, 0,
                           nullptr, 1, &barrier);

      VkBufferImageCopy copyReg{};
      copyReg.imageExtent = {width, height, 1};
      copyReg.imageSubresource = {VK_IMAGE_ASPECT_COLOR_BIT, 0, 0, 1};
      vkCmdCopyBufferToImage(cb, stagingBuffer, currImage,
                             VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL, 1, &copyReg);

      barrier.oldLayout = VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL;
      barrier.newLayout = VK_IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL;
      barrier.srcAccessMask = VK_ACCESS_TRANSFER_WRITE_BIT;
      barrier.dstAccessMask = VK_ACCESS_SHADER_READ_BIT;
      vkCmdPipelineBarrier(cb, VK_PIPELINE_STAGE_TRANSFER_BIT,
                           VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT, 0, 0, nullptr,
                           0, nullptr, 1, &barrier);

      vm.endSingleTimeCommands(cb);
    }

    PushConstants pc{};
    pc.width = outputW;
    pc.height = outputH;
    pc.planeWidth = inputW;
    pc.planeHeight = inputH;
    pc.sensorWidth = width;
    pc.sensorHeight = height;
    pc.scale = (float)scale;
    pc.cfaPattern = (uint32_t)frame.cfaPattern;
    memcpy(pc.blackLevel, mBlackLevel, 4 * sizeof(float));
    pc.whiteLevel = mWhiteLevel;
    memcpy(pc.wbGains, mWbGains, 4 * sizeof(float));
    pc.gridW = gridW;
    pc.gridH = gridH;
    pc.tileSize = (uint32_t)tileSize;
    pc.bufferStride = outputW + 16;

    // Set tiling for pre-processing shaders (Plane Resolution)
    pc.tileX = 0;
    pc.tileY = 0;
    pc.tileW = inputW;
    pc.tileH = inputH;

    // Scale noise model from raw ADU space to UNORM [0,1] space.
    // SENSOR_NOISE_PROFILE gives (S, O) where Var(raw) = S * raw_value + O
    // In UNORM space: value_unorm = raw_value / 65535.0f
    // Var(unorm) = S * value_unorm / 65535.0f + O / (65535.0f * 65535.0f)
    pc.noiseAlpha = mNoiseModel[0] / 65535.0f;
    pc.noiseBeta = mNoiseModel[1] / (65535.0f * 65535.0f);
    pc.baseNoise = pc.noiseBeta;

    if (isRef) {
      refImage = currImage;
      refView = currView;
      refMem = currMem;

      VkCommandBuffer cb = vm.beginSingleTimeCommands();

      // Structure tensor pass
      vkCmdBindPipeline(cb, VK_PIPELINE_BIND_POINT_COMPUTE,
                        structureTensorPipeline);
      updateImageDescriptorSet(device, structureTensorSet, refView, sampler, 0);
      vkCmdBindDescriptorSets(cb, VK_PIPELINE_BIND_POINT_COMPUTE,
                              structureTensorPipelineLayout, 0, 1,
                              &structureTensorSet, 0, nullptr);
      vkCmdPushConstants(cb, structureTensorPipelineLayout,
                         VK_SHADER_STAGE_COMPUTE_BIT, 0, sizeof(pc), &pc);
      vkCmdDispatch(cb, (inputW + 15) / 16, (inputH + 15) / 16, 1);

      VkBufferMemoryBarrier bMem{VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER};
      bMem.srcAccessMask = VK_ACCESS_SHADER_WRITE_BIT;
      bMem.dstAccessMask = VK_ACCESS_SHADER_READ_BIT;
      bMem.buffer = kernelBuffer;
      bMem.size = VK_WHOLE_SIZE;
      vkCmdPipelineBarrier(cb, VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT,
                           VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT, 0, 0, nullptr,
                           1, &bMem, 0, nullptr);

      // Accumulate pass for reference frame (isFirstFrame = 1)
      vkCmdBindPipeline(cb, VK_PIPELINE_BIND_POINT_COMPUTE, accumulatePipeline);
      for (int c = 0; c < 3; ++c) {
        updateImageDescriptorSet(device, accumSets[c], currView, sampler, 0);
        vkCmdBindDescriptorSets(cb, VK_PIPELINE_BIND_POINT_COMPUTE,
                                pipelineLayout, 0, 1, &accumSets[c], 0,
                                nullptr);

        pc.isFirstFrame = 1;
        pc.outputChannel = c;
        pc.width = outputW;
        pc.height = outputH;
        pc.planeWidth = inputW;
        pc.planeHeight = inputH;
        pc.sensorWidth = width;
        pc.sensorHeight = height;
        pc.scale = (float)scale;
        pc.cfaPattern = (uint32_t)frame.cfaPattern;
        pc.tileSize = (uint32_t)tileSize;
        pc.gridW = gridW;
        pc.gridH = gridH;
        pc.bufferStride = outputW + 16;
        pc.tileW = outputW;
        pc.tileH = outputH;

        vkCmdPushConstants(cb, pipelineLayout, VK_SHADER_STAGE_COMPUTE_BIT, 0,
                           sizeof(pc), &pc);
        vkCmdDispatch(cb, (outputW + 15) / 16, (outputH + 15) / 16, 1);

        VkBufferMemoryBarrier accumBarrier{
            VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER};
        accumBarrier.srcAccessMask = VK_ACCESS_SHADER_WRITE_BIT;
        accumBarrier.dstAccessMask =
            VK_ACCESS_SHADER_READ_BIT | VK_ACCESS_SHADER_WRITE_BIT;
        accumBarrier.buffer = accumBuffers[c];
        accumBarrier.size = VK_WHOLE_SIZE;
        vkCmdPipelineBarrier(cb, VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT,
                             VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT, 0, 0,
                             nullptr, 1, &accumBarrier, 0, nullptr);
      }

      vm.endSingleTimeCommands(cb);

    } else {
      // --- Process Target Frame (Combined CB) ---
      {
        VkCommandBuffer cb = vm.beginSingleTimeCommands();

        // 1. GPU Reset alignment buffer (No CPU-GPU sync)
        vkCmdFillBuffer(cb, alignmentBuffer, 0, VK_WHOLE_SIZE, 0);
        {
          VkBufferMemoryBarrier fillBarrier{
              VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER};
          fillBarrier.srcAccessMask = VK_ACCESS_TRANSFER_WRITE_BIT;
          fillBarrier.dstAccessMask =
              VK_ACCESS_SHADER_READ_BIT | VK_ACCESS_SHADER_WRITE_BIT;
          fillBarrier.buffer = alignmentBuffer;
          fillBarrier.size = VK_WHOLE_SIZE;
          vkCmdPipelineBarrier(cb, VK_PIPELINE_STAGE_TRANSFER_BIT,
                               VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT, 0, 0,
                               nullptr, 1, &fillBarrier, 0, nullptr);
        }

        // 2. Pass 1: LK Alignment (5 iterations)
        vkCmdBindPipeline(cb, VK_PIPELINE_BIND_POINT_COMPUTE, alignLkPipeline);
        updateImageDescriptorSet(device, alignSet, refView, sampler, 0);
        updateImageDescriptorSet(device, alignSet, currView, sampler, 1);
        vkCmdBindDescriptorSets(cb, VK_PIPELINE_BIND_POINT_COMPUTE,
                                alignLkPipelineLayout, 0, 1, &alignSet, 0,
                                nullptr);
        vkCmdPushConstants(cb, alignLkPipelineLayout,
                           VK_SHADER_STAGE_COMPUTE_BIT, 0, sizeof(pc), &pc);

        const int LK_ITERATIONS = 5;
        for (int iter = 0; iter < LK_ITERATIONS; ++iter) {
          vkCmdDispatch(cb, (gridW + 15) / 16, (gridH + 15) / 16, 1);

          VkBufferMemoryBarrier lkBarrier{
              VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER};
          lkBarrier.srcAccessMask = VK_ACCESS_SHADER_WRITE_BIT;
          lkBarrier.dstAccessMask =
              VK_ACCESS_SHADER_READ_BIT | VK_ACCESS_SHADER_WRITE_BIT;
          lkBarrier.buffer = alignmentBuffer;
          lkBarrier.size = VK_WHOLE_SIZE;
          vkCmdPipelineBarrier(cb, VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT,
                               VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT, 0, 0,
                               nullptr, 1, &lkBarrier, 0, nullptr);
        }

        // 3. Pass 2: Robustness
        vkCmdBindPipeline(cb, VK_PIPELINE_BIND_POINT_COMPUTE,
                          robustnessPipeline);
        updateImageDescriptorSet(device, robustSet, refView, sampler, 0);
        updateImageDescriptorSet(device, robustSet, currView, sampler, 1);
        vkCmdBindDescriptorSets(cb, VK_PIPELINE_BIND_POINT_COMPUTE,
                                robustnessPipelineLayout, 0, 1, &robustSet, 0,
                                nullptr);
        vkCmdPushConstants(cb, robustnessPipelineLayout,
                           VK_SHADER_STAGE_COMPUTE_BIT, 0, sizeof(pc), &pc);
        vkCmdDispatch(cb, (inputW + 15) / 16, (inputH + 15) / 16, 1);

        {
          VkBufferMemoryBarrier rbBarrier{
              VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER};
          rbBarrier.srcAccessMask = VK_ACCESS_SHADER_WRITE_BIT;
          rbBarrier.dstAccessMask = VK_ACCESS_SHADER_READ_BIT;
          rbBarrier.buffer = robustnessBuffer;
          rbBarrier.size = VK_WHOLE_SIZE;
          vkCmdPipelineBarrier(cb, VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT,
                               VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT, 0, 0,
                               nullptr, 1, &rbBarrier, 0, nullptr);
        }

        // 4. Pass 3: Accumulate (3 channels)
        vkCmdBindPipeline(cb, VK_PIPELINE_BIND_POINT_COMPUTE,
                          accumulatePipeline);

        for (int c = 0; c < 3; ++c) {
          updateImageDescriptorSet(device, accumSets[c], currView, sampler, 0);
          vkCmdBindDescriptorSets(cb, VK_PIPELINE_BIND_POINT_COMPUTE,
                                  pipelineLayout, 0, 1, &accumSets[c], 0,
                                  nullptr);

          pc.isFirstFrame = 0;
          pc.outputChannel = c; // 0=R, 1=G, 2=B
          pc.width = outputW;
          pc.height = outputH;
          pc.planeWidth = inputW;
          pc.planeHeight = inputH;
          pc.sensorWidth = width;
          pc.sensorHeight = height;
          pc.scale = (float)scale;
          pc.cfaPattern = (uint32_t)frame.cfaPattern;
          pc.tileSize = (uint32_t)tileSize;
          pc.gridW = gridW;
          pc.gridH = gridH;
          pc.bufferStride = outputW + 16;
          pc.tileW = outputW;
          pc.tileH = outputH;

          vkCmdPushConstants(cb, pipelineLayout, VK_SHADER_STAGE_COMPUTE_BIT, 0,
                             sizeof(pc), &pc);
          vkCmdDispatch(cb, (outputW + 15) / 16, (outputH + 15) / 16, 1);

          VkBufferMemoryBarrier accBarrier{
              VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER};
          accBarrier.srcAccessMask = VK_ACCESS_SHADER_WRITE_BIT;
          accBarrier.dstAccessMask =
              VK_ACCESS_SHADER_READ_BIT | VK_ACCESS_SHADER_WRITE_BIT;
          accBarrier.buffer = accumBuffers[c];
          accBarrier.size = VK_WHOLE_SIZE;
          vkCmdPipelineBarrier(cb, VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT,
                               VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT, 0, 0,
                               nullptr, 1, &accBarrier, 0, nullptr);
        }

        vm.endSingleTimeCommands(cb);
      }
    }

    // Clean up non-reference frame resources (ref is kept for comparison)
    if (!isRef) {
      vkDestroyImageView(device, currView, nullptr);
      vkDestroyImage(device, currImage, nullptr);
      vkFreeMemory(device, currMem, nullptr);
    }
  }

  if (refImage) {
    vkDestroyImageView(device, refView, nullptr);
    vkDestroyImage(device, refImage, nullptr);
    vkFreeMemory(device, refMem, nullptr);
  }

  // Normalize
  {
    VkCommandBuffer cb = vm.beginSingleTimeCommands();
    vkCmdBindPipeline(cb, VK_PIPELINE_BIND_POINT_COMPUTE, normalizePipeline);

    VkDeviceSize planeSize = (VkDeviceSize)outputW * outputH * sizeof(uint16_t);
    // Staging buffer is 3 * planeSize (RGB Planar)

    VkDescriptorSetAllocateInfo dAlloc{
        VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO};
    dAlloc.descriptorPool = descriptorPool;
    dAlloc.descriptorSetCount = 1;
    dAlloc.pSetLayouts = &normalizeSetLayout;

    for (int c = 0; c < 3; ++c) {
      VK_CHECK(vkAllocateDescriptorSets(device, &dAlloc, &normalizeSets[c]));
      updateBufferDescriptorSet(device, normalizeSets[c], stagingBuffer,
                                VK_WHOLE_SIZE, 0, 0);
      updateBufferDescriptorSet(device, normalizeSets[c], accumBuffers[c],
                                VK_WHOLE_SIZE, 1);

      vkCmdBindDescriptorSets(cb, VK_PIPELINE_BIND_POINT_COMPUTE,
                              normalizePipelineLayout, 0, 1, &normalizeSets[c],
                              0, nullptr);

      PushConstants pc{}; // Reset for normalize
      pc.width = outputW;
      pc.height = outputH;
      pc.planeWidth = outputW;
      pc.planeHeight = outputH;
      pc.bufferStride = outputW + 16;
      pc.tileX = 0;
      pc.tileY = 0;
      pc.tileW = outputW;
      pc.tileH = outputH;
      pc.planeIndex = (uint32_t)c;
      pc.cfaPattern = (uint32_t)mCfaPattern;
      pc.whiteLevel = mWhiteLevel;
      memcpy(pc.blackLevel, mBlackLevel, 4 * sizeof(float));
      memcpy(pc.wbGains, mWbGains, 4 * sizeof(float));

      vkCmdPushConstants(cb, normalizePipelineLayout,
                         VK_SHADER_STAGE_COMPUTE_BIT, 0, sizeof(pc), &pc);
      vkCmdDispatch(cb, (outputW + 15) / 16, (outputH + 15) / 16, 1);
    }
    vm.endSingleTimeCommands(cb);

    void *mapData;
    VK_CHECK(vkMapMemory(device, stagingMemory, 0, VK_WHOLE_SIZE, 0, &mapData));
    size_t reqSize = (size_t)outputW * outputH * 3 * sizeof(uint16_t);
    if (bufferSize >= reqSize) {
      memcpy(outBuffer, mapData, reqSize);
    } else {
      LOGE("Buffer too small! Req: %zu, Has: %zu", reqSize, bufferSize);
    }
    vkUnmapMemory(device, stagingMemory);
  }

  vkDestroySampler(device, sampler, nullptr);
  return true;
}

void VulkanRawStacker::releaseVulkanResources() {
  VkDevice device = VulkanManager::getInstance().getDevice();
  if (device == VK_NULL_HANDLE)
    return;

  if (descriptorPool != VK_NULL_HANDLE)
    vkDestroyDescriptorPool(device, descriptorPool, nullptr);
  if (descriptorSetLayout != VK_NULL_HANDLE)
    vkDestroyDescriptorSetLayout(device, descriptorSetLayout, nullptr);
  if (pipelineLayout != VK_NULL_HANDLE)
    vkDestroyPipelineLayout(device, pipelineLayout, nullptr);
  if (accumulatePipeline != VK_NULL_HANDLE)
    vkDestroyPipeline(device, accumulatePipeline, nullptr);

  if (normalizeSetLayout != VK_NULL_HANDLE)
    vkDestroyDescriptorSetLayout(device, normalizeSetLayout, nullptr);
  if (normalizePipelineLayout != VK_NULL_HANDLE)
    vkDestroyPipelineLayout(device, normalizePipelineLayout, nullptr);
  if (normalizePipeline != VK_NULL_HANDLE)
    vkDestroyPipeline(device, normalizePipeline, nullptr);

  // New Pipelines
  if (structureTensorSetLayout)
    vkDestroyDescriptorSetLayout(device, structureTensorSetLayout, nullptr);
  if (structureTensorPipelineLayout)
    vkDestroyPipelineLayout(device, structureTensorPipelineLayout, nullptr);
  if (structureTensorPipeline)
    vkDestroyPipeline(device, structureTensorPipeline, nullptr);

  if (alignLkSetLayout)
    vkDestroyDescriptorSetLayout(device, alignLkSetLayout, nullptr);
  if (alignLkPipelineLayout)
    vkDestroyPipelineLayout(device, alignLkPipelineLayout, nullptr);
  if (alignLkPipeline)
    vkDestroyPipeline(device, alignLkPipeline, nullptr);

  if (robustnessSetLayout)
    vkDestroyDescriptorSetLayout(device, robustnessSetLayout, nullptr);
  if (robustnessPipelineLayout)
    vkDestroyPipelineLayout(device, robustnessPipelineLayout, nullptr);
  if (robustnessPipeline)
    vkDestroyPipeline(device, robustnessPipeline, nullptr);

  for (size_t i = 0; i < accumBuffers.size(); ++i) {
    if (accumBuffers[i] != VK_NULL_HANDLE)
      vkDestroyBuffer(device, accumBuffers[i], nullptr);
    if (accumMemories[i] != VK_NULL_HANDLE)
      vkFreeMemory(device, accumMemories[i], nullptr);
  }

  if (stagingBuffer != VK_NULL_HANDLE)
    vkDestroyBuffer(device, stagingBuffer, nullptr);
  if (stagingMemory != VK_NULL_HANDLE)
    vkFreeMemory(device, stagingMemory, nullptr);

  if (alignmentBuffer != VK_NULL_HANDLE)
    vkDestroyBuffer(device, alignmentBuffer, nullptr);
  if (alignmentMemory != VK_NULL_HANDLE)
    vkFreeMemory(device, alignmentMemory, nullptr);

  if (kernelBuffer)
    vkDestroyBuffer(device, kernelBuffer, nullptr);
  if (kernelMemory)
    vkFreeMemory(device, kernelMemory, nullptr);

  if (robustnessBuffer)
    vkDestroyBuffer(device, robustnessBuffer, nullptr);
  if (robustnessMemory)
    vkFreeMemory(device, robustnessMemory, nullptr);

  if (lscView)
    vkDestroyImageView(device, lscView, nullptr);
  if (lscImage)
    vkDestroyImage(device, lscImage, nullptr);
  if (lscMemory)
    vkFreeMemory(device, lscMemory, nullptr);
  if (lscSampler)
    vkDestroySampler(device, lscSampler, nullptr);
}
