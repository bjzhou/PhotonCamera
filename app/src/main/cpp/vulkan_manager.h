#pragma once

#include "common.h"
#include <memory>
#include <string>
#include <vector>
#ifndef VK_USE_PLATFORM_ANDROID_KHR
#define VK_USE_PLATFORM_ANDROID_KHR
#endif
#include <vulkan/vulkan.h>
#include <vulkan/vulkan_android.h>

class VulkanManager {
public:
  static VulkanManager &getInstance() {
    static VulkanManager instance;
    return instance;
  }

  bool init();
  void release();

  VkDevice getDevice() const { return device; }
  VkPhysicalDevice getPhysicalDevice() const { return physicalDevice; }
  VkQueue getComputeQueue() const { return computeQueue; }
  uint32_t getComputeQueueFamilyIndex() const {
    return computeQueueFamilyIndex;
  }

  VkCommandBuffer beginSingleTimeCommands();
  void endSingleTimeCommands(VkCommandBuffer commandBuffer);

  uint32_t findMemoryType(uint32_t typeFilter,
                          VkMemoryPropertyFlags properties);

  VkShaderModule createShaderModule(const std::vector<uint32_t> &code);

  bool isHardwareBufferSupported() const { return hardwareBufferSupported; }

private:
  VulkanManager() = default;
  ~VulkanManager();

  VkInstance instance = VK_NULL_HANDLE;
  VkPhysicalDevice physicalDevice = VK_NULL_HANDLE;
  VkDevice device = VK_NULL_HANDLE;
  VkQueue computeQueue = VK_NULL_HANDLE;
  uint32_t computeQueueFamilyIndex = 0;
  VkCommandPool commandPool = VK_NULL_HANDLE;

  bool hardwareBufferSupported = false;

  bool createInstance();
  bool pickPhysicalDevice();
  bool createLogicalDevice();
  bool createCommandPool();
};
