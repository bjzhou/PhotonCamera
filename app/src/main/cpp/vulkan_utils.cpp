#include "vulkan_utils.h"
#include "common.h"

bool VulkanBufferImporter::importHardwareBuffer(
    AHardwareBuffer *buffer, VulkanImage &outImage,
    VkSamplerYcbcrConversion existingConversion) {
  VulkanManager &vm = VulkanManager::getInstance();
  VkDevice device = vm.getDevice();

  AHardwareBuffer_Desc desc;
  AHardwareBuffer_describe(buffer, &desc);
  outImage.width = desc.width;
  outImage.height = desc.height;

  // Get Android Hardware Buffer properties
  VkAndroidHardwareBufferFormatPropertiesANDROID formatProps{};
  formatProps.sType =
      VK_STRUCTURE_TYPE_ANDROID_HARDWARE_BUFFER_FORMAT_PROPERTIES_ANDROID;

  VkAndroidHardwareBufferPropertiesANDROID bufferProps{};
  bufferProps.sType =
      VK_STRUCTURE_TYPE_ANDROID_HARDWARE_BUFFER_PROPERTIES_ANDROID;
  bufferProps.pNext = &formatProps;

  PFN_vkGetAndroidHardwareBufferPropertiesANDROID pfnGetProps =
      (PFN_vkGetAndroidHardwareBufferPropertiesANDROID)vkGetDeviceProcAddr(
          device, "vkGetAndroidHardwareBufferPropertiesANDROID");

  if (!pfnGetProps || pfnGetProps(device, buffer, &bufferProps) != VK_SUCCESS) {
    LOGE("Failed to get hardware buffer properties");
    return false;
  }

  outImage.format = formatProps.format;

  // Create Image
  VkExternalFormatANDROID externalFormat{};
  externalFormat.sType = VK_STRUCTURE_TYPE_EXTERNAL_FORMAT_ANDROID;
  externalFormat.externalFormat = formatProps.externalFormat;

  VkExternalMemoryImageCreateInfo externalCreateInfo{};
  externalCreateInfo.sType =
      VK_STRUCTURE_TYPE_EXTERNAL_MEMORY_IMAGE_CREATE_INFO;
  externalCreateInfo.pNext =
      (formatProps.format == VK_FORMAT_UNDEFINED) ? &externalFormat : nullptr;
  externalCreateInfo.handleTypes =
      VK_EXTERNAL_MEMORY_HANDLE_TYPE_ANDROID_HARDWARE_BUFFER_BIT_ANDROID;

  VkImageCreateInfo imageInfo{};
  imageInfo.sType = VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO;
  imageInfo.pNext = &externalCreateInfo;
  imageInfo.imageType = VK_IMAGE_TYPE_2D;
  imageInfo.format = formatProps.format;
  imageInfo.extent = {desc.width, desc.height, 1};
  imageInfo.mipLevels = 1;
  imageInfo.arrayLayers = 1;
  imageInfo.samples = VK_SAMPLE_COUNT_1_BIT;
  imageInfo.tiling = VK_IMAGE_TILING_OPTIMAL;
  imageInfo.usage = VK_IMAGE_USAGE_SAMPLED_BIT;
  imageInfo.sharingMode = VK_SHARING_MODE_EXCLUSIVE;
  imageInfo.initialLayout = VK_IMAGE_LAYOUT_UNDEFINED;

  if (vkCreateImage(device, &imageInfo, nullptr, &outImage.image) !=
      VK_SUCCESS) {
    LOGE("Failed to create image for hardware buffer");
    return false;
  }

  // Allocate Memory
  VkImportAndroidHardwareBufferInfoANDROID importInfo{};
  importInfo.sType =
      VK_STRUCTURE_TYPE_IMPORT_ANDROID_HARDWARE_BUFFER_INFO_ANDROID;
  importInfo.buffer = buffer;

  VkMemoryAllocateInfo allocInfo{};
  allocInfo.sType = VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO;
  allocInfo.pNext = &importInfo;
  allocInfo.allocationSize = bufferProps.allocationSize;
  allocInfo.memoryTypeIndex = vm.findMemoryType(
      bufferProps.memoryTypeBits, VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT);

  if (vkAllocateMemory(device, &allocInfo, nullptr, &outImage.memory) !=
      VK_SUCCESS) {
    LOGE("Failed to allocate memory for hardware buffer");
    return false;
  }

  vkBindImageMemory(device, outImage.image, outImage.memory, 0);

  // We should create a YCbCr conversion if it's an external format OR a known
  // multi-planar YUV format
  bool isYUV = (formatProps.format == VK_FORMAT_UNDEFINED ||
                formatProps.format == VK_FORMAT_G8_B8R8_2PLANE_420_UNORM ||
                formatProps.format == VK_FORMAT_G8_B8_R8_3PLANE_420_UNORM ||
                formatProps.format >= 1000156000); // Check for YCbCr formats

  if (isYUV) {
    if (existingConversion != VK_NULL_HANDLE) {
      outImage.ycbcrConversion = existingConversion;
    } else {
      VkSamplerYcbcrConversionCreateInfo ycbcrCreateInfo{};
      ycbcrCreateInfo.sType =
          VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_CREATE_INFO;
      ycbcrCreateInfo.format = formatProps.format;

      ycbcrCreateInfo.ycbcrModel = formatProps.suggestedYcbcrModel;
      ycbcrCreateInfo.ycbcrRange = formatProps.suggestedYcbcrRange;

      ycbcrCreateInfo.components = {
          VK_COMPONENT_SWIZZLE_R, VK_COMPONENT_SWIZZLE_G,
          VK_COMPONENT_SWIZZLE_B, VK_COMPONENT_SWIZZLE_A};

      ycbcrCreateInfo.xChromaOffset = formatProps.suggestedXChromaOffset;
      ycbcrCreateInfo.yChromaOffset = formatProps.suggestedYChromaOffset;
      ycbcrCreateInfo.chromaFilter = VK_FILTER_LINEAR;
      ycbcrCreateInfo.forceExplicitReconstruction = VK_FALSE;

      VkExternalFormatANDROID extFormat{};
      extFormat.sType = VK_STRUCTURE_TYPE_EXTERNAL_FORMAT_ANDROID;
      extFormat.externalFormat = formatProps.externalFormat;
      if (formatProps.format == VK_FORMAT_UNDEFINED) {
        ycbcrCreateInfo.pNext = &extFormat;
      }

      auto pfnCreate = (PFN_vkCreateSamplerYcbcrConversion)vkGetDeviceProcAddr(
          device, "vkCreateSamplerYcbcrConversion");
      if (pfnCreate) {
        if (pfnCreate(device, &ycbcrCreateInfo, nullptr,
                      &outImage.ycbcrConversion) != VK_SUCCESS) {
          LOGE("Failed to create YCbCr conversion");
          return false;
        }
      }
    }
  }

  // Create Image View with Conversion Info
  VkSamplerYcbcrConversionInfo ycbcrInfo{};
  ycbcrInfo.sType = VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_INFO;
  ycbcrInfo.conversion = outImage.ycbcrConversion;

  VkImageViewCreateInfo viewInfo{};
  viewInfo.sType = VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO;
  viewInfo.pNext =
      (outImage.ycbcrConversion != VK_NULL_HANDLE) ? &ycbcrInfo : nullptr;
  viewInfo.image = outImage.image;
  viewInfo.viewType = VK_IMAGE_VIEW_TYPE_2D;
  viewInfo.format = formatProps.format;
  viewInfo.subresourceRange = {VK_IMAGE_ASPECT_COLOR_BIT, 0, 1, 0, 1};

  if (vkCreateImageView(device, &viewInfo, nullptr, &outImage.viewY) !=
      VK_SUCCESS) {
    LOGE("Failed to create image view");
    return false;
  }

  // Create Sampler (This will be used as Immutable in the layout)
  VkSamplerCreateInfo samplerInfo{};
  samplerInfo.sType = VK_STRUCTURE_TYPE_SAMPLER_CREATE_INFO;
  samplerInfo.pNext =
      (outImage.ycbcrConversion != VK_NULL_HANDLE) ? &ycbcrInfo : nullptr;
  samplerInfo.magFilter = VK_FILTER_LINEAR;
  samplerInfo.minFilter = VK_FILTER_LINEAR;
  samplerInfo.mipmapMode = VK_SAMPLER_MIPMAP_MODE_NEAREST;
  samplerInfo.addressModeU = VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE;
  samplerInfo.addressModeV = VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE;
  samplerInfo.addressModeW = VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE;

  if (vkCreateSampler(device, &samplerInfo, nullptr, &outImage.sampler) !=
      VK_SUCCESS) {
    LOGE("Failed to create sampler");
    return false;
  }

  outImage.width = desc.width;
  outImage.height = desc.height;
  outImage.format = formatProps.format;
  return true;
}
