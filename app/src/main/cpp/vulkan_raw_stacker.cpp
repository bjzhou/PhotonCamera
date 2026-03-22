#include "vulkan_raw_stacker.h"
#include "align_lk.comp.h"
#include "common.h"
#include "color_scatter_raw.comp.h"
#include "green_scatter_raw.comp.h"
#include "normalize_color_hr.comp.h"
#include "normalize_green_hr.comp.h"
#include "reference_preprocess_raw.comp.h"
#include "reference_prior_raw.comp.h"
#include "raw_structure_tensor.comp.h"
#include "robustness_raw.comp.h"
#include <algorithm>
#include <cmath>
#include <cstring>
#include <limits>
#include <sys/resource.h>
#include <unistd.h>

#define VK_CHECK(x)                                                            \
  do {                                                                         \
    VkResult err = x;                                                          \
    if (err) {                                                                 \
      LOGE("Vulkan error: %d at %s:%d", err, __FILE__, __LINE__);              \
    }                                                                          \
  } while (0)

constexpr uint32_t kDenseAlignmentGridSpacing = 8;
constexpr int kAlignmentRegularizationPasses = 2;
constexpr float kAlignmentOutlierThreshold = 0.65f;
constexpr bool kEnableRawSuperResPerfLogs = false;

using PerfClock = std::chrono::steady_clock;

inline double elapsedMillis(PerfClock::time_point start,
                            PerfClock::time_point end) {
  return std::chrono::duration<double, std::milli>(end - start).count();
}

inline double elapsedMillis(PerfClock::time_point start) {
  return elapsedMillis(start, PerfClock::now());
}

inline double averageMillis(double totalMs, size_t count) {
  return count > 0 ? totalMs / static_cast<double>(count) : 0.0;
}

inline void logRawSuperResStage(const char *stage, double elapsedMs) {
  if (!kEnableRawSuperResPerfLogs)
    return;
  LOGI("RawSuperResPerf[%s]: %.3f ms", stage, elapsedMs);
}

#undef TIME_START
#undef TIME_END
#define TIME_START(name) const auto start_##name = PerfClock::now()
#define TIME_END(name)                                                        \
  const double elapsed_##name = elapsedMillis(start_##name);                  \
  logRawSuperResStage(#name, elapsed_##name)

struct RawSuperResPerfStats {
  double totalMs = 0.0;
  double scoreCalculationMs = 0.0;
  double descriptorSetupMs = 0.0;

  double phase1UploadAndPyramidMs = 0.0;
  double proxyBuildMs = 0.0;
  double pyramidBuildMs = 0.0;
  double gpuUploadMs = 0.0;

  double referencePriorMs = 0.0;
  double structureTensorMs = 0.0;

  double coarseAlignmentMs = 0.0;
  double coarseAlignmentComputeMs = 0.0;

  double globalReliabilityMs = 0.0;
  double globalReliabilitySeedMs = 0.0;
  double globalReliabilityLkStage1Ms = 0.0;
  double globalReliabilityRegularize1Ms = 0.0;
  double globalReliabilityRobustness1Ms = 0.0;
  double globalReliabilityLkStage2Ms = 0.0;
  double globalReliabilityRobustness1AndLkStage2Ms = 0.0;
  double globalReliabilityRegularize2Ms = 0.0;
  double globalReliabilityRobustness2Ms = 0.0;
  double globalReliabilityReadbackMs = 0.0;

  double tileProcessingMs = 0.0;
  double outputClearMs = 0.0;
  double tileClearMs = 0.0;
  double localMaskUploadMs = 0.0;
  double tileRefinedStateUploadMs = 0.0;
  double tileAlignmentSeedMs = 0.0;
  double tileAlignmentLkStage1Ms = 0.0;
  double tileAlignmentRegularize1Ms = 0.0;
  double tileRobustness1Ms = 0.0;
  double tileAlignmentLkStage2Ms = 0.0;
  double tileAlignmentRegularize2Ms = 0.0;
  double tileRobustness2Ms = 0.0;
  double scatterMs = 0.0;
  double normalizeMs = 0.0;

  double outputReadbackMs = 0.0;
  double cleanupMs = 0.0;

  size_t totalFrames = 0;
  size_t keptFrames = 0;
  size_t skippedFrames = 0;
  size_t tilesProcessed = 0;
  size_t coarseAlignedFrames = 0;
  size_t globalReliabilityFrames = 0;
  size_t tileAlignedFrameInstances = 0;
  size_t tileScatterFrameInstances = 0;

  void logSummary(uint32_t outputW, uint32_t outputH, float scale) const {
    if (!kEnableRawSuperResPerfLogs)
      return;
    LOGI(
        "RawSuperResPerf summary: total=%.3f ms output=%ux%u scale=%.2f "
        "frames=%zu kept=%zu skipped=%zu tiles=%zu",
        totalMs, outputW, outputH, scale, totalFrames, keptFrames,
        skippedFrames, tilesProcessed);
    LOGI(
        "RawSuperResPerf phases: score=%.3f setup=%.3f upload=%.3f prior=%.3f "
        "tensor=%.3f coarse=%.3f reliability=%.3f tile=%.3f readback=%.3f "
        "cleanup=%.3f",
        scoreCalculationMs, descriptorSetupMs, phase1UploadAndPyramidMs,
        referencePriorMs, structureTensorMs, coarseAlignmentMs,
        globalReliabilityMs, tileProcessingMs, outputReadbackMs, cleanupMs);
    LOGI(
        "RawSuperResPerf upload-detail: proxy=%.3f pyramid=%.3f gpuUpload=%.3f "
        "avgFrame=%.3f",
        proxyBuildMs, pyramidBuildMs, gpuUploadMs,
        averageMillis(phase1UploadAndPyramidMs, totalFrames));
    if (coarseAlignedFrames > 0 || globalReliabilityFrames > 0) {
      LOGI(
          "RawSuperResPerf align-detail: coarse=%.3f avgCoarse=%.3f "
          "seed=%.3f lk1=%.3f reg1=%.3f rb1=%.3f lk2=%.3f rb1+lk2=%.3f "
          "reg2=%.3f rb2=%.3f summary=%.3f avgReliabilityFrame=%.3f",
          coarseAlignmentComputeMs,
          averageMillis(coarseAlignmentComputeMs, coarseAlignedFrames),
          globalReliabilitySeedMs, globalReliabilityLkStage1Ms,
          globalReliabilityRegularize1Ms, globalReliabilityRobustness1Ms,
          globalReliabilityLkStage2Ms,
          globalReliabilityRobustness1AndLkStage2Ms,
          globalReliabilityRegularize2Ms, globalReliabilityRobustness2Ms,
          globalReliabilityReadbackMs,
          averageMillis(globalReliabilityMs, globalReliabilityFrames));
    }
    if (tilesProcessed > 0) {
      LOGI(
          "RawSuperResPerf tile-detail: clearOut=%.3f clearTile=%.3f "
          "maskUpload=%.3f refinedUpload=%.3f alignSeed=%.3f lk1=%.3f reg1=%.3f rb1=%.3f "
          "lk2=%.3f reg2=%.3f rb2=%.3f scatter=%.3f normalize=%.3f "
          "avgTile=%.3f avgScatterFrame=%.3f avgNonRefFramePrep=%.3f",
          outputClearMs, tileClearMs, localMaskUploadMs,
          tileRefinedStateUploadMs, tileAlignmentSeedMs,
          tileAlignmentLkStage1Ms, tileAlignmentRegularize1Ms,
          tileRobustness1Ms, tileAlignmentLkStage2Ms,
          tileAlignmentRegularize2Ms, tileRobustness2Ms, scatterMs,
          normalizeMs, averageMillis(tileProcessingMs, tilesProcessed),
          averageMillis(scatterMs, tileScatterFrameInstances),
          averageMillis(tileRefinedStateUploadMs + tileAlignmentSeedMs +
                            tileAlignmentLkStage1Ms +
                            tileAlignmentRegularize1Ms + tileRobustness1Ms +
                            tileAlignmentLkStage2Ms +
                            tileAlignmentRegularize2Ms + tileRobustness2Ms,
                        tileAlignedFrameInstances));
    }
  }
};

VulkanRawStacker::VulkanRawStacker(uint32_t w, uint32_t h, bool enableSuperRes,
                                   float superResScale,
                                   const float *blackLevel, float whiteLevel,
                                   const float *wbGains,
                                   const float *noiseModel,
                                   const float *lensShadingMap,
                                   uint32_t lscWidth, uint32_t lscHeight)
    : width(w), height(h), mEnableSuperRes(enableSuperRes),
      mSuperResScale(enableSuperRes ? std::clamp(superResScale, 1.0f, 2.0f)
                                    : 1.0f),
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
    uint32_t outW = (uint32_t)std::lround(width * mSuperResScale);
    uint32_t outH = (uint32_t)std::lround(height * mSuperResScale);
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

  float scale = mEnableSuperRes ? mSuperResScale : 1.0f;
  uint32_t outW = (uint32_t)std::lround(width * scale);
  uint32_t outH = (uint32_t)std::lround(height * scale);

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

  alignLkSets.resize(1);
  robustnessSets.resize(1);

  // Host-visible fused Bayer output buffer.
  VkDeviceSize fusedBayerSize =
      (VkDeviceSize)outW * outH * sizeof(uint16_t);
  VkBufferCreateInfo stagingInfo{};
  stagingInfo.sType = VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO;
  stagingInfo.size = fusedBayerSize;
  stagingInfo.usage = VK_BUFFER_USAGE_STORAGE_BUFFER_BIT |
                      VK_BUFFER_USAGE_TRANSFER_SRC_BIT |
                      VK_BUFFER_USAGE_TRANSFER_DST_BIT;
  stagingInfo.sharingMode = VK_SHARING_MODE_EXCLUSIVE;

  VK_CHECK(vkCreateBuffer(device, &stagingInfo, nullptr, &fusedBayerBuffer));

  VkMemoryRequirements stagingReqs;
  vkGetBufferMemoryRequirements(device, fusedBayerBuffer, &stagingReqs);

  VkMemoryAllocateInfo stagingAlloc{};
  stagingAlloc.sType = VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO;
  stagingAlloc.allocationSize = stagingReqs.size;
  stagingAlloc.memoryTypeIndex = vm.findMemoryType(
      stagingReqs.memoryTypeBits, VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT |
                                      VK_MEMORY_PROPERTY_HOST_COHERENT_BIT);

  VK_CHECK(vkAllocateMemory(device, &stagingAlloc, nullptr, &fusedBayerMemory));
  vkBindBufferMemory(device, fusedBayerBuffer, fusedBayerMemory, 0);

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
  // Denser control lattice for smoother sub-pixel warping. The LK support
  // window stays compact in shader code so GPU cost remains bounded.
  tileSize = (int)kDenseAlignmentGridSpacing;
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

  VkBufferCreateInfo fvInfo{VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO};
  fvInfo.size = rSize;
  fvInfo.usage = VK_BUFFER_USAGE_STORAGE_BUFFER_BIT;
  fvInfo.sharingMode = VK_SHARING_MODE_EXCLUSIVE;
  VK_CHECK(vkCreateBuffer(device, &fvInfo, nullptr, &flowVarianceBuffer));

  VkMemoryRequirements fvReqs;
  vkGetBufferMemoryRequirements(device, flowVarianceBuffer, &fvReqs);
  VkMemoryAllocateInfo fvAlloc{VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO};
  fvAlloc.allocationSize = fvReqs.size;
  fvAlloc.memoryTypeIndex = vm.findMemoryType(
      fvReqs.memoryTypeBits, VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT |
                                 VK_MEMORY_PROPERTY_HOST_COHERENT_BIT);
  VK_CHECK(vkAllocateMemory(device, &fvAlloc, nullptr, &flowVarianceMemory));
  vkBindBufferMemory(device, flowVarianceBuffer, flowVarianceMemory, 0);

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

  VkDeviceSize priorBufferSize =
      (VkDeviceSize)outW * outH * sizeof(uint16_t);
  VkBufferCreateInfo priorInfo{VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO};
  priorInfo.size = priorBufferSize;
  priorInfo.usage = VK_BUFFER_USAGE_STORAGE_BUFFER_BIT;
  priorInfo.sharingMode = VK_SHARING_MODE_EXCLUSIVE;
  VK_CHECK(vkCreateBuffer(device, &priorInfo, nullptr, &priorBayerBuffer));
  VK_CHECK(vkCreateBuffer(device, &priorInfo, nullptr, &priorWeightBuffer));

  VkMemoryRequirements priorReqs;
  vkGetBufferMemoryRequirements(device, priorBayerBuffer, &priorReqs);
  VkMemoryAllocateInfo priorAlloc{VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO};
  priorAlloc.allocationSize = priorReqs.size;
  priorAlloc.memoryTypeIndex = vm.findMemoryType(
      priorReqs.memoryTypeBits, VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT);
  VK_CHECK(vkAllocateMemory(device, &priorAlloc, nullptr, &priorBayerMemory));
  vkBindBufferMemory(device, priorBayerBuffer, priorBayerMemory, 0);

  vkGetBufferMemoryRequirements(device, priorWeightBuffer, &priorReqs);
  priorAlloc.allocationSize = priorReqs.size;
  priorAlloc.memoryTypeIndex = vm.findMemoryType(
      priorReqs.memoryTypeBits, VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT);
  VK_CHECK(vkAllocateMemory(device, &priorAlloc, nullptr, &priorWeightMemory));
  vkBindBufferMemory(device, priorWeightBuffer, priorWeightMemory, 0);

  VkDeviceSize normalizedReferenceSize =
      (VkDeviceSize)width * height * sizeof(uint16_t);
  VkBufferCreateInfo normalizedReferenceInfo{
      VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO};
  normalizedReferenceInfo.size = normalizedReferenceSize;
  normalizedReferenceInfo.usage = VK_BUFFER_USAGE_STORAGE_BUFFER_BIT;
  normalizedReferenceInfo.sharingMode = VK_SHARING_MODE_EXCLUSIVE;
  VK_CHECK(vkCreateBuffer(device, &normalizedReferenceInfo, nullptr,
                          &normalizedReferenceBuffer));

  VkMemoryRequirements normalizedReferenceReqs;
  vkGetBufferMemoryRequirements(device, normalizedReferenceBuffer,
                                &normalizedReferenceReqs);
  VkMemoryAllocateInfo normalizedReferenceAlloc{
      VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO};
  normalizedReferenceAlloc.allocationSize = normalizedReferenceReqs.size;
  normalizedReferenceAlloc.memoryTypeIndex = vm.findMemoryType(
      normalizedReferenceReqs.memoryTypeBits, VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT);
  VK_CHECK(vkAllocateMemory(device, &normalizedReferenceAlloc, nullptr,
                            &normalizedReferenceMemory));
  vkBindBufferMemory(device, normalizedReferenceBuffer,
                     normalizedReferenceMemory, 0);

  VkCommandBuffer cb = vm.beginSingleTimeCommands();
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
  vkCmdFillBuffer(cb, fusedBayerBuffer, 0, fusedBayerSize, 0);
  VkBufferMemoryBarrier fusedBarrier{};
  fusedBarrier.sType = VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER;
  fusedBarrier.srcAccessMask = VK_ACCESS_TRANSFER_WRITE_BIT;
  fusedBarrier.dstAccessMask =
      VK_ACCESS_SHADER_READ_BIT | VK_ACCESS_SHADER_WRITE_BIT;
  fusedBarrier.buffer = fusedBayerBuffer;
  fusedBarrier.size = fusedBayerSize;
  vkCmdPipelineBarrier(cb, VK_PIPELINE_STAGE_TRANSFER_BIT,
                       VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT, 0, 0, nullptr, 1,
                       &fusedBarrier, 0, nullptr);

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
  VkDescriptorSetLayoutBinding lkBindings[4] = {};
  lkBindings[0] = {0, VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr}; // Ref
  lkBindings[1] = {1, VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr}; // Trg
  lkBindings[2] = {2, VK_DESCRIPTOR_TYPE_STORAGE_BUFFER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT,
                   nullptr}; // Align Buffer (In/Out)
  lkBindings[3] = {3, VK_DESCRIPTOR_TYPE_STORAGE_BUFFER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT,
                   nullptr}; // Inlier weights

  VkDescriptorSetLayoutCreateInfo lkLayoutInfo{
      VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO};
  lkLayoutInfo.bindingCount = 4;
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
  VkDescriptorSetLayoutBinding rbBindings[5] = {};
  rbBindings[0] = {0, VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr}; // Ref
  rbBindings[1] = {1, VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr}; // Trg
  rbBindings[2] = {2, VK_DESCRIPTOR_TYPE_STORAGE_BUFFER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr}; // Alignment
  rbBindings[3] = {3, VK_DESCRIPTOR_TYPE_STORAGE_BUFFER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr}; // Output Map
  rbBindings[4] = {4, VK_DESCRIPTOR_TYPE_STORAGE_BUFFER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr}; // Flow variance

  VkDescriptorSetLayoutCreateInfo rbLayoutInfo{
      VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO};
  rbLayoutInfo.bindingCount = 5;
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
  VkDescriptorSetLayoutBinding gsBindings[9] = {};
  gsBindings[0] = {0, VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr}; // Input RAW
  gsBindings[1] = {1, VK_DESCRIPTOR_TYPE_STORAGE_BUFFER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr}; // Align
  gsBindings[2] = {2, VK_DESCRIPTOR_TYPE_STORAGE_BUFFER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr}; // Kernel
  gsBindings[3] = {3, VK_DESCRIPTOR_TYPE_STORAGE_BUFFER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr}; // pInlier
  gsBindings[4] = {4, VK_DESCRIPTOR_TYPE_STORAGE_BUFFER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr}; // Flow variance
  gsBindings[5] = {5, VK_DESCRIPTOR_TYPE_STORAGE_BUFFER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr}; // Green phase 0
  gsBindings[6] = {6, VK_DESCRIPTOR_TYPE_STORAGE_BUFFER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr}; // Green phase 1
  gsBindings[7] = {7, VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr}; // LSC
  gsBindings[8] = {8, VK_DESCRIPTOR_TYPE_STORAGE_BUFFER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr}; // Local tile mask

  VkDescriptorSetLayoutCreateInfo gsLayoutInfo{
      VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO};
  gsLayoutInfo.bindingCount = 9;
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
  VkDescriptorSetLayoutBinding csBindings[7] = {};
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
  csBindings[5] = {5, VK_DESCRIPTOR_TYPE_STORAGE_BUFFER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr};
  csBindings[6] = {6, VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr};

  VkDescriptorSetLayoutCreateInfo csLayoutInfo{
      VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO};
  csLayoutInfo.bindingCount = 7;
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

  // --- 6. Reference Normalize Pipeline ---
  VkDescriptorSetLayoutBinding rnBindings[3] = {};
  rnBindings[0] = {0, VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr};
  rnBindings[1] = {1, VK_DESCRIPTOR_TYPE_STORAGE_BUFFER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr};
  rnBindings[2] = {2, VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr};

  VkDescriptorSetLayoutCreateInfo rnLayoutInfo{
      VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO};
  rnLayoutInfo.bindingCount = 3;
  rnLayoutInfo.pBindings = rnBindings;
  vkCreateDescriptorSetLayout(device, &rnLayoutInfo, nullptr,
                              &referenceNormalizeSetLayout);

  VkPipelineLayoutCreateInfo rnPLInfo{
      VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO};
  rnPLInfo.setLayoutCount = 1;
  rnPLInfo.pSetLayouts = &referenceNormalizeSetLayout;
  rnPLInfo.pushConstantRangeCount = 1;
  rnPLInfo.pPushConstantRanges = &pushConstantRange;
  vkCreatePipelineLayout(device, &rnPLInfo, nullptr,
                         &referenceNormalizePipelineLayout);

  referenceNormalizePipeline = createComputePipeline(
      device, referenceNormalizePipelineLayout,
      reference_preprocess_raw_comp_spv,
      reference_preprocess_raw_comp_spv_size);

  // --- 7. Reference Prior Pipeline ---
  VkDescriptorSetLayoutBinding rpBindings[3] = {};
  rpBindings[0] = {0, VK_DESCRIPTOR_TYPE_STORAGE_BUFFER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr};
  rpBindings[1] = {1, VK_DESCRIPTOR_TYPE_STORAGE_BUFFER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr};
  rpBindings[2] = {2, VK_DESCRIPTOR_TYPE_STORAGE_BUFFER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr};

  VkDescriptorSetLayoutCreateInfo rpLayoutInfo{
      VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO};
  rpLayoutInfo.bindingCount = 3;
  rpLayoutInfo.pBindings = rpBindings;
  vkCreateDescriptorSetLayout(device, &rpLayoutInfo, nullptr,
                              &referencePriorSetLayout);

  VkPipelineLayoutCreateInfo rpPLInfo{
      VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO};
  rpPLInfo.setLayoutCount = 1;
  rpPLInfo.pSetLayouts = &referencePriorSetLayout;
  rpPLInfo.pushConstantRangeCount = 1;
  rpPLInfo.pPushConstantRanges = &pushConstantRange;
  vkCreatePipelineLayout(device, &rpPLInfo, nullptr,
                         &referencePriorPipelineLayout);

  referencePriorPipeline = createComputePipeline(
      device, referencePriorPipelineLayout, reference_prior_raw_comp_spv,
      reference_prior_raw_comp_spv_size);

  // --- 8. Green Normalize Pipeline ---
  VkDescriptorSetLayoutBinding gnBindings[5] = {};
  gnBindings[0] = {0, VK_DESCRIPTOR_TYPE_STORAGE_BUFFER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr}; // Output
  gnBindings[1] = {1, VK_DESCRIPTOR_TYPE_STORAGE_BUFFER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr}; // Phase 0
  gnBindings[2] = {2, VK_DESCRIPTOR_TYPE_STORAGE_BUFFER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr}; // Phase 1
  gnBindings[3] = {3, VK_DESCRIPTOR_TYPE_STORAGE_BUFFER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr}; // Prior value
  gnBindings[4] = {4, VK_DESCRIPTOR_TYPE_STORAGE_BUFFER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr}; // Prior weight

  VkDescriptorSetLayoutCreateInfo gnLayoutInfo{
      VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO};
  gnLayoutInfo.bindingCount = 5;
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

  // --- 9. Color Normalize Pipeline ---
  VkDescriptorSetLayoutBinding cnBindings[4] = {};
  cnBindings[0] = {0, VK_DESCRIPTOR_TYPE_STORAGE_BUFFER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr};
  cnBindings[1] = {1, VK_DESCRIPTOR_TYPE_STORAGE_BUFFER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr};
  cnBindings[2] = {2, VK_DESCRIPTOR_TYPE_STORAGE_BUFFER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr};
  cnBindings[3] = {3, VK_DESCRIPTOR_TYPE_STORAGE_BUFFER, 1,
                   VK_SHADER_STAGE_COMPUTE_BIT, nullptr};

  VkDescriptorSetLayoutCreateInfo cnLayoutInfo{
      VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO};
  cnLayoutInfo.bindingCount = 4;
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

struct RefinedFrameCache {
  std::vector<Point> alignment;
  std::vector<float> robustness;
  std::vector<float> flowVariance;
  bool valid = false;
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

inline RobustnessSummary readRobustnessSummary(const std::vector<float> &robustness,
                                               uint32_t planeW,
                                               uint32_t planeH) {
  RobustnessSummary summary;
  if (planeW == 0 || planeH == 0 || robustness.empty())
    return summary;

  size_t count = std::min((size_t)planeW * planeH, robustness.size());
  summary.values = computeScalarStats(robustness.data(), count);
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
  return summary;
}

inline bool uploadAlignmentField(VkDevice device, VkDeviceMemory alignMem,
                                 const std::vector<Point> &field) {
  if (field.empty())
    return false;

  void *mapPtr = nullptr;
  VkResult res = vkMapMemory(device, alignMem, 0,
                             (VkDeviceSize)field.size() * sizeof(Point), 0,
                             &mapPtr);
  if (res != VK_SUCCESS || mapPtr == nullptr)
    return false;

  std::memcpy(mapPtr, field.data(), field.size() * sizeof(Point));
  vkUnmapMemory(device, alignMem);
  return true;
}

inline bool uploadFloatBuffer(VkDevice device, VkDeviceMemory memory,
                              const std::vector<float> &values) {
  if (values.empty())
    return false;

  void *mapPtr = nullptr;
  VkResult res = vkMapMemory(device, memory, 0,
                             (VkDeviceSize)values.size() * sizeof(float), 0,
                             &mapPtr);
  if (res != VK_SUCCESS || mapPtr == nullptr)
    return false;

  std::memcpy(mapPtr, values.data(), values.size() * sizeof(float));
  vkUnmapMemory(device, memory);
  return true;
}

inline bool fillFloatBuffer(VkDevice device, VkDeviceMemory memory, size_t count,
                            float value) {
  if (count == 0)
    return false;
  void *mapPtr = nullptr;
  VkResult res = vkMapMemory(device, memory, 0, (VkDeviceSize)count * sizeof(float),
                             0, &mapPtr);
  if (res != VK_SUCCESS || mapPtr == nullptr)
    return false;
  float *dst = static_cast<float *>(mapPtr);
  std::fill(dst, dst + count, value);
  vkUnmapMemory(device, memory);
  return true;
}

inline bool downloadAlignmentField(VkDevice device, VkDeviceMemory alignMem,
                                   uint32_t gridW, uint32_t gridH,
                                   std::vector<Point> &field) {
  size_t count = (size_t)gridW * gridH;
  if (count == 0)
    return false;

  void *mapPtr = nullptr;
  VkResult res =
      vkMapMemory(device, alignMem, 0, (VkDeviceSize)count * sizeof(Point), 0,
                  &mapPtr);
  if (res != VK_SUCCESS || mapPtr == nullptr)
    return false;

  field.resize(count);
  std::memcpy(field.data(), mapPtr, count * sizeof(Point));
  vkUnmapMemory(device, alignMem);
  return true;
}

inline bool downloadFloatBuffer(VkDevice device, VkDeviceMemory memory,
                                size_t count, std::vector<float> &values) {
  if (count == 0)
    return false;

  void *mapPtr = nullptr;
  VkResult res =
      vkMapMemory(device, memory, 0, (VkDeviceSize)count * sizeof(float), 0,
                  &mapPtr);
  if (res != VK_SUCCESS || mapPtr == nullptr)
    return false;

  values.resize(count);
  std::memcpy(values.data(), mapPtr, count * sizeof(float));
  vkUnmapMemory(device, memory);
  return true;
}

inline std::vector<Point>
buildDenseAlignmentSeed(const TileAlignment &coarseAlign, uint32_t gridW,
                        uint32_t gridH, uint32_t tileSize) {
  std::vector<Point> seed((size_t)gridW * gridH);
  for (uint32_t gy = 0; gy < gridH; ++gy) {
    for (uint32_t gx = 0; gx < gridW; ++gx) {
      int cx = (int)(gx * tileSize + tileSize / 2);
      int cy = (int)(gy * tileSize + tileSize / 2);
      seed[(size_t)gy * gridW + gx] = coarseAlign.getOffset(cx, cy);
    }
  }
  return seed;
}

inline float computeProxyDetail(const GrayImage &proxy, int x, int y) {
  if (proxy.data.empty() || proxy.width <= 0 || proxy.height <= 0)
    return 0.0f;

  x = std::clamp(x, 0, proxy.width - 1);
  y = std::clamp(y, 0, proxy.height - 1);
  int x0 = std::max(0, x - 1);
  int x1 = std::min(proxy.width - 1, x + 1);
  int y0 = std::max(0, y - 1);
  int y1 = std::min(proxy.height - 1, y + 1);

  float center = (float)proxy.data[(size_t)y * proxy.width + x];
  float xp = (float)proxy.data[(size_t)y * proxy.width + x1];
  float xm = (float)proxy.data[(size_t)y * proxy.width + x0];
  float yp = (float)proxy.data[(size_t)y1 * proxy.width + x];
  float ym = (float)proxy.data[(size_t)y0 * proxy.width + x];
  float gx = std::abs(xp - xm);
  float gy = std::abs(yp - ym);
  float lap = std::abs(4.0f * center - xp - xm - yp - ym);
  return gx + gy + 0.5f * lap;
}

inline void regularizeAlignmentField(std::vector<Point> &field, uint32_t gridW,
                                     uint32_t gridH, uint32_t tileSize,
                                     const GrayImage &referenceProxy) {
  if (field.empty() || gridW == 0 || gridH == 0 || referenceProxy.data.empty())
    return;

  std::vector<Point> scratch(field.size());
  for (int pass = 0; pass < kAlignmentRegularizationPasses; ++pass) {
    const std::vector<Point> &src = (pass & 1) == 0 ? field : scratch;
    std::vector<Point> &dst = (pass & 1) == 0 ? scratch : field;

    for (uint32_t gy = 0; gy < gridH; ++gy) {
      for (uint32_t gx = 0; gx < gridW; ++gx) {
        size_t idx = (size_t)gy * gridW + gx;
        const Point center = src[idx];

        int px = (int)(gx * tileSize + tileSize / 2);
        int py = (int)(gy * tileSize + tileSize / 2);
        float detail =
            computeProxyDetail(referenceProxy, px, py) * (1.0f / 96.0f);
        float edgeKeep = std::clamp(detail, 0.0f, 1.0f);

        float sumW = 0.0f;
        float sumX = 0.0f;
        float sumY = 0.0f;
        float medianBest = std::numeric_limits<float>::max();
        Point medianCandidate = center;

        for (int oy = -1; oy <= 1; ++oy) {
          int ny = std::clamp((int)gy + oy, 0, (int)gridH - 1);
          for (int ox = -1; ox <= 1; ++ox) {
            int nx = std::clamp((int)gx + ox, 0, (int)gridW - 1);
            const Point neighbor = src[(size_t)ny * gridW + nx];
            float dx = neighbor.x - center.x;
            float dy = neighbor.y - center.y;
            float dist2 = (float)(ox * ox + oy * oy);
            float motion2 = dx * dx + dy * dy;
            float w = std::exp(-0.75f * dist2) *
                      std::exp(-motion2 / (0.30f + 0.70f * edgeKeep));
            sumW += w;
            sumX += neighbor.x * w;
            sumY += neighbor.y * w;

            float candidateCost = 0.0f;
            for (int iy = -1; iy <= 1; ++iy) {
              int sy = std::clamp((int)gy + iy, 0, (int)gridH - 1);
              for (int ix = -1; ix <= 1; ++ix) {
                int sx = std::clamp((int)gx + ix, 0, (int)gridW - 1);
                const Point sample = src[(size_t)sy * gridW + sx];
                float ddx = sample.x - neighbor.x;
                float ddy = sample.y - neighbor.y;
                candidateCost += std::sqrt(ddx * ddx + ddy * ddy);
              }
            }
            if (candidateCost < medianBest) {
              medianBest = candidateCost;
              medianCandidate = neighbor;
            }
          }
        }

        Point smooth = center;
        if (sumW > 1e-5f) {
          smooth.x = sumX / sumW;
          smooth.y = sumY / sumW;
        }

        float smoothBlend = 0.70f - 0.45f * edgeKeep;
        Point blended;
        blended.x = center.x + (smooth.x - center.x) * smoothBlend;
        blended.y = center.y + (smooth.y - center.y) * smoothBlend;

        float mdx = blended.x - medianCandidate.x;
        float mdy = blended.y - medianCandidate.y;
        float medianDist = std::sqrt(mdx * mdx + mdy * mdy);
        if (medianDist > kAlignmentOutlierThreshold) {
          float clampBlend = std::clamp((medianDist - kAlignmentOutlierThreshold) /
                                            (0.35f + 0.35f * edgeKeep),
                                        0.0f, 1.0f);
          blended.x += (medianCandidate.x - blended.x) * clampBlend;
          blended.y += (medianCandidate.y - blended.y) * clampBlend;
        }

        dst[idx] = blended;
      }
    }
  }

  if ((kAlignmentRegularizationPasses & 1) != 0)
    field.swap(scratch);
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

inline LocalReliabilityMap
readLocalReliabilityMap(const std::vector<float> &robustness, uint32_t planeW,
                        uint32_t planeH, const GrayImage &referenceProxy) {
  LocalReliabilityMap result;
  if (planeW == 0 || planeH == 0 || referenceProxy.data.empty() ||
      robustness.empty())
    return result;

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
          float xp = (float)referenceProxy
                         .data[(size_t)y * planeW + std::min(x + 1, planeW - 1)];
          float xm = (float)referenceProxy
                         .data[(size_t)y * planeW + (x > 0 ? x - 1 : 0)];
          float yp = (float)referenceProxy.data[(size_t)std::min(y + 1, planeH - 1) *
                                                    planeW +
                                                x];
          float ym = (float)referenceProxy
                         .data[(size_t)(y > 0 ? y - 1 : 0) * planeW + x];
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
    float weakPenalty =
        saturate(1.0f - std::max(0.0f, metric.weakFraction - 0.10f) / 0.30f);
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

  RawSuperResPerfStats perf;
  perf.totalFrames = pendingFrames.size();
  const auto processStackStart = PerfClock::now();

  // 1. Calculate scores and sort (Highest score first = Reference)
  TIME_START(scoreCalculation);
  selectReferenceFrame();
  TIME_END(scoreCalculation);
  perf.scoreCalculationMs = elapsed_scoreCalculation;

  VulkanManager &vm = VulkanManager::getInstance();
  VkDevice device = vm.getDevice();

  if (structureTensorPipeline == VK_NULL_HANDLE) {
    createPipelines();
  }

  float scale = mEnableSuperRes ? mSuperResScale : 1.0f;
  uint32_t outputW = (uint32_t)std::lround(width * scale);
  uint32_t outputH = (uint32_t)std::lround(height * scale);
  uint32_t inputW = width / 2;
  uint32_t inputH = height / 2;
  uint32_t localTilesX = (inputW + 15) / 16;
  uint32_t localTilesY = (inputH + 15) / 16;
  std::vector<float> defaultLocalTileMask((size_t)localTilesX * localTilesY,
                                          1.0f);

  uint32_t tileW = (outputW + numTilesX - 1) / numTilesX;
  uint32_t tileH = (outputH + numTilesY - 1) / numTilesY;

  TIME_START(descriptorSetup);

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

  allocInfo.pSetLayouts = &referenceNormalizeSetLayout;
  VK_CHECK(vkAllocateDescriptorSets(device, &allocInfo, &referenceNormalizeSet));

  allocInfo.pSetLayouts = &referencePriorSetLayout;
  VK_CHECK(vkAllocateDescriptorSets(device, &allocInfo, &referencePriorSet));

  allocInfo.pSetLayouts = &greenNormalizeSetLayout;
  VK_CHECK(vkAllocateDescriptorSets(device, &allocInfo, &greenNormalizeSet));

  allocInfo.pSetLayouts = &colorNormalizeSetLayout;
  for (int c = 0; c < 2; ++c) {
    VK_CHECK(
        vkAllocateDescriptorSets(device, &allocInfo, &colorNormalizeSets[c]));
  }

  // Pre-update constant bindings for other pipelines
  updateBufferDescriptorSet(device, structureTensorSet, kernelBuffer,
                            VK_WHOLE_SIZE, 1);
  updateBufferDescriptorSet(device, alignSet, alignmentBuffer, VK_WHOLE_SIZE,
                            2);
  updateBufferDescriptorSet(device, alignSet, robustnessBuffer, VK_WHOLE_SIZE,
                            3);
  updateBufferDescriptorSet(device, robustSet, alignmentBuffer, VK_WHOLE_SIZE,
                            2);
  updateBufferDescriptorSet(device, robustSet, robustnessBuffer, VK_WHOLE_SIZE,
                            3);
  updateBufferDescriptorSet(device, robustSet, flowVarianceBuffer,
                            VK_WHOLE_SIZE, 4);
  updateBufferDescriptorSet(device, greenScatterSet, alignmentBuffer,
                            VK_WHOLE_SIZE, 1);
  updateBufferDescriptorSet(device, greenScatterSet, kernelBuffer,
                            VK_WHOLE_SIZE, 2);
  updateBufferDescriptorSet(device, greenScatterSet, robustnessBuffer,
                            VK_WHOLE_SIZE, 3);
  updateBufferDescriptorSet(device, greenScatterSet, flowVarianceBuffer,
                            VK_WHOLE_SIZE, 4);
  updateBufferDescriptorSet(device, greenScatterSet, greenPhaseAccumBuffers[0],
                            VK_WHOLE_SIZE, 5);
  updateBufferDescriptorSet(device, greenScatterSet, greenPhaseAccumBuffers[1],
                            VK_WHOLE_SIZE, 6);
  updateImageDescriptorSet(device, greenScatterSet, lscView, lscSampler, 7);
  updateBufferDescriptorSet(device, greenScatterSet, localTileMaskBuffer,
                            VK_WHOLE_SIZE, 8);
  for (int c = 0; c < 2; ++c) {
    updateBufferDescriptorSet(device, colorScatterSets[c], alignmentBuffer,
                              VK_WHOLE_SIZE, 1);
    updateBufferDescriptorSet(device, colorScatterSets[c], kernelBuffer,
                              VK_WHOLE_SIZE, 2);
    updateBufferDescriptorSet(device, colorScatterSets[c], robustnessBuffer,
                              VK_WHOLE_SIZE, 3);
    updateBufferDescriptorSet(device, colorScatterSets[c],
                              rbScatterAccumBuffers[c], VK_WHOLE_SIZE, 4);
    updateBufferDescriptorSet(device, colorScatterSets[c], flowVarianceBuffer,
                              VK_WHOLE_SIZE, 5);
    updateImageDescriptorSet(device, colorScatterSets[c], lscView, lscSampler,
                             6);
  }
  updateBufferDescriptorSet(device, referenceNormalizeSet,
                            normalizedReferenceBuffer, VK_WHOLE_SIZE, 1);
  updateImageDescriptorSet(device, referenceNormalizeSet, lscView, lscSampler,
                           2);
  updateBufferDescriptorSet(device, referencePriorSet,
                            normalizedReferenceBuffer, VK_WHOLE_SIZE, 0);
  updateBufferDescriptorSet(device, referencePriorSet, priorBayerBuffer,
                            VK_WHOLE_SIZE, 1);
  updateBufferDescriptorSet(device, referencePriorSet, priorWeightBuffer,
                            VK_WHOLE_SIZE, 2);
  TIME_END(descriptorSetup);
  perf.descriptorSetupMs = elapsed_descriptorSetup;

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
      const auto proxyBuildStart = PerfClock::now();
      uploadedFrames[i].proxy = buildAlignmentProxy(frame);
      perf.proxyBuildMs += elapsedMillis(proxyBuildStart);
    }

    // Build pyramid
    {
      const auto pyramidBuildStart = PerfClock::now();
      uploadedFrames[i].pyramid = buildPyramid(
          uploadedFrames[i].proxy.data.data(), uploadedFrames[i].proxy.width,
          uploadedFrames[i].proxy.height, 4);
      perf.pyramidBuildMs += elapsedMillis(pyramidBuildStart);
    }

    if (i == 0) {
      referencePyramid = uploadedFrames[i].pyramid;
    }

    // Upload frame to GPU
    {
      const auto gpuUploadStart = PerfClock::now();
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
      vkMapMemory(device, fusedBayerMemory, 0, size, 0, &map);
      memcpy(map, frame.rawData.data(), size);
      vkUnmapMemory(device, fusedBayerMemory);

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
      vkCmdCopyBufferToImage(cb, fusedBayerBuffer, uploadedFrames[i].image,
                             VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL, 1, &copyReg);

      barrier.oldLayout = VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL;
      barrier.newLayout = VK_IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL;
      barrier.srcAccessMask = VK_ACCESS_TRANSFER_WRITE_BIT;
      barrier.dstAccessMask = VK_ACCESS_SHADER_READ_BIT;
      vkCmdPipelineBarrier(cb, VK_PIPELINE_STAGE_TRANSFER_BIT,
                           VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT, 0, 0, nullptr,
                           0, nullptr, 1, &barrier);

      vm.endSingleTimeCommands(cb);
      perf.gpuUploadMs += elapsedMillis(gpuUploadStart);
    }
  }
  TIME_END(phase1_UploadAndPyramid);
  perf.phase1UploadAndPyramidMs = elapsed_phase1_UploadAndPyramid;

  // =====================================================================
  // Phase 1B: Build dense HR Bayer prior from the reference frame
  // =====================================================================
  {
    TIME_START(phase1b_ReferencePrior);
    VkCommandBuffer cb = vm.beginSingleTimeCommands();

    updateImageDescriptorSet(device, referenceNormalizeSet, uploadedFrames[0].view,
                             sampler, 0);
    vkCmdBindPipeline(cb, VK_PIPELINE_BIND_POINT_COMPUTE,
                      referenceNormalizePipeline);
    vkCmdBindDescriptorSets(cb, VK_PIPELINE_BIND_POINT_COMPUTE,
                            referenceNormalizePipelineLayout, 0, 1,
                            &referenceNormalizeSet, 0, nullptr);

    PushConstants normalizePc{};
    normalizePc.width = outputW;
    normalizePc.height = outputH;
    normalizePc.planeWidth = outputW;
    normalizePc.planeHeight = outputH;
    normalizePc.sensorWidth = width;
    normalizePc.sensorHeight = height;
    normalizePc.scale = scale;
    normalizePc.cfaPattern = (uint32_t)mCfaPattern;
    normalizePc.whiteLevel = mWhiteLevel;
    memcpy(normalizePc.blackLevel, mBlackLevel, 4 * sizeof(float));
    memcpy(normalizePc.wbGains, mWbGains, 4 * sizeof(float));
    vkCmdPushConstants(cb, referenceNormalizePipelineLayout,
                       VK_SHADER_STAGE_COMPUTE_BIT, 0, sizeof(normalizePc),
                       &normalizePc);
    vkCmdDispatch(cb, (width + 15) / 16, (height + 15) / 16, 1);

    VkBufferMemoryBarrier normalizedReferenceBarrier{
        VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER};
    normalizedReferenceBarrier.srcAccessMask = VK_ACCESS_SHADER_WRITE_BIT;
    normalizedReferenceBarrier.dstAccessMask = VK_ACCESS_SHADER_READ_BIT;
    normalizedReferenceBarrier.buffer = normalizedReferenceBuffer;
    normalizedReferenceBarrier.size = VK_WHOLE_SIZE;
    vkCmdPipelineBarrier(cb, VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT,
                         VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT, 0, 0, nullptr,
                         1, &normalizedReferenceBarrier, 0, nullptr);

    vkCmdBindPipeline(cb, VK_PIPELINE_BIND_POINT_COMPUTE,
                      referencePriorPipeline);
    vkCmdBindDescriptorSets(cb, VK_PIPELINE_BIND_POINT_COMPUTE,
                            referencePriorPipelineLayout, 0, 1,
                            &referencePriorSet, 0, nullptr);

    PushConstants priorPc{};
    priorPc.width = outputW;
    priorPc.height = outputH;
    priorPc.planeWidth = outputW;
    priorPc.planeHeight = outputH;
    priorPc.sensorWidth = width;
    priorPc.sensorHeight = height;
    priorPc.scale = scale;
    priorPc.cfaPattern = (uint32_t)mCfaPattern;
    priorPc.whiteLevel = mWhiteLevel;
    memcpy(priorPc.blackLevel, mBlackLevel, 4 * sizeof(float));
    memcpy(priorPc.wbGains, mWbGains, 4 * sizeof(float));
    vkCmdPushConstants(cb, referencePriorPipelineLayout,
                       VK_SHADER_STAGE_COMPUTE_BIT, 0, sizeof(priorPc),
                       &priorPc);
    vkCmdDispatch(cb, (outputW + 15) / 16, (outputH + 15) / 16, 1);

    VkBufferMemoryBarrier priorBarriers[2]{};
    for (int i = 0; i < 2; ++i) {
      priorBarriers[i].sType = VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER;
      priorBarriers[i].srcAccessMask = VK_ACCESS_SHADER_WRITE_BIT;
      priorBarriers[i].dstAccessMask = VK_ACCESS_SHADER_READ_BIT;
      priorBarriers[i].buffer = (i == 0) ? priorBayerBuffer : priorWeightBuffer;
      priorBarriers[i].size = VK_WHOLE_SIZE;
    }
    vkCmdPipelineBarrier(cb, VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT,
                         VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT, 0, 0, nullptr,
                         2, priorBarriers, 0, nullptr);

    vm.endSingleTimeCommands(cb);
    TIME_END(phase1b_ReferencePrior);
    perf.referencePriorMs = elapsed_phase1b_ReferencePrior;
  }

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
  perf.structureTensorMs = elapsed_phase2_StructureTensor;

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
  std::vector<RefinedFrameCache> frameRefinedCaches(pendingFrames.size());
  const float referenceScore = std::max(pendingFrames.front().score, 1.0f);
  for (size_t i = 1; i < pendingFrames.size(); ++i) {
    const auto coarseAlignStart = PerfClock::now();
    frameAlignments[i].coarseAlign =
        computeTileAlignment(referencePyramid, uploadedFrames[i].pyramid, 64);
    perf.coarseAlignmentComputeMs += elapsedMillis(coarseAlignStart);
    ++perf.coarseAlignedFrames;
    logAlignmentDiagnostics("coarse", i, frameAlignments[i].coarseAlign);
    float sharpnessRatio = pendingFrames[i].score / referenceScore;
    float frameWeight = computeFusionFrameWeight(frameAlignments[i].coarseAlign,
                                                 sharpnessRatio);
    frameFusionWeights[i] = frameWeight;
    skipFusionFrame[i] = frameWeight < 0.12f;
  }
  TIME_END(phase3_CoarseAlignment);
  perf.coarseAlignmentMs = elapsed_phase3_CoarseAlignment;

  // =====================================================================
  // Phase 3B: Global reliability pre-pass using actual refined flow +
  // robustness. This lets us keep only the frames that genuinely help.
  // =====================================================================
  TIME_START(phase3b_GlobalReliability);
  for (size_t i = 1; i < pendingFrames.size(); ++i) {
    if (skipFusionFrame[i]) {
      continue;
    }
    ++perf.globalReliabilityFrames;

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
    const auto reliabilitySeedStart = PerfClock::now();
    std::vector<Point> seededFlow =
        buildDenseAlignmentSeed(coarseAlign, (uint32_t)gridW, (uint32_t)gridH,
                                (uint32_t)tileSize);
    uploadAlignmentField(device, alignmentMemory, seededFlow);
    fillFloatBuffer(device, robustnessMemory, (size_t)inputW * inputH, 1.0f);
    perf.globalReliabilitySeedMs += elapsedMillis(reliabilitySeedStart);

    const auto reliabilityLkStage1Start = PerfClock::now();
    VkCommandBuffer cb = vm.beginSingleTimeCommands();

    VkBufferMemoryBarrier hostBarriers[2]{};
    hostBarriers[0].sType = VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER;
    hostBarriers[0].srcAccessMask = VK_ACCESS_HOST_WRITE_BIT;
    hostBarriers[0].dstAccessMask =
        VK_ACCESS_SHADER_READ_BIT | VK_ACCESS_SHADER_WRITE_BIT;
    hostBarriers[0].buffer = alignmentBuffer;
    hostBarriers[0].size = VK_WHOLE_SIZE;
    hostBarriers[1].sType = VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER;
    hostBarriers[1].srcAccessMask = VK_ACCESS_HOST_WRITE_BIT;
    hostBarriers[1].dstAccessMask = VK_ACCESS_SHADER_READ_BIT;
    hostBarriers[1].buffer = robustnessBuffer;
    hostBarriers[1].size = VK_WHOLE_SIZE;
    vkCmdPipelineBarrier(cb, VK_PIPELINE_STAGE_HOST_BIT,
                         VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT, 0, 0, nullptr,
                         2, hostBarriers, 0, nullptr);

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

    vm.endSingleTimeCommands(cb);
    perf.globalReliabilityLkStage1Ms +=
        elapsedMillis(reliabilityLkStage1Start);

    const auto reliabilityRegularize1Start = PerfClock::now();
    if (downloadAlignmentField(device, alignmentMemory, (uint32_t)gridW,
                               (uint32_t)gridH, seededFlow)) {
      regularizeAlignmentField(seededFlow, (uint32_t)gridW, (uint32_t)gridH,
                               (uint32_t)tileSize, uploadedFrames[0].proxy);
      uploadAlignmentField(device, alignmentMemory, seededFlow);
    }
    perf.globalReliabilityRegularize1Ms +=
        elapsedMillis(reliabilityRegularize1Start);

    const auto reliabilityRobustness1AndLkStage2Start = PerfClock::now();
    cb = vm.beginSingleTimeCommands();
    VkBufferMemoryBarrier refinedHostBarrier{
        VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER};
    refinedHostBarrier.srcAccessMask = VK_ACCESS_HOST_WRITE_BIT;
    refinedHostBarrier.dstAccessMask = VK_ACCESS_SHADER_READ_BIT;
    refinedHostBarrier.buffer = alignmentBuffer;
    refinedHostBarrier.size = VK_WHOLE_SIZE;
    vkCmdPipelineBarrier(cb, VK_PIPELINE_STAGE_HOST_BIT,
                         VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT, 0, 0, nullptr,
                         1, &refinedHostBarrier, 0, nullptr);

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

    VkBufferMemoryBarrier rbBarriers[2]{};
    rbBarriers[0].sType = VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER;
    rbBarriers[0].srcAccessMask = VK_ACCESS_SHADER_WRITE_BIT;
    rbBarriers[0].dstAccessMask = VK_ACCESS_SHADER_READ_BIT;
    rbBarriers[0].buffer = robustnessBuffer;
    rbBarriers[0].size = VK_WHOLE_SIZE;
    rbBarriers[1].sType = VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER;
    rbBarriers[1].srcAccessMask = VK_ACCESS_SHADER_WRITE_BIT;
    rbBarriers[1].dstAccessMask = VK_ACCESS_SHADER_READ_BIT;
    rbBarriers[1].buffer = flowVarianceBuffer;
    rbBarriers[1].size = VK_WHOLE_SIZE;
    vkCmdPipelineBarrier(cb, VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT,
                         VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT, 0, 0, nullptr, 2,
                         rbBarriers, 0, nullptr);

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
    for (int iter = 0; iter < 2; ++iter) {
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

    vm.endSingleTimeCommands(cb);
    perf.globalReliabilityRobustness1AndLkStage2Ms +=
        elapsedMillis(reliabilityRobustness1AndLkStage2Start);

    const auto reliabilityRegularize2Start = PerfClock::now();
    if (downloadAlignmentField(device, alignmentMemory, (uint32_t)gridW,
                               (uint32_t)gridH, seededFlow)) {
      regularizeAlignmentField(seededFlow, (uint32_t)gridW, (uint32_t)gridH,
                               (uint32_t)tileSize, uploadedFrames[0].proxy);
      uploadAlignmentField(device, alignmentMemory, seededFlow);
    }
    perf.globalReliabilityRegularize2Ms +=
        elapsedMillis(reliabilityRegularize2Start);

    const auto reliabilityRobustness2Start = PerfClock::now();
    cb = vm.beginSingleTimeCommands();
    VkBufferMemoryBarrier finalAlignBarrier{
        VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER};
    finalAlignBarrier.srcAccessMask = VK_ACCESS_HOST_WRITE_BIT;
    finalAlignBarrier.dstAccessMask = VK_ACCESS_SHADER_READ_BIT;
    finalAlignBarrier.buffer = alignmentBuffer;
    finalAlignBarrier.size = VK_WHOLE_SIZE;
    vkCmdPipelineBarrier(cb, VK_PIPELINE_STAGE_HOST_BIT,
                         VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT, 0, 0, nullptr,
                         1, &finalAlignBarrier, 0, nullptr);

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

    VkBufferMemoryBarrier finalRbBarriers[2]{};
    finalRbBarriers[0].sType = VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER;
    finalRbBarriers[0].srcAccessMask = VK_ACCESS_SHADER_WRITE_BIT;
    finalRbBarriers[0].dstAccessMask = VK_ACCESS_SHADER_READ_BIT;
    finalRbBarriers[0].buffer = robustnessBuffer;
    finalRbBarriers[0].size = VK_WHOLE_SIZE;
    finalRbBarriers[1].sType = VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER;
    finalRbBarriers[1].srcAccessMask = VK_ACCESS_SHADER_WRITE_BIT;
    finalRbBarriers[1].dstAccessMask = VK_ACCESS_SHADER_READ_BIT;
    finalRbBarriers[1].buffer = flowVarianceBuffer;
    finalRbBarriers[1].size = VK_WHOLE_SIZE;
    vkCmdPipelineBarrier(cb, VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT,
                         VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT, 0, 0, nullptr, 2,
                         finalRbBarriers, 0, nullptr);

    vm.endSingleTimeCommands(cb);
    perf.globalReliabilityRobustness2Ms +=
        elapsedMillis(reliabilityRobustness2Start);

    const auto reliabilityReadbackStart = PerfClock::now();
    RefinedFrameCache &refinedCache = frameRefinedCaches[i];
    refinedCache.alignment = seededFlow;
    refinedCache.valid = downloadFloatBuffer(device, robustnessMemory,
                                             (size_t)inputW * inputH,
                                             refinedCache.robustness) &&
                         downloadFloatBuffer(device, flowVarianceMemory,
                                             (size_t)inputW * inputH,
                                             refinedCache.flowVariance);
    if (!refinedCache.valid) {
      if (kEnableRawSuperResPerfLogs) {
        LOGW("RawSuperResPerf: failed to cache refined state for frame %zu",
             i);
      }
    }

    FlowSummary refinedFlow;
    if (!refinedCache.alignment.empty()) {
      std::vector<float> magnitudes;
      magnitudes.reserve(refinedCache.alignment.size());
      double sumX = 0.0;
      double sumY = 0.0;
      for (const Point &point : refinedCache.alignment) {
        sumX += point.x;
        sumY += point.y;
        magnitudes.push_back(std::sqrt(point.x * point.x + point.y * point.y));
      }
      refinedFlow.magnitude =
          computeScalarStats(magnitudes.data(), magnitudes.size());
      refinedFlow.meanX = (float)(sumX / (double)magnitudes.size());
      refinedFlow.meanY = (float)(sumY / (double)magnitudes.size());
    }
    RobustnessSummary robustSummary =
        refinedCache.valid
            ? readRobustnessSummary(refinedCache.robustness, inputW, inputH)
            : readRobustnessSummary(device, robustnessMemory, inputW, inputH);
    LocalReliabilityMap localMap =
        refinedCache.valid
            ? readLocalReliabilityMap(refinedCache.robustness, inputW, inputH,
                                      uploadedFrames[0].proxy)
            : readLocalReliabilityMap(device, robustnessMemory, inputW, inputH,
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
    perf.globalReliabilityReadbackMs +=
        elapsedMillis(reliabilityReadbackStart);

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
  perf.globalReliabilityMs = elapsed_phase3b_GlobalReliability;

  perf.keptFrames = pendingFrames.empty() ? 0 : 1;
  for (size_t i = 1; i < pendingFrames.size(); ++i) {
    if (skipFusionFrame[i]) {
      ++perf.skippedFrames;
      std::vector<Point>().swap(frameRefinedCaches[i].alignment);
      std::vector<float>().swap(frameRefinedCaches[i].robustness);
      std::vector<float>().swap(frameRefinedCaches[i].flowVariance);
      frameRefinedCaches[i].valid = false;
    } else {
      ++perf.keptFrames;
    }
  }

  // Phase 4: Sequential tile processing
  // For each tile: clear accum → accumulate all frames → normalize
  // =====================================================================
  TIME_START(phase4_TileProcessing);
  VkDeviceSize greenAccumBufferSize =
      (VkDeviceSize)(tileW + 16) * (tileH + 16) * sizeof(uint32_t) * 2;
  VkDeviceSize fusedBayerSize =
      (VkDeviceSize)outputW * outputH * sizeof(uint16_t);

  {
    const auto outputClearStart = PerfClock::now();
    VkCommandBuffer cb = vm.beginSingleTimeCommands();
    vkCmdFillBuffer(cb, fusedBayerBuffer, 0, fusedBayerSize, 0);
    VkBufferMemoryBarrier outBarrier{
        VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER};
    outBarrier.srcAccessMask = VK_ACCESS_TRANSFER_WRITE_BIT;
    outBarrier.dstAccessMask =
        VK_ACCESS_SHADER_READ_BIT | VK_ACCESS_SHADER_WRITE_BIT;
    outBarrier.buffer = fusedBayerBuffer;
    outBarrier.size = fusedBayerSize;
    vkCmdPipelineBarrier(cb, VK_PIPELINE_STAGE_TRANSFER_BIT,
                         VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT, 0, 0, nullptr,
                         1, &outBarrier, 0, nullptr);
    vm.endSingleTimeCommands(cb);
    perf.outputClearMs += elapsedMillis(outputClearStart);
  }

  for (int ty = 0; ty < numTilesY; ++ty) {
    for (int tx = 0; tx < numTilesX; ++tx) {
      ++perf.tilesProcessed;
      uint32_t currentTileW = std::min(tileW, outputW - tx * tileW);
      uint32_t currentTileH = std::min(tileH, outputH - ty * tileH);

      // Clear accumulators for this tile
      {
        const auto tileClearStart = PerfClock::now();
        VkCommandBuffer cb = vm.beginSingleTimeCommands();
        for (int phase = 0; phase < 2; ++phase) {
          vkCmdFillBuffer(cb, greenPhaseAccumBuffers[phase], 0,
                          greenAccumBufferSize, 0);
        }
        for (int c = 0; c < 2; ++c) {
          vkCmdFillBuffer(cb, rbScatterAccumBuffers[c], 0,
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
        perf.tileClearMs += elapsedMillis(tileClearStart);
      }

      // Process all frames for this tile
      for (size_t i = 0; i < pendingFrames.size(); ++i) {
        bool isRef = (i == 0);
        const auto &frame = pendingFrames[i];

        if (!isRef && skipFusionFrame[i]) {
          continue;
        }
        ++perf.tileScatterFrameInstances;

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
        const auto localMaskUploadStart = PerfClock::now();
        void *localMaskPtr = nullptr;
        VkResult localMaskRes =
            vkMapMemory(device, localTileMaskMemory, 0, VK_WHOLE_SIZE, 0,
                        &localMaskPtr);
        if (localMaskRes == VK_SUCCESS && localMaskPtr != nullptr) {
          std::memcpy(localMaskPtr, localTileMask.data(),
                      localTileMask.size() * sizeof(float));
          vkUnmapMemory(device, localTileMaskMemory);
        }
        perf.localMaskUploadMs += elapsedMillis(localMaskUploadStart);
        const RefinedFrameCache *refinedCache =
            (!isRef && frameRefinedCaches[i].valid) ? &frameRefinedCaches[i]
                                                    : nullptr;

        if (!isRef) {
          ++perf.tileAlignedFrameInstances;
          if (refinedCache != nullptr) {
            const auto tileRefinedStateUploadStart = PerfClock::now();
            uploadAlignmentField(device, alignmentMemory, refinedCache->alignment);
            uploadFloatBuffer(device, robustnessMemory, refinedCache->robustness);
            uploadFloatBuffer(device, flowVarianceMemory,
                              refinedCache->flowVariance);
            perf.tileRefinedStateUploadMs +=
                elapsedMillis(tileRefinedStateUploadStart);
          } else {
            const auto tileAlignmentSeedStart = PerfClock::now();
            // Upload coarse alignment for this frame
            const auto &coarseAlign = frameAlignments[i].coarseAlign;
            std::vector<Point> seededFlow = buildDenseAlignmentSeed(
                coarseAlign, (uint32_t)gridW, (uint32_t)gridH,
                (uint32_t)tileSize);
            uploadAlignmentField(device, alignmentMemory, seededFlow);
            fillFloatBuffer(device, robustnessMemory, (size_t)inputW * inputH,
                            1.0f);
            perf.tileAlignmentSeedMs += elapsedMillis(tileAlignmentSeedStart);

            // LK alignment + Robustness
            const auto tileLkStage1Start = PerfClock::now();
            VkCommandBuffer cb = vm.beginSingleTimeCommands();

            // HOST_WRITE -> SHADER barrier
            VkBufferMemoryBarrier hostBarriers[2]{};
            hostBarriers[0].sType = VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER;
            hostBarriers[0].srcAccessMask = VK_ACCESS_HOST_WRITE_BIT;
            hostBarriers[0].dstAccessMask =
                VK_ACCESS_SHADER_READ_BIT | VK_ACCESS_SHADER_WRITE_BIT;
            hostBarriers[0].buffer = alignmentBuffer;
            hostBarriers[0].size = VK_WHOLE_SIZE;
            hostBarriers[1].sType = VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER;
            hostBarriers[1].srcAccessMask = VK_ACCESS_HOST_WRITE_BIT;
            hostBarriers[1].dstAccessMask = VK_ACCESS_SHADER_READ_BIT;
            hostBarriers[1].buffer = robustnessBuffer;
            hostBarriers[1].size = VK_WHOLE_SIZE;
            vkCmdPipelineBarrier(cb, VK_PIPELINE_STAGE_HOST_BIT,
                                 VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT, 0, 0,
                                 nullptr, 2, hostBarriers, 0, nullptr);

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

            vm.endSingleTimeCommands(cb);
            perf.tileAlignmentLkStage1Ms += elapsedMillis(tileLkStage1Start);

            const auto tileRegularize1Start = PerfClock::now();
            if (downloadAlignmentField(device, alignmentMemory, (uint32_t)gridW,
                                       (uint32_t)gridH, seededFlow)) {
              regularizeAlignmentField(seededFlow, (uint32_t)gridW,
                                       (uint32_t)gridH, (uint32_t)tileSize,
                                       uploadedFrames[0].proxy);
              uploadAlignmentField(device, alignmentMemory, seededFlow);
            }
            perf.tileAlignmentRegularize1Ms +=
                elapsedMillis(tileRegularize1Start);

            const auto tileRobustness1Start = PerfClock::now();
            cb = vm.beginSingleTimeCommands();
            VkBufferMemoryBarrier refinedHostBarrier{
                VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER};
            refinedHostBarrier.srcAccessMask = VK_ACCESS_HOST_WRITE_BIT;
            refinedHostBarrier.dstAccessMask = VK_ACCESS_SHADER_READ_BIT;
            refinedHostBarrier.buffer = alignmentBuffer;
            refinedHostBarrier.size = VK_WHOLE_SIZE;
            vkCmdPipelineBarrier(cb, VK_PIPELINE_STAGE_HOST_BIT,
                                 VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT, 0, 0,
                                 nullptr, 1, &refinedHostBarrier, 0, nullptr);

            // Robustness
            vkCmdBindPipeline(cb, VK_PIPELINE_BIND_POINT_COMPUTE,
                              robustnessPipeline);
            updateImageDescriptorSet(device, robustSet, uploadedFrames[0].view,
                                     sampler, 0);
            updateImageDescriptorSet(device, robustSet, uploadedFrames[i].view,
                                     sampler, 1);
            vkCmdBindDescriptorSets(cb, VK_PIPELINE_BIND_POINT_COMPUTE,
                                    robustnessPipelineLayout, 0, 1, &robustSet,
                                    0, nullptr);
            vkCmdPushConstants(cb, robustnessPipelineLayout,
                               VK_SHADER_STAGE_COMPUTE_BIT, 0, sizeof(pc), &pc);
            vkCmdDispatch(cb, (inputW + 15) / 16, (inputH + 15) / 16, 1);

            VkBufferMemoryBarrier rbBarriers[2]{};
            rbBarriers[0].sType = VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER;
            rbBarriers[0].srcAccessMask = VK_ACCESS_SHADER_WRITE_BIT;
            rbBarriers[0].dstAccessMask = VK_ACCESS_SHADER_READ_BIT;
            rbBarriers[0].buffer = robustnessBuffer;
            rbBarriers[0].size = VK_WHOLE_SIZE;
            rbBarriers[1].sType = VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER;
            rbBarriers[1].srcAccessMask = VK_ACCESS_SHADER_WRITE_BIT;
            rbBarriers[1].dstAccessMask = VK_ACCESS_SHADER_READ_BIT;
            rbBarriers[1].buffer = flowVarianceBuffer;
            rbBarriers[1].size = VK_WHOLE_SIZE;
            vkCmdPipelineBarrier(cb, VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT,
                                 VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT, 0, 0,
                                 nullptr, 2, rbBarriers, 0, nullptr);

            vm.endSingleTimeCommands(cb);
            perf.tileRobustness1Ms += elapsedMillis(tileRobustness1Start);

            const auto tileLkStage2Start = PerfClock::now();
            cb = vm.beginSingleTimeCommands();
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
            for (int iter = 0; iter < 2; ++iter) {
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
            vm.endSingleTimeCommands(cb);
            perf.tileAlignmentLkStage2Ms += elapsedMillis(tileLkStage2Start);

            const auto tileRegularize2Start = PerfClock::now();
            if (downloadAlignmentField(device, alignmentMemory, (uint32_t)gridW,
                                       (uint32_t)gridH, seededFlow)) {
              regularizeAlignmentField(seededFlow, (uint32_t)gridW,
                                       (uint32_t)gridH, (uint32_t)tileSize,
                                       uploadedFrames[0].proxy);
              uploadAlignmentField(device, alignmentMemory, seededFlow);
            }
            perf.tileAlignmentRegularize2Ms +=
                elapsedMillis(tileRegularize2Start);

            const auto tileRobustness2Start = PerfClock::now();
            cb = vm.beginSingleTimeCommands();
            VkBufferMemoryBarrier finalAlignBarrier{
                VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER};
            finalAlignBarrier.srcAccessMask = VK_ACCESS_HOST_WRITE_BIT;
            finalAlignBarrier.dstAccessMask = VK_ACCESS_SHADER_READ_BIT;
            finalAlignBarrier.buffer = alignmentBuffer;
            finalAlignBarrier.size = VK_WHOLE_SIZE;
            vkCmdPipelineBarrier(cb, VK_PIPELINE_STAGE_HOST_BIT,
                                 VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT, 0, 0,
                                 nullptr, 1, &finalAlignBarrier, 0, nullptr);

            vkCmdBindPipeline(cb, VK_PIPELINE_BIND_POINT_COMPUTE,
                              robustnessPipeline);
            updateImageDescriptorSet(device, robustSet, uploadedFrames[0].view,
                                     sampler, 0);
            updateImageDescriptorSet(device, robustSet, uploadedFrames[i].view,
                                     sampler, 1);
            vkCmdBindDescriptorSets(cb, VK_PIPELINE_BIND_POINT_COMPUTE,
                                    robustnessPipelineLayout, 0, 1, &robustSet,
                                    0, nullptr);
            vkCmdPushConstants(cb, robustnessPipelineLayout,
                               VK_SHADER_STAGE_COMPUTE_BIT, 0, sizeof(pc), &pc);
            vkCmdDispatch(cb, (inputW + 15) / 16, (inputH + 15) / 16, 1);

            VkBufferMemoryBarrier finalRbBarriers[2]{};
            finalRbBarriers[0].sType = VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER;
            finalRbBarriers[0].srcAccessMask = VK_ACCESS_SHADER_WRITE_BIT;
            finalRbBarriers[0].dstAccessMask = VK_ACCESS_SHADER_READ_BIT;
            finalRbBarriers[0].buffer = robustnessBuffer;
            finalRbBarriers[0].size = VK_WHOLE_SIZE;
            finalRbBarriers[1].sType = VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER;
            finalRbBarriers[1].srcAccessMask = VK_ACCESS_SHADER_WRITE_BIT;
            finalRbBarriers[1].dstAccessMask = VK_ACCESS_SHADER_READ_BIT;
            finalRbBarriers[1].buffer = flowVarianceBuffer;
            finalRbBarriers[1].size = VK_WHOLE_SIZE;
            vkCmdPipelineBarrier(cb, VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT,
                                 VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT, 0, 0,
                                 nullptr, 2, finalRbBarriers, 0, nullptr);

            vm.endSingleTimeCommands(cb);
            perf.tileRobustness2Ms += elapsedMillis(tileRobustness2Start);
          }
        }

        // Accumulate this frame's contribution for this tile's 3 channels
        {
          const auto scatterStart = PerfClock::now();
          VkCommandBuffer cb = vm.beginSingleTimeCommands();
          VkBufferMemoryBarrier preScatterBarriers[4]{};
          uint32_t preScatterBarrierCount = 0;

          preScatterBarriers[preScatterBarrierCount].sType =
              VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER;
          preScatterBarriers[preScatterBarrierCount].srcAccessMask =
              VK_ACCESS_HOST_WRITE_BIT;
          preScatterBarriers[preScatterBarrierCount].dstAccessMask =
              VK_ACCESS_SHADER_READ_BIT;
          preScatterBarriers[preScatterBarrierCount].buffer = localTileMaskBuffer;
          preScatterBarriers[preScatterBarrierCount].size = VK_WHOLE_SIZE;
          ++preScatterBarrierCount;

          if (refinedCache != nullptr) {
            preScatterBarriers[preScatterBarrierCount].sType =
                VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER;
            preScatterBarriers[preScatterBarrierCount].srcAccessMask =
                VK_ACCESS_HOST_WRITE_BIT;
            preScatterBarriers[preScatterBarrierCount].dstAccessMask =
                VK_ACCESS_SHADER_READ_BIT;
            preScatterBarriers[preScatterBarrierCount].buffer = alignmentBuffer;
            preScatterBarriers[preScatterBarrierCount].size = VK_WHOLE_SIZE;
            ++preScatterBarrierCount;

            preScatterBarriers[preScatterBarrierCount].sType =
                VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER;
            preScatterBarriers[preScatterBarrierCount].srcAccessMask =
                VK_ACCESS_HOST_WRITE_BIT;
            preScatterBarriers[preScatterBarrierCount].dstAccessMask =
                VK_ACCESS_SHADER_READ_BIT;
            preScatterBarriers[preScatterBarrierCount].buffer = robustnessBuffer;
            preScatterBarriers[preScatterBarrierCount].size = VK_WHOLE_SIZE;
            ++preScatterBarrierCount;

            preScatterBarriers[preScatterBarrierCount].sType =
                VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER;
            preScatterBarriers[preScatterBarrierCount].srcAccessMask =
                VK_ACCESS_HOST_WRITE_BIT;
            preScatterBarriers[preScatterBarrierCount].dstAccessMask =
                VK_ACCESS_SHADER_READ_BIT;
            preScatterBarriers[preScatterBarrierCount].buffer =
                flowVarianceBuffer;
            preScatterBarriers[preScatterBarrierCount].size = VK_WHOLE_SIZE;
            ++preScatterBarrierCount;
          }
          vkCmdPipelineBarrier(cb, VK_PIPELINE_STAGE_HOST_BIT,
                               VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT, 0, 0,
                               nullptr, preScatterBarrierCount,
                               preScatterBarriers, 0, nullptr);

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

          vkCmdBindPipeline(cb, VK_PIPELINE_BIND_POINT_COMPUTE,
                            colorScatterPipeline);
          for (int colorIdx = 0; colorIdx < 2; ++colorIdx) {
            updateImageDescriptorSet(device, colorScatterSets[colorIdx],
                                     uploadedFrames[i].view, sampler, 0);
            vkCmdBindDescriptorSets(cb, VK_PIPELINE_BIND_POINT_COMPUTE,
                                    colorScatterPipelineLayout, 0, 1,
                                    &colorScatterSets[colorIdx], 0, nullptr);

            pc.isFirstFrame = isRef ? 1 : 0;
            pc.outputChannel = (colorIdx == 0) ? 0u : 2u;
            pc.planeIndex = pc.outputChannel;
            pc.bufferStride = tileW + 16;
            pc.tileX = tx * tileW;
            pc.tileY = ty * tileH;
            pc.tileW = currentTileW;
            pc.tileH = currentTileH;

            vkCmdPushConstants(cb, colorScatterPipelineLayout,
                               VK_SHADER_STAGE_COMPUTE_BIT, 0, sizeof(pc),
                               &pc);
            vkCmdDispatch(cb, (width + 15) / 16, (height + 15) / 16, 1);
          }

          VkBufferMemoryBarrier colorBarriers[2]{};
          for (int c = 0; c < 2; ++c) {
            colorBarriers[c].sType = VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER;
            colorBarriers[c].srcAccessMask = VK_ACCESS_SHADER_WRITE_BIT;
            colorBarriers[c].dstAccessMask = VK_ACCESS_SHADER_READ_BIT;
            colorBarriers[c].buffer = rbScatterAccumBuffers[c];
            colorBarriers[c].size = VK_WHOLE_SIZE;
          }
          vkCmdPipelineBarrier(cb, VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT,
                               VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT, 0, 0,
                               nullptr, 2, colorBarriers, 0, nullptr);

          vm.endSingleTimeCommands(cb);
          perf.scatterMs += elapsedMillis(scatterStart);
        }
      } // end for each frame

      // Normalize this tile and write to the fused Bayer output buffer.
      // NOTE: Bind staging buffer with a row offset to stay within
      // maxStorageBufferRange. The normalize shaders write local row indices
      // into the bound row band, but still use global output coordinates for
      // CFA parity.
      {
        const auto normalizeStart = PerfClock::now();
        VkCommandBuffer cb = vm.beginSingleTimeCommands();

        // Compute the byte offset into staging buffer for this tile's row band
        VkDeviceSize rowBandOffset =
            (VkDeviceSize)(ty * tileH) * outputW * sizeof(uint16_t);
        // Range covers from this row band to the end of the buffer
        VkDeviceSize stagingTotalSize =
            (VkDeviceSize)outputW * outputH * sizeof(uint16_t);
        VkDeviceSize rowBandRange = stagingTotalSize - rowBandOffset;

        for (int colorIdx = 0; colorIdx < 2; ++colorIdx) {
          updateBufferDescriptorSet(device, colorNormalizeSets[colorIdx],
                                    fusedBayerBuffer, rowBandRange, 0,
                                    rowBandOffset);
          updateBufferDescriptorSet(device, colorNormalizeSets[colorIdx],
                                    rbScatterAccumBuffers[colorIdx],
                                    VK_WHOLE_SIZE, 1);
          updateBufferDescriptorSet(device, colorNormalizeSets[colorIdx],
                                    priorBayerBuffer, rowBandRange, 2,
                                    rowBandOffset);
          updateBufferDescriptorSet(device, colorNormalizeSets[colorIdx],
                                    priorWeightBuffer, rowBandRange, 3,
                                    rowBandOffset);
          vkCmdBindPipeline(cb, VK_PIPELINE_BIND_POINT_COMPUTE,
                            colorNormalizePipeline);
          vkCmdBindDescriptorSets(cb, VK_PIPELINE_BIND_POINT_COMPUTE,
                                  colorNormalizePipelineLayout, 0, 1,
                                  &colorNormalizeSets[colorIdx], 0, nullptr);

          PushConstants colorPc{};
          colorPc.width = outputW;
          colorPc.height = outputH;
          colorPc.scale = (float)scale;
          colorPc.planeWidth = outputW;
          colorPc.planeHeight = outputH;
          colorPc.bufferStride = tileW + 16;
          colorPc.tileX = tx * tileW;
          colorPc.tileY = ty * tileH;
          colorPc.tileW = currentTileW;
          colorPc.tileH = currentTileH;
          colorPc.planeIndex = (colorIdx == 0) ? 0u : 2u;
          colorPc.cfaPattern = (uint32_t)mCfaPattern;
          colorPc.whiteLevel = mWhiteLevel;
          memcpy(colorPc.blackLevel, mBlackLevel, 4 * sizeof(float));
          memcpy(colorPc.wbGains, mWbGains, 4 * sizeof(float));

          vkCmdPushConstants(cb, colorNormalizePipelineLayout,
                             VK_SHADER_STAGE_COMPUTE_BIT, 0, sizeof(colorPc),
                             &colorPc);
          vkCmdDispatch(cb, (currentTileW + 15) / 16,
                        (currentTileH + 15) / 16, 1);
        }

        updateBufferDescriptorSet(device, greenNormalizeSet, fusedBayerBuffer,
                                  rowBandRange, 0, rowBandOffset);
        updateBufferDescriptorSet(device, greenNormalizeSet,
                                  greenPhaseAccumBuffers[0], VK_WHOLE_SIZE, 1);
        updateBufferDescriptorSet(device, greenNormalizeSet,
                                  greenPhaseAccumBuffers[1], VK_WHOLE_SIZE, 2);
        updateBufferDescriptorSet(device, greenNormalizeSet, priorBayerBuffer,
                                  rowBandRange, 3, rowBandOffset);
        updateBufferDescriptorSet(device, greenNormalizeSet, priorWeightBuffer,
                                  rowBandRange, 4, rowBandOffset);
        vkCmdBindPipeline(cb, VK_PIPELINE_BIND_POINT_COMPUTE,
                          greenNormalizePipeline);
        vkCmdBindDescriptorSets(cb, VK_PIPELINE_BIND_POINT_COMPUTE,
                                greenNormalizePipelineLayout, 0, 1,
                                &greenNormalizeSet, 0, nullptr);

        PushConstants greenPc{};
        greenPc.width = outputW;
        greenPc.height = outputH;
        greenPc.scale = (float)scale;
        greenPc.planeWidth = outputW;
        greenPc.planeHeight = outputH;
        greenPc.bufferStride = tileW + 16;
        greenPc.tileX = tx * tileW;
        greenPc.tileY = ty * tileH;
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
        perf.normalizeMs += elapsedMillis(normalizeStart);
      }

    } // end for tx
  } // end for ty
  TIME_END(phase4_TileProcessing);
  perf.tileProcessingMs = elapsed_phase4_TileProcessing;

  // =====================================================================
  // Phase 5: Read back result from staging buffer
  // =====================================================================
  {
    TIME_START(phase5_OutputReadback);
    void *mapData;
    VK_CHECK(
        vkMapMemory(device, fusedBayerMemory, 0, VK_WHOLE_SIZE, 0, &mapData));
    size_t reqSize = (size_t)outputW * outputH * sizeof(uint16_t);
    if (bufferSize >= reqSize) {
      memcpy(outBuffer, mapData, reqSize);
    } else {
      LOGE("Buffer too small! Req: %zu, Has: %zu", reqSize, bufferSize);
    }
    vkUnmapMemory(device, fusedBayerMemory);
    TIME_END(phase5_OutputReadback);
    perf.outputReadbackMs = elapsed_phase5_OutputReadback;
  }

  // =====================================================================
  // Cleanup
  // =====================================================================
  const auto cleanupStart = PerfClock::now();
  for (auto &uf : uploadedFrames) {
    if (uf.view)
      vkDestroyImageView(device, uf.view, nullptr);
    if (uf.image)
      vkDestroyImage(device, uf.image, nullptr);
    if (uf.mem)
      vkFreeMemory(device, uf.mem, nullptr);
  }

  vkDestroySampler(device, sampler, nullptr);
  perf.cleanupMs = elapsedMillis(cleanupStart);
  perf.totalMs = elapsedMillis(processStackStart);
  perf.logSummary(outputW, outputH, scale);
  return true;
}

void VulkanRawStacker::releaseVulkanResources() {
  VkDevice device = VulkanManager::getInstance().getDevice();
  if (device == VK_NULL_HANDLE)
    return;

  if (descriptorPool != VK_NULL_HANDLE)
    vkDestroyDescriptorPool(device, descriptorPool, nullptr);
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

  if (referenceNormalizeSetLayout)
    vkDestroyDescriptorSetLayout(device, referenceNormalizeSetLayout, nullptr);
  if (referenceNormalizePipelineLayout)
    vkDestroyPipelineLayout(device, referenceNormalizePipelineLayout, nullptr);
  if (referenceNormalizePipeline)
    vkDestroyPipeline(device, referenceNormalizePipeline, nullptr);

  if (referencePriorSetLayout)
    vkDestroyDescriptorSetLayout(device, referencePriorSetLayout, nullptr);
  if (referencePriorPipelineLayout)
    vkDestroyPipelineLayout(device, referencePriorPipelineLayout, nullptr);
  if (referencePriorPipeline)
    vkDestroyPipeline(device, referencePriorPipeline, nullptr);

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

  if (fusedBayerBuffer != VK_NULL_HANDLE)
    vkDestroyBuffer(device, fusedBayerBuffer, nullptr);
  if (fusedBayerMemory != VK_NULL_HANDLE)
    vkFreeMemory(device, fusedBayerMemory, nullptr);

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
  if (flowVarianceBuffer)
    vkDestroyBuffer(device, flowVarianceBuffer, nullptr);
  if (flowVarianceMemory)
    vkFreeMemory(device, flowVarianceMemory, nullptr);
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
  if (priorBayerBuffer)
    vkDestroyBuffer(device, priorBayerBuffer, nullptr);
  if (priorBayerMemory)
    vkFreeMemory(device, priorBayerMemory, nullptr);
  if (priorWeightBuffer)
    vkDestroyBuffer(device, priorWeightBuffer, nullptr);
  if (priorWeightMemory)
    vkFreeMemory(device, priorWeightMemory, nullptr);
  if (normalizedReferenceBuffer)
    vkDestroyBuffer(device, normalizedReferenceBuffer, nullptr);
  if (normalizedReferenceMemory)
    vkFreeMemory(device, normalizedReferenceMemory, nullptr);

  if (lscView)
    vkDestroyImageView(device, lscView, nullptr);
  if (lscImage)
    vkDestroyImage(device, lscImage, nullptr);
  if (lscMemory)
    vkFreeMemory(device, lscMemory, nullptr);
  if (lscSampler)
    vkDestroySampler(device, lscSampler, nullptr);
}
