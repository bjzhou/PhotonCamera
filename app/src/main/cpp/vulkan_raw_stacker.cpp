#include "vulkan_raw_stacker.h"
#include "accumulate_raw.comp.h"
#include "common.h"
#include "normalize_raw.comp.h"
#include <algorithm>
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

VulkanRawStacker::VulkanRawStacker(uint32_t w, uint32_t h, bool sr)
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
  LOGI("VulkanRawStacker created: %dx%d, SR=%d", width, height, enableSuperRes);
}

VulkanRawStacker::~VulkanRawStacker() {
  pendingFrames.clear();
  releaseVulkanResources();
}

void VulkanRawStacker::initVulkanResources() {
  VulkanManager &vm = VulkanManager::getInstance();
  VkDevice device = vm.getDevice();

  uint32_t scale = enableSuperRes ? 2 : 1;
  uint32_t planeW = (width / 2) * scale;
  uint32_t planeH = (height / 2) * scale;

  uint32_t tileW = (planeW + numTilesX - 1) / numTilesX;
  uint32_t tileH = (planeH + numTilesY - 1) / numTilesY;
  uint32_t stride = tileW + 16;
  VkDeviceSize tileSize =
      (VkDeviceSize)stride * (tileH + 16) * sizeof(float) * 2;

  int totalBuffers = numTilesX * numTilesY * 4;
  accumBuffers.resize(totalBuffers);
  accumMemories.resize(totalBuffers);
  accumSets.resize(totalBuffers);
  normalizeSets.resize(totalBuffers);

  for (int i = 0; i < totalBuffers; ++i) {
    VkBufferCreateInfo bufferInfo{};
    bufferInfo.sType = VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO;
    bufferInfo.size = tileSize;
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

  VkDeviceSize stagingSize = (VkDeviceSize)width * height * scale * scale * 2;
  VkBufferCreateInfo stagingInfo{};
  stagingInfo.sType = VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO;
  stagingInfo.size = stagingSize;
  stagingInfo.usage =
      VK_BUFFER_USAGE_STORAGE_BUFFER_BIT | VK_BUFFER_USAGE_TRANSFER_SRC_BIT;
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

  VkDescriptorPoolSize poolSizes[2] = {};
  poolSizes[0].type = VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER;
  poolSizes[0].descriptorCount = (uint32_t)totalBuffers * 16;
  poolSizes[1].type = VK_DESCRIPTOR_TYPE_STORAGE_BUFFER;
  poolSizes[1].descriptorCount = (uint32_t)totalBuffers * 16;

  VkDescriptorPoolCreateInfo poolInfo{};
  poolInfo.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO;
  poolInfo.flags = VK_DESCRIPTOR_POOL_CREATE_FREE_DESCRIPTOR_SET_BIT;
  poolInfo.maxSets = (uint32_t)totalBuffers * 16;
  poolInfo.poolSizeCount = 2;
  poolInfo.pPoolSizes = poolSizes;
  VK_CHECK(vkCreateDescriptorPool(device, &poolInfo, nullptr, &descriptorPool));

  VkCommandBuffer cb = vm.beginSingleTimeCommands();
  for (int i = 0; i < totalBuffers; ++i) {
    vkCmdFillBuffer(cb, accumBuffers[i], 0, tileSize, 0);
    VkBufferMemoryBarrier barrier{};
    barrier.sType = VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER;
    barrier.srcAccessMask = VK_ACCESS_TRANSFER_WRITE_BIT;
    barrier.dstAccessMask =
        VK_ACCESS_SHADER_READ_BIT | VK_ACCESS_SHADER_WRITE_BIT;
    barrier.buffer = accumBuffers[i];
    barrier.size = tileSize;
    vkCmdPipelineBarrier(cb, VK_PIPELINE_STAGE_TRANSFER_BIT,
                         VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT, 0, 0, nullptr, 1,
                         &barrier, 0, nullptr);
  }
  vm.endSingleTimeCommands(cb);
}

void VulkanRawStacker::createPipelines() {
  VulkanManager &vm = VulkanManager::getInstance();
  VkDevice device = vm.getDevice();

  // Descriptor set layout for accumulation
  VkDescriptorSetLayoutBinding bindings[2] = {};
  bindings[0].binding = 0;
  bindings[0].descriptorType = VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER;
  bindings[0].descriptorCount = 1;
  bindings[0].stageFlags = VK_SHADER_STAGE_COMPUTE_BIT;

  bindings[1].binding = 1;
  bindings[1].descriptorType = VK_DESCRIPTOR_TYPE_STORAGE_BUFFER;
  bindings[1].descriptorCount = 1;
  bindings[1].stageFlags = VK_SHADER_STAGE_COMPUTE_BIT;

  VkDescriptorSetLayoutCreateInfo layoutInfo{};
  layoutInfo.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO;
  layoutInfo.bindingCount = 2;
  layoutInfo.pBindings = bindings;
  vkCreateDescriptorSetLayout(device, &layoutInfo, nullptr,
                              &descriptorSetLayout);

  // Pipeline layout with push constants
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

  // Create accumulation pipeline
  std::vector<uint32_t> shaderCode(accumulate_raw_comp_spv,
                                   accumulate_raw_comp_spv +
                                       (accumulate_raw_comp_spv_size / 4));
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

  // Create normalization pipeline
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

  std::vector<uint32_t> normShaderCode(normalize_raw_comp_spv,
                                       normalize_raw_comp_spv +
                                           (normalize_raw_comp_spv_size / 4));
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

bool VulkanRawStacker::processFrame(const uint16_t *rawData, int rowStride,
                                    int cfaPattern) {
  VulkanManager &vm = VulkanManager::getInstance();
  VkDevice device = vm.getDevice();

  bool currentIsFirstFrame = isFirstFrame;
  if (currentIsFirstFrame) {
    createPipelines();
    mCfaPattern = cfaPattern;
  }

  VkImage rawImage;
  VkDeviceMemory rawMemory;
  VkImageView rawImageView;
  VkSampler rawSampler;

  VkImageCreateInfo imageInfo{};
  imageInfo.sType = VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO;
  imageInfo.imageType = VK_IMAGE_TYPE_2D;
  imageInfo.format = VK_FORMAT_R16_UNORM;
  imageInfo.extent = {width, height, 1};
  imageInfo.mipLevels = 1;
  imageInfo.arrayLayers = 1;
  imageInfo.samples = VK_SAMPLE_COUNT_1_BIT;
  imageInfo.tiling = VK_IMAGE_TILING_OPTIMAL;
  imageInfo.usage =
      VK_IMAGE_USAGE_TRANSFER_DST_BIT | VK_IMAGE_USAGE_SAMPLED_BIT;
  imageInfo.sharingMode = VK_SHARING_MODE_EXCLUSIVE;
  imageInfo.initialLayout = VK_IMAGE_LAYOUT_UNDEFINED;

  VK_CHECK(vkCreateImage(device, &imageInfo, nullptr, &rawImage));

  VkMemoryRequirements memReqs;
  vkGetImageMemoryRequirements(device, rawImage, &memReqs);

  VkMemoryAllocateInfo allocInfo{};
  allocInfo.sType = VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO;
  allocInfo.allocationSize = memReqs.size;
  allocInfo.memoryTypeIndex = vm.findMemoryType(
      memReqs.memoryTypeBits, VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT);

  VK_CHECK(vkAllocateMemory(device, &allocInfo, nullptr, &rawMemory));
  VK_CHECK(vkBindImageMemory(device, rawImage, rawMemory, 0));

  VkDeviceSize uploadSize = (VkDeviceSize)width * height * 2;
  VkBuffer uploadBuffer;
  VkDeviceMemory uploadMemory;

  VkBufferCreateInfo bufferInfo{};
  bufferInfo.sType = VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO;
  bufferInfo.size = uploadSize;
  bufferInfo.usage = VK_BUFFER_USAGE_TRANSFER_SRC_BIT;
  bufferInfo.sharingMode = VK_SHARING_MODE_EXCLUSIVE;

  VK_CHECK(vkCreateBuffer(device, &bufferInfo, nullptr, &uploadBuffer));

  VkMemoryRequirements uploadMemReqs;
  vkGetBufferMemoryRequirements(device, uploadBuffer, &uploadMemReqs);

  VkMemoryAllocateInfo uploadAllocInfo{};
  uploadAllocInfo.sType = VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO;
  uploadAllocInfo.allocationSize = uploadMemReqs.size;
  uploadAllocInfo.memoryTypeIndex = vm.findMemoryType(
      uploadMemReqs.memoryTypeBits, VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT |
                                        VK_MEMORY_PROPERTY_HOST_COHERENT_BIT);

  VK_CHECK(vkAllocateMemory(device, &uploadAllocInfo, nullptr, &uploadMemory));
  VK_CHECK(vkBindBufferMemory(device, uploadBuffer, uploadMemory, 0));

  void *data;
  vkMapMemory(device, uploadMemory, 0, uploadSize, 0, &data);
  if (rowStride == width * 2) {
    memcpy(data, rawData, uploadSize);
  } else {
    uint8_t *dst = (uint8_t *)data;
    const uint8_t *src = (const uint8_t *)rawData;
    for (uint32_t y = 0; y < height; ++y) {
      memcpy(dst + y * width * 2, src + y * rowStride, width * 2);
    }
  }
  vkUnmapMemory(device, uploadMemory);

  VkCommandBuffer cb = vm.beginSingleTimeCommands();

  VkImageMemoryBarrier barrier{};
  barrier.sType = VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER;
  barrier.oldLayout = VK_IMAGE_LAYOUT_UNDEFINED;
  barrier.newLayout = VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL;
  barrier.image = rawImage;
  barrier.subresourceRange.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
  barrier.subresourceRange.baseMipLevel = 0;
  barrier.subresourceRange.levelCount = 1;
  barrier.subresourceRange.baseArrayLayer = 0;
  barrier.subresourceRange.layerCount = 1;
  barrier.srcAccessMask = 0;
  barrier.dstAccessMask = VK_ACCESS_TRANSFER_WRITE_BIT;

  vkCmdPipelineBarrier(cb, VK_PIPELINE_STAGE_TOP_OF_PIPE_BIT,
                       VK_PIPELINE_STAGE_TRANSFER_BIT, 0, 0, nullptr, 0,
                       nullptr, 1, &barrier);

  VkBufferImageCopy region{};
  region.bufferOffset = 0;
  region.bufferRowLength = 0;
  region.bufferImageHeight = 0;
  region.imageSubresource.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
  region.imageSubresource.mipLevel = 0;
  region.imageSubresource.baseArrayLayer = 0;
  region.imageSubresource.layerCount = 1;
  region.imageOffset = {0, 0, 0};
  region.imageExtent = {width, height, 1};

  vkCmdCopyBufferToImage(cb, uploadBuffer, rawImage,
                         VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL, 1, &region);

  barrier.oldLayout = VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL;
  barrier.newLayout = VK_IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL;
  barrier.srcAccessMask = VK_ACCESS_TRANSFER_WRITE_BIT;
  barrier.dstAccessMask = VK_ACCESS_SHADER_READ_BIT;

  vkCmdPipelineBarrier(cb, VK_PIPELINE_STAGE_TRANSFER_BIT,
                       VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT, 0, 0, nullptr, 0,
                       nullptr, 1, &barrier);

  vm.endSingleTimeCommands(cb);

  vkDestroyBuffer(device, uploadBuffer, nullptr);
  vkFreeMemory(device, uploadMemory, nullptr);

  VkImageViewCreateInfo viewInfo{};
  viewInfo.sType = VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO;
  viewInfo.image = rawImage;
  viewInfo.viewType = VK_IMAGE_VIEW_TYPE_2D;
  viewInfo.format = VK_FORMAT_R16_UNORM;
  viewInfo.subresourceRange.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
  viewInfo.subresourceRange.baseMipLevel = 0;
  viewInfo.subresourceRange.levelCount = 1;
  viewInfo.subresourceRange.baseArrayLayer = 0;
  viewInfo.subresourceRange.layerCount = 1;

  VK_CHECK(vkCreateImageView(device, &viewInfo, nullptr, &rawImageView));

  VkSamplerCreateInfo samplerInfo{};
  samplerInfo.sType = VK_STRUCTURE_TYPE_SAMPLER_CREATE_INFO;
  samplerInfo.magFilter = VK_FILTER_NEAREST;
  samplerInfo.minFilter = VK_FILTER_NEAREST;
  samplerInfo.addressModeU = VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE;
  samplerInfo.addressModeV = VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE;
  samplerInfo.addressModeW = VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE;
  samplerInfo.anisotropyEnable = VK_FALSE;
  samplerInfo.borderColor = VK_BORDER_COLOR_INT_OPAQUE_BLACK;
  samplerInfo.unnormalizedCoordinates = VK_FALSE;
  samplerInfo.compareEnable = VK_FALSE;
  samplerInfo.mipmapMode = VK_SAMPLER_MIPMAP_MODE_NEAREST;

  VK_CHECK(vkCreateSampler(device, &samplerInfo, nullptr, &rawSampler));

  float offsetX = 0.0f, offsetY = 0.0f;

  GrayImage currentGray;
  currentGray.width = width / 2;
  currentGray.height = height / 2;
  currentGray.data.resize(currentGray.width * currentGray.height);
  for (uint32_t y = 0; y < height / 2; ++y) {
    for (uint32_t x = 0; x < width / 2; ++x) {
      // Use one of the green channels for grayscale proxy
      // For RGGB, Gr is at (1, 0), Gb is at (0, 1)
      int gy, gx;
      if (mCfaPattern == 0 || mCfaPattern == 1) { // RGGB or GRBG
        gy = y * 2;
        gx = x * 2 + 1;
      } else { // GBRG or BGGR
        gy = y * 2 + 1;
        gx = x * 2;
      }
      currentGray.data[y * (width / 2) + x] =
          static_cast<uint8_t>(rawData[gy * width + gx] >> 8);
    }
  }

  std::vector<GrayImage> currentPyramid = buildPyramid(
      currentGray.data.data(), currentGray.width, currentGray.height, 4);

  if (currentIsFirstFrame) {
    referencePyramid = currentPyramid;
  } else {
    TileAlignment alignment =
        computeTileAlignment(referencePyramid, currentPyramid, 32);
    float sumX = 0, sumY = 0;
    for (const auto &p : alignment.offsets) {
      sumX += p.x;
      sumY += p.y;
    }
    if (!alignment.offsets.empty()) {
      offsetX = sumX / alignment.offsets.size();
      offsetY = sumY / alignment.offsets.size();
    }
  }

  uint32_t scale = enableSuperRes ? 2 : 1;
  uint32_t planeW = (width / 2) * scale;
  uint32_t planeH = (height / 2) * scale;
  uint32_t tileW = (planeW + numTilesX - 1) / numTilesX;
  uint32_t tileH = (planeH + numTilesY - 1) / numTilesY;

  cb = vm.beginSingleTimeCommands();
  vkCmdBindPipeline(cb, VK_PIPELINE_BIND_POINT_COMPUTE, accumulatePipeline);

  int totalBuffers = numTilesX * numTilesY * 4;
  for (uint32_t planeIdx = 0; planeIdx < 4; ++planeIdx) {
    for (int y = 0; y < numTilesY; ++y) {
      for (int x = 0; x < numTilesX; ++x) {
        int bufferIdx = (y * numTilesX + x) * 4 + planeIdx;

        VkDescriptorSetAllocateInfo allocInfo{};
        allocInfo.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO;
        allocInfo.descriptorPool = descriptorPool;
        allocInfo.descriptorSetCount = 1;
        allocInfo.pSetLayouts = &descriptorSetLayout;
        VK_CHECK(vkAllocateDescriptorSets(device, &allocInfo,
                                          &accumSets[bufferIdx]));

        VkDescriptorImageInfo imageInfo{};
        imageInfo.imageLayout = VK_IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL;
        imageInfo.imageView = rawImageView;
        imageInfo.sampler = rawSampler;

        VkDescriptorBufferInfo accumBufferInfo{};
        accumBufferInfo.buffer = accumBuffers[bufferIdx];
        accumBufferInfo.offset = 0;
        accumBufferInfo.range = VK_WHOLE_SIZE;

        VkWriteDescriptorSet descriptorWrites[2] = {};
        descriptorWrites[0].sType = VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET;
        descriptorWrites[0].dstSet = accumSets[bufferIdx];
        descriptorWrites[0].dstBinding = 0;
        descriptorWrites[0].descriptorType =
            VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER;
        descriptorWrites[0].descriptorCount = 1;
        descriptorWrites[0].pImageInfo = &imageInfo;

        descriptorWrites[1].sType = VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET;
        descriptorWrites[1].dstSet = accumSets[bufferIdx];
        descriptorWrites[1].dstBinding = 1;
        descriptorWrites[1].descriptorType = VK_DESCRIPTOR_TYPE_STORAGE_BUFFER;
        descriptorWrites[1].descriptorCount = 1;
        descriptorWrites[1].pBufferInfo = &accumBufferInfo;

        vkUpdateDescriptorSets(device, 2, descriptorWrites, 0, nullptr);

        PushConstants pc{};
        pc.offsetX = offsetX;
        pc.offsetY = offsetY;
        pc.scale = (float)scale;
        pc.planeWidth = planeW;
        pc.planeHeight = planeH;
        pc.sensorWidth = width;
        pc.sensorHeight = height;
        pc.baseNoise = 0.001f;
        pc.isFirstFrame = currentIsFirstFrame ? 1 : 0;
        pc.planeIndex = planeIdx;
        pc.cfaPattern = cfaPattern;
        pc.tileX = x * tileW;
        pc.tileY = y * tileH;
        pc.tileW = std::min(tileW, planeW - pc.tileX);
        pc.tileH = std::min(tileH, planeH - pc.tileY);
        pc.bufferStride = tileW + 16;

        vkCmdBindDescriptorSets(cb, VK_PIPELINE_BIND_POINT_COMPUTE,
                                pipelineLayout, 0, 1, &accumSets[bufferIdx], 0,
                                nullptr);
        vkCmdPushConstants(cb, pipelineLayout, VK_SHADER_STAGE_COMPUTE_BIT, 0,
                           sizeof(pc), &pc);
        vkCmdDispatch(cb, (pc.tileW + 15) / 16, (pc.tileH + 15) / 16, 1);
      }
    }
  }

  vm.endSingleTimeCommands(cb);
  vkQueueWaitIdle(vm.getComputeQueue());

  vkFreeDescriptorSets(device, descriptorPool, totalBuffers, accumSets.data());

  vkDestroyImageView(device, rawImageView, nullptr);
  vkDestroySampler(device, rawSampler, nullptr);
  vkDestroyImage(device, rawImage, nullptr);
  vkFreeMemory(device, rawMemory, nullptr);

  isFirstFrame = false;
  return true;
}

bool VulkanRawStacker::processStack(uint16_t *outBuffer, size_t bufferSize) {
  // Lower CPU priority for this thread during heavy processing
  setpriority(PRIO_PROCESS, 0, 10);

  if (pendingFrames.empty() && isFirstFrame) {
    return false;
  }

  for (const auto &frame : pendingFrames) {
    processFrame(frame.rawData.data(), width * 2, frame.cfaPattern);
  }
  pendingFrames.clear();

  if (isFirstFrame) {
    LOGE("processStack: Failed to process any frames");
    return false;
  }

  VulkanManager &vm = VulkanManager::getInstance();
  VkDevice device = vm.getDevice();

  uint32_t scale = enableSuperRes ? 2 : 1;
  uint32_t outW = width * scale;
  uint32_t outH = height * scale;
  size_t requiredSize = outW * outH * sizeof(uint16_t);

  if (bufferSize < requiredSize) {
    LOGE("processStack: Output buffer too small: %zu < %zu", bufferSize,
         requiredSize);
    return false;
  }

  uint32_t planeW = (width / 2) * scale;
  uint32_t planeH = (height / 2) * scale;
  uint32_t tileW = (planeW + numTilesX - 1) / numTilesX;
  uint32_t tileH = (planeH + numTilesY - 1) / numTilesY;

  VkCommandBuffer cb = vm.beginSingleTimeCommands();
  vkCmdBindPipeline(cb, VK_PIPELINE_BIND_POINT_COMPUTE, normalizePipeline);

  int totalBuffers = numTilesX * numTilesY * 4;
  for (uint32_t planeIdx = 0; planeIdx < 4; ++planeIdx) {
    for (int y = 0; y < numTilesY; ++y) {
      for (int x = 0; x < numTilesX; ++x) {
        int bufferIdx = (y * numTilesX + x) * 4 + planeIdx;

        VkDescriptorSetAllocateInfo allocInfo{};
        allocInfo.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO;
        allocInfo.descriptorPool = descriptorPool;
        allocInfo.descriptorSetCount = 1;
        allocInfo.pSetLayouts = &normalizeSetLayout;
        VK_CHECK(vkAllocateDescriptorSets(device, &allocInfo,
                                          &normalizeSets[bufferIdx]));

        VkDescriptorBufferInfo outputBufferInfo{};
        outputBufferInfo.buffer = stagingBuffer;
        outputBufferInfo.offset = 0;
        outputBufferInfo.range = VK_WHOLE_SIZE;

        VkDescriptorBufferInfo accumBufferInfo{};
        accumBufferInfo.buffer = accumBuffers[bufferIdx];
        accumBufferInfo.offset = 0;
        accumBufferInfo.range = VK_WHOLE_SIZE;

        VkWriteDescriptorSet descriptorWrites[2] = {};
        descriptorWrites[0].sType = VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET;
        descriptorWrites[0].dstSet = normalizeSets[bufferIdx];
        descriptorWrites[0].dstBinding = 0;
        descriptorWrites[0].descriptorType = VK_DESCRIPTOR_TYPE_STORAGE_BUFFER;
        descriptorWrites[0].descriptorCount = 1;
        descriptorWrites[0].pBufferInfo = &outputBufferInfo;

        descriptorWrites[1].sType = VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET;
        descriptorWrites[1].dstSet = normalizeSets[bufferIdx];
        descriptorWrites[1].dstBinding = 1;
        descriptorWrites[1].descriptorType = VK_DESCRIPTOR_TYPE_STORAGE_BUFFER;
        descriptorWrites[1].descriptorCount = 1;
        descriptorWrites[1].pBufferInfo = &accumBufferInfo;

        vkUpdateDescriptorSets(device, 2, descriptorWrites, 0, nullptr);

        PushConstants pc{};
        pc.scale = (float)scale;
        pc.planeWidth = planeW;
        pc.planeHeight = planeH;
        pc.sensorWidth = outW;
        pc.sensorHeight = outH;
        pc.planeIndex = planeIdx;
        pc.cfaPattern = mCfaPattern;
        pc.tileX = x * tileW;
        pc.tileY = y * tileH;
        pc.tileW = std::min(tileW, planeW - pc.tileX);
        pc.tileH = std::min(tileH, planeH - pc.tileY);
        pc.bufferStride = tileW + 16;

        vkCmdBindDescriptorSets(cb, VK_PIPELINE_BIND_POINT_COMPUTE,
                                normalizePipelineLayout, 0, 1,
                                &normalizeSets[bufferIdx], 0, nullptr);
        vkCmdPushConstants(cb, normalizePipelineLayout,
                           VK_SHADER_STAGE_COMPUTE_BIT, 0, sizeof(pc), &pc);
        vkCmdDispatch(cb, (pc.tileW + 15) / 16, (pc.tileH + 15) / 16, 1);
      }
    }
  }

  vm.endSingleTimeCommands(cb);
  vkQueueWaitIdle(vm.getComputeQueue());

  vkFreeDescriptorSets(device, descriptorPool, totalBuffers,
                       normalizeSets.data());

  void *mapData;
  vkMapMemory(device, stagingMemory, 0, requiredSize, 0, &mapData);
  memcpy(outBuffer, mapData, requiredSize);
  vkUnmapMemory(device, stagingMemory);

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
}
