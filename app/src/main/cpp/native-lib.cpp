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

struct Vec3 {
  float v[3];

  float &operator[](int index) { return v[index]; }
  const float &operator[](int index) const { return v[index]; }
};

static Vec3 multiplyMatrixVec3(const Matrix3x3 &matrix, const Vec3 &vector) {
  Vec3 result = {};
  for (int row = 0; row < 3; ++row) {
    result[row] = matrix.m[row * 3 + 0] * vector[0] +
                  matrix.m[row * 3 + 1] * vector[1] +
                  matrix.m[row * 3 + 2] * vector[2];
  }
  return result;
}

struct DngGainMap {
  uint32_t top = 0;
  uint32_t left = 0;
  uint32_t bottom = 0;
  uint32_t right = 0;
  uint32_t plane = 0;
  uint32_t planes = 0;
  uint32_t rowPitch = 0;
  uint32_t colPitch = 0;
  uint32_t mapPointsV = 0;
  uint32_t mapPointsH = 0;
  double mapSpacingV = 0.0;
  double mapSpacingH = 0.0;
  double mapOriginV = 0.0;
  double mapOriginH = 0.0;
  uint32_t mapPlanes = 0;
  std::vector<float> mapGain;
};

static Matrix3x3 mixMatrix3x3(const Matrix3x3 &first, float firstWeight,
                              const Matrix3x3 &second, float secondWeight) {
  Matrix3x3 result;
  for (int i = 0; i < 9; ++i) {
    result.m[i] = first.m[i] * firstWeight + second.m[i] * secondWeight;
  }
  return result;
}

static Matrix3x3 makeMatrix3x3(const float values[9]) {
  Matrix3x3 result;
  std::memcpy(result.m, values, 9 * sizeof(float));
  return result;
}

static float illuminantToTemp(int illuminant);

static std::array<float, 2> xyzToXy(const Vec3 &xyz) {
  const float total = xyz[0] + xyz[1] + xyz[2];
  if (total <= 1e-6f) {
    return {0.3457f, 0.3585f};
  }
  return {xyz[0] / total, xyz[1] / total};
}

static Vec3 xyToXyz(std::array<float, 2> xy) {
  xy[0] = std::clamp(xy[0], 1e-6f, 0.999999f);
  xy[1] = std::clamp(xy[1], 1e-6f, 0.999999f);

  const float sum = xy[0] + xy[1];
  if (sum > 0.999999f) {
    const float scale = 0.999999f / sum;
    xy[0] *= scale;
    xy[1] *= scale;
  }

  return {xy[0] / xy[1], 1.0f, (1.0f - xy[0] - xy[1]) / xy[1]};
}

static Matrix3x3 mapWhiteMatrix(const Vec3 &sourceWhite, const Vec3 &targetWhite) {
  Matrix3x3 bradford;
  const float values[9] = {
      0.8951f,  0.2664f, -0.1614f,
     -0.7502f,  1.7135f,  0.0367f,
      0.0389f, -0.0685f,  1.0296f,
  };
  std::memcpy(bradford.m, values, sizeof(values));

  Vec3 sourceBradford = multiplyMatrixVec3(bradford, sourceWhite);
  Vec3 targetBradford = multiplyMatrixVec3(bradford, targetWhite);
  for (int i = 0; i < 3; ++i) {
    sourceBradford[i] = std::max(sourceBradford[i], 0.0f);
    targetBradford[i] = std::max(targetBradford[i], 0.0f);
  }

  Matrix3x3 scale = Matrix3x3::identity();
  for (int i = 0; i < 3; ++i) {
    const float ratio = sourceBradford[i] > 0.0f ? targetBradford[i] / sourceBradford[i] : 10.0f;
    scale.m[i * 3 + i] = std::clamp(ratio, 0.1f, 10.0f);
  }

  return bradford.invert().multiply(scale).multiply(bradford);
}

static float xyCoordToTemperature(const std::array<float, 2> &whiteXy) {
  struct Ruvt {
    float reciprocalMegakelvin;
    float u;
    float v;
    float slope;
  };

  static const Ruvt table[] = {
      {0.f, 0.18006f, 0.26352f, -0.24341f},
      {10.f, 0.18066f, 0.26589f, -0.25479f},
      {20.f, 0.18133f, 0.26846f, -0.26876f},
      {30.f, 0.18208f, 0.27119f, -0.28539f},
      {40.f, 0.18293f, 0.27407f, -0.30470f},
      {50.f, 0.18388f, 0.27709f, -0.32675f},
      {60.f, 0.18494f, 0.28021f, -0.35156f},
      {70.f, 0.18611f, 0.28342f, -0.37915f},
      {80.f, 0.18740f, 0.28668f, -0.40955f},
      {90.f, 0.18880f, 0.28997f, -0.44278f},
      {100.f, 0.19032f, 0.29326f, -0.47888f},
      {125.f, 0.19462f, 0.30141f, -0.58204f},
      {150.f, 0.19962f, 0.30921f, -0.70471f},
      {175.f, 0.20525f, 0.31647f, -0.84901f},
      {200.f, 0.21142f, 0.32312f, -1.0182f},
      {225.f, 0.21807f, 0.32909f, -1.2168f},
      {250.f, 0.22511f, 0.33439f, -1.4512f},
      {275.f, 0.23247f, 0.33904f, -1.7298f},
      {300.f, 0.24010f, 0.34308f, -2.0637f},
      {325.f, 0.24702f, 0.34655f, -2.4681f},
      {350.f, 0.25591f, 0.34951f, -2.9641f},
      {375.f, 0.26400f, 0.35200f, -3.5814f},
      {400.f, 0.27218f, 0.35407f, -4.3633f},
      {425.f, 0.28039f, 0.35577f, -5.3762f},
      {450.f, 0.28863f, 0.35714f, -6.7262f},
      {475.f, 0.29685f, 0.35823f, -8.5955f},
      {500.f, 0.30505f, 0.35907f, -11.324f},
      {525.f, 0.31320f, 0.35968f, -15.628f},
      {550.f, 0.32129f, 0.36011f, -23.325f},
      {575.f, 0.32931f, 0.36038f, -40.770f},
      {600.f, 0.33724f, 0.36051f, -116.45f},
  };

  const float denominator = 1.5f - whiteXy[0] + 6.0f * whiteXy[1];
  if (std::abs(denominator) < 1e-6f) {
    return 5000.0f;
  }

  const float u = 2.0f * whiteXy[0] / denominator;
  const float v = 3.0f * whiteXy[1] / denominator;
  float lastDt = 0.0f;

  for (size_t index = 1; index < std::size(table); ++index) {
    float du = 1.0f;
    float dv = table[index].slope;
    const float length = std::sqrt(1.0f + dv * dv);
    du /= length;
    dv /= length;

    const float uu = u - table[index].u;
    const float vv = v - table[index].v;
    float dt = -uu * dv + vv * du;

    if (dt <= 0.0f || index == std::size(table) - 1) {
      if (dt > 0.0f) {
        dt = 0.0f;
      }
      dt = -dt;

      float fraction = 0.0f;
      if (index > 1) {
        fraction = dt / (lastDt + dt);
      }

      const float reciprocal = table[index - 1].reciprocalMegakelvin * fraction +
                               table[index].reciprocalMegakelvin * (1.0f - fraction);
      return reciprocal > 0.0f ? 1.0e6f / reciprocal : 5000.0f;
    }

    lastDt = dt;
  }

  return 5000.0f;
}

static bool hasAnyMatrix(const Matrix3x3 &matrix) {
  for (float value : matrix.m) {
    if (std::abs(value) > 1e-5f) {
      return true;
    }
  }
  return false;
}

static Matrix3x3 loadDngMatrix(const libraw_dng_color_t &dngColor, bool forwardMatrix) {
  Matrix3x3 result;
  for (int row = 0; row < 3; ++row) {
    for (int col = 0; col < 3; ++col) {
      result.m[row * 3 + col] = forwardMatrix ? dngColor.forwardmatrix[row][col]
                                              : dngColor.colormatrix[row][col];
    }
  }
  return result;
}

static std::array<float, 2> neutralToXy(const Vec3 &neutral, int preferredIlluminant,
                                        const libraw_dng_color_t *dngColors) {
  std::array<float, 2> currentXy = {0.3457f, 0.3585f};
  constexpr Vec3 kD50White = {0.3457f / 0.3585f, 1.0f, (1.0f - 0.3457f - 0.3585f) / 0.3585f};

  const Matrix3x3 colorMatrix1 = loadDngMatrix(dngColors[0], false);
  const Matrix3x3 colorMatrix2 = loadDngMatrix(dngColors[1], false);
  const bool hasColorMatrix1 = hasAnyMatrix(colorMatrix1);
  const bool hasColorMatrix2 = hasAnyMatrix(colorMatrix2);
  const float temperature1 = illuminantToTemp(dngColors[0].illuminant);
  const float temperature2 = illuminantToTemp(dngColors[1].illuminant);

  for (int pass = 0; pass < 30; ++pass) {
    float mix = 1.0f;
    if (hasColorMatrix1 && hasColorMatrix2 && temperature1 > 0.0f && temperature2 > 0.0f &&
        temperature1 != temperature2) {
      const float currentTemp = xyCoordToTemperature(currentXy);
      if (currentTemp <= temperature1) {
        mix = 1.0f;
      } else if (currentTemp >= temperature2) {
        mix = 0.0f;
      } else {
        const float inverseTemp = 1.0f / currentTemp;
        mix = (inverseTemp - (1.0f / temperature2)) /
              ((1.0f / temperature1) - (1.0f / temperature2));
      }
    } else if (preferredIlluminant == 2 && hasColorMatrix2) {
      mix = 0.0f;
    }

    Matrix3x3 xyzToCamera = hasColorMatrix1 ? colorMatrix1 : colorMatrix2;
    if (hasColorMatrix1 && hasColorMatrix2) {
      xyzToCamera = mixMatrix3x3(colorMatrix1, mix, colorMatrix2, 1.0f - mix);
    }

    const Vec3 whiteXyz = xyToXyz(currentXy);
    xyzToCamera = xyzToCamera.multiply(mapWhiteMatrix(kD50White, whiteXyz));
    const Vec3 nextXyz = multiplyMatrixVec3(xyzToCamera.invert(), neutral);
    std::array<float, 2> nextXy = xyzToXy(nextXyz);

    if (std::abs(nextXy[0] - currentXy[0]) + std::abs(nextXy[1] - currentXy[1]) < 1e-7f) {
      return nextXy;
    }

    if (pass == 29) {
      nextXy[0] = (currentXy[0] + nextXy[0]) * 0.5f;
      nextXy[1] = (currentXy[1] + nextXy[1]) * 0.5f;
    }
    currentXy = nextXy;
  }

  return currentXy;
}

static bool parseDngGainMapOpcode(const uint8_t *data, size_t size, size_t &offset,
                                  DngGainMap &gainMap) {
  if (offset + 12 > size) {
    return false;
  }
  offset += 12; // skip opcode version, flags and payload size

  auto readUInt = [&](uint32_t &out) -> bool {
    if (offset + 4 > size) {
      return false;
    }
    out = readBigEndian<uint32_t>(data + offset);
    offset += 4;
    return true;
  };
  auto readDouble = [&](double &out) -> bool {
    if (offset + 8 > size) {
      return false;
    }
    out = readBigEndian<double>(data + offset);
    offset += 8;
    return true;
  };
  auto readFloat = [&](float &out) -> bool {
    if (offset + 4 > size) {
      return false;
    }
    out = readBigEndian<float>(data + offset);
    offset += 4;
    return true;
  };

  if (!readUInt(gainMap.top) || !readUInt(gainMap.left) || !readUInt(gainMap.bottom) ||
      !readUInt(gainMap.right) || !readUInt(gainMap.plane) || !readUInt(gainMap.planes) ||
      !readUInt(gainMap.rowPitch) || !readUInt(gainMap.colPitch) ||
      !readUInt(gainMap.mapPointsV) || !readUInt(gainMap.mapPointsH) ||
      !readDouble(gainMap.mapSpacingV) || !readDouble(gainMap.mapSpacingH) ||
      !readDouble(gainMap.mapOriginV) || !readDouble(gainMap.mapOriginH) ||
      !readUInt(gainMap.mapPlanes)) {
    return false;
  }

  const size_t count = static_cast<size_t>(gainMap.mapPointsV) *
                       static_cast<size_t>(gainMap.mapPointsH) *
                       static_cast<size_t>(gainMap.mapPlanes);
  gainMap.mapGain.resize(count);
  for (size_t i = 0; i < count; ++i) {
    if (!readFloat(gainMap.mapGain[i])) {
      return false;
    }
  }
  return true;
}

static bool parseDngGainMaps(const libraw_dng_rawopcode_t &opcodeData,
                             std::vector<DngGainMap> &gainMaps) {
  gainMaps.clear();
  if (!opcodeData.data || opcodeData.len < 4) {
    return false;
  }

  const auto *bytes = static_cast<const uint8_t *>(opcodeData.data);
  size_t offset = 0;
  const uint32_t opcodeCount = readBigEndian<uint32_t>(bytes + offset);
  offset += 4;

  for (uint32_t i = 0; i < opcodeCount && offset + 4 <= opcodeData.len; ++i) {
    const uint32_t opcode = readBigEndian<uint32_t>(bytes + offset);
    offset += 4;
    if (opcode == 9 && gainMaps.size() < 4) {
      DngGainMap gainMap;
      if (!parseDngGainMapOpcode(bytes, opcodeData.len, offset, gainMap)) {
        return false;
      }
      gainMaps.push_back(std::move(gainMap));
    } else {
      if (offset + 12 > opcodeData.len) {
        return false;
      }
      offset += 8;
      const uint32_t payloadSize = readBigEndian<uint32_t>(bytes + offset);
      offset += 4;
      if (offset + payloadSize > opcodeData.len) {
        return false;
      }
      offset += payloadSize;
    }
  }

  return !gainMaps.empty();
}

static float sampleDngGainMapBilinear(const DngGainMap &gainMap, float x, float y) {
  const float maxX = static_cast<float>(std::max<int>(0, gainMap.mapPointsH - 1));
  const float maxY = static_cast<float>(std::max<int>(0, gainMap.mapPointsV - 1));
  const float fx = std::clamp(x, 0.0f, maxX);
  const float fy = std::clamp(y, 0.0f, maxY);

  const int x0 = static_cast<int>(std::floor(fx));
  const int y0 = static_cast<int>(std::floor(fy));
  const int x1 = std::min(x0 + 1, static_cast<int>(gainMap.mapPointsH) - 1);
  const int y1 = std::min(y0 + 1, static_cast<int>(gainMap.mapPointsV) - 1);
  const float tx = fx - static_cast<float>(x0);
  const float ty = fy - static_cast<float>(y0);

  auto at = [&](int sx, int sy) -> float {
    const size_t index =
        (static_cast<size_t>(sy) * gainMap.mapPointsH + static_cast<size_t>(sx)) * gainMap.mapPlanes;
    return gainMap.mapGain[index];
  };

  const float v00 = at(x0, y0);
  const float v10 = at(x1, y0);
  const float v01 = at(x0, y1);
  const float v11 = at(x1, y1);
  const float top = v00 + (v10 - v00) * tx;
  const float bottom = v01 + (v11 - v01) * tx;
  return top + (bottom - top) * ty;
}

static bool applySupportedDngGainMaps(LibRaw &rawProcessor, const float blackLevels[4]) {
  if (!rawProcessor.imgdata.rawdata.raw_image || !rawProcessor.imgdata.idata.filters) {
    return false;
  }

  std::vector<DngGainMap> gainMaps;
  if (!parseDngGainMaps(rawProcessor.imgdata.color.dng_levels.rawopcodes[1], gainMaps)) {
    return false;
  }

  if (gainMaps.size() != 4) {
    LOGI("dng gain map: unsupported map count=%zu", gainMaps.size());
    return false;
  }

  unsigned check = 0;
  bool isNoOp = true;
  for (const auto &gainMap : gainMaps) {
    if (gainMap.rowPitch != 2 || gainMap.colPitch != 2 || gainMap.mapPlanes != 1 ||
        gainMap.mapGain.empty() ||
        gainMap.mapGain.size() != static_cast<size_t>(gainMap.mapPointsV) *
                                     static_cast<size_t>(gainMap.mapPointsH) *
                                     static_cast<size_t>(gainMap.mapPlanes)) {
      LOGI("dng gain map: unsupported layout top=%u left=%u rowPitch=%u colPitch=%u mapPlanes=%u size=%zu",
           gainMap.top, gainMap.left, gainMap.rowPitch, gainMap.colPitch, gainMap.mapPlanes,
           gainMap.mapGain.size());
      return false;
    }

    if ((gainMap.top & 1u) == 0u) {
      check += ((gainMap.left & 1u) == 0u) ? 1u : 2u;
    } else {
      check += ((gainMap.left & 1u) == 0u) ? 4u : 8u;
    }

    for (float value : gainMap.mapGain) {
      if (std::abs(value - 1.0f) > 1e-6f) {
        isNoOp = false;
        break;
      }
    }
  }

  if (isNoOp || check != 15u) {
    LOGI("dng gain map: unsupported combination noop=%d check=%u", isNoOp ? 1 : 0, check);
    return false;
  }

  const int rawWidth = rawProcessor.imgdata.sizes.raw_width;
  const int rawHeight = rawProcessor.imgdata.sizes.raw_height;
  const int rawPitch = rawProcessor.imgdata.sizes.raw_pitch > 0
                           ? rawProcessor.imgdata.sizes.raw_pitch / static_cast<int>(sizeof(ushort))
                           : rawWidth;
  auto *rawImage = rawProcessor.imgdata.rawdata.raw_image;

  const float colScale = static_cast<float>(gainMaps[0].mapPointsH - 1) /
                         std::max(1, rawWidth);
  const float rowScale = static_cast<float>(gainMaps[0].mapPointsV - 1) /
                         std::max(1, rawHeight);

  const DngGainMap *mapByParity[2][2] = {};
  for (const auto &gainMap : gainMaps) {
    mapByParity[gainMap.top & 1u][gainMap.left & 1u] = &gainMap;
  }

  for (int y = 0; y < rawHeight; ++y) {
    const float ys = static_cast<float>(y) * rowScale;
    const float rowBlack[2] = {blackLevels[rawProcessor.FC(y, 0)], blackLevels[rawProcessor.FC(y, 1)]};
    float xs = 0.0f;
    for (int x = 0; x < rawWidth; ++x, xs += colScale) {
      const DngGainMap *gainMap = mapByParity[y & 1][x & 1];
      if (!gainMap) {
        continue;
      }
      const float gain = sampleDngGainMapBilinear(*gainMap, xs, ys);
      const float black = rowBlack[x & 1];
      float corrected = (static_cast<float>(rawImage[y * rawPitch + x]) - black) * gain + black;
      corrected = std::max(corrected, 0.0f);
      rawImage[y * rawPitch + x] = static_cast<ushort>(std::min(corrected, 65535.0f));
    }
  }

  LOGI("dng gain map: applied 4 maps size=%ux%u grid=%ux%u",
       rawWidth, rawHeight, gainMaps[0].mapPointsH, gainMaps[0].mapPointsV);
  return true;
}

struct DngWhiteBalanceInfo {
  bool valid = false;
  std::array<float, 2> whiteXy = {0.3457f, 0.3585f};
  float whiteTemperature = 5000.0f;
  float mix = 1.0f;
  Matrix3x3 mixedColorMatrix = Matrix3x3::identity();
};

static DngWhiteBalanceInfo resolveDngWhiteBalanceInfo(
    const Vec3 &neutral, int preferredIlluminant, const libraw_dng_color_t *dngColors) {
  DngWhiteBalanceInfo info;

  const Matrix3x3 colorMatrix1 = loadDngMatrix(dngColors[0], false);
  const Matrix3x3 colorMatrix2 = loadDngMatrix(dngColors[1], false);
  const bool hasColorMatrix1 = hasAnyMatrix(colorMatrix1);
  const bool hasColorMatrix2 = hasAnyMatrix(colorMatrix2);
  if (!hasColorMatrix1 && !hasColorMatrix2) {
    return info;
  }

  info.valid = true;
  info.whiteXy = neutralToXy(neutral, preferredIlluminant, dngColors);
  info.whiteTemperature = xyCoordToTemperature(info.whiteXy);

  const float temperature1 = illuminantToTemp(dngColors[0].illuminant);
  const float temperature2 = illuminantToTemp(dngColors[1].illuminant);

  float mix = 1.0f;
  if (hasColorMatrix1 && hasColorMatrix2 && temperature1 > 0.0f && temperature2 > 0.0f &&
      temperature1 != temperature2) {
    if (info.whiteTemperature <= temperature1) {
      mix = 1.0f;
    } else if (info.whiteTemperature >= temperature2) {
      mix = 0.0f;
    } else {
      const float inverseTemp = 1.0f / info.whiteTemperature;
      mix = (inverseTemp - (1.0f / temperature2)) /
            ((1.0f / temperature1) - (1.0f / temperature2));
    }
  } else if (preferredIlluminant == 2 && hasColorMatrix2) {
    mix = 0.0f;
  }

  info.mix = std::clamp(mix, 0.0f, 1.0f);
  info.mixedColorMatrix = hasColorMatrix1 ? colorMatrix1 : colorMatrix2;
  if (hasColorMatrix1 && hasColorMatrix2) {
    info.mixedColorMatrix = mixMatrix3x3(colorMatrix1, info.mix, colorMatrix2, 1.0f - info.mix);
  }

  return info;
}

static void sanitizeRgbgMultipliers(float multipliers[4]) {
  for (int i = 0; i < 4; ++i) {
    if (!std::isfinite(multipliers[i]) || multipliers[i] <= 0.0f) {
      multipliers[i] = (i == 3 && multipliers[1] > 0.0f) ? multipliers[1] : 1.0f;
    }
  }
  if (multipliers[3] <= 0.0f) {
    multipliers[3] = multipliers[1];
  }
}

static void normalizeByMax(float multipliers[4]) {
  sanitizeRgbgMultipliers(multipliers);
  float maxValue = 0.0f;
  for (int i = 0; i < 4; ++i) {
    maxValue = std::max(maxValue, multipliers[i]);
  }
  maxValue = std::max(maxValue, 1e-6f);
  for (int i = 0; i < 4; ++i) {
    multipliers[i] /= maxValue;
  }
}

static void normalizeByGreen(float multipliers[4]) {
  sanitizeRgbgMultipliers(multipliers);
  const float green = multipliers[1] > 0.0f ? multipliers[1]
                                            : (multipliers[3] > 0.0f ? multipliers[3] : 1.0f);
  const float safeGreen = std::max(green, 1e-6f);
  for (int i = 0; i < 4; ++i) {
    multipliers[i] /= safeGreen;
  }
}

static void clipRtTemperatureAndGreen(float &temperature, float &green) {
  temperature = std::clamp(temperature, 1500.0f, 60000.0f);
  green = std::clamp(green, 0.02f, 10.0f);
}

static void rtTempToXyz(float temperature, float &Xxyz, float &Zxyz) {
  temperature = std::clamp(temperature, 1500.0f, 60000.0f);

  double xD;
  if (temperature <= 4000.0f) {
    xD = -0.2661239e9 / (temperature * temperature * temperature) -
         0.2343589e6 / (temperature * temperature) +
         0.8776956e3 / temperature + 0.179910;
  } else if (temperature <= 7000.0f) {
    xD = -4.6070e9 / (temperature * temperature * temperature) +
         2.9678e6 / (temperature * temperature) + 0.09911e3 / temperature + 0.244063;
  } else {
    xD = -2.0064e9 / (temperature * temperature * temperature) +
         1.9018e6 / (temperature * temperature) + 0.24748e3 / temperature + 0.237040;
    if (temperature > 25000.0f) {
      xD -= ((temperature - 25000.0f) / 25000.0f) * 0.025f;
    }
  }

  double yD;
  if (temperature <= 4000.0f) {
    yD = -1.1063814 * xD * xD * xD - 1.34811020 * xD * xD + 2.18555832 * xD - 0.20219683;
  } else {
    yD = -3.0 * xD * xD + 2.87 * xD - 0.275;
  }

  Xxyz = static_cast<float>(xD / yD);
  Zxyz = static_cast<float>((1.0 - xD - yD) / yD);
}

static Vec3 rtTempToSrgbMultipliers(float temperature, float green) {
  clipRtTemperatureAndGreen(temperature, green);

  float Xwb;
  float Zwb;
  rtTempToXyz(temperature, Xwb, Zwb);

  static const float kSRGBD65_XYZ[9] = {
      3.2404542f, -1.5371385f, -0.4985314f,
     -0.9692660f,  1.8760108f,  0.0415560f,
      0.0556434f, -0.2040259f,  1.0572252f,
  };
  const Matrix3x3 srgbD65FromXyz = makeMatrix3x3(kSRGBD65_XYZ);
  Vec3 multipliers = multiplyMatrixVec3(srgbD65FromXyz, {Xwb, 1.0f, Zwb});
  multipliers[1] /= green;

  const float maxValue = std::max({multipliers[0], multipliers[1], multipliers[2], 1e-6f});
  for (int i = 0; i < 3; ++i) {
    multipliers[i] /= maxValue;
  }
  return multipliers;
}

static void rtMulToTempAndGreen(const Vec3 &multipliers, float &temperature, float &green) {
  float low = 1500.0f;
  float high = 60000.0f;
  temperature = 0.5f * (low + high);

  for (int i = 0; i < 24; ++i) {
    const Vec3 probe = rtTempToSrgbMultipliers(temperature, 1.0f);
    if ((probe[2] / std::max(probe[0], 1e-6f)) >
        (multipliers[2] / std::max(multipliers[0], 1e-6f))) {
      high = temperature;
    } else {
      low = temperature;
    }
    temperature = 0.5f * (low + high);
  }

  const Vec3 probe = rtTempToSrgbMultipliers(temperature, 1.0f);
  green = (probe[1] / std::max(probe[0], 1e-6f)) /
          (multipliers[1] / std::max(multipliers[0], 1e-6f));
  clipRtTemperatureAndGreen(temperature, green);
}

static void reorderRgbgToRggb(const float rgbg[4], float rggb[4]) {
  rggb[0] = rgbg[0];
  rggb[1] = rgbg[1];
  rggb[2] = rgbg[3] > 0.0f ? rgbg[3] : rgbg[1];
  rggb[3] = rgbg[2];
}

static Vec3 buildNeutralFromMetadata(const float asShotNeutral[4], const float whiteBalance[4]) {
  Vec3 neutral = {};
  const bool hasAsShotNeutral = asShotNeutral[0] > 0.0f && asShotNeutral[1] > 0.0f &&
                                asShotNeutral[2] > 0.0f;
  if (hasAsShotNeutral) {
    neutral[0] = asShotNeutral[0];
    neutral[1] = asShotNeutral[1];
    neutral[2] = asShotNeutral[2];
  } else {
    neutral[0] = 1.0f / std::max(whiteBalance[0], 1e-6f);
    neutral[1] = 1.0f / std::max(whiteBalance[1], 1e-6f);
    neutral[2] = 1.0f / std::max(whiteBalance[3], 1e-6f);
  }

  const float maxEntry = std::max({neutral[0], neutral[1], neutral[2], 1e-6f});
  for (int i = 0; i < 3; ++i) {
    neutral[i] /= maxEntry;
  }
  return neutral;
}

static bool loadLibRawRgbCam(const libraw_colordata_t &colorData, Matrix3x3 &rgbCam) {
  bool hasRgbCam = false;
  for (int row = 0; row < 3; ++row) {
    for (int col = 0; col < 3; ++col) {
      rgbCam.m[row * 3 + col] = colorData.rgb_cam[row][col];
      if (std::abs(rgbCam.m[row * 3 + col]) > 1e-5f) {
        hasRgbCam = true;
      }
    }
  }
  return hasRgbCam;
}

static bool buildRtProcessingWbRgbg(const float asShotNeutral[4], const float preMul[4],
                                    const float camMul[4], const libraw_colordata_t &colorData,
                                    float userMul[4], float &temperature, float &green) {
  Matrix3x3 rgbCam;
  if (!loadLibRawRgbCam(colorData, rgbCam)) {
    return false;
  }
  const Matrix3x3 camRgb = rgbCam.invert();

  float initialMul[4];
  const bool hasAsShotNeutral = asShotNeutral[0] > 0.0f && asShotNeutral[1] > 0.0f &&
                                asShotNeutral[2] > 0.0f;
  if (hasAsShotNeutral) {
    initialMul[0] = 1.0f / asShotNeutral[0];
    initialMul[1] = 1.0f / asShotNeutral[1];
    initialMul[2] = 1.0f / asShotNeutral[2];
    initialMul[3] = initialMul[1];
  } else {
    std::memcpy(initialMul, camMul, 4 * sizeof(float));
  }
  normalizeByGreen(initialMul);

  Vec3 cameraMultipliers = {std::max(preMul[0], 1e-6f) / std::max(initialMul[0], 1e-6f),
                            std::max(preMul[1], 1e-6f) / std::max(initialMul[1], 1e-6f),
                            std::max(preMul[2], 1e-6f) / std::max(initialMul[2], 1e-6f)};
  Vec3 cameraWb = multiplyMatrixVec3(rgbCam, cameraMultipliers);
  const float minCameraWb = std::min({cameraWb[0], cameraWb[1], cameraWb[2]});
  if (!std::isfinite(minCameraWb) || minCameraWb <= 0.0f) {
    return false;
  }
  cameraWb[0] /= cameraWb[1];
  cameraWb[2] /= cameraWb[1];
  cameraWb[1] = 1.0f;

  rtMulToTempAndGreen(cameraWb, temperature, green);

  const Vec3 rtSrgbMultipliers = rtTempToSrgbMultipliers(temperature, green);
  const Vec3 rtCameraWhite = multiplyMatrixVec3(camRgb, rtSrgbMultipliers);
  const float minCameraWhite = std::min({rtCameraWhite[0], rtCameraWhite[1], rtCameraWhite[2]});
  if (!std::isfinite(minCameraWhite) || minCameraWhite <= 0.0f) {
    return false;
  }

  userMul[0] = std::max(preMul[0], 1e-6f) / rtCameraWhite[0];
  userMul[1] = std::max(preMul[1], 1e-6f) / rtCameraWhite[1];
  userMul[2] = std::max(preMul[2], 1e-6f) / rtCameraWhite[2];
  userMul[3] = userMul[1];
  normalizeByGreen(userMul);
  return true;
}

static void buildProcessingWbRgbg(const float asShotNeutral[4], const float preMul[4],
                                  const float camMul[4], const libraw_colordata_t &colorData,
                                  float userMul[4], float &temperature, float &green,
                                  bool &usedRtModel) {
  usedRtModel = buildRtProcessingWbRgbg(asShotNeutral, preMul, camMul, colorData, userMul,
                                        temperature, green);
  if (usedRtModel) {
    return;
  }

  temperature = 0.0f;
  green = 1.0f;
  const bool hasAsShotNeutral = asShotNeutral[0] > 0.0f && asShotNeutral[1] > 0.0f &&
                                asShotNeutral[2] > 0.0f;
  if (hasAsShotNeutral) {
    userMul[0] = 1.0f / asShotNeutral[0];
    userMul[1] = 1.0f / asShotNeutral[1];
    userMul[2] = 1.0f / asShotNeutral[2];
    userMul[3] = userMul[1];
  } else {
    std::memcpy(userMul, camMul, 4 * sizeof(float));
  }
  normalizeByGreen(userMul);
}

static float illuminantToTemp(int illuminant) {
  switch (illuminant) {
  case 1:
    return 5500.0f;
  case 2:
    return 4150.0f;
  case 3:
    return 2850.0f;
  case 4:
    return 5500.0f;
  case 9:
    return 5500.0f;
  case 10:
    return 6500.0f;
  case 11:
    return 7500.0f;
  case 12:
    return 6400.0f;
  case 13:
    return 5050.0f;
  case 14:
    return 4150.0f;
  case 15:
    return 3525.0f;
  case 16:
    return 2925.0f;
  case 17:
    return 2850.0f;
  case 18:
    return 5500.0f;
  case 19:
    return 6500.0f;
  case 20:
    return 5500.0f;
  case 21:
    return 6500.0f;
  case 22:
    return 7500.0f;
  case 23:
    return 5000.0f;
  case 24:
    return 3200.0f;
  default:
    return 0.0f;
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

static void copyJavaFloatArray(JNIEnv *env, jfloatArray src, float *dst,
                               size_t count, float defaultValue) {
  for (size_t i = 0; i < count; ++i) {
    dst[i] = defaultValue;
  }

  if (!src) {
    return;
  }

  const jsize length = std::min<jsize>(env->GetArrayLength(src),
                                       static_cast<jsize>(count));
  if (length <= 0) {
    return;
  }

  jfloat *elements = env->GetFloatArrayElements(src, nullptr);
  if (!elements) {
    return;
  }

  std::memcpy(dst, elements, static_cast<size_t>(length) * sizeof(float));
  env->ReleaseFloatArrayElements(src, elements, JNI_ABORT);
}

static unsigned char mapCfaPatternToLibRaw(int cfaPattern) {
  switch (cfaPattern) {
  case 0:
    return LIBRAW_OPENBAYER_RGGB;
  case 1:
    return LIBRAW_OPENBAYER_GRBG;
  case 2:
    return LIBRAW_OPENBAYER_GBRG;
  case 3:
    return LIBRAW_OPENBAYER_BGGR;
  default:
    return 0;
  }
}

static void mapProjectRggbToLibRawRgbg(const float src[4], float dst[4]) {
  dst[0] = src[0];
  dst[1] = src[1];
  dst[2] = src[3];
  dst[3] = src[2];
}

static int roundNonNegative(float value) {
  return static_cast<int>(std::lround(std::max(0.0f, value)));
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

JNIEXPORT jboolean JNICALL
Java_com_hinnka_mycamera_processor_MultiFrameStacker_demosaicStackedRawWithLibRawNative(
    JNIEnv *env, jobject /* this */, jobject fusedBayerBuffer, jint width,
    jint height, jint cfaPattern, jfloatArray blackLevelArray, jint whiteLevel,
    jfloatArray wbGainsArray, jobject outputBuffer) {
  if (!fusedBayerBuffer || !outputBuffer || width <= 0 || height <= 0) {
    LOGE("demosaicStackedRawWithLibRawNative: invalid arguments");
    return JNI_FALSE;
  }

  auto *fusedBayerData = static_cast<unsigned char *>(
      env->GetDirectBufferAddress(fusedBayerBuffer));
  auto *outputData =
      static_cast<unsigned char *>(env->GetDirectBufferAddress(outputBuffer));
  if (!fusedBayerData || !outputData) {
    LOGE("demosaicStackedRawWithLibRawNative: failed to get buffer address");
    return JNI_FALSE;
  }

  const size_t inputBytes =
      static_cast<size_t>(width) * static_cast<size_t>(height) *
      sizeof(uint16_t);
  const size_t outputBytes =
      static_cast<size_t>(width) * static_cast<size_t>(height) * 3 *
      sizeof(uint16_t);
  const jlong inputCapacity = env->GetDirectBufferCapacity(fusedBayerBuffer);
  const jlong outputCapacity = env->GetDirectBufferCapacity(outputBuffer);
  if (inputCapacity < static_cast<jlong>(inputBytes) ||
      outputCapacity < static_cast<jlong>(outputBytes)) {
    LOGE("demosaicStackedRawWithLibRawNative: buffer too small in=%ld/%ld out=%ld/%ld",
         static_cast<long>(inputCapacity), static_cast<long>(inputBytes),
         static_cast<long>(outputCapacity), static_cast<long>(outputBytes));
    return JNI_FALSE;
  }

  const unsigned char libRawPattern = mapCfaPatternToLibRaw(cfaPattern);
  if (libRawPattern == 0) {
    LOGE("demosaicStackedRawWithLibRawNative: unsupported CFA pattern %d",
         cfaPattern);
    return JNI_FALSE;
  }

  float projectBlackLevel[4];
  float projectWbGains[4];
  float libRawWbGains[4];
  int libRawBlackLevels[4];
  int libRawBlackResiduals[4];
  copyJavaFloatArray(env, blackLevelArray, projectBlackLevel, 4, 0.0f);
  copyJavaFloatArray(env, wbGainsArray, projectWbGains, 4, 1.0f);
  mapProjectRggbToLibRawRgbg(projectWbGains, libRawWbGains);
  for (int i = 0; i < 4; ++i) {
    if (libRawWbGains[i] <= 0.0f) {
      libRawWbGains[i] = 1.0f;
    }
  }

  float projectBlackLevelOrdered[4];
  mapProjectRggbToLibRawRgbg(projectBlackLevel, projectBlackLevelOrdered);
  for (int i = 0; i < 4; ++i) {
    libRawBlackLevels[i] = roundNonNegative(projectBlackLevelOrdered[i]);
  }

  const int commonBlack =
      *std::min_element(std::begin(libRawBlackLevels), std::end(libRawBlackLevels));
  for (int i = 0; i < 4; ++i) {
    libRawBlackResiduals[i] = libRawBlackLevels[i] - commonBlack;
  }

  const int effectiveWhiteLevel =
      whiteLevel > commonBlack ? whiteLevel : 65535;

  LibRaw rawProcessor;
  int ret = rawProcessor.open_bayer(
      fusedBayerData, static_cast<unsigned>(inputBytes),
      static_cast<ushort>(width), static_cast<ushort>(height), 0, 0, 0, 0, 0,
      libRawPattern, 0, 0, static_cast<unsigned>(commonBlack));
  if (ret != LIBRAW_SUCCESS) {
    LOGE("demosaicStackedRawWithLibRawNative: open_bayer failed ret=%d err=%s",
         ret, libraw_strerror(ret));
    return JNI_FALSE;
  }

  rawProcessor.imgdata.params.output_bps = 16;
  rawProcessor.imgdata.params.gamm[0] = 1.0;
  rawProcessor.imgdata.params.gamm[1] = 1.0;
  rawProcessor.imgdata.params.no_auto_bright = 1;
  rawProcessor.imgdata.params.use_camera_wb = 0;
  rawProcessor.imgdata.params.use_auto_wb = 0;
  rawProcessor.imgdata.params.output_color = 0;
  rawProcessor.imgdata.params.user_qual = 14;
  rawProcessor.imgdata.params.fbdd_noiserd = 0;
  rawProcessor.imgdata.params.threshold = 0;
  rawProcessor.imgdata.params.med_passes = 0;
  rawProcessor.imgdata.params.user_black = commonBlack;
  rawProcessor.imgdata.params.user_sat = effectiveWhiteLevel;
  for (int i = 0; i < 4; ++i) {
    rawProcessor.imgdata.params.user_mul[i] = libRawWbGains[i];
    rawProcessor.imgdata.params.user_cblack[i] = libRawBlackResiduals[i];
  }

  ret = rawProcessor.unpack();
  if (ret != LIBRAW_SUCCESS) {
    LOGE("demosaicStackedRawWithLibRawNative: unpack failed ret=%d err=%s", ret,
         libraw_strerror(ret));
    return JNI_FALSE;
  }

  ret = rawProcessor.dcraw_process();
  if (ret != LIBRAW_SUCCESS) {
    LOGE("demosaicStackedRawWithLibRawNative: dcraw_process failed ret=%d err=%s",
         ret, libraw_strerror(ret));
    return JNI_FALSE;
  }

  libraw_processed_image_t *image = rawProcessor.dcraw_make_mem_image(&ret);
  if (!image || ret != LIBRAW_SUCCESS) {
    LOGE("demosaicStackedRawWithLibRawNative: dcraw_make_mem_image failed ret=%d err=%s",
         ret, libraw_strerror(ret));
    return JNI_FALSE;
  }

  const bool validImage = image->type == LIBRAW_IMAGE_BITMAP &&
                          image->colors == 3 && image->bits == 16 &&
                          image->width == width && image->height == height &&
                          image->data_size >= outputBytes;
  if (!validImage) {
    LOGE("demosaicStackedRawWithLibRawNative: unexpected image type=%d colors=%d bits=%d size=%u %dx%d",
         image->type, image->colors, image->bits, image->data_size,
         image->width, image->height);
    LibRaw::dcraw_clear_mem(image);
    return JNI_FALSE;
  }

  std::memcpy(outputData, image->data, outputBytes);
  LibRaw::dcraw_clear_mem(image);
  return JNI_TRUE;
}

/**
 * Vulkan Raw Stacking JNI Interface
 */
JNIEXPORT jlong JNICALL
Java_com_hinnka_mycamera_processor_MultiFrameStacker_createVulkanRawStackerNative(
    JNIEnv *env, jobject, jint width, jint height, jboolean enableSuperRes,
    jfloat superResScale,
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

  auto *stacker = new VulkanRawStacker(width, height, enableSuperRes,
                                       superResScale, bl,
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

  float dngBlackLevels[4] = {};
  for (int i = 0; i < 4; ++i) {
    dngBlackLevels[i] = static_cast<float>(RawProcessor.imgdata.color.dng_levels.dng_cblack[6 + i]);
  }
  const bool appliedDngGainMap = applySupportedDngGainMaps(RawProcessor, dngBlackLevels);
  LOGI("dng gain map: opcode2_len=%u applied=%d", RawProcessor.imgdata.color.dng_levels.rawopcodes[1].len,
       appliedDngGainMap ? 1 : 0);

  // 配置处理参数
  float rawPreMul[4];
  float rawCamMul[4];
  float asShotNeutral[4];
  float processingMul[4];
  float rtTemperature = 0.0f;
  float rtGreen = 1.0f;
  bool usedRtModel = false;
  for (int i = 0; i < 4; ++i) {
    rawPreMul[i] = RawProcessor.imgdata.color.pre_mul[i];
    rawCamMul[i] = RawProcessor.imgdata.color.cam_mul[i];
    asShotNeutral[i] = RawProcessor.imgdata.color.dng_levels.asshotneutral[i];
  }
  buildProcessingWbRgbg(asShotNeutral, rawPreMul, rawCamMul, RawProcessor.imgdata.color,
                        processingMul, rtTemperature, rtGreen, usedRtModel);

  RawProcessor.imgdata.params.output_bps = 16;
  RawProcessor.imgdata.params.gamm[0] = 1.0; // Linear
  RawProcessor.imgdata.params.gamm[1] = 1.0;
  RawProcessor.imgdata.params.no_auto_bright = 1;
  RawProcessor.imgdata.params.use_camera_wb = 0;
  RawProcessor.imgdata.params.use_auto_wb = 0;
  RawProcessor.imgdata.params.output_color = 0; // Raw color space
  RawProcessor.imgdata.params.user_qual = 14;
  RawProcessor.imgdata.params.fbdd_noiserd = 0;
  RawProcessor.imgdata.params.threshold = 0;
  RawProcessor.imgdata.params.med_passes = 0;
  for (int i = 0; i < 4; ++i) {
    RawProcessor.imgdata.params.user_mul[i] = processingMul[i];
  }

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
    float val = dngBlackLevels[i];
    env->SetFloatArrayRegion(blackLevelArray, i, 1, &val);
  }

  jfloatArray preMulArray = env->NewFloatArray(4);
  float preMul[4] = {rawPreMul[0], rawPreMul[1], rawPreMul[2], rawPreMul[3]};
  normalizeByMax(preMul);
  float preMulRggb[4];
  reorderRgbgToRggb(preMul, preMulRggb);
  env->SetFloatArrayRegion(preMulArray, 0, 4, preMulRggb);

  // 白平衡
  jfloatArray wbArray = env->NewFloatArray(4);
  float wb[4] = {processingMul[0], processingMul[1], processingMul[2], processingMul[3]};
  float wbRggb[4];
  reorderRgbgToRggb(wb, wbRggb);
  env->SetFloatArrayRegion(wbArray, 0, 4, wbRggb);
  LOGI("rt wb metadata model=%s temp=%f green=%f userMul_rgbg=(%f, %f, %f, %f) rggb=(%f, %f, %f, %f) premul_rggb=(%f, %f, %f, %f) camMul=(%f, %f, %f, %f) asn=(%f, %f, %f, %f)",
       usedRtModel ? "rt" : "fallback", rtTemperature, rtGreen,
       wb[0], wb[1], wb[2], wb[3],
       wbRggb[0], wbRggb[1], wbRggb[2], wbRggb[3],
       preMulRggb[0], preMulRggb[1], preMulRggb[2], preMulRggb[3],
       rawCamMul[0], rawCamMul[1], rawCamMul[2], rawCamMul[3],
       asShotNeutral[0], asShotNeutral[1], asShotNeutral[2], asShotNeutral[3]);

  // CCM (按照 RawTherapee/DNG 参考流程: neutral -> xy -> dual illuminant mix)
  Matrix3x3 targetTransform =
      computeXYZD50ToGamut(xr, yr, xg, yg, xb, yb, xw, yw);
  Matrix3x3 camToXYZ;
  const libraw_dng_color_t *dngColors = RawProcessor.imgdata.color.dng_color;
  const Matrix3x3 colorMatrix1 = loadDngMatrix(dngColors[0], false);
  const Matrix3x3 colorMatrix2 = loadDngMatrix(dngColors[1], false);
  const Matrix3x3 forwardMatrix1 = loadDngMatrix(dngColors[0], true);
  const Matrix3x3 forwardMatrix2 = loadDngMatrix(dngColors[1], true);
  const bool hasColorMatrix1 = hasAnyMatrix(colorMatrix1);
  const bool hasColorMatrix2 = hasAnyMatrix(colorMatrix2);
  const bool hasForwardMatrix1 = hasAnyMatrix(forwardMatrix1);
  const bool hasForwardMatrix2 = hasAnyMatrix(forwardMatrix2);

  if (hasColorMatrix1 || hasColorMatrix2 || hasForwardMatrix1 || hasForwardMatrix2) {
    const Vec3 neutral = buildNeutralFromMetadata(asShotNeutral, wb);
    const DngWhiteBalanceInfo wbInfo = resolveDngWhiteBalanceInfo(neutral, 0, dngColors);
    const std::array<float, 2> whiteXy = wbInfo.valid ? wbInfo.whiteXy
                                                      : std::array<float, 2>{0.3457f, 0.3585f};
    const Vec3 whiteXyz = xyToXyz(whiteXy);
    constexpr Vec3 kD50White = {0.3457f / 0.3585f, 1.0f, (1.0f - 0.3457f - 0.3585f) / 0.3585f};

    float mix = wbInfo.valid ? wbInfo.mix : 1.0f;
    if (!hasColorMatrix1 && hasColorMatrix2) {
      mix = 0.0f;
    } else if (!hasForwardMatrix1 && hasForwardMatrix2) {
      mix = 0.0f;
    }

    Matrix3x3 mixedColorMatrix =
        wbInfo.valid ? wbInfo.mixedColorMatrix : (hasColorMatrix1 ? colorMatrix1 : colorMatrix2);

    if (hasForwardMatrix1 || hasForwardMatrix2) {
      Matrix3x3 mixedForwardMatrix = hasForwardMatrix1 ? forwardMatrix1 : forwardMatrix2;
      if (hasForwardMatrix1 && hasForwardMatrix2) {
        mixedForwardMatrix = mixMatrix3x3(forwardMatrix1, mix, forwardMatrix2, 1.0f - mix);
      }
      camToXYZ = mixedForwardMatrix;
    } else {
      const Matrix3x3 xyzToCam =
          mixedColorMatrix.multiply(mapWhiteMatrix(kD50White, whiteXyz));
      camToXYZ = xyzToCam.invert();
    }

    LOGI("rt dng wb xy=(%f, %f) temp=%f mix=%f ill=(%d, %d)",
         whiteXy[0], whiteXy[1], xyCoordToTemperature(whiteXy), mix,
         dngColors[0].illuminant, dngColors[1].illuminant);
  } else {
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
