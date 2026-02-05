/**
 * native-lib.cpp
 *
 * JNI Interface for PhotonCamera native functions.
 */
#include <algorithm>
#include <android/bitmap.h>
#include <cstring>
#include <fstream>
#include <jni.h>
#include <omp.h>
#include <string>
#include <vector>

#include "common.h"
#include "dng_parser.h"
#include "jxl_utils.h"
#include "math_utils.h"
#include "stacking_utils.h"
#include "vulkan_raw_stacker.h"
#include "vulkan_stacker.h"
#include <android/hardware_buffer_jni.h>

extern "C" {

/**
 * Multi-Frame Stacking JNI Interface
 */
JNIEXPORT jlong JNICALL
Java_com_hinnka_mycamera_processor_MultiFrameStacker_createStackerNative(
    JNIEnv *env, jobject /* this */, jint width, jint height,
    jboolean enableSuperRes) {
  auto *stacker = new ImageStacker(width, height, enableSuperRes);
  return reinterpret_cast<jlong>(stacker);
}

JNIEXPORT void JNICALL
Java_com_hinnka_mycamera_processor_MultiFrameStacker_addToStackNative(
    JNIEnv *env, jobject /* this */, jlong stackerPtr, jobject yBuffer,
    jobject uBuffer, jobject vBuffer, jint yRowStride, jint uvRowStride,
    jint uvPixelStride, jint format) {

  auto *stacker = reinterpret_cast<ImageStacker *>(stackerPtr);
  if (!stacker)
    return;

  auto *yData = static_cast<uint8_t *>(env->GetDirectBufferAddress(yBuffer));
  auto *uData = static_cast<uint8_t *>(env->GetDirectBufferAddress(uBuffer));
  auto *vData = static_cast<uint8_t *>(env->GetDirectBufferAddress(vBuffer));

  if (yData && uData && vData) {
    jlong yCap = env->GetDirectBufferCapacity(yBuffer);
    jlong uCap = env->GetDirectBufferCapacity(uBuffer);
    jlong vCap = env->GetDirectBufferCapacity(vBuffer);

    // Basic sanity check for capacity. Actual check depends on strides,
    // but at least check it's not empty.
    if (yCap <= 0 || uCap <= 0 || vCap <= 0) {
      LOGE("addToStackNative: Buffer capacity is zero");
      return;
    }

    stacker->addFrame(yData, uData, vData, yRowStride, uvRowStride,
                      uvPixelStride, format);
  } else {
    LOGE("addToStackNative: Failed to get buffer addresses");
  }
}

JNIEXPORT void JNICALL
Java_com_hinnka_mycamera_processor_MultiFrameStacker_stageFrameNative(
    JNIEnv *env, jobject /* this */, jlong stackerPtr, jobject yBuffer,
    jobject uBuffer, jobject vBuffer, jint yRowStride, jint uvRowStride,
    jint uvPixelStride, jint format) {
  auto *stacker = reinterpret_cast<ImageStacker *>(stackerPtr);
  if (!stacker)
    return;
  auto *yData = static_cast<uint8_t *>(env->GetDirectBufferAddress(yBuffer));
  auto *uData = static_cast<uint8_t *>(env->GetDirectBufferAddress(uBuffer));
  auto *vData = static_cast<uint8_t *>(env->GetDirectBufferAddress(vBuffer));
  if (yData && uData && vData) {
    stacker->stageFrame(yData, uData, vData, yRowStride, uvRowStride,
                        uvPixelStride, format);
  }
}

JNIEXPORT void JNICALL
Java_com_hinnka_mycamera_processor_MultiFrameStacker_processFrameNative(
    JNIEnv *env, jobject /* this */, jlong stackerPtr, jint index) {
  auto *stacker = reinterpret_cast<ImageStacker *>(stackerPtr);
  if (stacker)
    stacker->processFrame(index);
}

JNIEXPORT void JNICALL
Java_com_hinnka_mycamera_processor_MultiFrameStacker_clearStagedFramesNative(
    JNIEnv *env, jobject /* this */, jlong stackerPtr) {
  auto *stacker = reinterpret_cast<ImageStacker *>(stackerPtr);
  if (stacker)
    stacker->clearStagedFrames();
}

JNIEXPORT void JNICALL
Java_com_hinnka_mycamera_processor_MultiFrameStacker_processStackNative(
    JNIEnv *env, jobject /* this */, jlong stackerPtr, jobject outBitmap,
    jint rotation, jint targetWR, jint targetHR, jstring outputPath) {

  auto *stacker = reinterpret_cast<ImageStacker *>(stackerPtr);
  if (!stacker)
    return;

  const char *path = nullptr;
  if (outputPath) {
    path = env->GetStringUTFChars(outputPath, nullptr);
  }

  AndroidBitmapInfo info;
  void *bitmapPixels = nullptr;
  if (outBitmap &&
      (AndroidBitmap_getInfo(env, outBitmap, &info) < 0 ||
       AndroidBitmap_lockPixels(env, outBitmap, &bitmapPixels) < 0)) {
    if (path)
      env->ReleaseStringUTFChars(outputPath, path);
    return;
  }

  stacker->writeResult(static_cast<uint32_t *>(bitmapPixels), info.width,
                       info.height, rotation, targetWR, targetHR, path);

  if (outBitmap) {
    AndroidBitmap_unlockPixels(env, outBitmap);
  }
  if (path) {
    env->ReleaseStringUTFChars(outputPath, path);
  }
}

JNIEXPORT void JNICALL
Java_com_hinnka_mycamera_processor_MultiFrameStacker_releaseStackerNative(
    JNIEnv *env, jobject /* this */, jlong stackerPtr) {
  auto *stacker = reinterpret_cast<ImageStacker *>(stackerPtr);
  delete stacker;
}

/**
 * Vulkan Stacking JNI Interface
 */
JNIEXPORT jlong JNICALL
Java_com_hinnka_mycamera_processor_MultiFrameStacker_createVulkanStackerNative(
    JNIEnv *env, jobject /* this */, jint width, jint height,
    jboolean enableSuperRes) {
  auto *stacker = new VulkanImageStacker(width, height, enableSuperRes);
  return reinterpret_cast<jlong>(stacker);
}

JNIEXPORT jboolean JNICALL
Java_com_hinnka_mycamera_processor_MultiFrameStacker_addVulkanFrameNative(
    JNIEnv *env, jobject /* this */, jlong stackerPtr, jobject hardwareBuffer) {
  auto *stacker = reinterpret_cast<VulkanImageStacker *>(stackerPtr);
  if (!stacker || !hardwareBuffer)
    return JNI_FALSE;

  AHardwareBuffer *buffer =
      AHardwareBuffer_fromHardwareBuffer(env, hardwareBuffer);
  if (!buffer)
    return JNI_FALSE;

  bool success = stacker->addFrame(buffer);
  return success ? JNI_TRUE : JNI_FALSE;
}

JNIEXPORT jboolean JNICALL
Java_com_hinnka_mycamera_processor_MultiFrameStacker_processVulkanStackNative(
    JNIEnv *env, jobject /* this */, jlong stackerPtr, jobject outBitmap,
    jint rotation) {
  auto *stacker = reinterpret_cast<VulkanImageStacker *>(stackerPtr);
  if (!stacker)
    return JNI_FALSE;

  AndroidBitmapInfo info;
  void *bitmapPixels = nullptr;
  if (outBitmap &&
      (AndroidBitmap_getInfo(env, outBitmap, &info) < 0 ||
       AndroidBitmap_lockPixels(env, outBitmap, &bitmapPixels) < 0)) {
    return JNI_FALSE;
  }

  bool success =
      stacker->processStack(static_cast<uint32_t *>(bitmapPixels), info.width,
                            info.height, info.stride, rotation);

  if (outBitmap) {
    AndroidBitmap_unlockPixels(env, outBitmap);
  }
  return success ? JNI_TRUE : JNI_FALSE;
}

JNIEXPORT void JNICALL
Java_com_hinnka_mycamera_processor_MultiFrameStacker_releaseVulkanStackerNative(
    JNIEnv *env, jobject /* this */, jlong stackerPtr) {
  auto *stacker = reinterpret_cast<VulkanImageStacker *>(stackerPtr);
  delete stacker;
}

/**
 * Raw Stacking JNI Interface
 */
JNIEXPORT jlong JNICALL
Java_com_hinnka_mycamera_processor_MultiFrameStacker_createRawStackerNative(
    JNIEnv *env, jobject /* this */, jint width, jint height,
    jboolean useSuperRes) {
  auto *stacker = new RawStacker(width, height, (bool)useSuperRes);
  return reinterpret_cast<jlong>(stacker);
}

JNIEXPORT jint JNICALL
Java_com_hinnka_mycamera_processor_MultiFrameStacker_getRawStackerScaleNative(
    JNIEnv *env, jobject /* this */, jlong stackerPtr) {
  auto *stacker = reinterpret_cast<RawStacker *>(stackerPtr);
  return stacker ? stacker->getScale() : 1;
}

JNIEXPORT void JNICALL
Java_com_hinnka_mycamera_processor_MultiFrameStacker_addToRawStackNative(
    JNIEnv *env, jobject /* this */, jlong stackerPtr, jobject rawData,
    jint rowStride, jint cfaPattern) {

  auto *stacker = reinterpret_cast<RawStacker *>(stackerPtr);
  if (!stacker)
    return;

  auto *data = static_cast<uint16_t *>(env->GetDirectBufferAddress(rawData));
  if (data) {
    stacker->addFrame(data, rowStride, cfaPattern);
  } else {
    LOGE("addToRawStackNative: Failed to get buffer address");
  }
}

JNIEXPORT void JNICALL
Java_com_hinnka_mycamera_processor_MultiFrameStacker_stageRawFrameNative(
    JNIEnv *env, jobject /* this */, jlong stackerPtr, jobject rawData,
    jint rowStride, jint cfaPattern) {
  auto *stacker = reinterpret_cast<RawStacker *>(stackerPtr);
  if (!stacker)
    return;
  auto *data = static_cast<uint16_t *>(env->GetDirectBufferAddress(rawData));
  if (data) {
    stacker->stageFrame(data, rowStride, cfaPattern);
  }
}

JNIEXPORT void JNICALL
Java_com_hinnka_mycamera_processor_MultiFrameStacker_processRawFrameNative(
    JNIEnv *env, jobject /* this */, jlong stackerPtr, jint index) {
  auto *stacker = reinterpret_cast<RawStacker *>(stackerPtr);
  if (stacker)
    stacker->processFrame(index);
}

JNIEXPORT void JNICALL
Java_com_hinnka_mycamera_processor_MultiFrameStacker_clearStagedRawFramesNative(
    JNIEnv *env, jobject /* this */, jlong stackerPtr) {
  auto *stacker = reinterpret_cast<RawStacker *>(stackerPtr);
  if (stacker)
    stacker->clearStagedFrames();
}

JNIEXPORT void JNICALL
Java_com_hinnka_mycamera_processor_MultiFrameStacker_processRawStackWithBufferNative(
    JNIEnv *env, jobject /* this */, jlong stackerPtr, jobject outputBuffer) {

  auto *stacker = reinterpret_cast<RawStacker *>(stackerPtr);
  if (!stacker)
    return;

  auto *outData =
      static_cast<uint16_t *>(env->GetDirectBufferAddress(outputBuffer));
  if (!outData)
    return;

  std::vector<uint16_t> result = stacker->process();

  jlong capacity = env->GetDirectBufferCapacity(outputBuffer);
  if (capacity >= result.size() * sizeof(uint16_t)) {
    memcpy(outData, result.data(), result.size() * sizeof(uint16_t));
  } else {
    LOGE("Output buffer too small: capacity=%ld, required=%ld", (long)capacity,
         (long)(result.size() * sizeof(uint16_t)));
  }
}

/**
 * Vulkan Raw Stacking JNI Interface
 */
JNIEXPORT jlong JNICALL
Java_com_hinnka_mycamera_processor_MultiFrameStacker_createVulkanRawStackerNative(
    JNIEnv *env, jobject, jint width, jint height, jboolean useSuperRes) {
  auto *stacker = new VulkanRawStacker(width, height, (bool)useSuperRes);
  return reinterpret_cast<jlong>(stacker);
}

JNIEXPORT jint JNICALL
Java_com_hinnka_mycamera_processor_MultiFrameStacker_getVulkanRawStackerScaleNative(
    JNIEnv *env, jobject, jlong stackerPtr) {
  auto *stacker = reinterpret_cast<VulkanRawStacker *>(stackerPtr);
  return stacker ? stacker->getScale() : 1;
}

JNIEXPORT jboolean JNICALL
Java_com_hinnka_mycamera_processor_MultiFrameStacker_addVulkanRawFrameNative(
    JNIEnv *env, jobject, jlong stackerPtr, jobject rawData, jint rowStride,
    jint cfaPattern) {
  auto *stacker = reinterpret_cast<VulkanRawStacker *>(stackerPtr);
  if (!stacker)
    return JNI_FALSE;

  auto *data = static_cast<uint16_t *>(env->GetDirectBufferAddress(rawData));
  if (!data) {
    LOGE("addVulkanRawFrameNative: Failed to get buffer address");
    return JNI_FALSE;
  }

  bool success = stacker->addFrame(data, rowStride, cfaPattern);
  return success ? JNI_TRUE : JNI_FALSE;
}

JNIEXPORT jboolean JNICALL
Java_com_hinnka_mycamera_processor_MultiFrameStacker_processVulkanRawStackNative(
    JNIEnv *env, jobject, jlong stackerPtr, jobject outputBuffer) {
  auto *stacker = reinterpret_cast<VulkanRawStacker *>(stackerPtr);
  if (!stacker)
    return JNI_FALSE;

  auto *outData =
      static_cast<uint16_t *>(env->GetDirectBufferAddress(outputBuffer));
  if (!outData) {
    LOGE("processVulkanRawStackNative: Failed to get buffer address");
    return JNI_FALSE;
  }

  jlong capacity = env->GetDirectBufferCapacity(outputBuffer);
  bool success = stacker->processStack(outData, (size_t)capacity);
  return success ? JNI_TRUE : JNI_FALSE;
}

JNIEXPORT void JNICALL
Java_com_hinnka_mycamera_processor_MultiFrameStacker_releaseVulkanRawStackerNative(
    JNIEnv *env, jobject, jlong stackerPtr) {
  auto *stacker = reinterpret_cast<VulkanRawStacker *>(stackerPtr);
  delete stacker;
}

JNIEXPORT void JNICALL
Java_com_hinnka_mycamera_processor_MultiFrameStacker_releaseRawStackerNative(
    JNIEnv *env, jobject /* this */, jlong stackerPtr) {
  auto *stacker = reinterpret_cast<RawStacker *>(stackerPtr);
  delete stacker;
}

/**
 * 处理 YUV_420_888 或 P010 图像：旋转、裁切、转换为 RGBA16
 */
/**
 * 处理 YUV_420_888 或 P010 图像：旋转、裁切，并直接保存为 FP16 格式的 JPEG XL
 */
JNIEXPORT jboolean JNICALL
Java_com_hinnka_mycamera_utils_YuvProcessor_processAndSaveYuv(
    JNIEnv *env, jobject /* this */, jobject yBuffer, jobject uBuffer,
    jobject vBuffer, jint width, jint height, jint yRowStride, jint uvRowStride,
    jint uvPixelStride, jint rotation, jint targetWR, jint targetHR,
    jint format, jstring outputPath, jobject outBitmap8) {
  const char *path = env->GetStringUTFChars(outputPath, nullptr);

  // 1. 锁定 Bitmap 地址 (8-bit) 用于预览
  void *bitmapPixels;
  if (AndroidBitmap_lockPixels(env, outBitmap8, &bitmapPixels) < 0) {
    env->ReleaseStringUTFChars(outputPath, path);
    return JNI_FALSE;
  }
  auto *ptr8 = static_cast<uint32_t *>(bitmapPixels);

  // 获取 buffer 指针
  auto *yData = static_cast<uint8_t *>(env->GetDirectBufferAddress(yBuffer));
  auto *uData = static_cast<uint8_t *>(env->GetDirectBufferAddress(uBuffer));
  auto *vData = static_cast<uint8_t *>(env->GetDirectBufferAddress(vBuffer));

  if (yData == nullptr || uData == nullptr || vData == nullptr) {
    LOGE("Failed to get buffer addresses");
    AndroidBitmap_unlockPixels(env, outBitmap8);
    env->ReleaseStringUTFChars(outputPath, path);
    return JNI_FALSE;
  }

  bool isP010 = (format == 0x36);
  int rotatedWidth = (rotation == 90 || rotation == 270) ? height : width;
  int rotatedHeight = (rotation == 90 || rotation == 270) ? width : height;

  // === 裁切计算 ===
  bool currentIsLandscape = (rotatedWidth >= rotatedHeight);
  int tw, th;
  if (currentIsLandscape) {
    tw = (targetWR >= targetHR) ? targetWR : targetHR;
    th = (targetWR >= targetHR) ? targetHR : targetWR;
  } else {
    tw = (targetWR >= targetHR) ? targetHR : targetWR;
    th = (targetWR >= targetHR) ? targetWR : targetHR;
  }

  int finalWidth, finalHeight;
  if ((long long)rotatedWidth * th > (long long)tw * rotatedHeight) {
    finalHeight = (rotatedHeight / 2) * 2;
    finalWidth = (int)(((long long)finalHeight * tw / th) / 2) * 2;
  } else {
    finalWidth = (rotatedWidth / 2) * 2;
    finalHeight = (int)(((long long)finalWidth * th / tw) / 2) * 2;
  }
  finalWidth = std::min(finalWidth, (rotatedWidth / 2) * 2);
  finalHeight = std::min(finalHeight, (rotatedHeight / 2) * 2);

  int cropX = ((rotatedWidth - finalWidth) / 4) * 2;
  int cropY = ((rotatedHeight - finalHeight) / 4) * 2;

  // === 转换并存储为 RGB ===
  std::vector<uint16_t> fp16Pixels(finalWidth * finalHeight * 4);

#pragma omp parallel for num_threads(4)
  for (int y = 0; y < finalHeight; y++) {
    for (int x = 0; x < finalWidth; x++) {
      int rx = x + cropX;
      int ry = y + cropY;

      int sx, sy;
      if (rotation == 90) {
        sx = ry;
        sy = height - 1 - rx;
      } else if (rotation == 180) {
        sx = width - 1 - rx;
        sy = height - 1 - ry;
      } else if (rotation == 270) {
        sx = width - 1 - ry;
        sy = rx;
      } else { // 0
        sx = rx;
        sy = ry;
      }

      float Y_val, U_val, V_val;
      if (isP010) {
        Y_val = (float)readValue<uint16_t>(yData + sy * yRowStride + sx * 2,
                                           false) /
                65535.0f;
        int uv_sx = sx / 2;
        int uv_sy = sy / 2;
        U_val =
            (static_cast<float>(readValue<uint16_t>(
                 uData + uv_sy * uvRowStride + uv_sx * uvPixelStride, false)) -
             32768.0f) /
            65535.0f;
        V_val =
            (static_cast<float>(readValue<uint16_t>(
                 vData + uv_sy * uvRowStride + uv_sx * uvPixelStride, false)) -
             32768.0f) /
            65535.0f;
      } else {
        Y_val = (float)yData[sy * yRowStride + sx] / 255.0f;
        int uv_sx = sx / 2;
        int uv_sy = sy / 2;
        U_val = (static_cast<float>(
                     uData[uv_sy * uvRowStride + uv_sx * uvPixelStride]) -
                 128.0f) /
                255.0f;
        V_val = (static_cast<float>(
                     vData[uv_sy * uvRowStride + uv_sx * uvPixelStride]) -
                 128.0f) /
                255.0f;
      }

      float R, G, B;
      if (isP010) {
        R = Y_val + 1.4746f * V_val;
        G = Y_val - 0.16455f * U_val - 0.57135f * V_val;
        B = Y_val + 1.8814f * U_val;
      } else {
        R = Y_val + 1.402f * V_val;
        G = Y_val - 0.344136f * U_val - 0.714136f * V_val;
        B = Y_val + 1.772f * U_val;
      }
      R = std::max(0.0f, std::min(1.0f, R));
      G = std::max(0.0f, std::min(1.0f, G));
      B = std::max(0.0f, std::min(1.0f, B));

      int idx = y * finalWidth + x;

      // --- 输出 A: UINT16 (保存到本地) ---
      int idx16 = idx * 4;
      fp16Pixels[idx16 + 0] = static_cast<uint16_t>(R * 65535.0f);
      fp16Pixels[idx16 + 1] = static_cast<uint16_t>(G * 65535.0f);
      fp16Pixels[idx16 + 2] = static_cast<uint16_t>(B * 65535.0f);
      fp16Pixels[idx16 + 3] = 65535; // Alpha

      // --- 输出 B: 8-bit (预览) ---
      uint32_t r8 = static_cast<uint32_t>(R * 255.0f);
      uint32_t g8 = static_cast<uint32_t>(G * 255.0f);
      uint32_t b8 = static_cast<uint32_t>(B * 255.0f);
      uint32_t a8 = 255;
      ptr8[idx] = (a8 << 24) | (b8 << 16) | (g8 << 8) | r8;
    }
  }

  AndroidBitmap_unlockPixels(env, outBitmap8);

  // 保存为 JXL
  bool success = saveJxl(fp16Pixels.data(), finalWidth, finalHeight,
                         JXL_TYPE_UINT16, path);

  env->ReleaseStringUTFChars(outputPath, path);
  return success ? JNI_TRUE : JNI_FALSE;
}

/**
 * 仅处理预览：旋转、裁切，并输出为 8-bit Bitmap
 */
JNIEXPORT void JNICALL
Java_com_hinnka_mycamera_utils_YuvProcessor_processToBitmap(
    JNIEnv *env, jobject /* this */, jobject yBuffer, jobject uBuffer,
    jobject vBuffer, jint width, jint height, jint yRowStride, jint uvRowStride,
    jint uvPixelStride, jint rotation, jint targetWR, jint targetHR,
    jint format, jobject outBitmap8) {

  void *bitmapPixels;
  if (AndroidBitmap_lockPixels(env, outBitmap8, &bitmapPixels) < 0) {
    LOGE("Failed to lock bitmap pixels");
    return;
  }
  auto *ptr8 = static_cast<uint32_t *>(bitmapPixels);

  AndroidBitmapInfo info;
  AndroidBitmap_getInfo(env, outBitmap8, &info);

  auto *yData = static_cast<uint8_t *>(env->GetDirectBufferAddress(yBuffer));
  auto *uData = static_cast<uint8_t *>(env->GetDirectBufferAddress(uBuffer));
  auto *vData = static_cast<uint8_t *>(env->GetDirectBufferAddress(vBuffer));

  if (yData == nullptr || uData == nullptr || vData == nullptr) {
    LOGE("Failed to get buffer addresses");
    AndroidBitmap_unlockPixels(env, outBitmap8);
    return;
  }

  bool isP010 = (format == 0x36);
  int rotatedWidth = (rotation == 90 || rotation == 270) ? height : width;
  int rotatedHeight = (rotation == 90 || rotation == 270) ? width : height;

  // === 裁切计算 ===
  bool currentIsLandscape = (rotatedWidth >= rotatedHeight);
  int tw, th;
  if (currentIsLandscape) {
    tw = (targetWR >= targetHR) ? targetWR : targetHR;
    th = (targetWR >= targetHR) ? targetHR : targetWR;
  } else {
    tw = (targetWR >= targetHR) ? targetHR : targetWR;
    th = (targetWR >= targetHR) ? targetWR : targetHR;
  }

  int finalWidth, finalHeight;
  if ((long long)rotatedWidth * th > (long long)tw * rotatedHeight) {
    finalHeight = (rotatedHeight / 2) * 2;
    finalWidth = (int)(((long long)finalHeight * tw / th) / 2) * 2;
  } else {
    finalWidth = (rotatedWidth / 2) * 2;
    finalHeight = (int)(((long long)finalWidth * th / tw) / 2) * 2;
  }

  // 匹配 Bitmap 尺寸
  finalWidth = std::min(finalWidth, (int)info.width);
  finalHeight = std::min(finalHeight, (int)info.height);

  int cropX = ((rotatedWidth - finalWidth) / 4) * 2;
  int cropY = ((rotatedHeight - finalHeight) / 4) * 2;

  int stride = info.stride / 4;

#pragma omp parallel for num_threads(4)
  for (int y = 0; y < finalHeight; y++) {
    for (int x = 0; x < finalWidth; x++) {
      int rx = x + cropX;
      int ry = y + cropY;
      int sx, sy;
      if (rotation == 90) {
        sx = ry;
        sy = height - 1 - rx;
      } else if (rotation == 180) {
        sx = width - 1 - rx;
        sy = height - 1 - ry;
      } else if (rotation == 270) {
        sx = width - 1 - ry;
        sy = rx;
      } else { // 0
        sx = rx;
        sy = ry;
      }

      float Y_val, U_val, V_val;
      if (isP010) {
        Y_val = (float)readValue<uint16_t>(yData + sy * yRowStride + sx * 2,
                                           false) /
                65535.0f;
        int uv_sx = sx / 2;
        int uv_sy = sy / 2;
        U_val =
            (static_cast<float>(readValue<uint16_t>(
                 uData + uv_sy * uvRowStride + uv_sx * uvPixelStride, false)) -
             32768.0f) /
            65535.0f;
        V_val =
            (static_cast<float>(readValue<uint16_t>(
                 vData + uv_sy * uvRowStride + uv_sx * uvPixelStride, false)) -
             32768.0f) /
            65535.0f;
      } else {
        Y_val = (float)yData[sy * yRowStride + sx] / 255.0f;
        int uv_sx = sx / 2;
        int uv_sy = sy / 2;
        U_val = (static_cast<float>(
                     uData[uv_sy * uvRowStride + uv_sx * uvPixelStride]) -
                 128.0f) /
                255.0f;
        V_val = (static_cast<float>(
                     vData[uv_sy * uvRowStride + uv_sx * uvPixelStride]) -
                 128.0f) /
                255.0f;
      }

      float R, G, B;
      if (isP010) {
        R = Y_val + 1.4746f * V_val;
        G = Y_val - 0.16455f * U_val - 0.57135f * V_val;
        B = Y_val + 1.8814f * U_val;
      } else {
        R = Y_val + 1.402f * V_val;
        G = Y_val - 0.344136f * U_val - 0.714136f * V_val;
        B = Y_val + 1.772f * U_val;
      }

      uint32_t r8 =
          static_cast<uint32_t>(std::max(0.0f, std::min(1.0f, R)) * 255.0f);
      uint32_t g8 =
          static_cast<uint32_t>(std::max(0.0f, std::min(1.0f, G)) * 255.0f);
      uint32_t b8 =
          static_cast<uint32_t>(std::max(0.0f, std::min(1.0f, B)) * 255.0f);
      ptr8[y * stride + x] = (255u << 24) | (b8 << 16) | (g8 << 8) | r8;
    }
  }

  AndroidBitmap_unlockPixels(env, outBitmap8);
}

/**
 * 从文件中读取并解压缩 RGBA 数据 (FP16)
 */
JNIEXPORT jobject JNICALL
Java_com_hinnka_mycamera_utils_YuvProcessor_loadCompressedArgb(
    JNIEnv *env, jobject /* this */, jstring inputPath) {

  const char *path = env->GetStringUTFChars(inputPath, nullptr);
  std::vector<uint16_t> pixels;
  int32_t width, height;

  // 使用 JXL_TYPE_FLOAT16 读取数据，以便于 OpenGL GLES 3.0 处理
  if (!loadJxl(path, pixels, width, height, JXL_TYPE_FLOAT16)) {
    env->ReleaseStringUTFChars(inputPath, path);
    return nullptr;
  }
  env->ReleaseStringUTFChars(inputPath, path);

  jshortArray result = env->NewShortArray((jsize)(pixels.size() + 2));
  if (result == nullptr) {
    LOGE("loadCompressedArgb: Failed to allocate result array");
    return nullptr;
  }

  size_t dataSize = pixels.size() * sizeof(uint16_t);
  void *nativeBuffer = malloc(dataSize);
  memcpy(nativeBuffer, pixels.data(), dataSize);

  return env->NewDirectByteBuffer(nativeBuffer, dataSize);
}

/**
 * 释放内存
 */
JNIEXPORT void JNICALL Java_com_hinnka_mycamera_utils_YuvProcessor_free(
    JNIEnv *env, jobject /* this */, jobject rawDataBuffer) {
  if (rawDataBuffer == nullptr)
    return;
  void *nativePtr = env->GetDirectBufferAddress(rawDataBuffer);
  if (nativePtr != nullptr) {
    LOGI("Freeing native buffer: %p", nativePtr);
    free(nativePtr);
  }
}

/**
 * 从 DNG 文件中提取 RAW 数据和元数据
 */
JNIEXPORT jobject JNICALL
Java_com_hinnka_mycamera_raw_RawDemosaicProcessor_extractDngDataNative(
    JNIEnv *env, jobject /* this */, jstring filePath) {

  const char *path = env->GetStringUTFChars(filePath, nullptr);
  if (path == nullptr) {
    LOGE("Failed to get file path");
    return nullptr;
  }

  LOGI("Parsing DNG file: %s", path);

  std::ifstream file(path, std::ios::binary | std::ios::ate);
  if (!file.is_open()) {
    LOGE("Failed to open DNG file: %s", path);
    env->ReleaseStringUTFChars(filePath, path);
    return nullptr;
  }

  std::streamsize fileSize = file.tellg();
  file.seekg(0, std::ios::beg);

  std::vector<uint8_t> fileData(fileSize);
  if (!file.read(reinterpret_cast<char *>(fileData.data()), fileSize)) {
    LOGE("Failed to read DNG file");
    file.close();
    env->ReleaseStringUTFChars(filePath, path);
    return nullptr;
  }
  file.close();

  if (fileSize < 8) {
    LOGE("File too small to be a valid TIFF");
    env->ReleaseStringUTFChars(filePath, path);
    return nullptr;
  }

  bool bigEndian;
  if (fileData[0] == 0x49 && fileData[1] == 0x49) {
    bigEndian = false;
  } else if (fileData[0] == 0x4D && fileData[1] == 0x4D) {
    bigEndian = true;
  } else {
    LOGE("Invalid TIFF header");
    env->ReleaseStringUTFChars(filePath, path);
    return nullptr;
  }

  uint16_t version = readValue<uint16_t>(&fileData[2], bigEndian);
  if (version != 42 && version != 43) {
    LOGE("Unsupported TIFF version: %d", version);
    env->ReleaseStringUTFChars(filePath, path);
    return nullptr;
  }

  uint32_t ifdOffset = readValue<uint32_t>(&fileData[4], bigEndian);

  std::vector<std::map<uint16_t, TiffTagData>> allIFDs;
  std::vector<uint32_t> pendingOffsets = {ifdOffset};
  std::vector<uint32_t> visitedOffsets;

  while (!pendingOffsets.empty()) {
    uint32_t offset = pendingOffsets.back();
    pendingOffsets.pop_back();

    if (std::find(visitedOffsets.begin(), visitedOffsets.end(), offset) !=
        visitedOffsets.end()) {
      continue;
    }
    visitedOffsets.push_back(offset);

    if (offset == 0 || offset + 2 >= fileData.size()) {
      continue;
    }

    auto ifd = parseTiffIFD(fileData, offset, bigEndian);
    if (ifd.empty()) {
      LOGD("  IFD at offset %u is empty", offset);
      continue;
    }

    allIFDs.push_back(ifd);

    uint16_t entryCount = readValue<uint16_t>(&fileData[offset], bigEndian);
    uint32_t nextPtr = offset + 2 + entryCount * 12;
    if (nextPtr + 4 <= fileData.size()) {
      uint32_t nextOffset = readValue<uint32_t>(&fileData[nextPtr], bigEndian);
      if (nextOffset > 0) {
        pendingOffsets.push_back(nextOffset);
      }
    }

    if (ifd.count(TiffTags::SubIFDs)) {
      auto &tag = ifd.at(TiffTags::SubIFDs);
      const uint8_t *p = tag.data.data();
      size_t typeWidth = (tag.type == SHORT) ? 2 : 4;
      for (size_t i = 0;
           i < tag.count && (i + 1) * typeWidth <= tag.data.size(); ++i) {
        uint32_t subOffset = (tag.type == SHORT)
                                 ? readValue<uint16_t>(p + i * 2, bigEndian)
                                 : readValue<uint32_t>(p + i * 4, bigEndian);
        if (subOffset > 0) {
          pendingOffsets.push_back(subOffset);
        }
      }
    }
  }

  DngMetadata metadata;
  metadata.width = 0;
  metadata.height = 0;
  metadata.whiteLevel = 65535.0f;
  metadata.bitsPerSample = 16;
  metadata.orientation = 1;
  metadata.rawDataOffset = 0;
  metadata.rawDataLength = 0;

  int rawIfdIndex = -1;
  uint32_t maxPixels = 0;

  for (int i = 0; i < allIFDs.size(); ++i) {
    auto &ifd = allIFDs[i];
    if (ifd.count(TiffTags::StripOffsets) && ifd.count(TiffTags::ImageWidth) &&
        ifd.count(TiffTags::ImageLength)) {
      uint32_t w = getUint32FromTag(ifd.at(TiffTags::ImageWidth), bigEndian);
      uint32_t h = getUint32FromTag(ifd.at(TiffTags::ImageLength), bigEndian);
      if (w * h > maxPixels) {
        maxPixels = w * h;
        rawIfdIndex = i;
      }
    }
  }

  // 收集元数据：先从所有 IFD 中收集基础元数据（如 AsShotNeutral 通常在主 IFD）
  for (size_t ifdIdx = 0; ifdIdx < allIFDs.size(); ++ifdIdx) {
    const auto &ifd = allIFDs[ifdIdx];

    if (ifd.count(TiffTags::Orientation))
      metadata.orientation =
          getUint16FromTag(ifd.at(TiffTags::Orientation), bigEndian);
    if (ifd.count(TiffTags::AsShotNeutral))
      metadata.asShotNeutral =
          getFloatArrayFromTag(ifd.at(TiffTags::AsShotNeutral), bigEndian);
    if (ifd.count(TiffTags::AnalogBalance))
      metadata.analogBalance =
          getFloatArrayFromTag(ifd.at(TiffTags::AnalogBalance), bigEndian);

    if (ifd.count(TiffTags::ColorMatrix1)) {
      metadata.colorMatrix1 =
          getFloatArrayFromTag(ifd.at(TiffTags::ColorMatrix1), bigEndian);
    }
    if (ifd.count(TiffTags::ColorMatrix2)) {
      metadata.colorMatrix2 =
          getFloatArrayFromTag(ifd.at(TiffTags::ColorMatrix2), bigEndian);
    }

    if (ifd.count(TiffTags::ForwardMatrix1)) {
      auto &tag = ifd.at(TiffTags::ForwardMatrix1);
      metadata.forwardMatrix1 = getFloatArrayFromTag(tag, bigEndian);
    }

    if (ifd.count(TiffTags::ForwardMatrix2)) {
      auto &tag = ifd.at(TiffTags::ForwardMatrix2);
      metadata.forwardMatrix2 = getFloatArrayFromTag(tag, bigEndian);
    }

    if (ifd.count(TiffTags::CalibrationIlluminant1))
      metadata.illuminant1 = static_cast<uint32_t>(getFloatArrayFromTag(
          ifd.at(TiffTags::CalibrationIlluminant1), bigEndian)[0]);
    if (ifd.count(TiffTags::CalibrationIlluminant2))
      metadata.illuminant2 = static_cast<uint32_t>(getFloatArrayFromTag(
          ifd.at(TiffTags::CalibrationIlluminant2), bigEndian)[0]);
    if (ifd.count(TiffTags::BaselineExposure)) {
      std::vector<float> be =
          getFloatArrayFromTag(ifd.at(TiffTags::BaselineExposure), bigEndian);
      if (!be.empty())
        metadata.baselineExposure = be[0];
    }
    if (ifd.count(TiffTags::WhiteLevel)) {
      auto wl = getFloatArrayFromTag(ifd.at(TiffTags::WhiteLevel), bigEndian);
      if (!wl.empty())
        metadata.whiteLevel = wl[0];
    }
    if (ifd.count(TiffTags::BlackLevel))
      metadata.blackLevel =
          getFloatArrayFromTag(ifd.at(TiffTags::BlackLevel), bigEndian);
    if (ifd.count(TiffTags::CFAPattern)) {
      auto &tag = ifd.at(TiffTags::CFAPattern);
      if (tag.data.size() >= 4)
        for (int j = 0; j < 4; j++)
          metadata.cfaPattern[j] = tag.data[j];
    }
  }

  if (rawIfdIndex != -1) {
    auto &ifd = allIFDs[rawIfdIndex];
    metadata.width = getUint32FromTag(ifd.at(TiffTags::ImageWidth), bigEndian);
    metadata.height =
        getUint32FromTag(ifd.at(TiffTags::ImageLength), bigEndian);
    metadata.bitsPerSample =
        ifd.count(TiffTags::BitsPerSample)
            ? getUint16FromTag(ifd.at(TiffTags::BitsPerSample), bigEndian)
            : 16;
    metadata.rawDataOffset =
        getUint32FromTag(ifd.at(TiffTags::StripOffsets), bigEndian);
    if (ifd.count(TiffTags::StripByteCounts)) {
      metadata.rawDataLength = 0;
      auto counts =
          getFloatArrayFromTag(ifd.at(TiffTags::StripByteCounts), bigEndian);
      for (float c : counts)
        metadata.rawDataLength += static_cast<uint32_t>(c);
    }
    if (ifd.count(TiffTags::BlackLevel))
      metadata.blackLevel =
          getFloatArrayFromTag(ifd.at(TiffTags::BlackLevel), bigEndian);
    if (ifd.count(TiffTags::WhiteLevel)) {
      auto wl = getFloatArrayFromTag(ifd.at(TiffTags::WhiteLevel), bigEndian);
      if (!wl.empty())
        metadata.whiteLevel = wl[0];
    }
    if (ifd.count(TiffTags::CFAPattern)) {
      auto &tag = ifd.at(TiffTags::CFAPattern);
      if (tag.data.size() >= 4)
        for (int j = 0; j < 4; j++)
          metadata.cfaPattern[j] = tag.data[j];
    }
    if (ifd.count(TiffTags::OpcodeList2)) {
      auto &opcodeTag = ifd.at(TiffTags::OpcodeList2);
      int cfaEnum = mapCfaPattern(metadata.cfaPattern);
      parseOpcodeList2ForLSC(opcodeTag.data, metadata, cfaEnum);
    }
  }

  // 计算白平衡增益
  if (!metadata.asShotNeutral.empty()) {
    metadata.wbGains.clear();
    for (float neutral : metadata.asShotNeutral) {
      metadata.wbGains.push_back((neutral > 1e-6f) ? (1.0f / neutral) : 1.0f);
    }
    if (metadata.wbGains.size() > 1) {
      float gGain = metadata.wbGains[1];
      if (gGain > 1e-6f) {
        for (float &g : metadata.wbGains)
          g /= gGain;
      }
    }
  }

  if (metadata.wbGains.empty()) {
    metadata.wbGains = {1.0f, 1.0f, 1.0f, 1.0f};
  } else if (metadata.wbGains.size() == 3) {
    metadata.wbGains = {metadata.wbGains[0], metadata.wbGains[1],
                        metadata.wbGains[1], metadata.wbGains[2]};
  }
  while (metadata.wbGains.size() < 4)
    metadata.wbGains.push_back(metadata.wbGains.back());

  if (metadata.blackLevel.empty()) {
    metadata.blackLevel = {0.0f, 0.0f, 0.0f, 0.0f};
  } else if (metadata.blackLevel.size() == 1) {
    float b = metadata.blackLevel[0];
    metadata.blackLevel = {b, b, b, b};
  } else if (metadata.blackLevel.size() == 4) {
    reorderArrayByPattern(metadata.blackLevel, metadata.cfaPattern);
  }

  const float XYZ_D50_TO_SRGB[9] = {3.1338561f,  -1.6168667f, -0.4906146f,
                                    -0.9787684f, 1.9161415f,  0.0334540f,
                                    0.0719453f,  -0.2289914f, 1.4052427f};

  float weight = 0.0f;
  if (metadata.illuminant1 != 0 && metadata.illuminant2 != 0 &&
      metadata.wbGains.size() >= 3 && metadata.wbGains[0] > 0 &&
      metadata.wbGains[2] > 0) {
    float temp1 = illuminantToTemp(metadata.illuminant1);
    float temp2 = illuminantToTemp(metadata.illuminant2);
    float rGain = metadata.wbGains[0];
    float bGain =
        metadata.wbGains[metadata.wbGains.size() > 2 ? 2 : 0]; // 假设 B 在索引
                                                               // 2 或 3
    if (metadata.wbGains.size() == 4 && metadata.cfaPattern[3] == 2)
      bGain = metadata.wbGains[3];
    float currentRatio = rGain / bGain;
    if (temp1 < 4000 && temp2 > 5000) {
      if (currentRatio < 0.5f)
        weight = 1.0f;
      else if (currentRatio > 0.8f)
        weight = 0.0f;
      else
        weight = (0.8f - currentRatio) / (0.8f - 0.5f);
    }
  }

  float m1[9], m2[9];
  bool hasM1 = false, hasM2 = false;
  if (!metadata.forwardMatrix1.empty()) {
    memcpy(m1, metadata.forwardMatrix1.data(), 36);
    hasM1 = true;
  } else if (!metadata.colorMatrix1.empty())
    hasM1 = invert3x3(metadata.colorMatrix1.data(), m1);
  if (!metadata.forwardMatrix2.empty()) {
    memcpy(m2, metadata.forwardMatrix2.data(), 36);
    hasM2 = true;
  } else if (!metadata.colorMatrix2.empty())
    hasM2 = invert3x3(metadata.colorMatrix2.data(), m2);

  float camToXYZ[9];
  if (hasM1 && hasM2) {
    for (int i = 0; i < 9; i++)
      camToXYZ[i] = m1[i] * weight + m2[i] * (1.0f - weight);
  } else if (hasM1)
    memcpy(camToXYZ, m1, 36);
  else if (hasM2)
    memcpy(camToXYZ, m2, 36);
  else {
    memset(camToXYZ, 0, 36);
    camToXYZ[0] = camToXYZ[4] = camToXYZ[8] = 1.0f;
  }

  float finalCCM[9];
  matmul3x3(XYZ_D50_TO_SRGB, camToXYZ, finalCCM);
  metadata.rowStride = metadata.width * (metadata.bitsPerSample / 8);

  if (rawIfdIndex == -1 || metadata.rawDataOffset == 0 ||
      metadata.rawDataLength == 0) {
    LOGE("Failed to find RAW pixels");
    env->ReleaseStringUTFChars(filePath, path);
    return nullptr;
  }

  auto &stripIFD = allIFDs[rawIfdIndex];
  auto stripOffsets =
      getFloatArrayFromTag(stripIFD.at(TiffTags::StripOffsets), bigEndian);
  auto stripCounts =
      getFloatArrayFromTag(stripIFD.at(TiffTags::StripByteCounts), bigEndian);
  size_t numStrips = stripOffsets.size();

  std::vector<uint8_t> assembledData;
  assembledData.reserve(metadata.rawDataLength);

  for (size_t i = 0; i < numStrips; i++) {
    uint32_t offset = static_cast<uint32_t>(stripOffsets[i]);
    uint32_t length = static_cast<uint32_t>(stripCounts[i]);
    if (offset + length > fileData.size()) {
      LOGE("Strip %zu out of bounds", i);
      env->ReleaseStringUTFChars(filePath, path);
      return nullptr;
    }
    assembledData.insert(assembledData.end(), fileData.begin() + offset,
                         fileData.begin() + offset + length);
  }

  uint8_t *persistentRawData = (uint8_t *)malloc(assembledData.size());
  if (!persistentRawData) {
    LOGE("Failed to allocate memory for RAW data");
    env->ReleaseStringUTFChars(filePath, path);
    return nullptr;
  }
  memcpy(persistentRawData, assembledData.data(), assembledData.size());

  jobject rawDataBuffer =
      env->NewDirectByteBuffer(persistentRawData, assembledData.size());
  if (rawDataBuffer == nullptr) {
    free(persistentRawData);
    env->ReleaseStringUTFChars(filePath, path);
    return nullptr;
  }

  jclass dngDataClass = env->FindClass("com/hinnka/mycamera/raw/DngRawData");
  if (dngDataClass == nullptr) {
    LOGE("Failed to find DngRawData class");
    env->ReleaseStringUTFChars(filePath, path);
    return nullptr;
  }

  jmethodID constructor = env->GetMethodID(
      dngDataClass, "<init>", "(Ljava/nio/ByteBuffer;IIIF[F[F[FIIF[FII)V");
  if (constructor == nullptr) {
    LOGE("Failed to find DngRawData constructor");
    env->ReleaseStringUTFChars(filePath, path);
    return nullptr;
  }

  jfloatArray blackLevelArray = env->NewFloatArray(4);
  env->SetFloatArrayRegion(blackLevelArray, 0, 4, metadata.blackLevel.data());
  jfloatArray wbArray = env->NewFloatArray(4);
  env->SetFloatArrayRegion(wbArray, 0, 4, metadata.wbGains.data());
  jfloatArray colorMatrixArray = env->NewFloatArray(9);
  env->SetFloatArrayRegion(colorMatrixArray, 0, 9, finalCCM);
  jfloatArray lscArray = nullptr;
  if (!metadata.lensShadingMap.empty()) {
    lscArray = env->NewFloatArray(metadata.lensShadingMap.size());
    env->SetFloatArrayRegion(lscArray, 0, metadata.lensShadingMap.size(),
                             metadata.lensShadingMap.data());
  }

  int cfaEnum = mapCfaPattern(metadata.cfaPattern);
  int rotation = orientationToRotation(metadata.orientation);
  jobject dngData = env->NewObject(
      dngDataClass, constructor, rawDataBuffer,
      static_cast<jint>(metadata.width), static_cast<jint>(metadata.height),
      static_cast<jint>(metadata.rowStride),
      static_cast<jfloat>(metadata.whiteLevel), blackLevelArray, wbArray,
      colorMatrixArray, static_cast<jint>(cfaEnum), static_cast<jint>(rotation),
      static_cast<jfloat>(metadata.baselineExposure), lscArray,
      static_cast<jint>(metadata.lscWidth),
      static_cast<jint>(metadata.lscHeight));

  env->ReleaseStringUTFChars(filePath, path);
  return dngData;
}

/**
 * 释放 DNG RAW 数据的 native 内存
 */
JNIEXPORT void JNICALL Java_com_hinnka_mycamera_raw_DngRawData_freeNativeBuffer(
    JNIEnv *env, jobject /* this */, jobject rawDataBuffer) {
  if (rawDataBuffer == nullptr)
    return;
  void *nativePtr = env->GetDirectBufferAddress(rawDataBuffer);
  if (nativePtr != nullptr) {
    LOGI("Freeing DNG RAW data native buffer: %p", nativePtr);
    free(nativePtr);
  }
}

} // extern "C"
