#pragma once

#include "stacking_utils.h"
#include "vulkan_manager.h"
#include "vulkan_utils.h"
#include <vector>

class VulkanImageStacker {
public:
  VulkanImageStacker(uint32_t width, uint32_t height, bool enableSuperRes);
  ~VulkanImageStacker();

  bool addFrame(AHardwareBuffer *buffer);
  bool processStack(uint32_t *outBitmap, uint32_t outWidth, uint32_t outHeight,
                    uint32_t stride, int rotation);

private:
  uint32_t width, height;
  bool enableSuperRes;
  bool isFirstFrame = true;

  VulkanImage accumulator;

  // Dynamic Tiling
  int numTilesX = 1;
  int numTilesY = 1;

  std::vector<VkBuffer> accumBuffers;
  std::vector<VkDeviceMemory> accumMemories;

  VkDescriptorSetLayout descriptorSetLayout = VK_NULL_HANDLE;
  VkDescriptorPool descriptorPool = VK_NULL_HANDLE;
  std::vector<VkDescriptorSet> accumSets;
  VkPipelineLayout pipelineLayout = VK_NULL_HANDLE;
  VkPipeline accumulatePipeline = VK_NULL_HANDLE;

  VkSampler immutableSampler = VK_NULL_HANDLE;
  VkDescriptorSetLayout normalizeSetLayout = VK_NULL_HANDLE;
  std::vector<VkDescriptorSet> normalizeSets;
  VkPipelineLayout normalizePipelineLayout = VK_NULL_HANDLE;
  VkPipeline normalizePipeline = VK_NULL_HANDLE;

  // Staging buffer for result copy
  VkBuffer stagingBuffer = VK_NULL_HANDLE;
  VkDeviceMemory stagingMemory = VK_NULL_HANDLE;

  // Reference for alignment
  std::vector<GrayImage> referencePyramid;

  struct PushConstants {
    // Transform matrix as individual floats (avoids array padding issues)
    float t0, t1, t2, t3, t4, t5;
    float offsetX, offsetY;
    float scale;
    uint32_t width;
    uint32_t height;
    float baseNoise;
    uint32_t isFirstFrame;
    // Tile info
    uint32_t tileX;
    uint32_t tileY;
    uint32_t tileW;
    uint32_t tileH;
  };

  std::vector<AHardwareBuffer *> pendingBuffers;

  void initVulkanResources();
  void releaseVulkanResources();
  void createPipelines(VkSampler immutableSampler);
  bool processFrame(AHardwareBuffer *buffer);
};
