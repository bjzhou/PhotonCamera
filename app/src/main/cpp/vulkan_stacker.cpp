#include "vulkan_stacker.h"
#include "accumulate.comp.h"
#include "common.h"
#include "normalize.comp.h"
#include "structure_tensor.comp.h"
#include "yuv_to_rgba.comp.h"
#include <android/log.h>
#include <algorithm>
#include <cmath>
#include <sys/resource.h>
#include <unistd.h>
#include <vector>

#define VK_CHECK(x)                                                            \
  do {                                                                         \
    VkResult err = x;                                                          \
    if (err) {                                                                 \
      LOGE("Detected Vulkan error: %d at %s:%d", err, __FILE__, __LINE__);     \
    }                                                                          \
  } while (0)

namespace {

struct ScalarStats {
  float minValue = 0.0f;
  float maxValue = 0.0f;
  float p50 = 0.0f;
  float p90 = 0.0f;
};

struct LocalReliabilityMap {
  std::vector<float> tileWeights;
  float flatGoodFraction = 0.0f;
  float flatAreaFraction = 0.0f;
  float detailAreaFraction = 0.0f;
};

inline float clamp01(float v) { return std::clamp(v, 0.0f, 1.0f); }

inline float smoothstepf(float edge0, float edge1, float x) {
  float width = std::max(edge1 - edge0, 1e-6f);
  float t = clamp01((x - edge0) / width);
  return t * t * (3.0f - 2.0f * t);
}

inline ScalarStats computeScalarStats(const std::vector<float> &values) {
  ScalarStats stats;
  if (values.empty())
    return stats;
  std::vector<float> sorted = values;
  std::sort(sorted.begin(), sorted.end());
  auto percentile = [&](float q) -> float {
    size_t idx =
        std::min(sorted.size() - 1, (size_t)std::floor(q * (sorted.size() - 1)));
    return sorted[idx];
  };
  stats.minValue = sorted.front();
  stats.maxValue = sorted.back();
  stats.p50 = percentile(0.50f);
  stats.p90 = percentile(0.90f);
  return stats;
}

LocalReliabilityMap buildLocalReliabilityMap(const GrayImage &reference,
                                             const std::vector<float> &errorMap,
                                             uint32_t gridW, uint32_t gridH) {
  LocalReliabilityMap result;
  if (reference.data.empty() || errorMap.empty() || gridW == 0 || gridH == 0)
    return result;

  result.tileWeights.resize((size_t)gridW * gridH, 1.0f);
  std::vector<float> detailScores;
  detailScores.reserve((size_t)gridW * gridH);
  uint32_t tileW = (reference.width + gridW - 1) / gridW;
  uint32_t tileH = (reference.height + gridH - 1) / gridH;

  for (uint32_t gy = 0; gy < gridH; ++gy) {
    for (uint32_t gx = 0; gx < gridW; ++gx) {
      uint32_t x0 = gx * tileW;
      uint32_t y0 = gy * tileH;
      uint32_t x1 = std::min<uint32_t>(x0 + tileW, reference.width);
      uint32_t y1 = std::min<uint32_t>(y0 + tileH, reference.height);
      double detailSum = 0.0;
      size_t count = 0;
      for (uint32_t y = y0; y < y1; ++y) {
        for (uint32_t x = x0; x < x1; ++x) {
          size_t idx = (size_t)y * reference.width + x;
          float center = (float)reference.data[idx];
          float xp = (float)reference
                         .data[(size_t)y * reference.width +
                               std::min<uint32_t>(x + 1, reference.width - 1)];
          float xm = (float)reference
                         .data[(size_t)y * reference.width + (x > 0 ? x - 1 : 0)];
          float yp = (float)reference.data[(size_t)std::min<uint32_t>(
                                               y + 1, reference.height - 1) *
                                               reference.width +
                                           x];
          float ym = (float)reference
                         .data[(size_t)(y > 0 ? y - 1 : 0) * reference.width + x];
          detailSum += std::abs(xp - xm) + std::abs(yp - ym) +
                       0.5 * std::abs(4.0f * center - xp - xm - yp - ym);
          ++count;
        }
      }
      float detail = (count > 0) ? (float)(detailSum / (double)count) : 0.0f;
      detailScores.push_back(detail);
    }
  }

  ScalarStats detailStats = computeScalarStats(detailScores);
  float flatThreshold = detailStats.minValue +
                        (detailStats.p50 - detailStats.minValue) * 0.70f;
  float detailThreshold = std::max(
      detailStats.p50, detailStats.minValue +
                           (detailStats.p90 - detailStats.minValue) * 0.55f);
  size_t flatCount = 0;
  size_t flatGood = 0;
  size_t detailCount = 0;

  for (size_t idx = 0; idx < errorMap.size() && idx < detailScores.size(); ++idx) {
    float detail = detailScores[idx];
    float err = errorMap[idx];
    float errRms = std::sqrt(std::max(err, 0.0f));
    float detailPenalty = smoothstepf(flatThreshold, detailThreshold, detail);
    float flatness = 1.0f - detailPenalty;
    float errorWeight = clamp01(1.0f - std::max(0.0f, errRms - 2.0f) / 4.5f);
    float tileWeight =
        clamp01(errorWeight * (0.18f + 0.82f * flatness * flatness));

    if (detailPenalty > 0.60f) {
      ++detailCount;
    } else if (detailPenalty > 0.30f) {
      tileWeight *= 0.72f;
    } else {
      ++flatCount;
      if (errRms < 4.0f)
        ++flatGood;
    }

    if (errRms > 5.5f) {
      tileWeight *= 0.60f;
    }

    if (detailPenalty > 0.78f && errRms > 7.5f) {
      tileWeight = 0.0f;
    }

    result.tileWeights[idx] = clamp01(tileWeight);
  }

  float tileCount = static_cast<float>(detailScores.size());
  result.flatGoodFraction =
      (flatCount > 0) ? (float)flatGood / (float)flatCount : 0.0f;
  result.flatAreaFraction = (tileCount > 0.0f) ? (float)flatCount / tileCount : 0.0f;
  result.detailAreaFraction =
      (tileCount > 0.0f) ? (float)detailCount / tileCount : 0.0f;
  return result;
}

float computeFrameFusionWeight(const std::vector<float> &errorMap,
                               float sharpnessRatio,
                               const LocalReliabilityMap &localMap) {
  if (errorMap.empty())
    return clamp01(0.70f + 0.25f * sharpnessRatio);

  ScalarStats errStats = computeScalarStats(errorMap);
  float errP90Rms = std::sqrt(std::max(errStats.p90, 0.0f));
  float errorWeight =
      clamp01(1.0f - std::max(0.0f, errP90Rms - 2.5f) / 5.0f);
  float sharpnessGuard = clamp01(0.88f + 0.12f * sharpnessRatio);
  float flatCoverage = clamp01(0.35f + 0.65f * localMap.flatAreaFraction);
  float flatReliability = clamp01(0.40f + 0.60f * localMap.flatGoodFraction);
  float detailPenalty = clamp01(1.0f - 0.35f * localMap.detailAreaFraction);
  float baseWeight =
      0.42f + 0.40f * errorWeight * flatCoverage * flatReliability * detailPenalty;
  return clamp01(baseWeight * sharpnessGuard);
}

} // namespace

VulkanImageStacker::VulkanImageStacker(uint32_t w, uint32_t h, bool sr)
    : width(w), height(h), enableSuperRes(sr) {

  if (enableSuperRes) {
    numTilesX = 2;
    numTilesY = 2;
  } else {
    numTilesX = 1;
    numTilesY = 1;
  }

  VulkanManager::getInstance().init();
  initVulkanResources();
}

VulkanImageStacker::~VulkanImageStacker() {
  for (auto &frame : pendingFrames) {
    AHardwareBuffer_release(frame.buffer);
  }
  pendingFrames.clear();
  releaseVulkanResources();
}

void VulkanImageStacker::initVulkanResources() {
  VulkanManager &vm = VulkanManager::getInstance();
  VkDevice device = vm.getDevice();

  // Create Accumulator Tiles
  uint32_t scale = enableSuperRes ? 2 : 1;
  uint32_t fullW = width * scale;
  uint32_t fullH = height * scale;

  // Each tile is roughly fullW / numTilesX ...
  uint32_t tileW = (fullW + numTilesX - 1) / numTilesX;
  uint32_t tileH = (fullH + numTilesY - 1) / numTilesY;

  // Pad tile size slightly for safety
  VkDeviceSize accumBufferSize =
      (VkDeviceSize)(tileW + 16) * (tileH + 16) * sizeof(float) * 4;

  int numTiles = numTilesX * numTilesY;
  LOGI("initVulkanResources: Tiles: %d (%dx%d)", numTiles, numTilesX,
       numTilesY);

  accumBuffers.resize(numTiles);
  accumMemories.resize(numTiles);
  accumSets.resize(numTiles);
  normalizeSets.resize(numTiles);

  for (int i = 0; i < numTiles; ++i) {
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

  // Initialize Alignment Grid Buffer early
  gridW = (width + 31) / 32;
  gridH = (height + 31) / 32;
  VkDeviceSize alignBufferSize = gridW * gridH * sizeof(Point);
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

  // Initial Clear for Alignment Buffer
  void *ptr;
  vkMapMemory(device, alignmentMemory, 0, alignBufferSize, 0, &ptr);
  memset(ptr, 0, (size_t)alignBufferSize);
  vkUnmapMemory(device, alignmentMemory);

  // Staging Buffer
  VkDeviceSize stagingSize = (VkDeviceSize)fullW * fullH * 4;
  VkBufferCreateInfo stagingInfo{};
  stagingInfo.sType = VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO;
  stagingInfo.size = stagingSize;
  stagingInfo.usage =
      VK_BUFFER_USAGE_STORAGE_BUFFER_BIT | VK_BUFFER_USAGE_TRANSFER_DST_BIT;
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
  VkDescriptorPoolSize poolSizes[3] = {};
  poolSizes[0].type = VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER;
  poolSizes[0].descriptorCount = (uint32_t)numTiles * 64;
  poolSizes[1].type = VK_DESCRIPTOR_TYPE_STORAGE_BUFFER;
  poolSizes[1].descriptorCount = (uint32_t)numTiles * 64;
  poolSizes[2].type = VK_DESCRIPTOR_TYPE_STORAGE_IMAGE;
  poolSizes[2].descriptorCount = (uint32_t)numTiles * 64;

  VkDescriptorPoolCreateInfo poolInfo{};
  poolInfo.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO;
  poolInfo.flags = VK_DESCRIPTOR_POOL_CREATE_FREE_DESCRIPTOR_SET_BIT;
  poolInfo.maxSets = (uint32_t)numTiles * 64;
  poolInfo.poolSizeCount = 3;
  poolInfo.pPoolSizes = poolSizes;
  VK_CHECK(vkCreateDescriptorPool(device, &poolInfo, nullptr, &descriptorPool));

  // Initial Clear
  VkCommandBuffer cb = vm.beginSingleTimeCommands();
  for (int i = 0; i < numTiles; ++i) {
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
  vm.endSingleTimeCommands(cb);

  // Phase 2: Kernel Params Buffer (Native Resolution - much safer for VRAM)
  VkDeviceSize kpSize =
      (VkDeviceSize)width * height * sizeof(float) * 4; // vec4

  VkBufferCreateInfo kpInfo{};
  kpInfo.sType = VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO;
  kpInfo.size = kpSize;
  kpInfo.usage = VK_BUFFER_USAGE_STORAGE_BUFFER_BIT;
  kpInfo.sharingMode = VK_SHARING_MODE_EXCLUSIVE;
  VK_CHECK(vkCreateBuffer(device, &kpInfo, nullptr, &kernelParamsBuffer));

  VkMemoryRequirements kpReqs;
  vkGetBufferMemoryRequirements(device, kernelParamsBuffer, &kpReqs);

  VkMemoryAllocateInfo kpAlloc{};
  kpAlloc.sType = VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO;
  kpAlloc.allocationSize = kpReqs.size;
  kpAlloc.memoryTypeIndex = vm.findMemoryType(
      kpReqs.memoryTypeBits, VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT);
  VK_CHECK(vkAllocateMemory(device, &kpAlloc, nullptr, &kernelParamsMemory));
  vkBindBufferMemory(device, kernelParamsBuffer, kernelParamsMemory, 0);

  // Allocate Descriptor Sets for Structure Tensor (One per tile? No, global
  // pass or tile based?) For simplicity, let's make Structure Tensor a global
  // pass or tile based. The shader uses inputSampler and kernelParams. Let's
  // use 1 descriptor set for the whole image if possible, or per tile. Since we
  // run ST on full image (or tiles), let's allocate 'numTiles' sets for it too
  // to be consistent with dispatch pattern.
  tensorSets.resize(numTiles);

  // Phase 3: Motion Prior Buffer (Grid resolution, float)
  // Grid size: max (width+31)/32 * (height+31)/32
  // We reuse the 'gridW * gridH' logic, but max possible grid size is
  // alignedW/32 * alignedH/32
  VkDeviceSize mpSize = (VkDeviceSize)gridW * gridH * sizeof(float);

  VkBufferCreateInfo mpInfo{};
  mpInfo.sType = VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO;
  mpInfo.size = mpSize;
  mpInfo.usage = VK_BUFFER_USAGE_STORAGE_BUFFER_BIT;
  mpInfo.sharingMode = VK_SHARING_MODE_EXCLUSIVE;
  VK_CHECK(vkCreateBuffer(device, &mpInfo, nullptr, &motionPriorBuffer));

  VkMemoryRequirements mpReqs;
  vkGetBufferMemoryRequirements(device, motionPriorBuffer, &mpReqs);

  VkMemoryAllocateInfo mpAlloc{};
  mpAlloc.sType = VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO;
  mpAlloc.allocationSize = mpReqs.size;
  mpAlloc.memoryTypeIndex = vm.findMemoryType(
      mpReqs.memoryTypeBits, VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT |
                                 VK_MEMORY_PROPERTY_HOST_COHERENT_BIT);
  VK_CHECK(vkAllocateMemory(device, &mpAlloc, nullptr, &motionPriorMemory));
  vkBindBufferMemory(device, motionPriorBuffer, motionPriorMemory, 0);

  VkBufferCreateInfo lmInfo{};
  lmInfo.sType = VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO;
  lmInfo.size = mpSize;
  lmInfo.usage = VK_BUFFER_USAGE_STORAGE_BUFFER_BIT;
  lmInfo.sharingMode = VK_SHARING_MODE_EXCLUSIVE;
  VK_CHECK(vkCreateBuffer(device, &lmInfo, nullptr, &localTileMaskBuffer));

  VkMemoryRequirements lmReqs;
  vkGetBufferMemoryRequirements(device, localTileMaskBuffer, &lmReqs);

  VkMemoryAllocateInfo lmAlloc{};
  lmAlloc.sType = VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO;
  lmAlloc.allocationSize = lmReqs.size;
  lmAlloc.memoryTypeIndex = vm.findMemoryType(
      lmReqs.memoryTypeBits, VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT |
                                 VK_MEMORY_PROPERTY_HOST_COHERENT_BIT);
  VK_CHECK(vkAllocateMemory(device, &lmAlloc, nullptr, &localTileMaskMemory));
  vkBindBufferMemory(device, localTileMaskBuffer, localTileMaskMemory, 0);

  // Initialize RGB Intermediate Image
  rgbFrame.width = width;
  rgbFrame.height = height;
  rgbFrame.format = VK_FORMAT_R16G16B16A16_SFLOAT;

  VkImageCreateInfo imageInfo{};
  imageInfo.sType = VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO;
  imageInfo.imageType = VK_IMAGE_TYPE_2D;
  imageInfo.format = rgbFrame.format;
  imageInfo.extent = {width, height, 1};
  imageInfo.mipLevels = 1;
  imageInfo.arrayLayers = 1;
  imageInfo.samples = VK_SAMPLE_COUNT_1_BIT;
  imageInfo.tiling = VK_IMAGE_TILING_OPTIMAL;
  imageInfo.usage = VK_IMAGE_USAGE_STORAGE_BIT | VK_IMAGE_USAGE_SAMPLED_BIT;
  imageInfo.sharingMode = VK_SHARING_MODE_EXCLUSIVE;
  imageInfo.initialLayout = VK_IMAGE_LAYOUT_UNDEFINED;

  VK_CHECK(vkCreateImage(device, &imageInfo, nullptr, &rgbFrame.image));

  VkMemoryRequirements memReqs;
  vkGetImageMemoryRequirements(device, rgbFrame.image, &memReqs);

  VkMemoryAllocateInfo allocInfo{};
  allocInfo.sType = VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO;
  allocInfo.allocationSize = memReqs.size;
  allocInfo.memoryTypeIndex = vm.findMemoryType(
      memReqs.memoryTypeBits, VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT);

  VK_CHECK(vkAllocateMemory(device, &allocInfo, nullptr, &rgbFrame.memory));
  vkBindImageMemory(device, rgbFrame.image, rgbFrame.memory, 0);

  VkImageViewCreateInfo viewInfo{};
  viewInfo.sType = VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO;
  viewInfo.image = rgbFrame.image;
  viewInfo.viewType = VK_IMAGE_VIEW_TYPE_2D;
  viewInfo.format = rgbFrame.format;
  viewInfo.subresourceRange.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
  viewInfo.subresourceRange.baseMipLevel = 0;
  viewInfo.subresourceRange.levelCount = 1;
  viewInfo.subresourceRange.baseArrayLayer = 0;
  viewInfo.subresourceRange.layerCount = 1;

  VK_CHECK(vkCreateImageView(device, &viewInfo, nullptr, &rgbFrame.viewY));

  VkSamplerCreateInfo samplerInfo{};
  samplerInfo.sType = VK_STRUCTURE_TYPE_SAMPLER_CREATE_INFO;
  samplerInfo.magFilter = VK_FILTER_LINEAR;
  samplerInfo.minFilter = VK_FILTER_LINEAR;
  samplerInfo.mipmapMode = VK_SAMPLER_MIPMAP_MODE_NEAREST;
  samplerInfo.addressModeU = VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE;
  samplerInfo.addressModeV = VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE;
  samplerInfo.addressModeW = VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE;

  VK_CHECK(vkCreateSampler(device, &samplerInfo, nullptr, &rgbFrame.sampler));
}

void VulkanImageStacker::createPipelines(VkSampler sampler) {
  VulkanManager &vm = VulkanManager::getInstance();
  VkDevice device = vm.getDevice();

  // 1. Descriptor Set Layout with Immutable Sampler
  VkSampler samplers[1] = {sampler};
  VkDescriptorSetLayoutBinding bindings[4] = {}; // Increased to 4
  bindings[0].binding = 0;
  bindings[0].descriptorType = VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER;
  bindings[0].descriptorCount = 1;
  bindings[0].stageFlags = VK_SHADER_STAGE_COMPUTE_BIT;
  bindings[0].pImmutableSamplers =
      nullptr; // Regular RGB image, no immutable sampler needed

  bindings[1].binding = 1;
  bindings[1].descriptorType = VK_DESCRIPTOR_TYPE_STORAGE_BUFFER;
  bindings[1].descriptorCount = 1;
  bindings[1].stageFlags = VK_SHADER_STAGE_COMPUTE_BIT;

  bindings[2].binding = 2;
  bindings[2].descriptorType = VK_DESCRIPTOR_TYPE_STORAGE_BUFFER;
  bindings[2].descriptorCount = 1;
  bindings[2].stageFlags = VK_SHADER_STAGE_COMPUTE_BIT;

  bindings[3].binding = 3; // KernelParams (Read Only)
  bindings[3].descriptorType = VK_DESCRIPTOR_TYPE_STORAGE_BUFFER;
  bindings[3].descriptorCount = 1;
  bindings[3].stageFlags = VK_SHADER_STAGE_COMPUTE_BIT;

  VkDescriptorSetLayoutBinding motionPriorBinding{};
  motionPriorBinding.binding = 4; // Motion Prior
  motionPriorBinding.descriptorType = VK_DESCRIPTOR_TYPE_STORAGE_BUFFER;
  motionPriorBinding.descriptorCount = 1;
  motionPriorBinding.stageFlags = VK_SHADER_STAGE_COMPUTE_BIT;

  VkDescriptorSetLayoutBinding localMaskBinding{};
  localMaskBinding.binding = 5;
  localMaskBinding.descriptorType = VK_DESCRIPTOR_TYPE_STORAGE_BUFFER;
  localMaskBinding.descriptorCount = 1;
  localMaskBinding.stageFlags = VK_SHADER_STAGE_COMPUTE_BIT;

  VkDescriptorSetLayoutBinding bindingsFinal[6];
  bindingsFinal[0] = bindings[0];
  bindingsFinal[1] = bindings[1];
  bindingsFinal[2] = bindings[2];
  bindingsFinal[3] = bindings[3];
  bindingsFinal[4] = motionPriorBinding;
  bindingsFinal[5] = localMaskBinding;

  VkDescriptorSetLayoutCreateInfo layoutInfo{};
  layoutInfo.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO;
  layoutInfo.bindingCount = 6;
  layoutInfo.pBindings = bindingsFinal;
  vkCreateDescriptorSetLayout(device, &layoutInfo, nullptr,
                              &descriptorSetLayout);

  // 2. Pipeline Layout with Push Constants
  VkPushConstantRange pushConstantRange{};
  pushConstantRange.stageFlags = VK_SHADER_STAGE_COMPUTE_BIT;
  pushConstantRange.offset = 0;
  pushConstantRange.size = sizeof(PushConstants);

  VkPipelineLayoutCreateInfo pipelineLayoutInfo{};
  pipelineLayoutInfo.sType = VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO;
  pipelineLayoutInfo.setLayoutCount = 1;
  pipelineLayoutInfo.pSetLayouts = &descriptorSetLayout;
  pipelineLayoutInfo.pushConstantRangeCount = 1;
  pipelineLayoutInfo.pPushConstantRanges = &pushConstantRange;
  vkCreatePipelineLayout(device, &pipelineLayoutInfo, nullptr, &pipelineLayout);

  // 3. Create Compute Pipeline
  // Direct use of generated uint32_t array
  std::vector<uint32_t> shaderCode(accumulate_comp_spv,
                                   accumulate_comp_spv +
                                       (accumulate_comp_spv_size / 4));

  VkShaderModule shaderModule = vm.createShaderModule(shaderCode);

  VkComputePipelineCreateInfo pipelineInfo{};
  pipelineInfo.sType = VK_STRUCTURE_TYPE_COMPUTE_PIPELINE_CREATE_INFO;
  pipelineInfo.layout = pipelineLayout;
  pipelineInfo.stage.sType =
      VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO;
  pipelineInfo.stage.stage = VK_SHADER_STAGE_COMPUTE_BIT;
  pipelineInfo.stage.module = shaderModule;
  pipelineInfo.stage.pName = "main";

  vkCreateComputePipelines(device, VK_NULL_HANDLE, 1, &pipelineInfo, nullptr,
                           &accumulatePipeline);

  vkDestroyShaderModule(device, shaderModule, nullptr);

  // 4. Create Normalization Pipeline
  VkDescriptorSetLayoutBinding normalizeBindings[2] = {};
  normalizeBindings[0].binding = 0; // Output Buffer
  normalizeBindings[0].descriptorType = VK_DESCRIPTOR_TYPE_STORAGE_BUFFER;
  normalizeBindings[0].descriptorCount = 1;
  normalizeBindings[0].stageFlags = VK_SHADER_STAGE_COMPUTE_BIT;

  normalizeBindings[1].binding = 1; // Accumulator Buffer
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
  normalizePipelineLayoutInfo.pPushConstantRanges =
      &pushConstantRange; // Reuse push constant range
  vkCreatePipelineLayout(device, &normalizePipelineLayoutInfo, nullptr,
                         &normalizePipelineLayout);

  std::vector<uint32_t> normShaderCode(
      normalize_comp_spv, normalize_comp_spv + (normalize_comp_spv_size / 4));
  VkShaderModule normShaderModule = vm.createShaderModule(normShaderCode);

  VkComputePipelineCreateInfo normPipelineInfo{};
  normPipelineInfo.sType = VK_STRUCTURE_TYPE_COMPUTE_PIPELINE_CREATE_INFO;
  normPipelineInfo.layout = normalizePipelineLayout;
  normPipelineInfo.stage.sType =
      VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO;
  normPipelineInfo.stage.stage = VK_SHADER_STAGE_COMPUTE_BIT;
  normPipelineInfo.stage.module = normShaderModule;
  normPipelineInfo.stage.pName = "main";

  vkCreateComputePipelines(device, VK_NULL_HANDLE, 1, &normPipelineInfo,
                           nullptr, &normalizePipeline);
  vkDestroyShaderModule(device, normShaderModule, nullptr);

  // 5. Create Structure Tensor Pipeline
  // Layout: Binding 0 (Sampler), Binding 1 (KernelParams Out)
  VkDescriptorSetLayoutBinding tensorBindings[2] = {};
  tensorBindings[0].binding = 0;
  tensorBindings[0].descriptorType = VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER;
  tensorBindings[0].descriptorCount = 1;
  tensorBindings[0].stageFlags = VK_SHADER_STAGE_COMPUTE_BIT;
  tensorBindings[0].pImmutableSamplers = nullptr; // Regular RGB image

  tensorBindings[1].binding = 1;
  tensorBindings[1].descriptorType = VK_DESCRIPTOR_TYPE_STORAGE_BUFFER;
  tensorBindings[1].descriptorCount = 1;
  tensorBindings[1].stageFlags = VK_SHADER_STAGE_COMPUTE_BIT;

  VkDescriptorSetLayoutCreateInfo tensorLayoutInfo{};
  tensorLayoutInfo.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO;
  tensorLayoutInfo.bindingCount = 2;
  tensorLayoutInfo.pBindings = tensorBindings;
  vkCreateDescriptorSetLayout(device, &tensorLayoutInfo, nullptr,
                              &tensorSetLayout);

  VkPipelineLayoutCreateInfo tensorPLInfo{};
  tensorPLInfo.sType = VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO;
  tensorPLInfo.setLayoutCount = 1;
  tensorPLInfo.pSetLayouts = &tensorSetLayout;
  tensorPLInfo.pushConstantRangeCount = 1;
  tensorPLInfo.pPushConstantRanges = &pushConstantRange;
  vkCreatePipelineLayout(device, &tensorPLInfo, nullptr, &tensorPipelineLayout);

  std::vector<uint32_t> stCode(structure_tensor_comp_spv,
                               structure_tensor_comp_spv +
                                   (structure_tensor_comp_spv_size / 4));
  VkShaderModule stModule = vm.createShaderModule(stCode);

  VkComputePipelineCreateInfo stPipelineInfo{};
  stPipelineInfo.sType = VK_STRUCTURE_TYPE_COMPUTE_PIPELINE_CREATE_INFO;
  stPipelineInfo.layout = tensorPipelineLayout;
  stPipelineInfo.stage.sType =
      VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO;
  stPipelineInfo.stage.stage = VK_SHADER_STAGE_COMPUTE_BIT;
  stPipelineInfo.stage.module = stModule;
  stPipelineInfo.stage.pName = "main";

  vkCreateComputePipelines(device, VK_NULL_HANDLE, 1, &stPipelineInfo, nullptr,
                           &tensorPipeline);
  vkDestroyShaderModule(device, stModule, nullptr);

  // 6. Create YUV to RGBA Pipeline
  VkDescriptorSetLayoutBinding yuvToRgbaBindings[2] = {};
  yuvToRgbaBindings[0].binding = 0; // Input YUV Sampler
  yuvToRgbaBindings[0].descriptorType =
      VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER;
  yuvToRgbaBindings[0].descriptorCount = 1;
  yuvToRgbaBindings[0].stageFlags = VK_SHADER_STAGE_COMPUTE_BIT;
  yuvToRgbaBindings[0].pImmutableSamplers = samplers;

  yuvToRgbaBindings[1].binding = 1; // Output RGBA Image
  yuvToRgbaBindings[1].descriptorType = VK_DESCRIPTOR_TYPE_STORAGE_IMAGE;
  yuvToRgbaBindings[1].descriptorCount = 1;
  yuvToRgbaBindings[1].stageFlags = VK_SHADER_STAGE_COMPUTE_BIT;

  VkDescriptorSetLayoutCreateInfo yuvToRgbaLayoutInfo{};
  yuvToRgbaLayoutInfo.sType =
      VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO;
  yuvToRgbaLayoutInfo.bindingCount = 2;
  yuvToRgbaLayoutInfo.pBindings = yuvToRgbaBindings;
  vkCreateDescriptorSetLayout(device, &yuvToRgbaLayoutInfo, nullptr,
                              &yuvToRgbaLayout);

  VkPipelineLayoutCreateInfo yuvToRgbaPLInfo{};
  yuvToRgbaPLInfo.sType = VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO;
  yuvToRgbaPLInfo.setLayoutCount = 1;
  yuvToRgbaPLInfo.pSetLayouts = &yuvToRgbaLayout;
  yuvToRgbaPLInfo.pushConstantRangeCount = 1;
  yuvToRgbaPLInfo.pPushConstantRanges = &pushConstantRange;
  vkCreatePipelineLayout(device, &yuvToRgbaPLInfo, nullptr,
                         &yuvToRgbaPipelineLayout);

  std::vector<uint32_t> yuvToRgbaCode(yuv_to_rgba_comp_spv,
                                      yuv_to_rgba_comp_spv +
                                          (yuv_to_rgba_comp_spv_size / 4));
  VkShaderModule yuvToRgbaModule = vm.createShaderModule(yuvToRgbaCode);

  VkComputePipelineCreateInfo yuvToRgbaPipelineInfo{};
  yuvToRgbaPipelineInfo.sType = VK_STRUCTURE_TYPE_COMPUTE_PIPELINE_CREATE_INFO;
  yuvToRgbaPipelineInfo.layout = yuvToRgbaPipelineLayout;
  yuvToRgbaPipelineInfo.stage.sType =
      VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO;
  yuvToRgbaPipelineInfo.stage.stage = VK_SHADER_STAGE_COMPUTE_BIT;
  yuvToRgbaPipelineInfo.stage.module = yuvToRgbaModule;
  yuvToRgbaPipelineInfo.stage.pName = "main";

  vkCreateComputePipelines(device, VK_NULL_HANDLE, 1, &yuvToRgbaPipelineInfo,
                           nullptr, &yuvToRgbaPipeline);
  vkDestroyShaderModule(device, yuvToRgbaModule, nullptr);
}

bool VulkanImageStacker::addFrame(AHardwareBuffer *buffer) {
  if (buffer == nullptr)
    return false;
  AHardwareBuffer_acquire(buffer);
  pendingFrames.push_back({buffer, 0.0f});
  return true;
}

bool VulkanImageStacker::processFrame(AHardwareBuffer *buffer, float frameScore) {
  VulkanImage input;
  // Use existing conversion if available (from first frame) to compatible with
  // immutable sampler
  TIME_START(importBuffer);
  if (!VulkanBufferImporter::importHardwareBuffer(buffer, input,
                                                  this->ycbcrConversion)) {
    LOGE("processFrame: Failed to import hardware buffer");
    return false;
  }
  TIME_END(importBuffer);

  bool currentIsFirstFrame = isFirstFrame;
  LOGI("processFrame: Start. isFirstFrame=%d", currentIsFirstFrame);

  VulkanManager &vm = VulkanManager::getInstance();
  VkDevice device = vm.getDevice();

  if (currentIsFirstFrame) {
    // Steal the first frame's sampler and conversion for long-lived pipelines
    this->immutableSampler = input.sampler;
    this->ycbcrConversion = input.ycbcrConversion;
    input.sampler = VK_NULL_HANDLE;
    input.ycbcrConversion = VK_NULL_HANDLE; // Steal ownership

    createPipelines(this->immutableSampler);
  } else {
    // If not first frame, we reused the conversion.
    // We must NOT let input.release() destroy it, because
    // 'this->ycbcrConversion' owns it now.
    input.ycbcrConversion = VK_NULL_HANDLE;
  }

  // 1. Reuse or Allocate Descriptor Sets for each tile
  int numTiles = numTilesX * numTilesY;

  if (yuvToRgbaSet == VK_NULL_HANDLE) {
    VkDescriptorSetAllocateInfo allocInfo{};
    allocInfo.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO;
    allocInfo.descriptorPool = descriptorPool;
    allocInfo.descriptorSetCount = 1;
    allocInfo.pSetLayouts = &yuvToRgbaLayout;
    VK_CHECK(vkAllocateDescriptorSets(device, &allocInfo, &yuvToRgbaSet));
  }

  // Descriptions for accum/tensor sets are constant for the life of the stacker
  for (int i = 0; i < numTiles; ++i) {
    if (accumSets[i] == VK_NULL_HANDLE) {
      VkDescriptorSetAllocateInfo allocInfo{};
      allocInfo.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO;
      allocInfo.descriptorPool = descriptorPool;
      allocInfo.descriptorSetCount = 1;
      allocInfo.pSetLayouts = &descriptorSetLayout;
      VK_CHECK(vkAllocateDescriptorSets(device, &allocInfo, &accumSets[i]));

      VkDescriptorImageInfo imageInfo{};
      imageInfo.imageLayout = VK_IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL;
      imageInfo.imageView = rgbFrame.viewY;
      imageInfo.sampler = rgbFrame.sampler;

      VkDescriptorBufferInfo accumBufferInfo{accumBuffers[i], 0, VK_WHOLE_SIZE};
      VkDescriptorBufferInfo alignBufferInfo{alignmentBuffer, 0, VK_WHOLE_SIZE};
      VkDescriptorBufferInfo kpBufferInfo{kernelParamsBuffer, 0, VK_WHOLE_SIZE};
      VkDescriptorBufferInfo mpBufferInfo{motionPriorBuffer, 0, VK_WHOLE_SIZE};
      VkDescriptorBufferInfo lmBufferInfo{localTileMaskBuffer, 0, VK_WHOLE_SIZE};

      VkWriteDescriptorSet descriptorWrites[6] = {};
      descriptorWrites[0].sType = VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET;
      descriptorWrites[0].dstSet = accumSets[i];
      descriptorWrites[0].dstBinding = 0;
      descriptorWrites[0].descriptorType =
          VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER;
      descriptorWrites[0].descriptorCount = 1;
      descriptorWrites[0].pImageInfo = &imageInfo;

      descriptorWrites[1].sType = VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET;
      descriptorWrites[1].dstSet = accumSets[i];
      descriptorWrites[1].dstBinding = 1;
      descriptorWrites[1].descriptorType = VK_DESCRIPTOR_TYPE_STORAGE_BUFFER;
      descriptorWrites[1].descriptorCount = 1;
      descriptorWrites[1].pBufferInfo = &accumBufferInfo;

      descriptorWrites[2].sType = VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET;
      descriptorWrites[2].dstSet = accumSets[i];
      descriptorWrites[2].dstBinding = 2;
      descriptorWrites[2].descriptorType = VK_DESCRIPTOR_TYPE_STORAGE_BUFFER;
      descriptorWrites[2].descriptorCount = 1;
      descriptorWrites[2].pBufferInfo = &alignBufferInfo;

      descriptorWrites[3].sType = VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET;
      descriptorWrites[3].dstSet = accumSets[i];
      descriptorWrites[3].dstBinding = 3;
      descriptorWrites[3].descriptorType = VK_DESCRIPTOR_TYPE_STORAGE_BUFFER;
      descriptorWrites[3].descriptorCount = 1;
      descriptorWrites[3].pBufferInfo = &kpBufferInfo;

      descriptorWrites[4].sType = VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET;
      descriptorWrites[4].dstSet = accumSets[i];
      descriptorWrites[4].dstBinding = 4;
      descriptorWrites[4].descriptorType = VK_DESCRIPTOR_TYPE_STORAGE_BUFFER;
      descriptorWrites[4].descriptorCount = 1;
      descriptorWrites[4].pBufferInfo = &mpBufferInfo;

      descriptorWrites[5].sType = VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET;
      descriptorWrites[5].dstSet = accumSets[i];
      descriptorWrites[5].dstBinding = 5;
      descriptorWrites[5].descriptorType = VK_DESCRIPTOR_TYPE_STORAGE_BUFFER;
      descriptorWrites[5].descriptorCount = 1;
      descriptorWrites[5].pBufferInfo = &lmBufferInfo;

      vkUpdateDescriptorSets(device, 6, descriptorWrites, 0, nullptr);
    }

    if (tensorSets[i] == VK_NULL_HANDLE) {
      VkDescriptorSetAllocateInfo tensorAlloc{};
      tensorAlloc.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO;
      tensorAlloc.descriptorPool = descriptorPool;
      tensorAlloc.descriptorSetCount = 1;
      tensorAlloc.pSetLayouts = &tensorSetLayout;
      VK_CHECK(vkAllocateDescriptorSets(device, &tensorAlloc, &tensorSets[i]));

      VkDescriptorImageInfo imageInfo{};
      imageInfo.imageLayout = VK_IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL;
      imageInfo.imageView = rgbFrame.viewY;
      imageInfo.sampler = rgbFrame.sampler;

      VkDescriptorBufferInfo kpBufferInfo{kernelParamsBuffer, 0, VK_WHOLE_SIZE};

      VkWriteDescriptorSet tensorWrites[2] = {};
      tensorWrites[0].sType = VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET;
      tensorWrites[0].dstSet = tensorSets[i];
      tensorWrites[0].dstBinding = 0;
      tensorWrites[0].descriptorType =
          VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER;
      tensorWrites[0].descriptorCount = 1;
      tensorWrites[0].pImageInfo = &imageInfo;

      tensorWrites[1].sType = VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET;
      tensorWrites[1].dstSet = tensorSets[i];
      tensorWrites[1].dstBinding = 1;
      tensorWrites[1].descriptorType = VK_DESCRIPTOR_TYPE_STORAGE_BUFFER;
      tensorWrites[1].descriptorCount = 1;
      tensorWrites[1].pBufferInfo = &kpBufferInfo;

      vkUpdateDescriptorSets(device, 2, tensorWrites, 0, nullptr);
    }
  }

  // 2. Alignment logic on CPU (to get offsets)
  float offsetX = 0.0f, offsetY = 0.0f;
  std::vector<Point> alignmentOffsets;
  std::vector<float> alignmentErrorMap;
  std::vector<float> localTileMask;
  size_t copyCount = 0;
  float frameWeight = 1.0f;

  AHardwareBuffer_Desc desc;
  AHardwareBuffer_describe(buffer, &desc);

  void *lockedData = nullptr;
  TIME_START(cpuAlignment);
  if (AHardwareBuffer_lock(buffer, AHARDWAREBUFFER_USAGE_CPU_READ_OFTEN, -1,
                           nullptr, &lockedData) == 0) {
    // Create a 8-bit grayscale image for alignment
    GrayImage currentY;
    currentY.width = width;
    currentY.height = height;
    currentY.data.resize(width * height);

    uint8_t *srcY = (uint8_t *)lockedData;
    int stride = desc.stride;
    bool is10bit = (desc.format == 0x36); // AHARDWAREBUFFER_FORMAT_YCbCr_P010

    for (int y = 0; y < height; ++y) {
      if (is10bit) {
        uint16_t *rowPtr = (uint16_t *)(srcY + y * stride * 2);
        for (int x = 0; x < width; ++x) {
          currentY.data[y * width + x] = (uint8_t)(rowPtr[x] >> 8);
        }
      } else {
        memcpy(currentY.data.data() + y * width, srcY + y * stride, width);
      }
    }
    AHardwareBuffer_unlock(buffer, nullptr);

    auto currentPyramid = buildPyramid(currentY.data.data(), width, height, 4);
    if (currentIsFirstFrame) {
      referencePyramid = std::move(currentPyramid);
      localTileMask.assign((size_t)gridW * gridH, 1.0f);
    } else {
      TileAlignment alignment =
          computeTileAlignment(referencePyramid, currentPyramid, 64);

      gridW = alignment.gridW;
      gridH = alignment.gridH;

      uint32_t allocatedGridW = (width + 31) / 32;
      uint32_t allocatedGridH = (height + 31) / 32;
      uint32_t maxAllocatedPoints = allocatedGridW * allocatedGridH;

      copyCount =
          std::min(alignment.offsets.size(), (size_t)maxAllocatedPoints);
      alignmentOffsets = std::move(alignment.offsets);
      alignmentErrorMap = std::move(alignment.errorMap);

      float sumX = 0, sumY = 0;
      for (const auto &p : alignmentOffsets) {
        sumX += p.x;
        sumY += p.y;
      }
      if (!alignmentOffsets.empty()) {
        offsetX = sumX / alignmentOffsets.size();
        offsetY = sumY / alignmentOffsets.size();
      }

      LocalReliabilityMap localMap = buildLocalReliabilityMap(
          referencePyramid.front(), alignmentErrorMap, gridW, gridH);
      localTileMask = std::move(localMap.tileWeights);
      float sharpnessRatio = (referenceFrameScore > 0.0f)
                                 ? std::min(frameScore / referenceFrameScore, 1.0f)
                                 : 1.0f;
      frameWeight = computeFrameFusionWeight(alignmentErrorMap, sharpnessRatio,
                                             localMap);
      float p90Err = computeScalarStats(alignmentErrorMap).p90;
      LOGI("YUV fusion: sharpnessRatio=%.3f frameWeight=%.3f flatGood=%.3f flatArea=%.3f detailArea=%.3f p90Err=%.3f p90ErrRms=%.3f",
           sharpnessRatio, frameWeight, localMap.flatGoodFraction,
           localMap.flatAreaFraction, localMap.detailAreaFraction,
           p90Err, std::sqrt(std::max(p90Err, 0.0f)));
    }
  }
  TIME_END(cpuAlignment);

  // 3. Prepare Push Constants
  float transform[6] = {1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f};
  PushConstants pc{};
  pc.t0 = transform[0];
  pc.t1 = transform[1];
  pc.t2 = transform[2];
  pc.t3 = transform[3];
  pc.t4 = transform[4];
  pc.t5 = transform[5];
  pc.offsetX = offsetX;
  pc.offsetY = offsetY;
  uint32_t scale = enableSuperRes ? 2 : 1;
  pc.scale = static_cast<float>(scale);
  pc.width = width * scale;
  pc.height = height * scale;
  pc.baseNoise = 0.001f;
  pc.isFirstFrame = currentIsFirstFrame ? 1 : 0;
  pc.gridW = gridW;
  pc.gridH = gridH;
  pc.noiseAlpha = 0.005f;
  pc.noiseBeta = 0.001f;
  pc.frameWeight = frameWeight;

  if (!currentIsFirstFrame && pc.frameWeight < 0.12f) {
    input.release(device);
    isFirstFrame = false;
    return true;
  }

  // --- START PIPELINING SYNC POINT ---
  // Wait for the PREVIOUS frame's GPU task to finish before we start recording
  // new commands or mapping shared buffers.
  vkQueueWaitIdle(vm.getComputeQueue());

  // Safe to map alignment buffers and update frame-varying descriptors now
  if (!currentIsFirstFrame && copyCount > 0) {
    void *mapPtr = nullptr;
    VkResult res =
        vkMapMemory(device, alignmentMemory, 0, VK_WHOLE_SIZE, 0, &mapPtr);
    if (res == VK_SUCCESS && mapPtr != nullptr) {
      memcpy(mapPtr, alignmentOffsets.data(), copyCount * sizeof(Point));
      vkUnmapMemory(device, alignmentMemory);
    }

    void *mpMapPtr = nullptr;
    VkResult resMP =
        vkMapMemory(device, motionPriorMemory, 0, VK_WHOLE_SIZE, 0, &mpMapPtr);
    if (resMP == VK_SUCCESS && mpMapPtr != nullptr) {
      memcpy(mpMapPtr, alignmentErrorMap.data(), copyCount * sizeof(float));
      vkUnmapMemory(device, motionPriorMemory);
    }

  }

  if (localTileMask.empty()) {
    localTileMask.assign((size_t)gridW * gridH, 1.0f);
  }
  void *lmMapPtr = nullptr;
  VkResult resLM =
      vkMapMemory(device, localTileMaskMemory, 0, VK_WHOLE_SIZE, 0, &lmMapPtr);
  if (resLM == VK_SUCCESS && lmMapPtr != nullptr && !localTileMask.empty()) {
    memcpy(lmMapPtr, localTileMask.data(),
           localTileMask.size() * sizeof(float));
    vkUnmapMemory(device, localTileMaskMemory);
  }

  // Update yuvToRgbaSet with current input
  {
    VkDescriptorImageInfo imageInfo{input.sampler, input.viewY,
                                    VK_IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL};
    VkDescriptorImageInfo outInfo{VK_NULL_HANDLE, rgbFrame.viewY,
                                  VK_IMAGE_LAYOUT_GENERAL};

    VkWriteDescriptorSet writes[2] = {};
    writes[0].sType = VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET;
    writes[0].dstSet = yuvToRgbaSet;
    writes[0].dstBinding = 0;
    writes[0].descriptorType = VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER;
    writes[0].descriptorCount = 1;
    writes[0].pImageInfo = &imageInfo;

    writes[1].sType = VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET;
    writes[1].dstSet = yuvToRgbaSet;
    writes[1].dstBinding = 1;
    writes[1].descriptorType = VK_DESCRIPTOR_TYPE_STORAGE_IMAGE;
    writes[1].descriptorCount = 1;
    writes[1].pImageInfo = &outInfo;

    vkUpdateDescriptorSets(device, 2, writes, 0, nullptr);
  }

  TIME_START(gpuDispatch);
  // 3. Command Buffer Recording
  VkCommandBuffer cb = vm.beginSingleTimeCommands();

  // Transition Input Image Layout
  VkImageMemoryBarrier imageBarrier{};
  imageBarrier.sType = VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER;
  imageBarrier.oldLayout = VK_IMAGE_LAYOUT_UNDEFINED;
  imageBarrier.newLayout = VK_IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL;
  imageBarrier.srcQueueFamilyIndex = VK_QUEUE_FAMILY_IGNORED;
  imageBarrier.dstQueueFamilyIndex = VK_QUEUE_FAMILY_IGNORED;
  imageBarrier.image = input.image;
  imageBarrier.subresourceRange.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
  imageBarrier.subresourceRange.baseMipLevel = 0;
  imageBarrier.subresourceRange.levelCount = 1;
  imageBarrier.subresourceRange.baseArrayLayer = 0;
  imageBarrier.subresourceRange.layerCount = 1;
  imageBarrier.srcAccessMask = 0;
  imageBarrier.dstAccessMask = VK_ACCESS_SHADER_READ_BIT;

  vkCmdPipelineBarrier(cb, VK_PIPELINE_STAGE_TOP_OF_PIPE_BIT,
                       VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT, 0, 0, nullptr, 0,
                       nullptr, 1, &imageBarrier);

  // Transition RGB frame to GENERAL for writing
  VkImageMemoryBarrier rgbWriteBarrier{};
  rgbWriteBarrier.sType = VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER;
  rgbWriteBarrier.oldLayout = VK_IMAGE_LAYOUT_UNDEFINED;
  rgbWriteBarrier.newLayout = VK_IMAGE_LAYOUT_GENERAL;
  rgbWriteBarrier.srcQueueFamilyIndex = VK_QUEUE_FAMILY_IGNORED;
  rgbWriteBarrier.dstQueueFamilyIndex = VK_QUEUE_FAMILY_IGNORED;
  rgbWriteBarrier.image = rgbFrame.image;
  rgbWriteBarrier.subresourceRange.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
  rgbWriteBarrier.subresourceRange.baseMipLevel = 0;
  rgbWriteBarrier.subresourceRange.levelCount = 1;
  rgbWriteBarrier.subresourceRange.baseArrayLayer = 0;
  rgbWriteBarrier.subresourceRange.layerCount = 1;
  rgbWriteBarrier.srcAccessMask = 0;
  rgbWriteBarrier.dstAccessMask = VK_ACCESS_SHADER_WRITE_BIT;

  vkCmdPipelineBarrier(cb, VK_PIPELINE_STAGE_TOP_OF_PIPE_BIT,
                       VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT, 0, 0, nullptr, 0,
                       nullptr, 1, &rgbWriteBarrier);

  // Dispatch YUV to RGBA Conversion
  vkCmdBindPipeline(cb, VK_PIPELINE_BIND_POINT_COMPUTE, yuvToRgbaPipeline);
  vkCmdBindDescriptorSets(cb, VK_PIPELINE_BIND_POINT_COMPUTE,
                          yuvToRgbaPipelineLayout, 0, 1, &yuvToRgbaSet, 0,
                          nullptr);

  struct {
    uint32_t w;
    uint32_t h;
  } convPc = {width, height};
  vkCmdPushConstants(cb, yuvToRgbaPipelineLayout, VK_SHADER_STAGE_COMPUTE_BIT,
                     0, sizeof(convPc), &convPc);
  vkCmdDispatch(cb, (width + 15) / 16, (height + 15) / 16, 1);

  // Transition RGB frame to SHADER_READ_ONLY_OPTIMAL for sampling
  VkImageMemoryBarrier rgbReadBarrier{};
  rgbReadBarrier.sType = VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER;
  rgbReadBarrier.oldLayout = VK_IMAGE_LAYOUT_GENERAL;
  rgbReadBarrier.newLayout = VK_IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL;
  rgbReadBarrier.srcQueueFamilyIndex = VK_QUEUE_FAMILY_IGNORED;
  rgbReadBarrier.dstQueueFamilyIndex = VK_QUEUE_FAMILY_IGNORED;
  rgbReadBarrier.image = rgbFrame.image;
  rgbReadBarrier.subresourceRange.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
  rgbReadBarrier.subresourceRange.baseMipLevel = 0;
  rgbReadBarrier.subresourceRange.levelCount = 1;
  rgbReadBarrier.subresourceRange.baseArrayLayer = 0;
  rgbReadBarrier.subresourceRange.layerCount = 1;
  rgbReadBarrier.srcAccessMask = VK_ACCESS_SHADER_WRITE_BIT;
  rgbReadBarrier.dstAccessMask = VK_ACCESS_SHADER_READ_BIT;

  vkCmdPipelineBarrier(cb, VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT,
                       VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT, 0, 0, nullptr, 0,
                       nullptr, 1, &rgbReadBarrier);

  // Clear Accumulators if first frame
  if (pc.isFirstFrame) {
    for (int i = 0; i < numTiles; ++i) {
      vkCmdFillBuffer(cb, accumBuffers[i], 0, VK_WHOLE_SIZE, 0);
    }
    // Barrier to ensure clear is done before usage?
    // SingleTimeCommands end with a queue submission which has implicit
    // ordering if we record linearly? No, we need a barrier if we use it in the
    // SAME command buffer as Dispatch. Yes, we are in the same CB.

    VkMemoryBarrier memBarrier = {};
    memBarrier.sType = VK_STRUCTURE_TYPE_MEMORY_BARRIER;
    memBarrier.srcAccessMask = VK_ACCESS_TRANSFER_WRITE_BIT;
    memBarrier.dstAccessMask =
        VK_ACCESS_SHADER_READ_BIT | VK_ACCESS_SHADER_WRITE_BIT;

    vkCmdPipelineBarrier(cb, VK_PIPELINE_STAGE_TRANSFER_BIT,
                         VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT, 0, 1,
                         &memBarrier, 0, nullptr, 0, nullptr);
  }

  VkBufferMemoryBarrier localMaskBarrier{};
  localMaskBarrier.sType = VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER;
  localMaskBarrier.srcAccessMask = VK_ACCESS_HOST_WRITE_BIT;
  localMaskBarrier.dstAccessMask = VK_ACCESS_SHADER_READ_BIT;
  localMaskBarrier.buffer = localTileMaskBuffer;
  localMaskBarrier.size = VK_WHOLE_SIZE;
  vkCmdPipelineBarrier(cb, VK_PIPELINE_STAGE_HOST_BIT,
                       VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT, 0, 0, nullptr, 1,
                       &localMaskBarrier, 0, nullptr);

  // Phase 2: Compute Structure Tensor (Pass 1)

  // Phase 2: Compute Structure Tensor (Pass 1)
  // Only if first frame? Or every frame?
  // Paper says: Structure tensor is computed on the image being merged
  // (Target). So we must compute it for EVERY frame.

  vkCmdBindPipeline(cb, VK_PIPELINE_BIND_POINT_COMPUTE, tensorPipeline);

  // Use pc.scale and global width/height from PC
  // pc was prepared above, let's use it.

  // Dispatch over the image logic (tiled or global?)
  // We allocated per-tile descriptor sets.

  for (int y = 0; y < numTilesY; ++y) {
    for (int x = 0; x < numTilesX; ++x) {
      int i = y * numTilesX + x;
      // Reuse PC logic for tiling, but Structure Tensor covers full target
      // frame. Actually Structure Tensor is 1:1 with Upscaled Output if we want
      // per-pixel kernel. Shader uses inputSampler and writes to kpBuffer. We
      // can dispatch over tiles logic.

      // Calculate tile rect (Using NATIVE resolution for ST calculation)
      uint32_t stFullW = width;
      uint32_t stFullH = height;
      uint32_t stTileW = (stFullW + numTilesX - 1) / numTilesX;
      uint32_t stTileH = (stFullH + numTilesY - 1) / numTilesY;

      PushConstants stPC = pc;
      stPC.tileX = x * stTileW;
      stPC.tileY = y * stTileH;
      stPC.tileW = std::min(stTileW, stFullW - stPC.tileX);
      stPC.tileH = std::min(stTileH, stFullH - stPC.tileY);
      // Ensure shader sees native dimensions for indexing
      stPC.width = stFullW;
      stPC.height = stFullH;

      // Bind ST Set
      vkCmdBindDescriptorSets(cb, VK_PIPELINE_BIND_POINT_COMPUTE,
                              tensorPipelineLayout, 0, 1, &tensorSets[i], 0,
                              nullptr);
      vkCmdPushConstants(cb, tensorPipelineLayout, VK_SHADER_STAGE_COMPUTE_BIT,
                         0, sizeof(stPC), &stPC);

      // Dispatch
      vkCmdDispatch(cb, (stPC.tileW + 15) / 16, (stPC.tileH + 15) / 16, 1);
    }
  }

  // Barrier between ST and Accumulate
  VkBufferMemoryBarrier stBarrier{};
  stBarrier.sType = VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER;
  stBarrier.srcAccessMask = VK_ACCESS_SHADER_WRITE_BIT;
  stBarrier.dstAccessMask = VK_ACCESS_SHADER_READ_BIT;
  stBarrier.buffer = kernelParamsBuffer;
  stBarrier.size = VK_WHOLE_SIZE;
  vkCmdPipelineBarrier(cb, VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT,
                       VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT, 0, 0, nullptr, 1,
                       &stBarrier, 0, nullptr);

  // Barrier between frames to ensure Accumulator writes are finished
  for (int i = 0; i < numTiles; ++i) {
    VkBufferMemoryBarrier postBarrier{};
    postBarrier.sType = VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER;
    postBarrier.srcAccessMask = VK_ACCESS_SHADER_WRITE_BIT;
    postBarrier.dstAccessMask =
        VK_ACCESS_SHADER_READ_BIT | VK_ACCESS_SHADER_WRITE_BIT;
    postBarrier.buffer = accumBuffers[i];
    postBarrier.size = VK_WHOLE_SIZE;
    vkCmdPipelineBarrier(cb, VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT,
                         VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT, 0, 0, nullptr, 1,
                         &postBarrier, 0, nullptr);
  }

  // Pass 2: Accumulate
  vkCmdBindPipeline(cb, VK_PIPELINE_BIND_POINT_COMPUTE, accumulatePipeline);

  uint32_t fullW = pc.width;
  uint32_t fullH = pc.height;
  uint32_t tileW = (fullW + numTilesX - 1) / numTilesX;
  uint32_t tileH = (fullH + numTilesY - 1) / numTilesY;

  for (int y = 0; y < numTilesY; ++y) {
    for (int x = 0; x < numTilesX; ++x) {
      int i = y * numTilesX + x;
      pc.tileX = x * tileW;
      pc.tileY = y * tileH;
      pc.tileW = std::min(tileW, fullW - pc.tileX);
      pc.tileH = std::min(tileH, fullH - pc.tileY);
      pc.bufferStride = tileW + 16; // The allocated stride

      vkCmdBindDescriptorSets(cb, VK_PIPELINE_BIND_POINT_COMPUTE,
                              pipelineLayout, 0, 1, &accumSets[i], 0, nullptr);
      vkCmdPushConstants(cb, pipelineLayout, VK_SHADER_STAGE_COMPUTE_BIT, 0,
                         sizeof(pc), &pc);
      vkCmdDispatch(cb, (pc.tileW + 15) / 16, (pc.tileH + 15) / 16, 1);
    }
  }

  // Global barrier between frames to ensure ALL accumulator tiles are finished
  // writing before the next frame begins reading or before normalization
  VkMemoryBarrier postBarrier{};
  postBarrier.sType = VK_STRUCTURE_TYPE_MEMORY_BARRIER;
  postBarrier.srcAccessMask = VK_ACCESS_SHADER_WRITE_BIT;
  postBarrier.dstAccessMask =
      VK_ACCESS_SHADER_READ_BIT | VK_ACCESS_SHADER_WRITE_BIT;
  vkCmdPipelineBarrier(cb, VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT,
                       VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT, 0, 1, &postBarrier,
                       0, nullptr, 0, nullptr);

  vm.endSingleTimeCommands(cb);
  TIME_END(gpuDispatch);

  isFirstFrame = false;
  input.release(device);
  return true;
}

float calculateYuvScore(AHardwareBuffer *buffer, uint32_t width,
                        uint32_t height) {
  AHardwareBuffer_Desc desc;
  AHardwareBuffer_describe(buffer, &desc);
  void *lockedData = nullptr;
  long long score = 0;
  if (AHardwareBuffer_lock(buffer, AHARDWAREBUFFER_USAGE_CPU_READ_OFTEN, -1,
                           nullptr, &lockedData) == 0) {
    uint8_t *srcY = (uint8_t *)lockedData;
    int stride = desc.stride;
    bool is10bit = (desc.format == 0x36);
    int step = 8;
    for (uint32_t y = step; y < height - step; y += step) {
      for (uint32_t x = step; x < width - step; x += step) {
        int val = is10bit ? (((uint16_t *)srcY)[y * stride + x] >> 8)
                          : srcY[y * stride + x];
        int valR = is10bit ? (((uint16_t *)srcY)[y * stride + x + 1] >> 8)
                           : srcY[y * stride + x + 1];
        int valB = is10bit ? (((uint16_t *)srcY)[(y + 1) * stride + x] >> 8)
                           : srcY[(y + 1) * stride + x];
        score += std::abs(val - valR);
        score += std::abs(val - valB);
      }
    }
    AHardwareBuffer_unlock(buffer, nullptr);
  }
  return (float)score;
}

bool VulkanImageStacker::processStack(uint32_t *outBitmap, uint32_t outWidth,
                                      uint32_t outHeight, uint32_t stride,
                                      int rotation) {
  // Lower CPU priority for this thread during heavy processing
  setpriority(PRIO_PROCESS, 0, 10);

  // Process all queued frames first
  isFirstFrame = true;
  if (pendingFrames.empty()) {
    return false;
  }

  // 1. Calculate scores for all pending frames
  TIME_START(scoreCalculation);
  for (auto &frame : pendingFrames) {
    frame.score = calculateYuvScore(frame.buffer, width, height);
  }
  TIME_END(scoreCalculation);

  // 2. Sort pendingFrames by score descending
  std::sort(
      pendingFrames.begin(), pendingFrames.end(),
      [](const FrameData &a, const FrameData &b) { return a.score > b.score; });
  referenceFrameScore = pendingFrames.empty() ? 0.0f : pendingFrames.front().score;

  //  LOGI("processStack: Processing %zu frames", pendingFrames.size());

  VulkanManager &vm = VulkanManager::getInstance();
  VkDevice device = vm.getDevice();
  if (device == VK_NULL_HANDLE) {
    LOGE("processStack: Vulkan device is NULL or NOT INITIALIZED");
    return false;
  }

  TIME_START(allFramesProcessing);
  int frameIdx = 0;
  for (auto &frame : pendingFrames) {
    //    LOGI("processStack: Processing frame %d, score %f", frameIdx,
    //    frame.score);
    if (!processFrame(frame.buffer, frame.score)) {
      LOGE("processStack: Failed to process frame %d", frameIdx);
    } else {
      //      LOGI("processStack: Successfully processed frame %d", frameIdx);
    }
    AHardwareBuffer_release(frame.buffer);
    frameIdx++;
  }
  pendingFrames.clear();
  vkQueueWaitIdle(vm.getComputeQueue());
  vkResetDescriptorPool(device, descriptorPool, 0);

  // Reset descriptor set handles as they are now invalid
  yuvToRgbaSet = VK_NULL_HANDLE;
  std::fill(accumSets.begin(), accumSets.end(),
            (VkDescriptorSet)VK_NULL_HANDLE);
  std::fill(tensorSets.begin(), tensorSets.end(),
            (VkDescriptorSet)VK_NULL_HANDLE);
  std::fill(normalizeSets.begin(), normalizeSets.end(),
            (VkDescriptorSet)VK_NULL_HANDLE);

  TIME_END(allFramesProcessing);

  if (!outBitmap || isFirstFrame) // Check again after processing
    return false;

  uint32_t scale = enableSuperRes ? 2 : 1;
  uint32_t sensorW = width * scale;
  uint32_t sensorH = height * scale;

  // Calculate the crop and rotation matrix
  float transform[6] = {1, 0, 0, 0, 1, 0};

  // Logic from RotatePlane + Cropping in legacy code:
  // 1. Determine rotated dimensions of sensor
  int rotW = (rotation == 90 || rotation == 270) ? sensorH : sensorW;
  int rotH = (rotation == 90 || rotation == 270) ? sensorW : sensorH;

  float cropX = (rotW - (float)outWidth) / 2.0f;
  float cropY = (rotH - (float)outHeight) / 2.0f;

  float sW = (float)sensorW;
  float sH = (float)sensorH;

  switch (rotation) {
  case 0:
    transform[0] = 1.0f;
    transform[1] = 0.0f;
    transform[2] = cropX;
    transform[3] = 0.0f;
    transform[4] = 1.0f;
    transform[5] = cropY;
    break;
  case 90:
    // Inverse of 90 deg clockwise: (x,y) -> (y, H-1-x)
    transform[0] = 0.0f;
    transform[1] = 1.0f;
    transform[2] = cropY;
    transform[3] = -1.0f;
    transform[4] = 0.0f;
    transform[5] = sH - 1.0f - cropX;
    break;
  case 180:
    // Inverse of 180 deg: (x,y) -> (W-1-x, H-1-y)
    transform[0] = -1.0f;
    transform[1] = 0.0f;
    transform[2] = sW - 1.0f - cropX;
    transform[3] = 0.0f;
    transform[4] = -1.0f;
    transform[5] = sH - 1.0f - cropY;
    break;
  case 270:
    // Inverse of 270 deg clockwise: (x,y) -> (W-1-y, x)
    transform[0] = 0.0f;
    transform[1] = -1.0f;
    transform[2] = sW - 1.0f - cropY;
    transform[3] = 1.0f;
    transform[4] = 0.0f;
    transform[5] = cropX;
    break;
  }

  VkDeviceSize outSize = outWidth * outHeight * 4;

  // 1. Dispatch Normalization for each tile
  VkCommandBuffer cb = vm.beginSingleTimeCommands();
  vkCmdBindPipeline(cb, VK_PIPELINE_BIND_POINT_COMPUTE, normalizePipeline);

  uint32_t fullW = sensorW;
  uint32_t fullH = sensorH;
  uint32_t tileW = (fullW + numTilesX - 1) / numTilesX;
  uint32_t tileH = (fullH + numTilesY - 1) / numTilesY;

  int numTiles = numTilesX * numTilesY;

  for (int i = 0; i < numTiles; ++i) {
    VkDescriptorSetAllocateInfo allocInfo{};
    allocInfo.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO;
    allocInfo.descriptorPool = descriptorPool;
    allocInfo.descriptorSetCount = 1;
    allocInfo.pSetLayouts = &normalizeSetLayout;
    VK_CHECK(vkAllocateDescriptorSets(device, &allocInfo, &normalizeSets[i]));

    VkDescriptorBufferInfo outBufferInfo{stagingBuffer, 0, VK_WHOLE_SIZE};
    VkDescriptorBufferInfo accumBufferInfo{accumBuffers[i], 0, VK_WHOLE_SIZE};

    VkWriteDescriptorSet writes[2] = {};
    writes[0].sType = VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET;
    writes[0].dstSet = normalizeSets[i];
    writes[0].dstBinding = 0;
    writes[0].descriptorType = VK_DESCRIPTOR_TYPE_STORAGE_BUFFER;
    writes[0].descriptorCount = 1;
    writes[0].pBufferInfo = &outBufferInfo;

    writes[1].sType = VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET;
    writes[1].dstSet = normalizeSets[i];
    writes[1].dstBinding = 1;
    writes[1].descriptorType = VK_DESCRIPTOR_TYPE_STORAGE_BUFFER;
    writes[1].descriptorCount = 1;
    writes[1].pBufferInfo = &accumBufferInfo;

    vkUpdateDescriptorSets(device, 2, writes, 0, nullptr);

    // Let's re-map manually to be safe
    struct {
      float t0, t1, t2, t3, t4, t5;
      uint32_t outWidth;
      uint32_t outHeight;
      uint32_t sensorWidth;
      uint32_t sensorHeight;
      uint32_t tileX;
      uint32_t tileY;
      uint32_t tileW;
      uint32_t tileH;
      uint32_t bufferStride;
    } npc;
    memcpy(&npc, transform, 6 * sizeof(float));
    npc.outWidth = outWidth;
    npc.outHeight = outHeight;
    npc.sensorWidth = fullW;
    npc.sensorHeight = fullH;
    int tx = i % numTilesX;
    int ty = i / numTilesX;
    npc.tileX = tx * tileW;
    npc.tileY = ty * tileH;
    npc.tileW = std::min(tileW, fullW - npc.tileX);
    npc.tileH = std::min(tileH, fullH - npc.tileY);
    npc.bufferStride = tileW + 16;

    vkCmdBindDescriptorSets(cb, VK_PIPELINE_BIND_POINT_COMPUTE,
                            normalizePipelineLayout, 0, 1, &normalizeSets[i], 0,
                            nullptr);

    vkCmdPushConstants(cb, normalizePipelineLayout, VK_SHADER_STAGE_COMPUTE_BIT,
                       0, sizeof(npc), &npc);

    vkCmdDispatch(cb, (outWidth + 15) / 16, (outHeight + 15) / 16, 1);
  }

  // Transition staging buffer
  VkBufferMemoryBarrier hostBarrier{};
  hostBarrier.sType = VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER;
  hostBarrier.srcAccessMask = VK_ACCESS_SHADER_WRITE_BIT;
  hostBarrier.dstAccessMask = VK_ACCESS_HOST_READ_BIT;
  hostBarrier.buffer = stagingBuffer;
  hostBarrier.size = VK_WHOLE_SIZE;
  vkCmdPipelineBarrier(cb, VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT,
                       VK_PIPELINE_STAGE_HOST_BIT, 0, 0, nullptr, 1,
                       &hostBarrier, 0, nullptr);

  TIME_START(normalizationDispatch);
  vm.endSingleTimeCommands(cb);
  vkQueueWaitIdle(vm.getComputeQueue());
  TIME_END(normalizationDispatch);

  // 2. Map and copy to bitmap
  TIME_START(outputCopy);
  void *hostData;
  vkMapMemory(device, stagingMemory, 0, outSize, 0, &hostData);

  if (stride == outWidth * 4) {
    memcpy(outBitmap, hostData, (size_t)outSize);
  } else {
    for (uint32_t y = 0; y < outHeight; ++y) {
      memcpy((uint8_t *)outBitmap + y * stride,
             (uint8_t *)hostData + y * outWidth * 4, outWidth * 4);
    }
  }
  vkUnmapMemory(device, stagingMemory);
  TIME_END(outputCopy);

  vkFreeDescriptorSets(device, descriptorPool, numTiles, normalizeSets.data());

  return true;
}

void VulkanImageStacker::releaseVulkanResources() {
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

  if (immutableSampler != VK_NULL_HANDLE)
    vkDestroySampler(device, immutableSampler, nullptr);

  if (ycbcrConversion != VK_NULL_HANDLE) {
    auto pfnDestroy = (PFN_vkDestroySamplerYcbcrConversion)vkGetDeviceProcAddr(
        device, "vkDestroySamplerYcbcrConversion");
    if (pfnDestroy)
      pfnDestroy(device, ycbcrConversion, nullptr);
  }

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

  if (kernelParamsBuffer != VK_NULL_HANDLE)
    vkDestroyBuffer(device, kernelParamsBuffer, nullptr);
  if (kernelParamsMemory != VK_NULL_HANDLE)
    vkFreeMemory(device, kernelParamsMemory, nullptr);

  if (motionPriorBuffer != VK_NULL_HANDLE)
    vkDestroyBuffer(device, motionPriorBuffer, nullptr);
  if (motionPriorMemory != VK_NULL_HANDLE)
    vkFreeMemory(device, motionPriorMemory, nullptr);
  if (localTileMaskBuffer != VK_NULL_HANDLE)
    vkDestroyBuffer(device, localTileMaskBuffer, nullptr);
  if (localTileMaskMemory != VK_NULL_HANDLE)
    vkFreeMemory(device, localTileMaskMemory, nullptr);

  if (tensorSetLayout != VK_NULL_HANDLE)
    vkDestroyDescriptorSetLayout(device, tensorSetLayout, nullptr);
  if (tensorPipelineLayout != VK_NULL_HANDLE)
    vkDestroyPipelineLayout(device, tensorPipelineLayout, nullptr);
  if (tensorPipeline != VK_NULL_HANDLE)
    vkDestroyPipeline(device, tensorPipeline, nullptr);

  if (yuvToRgbaLayout != VK_NULL_HANDLE)
    vkDestroyDescriptorSetLayout(device, yuvToRgbaLayout, nullptr);
  if (yuvToRgbaPipelineLayout != VK_NULL_HANDLE)
    vkDestroyPipelineLayout(device, yuvToRgbaPipelineLayout, nullptr);
  if (yuvToRgbaPipeline != VK_NULL_HANDLE)
    vkDestroyPipeline(device, yuvToRgbaPipeline, nullptr);

  rgbFrame.release(device);
}
