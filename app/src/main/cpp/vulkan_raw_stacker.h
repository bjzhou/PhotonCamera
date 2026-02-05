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
  VulkanRawStacker(uint32_t width, uint32_t height, bool enableSuperRes);
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

  // Normalization pipeline
  VkDescriptorSetLayout normalizeSetLayout = VK_NULL_HANDLE;
  std::vector<VkDescriptorSet> normalizeSets;
  VkPipelineLayout normalizePipelineLayout = VK_NULL_HANDLE;
  VkPipeline normalizePipeline = VK_NULL_HANDLE;

  // Staging buffer for result copy
  VkBuffer stagingBuffer = VK_NULL_HANDLE;
  VkDeviceMemory stagingMemory = VK_NULL_HANDLE;

  std::vector<GrayImage> referencePyramid;

  struct PushConstants {
    float offsetX, offsetY;
    float scale;
    uint32_t planeWidth;   // Plane width (sensor_width/2 * scale)
    uint32_t planeHeight;  // Plane height (sensor_height/2 * scale)
    uint32_t sensorWidth;  // Full sensor width
    uint32_t sensorHeight; // Full sensor height
    float baseNoise;
    uint32_t isFirstFrame;
    uint32_t planeIndex; // Which plane: 0=R, 1=Gr, 2=Gb, 3=B
    uint32_t cfaPattern;
    uint32_t tileX;
    uint32_t tileY;
    uint32_t tileW;
    uint32_t tileH;
    uint32_t bufferStride;
  };

  struct FrameData {
    std::vector<uint16_t> rawData;
    int cfaPattern;
  };
  std::vector<FrameData> pendingFrames;

  void initVulkanResources();
  void releaseVulkanResources();
  void createPipelines();
  bool processFrame(const uint16_t *rawData, int rowStride, int cfaPattern);
};
