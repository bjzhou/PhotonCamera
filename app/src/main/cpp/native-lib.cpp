/**
 * native-lib.cpp
 *
 * JNI Interface for PhotonCamera native functions.
 */
#include <algorithm>
#include <android/bitmap.h>
#include <cmath>
#include <cstring>
#include <fstream>
#include <jni.h>
#include <map>
#include <omp.h>
#include <string>
#include <turbojpeg.h>
#include <vector>

#include "common.h"
#include "jxl_utils.h"
#include "libraw/libraw.h"
#include "math_utils.h"
#include "stacking_utils.h"
#include "vulkan_raw_stacker.h"
#include "vulkan_stacker.h"
#include <android/hardware_buffer_jni.h>

#ifndef LOG_TAG
#define LOG_TAG "native-lib"
#define LOGI(...) __android_log_print(ANDROID_LOG_INFO, LOG_TAG, __VA_ARGS__)
#define LOGE(...) __android_log_print(ANDROID_LOG_ERROR, LOG_TAG, __VA_ARGS__)
#endif

static jbyteArray encodeBitmapThumbnailToJpeg(JNIEnv *env,
                                              const libraw_processed_image_t *thumb,
                                              int quality = 90) {
  if (!thumb || !thumb->data || thumb->width <= 0 || thumb->height <= 0) {
    return nullptr;
  }

  if (thumb->colors != 1 && thumb->colors != 3) {
    LOGI("encodeBitmapThumbnailToJpeg: unsupported colors=%d", thumb->colors);
    return nullptr;
  }

  const int pixelFormat = thumb->colors == 3 ? TJPF_RGB : TJPF_GRAY;
  const int rowStride = thumb->width * thumb->colors;
  std::vector<unsigned char> converted;
  const unsigned char *src = thumb->data;

  if (thumb->bits == 16) {
    converted.resize(static_cast<size_t>(rowStride) * thumb->height);
    const auto *src16 = reinterpret_cast<const unsigned short *>(thumb->data);
    const size_t sampleCount =
        static_cast<size_t>(thumb->width) * thumb->height * thumb->colors;
    for (size_t i = 0; i < sampleCount; ++i) {
      converted[i] = static_cast<unsigned char>(src16[i] >> 8);
    }
    src = converted.data();
  } else if (thumb->bits != 8) {
    LOGI("encodeBitmapThumbnailToJpeg: unsupported bits=%d", thumb->bits);
    return nullptr;
  }

  tjhandle handle = tjInitCompress();
  if (!handle) {
    LOGE("encodeBitmapThumbnailToJpeg: tjInitCompress failed: %s",
         tjGetErrorStr());
    return nullptr;
  }

  unsigned char *jpegBuf = nullptr;
  unsigned long jpegSize = 0;
  const int ret =
      tjCompress2(handle, src, thumb->width, rowStride, thumb->height,
                  pixelFormat, &jpegBuf, &jpegSize, TJSAMP_420, quality,
                  TJFLAG_NOREALLOC | TJFLAG_FASTDCT);
  if (ret != 0 || !jpegBuf || jpegSize == 0) {
    LOGE("encodeBitmapThumbnailToJpeg: tjCompress2 failed: %s",
         tjGetErrorStr());
    if (jpegBuf) {
      tjFree(jpegBuf);
    }
    tjDestroy(handle);
    return nullptr;
  }

  jbyteArray result = env->NewByteArray(static_cast<jsize>(jpegSize));
  env->SetByteArrayRegion(result, 0, static_cast<jsize>(jpegSize),
                          reinterpret_cast<const jbyte *>(jpegBuf));
  tjFree(jpegBuf);
  tjDestroy(handle);
  return result;
}

static jobject createArgb8888Bitmap(JNIEnv *env, int width, int height) {
  jclass bitmapClass = env->FindClass("android/graphics/Bitmap");
  jclass configClass = env->FindClass("android/graphics/Bitmap$Config");
  jfieldID argb8888Field =
      env->GetStaticFieldID(configClass, "ARGB_8888",
                            "Landroid/graphics/Bitmap$Config;");
  jobject argb8888 = env->GetStaticObjectField(configClass, argb8888Field);
  jmethodID createBitmapMethod =
      env->GetStaticMethodID(bitmapClass, "createBitmap",
                             "(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;");
  return env->CallStaticObjectMethod(bitmapClass, createBitmapMethod, width,
                                     height, argb8888);
}

static jobject createBitmapFromRgba(JNIEnv *env, int width, int height,
                                    const unsigned char *rgbaData,
                                    int strideBytes) {
  if (!rgbaData || width <= 0 || height <= 0) {
    return nullptr;
  }

  jobject bitmap = createArgb8888Bitmap(env, width, height);
  if (!bitmap) {
    LOGE("createBitmapFromRgba: failed to allocate Bitmap %dx%d", width,
         height);
    return nullptr;
  }

  void *pixels = nullptr;
  if (AndroidBitmap_lockPixels(env, bitmap, &pixels) != ANDROID_BITMAP_RESULT_SUCCESS ||
      !pixels) {
    LOGE("createBitmapFromRgba: failed to lock pixels");
    return nullptr;
  }

  AndroidBitmapInfo info;
  if (AndroidBitmap_getInfo(env, bitmap, &info) != ANDROID_BITMAP_RESULT_SUCCESS) {
    AndroidBitmap_unlockPixels(env, bitmap);
    LOGE("createBitmapFromRgba: failed to query bitmap info");
    return nullptr;
  }

  const auto *src = rgbaData;
  auto *dst = reinterpret_cast<unsigned char *>(pixels);
  for (int y = 0; y < height; ++y) {
    std::memcpy(dst + y * info.stride, src + y * strideBytes,
                static_cast<size_t>(width) * 4);
  }

  AndroidBitmap_unlockPixels(env, bitmap);
  return bitmap;
}

static jobject decodeJpegPreviewToBitmap(JNIEnv *env, const unsigned char *jpegData,
                                         unsigned long jpegSize) {
  if (!jpegData || jpegSize == 0) {
    return nullptr;
  }

  tjhandle handle = tjInitDecompress();
  if (!handle) {
    LOGE("decodeJpegPreviewToBitmap: tjInitDecompress failed: %s",
         tjGetErrorStr());
    return nullptr;
  }

  int width = 0;
  int height = 0;
  int subsamp = 0;
  auto *mutableJpegData = const_cast<unsigned char *>(jpegData);
  if (tjDecompressHeader2(handle, mutableJpegData, jpegSize, &width, &height,
                          &subsamp) != 0) {
    LOGE("decodeJpegPreviewToBitmap: header decode failed: %s",
         tjGetErrorStr());
    tjDestroy(handle);
    return nullptr;
  }

  std::vector<unsigned char> rgba(static_cast<size_t>(width) * height * 4);
  if (tjDecompress2(handle, mutableJpegData, jpegSize, rgba.data(), width, width * 4,
                    height, TJPF_RGBA, TJFLAG_FASTUPSAMPLE |
                                            TJFLAG_FASTDCT) != 0) {
    LOGE("decodeJpegPreviewToBitmap: jpeg decode failed: %s", tjGetErrorStr());
    tjDestroy(handle);
    return nullptr;
  }

  tjDestroy(handle);
  return createBitmapFromRgba(env, width, height, rgba.data(), width * 4);
}

static jobject convertBitmapThumbnailToBitmap(JNIEnv *env,
                                              const libraw_processed_image_t *thumb) {
  if (!thumb || !thumb->data || thumb->width <= 0 || thumb->height <= 0) {
    return nullptr;
  }

  if (thumb->colors != 1 && thumb->colors != 3) {
    LOGI("convertBitmapThumbnailToBitmap: unsupported colors=%d", thumb->colors);
    return nullptr;
  }

  const size_t pixelCount = static_cast<size_t>(thumb->width) * thumb->height;
  std::vector<unsigned char> rgba(pixelCount * 4);

  if (thumb->bits == 8) {
    for (size_t i = 0; i < pixelCount; ++i) {
      const size_t srcIndex = i * thumb->colors;
      const unsigned char r = thumb->colors == 3 ? thumb->data[srcIndex] : thumb->data[i];
      const unsigned char g = thumb->colors == 3 ? thumb->data[srcIndex + 1] : thumb->data[i];
      const unsigned char b = thumb->colors == 3 ? thumb->data[srcIndex + 2] : thumb->data[i];
      const size_t dstIndex = i * 4;
      rgba[dstIndex] = r;
      rgba[dstIndex + 1] = g;
      rgba[dstIndex + 2] = b;
      rgba[dstIndex + 3] = 255;
    }
  } else if (thumb->bits == 16) {
    const auto *src16 = reinterpret_cast<const unsigned short *>(thumb->data);
    for (size_t i = 0; i < pixelCount; ++i) {
      const size_t srcIndex = i * thumb->colors;
      const unsigned char r =
          static_cast<unsigned char>((thumb->colors == 3 ? src16[srcIndex] : src16[i]) >> 8);
      const unsigned char g = static_cast<unsigned char>(
          (thumb->colors == 3 ? src16[srcIndex + 1] : src16[i]) >> 8);
      const unsigned char b = static_cast<unsigned char>(
          (thumb->colors == 3 ? src16[srcIndex + 2] : src16[i]) >> 8);
      const size_t dstIndex = i * 4;
      rgba[dstIndex] = r;
      rgba[dstIndex + 1] = g;
      rgba[dstIndex + 2] = b;
      rgba[dstIndex + 3] = 255;
    }
  } else {
    LOGI("convertBitmapThumbnailToBitmap: unsupported bits=%d", thumb->bits);
    return nullptr;
  }

  return createBitmapFromRgba(env, thumb->width, thumb->height, rgba.data(),
                              thumb->width * 4);
}

struct Matrix3x3 {
  float m[9];

  Matrix3x3() {
    for (int i = 0; i < 9; i++)
      m[i] = 0;
  }

  static Matrix3x3 identity() {
    Matrix3x3 res;
    res.m[0] = res.m[4] = res.m[8] = 1.0f;
    return res;
  }

  Matrix3x3 multiply(const Matrix3x3 &other) const {
    Matrix3x3 res;
    for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) {
        res.m[i * 3 + j] = m[i * 3 + 0] * other.m[0 * 3 + j] +
                           m[i * 3 + 1] * other.m[1 * 3 + j] +
                           m[i * 3 + 2] * other.m[2 * 3 + j];
      }
    }
    return res;
  }

  Matrix3x3 invert() const {
    float det = m[0] * (m[4] * m[8] - m[5] * m[7]) -
                m[1] * (m[3] * m[8] - m[5] * m[6]) +
                m[2] * (m[3] * m[7] - m[4] * m[6]);

    if (std::abs(det) < 1e-12f)
      return identity();

    float invDet = 1.0f / det;
    Matrix3x3 res;
    res.m[0] = (m[4] * m[8] - m[5] * m[7]) * invDet;
    res.m[1] = (m[2] * m[7] - m[1] * m[8]) * invDet;
    res.m[2] = (m[1] * m[5] - m[2] * m[4]) * invDet;
    res.m[3] = (m[5] * m[6] - m[3] * m[8]) * invDet;
    res.m[4] = (m[0] * m[8] - m[2] * m[6]) * invDet;
    res.m[5] = (m[2] * m[3] - m[0] * m[5]) * invDet;
    res.m[6] = (m[3] * m[7] - m[4] * m[6]) * invDet;
    res.m[7] = (m[1] * m[6] - m[0] * m[7]) * invDet;
    res.m[8] = (m[0] * m[4] - m[1] * m[3]) * invDet;
    return res;
  }
};

static float illuminantToTemp(int illuminant) {
  switch (illuminant) {
  case 1:
    return 5500.0f;
  case 2:
    return 4000.0f;
  case 3:
    return 3200.0f;
  case 4:
    return 3400.0f;
  case 9:
    return 6500.0f;
  case 10:
    return 7500.0f;
  case 11:
    return 8000.0f;
  case 17:
    return 2856.0f;
  case 21:
    return 6504.0f;
  case 23:
    return 5000.0f;
  default:
    return 5000.0f;
  }
}

static Matrix3x3 computeXYZD50ToGamut(float xr, float yr, float xg, float yg,
                                      float xb, float yb, float xw, float yw) {

  Matrix3x3 mS;
  mS.m[0] = xr / yr;
  mS.m[1] = xg / yg;
  mS.m[2] = xb / yb;
  mS.m[3] = 1.0f;
  mS.m[4] = 1.0f;
  mS.m[5] = 1.0f;
  mS.m[6] = (1 - xr - yr) / yr;
  mS.m[7] = (1 - xg - yg) / yg;
  mS.m[8] = (1 - xb - yb) / yb;

  Matrix3x3 invS = mS.invert();
  float Xw = xw / yw, Yw = 1.0f, Zw = (1 - xw - yw) / yw;
  float sR = invS.m[0] * Xw + invS.m[1] * Yw + invS.m[2] * Zw;
  float sG = invS.m[3] * Xw + invS.m[4] * Yw + invS.m[5] * Zw;
  float sB = invS.m[6] * Xw + invS.m[7] * Yw + invS.m[8] * Zw;

  Matrix3x3 gamutToXYZD65;
  gamutToXYZD65.m[0] = mS.m[0] * sR;
  gamutToXYZD65.m[1] = mS.m[1] * sG;
  gamutToXYZD65.m[2] = mS.m[2] * sB;
  gamutToXYZD65.m[3] = mS.m[3] * sR;
  gamutToXYZD65.m[4] = mS.m[4] * sG;
  gamutToXYZD65.m[5] = mS.m[5] * sB;
  gamutToXYZD65.m[6] = mS.m[6] * sR;
  gamutToXYZD65.m[7] = mS.m[7] * sG;
  gamutToXYZD65.m[8] = mS.m[8] * sB;

  float BRADFORD_D65_TO_D50[9] = {1.0478112f,  0.0228866f, -0.0501270f,
                                  0.0295424f,  0.9904844f, -0.0170491f,
                                  -0.0092345f, 0.0150436f, 0.7521316f};
  Matrix3x3 bMat;
  for (int i = 0; i < 9; i++)
    bMat.m[i] = BRADFORD_D65_TO_D50[i];

  Matrix3x3 gamutToXYZD50 = bMat.multiply(gamutToXYZD65);
  return gamutToXYZD50.invert();
}

static inline float hlgToLinear(float value) {
  constexpr float kHlgA = 0.17883277f;
  constexpr float kHlgB = 0.28466892f;
  constexpr float kHlgC = 0.55991073f;
  constexpr float kHdrReferenceScale = 6.0f;

  const float v = std::max(0.0f, value);
  const float linear = (v <= 0.5f)
                           ? (v * v) / 3.0f
                           : static_cast<float>(
                                 (std::exp((v - kHlgC) / kHlgA) + kHlgB) /
                                 12.0f);
  return linear * kHdrReferenceScale;
}

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
    jboolean enableSuperRes) {
  auto *stacker = new RawStacker(width, height, enableSuperRes);
  return reinterpret_cast<jlong>(stacker);
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
    JNIEnv *env, jobject, jint width, jint height, jboolean enableSuperRes,
    jfloatArray blackLevel, jint whiteLevel, jfloatArray wbGains,
    jfloatArray noiseModel, jfloatArray lensShadingMap, jint lscWidth,
    jint lscHeight) {

  float bl[4] = {0, 0, 0, 0};
  if (blackLevel) {
    jfloat *body = env->GetFloatArrayElements(blackLevel, nullptr);
    memcpy(bl, body, 4 * sizeof(float));
    env->ReleaseFloatArrayElements(blackLevel, body, 0);
  }

  float wb[4] = {1, 1, 1, 1};
  if (wbGains) {
    jfloat *body = env->GetFloatArrayElements(wbGains, nullptr);
    memcpy(wb, body, 4 * sizeof(float));
    env->ReleaseFloatArrayElements(wbGains, body, 0);
  }

  float noise[2] = {0, 0};
  if (noiseModel) {
    jfloat *body = env->GetFloatArrayElements(noiseModel, nullptr);
    memcpy(noise, body, 2 * sizeof(float));
    env->ReleaseFloatArrayElements(noiseModel, body, 0);
  }

  float *lsc = nullptr;
  if (lensShadingMap && lscWidth > 0 && lscHeight > 0) {
    lsc = env->GetFloatArrayElements(lensShadingMap, nullptr);
  }

  auto *stacker = new VulkanRawStacker(width, height, enableSuperRes, bl,
                                       (float)whiteLevel, wb, noise, lsc,
                                       (uint32_t)lscWidth, (uint32_t)lscHeight);

  if (lsc) {
    env->ReleaseFloatArrayElements(lensShadingMap, lsc, 0);
  }

  return reinterpret_cast<jlong>(stacker);
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
    jint format, jstring outputPath, jstring hdrSidecarPath, jobject outBitmap8) {
  const char *path = env->GetStringUTFChars(outputPath, nullptr);
  const char *hdrPath =
      hdrSidecarPath ? env->GetStringUTFChars(hdrSidecarPath, nullptr) : nullptr;

  // 1. 锁定 Bitmap 地址 (8-bit) 用于预览
  void *bitmapPixels;
  if (AndroidBitmap_lockPixels(env, outBitmap8, &bitmapPixels) < 0) {
    env->ReleaseStringUTFChars(outputPath, path);
    if (hdrPath)
      env->ReleaseStringUTFChars(hdrSidecarPath, hdrPath);
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
    if (hdrPath)
      env->ReleaseStringUTFChars(hdrSidecarPath, hdrPath);
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
  std::vector<uint16_t> hdrReferencePixels;
  if (isP010 && hdrPath) {
    hdrReferencePixels.resize(finalWidth * finalHeight * 4);
  }

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

      float hdrRInput, hdrGInput, hdrBInput;
      if (isP010) {
        hdrRInput = Y_val + 1.4746f * V_val;
        hdrGInput = Y_val - 0.16455f * U_val - 0.57135f * V_val;
        hdrBInput = Y_val + 1.8814f * U_val;
      } else {
        hdrRInput = Y_val + 1.402f * V_val;
        hdrGInput = Y_val - 0.344136f * U_val - 0.714136f * V_val;
        hdrBInput = Y_val + 1.772f * U_val;
      }

      const float R = std::max(0.0f, std::min(1.0f, hdrRInput));
      const float G = std::max(0.0f, std::min(1.0f, hdrGInput));
      const float B = std::max(0.0f, std::min(1.0f, hdrBInput));

      int idx = y * finalWidth + x;

      if (!hdrReferencePixels.empty()) {
        const float hdrR = hlgToLinear(hdrRInput);
        const float hdrG = hlgToLinear(hdrGInput);
        const float hdrB = hlgToLinear(hdrBInput);
        const int hdrIdx = idx * 4;
        hdrReferencePixels[hdrIdx + 0] = floatToHalf(hdrR);
        hdrReferencePixels[hdrIdx + 1] = floatToHalf(hdrG);
        hdrReferencePixels[hdrIdx + 2] = floatToHalf(hdrB);
        hdrReferencePixels[hdrIdx + 3] = floatToHalf(1.0f);
      }

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
  bool success = saveJxl(
      fp16Pixels.data(), finalWidth, finalHeight, JXL_TYPE_UINT16, path,
      isP010 ? JxlEncodingProfile::BT2100_HLG : JxlEncodingProfile::ORIGINAL);

  if (success && isP010 && hdrPath) {
    std::ofstream hdrOut(hdrPath, std::ios::binary);
    if (!hdrOut) {
      LOGE("Failed to open HDR sidecar path: %s", hdrPath);
      success = false;
    } else {
      hdrOut.write(reinterpret_cast<const char *>(hdrReferencePixels.data()),
                   static_cast<std::streamsize>(hdrReferencePixels.size() *
                                                sizeof(uint16_t)));
      hdrOut.close();
      if (!hdrOut.good()) {
        LOGE("Failed to write HDR sidecar: %s", hdrPath);
        success = false;
      }
    }
  }

  env->ReleaseStringUTFChars(outputPath, path);
  if (hdrPath)
    env->ReleaseStringUTFChars(hdrSidecarPath, hdrPath);
  return success ? JNI_TRUE : JNI_FALSE;
}

/**
 * 带有保存到本地文件的 JPG 压缩版本的 processToBitmap
 */
JNIEXPORT jboolean JNICALL
Java_com_hinnka_mycamera_utils_YuvProcessor_processToFile(
    JNIEnv *env, jobject /* this */, jobject yBuffer, jobject uBuffer,
    jobject vBuffer, jint width, jint height, jint yRowStride, jint uvRowStride,
    jint uvPixelStride, jint rotation, jint format, jstring outputPath) {

  const char *path = env->GetStringUTFChars(outputPath, nullptr);

  auto *yData = static_cast<uint8_t *>(env->GetDirectBufferAddress(yBuffer));
  auto *uData = static_cast<uint8_t *>(env->GetDirectBufferAddress(uBuffer));
  auto *vData = static_cast<uint8_t *>(env->GetDirectBufferAddress(vBuffer));

  if (yData == nullptr || uData == nullptr || vData == nullptr) {
    LOGE("Failed to get buffer addresses");
    env->ReleaseStringUTFChars(outputPath, path);
    return JNI_FALSE;
  }

  bool isP010 = (format == 0x36);
  int rotatedWidth = (rotation == 90 || rotation == 270) ? height : width;
  int rotatedHeight = (rotation == 90 || rotation == 270) ? width : height;

  std::vector<uint8_t> yDest(rotatedWidth * rotatedHeight);
  std::vector<uint8_t> uDest((rotatedWidth / 2) * (rotatedHeight / 2));
  std::vector<uint8_t> vDest((rotatedWidth / 2) * (rotatedHeight / 2));

#pragma omp parallel for num_threads(4)
  for (int y = 0; y < rotatedHeight; y++) {
    for (int x = 0; x < rotatedWidth; x++) {
      int sx, sy;
      if (rotation == 90) {
        sx = y;
        sy = height - 1 - x;
      } else if (rotation == 180) {
        sx = width - 1 - x;
        sy = height - 1 - y;
      } else if (rotation == 270) {
        sx = width - 1 - y;
        sy = x;
      } else { // 0
        sx = x;
        sy = y;
      }

      if (isP010) {
        yDest[y * rotatedWidth + x] =
            readValue<uint16_t>(yData + sy * yRowStride + sx * 2, false) >> 8;
      } else {
        yDest[y * rotatedWidth + x] = yData[sy * yRowStride + sx];
      }
    }
  }

#pragma omp parallel for num_threads(4)
  for (int y = 0; y < rotatedHeight / 2; y++) {
    for (int x = 0; x < rotatedWidth / 2; x++) {
      int rx = x * 2;
      int ry = y * 2;
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

      int uv_sx = sx / 2;
      int uv_sy = sy / 2;

      if (isP010) {
        uDest[y * (rotatedWidth / 2) + x] =
            readValue<uint16_t>(
                uData + uv_sy * uvRowStride + uv_sx * uvPixelStride, false) >>
            8;
        vDest[y * (rotatedWidth / 2) + x] =
            readValue<uint16_t>(
                vData + uv_sy * uvRowStride + uv_sx * uvPixelStride, false) >>
            8;
      } else {
        uDest[y * (rotatedWidth / 2) + x] =
            uData[uv_sy * uvRowStride + uv_sx * uvPixelStride];
        vDest[y * (rotatedWidth / 2) + x] =
            vData[uv_sy * uvRowStride + uv_sx * uvPixelStride];
      }
    }
  }

  tjhandle tjInstance = tj3Init(TJINIT_COMPRESS);
  if (!tjInstance) {
    LOGE("Failed to init turbojpeg: %s", tj3GetErrorStr(nullptr));
    env->ReleaseStringUTFChars(outputPath, path);
    return JNI_FALSE;
  }

  tj3Set(tjInstance, TJPARAM_QUALITY, 90);
  tj3Set(tjInstance, TJPARAM_SUBSAMP, TJSAMP_420);

  const unsigned char *srcPlanes[3] = {yDest.data(), uDest.data(),
                                       vDest.data()};
  int strides[3] = {rotatedWidth, rotatedWidth / 2, rotatedWidth / 2};

  unsigned char *jpegBuf = nullptr;
  size_t jpegSize = 0;

  if (tj3CompressFromYUVPlanes8(tjInstance, srcPlanes, rotatedWidth, strides,
                                rotatedHeight, &jpegBuf, &jpegSize) < 0) {
    LOGE("Failed to compress turbojpeg: %s", tj3GetErrorStr(tjInstance));
    tj3Destroy(tjInstance);
    env->ReleaseStringUTFChars(outputPath, path);
    return JNI_FALSE;
  }

  FILE *file = fopen(path, "wb");
  if (!file) {
    LOGE("Failed to open file for writing: %s", path);
    tj3Free(jpegBuf);
    tj3Destroy(tjInstance);
    env->ReleaseStringUTFChars(outputPath, path);
    return JNI_FALSE;
  }
  fwrite(jpegBuf, 1, jpegSize, file);
  fclose(file);

  tj3Free(jpegBuf);
  tj3Destroy(tjInstance);
  env->ReleaseStringUTFChars(outputPath, path);
  return JNI_TRUE;
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
  int32_t width, height;
  size_t dataSize = 0;

  // 使用 JXL_TYPE_FLOAT16 读取数据，以便于 OpenGL GLES 3.0 处理
  void *pixels = loadJxlRaw(path, width, height, JXL_TYPE_FLOAT16, dataSize);
  env->ReleaseStringUTFChars(inputPath, path);

  if (pixels == nullptr) {
    return nullptr;
  }

  // 直接返回像素数据，不再添加 4 字节宽高头，以保持与旧版本兼容
  return env->NewDirectByteBuffer(pixels, dataSize);
}

/**
 * 将 RGBA 数据 (FP16) 压缩并保存到文件
 * 注意：输入 buffer 应该直接包含像素数据，不含宽高头
 */
JNIEXPORT jboolean JNICALL
Java_com_hinnka_mycamera_utils_YuvProcessor_saveCompressedArgb(
    JNIEnv *env, jobject /* this */, jobject buffer, jint width, jint height,
    jstring outputPath) {

  if (buffer == nullptr || outputPath == nullptr)
    return JNI_FALSE;

  void *pixels = env->GetDirectBufferAddress(buffer);
  if (pixels == nullptr) {
    LOGE("saveCompressedArgb: Failed to get buffer address");
    return JNI_FALSE;
  }

  const char *path = env->GetStringUTFChars(outputPath, nullptr);
  bool success = saveJxl(pixels, width, height, JXL_TYPE_FLOAT16, path);
  env->ReleaseStringUTFChars(outputPath, path);

  return success ? JNI_TRUE : JNI_FALSE;
}

/**
 * 释放内存
 */
JNIEXPORT void JNICALL Java_com_hinnka_mycamera_utils_YuvProcessor_free(
    JNIEnv *env, jobject /* this */, jobject buffer) {
  if (buffer == nullptr)
    return;
  void *nativePtr = env->GetDirectBufferAddress(buffer);
  if (nativePtr != nullptr) {
    free(nativePtr);
  }
}

struct ExifData {
  int iso = 0;
  float noiseProfile[8] = {0, 0, 0, 0, 0, 0, 0, 0};
  bool hasNoiseProfile = false;
  int subjectLocation[4] = {0, 0, 0, 0};
  int subjectLocationLen = 0;
};

static int sget2(unsigned int ord, LibRaw_abstract_datastream *stream) {
  if (!stream)
    return 0;
  unsigned char s[2];
  if (stream->read(s, 1, 2) != 2)
    return 0;
  if (ord == 0x4d4d) // MM (Big Endian)
    return s[0] << 8 | s[1];
  else // II (Little Endian)
    return s[1] << 8 | s[0];
}

static int sget4(unsigned int ord, LibRaw_abstract_datastream *stream) {
  if (!stream)
    return 0;
  unsigned char s[4];
  if (stream->read(s, 1, 4) != 4)
    return 0;
  if (ord == 0x4d4d) // MM (Big Endian)
    return (s[0] << 24) | (s[1] << 16) | (s[2] << 8) | s[3];
  else // II (Little Endian)
    return (s[3] << 24) | (s[2] << 16) | (s[1] << 8) | s[0];
}

static void exif_callback(void *datap, int tag, int type, int len,
                          unsigned int ord, void *ifp, long long offset) {
  auto *ed = static_cast<ExifData *>(datap);
  auto *stream = static_cast<LibRaw_abstract_datastream *>(ifp);

  int actual_tag = tag & 0xFFFF;
  INT64 current_pos = stream->tell();

  if (offset != 0) {
    stream->seek(offset, SEEK_SET);
  }

  if (actual_tag == 0x8827) { // ISOSpeedRatings
    if (len > 0) {
      if (type == 3)
        ed->iso = sget2(ord, stream);
      else if (type == 4)
        ed->iso = sget4(ord, stream);
    }
  } else if (actual_tag == 0xC635 || actual_tag == 0xC761) { // NoiseProfile
    if (len > 0) {
      int count = std::min(len, 8);
      for (int i = 0; i < count; i++) {
        if (type == 12) { // DOUBLE
          double val = 0;
          stream->read(&val, 8, 1);
          ed->noiseProfile[i] = (float)val;
        } else if (type == 11) { // FLOAT
          float val = 0;
          stream->read(&val, 4, 1);
          ed->noiseProfile[i] = val;
        }
      }
      if (count > 0)
        ed->hasNoiseProfile = true;
    }
  } else if (actual_tag == 0x9214 ||
             actual_tag == 0xA214) { // SubjectLocation / SubjectArea
    if (len > 0) {
      int count = std::min(len, 4);
      for (int i = 0; i < count; i++) {
        if (type == 3)
          ed->subjectLocation[i] = sget2(ord, stream);
        else if (type == 4)
          ed->subjectLocation[i] = sget4(ord, stream);
      }
      ed->subjectLocationLen = count;
    }
  }

  // Always restore the stream position
  stream->seek(current_pos, SEEK_SET);
}

/**
 * 使用 LibRaw 处理 DNG 文件
 */
JNIEXPORT jobject JNICALL
Java_com_hinnka_mycamera_raw_RawDemosaicProcessor_processDngNative(
    JNIEnv *env, jobject /* this */, jstring filePath, jfloat xr, jfloat yr,
    jfloat xg, jfloat yg, jfloat xb, jfloat yb, jfloat xw, jfloat yw) {

  const char *path = env->GetStringUTFChars(filePath, nullptr);
  if (path == nullptr) {
    LOGE("Failed to get file path");
    return nullptr;
  }

  LibRaw RawProcessor;
  ExifData ed;
  RawProcessor.set_exifparser_handler(exif_callback, &ed);

  int ret = RawProcessor.open_file(path);
  if (ret != LIBRAW_SUCCESS) {
    LOGE("processDngNative: Failed to open file %s, ret=%d", path, ret);
    env->ReleaseStringUTFChars(filePath, path);
    return nullptr;
  }

  ret = RawProcessor.unpack();
  if (ret != LIBRAW_SUCCESS) {
    LOGE("processDngNative: Failed to unpack %s, ret=%d", path, ret);
    env->ReleaseStringUTFChars(filePath, path);
    return nullptr;
  }

  jobject embeddedPreviewBitmap = nullptr;
  ret = RawProcessor.unpack_thumb();
  if (ret == LIBRAW_SUCCESS) {
    libraw_processed_image_t *thumb = RawProcessor.dcraw_make_mem_thumb(&ret);
    if (thumb && ret == LIBRAW_SUCCESS) {
      if (thumb->type == LIBRAW_IMAGE_JPEG && thumb->data &&
          thumb->data_size > 0) {
        embeddedPreviewBitmap =
            decodeJpegPreviewToBitmap(env, thumb->data, thumb->data_size);
        LOGI("processDngNative: extracted embedded JPEG preview (%d bytes)",
             (int)thumb->data_size);
      } else if (thumb->type == LIBRAW_IMAGE_BITMAP) {
        embeddedPreviewBitmap = convertBitmapThumbnailToBitmap(env, thumb);
        if (embeddedPreviewBitmap) {
          LOGI("processDngNative: converted embedded bitmap preview %dx%d c=%d b=%d",
               thumb->width, thumb->height, thumb->colors, thumb->bits);
        } else {
          LOGI("processDngNative: failed to convert embedded bitmap preview %dx%d c=%d b=%d",
               thumb->width, thumb->height, thumb->colors, thumb->bits);
        }
      } else {
        LOGI("processDngNative: embedded preview present but unsupported type=%d",
             thumb->type);
      }
      LibRaw::dcraw_clear_mem(thumb);
    } else {
      LOGI("processDngNative: dcraw_make_mem_thumb failed ret=%d", ret);
    }
  } else {
    LOGI("processDngNative: unpack_thumb failed ret=%d err=%s", ret,
         libraw_strerror(ret));
  }

  // 配置处理参数
  RawProcessor.imgdata.params.output_bps = 16;
  RawProcessor.imgdata.params.gamm[0] = 1.0; // Linear
  RawProcessor.imgdata.params.gamm[1] = 1.0;
  RawProcessor.imgdata.params.no_auto_bright = 1;
  RawProcessor.imgdata.params.use_camera_wb = 1;
  RawProcessor.imgdata.params.output_color = 0; // Raw color space
  RawProcessor.imgdata.params.user_qual = 14;
  RawProcessor.imgdata.params.fbdd_noiserd = 0;
  RawProcessor.imgdata.params.threshold = 0;
  RawProcessor.imgdata.params.med_passes = 0;

  ret = RawProcessor.dcraw_process();
  if (ret != LIBRAW_SUCCESS) {
    LOGE("processDngNative: Failed to process %s, ret=%d", path, ret);
    env->ReleaseStringUTFChars(filePath, path);
    return nullptr;
  }

  // 获取处理后的图像
  libraw_processed_image_t *image = RawProcessor.dcraw_make_mem_image(&ret);
  if (!image || ret != 0) {
    LOGE("processDngNative: Failed to make mem image, ret=%d", ret);
    env->ReleaseStringUTFChars(filePath, path);
    return nullptr;
  }

  // 准备返回结果
  size_t outputSize = (size_t)image->width * image->height * 3 * 2;
  void *outData = malloc(outputSize);
  memcpy(outData, image->data, outputSize);
  jobject rawDataBuffer = env->NewDirectByteBuffer(outData, outputSize);

  // 提取元数据
  jclass dngDataClass = env->FindClass("com/hinnka/mycamera/raw/DngRawData");
  jmethodID constructor =
      env->GetMethodID(dngDataClass, "<init>",
                       "(Ljava/nio/ByteBuffer;IIIF[F[F[F[FIIF[FIIFIJF[I[FLandroid/graphics/Bitmap;)V");

  jfloatArray blackLevelArray = env->NewFloatArray(4);
  for (int i = 0; i < 4; i++) {
    // 注意偏移量是 6
    float val = RawProcessor.imgdata.color.dng_levels.dng_cblack[6 + i];
    env->SetFloatArrayRegion(blackLevelArray, i, 1, &val);
  }

  jfloatArray preMulArray = env->NewFloatArray(4);
  float preMul[4] = {1.0f, 1.0f, 1.0f, 1.0f};
  for (int i = 0; i < 4; i++) {
    const float val = RawProcessor.imgdata.color.pre_mul[i];
    preMul[i] = val > 0.0f ? val : 1.0f;
  }
  env->SetFloatArrayRegion(preMulArray, 0, 4, preMul);

  // 白平衡
  jfloatArray wbArray = env->NewFloatArray(4);
  float wb[4] = {1.0f, 1.0f, 1.0f, 1.0f};

  for (int i = 0; i < 4; i++)
    wb[i] = RawProcessor.imgdata.color.cam_mul[i];
  float base = wb[1];
  for (int i = 0; i < 4; i++) {
    wb[i] = wb[i] / base;
  }
  LOGI("wb: %f, %f, %f, %f", wb[0], wb[1], wb[2], wb[3]); // RGB0 or RGBG
  LOGI("cam_xyz: %f", RawProcessor.imgdata.color.cam_xyz[0][0]);
  LOGI("ccm: %f", RawProcessor.imgdata.color.ccm[0][0]);
  LOGI("cmatrix: %f", RawProcessor.imgdata.color.cmatrix[0][0]);
  LOGI("rgb_cam: %f", RawProcessor.imgdata.color.rgb_cam[0][0]);

  env->SetFloatArrayRegion(wbArray, 0, 1, &wb[0]);
  env->SetFloatArrayRegion(wbArray, 1, 1, &wb[1]);
  if (wb[3] > 0.0f) {
    env->SetFloatArrayRegion(wbArray, 2, 1, &wb[3]);
  } else {
    env->SetFloatArrayRegion(wbArray, 2, 1, &wb[1]);
  }
  env->SetFloatArrayRegion(wbArray, 3, 1, &wb[2]);

  // CCM (从 DNG ForwardMatrix 转换为目标色域)
  Matrix3x3 targetTransform =
      computeXYZD50ToGamut(xr, yr, xg, yg, xb, yb, xw, yw);
  Matrix3x3 m1 = Matrix3x3::identity();
  Matrix3x3 m2 = Matrix3x3::identity();
  bool hasM1 = false, hasM2 = false;

  auto getMatrix = [&](int index, Matrix3x3 &m) {
    float sumFM = 0.0f;
    for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) {
        m.m[i * 3 + j] =
            RawProcessor.imgdata.color.dng_color[index].forwardmatrix[i][j];
        sumFM += std::abs(m.m[i * 3 + j]);
      }
    }
    if (sumFM > 0.01f)
      return true;

    float sumCM = 0.0f;
    Matrix3x3 xyzToCam;
    for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) {
        xyzToCam.m[i * 3 + j] =
            RawProcessor.imgdata.color.dng_color[index].colormatrix[i][j];
        sumCM += std::abs(xyzToCam.m[i * 3 + j]);
      }
    }
    if (sumCM > 0.01f) {
      // 1. 确定参考光源的 XYZ 白点 (根据 DNG 规范)
      float lx, ly, lz;
      int ill = RawProcessor.imgdata.color.dng_color[index].illuminant;

      if (ill == 17) { // Standard Light A
        lx = 1.0985f;
        ly = 1.0000f;
        lz = 0.3558f;
      } else { // Assume D65
        lx = 0.9504f;
        ly = 1.0000f;
        lz = 1.0888f;
      }

      // 2. 计算相机对该光源的响应 (Camera Neutral / White Balance)
      // 这是 ColorMatrix 作用于光源 XYZ 的结果
      float cameraNeutral[3];
      for (int i = 0; i < 3; i++) {
        cameraNeutral[i] = xyzToCam.m[i * 3 + 0] * lx +
                           xyzToCam.m[i * 3 + 1] * ly +
                           xyzToCam.m[i * 3 + 2] * lz;
      }

      // 3. 构造中间矩阵：ColorMatrix * ReferenceDiagonal
      // 在 DNG 逻辑中，我们需要对 ColorMatrix 的每一列乘以对应的 CameraNeutral
      // 分量 这样做的目的是为了让矩阵在处理该光源下的“白点”时，输出为 [1, 1, 1]
      Matrix3x3 referenceMatrix = xyzToCam;
      for (int col = 0; col < 3; col++) {
        // 这一步非常关键：为了求逆后能还原，这里其实是预补偿白平衡
        referenceMatrix.m[0 * 3 + col] /= cameraNeutral[0];
        referenceMatrix.m[1 * 3 + col] /= cameraNeutral[1];
        referenceMatrix.m[2 * 3 + col] /= cameraNeutral[2];
      }

      // 4. 求逆：从 Camera 空间转回该光源下的 XYZ 空间
      // 现在 m 是从 Camera (White Balanced) -> XYZ (Illuminant Relative)
      m = referenceMatrix.invert();

      // 5. 应用色度适应 (Chromatic Adaptation) 映射到 D50
      // ForwardMatrix 必须映射到 D50 空间
      Matrix3x3 adapt;
      if (ill == 17) { // A to D50 (Bradford Transform)
        float a2d50[9] = {0.8924f,  -0.0157f, 0.0529f,  -0.1111f, 1.0505f,
                          -0.0151f, 0.0522f,  -0.0077f, 2.2396f};
        memcpy(adapt.m, a2d50, 9 * sizeof(float));
      } else { // D65 to D50 (Bradford Transform)
        float d652d50[9] = {1.0478f,  0.0229f,  -0.0501f, 0.0295f, 0.9905f,
                            -0.0170f, -0.0092f, 0.0150f,  0.7521f};
        memcpy(adapt.m, d652d50, 9 * sizeof(float));
      }
      m = adapt.multiply(m);
      return true;
    }
    return false;
  };

  hasM1 = getMatrix(0, m1);
  hasM2 = getMatrix(1, m2);

  LOGI("hasM1 = %d hasM2 = %d", hasM1, hasM2);

  float weight = 0.5f;
  if (hasM1 && hasM2) {
    float t1 =
        illuminantToTemp(RawProcessor.imgdata.color.dng_color[0].illuminant);
    float t2 =
        illuminantToTemp(RawProcessor.imgdata.color.dng_color[1].illuminant);
    float currentRatio = wb[0] / wb[2]; // R/B
    float rWarm = 0.5f, rCool = 1.6f;
    auto getTargetRatio = [&](float temp) {
      if (temp <= 2856.0f)
        return rWarm;
      if (temp >= 6504.0f)
        return rCool;
      return rWarm + (rCool - rWarm) * (temp - 2856.0f) / (6504.0f - 2856.0f);
    };
    float r1 = getTargetRatio(t1), r2 = getTargetRatio(t2);
    if (std::abs(r1 - r2) > 0.01f) {
      weight = (currentRatio - r2) / (r1 - r2);
      weight = std::max(0.0f, std::min(1.0f, weight));
    }
  }

  Matrix3x3 camToXYZ;
  if (hasM1 && hasM2) {
    for (int i = 0; i < 9; i++)
      camToXYZ.m[i] = m1.m[i] * weight + m2.m[i] * (1.0f - weight);
  } else if (hasM1)
    camToXYZ = m1;
  else if (hasM2)
    camToXYZ = m2;
  else {
    // 没有任何 DNG ForwardMatrix。
    // Bradford 变换 (D65 to D50)
    float d652d50[9] = {1.0478112f,  0.0228866f, -0.0501270f,
                        0.0295424f,  0.9904844f, -0.0170491f,
                        -0.0092345f, 0.0150436f, 0.7521316f};
    Matrix3x3 adapt;
    memcpy(adapt.m, d652d50, 9 * sizeof(float));

    Matrix3x3 xyzToCam;
    bool hasCamXYZ = false;
    for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) {
        // LibRaw 的 cam_xyz[chan][xyz] 是 XYZ-to-Camera 映射，与 ColorMatrix1/2
        // 结构相同
        xyzToCam.m[i * 3 + j] = RawProcessor.imgdata.color.cam_xyz[i][j];
        if (std::abs(xyzToCam.m[i * 3 + j]) > 0.0001f)
          hasCamXYZ = true;
      }
    }

    if (hasCamXYZ) {
      // 1. 视为 D65 下的 XYZ-to-Camera 矩阵进行标准化 (同 ColorMatrix 处理方式)
      float lx = 0.9504f, ly = 1.0000f, lz = 1.0888f; // D65
      float cameraNeutral[3];
      for (int i = 0; i < 3; i++) {
        cameraNeutral[i] = xyzToCam.m[i * 3 + 0] * lx +
                           xyzToCam.m[i * 3 + 1] * ly +
                           xyzToCam.m[i * 3 + 2] * lz;
      }
      Matrix3x3 referenceMatrix = xyzToCam;
      for (int col = 0; col < 3; col++) {
        if (std::abs(cameraNeutral[0]) > 0.001f)
          referenceMatrix.m[0 * 3 + col] /= cameraNeutral[0];
        if (std::abs(cameraNeutral[1]) > 0.001f)
          referenceMatrix.m[1 * 3 + col] /= cameraNeutral[1];
        if (std::abs(cameraNeutral[2]) > 0.001f)
          referenceMatrix.m[2 * 3 + col] /= cameraNeutral[2];
      }
      // 2. 求逆得到 Camera-to-XYZ
      camToXYZ = referenceMatrix.invert();
      // 3. 应用色度适应 D65 -> D50
      camToXYZ = adapt.multiply(camToXYZ);
      LOGI(
          "Using LibRaw cam_xyz (treated as ColorMatrix) converted to XYZ D50");
    } else {
      // 2. 尝试通过 LibRaw 的 ccm 反算。
      // 当 output_color = 0 时，ccm 通常仍然是针对默认 sRGB (D65) 的矩阵。
      Matrix3x3 camToSRGB;
      bool hasCCM = false;
      for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
          camToSRGB.m[i * 3 + j] = RawProcessor.imgdata.color.ccm[i][j];
          if (std::abs(camToSRGB.m[i * 3 + j]) > 0.0001f)
            hasCCM = true;
        }
      }

      if (hasCCM) {
        float srgb2xyz[9] = {0.4124564f, 0.3575761f, 0.1804375f,
                             0.2126729f, 0.7151522f, 0.0721750f,
                             0.0193339f, 0.1191920f, 0.9503041f};
        Matrix3x3 mSRGB2XYZ;
        memcpy(mSRGB2XYZ.m, srgb2xyz, 9 * sizeof(float));
        camToXYZ = adapt.multiply(mSRGB2XYZ.multiply(camToSRGB));
        LOGI("Using LibRaw ccm converted to XYZ D50");
      } else {
        // 3. 最后尝试 cmatrix (XYZ D65 to Camera)
        Matrix3x3 xyzToCam;
        bool hasCMatrix = false;
        for (int i = 0; i < 3; i++) {
          for (int j = 0; j < 3; j++) {
            xyzToCam.m[i * 3 + j] = RawProcessor.imgdata.color.cmatrix[i][j];
            if (std::abs(xyzToCam.m[i * 3 + j]) > 0.0001f)
              hasCMatrix = true;
          }
        }

        if (hasCMatrix) {
          float lx = 0.9504f, ly = 1.0000f, lz = 1.0888f;
          float cameraNeutral[3];
          for (int i = 0; i < 3; i++) {
            cameraNeutral[i] = xyzToCam.m[i * 3 + 0] * lx +
                               xyzToCam.m[i * 3 + 1] * ly +
                               xyzToCam.m[i * 3 + 2] * lz;
          }
          Matrix3x3 referenceMatrix = xyzToCam;
          for (int col = 0; col < 3; col++) {
            if (std::abs(cameraNeutral[0]) > 0.001f)
              referenceMatrix.m[0 * 3 + col] /= cameraNeutral[0];
            if (std::abs(cameraNeutral[1]) > 0.001f)
              referenceMatrix.m[1 * 3 + col] /= cameraNeutral[1];
            if (std::abs(cameraNeutral[2]) > 0.001f)
              referenceMatrix.m[2 * 3 + col] /= cameraNeutral[2];
          }
          camToXYZ = referenceMatrix.invert();
          camToXYZ = adapt.multiply(camToXYZ);
          LOGI("Using cmatrix fallback converted to XYZ D50");
        } else {
          camToXYZ = Matrix3x3::identity();
          LOGE("No color metadata found at all, using identity");
        }
      }
    }
  }

  Matrix3x3 finalCCM = targetTransform.multiply(camToXYZ);
  jfloatArray colorMatrixArray = env->NewFloatArray(9);
  env->SetFloatArrayRegion(colorMatrixArray, 0, 9, finalCCM.m);

  LOGI("finalCCM: %f, %f, %f, %f, %f, %f, %f, %f, %f", finalCCM.m[0],
       finalCCM.m[1], finalCCM.m[2], finalCCM.m[3], finalCCM.m[4],
       finalCCM.m[5], finalCCM.m[6], finalCCM.m[7], finalCCM.m[8]);

  // 其它
  jint width = image->width;
  jint height = image->height;
  jint rowStride = width * 6; // RGB16
  jfloat whiteLevel =
      (jfloat)RawProcessor.imgdata.color.dng_levels.dng_whitelevel[0];
  if (whiteLevel <= 0)
    whiteLevel = (jfloat)RawProcessor.imgdata.color.maximum;
  jint cfaPattern = -1; // CFA_LINEAR_RGB

  jfloat baselineExposure =
      RawProcessor.imgdata.color.dng_levels.baseline_exposure;
  jfloat exposureBias =
      RawProcessor.imgdata.makernotes.common.ExposureCalibrationShift;
  int iso = RawProcessor.imgdata.other.iso_speed;
  if (iso == 0)
    iso = ed.iso;

  jlong shutterSpeedLong =
      (jlong)(RawProcessor.imgdata.other.shutter * 1e9); // ns
  jfloat aperture = RawProcessor.imgdata.other.aperture;

  LOGI("iso = %d, shutterSpeed = %lld aperture = %f baselineExposure = %f "
       "exposureBias = %f",
       iso, (long long)shutterSpeedLong, aperture, baselineExposure,
       exposureBias);

  // ActiveArray: use margins to define the actual active sensor area
  jintArray activeArray = env->NewIntArray(4);
  jint aa[4] = {(jint)RawProcessor.imgdata.sizes.left_margin,
                (jint)RawProcessor.imgdata.sizes.top_margin,
                (jint)RawProcessor.imgdata.sizes.left_margin +
                    (jint)RawProcessor.imgdata.sizes.width,
                (jint)RawProcessor.imgdata.sizes.top_margin +
                    (jint)RawProcessor.imgdata.sizes.height};
  env->SetIntArrayRegion(activeArray, 0, 4, aa);

  // LOGI("aa: %d, %d, %d, %d", aa[0], aa[1], aa[2], aa[3]);

  jfloatArray afRegions = nullptr;
  jfloatArray noiseProfileArray = nullptr;
  if (ed.hasNoiseProfile) {
    noiseProfileArray = env->NewFloatArray(8);
    env->SetFloatArrayRegion(noiseProfileArray, 0, 8, ed.noiseProfile);
  }

  jobject dngData = env->NewObject(
      dngDataClass, constructor, rawDataBuffer, width, height, rowStride,
      whiteLevel, blackLevelArray, preMulArray, wbArray, colorMatrixArray,
      cfaPattern, 0, baselineExposure, nullptr, 0, 0, exposureBias, iso,
      shutterSpeedLong, aperture, activeArray, noiseProfileArray,
      embeddedPreviewBitmap);

  // 释放资源
  LibRaw::dcraw_clear_mem(image);
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
