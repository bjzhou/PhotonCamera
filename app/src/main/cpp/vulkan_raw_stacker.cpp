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

  if (mEnableSuperRes) {
    uint32_t scale = 2;
    uint32_t outW = width * scale;
    uint32_t outH = height * scale;
    const uint32_t MAX_TILE_SIZE = 4096;
    numTilesX = (outW + MAX_TILE_SIZE - 1) / MAX_TILE_SIZE;
    numTilesY = (outH + MAX_TILE_SIZE - 1) / MAX_TILE_SIZE;
  } else {
    numTilesX = 1;
    numTilesY = 1;
  }

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

  // Sequential tile processing: only allocate 3 accum buffers (R/G/B).
  // Tiles are processed one at a time, reusing the same 3 buffers.
  // This drastically reduces VRAM usage from ~2GB to ~25MB.

  int totalBuffers = 3; // Only R, G, B channels
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
  stagingInfo.usage = VK_BUFFER_USAGE_STORAGE_BUFFER_BIT |
                      VK_BUFFER_USAGE_TRANSFER_SRC_BIT |
                      VK_BUFFER_USAGE_TRANSFER_DST_BIT;
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

  // Descriptor Pool — sized for 3 channels, not all tiles
  VkDescriptorPoolSize poolSizes[2] = {};
  poolSizes[0].type = VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER;
  poolSizes[0].descriptorCount = 256;
  poolSizes[1].type = VK_DESCRIPTOR_TYPE_STORAGE_BUFFER;
  poolSizes[1].descriptorCount = 256;

  VkDescriptorPoolCreateInfo poolInfo{};
  poolInfo.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO;
  poolInfo.flags = VK_DESCRIPTOR_POOL_CREATE_FREE_DESCRIPTOR_SET_BIT;
  poolInfo.maxSets = 256;
  poolInfo.poolSizeCount = 2;
  poolInfo.pPoolSizes = poolSizes;
  VK_CHECK(vkCreateDescriptorPool(device, &poolInfo, nullptr, &descriptorPool));

  // --- Alignment Buffer (Coarse) ---
  tileSize = 16; // Finer tiles for better alignment precision
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

  // Clear Accumulator Buffers (only 3 now)
  VkCommandBuffer cb = vm.beginSingleTimeCommands();
  for (int i = 0; i < 3; ++i) {
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
  TIME_START(scoreCalculation);
  for (auto &frame : pendingFrames) {
    if (frame.score == 0.0f) {
      frame.score = calculateFrameScore(frame.rawData.data(), width, height,
                                        frame.cfaPattern);
    }
  }
  std::sort(
      pendingFrames.begin(), pendingFrames.end(),
      [](const FrameData &a, const FrameData &b) { return a.score > b.score; });
  TIME_END(scoreCalculation);

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

  uint32_t tileW = (outputW + numTilesX - 1) / numTilesX;
  uint32_t tileH = (outputH + numTilesY - 1) / numTilesY;

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
  VK_CHECK(vkAllocateDescriptorSets(device, &allocInfo, &alignLkSets[0]));
  VkDescriptorSet alignSet = alignLkSets[0];

  allocInfo.pSetLayouts = &robustnessSetLayout;
  VK_CHECK(vkAllocateDescriptorSets(device, &allocInfo, &robustnessSets[0]));
  VkDescriptorSet robustSet = robustnessSets[0];

  // Allocate descriptor sets for 3 channels (R/G/B)
  allocInfo.pSetLayouts = &descriptorSetLayout;
  for (int c = 0; c < 3; ++c) {
    if (accumSets[c] == VK_NULL_HANDLE) {
      VK_CHECK(vkAllocateDescriptorSets(device, &allocInfo, &accumSets[c]));
    }
    updateBufferDescriptorSet(device, accumSets[c], accumBuffers[c],
                              VK_WHOLE_SIZE, 1);
    updateBufferDescriptorSet(device, accumSets[c], alignmentBuffer,
                              VK_WHOLE_SIZE, 2);
    updateBufferDescriptorSet(device, accumSets[c], kernelBuffer, VK_WHOLE_SIZE,
                              3);
    updateBufferDescriptorSet(device, accumSets[c], robustnessBuffer,
                              VK_WHOLE_SIZE, 4);
    updateImageDescriptorSet(device, accumSets[c], lscView, lscSampler, 5);
  }

  allocInfo.pSetLayouts = &normalizeSetLayout;
  for (int c = 0; c < 3; ++c) {
    if (normalizeSets[c] == VK_NULL_HANDLE) {
      VK_CHECK(vkAllocateDescriptorSets(device, &allocInfo, &normalizeSets[c]));
    }
  }

  // Pre-update constant bindings for other pipelines
  updateBufferDescriptorSet(device, structureTensorSet, kernelBuffer,
                            VK_WHOLE_SIZE, 1);
  updateBufferDescriptorSet(device, alignSet, alignmentBuffer, VK_WHOLE_SIZE,
                            2);
  updateBufferDescriptorSet(device, robustSet, alignmentBuffer, VK_WHOLE_SIZE,
                            2);
  updateBufferDescriptorSet(device, robustSet, robustnessBuffer, VK_WHOLE_SIZE,
                            3);

  // =====================================================================
  // Phase 1: Upload all frames to GPU and build proxies/pyramids
  // =====================================================================
  TIME_START(phase1_UploadAndPyramid);
  struct UploadedFrame {
    VkImage image = VK_NULL_HANDLE;
    VkImageView view = VK_NULL_HANDLE;
    VkDeviceMemory mem = VK_NULL_HANDLE;
    GrayImage proxy;
    std::vector<GrayImage> pyramid;
  };
  std::vector<UploadedFrame> uploadedFrames(pendingFrames.size());

  for (size_t i = 0; i < pendingFrames.size(); ++i) {
    const auto &frame = pendingFrames[i];

    // Build grayscale proxy
    {
      uint32_t proxyW = width / 2;
      uint32_t proxyH = height / 2;
      uploadedFrames[i].proxy.width = proxyW;
      uploadedFrames[i].proxy.height = proxyH;
      uploadedFrames[i].proxy.data.resize(proxyW * proxyH);
      float invWL = 255.0f / std::max(1.0f, mWhiteLevel);
      for (uint32_t py = 0; py < proxyH; ++py) {
        for (uint32_t px = 0; px < proxyW; ++px) {
          uint32_t sx = px * 2;
          uint32_t sy = py * 2;
          int sum = (int)frame.rawData[sy * width + sx] +
                    (int)frame.rawData[sy * width + sx + 1] +
                    (int)frame.rawData[(sy + 1) * width + sx] +
                    (int)frame.rawData[(sy + 1) * width + sx + 1];
          int avg = sum / 4;
          int val = (int)(avg * invWL);
          uploadedFrames[i].proxy.data[py * proxyW + px] =
              (uint8_t)std::min(255, std::max(0, val));
        }
      }
    }

    // Build pyramid
    uploadedFrames[i].pyramid = buildPyramid(
        uploadedFrames[i].proxy.data.data(), uploadedFrames[i].proxy.width,
        uploadedFrames[i].proxy.height, 4);

    if (i == 0) {
      referencePyramid = uploadedFrames[i].pyramid;
    }

    // Upload frame to GPU
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
      vkCreateImage(device, &imgInfo, nullptr, &uploadedFrames[i].image);
      VkMemoryRequirements reqs;
      vkGetImageMemoryRequirements(device, uploadedFrames[i].image, &reqs);
      VkMemoryAllocateInfo alloc{VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO};
      alloc.allocationSize = reqs.size;
      alloc.memoryTypeIndex = vm.findMemoryType(
          reqs.memoryTypeBits, VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT);
      vkAllocateMemory(device, &alloc, nullptr, &uploadedFrames[i].mem);
      vkBindImageMemory(device, uploadedFrames[i].image, uploadedFrames[i].mem,
                        0);

      VkImageViewCreateInfo viewInfo{VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO};
      viewInfo.image = uploadedFrames[i].image;
      viewInfo.viewType = VK_IMAGE_VIEW_TYPE_2D;
      viewInfo.format = VK_FORMAT_R16_UNORM;
      viewInfo.subresourceRange = {VK_IMAGE_ASPECT_COLOR_BIT, 0, 1, 0, 1};
      vkCreateImageView(device, &viewInfo, nullptr, &uploadedFrames[i].view);

      VkDeviceSize size = width * height * 2;
      void *map;
      vkMapMemory(device, stagingMemory, 0, size, 0, &map);
      memcpy(map, frame.rawData.data(), size);
      vkUnmapMemory(device, stagingMemory);

      VkCommandBuffer cb = vm.beginSingleTimeCommands();
      VkImageMemoryBarrier barrier{VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER};
      barrier.oldLayout = VK_IMAGE_LAYOUT_UNDEFINED;
      barrier.newLayout = VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL;
      barrier.image = uploadedFrames[i].image;
      barrier.subresourceRange = {VK_IMAGE_ASPECT_COLOR_BIT, 0, 1, 0, 1};
      barrier.dstAccessMask = VK_ACCESS_TRANSFER_WRITE_BIT;
      vkCmdPipelineBarrier(cb, VK_PIPELINE_STAGE_TOP_OF_PIPE_BIT,
                           VK_PIPELINE_STAGE_TRANSFER_BIT, 0, 0, nullptr, 0,
                           nullptr, 1, &barrier);

      VkBufferImageCopy copyReg{};
      copyReg.imageExtent = {width, height, 1};
      copyReg.imageSubresource = {VK_IMAGE_ASPECT_COLOR_BIT, 0, 0, 1};
      vkCmdCopyBufferToImage(cb, stagingBuffer, uploadedFrames[i].image,
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
  }
  TIME_END(phase1_UploadAndPyramid);

  // Phase 2: Structure tensor pass on reference frame (global, once)
  // =====================================================================
  TIME_START(phase2_StructureTensor);
  {
    VkCommandBuffer cb = vm.beginSingleTimeCommands();

    PushConstants pc{};
    pc.width = outputW;
    pc.height = outputH;
    pc.planeWidth = inputW;
    pc.planeHeight = inputH;
    pc.sensorWidth = width;
    pc.sensorHeight = height;
    pc.scale = (float)scale;
    pc.cfaPattern = (uint32_t)pendingFrames[0].cfaPattern;
    memcpy(pc.blackLevel, mBlackLevel, 4 * sizeof(float));
    pc.whiteLevel = mWhiteLevel;
    memcpy(pc.wbGains, mWbGains, 4 * sizeof(float));
    pc.gridW = gridW;
    pc.gridH = gridH;
    pc.tileSize = (uint32_t)tileSize;
    pc.bufferStride = tileW + 16;
    pc.noiseAlpha = mNoiseModel[0] / 65535.0f;
    pc.noiseBeta = mNoiseModel[1] / (65535.0f * 65535.0f);
    pc.baseNoise = pc.noiseBeta;
    pc.tileX = 0;
    pc.tileY = 0;
    pc.tileW = inputW;
    pc.tileH = inputH;

    vkCmdBindPipeline(cb, VK_PIPELINE_BIND_POINT_COMPUTE,
                      structureTensorPipeline);
    updateImageDescriptorSet(device, structureTensorSet, uploadedFrames[0].view,
                             sampler, 0);
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
                         VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT, 0, 0, nullptr, 1,
                         &bMem, 0, nullptr);

    vm.endSingleTimeCommands(cb);
  }
  TIME_END(phase2_StructureTensor);

  // =====================================================================
  // Phase 3: Pre-compute alignment for each non-reference frame
  // =====================================================================
  TIME_START(phase3_CoarseAlignment);
  struct FrameAlignment {
    TileAlignment coarseAlign;
  };
  std::vector<FrameAlignment> frameAlignments(pendingFrames.size());
  for (size_t i = 1; i < pendingFrames.size(); ++i) {
    frameAlignments[i].coarseAlign =
        computeTileAlignment(referencePyramid, uploadedFrames[i].pyramid, 64);
  }
  TIME_END(phase3_CoarseAlignment);

  // Phase 4: Sequential tile processing
  // For each tile: clear accum → accumulate all frames → normalize
  // =====================================================================
  TIME_START(phase4_TileProcessing);
  VkDeviceSize accumBufferSize =
      (VkDeviceSize)(tileW + 16) * (tileH + 16) * sizeof(float) * 2;

  for (int ty = 0; ty < numTilesY; ++ty) {
    for (int tx = 0; tx < numTilesX; ++tx) {
      uint32_t currentTileW = std::min(tileW, outputW - tx * tileW);
      uint32_t currentTileH = std::min(tileH, outputH - ty * tileH);

      // Clear accumulators for this tile
      {
        VkCommandBuffer cb = vm.beginSingleTimeCommands();
        for (int c = 0; c < 3; ++c) {
          vkCmdFillBuffer(cb, accumBuffers[c], 0, accumBufferSize, 0);
        }
        VkMemoryBarrier memBarrier{VK_STRUCTURE_TYPE_MEMORY_BARRIER};
        memBarrier.srcAccessMask = VK_ACCESS_TRANSFER_WRITE_BIT;
        memBarrier.dstAccessMask =
            VK_ACCESS_SHADER_READ_BIT | VK_ACCESS_SHADER_WRITE_BIT;
        vkCmdPipelineBarrier(cb, VK_PIPELINE_STAGE_TRANSFER_BIT,
                             VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT, 0, 1,
                             &memBarrier, 0, nullptr, 0, nullptr);
        vm.endSingleTimeCommands(cb);
      }

      // Process all frames for this tile
      for (size_t i = 0; i < pendingFrames.size(); ++i) {
        bool isRef = (i == 0);
        const auto &frame = pendingFrames[i];

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
        pc.noiseAlpha = mNoiseModel[0] / 65535.0f;
        pc.noiseBeta = mNoiseModel[1] / (65535.0f * 65535.0f);
        pc.baseNoise = pc.noiseBeta;

        if (!isRef) {
          // Upload coarse alignment for this frame
          const auto &coarseAlign = frameAlignments[i].coarseAlign;
          void *mapPtr = nullptr;
          VkResult res = vkMapMemory(device, alignmentMemory, 0, VK_WHOLE_SIZE,
                                     0, &mapPtr);
          if (res == VK_SUCCESS && mapPtr != nullptr) {
            Point *dstOffsets = (Point *)mapPtr;
            for (uint32_t gy = 0; gy < (uint32_t)gridH; ++gy) {
              for (uint32_t gx = 0; gx < (uint32_t)gridW; ++gx) {
                int cx = gx * tileSize + tileSize / 2;
                int cy = gy * tileSize + tileSize / 2;
                Point off = coarseAlign.getOffset(cx, cy);
                dstOffsets[gy * gridW + gx] = off;
              }
            }
            vkUnmapMemory(device, alignmentMemory);
          }

          // LK alignment + Robustness
          VkCommandBuffer cb = vm.beginSingleTimeCommands();

          // HOST_WRITE -> SHADER barrier
          VkBufferMemoryBarrier hostBarrier{
              VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER};
          hostBarrier.srcAccessMask = VK_ACCESS_HOST_WRITE_BIT;
          hostBarrier.dstAccessMask =
              VK_ACCESS_SHADER_READ_BIT | VK_ACCESS_SHADER_WRITE_BIT;
          hostBarrier.buffer = alignmentBuffer;
          hostBarrier.size = VK_WHOLE_SIZE;
          vkCmdPipelineBarrier(cb, VK_PIPELINE_STAGE_HOST_BIT,
                               VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT, 0, 0,
                               nullptr, 1, &hostBarrier, 0, nullptr);

          // Set pre-processing tile range (plane resolution)
          pc.tileX = 0;
          pc.tileY = 0;
          pc.tileW = inputW;
          pc.tileH = inputH;
          pc.bufferStride = tileW + 16;

          // LK Alignment
          vkCmdBindPipeline(cb, VK_PIPELINE_BIND_POINT_COMPUTE,
                            alignLkPipeline);
          updateImageDescriptorSet(device, alignSet, uploadedFrames[0].view,
                                   sampler, 0);
          updateImageDescriptorSet(device, alignSet, uploadedFrames[i].view,
                                   sampler, 1);
          vkCmdBindDescriptorSets(cb, VK_PIPELINE_BIND_POINT_COMPUTE,
                                  alignLkPipelineLayout, 0, 1, &alignSet, 0,
                                  nullptr);
          vkCmdPushConstants(cb, alignLkPipelineLayout,
                             VK_SHADER_STAGE_COMPUTE_BIT, 0, sizeof(pc), &pc);

          for (int iter = 0; iter < 5; ++iter) {
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

          // Robustness
          vkCmdBindPipeline(cb, VK_PIPELINE_BIND_POINT_COMPUTE,
                            robustnessPipeline);
          updateImageDescriptorSet(device, robustSet, uploadedFrames[0].view,
                                   sampler, 0);
          updateImageDescriptorSet(device, robustSet, uploadedFrames[i].view,
                                   sampler, 1);
          vkCmdBindDescriptorSets(cb, VK_PIPELINE_BIND_POINT_COMPUTE,
                                  robustnessPipelineLayout, 0, 1, &robustSet, 0,
                                  nullptr);
          vkCmdPushConstants(cb, robustnessPipelineLayout,
                             VK_SHADER_STAGE_COMPUTE_BIT, 0, sizeof(pc), &pc);
          vkCmdDispatch(cb, (inputW + 15) / 16, (inputH + 15) / 16, 1);

          VkBufferMemoryBarrier rbBarrier{
              VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER};
          rbBarrier.srcAccessMask = VK_ACCESS_SHADER_WRITE_BIT;
          rbBarrier.dstAccessMask = VK_ACCESS_SHADER_READ_BIT;
          rbBarrier.buffer = robustnessBuffer;
          rbBarrier.size = VK_WHOLE_SIZE;
          vkCmdPipelineBarrier(cb, VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT,
                               VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT, 0, 0,
                               nullptr, 1, &rbBarrier, 0, nullptr);

          vm.endSingleTimeCommands(cb);
        }

        // Accumulate this frame's contribution for this tile's 3 channels
        {
          VkCommandBuffer cb = vm.beginSingleTimeCommands();
          vkCmdBindPipeline(cb, VK_PIPELINE_BIND_POINT_COMPUTE,
                            accumulatePipeline);

          for (int c = 0; c < 3; ++c) {
            updateImageDescriptorSet(device, accumSets[c],
                                     uploadedFrames[i].view, sampler, 0);
            vkCmdBindDescriptorSets(cb, VK_PIPELINE_BIND_POINT_COMPUTE,
                                    pipelineLayout, 0, 1, &accumSets[c], 0,
                                    nullptr);

            pc.isFirstFrame = isRef ? 1 : 0;
            pc.outputChannel = c;
            pc.bufferStride = tileW + 16;
            pc.tileX = tx * tileW;
            pc.tileY = ty * tileH;
            pc.tileW = currentTileW;
            pc.tileH = currentTileH;

            vkCmdPushConstants(cb, pipelineLayout, VK_SHADER_STAGE_COMPUTE_BIT,
                               0, sizeof(pc), &pc);
            vkCmdDispatch(cb, (currentTileW + 15) / 16,
                          (currentTileH + 15) / 16, 1);

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
      } // end for each frame

      // Normalize this tile and write to staging buffer
      // NOTE: Bind staging buffer with a row offset to stay within
      // maxStorageBufferRange. The shader uses outIndex = (outY * width + outX)
      // * 3 + planeIndex, so we offset the binding to the start of this tile's
      // first row (tileY * outputW * 3 * 2). We then shift the shader's tileY
      // to 0 and height to currentTileH, so outY ranges [0, currentTileH)
      // relative to the buffer binding.
      {
        VkCommandBuffer cb = vm.beginSingleTimeCommands();
        vkCmdBindPipeline(cb, VK_PIPELINE_BIND_POINT_COMPUTE,
                          normalizePipeline);

        // Compute the byte offset into staging buffer for this tile's row band
        VkDeviceSize rowBandOffset =
            (VkDeviceSize)(ty * tileH) * outputW * 3 * sizeof(uint16_t);
        // Range covers from this row band to the end of the buffer
        VkDeviceSize stagingTotalSize =
            (VkDeviceSize)outputW * outputH * 3 * sizeof(uint16_t);
        VkDeviceSize rowBandRange = stagingTotalSize - rowBandOffset;

        for (int c = 0; c < 3; ++c) {
          updateBufferDescriptorSet(device, normalizeSets[c], stagingBuffer,
                                    rowBandRange, 0, rowBandOffset);
          updateBufferDescriptorSet(device, normalizeSets[c], accumBuffers[c],
                                    VK_WHOLE_SIZE, 1);
          vkCmdBindDescriptorSets(cb, VK_PIPELINE_BIND_POINT_COMPUTE,
                                  normalizePipelineLayout, 0, 1,
                                  &normalizeSets[c], 0, nullptr);

          PushConstants pc{};
          pc.width = outputW;
          // Shift height and tileY relative to the row band
          pc.height = outputH - ty * tileH;
          pc.planeWidth = outputW;
          pc.planeHeight = outputH;
          pc.bufferStride = tileW + 16;
          pc.tileX = tx * tileW;
          pc.tileY = 0; // Relative to row band offset
          pc.tileW = currentTileW;
          pc.tileH = currentTileH;
          pc.planeIndex = (uint32_t)c;
          pc.cfaPattern = (uint32_t)mCfaPattern;
          pc.whiteLevel = mWhiteLevel;
          memcpy(pc.blackLevel, mBlackLevel, 4 * sizeof(float));
          memcpy(pc.wbGains, mWbGains, 4 * sizeof(float));

          vkCmdPushConstants(cb, normalizePipelineLayout,
                             VK_SHADER_STAGE_COMPUTE_BIT, 0, sizeof(pc), &pc);
          vkCmdDispatch(cb, (currentTileW + 15) / 16, (currentTileH + 15) / 16,
                        1);
        }

        vm.endSingleTimeCommands(cb);
      }

    } // end for tx
  } // end for ty
  TIME_END(phase4_TileProcessing);

  // =====================================================================
  // Phase 5: Read back result from staging buffer
  // =====================================================================
  {
    TIME_START(phase5_OutputReadback);
    void *mapData;
    VK_CHECK(vkMapMemory(device, stagingMemory, 0, VK_WHOLE_SIZE, 0, &mapData));
    size_t reqSize = (size_t)outputW * outputH * 3 * sizeof(uint16_t);
    if (bufferSize >= reqSize) {
      memcpy(outBuffer, mapData, reqSize);
    } else {
      LOGE("Buffer too small! Req: %zu, Has: %zu", reqSize, bufferSize);
    }
    vkUnmapMemory(device, stagingMemory);
    TIME_END(phase5_OutputReadback);
  }

  // =====================================================================
  // Cleanup
  // =====================================================================
  for (auto &uf : uploadedFrames) {
    if (uf.view)
      vkDestroyImageView(device, uf.view, nullptr);
    if (uf.image)
      vkDestroyImage(device, uf.image, nullptr);
    if (uf.mem)
      vkFreeMemory(device, uf.mem, nullptr);
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
