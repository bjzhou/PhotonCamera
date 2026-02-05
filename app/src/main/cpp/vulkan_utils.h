#pragma once

#include "vulkan_manager.h"
#include <android/hardware_buffer.h>
#ifndef VK_USE_PLATFORM_ANDROID_KHR
#define VK_USE_PLATFORM_ANDROID_KHR
#endif
#include <vulkan/vulkan.h>
#include <vulkan/vulkan_android.h>

struct VulkanImage {
  VkImage image = VK_NULL_HANDLE;
  VkDeviceMemory memory = VK_NULL_HANDLE;
  VkImageView viewY = VK_NULL_HANDLE;
  VkImageView viewUV = VK_NULL_HANDLE;
  VkSampler sampler = VK_NULL_HANDLE;
  VkSamplerYcbcrConversion ycbcrConversion = VK_NULL_HANDLE; // Added
  VkDescriptorSet descriptorSet = VK_NULL_HANDLE;
  uint32_t width = 0;
  uint32_t height = 0;
  VkFormat format = VK_FORMAT_UNDEFINED;

  void release(VkDevice device) {
    if (viewY != VK_NULL_HANDLE)
      vkDestroyImageView(device, viewY, nullptr);
    if (viewUV != VK_NULL_HANDLE)
      vkDestroyImageView(device, viewUV, nullptr);
    if (image != VK_NULL_HANDLE)
      vkDestroyImage(device, image, nullptr);
    if (memory != VK_NULL_HANDLE)
      vkFreeMemory(device, memory, nullptr);
    if (sampler != VK_NULL_HANDLE)
      vkDestroySampler(device, sampler, nullptr);
    if (ycbcrConversion != VK_NULL_HANDLE) {
      auto pfnDestroy =
          (PFN_vkDestroySamplerYcbcrConversion)vkGetDeviceProcAddr(
              VulkanManager::getInstance().getDevice(),
              "vkDestroySamplerYcbcrConversion");
      if (pfnDestroy)
        pfnDestroy(device, ycbcrConversion, nullptr);
    }
  }
};

class VulkanBufferImporter {
public:
  static bool importHardwareBuffer(AHardwareBuffer *buffer,
                                   VulkanImage &outImage);
};
