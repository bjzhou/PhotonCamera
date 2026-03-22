#pragma once

#include "stacking_utils.h"
#include "vulkan_manager.h"
#include "vulkan_utils.h"
#include <cstdint>
#include <vector>

/**
 * VulkanRawStacker - GPU-accelerated RAW image stacking using Vulkan
 *
 * This class processes RAW sensor data (Bayer pattern) using Vulkan compute
 * shaders. It follows the same design pattern as VulkanImageStacker but
 * optimized for 16-bit RAW data.
 */
class VulkanRawStacker {
public:
  VulkanRawStacker(uint32_t width, uint32_t height, bool enableSuperRes,
                   float superResScale,
                   const float *blackLevel, float whiteLevel,
                   const float *wbGains, const float *noiseModel,
                   const float *lensShadingMap = nullptr, uint32_t lscWidth = 0,
                   uint32_t lscHeight = 0);
  ~VulkanRawStacker();

  // Add a frame from CPU memory (uint16_t RAW data)
  bool addFrame(const uint16_t *rawData, int rowStride, int cfaPattern);

  // Process all queued frames and output the result
  bool processStack(uint16_t *outBuffer, size_t bufferSize);

private:
  uint32_t width, height;
  bool mEnableSuperRes = false;
  float mSuperResScale = 1.0f;
  bool isFirstFrame = true;
  int mCfaPattern = 0; // 0=RGGB, 1=GRBG, 2=GBRG, 3=BGGR

  // Dynamic Tiling (same as YUV stacker)
  int numTilesX = 1;
  int numTilesY = 1;

  VkDescriptorPool descriptorPool = VK_NULL_HANDLE;

  // New Pipelines for Handheld Super-Res
  VkPipelineLayout alignLkPipelineLayout = VK_NULL_HANDLE;
  VkPipeline alignLkPipeline = VK_NULL_HANDLE;
  VkDescriptorSetLayout alignLkSetLayout = VK_NULL_HANDLE;
  std::vector<VkDescriptorSet> alignLkSets; // Per-tile sets

  VkPipelineLayout structureTensorPipelineLayout = VK_NULL_HANDLE;
  VkPipeline structureTensorPipeline = VK_NULL_HANDLE;
  VkDescriptorSetLayout structureTensorSetLayout = VK_NULL_HANDLE;
  VkDescriptorSet structureTensorSet = VK_NULL_HANDLE; // One for base frame

  VkPipelineLayout robustnessPipelineLayout = VK_NULL_HANDLE;
  VkPipeline robustnessPipeline = VK_NULL_HANDLE;
  VkDescriptorSetLayout robustnessSetLayout = VK_NULL_HANDLE;
  std::vector<VkDescriptorSet> robustnessSets; // Per-frame sets

  // Green HR scatter/splat path
  VkPipelineLayout greenScatterPipelineLayout = VK_NULL_HANDLE;
  VkPipeline greenScatterPipeline = VK_NULL_HANDLE;
  VkDescriptorSetLayout greenScatterSetLayout = VK_NULL_HANDLE;
  VkDescriptorSet greenScatterSet = VK_NULL_HANDLE;

  VkPipelineLayout colorScatterPipelineLayout = VK_NULL_HANDLE;
  VkPipeline colorScatterPipeline = VK_NULL_HANDLE;
  VkDescriptorSetLayout colorScatterSetLayout = VK_NULL_HANDLE;
  VkDescriptorSet colorScatterSets[2] = {VK_NULL_HANDLE, VK_NULL_HANDLE};

  VkDescriptorSetLayout referenceNormalizeSetLayout = VK_NULL_HANDLE;
  VkPipelineLayout referenceNormalizePipelineLayout = VK_NULL_HANDLE;
  VkPipeline referenceNormalizePipeline = VK_NULL_HANDLE;
  VkDescriptorSet referenceNormalizeSet = VK_NULL_HANDLE;

  VkDescriptorSetLayout referencePriorSetLayout = VK_NULL_HANDLE;
  VkPipelineLayout referencePriorPipelineLayout = VK_NULL_HANDLE;
  VkPipeline referencePriorPipeline = VK_NULL_HANDLE;
  VkDescriptorSet referencePriorSet = VK_NULL_HANDLE;

  VkDescriptorSetLayout greenNormalizeSetLayout = VK_NULL_HANDLE;
  VkPipelineLayout greenNormalizePipelineLayout = VK_NULL_HANDLE;
  VkPipeline greenNormalizePipeline = VK_NULL_HANDLE;
  VkDescriptorSet greenNormalizeSet = VK_NULL_HANDLE;

  VkDescriptorSetLayout colorNormalizeSetLayout = VK_NULL_HANDLE;
  VkPipelineLayout colorNormalizePipelineLayout = VK_NULL_HANDLE;
  VkPipeline colorNormalizePipeline = VK_NULL_HANDLE;
  VkDescriptorSet colorNormalizeSets[2] = {VK_NULL_HANDLE, VK_NULL_HANDLE};

  // Intermediate Buffers
  VkBuffer kernelBuffer = VK_NULL_HANDLE; // Structure Tensor Output
  VkDeviceMemory kernelMemory = VK_NULL_HANDLE;

  VkBuffer alignmentBuffer = VK_NULL_HANDLE; // LK Alignment Output
  VkDeviceMemory alignmentMemory = VK_NULL_HANDLE;

  VkBuffer robustnessBuffer = VK_NULL_HANDLE; // Robustness Mask Output
  VkDeviceMemory robustnessMemory = VK_NULL_HANDLE;

  VkBuffer flowVarianceBuffer = VK_NULL_HANDLE;
  VkDeviceMemory flowVarianceMemory = VK_NULL_HANDLE;

  VkBuffer localTileMaskBuffer = VK_NULL_HANDLE;
  VkDeviceMemory localTileMaskMemory = VK_NULL_HANDLE;

  VkBuffer greenPhaseAccumBuffers[2] = {VK_NULL_HANDLE, VK_NULL_HANDLE};
  VkDeviceMemory greenPhaseAccumMemories[2] = {VK_NULL_HANDLE, VK_NULL_HANDLE};
  VkBuffer rbScatterAccumBuffers[2] = {VK_NULL_HANDLE, VK_NULL_HANDLE};
  VkDeviceMemory rbScatterAccumMemories[2] = {VK_NULL_HANDLE, VK_NULL_HANDLE};

  VkBuffer priorBayerBuffer = VK_NULL_HANDLE;
  VkDeviceMemory priorBayerMemory = VK_NULL_HANDLE;
  VkBuffer priorWeightBuffer = VK_NULL_HANDLE;
  VkDeviceMemory priorWeightMemory = VK_NULL_HANDLE;
  VkBuffer normalizedReferenceBuffer = VK_NULL_HANDLE;
  VkDeviceMemory normalizedReferenceMemory = VK_NULL_HANDLE;

  VkBuffer fusedBayerBuffer = VK_NULL_HANDLE;
  VkDeviceMemory fusedBayerMemory = VK_NULL_HANDLE;

  // Lens Shading Map
  VkImage lscImage = VK_NULL_HANDLE;
  VkDeviceMemory lscMemory = VK_NULL_HANDLE;
  VkImageView lscView = VK_NULL_HANDLE;
  VkSampler lscSampler = VK_NULL_HANDLE;
  uint32_t mLscWidth = 0;
  uint32_t mLscHeight = 0;
  std::vector<float> mLensShadingMap;

  int tileSize = 16;
  int gridW = 0;
  int gridH = 0;

  // Reference pyramid for CPU-side coarse alignment (plane resolution proxy)
  std::vector<GrayImage> referencePyramid;

  struct PushConstants {
    uint32_t width;        // 0
    uint32_t height;       // 4
    uint32_t planeWidth;   // 8
    uint32_t planeHeight;  // 12
    uint32_t sensorWidth;  // 16
    uint32_t sensorHeight; // 20

    float scale; // 24

    // Metadata
    float blackLevel[4]; // 28, 32, 36, 40
    float whiteLevel;    // 44
    float wbGains[4];    // 48, 52, 56, 60

    uint32_t isFirstFrame;  // 64
    uint32_t outputChannel; // 68
    uint32_t cfaPattern;    // 72
    uint32_t planeIndex;    // 76

    uint32_t tileX;        // 80
    uint32_t tileY;        // 84
    uint32_t tileW;        // 88
    uint32_t tileH;        // 92
    uint32_t bufferStride; // 96
    uint32_t gridW;        // 100
    uint32_t gridH;        // 104
    uint32_t tileSize;     // 108

    float noiseAlpha; // 112
    float noiseBeta;  // 116
    float baseNoise;  // 120
    float frameWeight; // 124
  }; // Total size: 128 bytes

  // Metadata storage
  float mBlackLevel[4] = {0, 0, 0, 0};
  float mWhiteLevel = 1023.0f;
  float mWbGains[4] = {1, 1, 1, 1};
  float mNoiseModel[2] = {0, 0};

  struct FrameData {
    std::vector<uint16_t> rawData;
    int cfaPattern;
    float score = 0.0f;
  };
  std::vector<FrameData> pendingFrames;

  GrayImage buildAlignmentProxy(const FrameData &frame) const;
  float calculateFrameScore(const FrameData &frame) const;
  void selectReferenceFrame();

  void initVulkanResources();
  void releaseVulkanResources();
  void createPipelines();
};
