#include "vulkan_stacker.h"
#include "accumulate.comp.h"
#include "normalize.comp.h"
#include <android/log.h>
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

VulkanImageStacker::~VulkanImageStacker() { releaseVulkanResources(); }

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
  VkDeviceSize tileSize =
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
  VkDescriptorPoolSize poolSizes[2] = {};
  poolSizes[0].type = VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER;
  poolSizes[0].descriptorCount = (uint32_t)numTiles * 32; // Generous
  poolSizes[1].type = VK_DESCRIPTOR_TYPE_STORAGE_BUFFER;
  poolSizes[1].descriptorCount = (uint32_t)numTiles * 32;

  VkDescriptorPoolCreateInfo poolInfo{};
  poolInfo.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO;
  poolInfo.flags = VK_DESCRIPTOR_POOL_CREATE_FREE_DESCRIPTOR_SET_BIT;
  poolInfo.maxSets = (uint32_t)numTiles * 32;
  poolInfo.poolSizeCount = 2;
  poolInfo.pPoolSizes = poolSizes;
  VK_CHECK(vkCreateDescriptorPool(device, &poolInfo, nullptr, &descriptorPool));

  // Initial Clear
  VkCommandBuffer cb = vm.beginSingleTimeCommands();
  for (int i = 0; i < numTiles; ++i) {
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

void VulkanImageStacker::createPipelines(VkSampler immutableSampler) {
  VulkanManager &vm = VulkanManager::getInstance();
  VkDevice device = vm.getDevice();

  // 1. Descriptor Set Layout with Immutable Sampler
  VkDescriptorSetLayoutBinding bindings[2] = {};
  bindings[0].binding = 0;
  bindings[0].descriptorType = VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER;
  bindings[0].descriptorCount = 1;
  bindings[0].stageFlags = VK_SHADER_STAGE_COMPUTE_BIT;
  bindings[0].pImmutableSamplers =
      &immutableSampler; // CRITICAL: Link the sampler statically

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
}

bool VulkanImageStacker::addFrame(AHardwareBuffer *buffer) {
  if (buffer == nullptr)
    return false;
  AHardwareBuffer_acquire(buffer);
  pendingBuffers.push_back(buffer);
  return true;
}

bool VulkanImageStacker::processFrame(AHardwareBuffer *buffer) {
  VulkanImage input;
  if (!VulkanBufferImporter::importHardwareBuffer(buffer, input)) {
    LOGE("processFrame: Failed to import hardware buffer");
    return false;
  }

  VulkanManager &vm = VulkanManager::getInstance();
  VkDevice device = vm.getDevice();

  // On the first frame, we MUST create the pipelines using this frame's sampler
  // as an IMMUTABLE sampler. This is required for Android YUV external formats
  // to work correctly.
  // Capture first frame state before we potentially update it
  bool currentIsFirstFrame = isFirstFrame;

  if (currentIsFirstFrame) {
    createPipelines(input.sampler);
  }

  // 1. Allocate and Update Descriptor Sets for each tile
  int numTiles = numTilesX * numTilesY;

  for (int i = 0; i < numTiles; ++i) {
    VkDescriptorSetAllocateInfo allocInfo{};
    allocInfo.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO;
    allocInfo.descriptorPool = descriptorPool;
    allocInfo.descriptorSetCount = 1;
    allocInfo.pSetLayouts = &descriptorSetLayout;
    VK_CHECK(vkAllocateDescriptorSets(device, &allocInfo, &accumSets[i]));

    VkDescriptorImageInfo imageInfo{};
    imageInfo.imageLayout = VK_IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL;
    imageInfo.imageView = input.viewY;
    imageInfo.sampler = input.sampler;

    VkDescriptorBufferInfo accumBufferInfo{};
    accumBufferInfo.buffer = accumBuffers[i];
    accumBufferInfo.offset = 0;
    accumBufferInfo.range = VK_WHOLE_SIZE;

    VkWriteDescriptorSet descriptorWrites[2] = {};
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

    vkUpdateDescriptorSets(device, 2, descriptorWrites, 0, nullptr);
  }
  // 2. Alignment logic on CPU (to get offsets)
  float offsetX = 0.0f, offsetY = 0.0f;

  AHardwareBuffer_Desc desc;
  AHardwareBuffer_describe(buffer, &desc);

  void *lockedData = nullptr;
  if (AHardwareBuffer_lock(buffer, AHARDWAREBUFFER_USAGE_CPU_READ_OFTEN, -1,
                           nullptr, &lockedData) == 0) {
    // Create a 8-bit grayscale image for alignment
    GrayImage currentY;
    currentY.width = width;
    currentY.height = height;
    currentY.data.resize(width * height);

    uint8_t *srcY = (uint8_t *)lockedData;
    // Assume Y plane is first (standard for Android YUV)
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
    } else {
      TileAlignment alignment =
          computeTileAlignment(referencePyramid, currentPyramid, 32);
      // Calculate global average offset
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
  }

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

  // 3. Command Buffer Recording
  VkCommandBuffer cb = vm.beginSingleTimeCommands();
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

      vkCmdBindDescriptorSets(cb, VK_PIPELINE_BIND_POINT_COMPUTE,
                              pipelineLayout, 0, 1, &accumSets[i], 0, nullptr);
      vkCmdPushConstants(cb, pipelineLayout, VK_SHADER_STAGE_COMPUTE_BIT, 0,
                         sizeof(pc), &pc);
      vkCmdDispatch(cb, (pc.tileW + 15) / 16, (pc.tileH + 15) / 16, 1);
    }
  }

  vm.endSingleTimeCommands(cb);
  vkQueueWaitIdle(vm.getComputeQueue());

  vkFreeDescriptorSets(device, descriptorPool, numTiles, accumSets.data());
  isFirstFrame = false;
  input.release(device);
  return true;
}

bool VulkanImageStacker::processStack(uint32_t *outBitmap, uint32_t outWidth,
                                      uint32_t outHeight, uint32_t stride,
                                      int rotation) {
  // Lower CPU priority for this thread during heavy processing
  setpriority(PRIO_PROCESS, 0, 10);

  // Process all queued frames first
  if (pendingBuffers.empty() && isFirstFrame) {
    return false;
  }

  for (auto *buf : pendingBuffers) {
    processFrame(buf);
    AHardwareBuffer_release(buf);
  }
  pendingBuffers.clear();

  if (!outBitmap || isFirstFrame) // Check again after processing
    return false;

  VulkanManager &vm = VulkanManager::getInstance();
  VkDevice device = vm.getDevice();
  if (device == VK_NULL_HANDLE) {
    LOGE("processStack: Vulkan device is NULL");
    return false;
  }

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

  vm.endSingleTimeCommands(cb);
  vkQueueWaitIdle(vm.getComputeQueue());

  // 2. Map and copy to bitmap
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
