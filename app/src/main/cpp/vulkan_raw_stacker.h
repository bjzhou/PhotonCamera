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
                   const float *blackLevel, float whiteLevel,
                   const float *wbGains, const float *noiseModel);
  ~VulkanRawStacker();

  // Add a frame from CPU memory (uint16_t RAW data)
  bool addFrame(const uint16_t *rawData, int rowStride, int cfaPattern);

  // Process all queued frames and output the result
  bool processStack(uint16_t *outBuffer, size_t bufferSize);

  int getScale() const { return enableSuperRes ? 2 : 1; }

private:
  uint32_t width, height;
  bool enableSuperRes;
  bool isFirstFrame = true;
  int mCfaPattern = 0; // 0=RGGB, 1=GRBG, 2=GBRG, 3=BGGR

  // Dynamic Tiling (same as YUV stacker)
  int numTilesX = 1;
  int numTilesY = 1;

  std::vector<VkBuffer> accumBuffers;
  std::vector<VkDeviceMemory> accumMemories;

  VkDescriptorSetLayout descriptorSetLayout = VK_NULL_HANDLE;
  VkDescriptorPool descriptorPool = VK_NULL_HANDLE;
  std::vector<VkDescriptorSet> accumSets;
  VkPipelineLayout pipelineLayout = VK_NULL_HANDLE;
  VkPipeline accumulatePipeline = VK_NULL_HANDLE;

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

  // Normalization
  VkDescriptorSetLayout normalizeSetLayout = VK_NULL_HANDLE;
  VkPipelineLayout normalizePipelineLayout = VK_NULL_HANDLE;
  VkPipeline normalizePipeline = VK_NULL_HANDLE;
  std::vector<VkDescriptorSet> normalizeSets;

  // Intermediate Buffers
  VkBuffer kernelBuffer = VK_NULL_HANDLE; // Structure Tensor Output
  VkDeviceMemory kernelMemory = VK_NULL_HANDLE;

  VkBuffer alignmentBuffer = VK_NULL_HANDLE; // LK Alignment Output
  VkDeviceMemory alignmentMemory = VK_NULL_HANDLE;

  VkBuffer robustnessBuffer = VK_NULL_HANDLE; // Robustness Mask Output
  VkDeviceMemory robustnessMemory = VK_NULL_HANDLE;

  VkBuffer stagingBuffer = VK_NULL_HANDLE;
  VkDeviceMemory stagingMemory = VK_NULL_HANDLE;

  int tileSize = 16;
  int gridW = 0;
  int gridH = 0;

  // Accumulated RGB buffers (3 planes: R, G, B) instead of Bayer
  // We reuse accumBuffers but maybe need to change count/size logic?
  // Current logic: numTilesX * numTilesY * 4.
  // We will likely use indices 0, 1, 2 for R, G, B.

  struct PushConstants {
    uint32_t width;        // 0
    uint32_t height;       // 4
    uint32_t planeWidth;   // 8
    uint32_t planeHeight;  // 12
    uint32_t sensorWidth;  // 16
    uint32_t sensorHeight; // 20

    float offsetX; // 24
    float offsetY; // 28
    float scale;   // 32

    // Metadata
    float blackLevel[4]; // 36, 40, 44, 48
    float whiteLevel;    // 52
    float wbGains[4];    // 56, 60, 64, 68
    float noiseModel[2]; // 72, 76

    uint32_t isFirstFrame;  // 80
    uint32_t outputChannel; // 84
    uint32_t cfaPattern;    // 88
    uint32_t planeIndex;    // 92

    uint32_t tileX;        // 96
    uint32_t tileY;        // 100
    uint32_t tileW;        // 104
    uint32_t tileH;        // 108
    uint32_t bufferStride; // 112
    uint32_t gridW;        // 116
    uint32_t gridH;        // 120
    uint32_t tileSize;     // 124

    float noiseAlpha; // 128
    float noiseBeta;  // 132
    float baseNoise;  // 136
  };

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

  void initVulkanResources();
  void releaseVulkanResources();
  void createPipelines();
};
