#include "vulkan_raw_stacker.h"
#include "accumulate_raw.comp.h"
#include "align_lk.comp.h"
#include "common.h"
#include "color_scatter_raw.comp.h"
#include "green_scatter_raw.comp.h"
#include "normalize_color_hr.comp.h"
#include "normalize_raw.comp.h"
#include "normalize_green_hr.comp.h"
#include "raw_structure_tensor.comp.h"
#include "robustness_raw.comp.h"
#include <algorithm>
#include <cmath>
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
      rReqs.memoryTypeBits, VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT |
                               VK_MEMORY_PROPERTY_HOST_COHERENT_BIT);
  VK_CHECK(vkAllocateMemory(device, &rAlloc, nullptr, &robustnessMemory));
  vkBindBufferMemory(device, robustnessBuffer, robustnessMemory, 0);

  // 2B. Local tile reliability mask (float per 16x16 plane tile)
  uint32_t localTilesX = (inputW + 15) / 16;
  uint32_t localTilesY = (inputH + 15) / 16;
  VkDeviceSize localMaskSize =
      (VkDeviceSize)localTilesX * localTilesY * sizeof(float);
  VkBufferCreateInfo lmInfo{VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO};
  lmInfo.size = localMaskSize;
  lmInfo.usage = VK_BUFFER_USAGE_STORAGE_BUFFER_BIT;
  lmInfo.sharingMode = VK_SHARING_MODE_EXCLUSIVE;
  VK_CHECK(vkCreateBuffer(device, &lmInfo, nullptr, &localTileMaskBuffer));

  VkMemoryRequirements lmReqs;
  vkGetBufferMemoryRequirements(device, localTileMaskBuffer, &lmReqs);
  VkMemoryAllocateInfo lmAlloc{VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO};
  lmAlloc.allocationSize = lmReqs.size;
  lmAlloc.memoryTypeIndex = vm.findMemoryType(
      lmReqs.memoryTypeBits, VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT |
                                 VK_MEMORY_PROPERTY_HOST_COHERENT_BIT);
  VK_CHECK(vkAllocateMemory(device, &lmAlloc, nullptr, &localTileMaskMemory));
  vkBindBufferMemory(device, localTileMaskBuffer, localTileMaskMemory, 0);

  // 3. Green HR phase accumulators: atomic uint(sum, weight) per output pixel
  VkDeviceSize greenAccumSize =
      (VkDeviceSize)stride * (tileH + 16) * sizeof(uint32_t) * 2;
  for (int phase = 0; phase < 2; ++phase) {
    VkBufferCreateInfo gInfo{VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO};
    gInfo.size = greenAccumSize;
    gInfo.usage =
        VK_BUFFER_USAGE_STORAGE_BUFFER_BIT | VK_BUFFER_USAGE_TRANSFER_DST_BIT;
    gInfo.sharingMode = VK_SHARING_MODE_EXCLUSIVE;
    VK_CHECK(vkCreateBuffer(device, &gInfo, nullptr,
                            &greenPhaseAccumBuffers[phase]));

    VkMemoryRequirements gReqs;
    vkGetBufferMemoryRequirements(device, greenPhaseAccumBuffers[phase],
                                  &gReqs);
    VkMemoryAllocateInfo gAlloc{VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO};
    gAlloc.allocationSize = gReqs.size;
    gAlloc.memoryTypeIndex = vm.findMemoryType(
        gReqs.memoryTypeBits, VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT |
                                  VK_MEMORY_PROPERTY_HOST_COHERENT_BIT);
    VK_CHECK(vkAllocateMemory(device, &gAlloc, nullptr,
                              &greenPhaseAccumMemories[phase]));
    vkBindBufferMemory(device, greenPhaseAccumBuffers[phase],
                       greenPhaseAccumMemories[phase], 0);
  }
  for (int c = 0; c < 2; ++c) {
    VkBufferCreateInfo gInfo{VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO};
    gInfo.size = greenAccumSize;
    gInfo.usage =
        VK_BUFFER_USAGE_STORAGE_BUFFER_BIT | VK_BUFFER_USAGE_TRANSFER_DST_BIT;
    gInfo.sharingMode = VK_SHARING_MODE_EXCLUSIVE;
    VK_CHECK(vkCreateBuffer(device, &gInfo, nullptr, &rbScatterAccumBuffers[c]));

    VkMemoryRequirements gReqs;
    vkGetBufferMemoryRequirements(device, rbScatterAccumBuffers[c], &gReqs);
    VkMemoryAllocateInfo gAlloc{VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO};
    gAlloc.allocationSize = gReqs.size;
    gAlloc.memoryTypeIndex = vm.findMemoryType(
        gReqs.memoryTypeBits, VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT);
    VK_CHECK(
        vkAllocateMemory(device, &gAlloc, nullptr, &rbScatterAccumMemories[c]));
    vkBindBufferMemory(device, rbScatterAccumBuffers[c],
                       rbScatterAccumMemories[c], 0);
  }

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
  for (int phase = 0; phase < 2; ++phase) {
    vkCmdFillBuffer(cb, greenPhaseAccumBuffers[phase], 0, greenAccumSize, 0);
    VkBufferMemoryBarrier barrier{};
    barrier.sType = VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER;
    barrier.srcAccessMask = VK_ACCESS_TRANSFER_WRITE_BIT;
    barrier.dstAccessMask =
        VK_ACCESS_SHADER_READ_BIT | VK_ACCESS_SHADER_WRITE_BIT;
    barrier.buffer = greenPhaseAccumBuffers[phase];
    barrier.size = greenAccumSize;
    vkCmdPipelineBarrier(cb, VK_PIPELINE_STAGE_TRANSFER_BIT,
                         VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT, 0, 0, nullptr, 1,
                         &barrier, 0, nullptr);
  }
  for (int c = 0; c < 2; ++c) {
    vkCmdFillBuffer(cb, rbScatterAccumBuffers[c], 0, greenAccumSize, 0);
    VkBufferMemoryBarrier barrier{};
    barrier.sType = VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER;
    barrier.srcAccessMask = VK_ACCESS_TRANSFER_WRITE_BIT;
    barrier.dstAccessMask =
        VK_ACCESS_SHADER_READ_BIT | VK_ACCESS_SHADER_WRITE_BIT;
    barrier.buffer = rbScatterAccumBuffers[c];
    barrier.size = greenAccumSize;
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

  // --- 4. Green HR Scatter Pipeline ---
  VkDescriptorSetLayoutBinding gsBindings[8] = {};
  gsBindings[0] = {0, VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr}; // Input RAW
  gsBindings[1] = {1, VK_DESCRIPTOR_TYPE_STORAGE_BUFFER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr}; // Align
  gsBindings[2] = {2, VK_DESCRIPTOR_TYPE_STORAGE_BUFFER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr}; // Kernel
  gsBindings[3] = {3, VK_DESCRIPTOR_TYPE_STORAGE_BUFFER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr}; // Robustness
  gsBindings[4] = {4, VK_DESCRIPTOR_TYPE_STORAGE_BUFFER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr}; // Green phase 0
  gsBindings[5] = {5, VK_DESCRIPTOR_TYPE_STORAGE_BUFFER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr}; // Green phase 1
  gsBindings[6] = {6, VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr}; // LSC
  gsBindings[7] = {7, VK_DESCRIPTOR_TYPE_STORAGE_BUFFER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr}; // Local tile mask

  VkDescriptorSetLayoutCreateInfo gsLayoutInfo{
      VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO};
  gsLayoutInfo.bindingCount = 8;
  gsLayoutInfo.pBindings = gsBindings;
  vkCreateDescriptorSetLayout(device, &gsLayoutInfo, nullptr,
                              &greenScatterSetLayout);

  VkPipelineLayoutCreateInfo gsPLInfo{
      VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO};
  gsPLInfo.setLayoutCount = 1;
  gsPLInfo.pSetLayouts = &greenScatterSetLayout;
  gsPLInfo.pushConstantRangeCount = 1;
  gsPLInfo.pPushConstantRanges = &pushConstantRange;
  vkCreatePipelineLayout(device, &gsPLInfo, nullptr,
                         &greenScatterPipelineLayout);

  greenScatterPipeline = createComputePipeline(
      device, greenScatterPipelineLayout, green_scatter_raw_comp_spv,
      green_scatter_raw_comp_spv_size);

  // --- 5. Color Scatter Pipeline (R/B) ---
  VkDescriptorSetLayoutBinding csBindings[6] = {};
  csBindings[0] = {0, VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr};
  csBindings[1] = {1, VK_DESCRIPTOR_TYPE_STORAGE_BUFFER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr};
  csBindings[2] = {2, VK_DESCRIPTOR_TYPE_STORAGE_BUFFER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr};
  csBindings[3] = {3, VK_DESCRIPTOR_TYPE_STORAGE_BUFFER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr};
  csBindings[4] = {4, VK_DESCRIPTOR_TYPE_STORAGE_BUFFER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr};
  csBindings[5] = {5, VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr};

  VkDescriptorSetLayoutCreateInfo csLayoutInfo{
      VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO};
  csLayoutInfo.bindingCount = 6;
  csLayoutInfo.pBindings = csBindings;
  vkCreateDescriptorSetLayout(device, &csLayoutInfo, nullptr,
                              &colorScatterSetLayout);

  VkPipelineLayoutCreateInfo csPLInfo{
      VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO};
  csPLInfo.setLayoutCount = 1;
  csPLInfo.pSetLayouts = &colorScatterSetLayout;
  csPLInfo.pushConstantRangeCount = 1;
  csPLInfo.pPushConstantRanges = &pushConstantRange;
  vkCreatePipelineLayout(device, &csPLInfo, nullptr,
                         &colorScatterPipelineLayout);

  colorScatterPipeline = createComputePipeline(
      device, colorScatterPipelineLayout, color_scatter_raw_comp_spv,
      color_scatter_raw_comp_spv_size);

  // --- 6. Accumulate Pipeline ---
  // Updated with 7 bindings: 0=Input, 1=Accum, 2=Align, 3=Kernel,
  // 4=Robustness, 5=LSC, 6=Local tile mask
  VkDescriptorSetLayoutBinding bindings[7] = {};
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
  bindings[6] = {6, VK_DESCRIPTOR_TYPE_STORAGE_BUFFER, 1,
                 VK_SHADER_STAGE_COMPUTE_BIT, nullptr};

  VkDescriptorSetLayoutCreateInfo layoutInfo{};
  layoutInfo.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO;
  layoutInfo.bindingCount = 7;
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

  // --- 7. Green Normalize Pipeline ---
  VkDescriptorSetLayoutBinding gnBindings[3] = {};
  gnBindings[0] = {0, VK_DESCRIPTOR_TYPE_STORAGE_BUFFER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr}; // Output
  gnBindings[1] = {1, VK_DESCRIPTOR_TYPE_STORAGE_BUFFER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr}; // Phase 0
  gnBindings[2] = {2, VK_DESCRIPTOR_TYPE_STORAGE_BUFFER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr}; // Phase 1

  VkDescriptorSetLayoutCreateInfo gnLayoutInfo{
      VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO};
  gnLayoutInfo.bindingCount = 3;
  gnLayoutInfo.pBindings = gnBindings;
  vkCreateDescriptorSetLayout(device, &gnLayoutInfo, nullptr,
                              &greenNormalizeSetLayout);

  VkPipelineLayoutCreateInfo gnPLInfo{
      VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO};
  gnPLInfo.setLayoutCount = 1;
  gnPLInfo.pSetLayouts = &greenNormalizeSetLayout;
  gnPLInfo.pushConstantRangeCount = 1;
  gnPLInfo.pPushConstantRanges = &pushConstantRange;
  vkCreatePipelineLayout(device, &gnPLInfo, nullptr,
                         &greenNormalizePipelineLayout);

  greenNormalizePipeline = createComputePipeline(
      device, greenNormalizePipelineLayout, normalize_green_hr_comp_spv,
      normalize_green_hr_comp_spv_size);

  // --- 8. Color Normalize Pipeline ---
  VkDescriptorSetLayoutBinding cnBindings[2] = {};
  cnBindings[0] = {0, VK_DESCRIPTOR_TYPE_STORAGE_BUFFER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr};
  cnBindings[1] = {1, VK_DESCRIPTOR_TYPE_STORAGE_BUFFER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr};

  VkDescriptorSetLayoutCreateInfo cnLayoutInfo{
      VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO};
  cnLayoutInfo.bindingCount = 2;
  cnLayoutInfo.pBindings = cnBindings;
  vkCreateDescriptorSetLayout(device, &cnLayoutInfo, nullptr,
                              &colorNormalizeSetLayout);

  VkPipelineLayoutCreateInfo cnPLInfo{
      VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO};
  cnPLInfo.setLayoutCount = 1;
  cnPLInfo.pSetLayouts = &colorNormalizeSetLayout;
  cnPLInfo.pushConstantRangeCount = 1;
  cnPLInfo.pPushConstantRanges = &pushConstantRange;
  vkCreatePipelineLayout(device, &cnPLInfo, nullptr,
                         &colorNormalizePipelineLayout);

  colorNormalizePipeline = createComputePipeline(
      device, colorNormalizePipelineLayout, normalize_color_hr_comp_spv,
      normalize_color_hr_comp_spv_size);

  // --- 9. Normalization Pipeline ---

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

namespace {

inline uint16_t fetchRawClamped(const std::vector<uint16_t> &raw, uint32_t width,
                                uint32_t height, int x, int y) {
  x = std::max(0, std::min(x, (int)width - 1));
  y = std::max(0, std::min(y, (int)height - 1));
  return raw[(size_t)y * width + x];
}

inline float fetchGreenProxySample(const std::vector<uint16_t> &raw,
                                   uint32_t width, uint32_t height,
                                   int cfaPattern, int planeX, int planeY) {
  int sx = planeX * 2;
  int sy = planeY * 2;

  float g1 = 0.0f;
  float g2 = 0.0f;
  if (cfaPattern == 0 || cfaPattern == 3) {
    g1 = (float)fetchRawClamped(raw, width, height, sx + 1, sy);
    g2 = (float)fetchRawClamped(raw, width, height, sx, sy + 1);
  } else {
    g1 = (float)fetchRawClamped(raw, width, height, sx, sy);
    g2 = (float)fetchRawClamped(raw, width, height, sx + 1, sy + 1);
  }
  return (g1 + g2) * 0.5f;
}

struct ScalarStats {
  float minValue = 0.0f;
  float maxValue = 0.0f;
  float meanValue = 0.0f;
  float p50 = 0.0f;
  float p90 = 0.0f;
  float p99 = 0.0f;
};

struct FlowSummary {
  ScalarStats magnitude;
  float meanX = 0.0f;
  float meanY = 0.0f;
};

struct RobustnessSummary {
  ScalarStats values;
  float weak015Fraction = 0.0f;
  float weak05Fraction = 0.0f;
};

struct LocalReliabilitySummary {
  ScalarStats tileRobustness;
  float edgeTileFraction = 0.0f;
  float edgeGoodFraction = 0.0f;
  float textGoodFraction = 0.0f;
};

struct LocalReliabilityMap {
  uint32_t tilesX = 0;
  uint32_t tilesY = 0;
  std::vector<float> tileWeights;
  LocalReliabilitySummary summary;
};

struct GreenPhaseSummary {
  ScalarStats phase0Mean;
  ScalarStats phase1Mean;
  float phase0DominantFraction = 0.0f;
  float phase1DominantFraction = 0.0f;
  float conflictFraction = 0.0f;
};

inline ScalarStats computeScalarStats(const float *data, size_t count) {
  ScalarStats stats;
  if (count == 0 || data == nullptr)
    return stats;

  std::vector<float> sorted(data, data + count);
  std::sort(sorted.begin(), sorted.end());
  double sum = 0.0;
  for (float v : sorted)
    sum += v;

  auto percentile = [&](float q) -> float {
    size_t idx =
        std::min(sorted.size() - 1, (size_t)std::floor(q * (sorted.size() - 1)));
    return sorted[idx];
  };

  stats.minValue = sorted.front();
  stats.maxValue = sorted.back();
  stats.meanValue = (float)(sum / (double)sorted.size());
  stats.p50 = percentile(0.50f);
  stats.p90 = percentile(0.90f);
  stats.p99 = percentile(0.99f);
  return stats;
}

inline void logAlignmentDiagnostics(const char *label, size_t frameIndex,
                                    const TileAlignment &alignment) {
  (void)label;
  (void)frameIndex;
  (void)alignment;
}

inline void logRefinedFieldDiagnostics(VkDevice device, VkDeviceMemory alignMem,
                                       VkDeviceMemory robustMem, uint32_t gridW,
                                       uint32_t gridH, uint32_t planeW,
                                       uint32_t planeH, size_t frameIndex) {
  (void)device;
  (void)alignMem;
  (void)robustMem;
  (void)gridW;
  (void)gridH;
  (void)planeW;
  (void)planeH;
  (void)frameIndex;
}

inline FlowSummary readFlowSummary(VkDevice device, VkDeviceMemory alignMem,
                                   uint32_t gridW, uint32_t gridH) {
  FlowSummary summary;
  if (gridW == 0 || gridH == 0)
    return summary;

  void *alignPtr = nullptr;
  if (vkMapMemory(device, alignMem, 0, VK_WHOLE_SIZE, 0, &alignPtr) !=
          VK_SUCCESS ||
      alignPtr == nullptr) {
    return summary;
  }

  Point *points = static_cast<Point *>(alignPtr);
  std::vector<float> magnitudes;
  magnitudes.reserve((size_t)gridW * gridH);
  double sumX = 0.0;
  double sumY = 0.0;
  for (size_t i = 0; i < (size_t)gridW * gridH; ++i) {
    sumX += points[i].x;
    sumY += points[i].y;
    magnitudes.push_back(
        std::sqrt(points[i].x * points[i].x + points[i].y * points[i].y));
  }
  summary.magnitude = computeScalarStats(magnitudes.data(), magnitudes.size());
  summary.meanX = (float)(sumX / (double)magnitudes.size());
  summary.meanY = (float)(sumY / (double)magnitudes.size());
  vkUnmapMemory(device, alignMem);
  return summary;
}

inline RobustnessSummary readRobustnessSummary(VkDevice device,
                                               VkDeviceMemory robustMem,
                                               uint32_t planeW,
                                               uint32_t planeH) {
  RobustnessSummary summary;
  if (planeW == 0 || planeH == 0)
    return summary;

  void *robustPtr = nullptr;
  if (vkMapMemory(device, robustMem, 0, VK_WHOLE_SIZE, 0, &robustPtr) !=
          VK_SUCCESS ||
      robustPtr == nullptr) {
    return summary;
  }

  size_t count = (size_t)planeW * planeH;
  const float *robustness = static_cast<const float *>(robustPtr);
  summary.values = computeScalarStats(robustness, count);
  size_t weak015 = 0;
  size_t weak05 = 0;
  for (size_t i = 0; i < count; ++i) {
    if (robustness[i] < 0.15f)
      ++weak015;
    if (robustness[i] < 0.5f)
      ++weak05;
  }
  summary.weak015Fraction = (float)weak015 / (float)count;
  summary.weak05Fraction = (float)weak05 / (float)count;
  vkUnmapMemory(device, robustMem);
  return summary;
}

inline LocalReliabilityMap readLocalReliabilityMap(VkDevice device,
                                                   VkDeviceMemory robustMem,
                                                   uint32_t planeW,
                                                   uint32_t planeH,
                                                   const GrayImage &referenceProxy) {
  LocalReliabilityMap result;
  if (planeW == 0 || planeH == 0 || referenceProxy.data.empty())
    return result;

  void *robustPtr = nullptr;
  if (vkMapMemory(device, robustMem, 0, VK_WHOLE_SIZE, 0, &robustPtr) !=
          VK_SUCCESS ||
      robustPtr == nullptr) {
    return result;
  }

  const float *robustness = static_cast<const float *>(robustPtr);
  const uint32_t localTileSize = 16;
  const uint32_t tilesX = (planeW + localTileSize - 1) / localTileSize;
  const uint32_t tilesY = (planeH + localTileSize - 1) / localTileSize;
  result.tilesX = tilesX;
  result.tilesY = tilesY;
  result.tileWeights.resize((size_t)tilesX * tilesY, 1.0f);
  auto saturate = [](float v) { return std::clamp(v, 0.0f, 1.0f); };

  struct TileMetric {
    float detailScore = 0.0f;
    float meanRobustness = 0.0f;
    float weakFraction = 0.0f;
  };

  std::vector<TileMetric> tileMetrics;
  tileMetrics.reserve((size_t)tilesX * tilesY);
  std::vector<float> tileDetails;
  std::vector<float> tileRobustnessMeans;
  tileDetails.reserve((size_t)tilesX * tilesY);
  tileRobustnessMeans.reserve((size_t)tilesX * tilesY);

  for (uint32_t ty = 0; ty < tilesY; ++ty) {
    for (uint32_t tx = 0; tx < tilesX; ++tx) {
      uint32_t x0 = tx * localTileSize;
      uint32_t y0 = ty * localTileSize;
      uint32_t x1 = std::min(x0 + localTileSize, planeW);
      uint32_t y1 = std::min(y0 + localTileSize, planeH);

      double detailSum = 0.0;
      double robustSum = 0.0;
      size_t weakCount = 0;
      size_t count = 0;

      for (uint32_t y = y0; y < y1; ++y) {
        for (uint32_t x = x0; x < x1; ++x) {
          size_t idx = (size_t)y * planeW + x;
          float center = (float)referenceProxy.data[idx];
          float xp =
              (float)referenceProxy.data[(size_t)y * planeW + std::min(x + 1, planeW - 1)];
          float xm =
              (float)referenceProxy.data[(size_t)y * planeW + (x > 0 ? x - 1 : 0)];
          float yp =
              (float)referenceProxy.data[(size_t)std::min(y + 1, planeH - 1) * planeW + x];
          float ym =
              (float)referenceProxy.data[(size_t)(y > 0 ? y - 1 : 0) * planeW + x];
          float gx = std::abs(xp - xm);
          float gy = std::abs(yp - ym);
          float lap = std::abs(4.0f * center - xp - xm - yp - ym);
          detailSum += gx + gy + 0.5 * lap;

          float r = robustness[idx];
          robustSum += r;
          if (r < 0.5f)
            ++weakCount;
          ++count;
        }
      }

      TileMetric metric;
      if (count > 0) {
        metric.detailScore = (float)(detailSum / (double)count);
        metric.meanRobustness = (float)(robustSum / (double)count);
        metric.weakFraction = (float)weakCount / (float)count;
      }
      tileMetrics.push_back(metric);
      tileDetails.push_back(metric.detailScore);
      tileRobustnessMeans.push_back(metric.meanRobustness);
    }
  }

  result.summary.tileRobustness =
      computeScalarStats(tileRobustnessMeans.data(), tileRobustnessMeans.size());
  ScalarStats detailStats =
      computeScalarStats(tileDetails.data(), tileDetails.size());
  float edgeThreshold = std::max(detailStats.p50, detailStats.p90 * 0.65f);
  float textThreshold = std::max(detailStats.p90, detailStats.p99 * 0.75f);

  size_t edgeTiles = 0;
  size_t edgeGoodTiles = 0;
  size_t textTiles = 0;
  size_t textGoodTiles = 0;
  for (size_t idx = 0; idx < tileMetrics.size(); ++idx) {
    const TileMetric &metric = tileMetrics[idx];
    bool isEdgeTile = metric.detailScore >= edgeThreshold;
    bool isTextTile = metric.detailScore >= textThreshold;
    float robustNorm = saturate((metric.meanRobustness - 0.58f) / 0.24f);
    float weakPenalty = saturate(1.0f - std::max(0.0f, metric.weakFraction - 0.10f) / 0.30f);
    float detailBoost = isTextTile ? 1.0f : (isEdgeTile ? 0.70f : 0.35f);
    float tileWeight = saturate((0.55f * robustNorm + 0.45f * weakPenalty) *
                                (0.55f + 0.45f * detailBoost));
    if (isTextTile) {
      tileWeight = std::max(tileWeight, 0.35f);
    } else if (isEdgeTile) {
      tileWeight = std::max(tileWeight, 0.20f);
    }
    result.tileWeights[idx] = tileWeight;
    if (isEdgeTile) {
      ++edgeTiles;
      if (metric.meanRobustness >= 0.70f && metric.weakFraction <= 0.22f) {
        ++edgeGoodTiles;
      }
    }
    if (isTextTile) {
      ++textTiles;
      if (metric.meanRobustness >= 0.74f && metric.weakFraction <= 0.16f) {
        ++textGoodTiles;
      }
    }
  }

  size_t totalTiles = tileMetrics.size();
  if (totalTiles > 0) {
    result.summary.edgeTileFraction = (float)edgeTiles / (float)totalTiles;
  }
  if (edgeTiles > 0) {
    result.summary.edgeGoodFraction = (float)edgeGoodTiles / (float)edgeTiles;
  }
  if (textTiles > 0) {
    result.summary.textGoodFraction = (float)textGoodTiles / (float)textTiles;
  } else {
    result.summary.textGoodFraction = result.summary.edgeGoodFraction;
  }

  vkUnmapMemory(device, robustMem);
  return result;
}

inline float clamp01(float v) { return std::clamp(v, 0.0f, 1.0f); }

inline float computeFusionFrameWeight(const TileAlignment &alignment,
                                      float sharpnessRatio) {
  if (alignment.offsets.empty() || alignment.errorMap.empty())
    return 1.0f;

  std::vector<float> magnitudes;
  magnitudes.reserve(alignment.offsets.size());
  for (const auto &p : alignment.offsets) {
    magnitudes.push_back(std::sqrt(p.x * p.x + p.y * p.y));
  }

  ScalarStats magStats =
      computeScalarStats(magnitudes.data(), magnitudes.size());
  ScalarStats errStats = computeScalarStats(alignment.errorMap.data(),
                                           alignment.errorMap.size());

  float motionWeight = clamp01(1.0f - std::max(0.0f, magStats.p90 - 3.0f) / 3.0f);
  float errorWeight = clamp01(1.0f - std::max(0.0f, errStats.p90 - 14.0f) / 14.0f);
  float sharpnessWeight =
      clamp01(0.35f + 0.65f * std::min(std::max(sharpnessRatio, 0.0f), 1.0f));

  return motionWeight * errorWeight * sharpnessWeight;
}

inline float computeRobustnessFrameWeight(const FlowSummary &flow,
                                          const RobustnessSummary &robustness,
                                          const LocalReliabilitySummary &local) {
  float weakWeight =
      clamp01(1.0f - std::max(0.0f, robustness.weak05Fraction - 0.14f) / 0.22f);
  float weakTailWeight =
      clamp01(1.0f - std::max(0.0f, robustness.weak015Fraction - 0.02f) / 0.12f);
  float medianWeight = clamp01((robustness.values.p50 - 0.66f) / 0.10f);
  float refinedMotionWeight =
      clamp01(1.0f - std::max(0.0f, flow.magnitude.p90 - 3.4f) / 1.8f);
  float baseWeight = weakWeight * (0.55f + 0.45f * medianWeight) *
                     weakTailWeight * refinedMotionWeight;

  float edgeWeight = clamp01((local.edgeGoodFraction - 0.40f) / 0.40f);
  float textWeight = clamp01((local.textGoodFraction - 0.32f) / 0.38f);
  float localConsistency =
      clamp01((local.tileRobustness.p50 - 0.68f) / 0.10f);
  float localBoost =
      (0.72f + 0.18f * edgeWeight + 0.10f * textWeight) *
      (0.80f + 0.20f * localConsistency);
  float rescueFloor = 0.24f * (0.65f * edgeWeight + 0.35f * textWeight);

  return std::max(clamp01(baseWeight * localBoost), rescueFloor);
}

inline GreenPhaseSummary readGreenPhaseSummary(VkDevice device,
                                               VkDeviceMemory phase0Mem,
                                               VkDeviceMemory phase1Mem,
                                               uint32_t stride,
                                               uint32_t tileW,
                                               uint32_t tileH) {
  GreenPhaseSummary summary;
  if (tileW == 0 || tileH == 0)
    return summary;

  void *phase0Ptr = nullptr;
  void *phase1Ptr = nullptr;
  if (vkMapMemory(device, phase0Mem, 0, VK_WHOLE_SIZE, 0, &phase0Ptr) !=
          VK_SUCCESS ||
      vkMapMemory(device, phase1Mem, 0, VK_WHOLE_SIZE, 0, &phase1Ptr) !=
          VK_SUCCESS ||
      phase0Ptr == nullptr || phase1Ptr == nullptr) {
    if (phase0Ptr)
      vkUnmapMemory(device, phase0Mem);
    if (phase1Ptr)
      vkUnmapMemory(device, phase1Mem);
    return summary;
  }

  const uint32_t *phase0 = static_cast<const uint32_t *>(phase0Ptr);
  const uint32_t *phase1 = static_cast<const uint32_t *>(phase1Ptr);
  std::vector<float> mean0;
  std::vector<float> mean1;
  mean0.reserve((size_t)tileW * tileH);
  mean1.reserve((size_t)tileW * tileH);
  size_t dominant0 = 0;
  size_t dominant1 = 0;
  size_t conflict = 0;
  size_t active = 0;

  for (uint32_t y = 0; y < tileH; ++y) {
    for (uint32_t x = 0; x < tileW; ++x) {
      size_t idx = ((size_t)y * stride + x) * 2;
      float sum0 = (float)phase0[idx];
      float weight0 = (float)phase0[idx + 1];
      float sum1 = (float)phase1[idx];
      float weight1 = (float)phase1[idx + 1];
      float m0 = (weight0 > 0.0f) ? (sum0 / weight0 / 65535.0f) : 0.0f;
      float m1 = (weight1 > 0.0f) ? (sum1 / weight1 / 65535.0f) : 0.0f;
      mean0.push_back(m0);
      mean1.push_back(m1);
      if (weight0 > 0.0f || weight1 > 0.0f) {
        ++active;
        if (weight0 > weight1 * 1.25f)
          ++dominant0;
        else if (weight1 > weight0 * 1.25f)
          ++dominant1;
        if (weight0 > 0.0f && weight1 > 0.0f && std::abs(m0 - m1) > 0.03f)
          ++conflict;
      }
    }
  }

  summary.phase0Mean = computeScalarStats(mean0.data(), mean0.size());
  summary.phase1Mean = computeScalarStats(mean1.data(), mean1.size());
  if (active > 0) {
    summary.phase0DominantFraction = (float)dominant0 / (float)active;
    summary.phase1DominantFraction = (float)dominant1 / (float)active;
    summary.conflictFraction = (float)conflict / (float)active;
  }

  vkUnmapMemory(device, phase0Mem);
  vkUnmapMemory(device, phase1Mem);
  return summary;
}

} // namespace

GrayImage VulkanRawStacker::buildAlignmentProxy(const FrameData &frame) const {
  GrayImage proxy;
  proxy.width = (int)(width / 2);
  proxy.height = (int)(height / 2);
  proxy.data.resize((size_t)proxy.width * proxy.height);

  float blackAvg = 0.25f * (mBlackLevel[0] + mBlackLevel[1] + mBlackLevel[2] +
                            mBlackLevel[3]);
  float invRange = 255.0f / std::max(1.0f, mWhiteLevel - blackAvg);
  std::vector<float> linearProxy(proxy.data.size(), 0.0f);

  for (int py = 0; py < proxy.height; ++py) {
    for (int px = 0; px < proxy.width; ++px) {
      float green =
          fetchGreenProxySample(frame.rawData, width, height, frame.cfaPattern,
                                px, py);
      float normalized = std::max(0.0f, green - blackAvg) * invRange;
      linearProxy[(size_t)py * proxy.width + px] = normalized;
    }
  }

  // Mild local-contrast enhancement keeps fine text edges visible for
  // alignment, without changing the external output pipeline.
  for (int py = 0; py < proxy.height; ++py) {
    for (int px = 0; px < proxy.width; ++px) {
      float mean = 0.0f;
      int count = 0;
      for (int dy = -1; dy <= 1; ++dy) {
        for (int dx = -1; dx <= 1; ++dx) {
          int nx = std::max(0, std::min(px + dx, proxy.width - 1));
          int ny = std::max(0, std::min(py + dy, proxy.height - 1));
          mean += linearProxy[(size_t)ny * proxy.width + nx];
          ++count;
        }
      }
      mean /= (float)count;
      float center = linearProxy[(size_t)py * proxy.width + px];
      float boosted = center + 0.35f * (center - mean);
      proxy.data[(size_t)py * proxy.width + px] =
          (uint8_t)std::clamp(boosted, 0.0f, 255.0f);
    }
  }

  return proxy;
}

float VulkanRawStacker::calculateFrameScore(const FrameData &frame) const {
  GrayImage proxy = buildAlignmentProxy(frame);
  double score = 0.0;
  for (int y = 2; y < proxy.height - 2; y += 2) {
    for (int x = 2; x < proxy.width - 2; x += 2) {
      int idx = y * proxy.width + x;
      float c = (float)proxy.data[idx];
      float gx = std::abs(c - (float)proxy.data[idx + 1]);
      float gy = std::abs(c - (float)proxy.data[idx + proxy.width]);
      float lap = std::abs(4.0f * c - (float)proxy.data[idx - 1] -
                           (float)proxy.data[idx + 1] -
                           (float)proxy.data[idx - proxy.width] -
                           (float)proxy.data[idx + proxy.width]);
      score += gx + gy + 0.5 * lap;
    }
  }
  return (float)score;
}

void VulkanRawStacker::selectReferenceFrame() {
  for (auto &frame : pendingFrames) {
    if (frame.score == 0.0f) {
      frame.score = calculateFrameScore(frame);
    }
  }

  std::sort(
      pendingFrames.begin(), pendingFrames.end(),
      [](const FrameData &a, const FrameData &b) { return a.score > b.score; });

  if (!pendingFrames.empty()) {
    mCfaPattern = pendingFrames.front().cfaPattern;
  }
}

bool VulkanRawStacker::processStack(uint16_t *outBuffer, size_t bufferSize) {
  if (pendingFrames.empty())
    return false;

  // 1. Calculate scores and sort (Highest score first = Reference)
  TIME_START(scoreCalculation);
  selectReferenceFrame();
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
  uint32_t localTilesX = (inputW + 15) / 16;
  uint32_t localTilesY = (inputH + 15) / 16;
  std::vector<float> defaultLocalTileMask((size_t)localTilesX * localTilesY,
                                          1.0f);

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

  allocInfo.pSetLayouts = &greenScatterSetLayout;
  VK_CHECK(vkAllocateDescriptorSets(device, &allocInfo, &greenScatterSet));

  allocInfo.pSetLayouts = &colorScatterSetLayout;
  for (int c = 0; c < 2; ++c) {
    VK_CHECK(vkAllocateDescriptorSets(device, &allocInfo, &colorScatterSets[c]));
  }

  allocInfo.pSetLayouts = &greenNormalizeSetLayout;
  VK_CHECK(vkAllocateDescriptorSets(device, &allocInfo, &greenNormalizeSet));

  allocInfo.pSetLayouts = &colorNormalizeSetLayout;
  for (int c = 0; c < 2; ++c) {
    VK_CHECK(
        vkAllocateDescriptorSets(device, &allocInfo, &colorNormalizeSets[c]));
  }

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
    updateBufferDescriptorSet(device, accumSets[c], localTileMaskBuffer,
                              VK_WHOLE_SIZE, 6);
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
  updateBufferDescriptorSet(device, greenScatterSet, alignmentBuffer,
                            VK_WHOLE_SIZE, 1);
  updateBufferDescriptorSet(device, greenScatterSet, kernelBuffer,
                            VK_WHOLE_SIZE, 2);
  updateBufferDescriptorSet(device, greenScatterSet, robustnessBuffer,
                            VK_WHOLE_SIZE, 3);
  updateBufferDescriptorSet(device, greenScatterSet, greenPhaseAccumBuffers[0],
                            VK_WHOLE_SIZE, 4);
  updateBufferDescriptorSet(device, greenScatterSet, greenPhaseAccumBuffers[1],
                            VK_WHOLE_SIZE, 5);
  updateImageDescriptorSet(device, greenScatterSet, lscView, lscSampler, 6);
  updateBufferDescriptorSet(device, greenScatterSet, localTileMaskBuffer,
                            VK_WHOLE_SIZE, 7);
  for (int c = 0; c < 2; ++c) {
    updateBufferDescriptorSet(device, colorScatterSets[c], alignmentBuffer,
                              VK_WHOLE_SIZE, 1);
    updateBufferDescriptorSet(device, colorScatterSets[c], kernelBuffer,
                              VK_WHOLE_SIZE, 2);
    updateBufferDescriptorSet(device, colorScatterSets[c], robustnessBuffer,
                              VK_WHOLE_SIZE, 3);
    updateBufferDescriptorSet(device, colorScatterSets[c],
                              rbScatterAccumBuffers[c], VK_WHOLE_SIZE, 4);
    updateImageDescriptorSet(device, colorScatterSets[c], lscView, lscSampler,
                             5);
  }

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
      uploadedFrames[i].proxy = buildAlignmentProxy(frame);
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
  std::vector<float> frameFusionWeights(pendingFrames.size(), 1.0f);
  std::vector<float> frameRetentionScores(pendingFrames.size(), 1.0f);
  std::vector<bool> skipFusionFrame(pendingFrames.size(), false);
  std::vector<LocalReliabilitySummary> frameLocalSummaries(pendingFrames.size());
  std::vector<LocalReliabilityMap> frameLocalMaps(pendingFrames.size());
  const float referenceScore = std::max(pendingFrames.front().score, 1.0f);
  for (size_t i = 1; i < pendingFrames.size(); ++i) {
    frameAlignments[i].coarseAlign =
        computeTileAlignment(referencePyramid, uploadedFrames[i].pyramid, 64);
    logAlignmentDiagnostics("coarse", i, frameAlignments[i].coarseAlign);
    float sharpnessRatio = pendingFrames[i].score / referenceScore;
    float frameWeight = computeFusionFrameWeight(frameAlignments[i].coarseAlign,
                                                 sharpnessRatio);
    frameFusionWeights[i] = frameWeight;
    skipFusionFrame[i] = frameWeight < 0.12f;
  }
  TIME_END(phase3_CoarseAlignment);

  // =====================================================================
  // Phase 3B: Global reliability pre-pass using actual refined flow +
  // robustness. This lets us keep only the frames that genuinely help.
  // =====================================================================
  TIME_START(phase3b_GlobalReliability);
  for (size_t i = 1; i < pendingFrames.size(); ++i) {
    if (skipFusionFrame[i]) {
      continue;
    }

    PushConstants pc{};
    pc.width = outputW;
    pc.height = outputH;
    pc.planeWidth = inputW;
    pc.planeHeight = inputH;
    pc.sensorWidth = width;
    pc.sensorHeight = height;
    pc.scale = (float)scale;
    pc.cfaPattern = (uint32_t)pendingFrames[i].cfaPattern;
    memcpy(pc.blackLevel, mBlackLevel, 4 * sizeof(float));
    pc.whiteLevel = mWhiteLevel;
    memcpy(pc.wbGains, mWbGains, 4 * sizeof(float));
    pc.gridW = gridW;
    pc.gridH = gridH;
    pc.tileSize = (uint32_t)tileSize;
    pc.noiseAlpha = mNoiseModel[0] / 65535.0f;
    pc.noiseBeta = mNoiseModel[1] / (65535.0f * 65535.0f);
    pc.baseNoise = pc.noiseBeta;
    pc.frameWeight = frameFusionWeights[i];
    pc.tileX = 0;
    pc.tileY = 0;
    pc.tileW = inputW;
    pc.tileH = inputH;
    pc.bufferStride = tileW + 16;

    const auto &coarseAlign = frameAlignments[i].coarseAlign;
    void *mapPtr = nullptr;
    VkResult res =
        vkMapMemory(device, alignmentMemory, 0, VK_WHOLE_SIZE, 0, &mapPtr);
    if (res == VK_SUCCESS && mapPtr != nullptr) {
      Point *dstOffsets = (Point *)mapPtr;
      for (uint32_t gy = 0; gy < (uint32_t)gridH; ++gy) {
        for (uint32_t gx = 0; gx < (uint32_t)gridW; ++gx) {
          int cx = gx * tileSize + tileSize / 2;
          int cy = gy * tileSize + tileSize / 2;
          dstOffsets[gy * gridW + gx] = coarseAlign.getOffset(cx, cy);
        }
      }
      vkUnmapMemory(device, alignmentMemory);
    }

    VkCommandBuffer cb = vm.beginSingleTimeCommands();

    VkBufferMemoryBarrier hostBarrier{
        VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER};
    hostBarrier.srcAccessMask = VK_ACCESS_HOST_WRITE_BIT;
    hostBarrier.dstAccessMask =
        VK_ACCESS_SHADER_READ_BIT | VK_ACCESS_SHADER_WRITE_BIT;
    hostBarrier.buffer = alignmentBuffer;
    hostBarrier.size = VK_WHOLE_SIZE;
    vkCmdPipelineBarrier(cb, VK_PIPELINE_STAGE_HOST_BIT,
                         VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT, 0, 0, nullptr,
                         1, &hostBarrier, 0, nullptr);

    vkCmdBindPipeline(cb, VK_PIPELINE_BIND_POINT_COMPUTE, alignLkPipeline);
    updateImageDescriptorSet(device, alignSet, uploadedFrames[0].view, sampler,
                             0);
    updateImageDescriptorSet(device, alignSet, uploadedFrames[i].view, sampler,
                             1);
    vkCmdBindDescriptorSets(cb, VK_PIPELINE_BIND_POINT_COMPUTE,
                            alignLkPipelineLayout, 0, 1, &alignSet, 0,
                            nullptr);
    vkCmdPushConstants(cb, alignLkPipelineLayout, VK_SHADER_STAGE_COMPUTE_BIT,
                       0, sizeof(pc), &pc);

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
                           VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT, 0, 0, nullptr,
                           1, &lkBarrier, 0, nullptr);
    }

    vkCmdBindPipeline(cb, VK_PIPELINE_BIND_POINT_COMPUTE, robustnessPipeline);
    updateImageDescriptorSet(device, robustSet, uploadedFrames[0].view, sampler,
                             0);
    updateImageDescriptorSet(device, robustSet, uploadedFrames[i].view, sampler,
                             1);
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
                         VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT, 0, 0, nullptr, 1,
                         &rbBarrier, 0, nullptr);

    vm.endSingleTimeCommands(cb);

    FlowSummary refinedFlow =
        readFlowSummary(device, alignmentMemory, gridW, gridH);
    RobustnessSummary robustSummary =
        readRobustnessSummary(device, robustnessMemory, inputW, inputH);
    LocalReliabilityMap localMap =
        readLocalReliabilityMap(device, robustnessMemory, inputW, inputH,
                                uploadedFrames[0].proxy);
    LocalReliabilitySummary localSummary = localMap.summary;
    frameLocalMaps[i] = std::move(localMap);
    frameLocalSummaries[i] = localSummary;
    float robustWeight =
        computeRobustnessFrameWeight(refinedFlow, robustSummary, localSummary);
    frameFusionWeights[i] *= robustWeight;
    float localPriority =
        0.55f * localSummary.edgeGoodFraction + 0.45f * localSummary.textGoodFraction;
    float retentionScore = frameFusionWeights[i] *
                           (0.85f + 0.30f * localPriority);
    frameRetentionScores[i] = retentionScore;
    float keepThreshold = (localPriority > 0.58f) ? 0.16f : 0.20f;
    skipFusionFrame[i] = frameFusionWeights[i] < keepThreshold;

  }

  if (pendingFrames.size() > 2) {
    std::vector<std::pair<float, size_t>> rankedFrames;
    rankedFrames.reserve(pendingFrames.size() - 1);
    for (size_t i = 1; i < pendingFrames.size(); ++i) {
      if (!skipFusionFrame[i]) {
        rankedFrames.push_back({frameRetentionScores[i], i});
      }
    }
    std::sort(rankedFrames.begin(), rankedFrames.end(),
              [](const auto &a, const auto &b) { return a.first > b.first; });

    const size_t baseMaxExtraFrames = 6;
    size_t edgeReserve = 0;
    for (size_t i = 1; i < pendingFrames.size(); ++i) {
      if (!skipFusionFrame[i] && frameLocalSummaries[i].textGoodFraction > 0.72f &&
          frameFusionWeights[i] > 0.14f) {
        ++edgeReserve;
      }
    }
    edgeReserve = std::min<size_t>(edgeReserve, 2);
    const size_t maxExtraFrames = baseMaxExtraFrames + edgeReserve;
    for (size_t rank = maxExtraFrames; rank < rankedFrames.size(); ++rank) {
      size_t frameIndex = rankedFrames[rank].second;
      const LocalReliabilitySummary &local = frameLocalSummaries[frameIndex];
      bool preserveForText =
          local.textGoodFraction > 0.80f && frameFusionWeights[frameIndex] > 0.16f;
      if (preserveForText) {
        continue;
      }
      skipFusionFrame[frameIndex] = true;
    }
  }
  TIME_END(phase3b_GlobalReliability);

  // Phase 4: Sequential tile processing
  // For each tile: clear accum → accumulate all frames → normalize
  // =====================================================================
  TIME_START(phase4_TileProcessing);
  VkDeviceSize accumBufferSize =
      (VkDeviceSize)(tileW + 16) * (tileH + 16) * sizeof(float) * 2;
  VkDeviceSize greenAccumBufferSize =
      (VkDeviceSize)(tileW + 16) * (tileH + 16) * sizeof(uint32_t) * 2;

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
        for (int phase = 0; phase < 2; ++phase) {
          vkCmdFillBuffer(cb, greenPhaseAccumBuffers[phase], 0,
                          greenAccumBufferSize, 0);
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

        if (!isRef && skipFusionFrame[i]) {
          continue;
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
        pc.noiseAlpha = mNoiseModel[0] / 65535.0f;
        pc.noiseBeta = mNoiseModel[1] / (65535.0f * 65535.0f);
        pc.baseNoise = pc.noiseBeta;
        pc.frameWeight = isRef ? 1.0f : frameFusionWeights[i];

        const std::vector<float> &localTileMask =
            (!isRef && !frameLocalMaps[i].tileWeights.empty())
                ? frameLocalMaps[i].tileWeights
                : defaultLocalTileMask;
        void *localMaskPtr = nullptr;
        VkResult localMaskRes =
            vkMapMemory(device, localTileMaskMemory, 0, VK_WHOLE_SIZE, 0,
                        &localMaskPtr);
        if (localMaskRes == VK_SUCCESS && localMaskPtr != nullptr) {
          std::memcpy(localMaskPtr, localTileMask.data(),
                      localTileMask.size() * sizeof(float));
          vkUnmapMemory(device, localTileMaskMemory);
        }

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
          VkBufferMemoryBarrier localMaskBarrier{
              VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER};
          localMaskBarrier.srcAccessMask = VK_ACCESS_HOST_WRITE_BIT;
          localMaskBarrier.dstAccessMask = VK_ACCESS_SHADER_READ_BIT;
          localMaskBarrier.buffer = localTileMaskBuffer;
          localMaskBarrier.size = VK_WHOLE_SIZE;
          vkCmdPipelineBarrier(cb, VK_PIPELINE_STAGE_HOST_BIT,
                               VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT, 0, 0,
                               nullptr, 1, &localMaskBarrier, 0, nullptr);

          vkCmdBindPipeline(cb, VK_PIPELINE_BIND_POINT_COMPUTE,
                            accumulatePipeline);
          for (int c = 0; c < 3; c += 2) {
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

          updateImageDescriptorSet(device, greenScatterSet,
                                   uploadedFrames[i].view, sampler, 0);
          vkCmdBindPipeline(cb, VK_PIPELINE_BIND_POINT_COMPUTE,
                            greenScatterPipeline);
          vkCmdBindDescriptorSets(cb, VK_PIPELINE_BIND_POINT_COMPUTE,
                                  greenScatterPipelineLayout, 0, 1,
                                  &greenScatterSet, 0, nullptr);

          pc.isFirstFrame = isRef ? 1 : 0;
          pc.outputChannel = 1;
          pc.bufferStride = tileW + 16;
          pc.tileX = tx * tileW;
          pc.tileY = ty * tileH;
          pc.tileW = currentTileW;
          pc.tileH = currentTileH;

          vkCmdPushConstants(cb, greenScatterPipelineLayout,
                             VK_SHADER_STAGE_COMPUTE_BIT, 0, sizeof(pc), &pc);
          vkCmdDispatch(cb, (width + 15) / 16, (height + 15) / 16, 1);

          VkBufferMemoryBarrier greenBarriers[2]{};
          for (int phase = 0; phase < 2; ++phase) {
            greenBarriers[phase].sType =
                VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER;
            greenBarriers[phase].srcAccessMask = VK_ACCESS_SHADER_WRITE_BIT;
            greenBarriers[phase].dstAccessMask = VK_ACCESS_SHADER_READ_BIT;
            greenBarriers[phase].buffer = greenPhaseAccumBuffers[phase];
            greenBarriers[phase].size = VK_WHOLE_SIZE;
          }
          vkCmdPipelineBarrier(cb, VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT,
                               VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT, 0, 0,
                               nullptr, 2, greenBarriers, 0, nullptr);

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

        for (int c = 0; c < 3; c += 2) {
          updateBufferDescriptorSet(device, normalizeSets[c], stagingBuffer,
                                    rowBandRange, 0, rowBandOffset);
          updateBufferDescriptorSet(device, normalizeSets[c], accumBuffers[c],
                                    VK_WHOLE_SIZE, 1);
          vkCmdBindPipeline(cb, VK_PIPELINE_BIND_POINT_COMPUTE,
                            normalizePipeline);
          vkCmdBindDescriptorSets(cb, VK_PIPELINE_BIND_POINT_COMPUTE,
                                  normalizePipelineLayout, 0, 1,
                                  &normalizeSets[c], 0, nullptr);

          PushConstants pc{};
          pc.width = outputW;
          pc.height = outputH - ty * tileH;
          pc.planeWidth = outputW;
          pc.planeHeight = outputH;
          pc.bufferStride = tileW + 16;
          pc.tileX = tx * tileW;
          pc.tileY = 0;
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

        VkMemoryBarrier rgbReadyBarrier{VK_STRUCTURE_TYPE_MEMORY_BARRIER};
        rgbReadyBarrier.srcAccessMask = VK_ACCESS_SHADER_WRITE_BIT;
        rgbReadyBarrier.dstAccessMask =
            VK_ACCESS_SHADER_READ_BIT | VK_ACCESS_SHADER_WRITE_BIT;
        vkCmdPipelineBarrier(cb, VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT,
                             VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT, 0, 1,
                             &rgbReadyBarrier, 0, nullptr, 0, nullptr);

        updateBufferDescriptorSet(device, greenNormalizeSet, stagingBuffer,
                                  rowBandRange, 0, rowBandOffset);
        updateBufferDescriptorSet(device, greenNormalizeSet,
                                  greenPhaseAccumBuffers[0], VK_WHOLE_SIZE, 1);
        updateBufferDescriptorSet(device, greenNormalizeSet,
                                  greenPhaseAccumBuffers[1], VK_WHOLE_SIZE, 2);
        vkCmdBindPipeline(cb, VK_PIPELINE_BIND_POINT_COMPUTE,
                          greenNormalizePipeline);
        vkCmdBindDescriptorSets(cb, VK_PIPELINE_BIND_POINT_COMPUTE,
                                greenNormalizePipelineLayout, 0, 1,
                                &greenNormalizeSet, 0, nullptr);

        PushConstants greenPc{};
        greenPc.width = outputW;
        greenPc.height = outputH - ty * tileH;
        greenPc.planeWidth = outputW;
        greenPc.planeHeight = outputH;
        greenPc.bufferStride = tileW + 16;
        greenPc.tileX = tx * tileW;
        greenPc.tileY = 0;
        greenPc.tileW = currentTileW;
        greenPc.tileH = currentTileH;
        greenPc.planeIndex = 1;
        greenPc.cfaPattern = (uint32_t)mCfaPattern;
        greenPc.whiteLevel = mWhiteLevel;
        memcpy(greenPc.blackLevel, mBlackLevel, 4 * sizeof(float));
        memcpy(greenPc.wbGains, mWbGains, 4 * sizeof(float));

        vkCmdPushConstants(cb, greenNormalizePipelineLayout,
                           VK_SHADER_STAGE_COMPUTE_BIT, 0, sizeof(greenPc),
                           &greenPc);
        vkCmdDispatch(cb, (currentTileW + 15) / 16,
                      (currentTileH + 15) / 16, 1);

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

  if (greenScatterSetLayout)
    vkDestroyDescriptorSetLayout(device, greenScatterSetLayout, nullptr);
  if (greenScatterPipelineLayout)
    vkDestroyPipelineLayout(device, greenScatterPipelineLayout, nullptr);
  if (greenScatterPipeline)
    vkDestroyPipeline(device, greenScatterPipeline, nullptr);

  if (colorScatterSetLayout)
    vkDestroyDescriptorSetLayout(device, colorScatterSetLayout, nullptr);
  if (colorScatterPipelineLayout)
    vkDestroyPipelineLayout(device, colorScatterPipelineLayout, nullptr);
  if (colorScatterPipeline)
    vkDestroyPipeline(device, colorScatterPipeline, nullptr);

  if (greenNormalizeSetLayout)
    vkDestroyDescriptorSetLayout(device, greenNormalizeSetLayout, nullptr);
  if (greenNormalizePipelineLayout)
    vkDestroyPipelineLayout(device, greenNormalizePipelineLayout, nullptr);
  if (greenNormalizePipeline)
    vkDestroyPipeline(device, greenNormalizePipeline, nullptr);

  if (colorNormalizeSetLayout)
    vkDestroyDescriptorSetLayout(device, colorNormalizeSetLayout, nullptr);
  if (colorNormalizePipelineLayout)
    vkDestroyPipelineLayout(device, colorNormalizePipelineLayout, nullptr);
  if (colorNormalizePipeline)
    vkDestroyPipeline(device, colorNormalizePipeline, nullptr);

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
  if (localTileMaskBuffer)
    vkDestroyBuffer(device, localTileMaskBuffer, nullptr);
  if (localTileMaskMemory)
    vkFreeMemory(device, localTileMaskMemory, nullptr);

  for (int phase = 0; phase < 2; ++phase) {
    if (greenPhaseAccumBuffers[phase])
      vkDestroyBuffer(device, greenPhaseAccumBuffers[phase], nullptr);
    if (greenPhaseAccumMemories[phase])
      vkFreeMemory(device, greenPhaseAccumMemories[phase], nullptr);
  }
  for (int c = 0; c < 2; ++c) {
    if (rbScatterAccumBuffers[c])
      vkDestroyBuffer(device, rbScatterAccumBuffers[c], nullptr);
    if (rbScatterAccumMemories[c])
      vkFreeMemory(device, rbScatterAccumMemories[c], nullptr);
  }

  if (lscView)
    vkDestroyImageView(device, lscView, nullptr);
  if (lscImage)
    vkDestroyImage(device, lscImage, nullptr);
  if (lscMemory)
    vkFreeMemory(device, lscMemory, nullptr);
  if (lscSampler)
    vkDestroySampler(device, lscSampler, nullptr);
}
