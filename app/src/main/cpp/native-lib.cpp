/**
 * native-lib.cpp
 *
 * 使用 libyuv 实现 YUV 图像处理：旋转、裁切、转换为 ARGB
 */
#include "libyuv.h"
#include <algorithm>
#include <android/log.h>
#include <cstdlib>
#include <cstring>
#include <fstream>
#include <jni.h>
#include <map>
#include <type_traits>
#include <vector>
#include <zlib.h>

#define LOG_TAG "YuvProcessor"
#define LOGI(...) __android_log_print(ANDROID_LOG_INFO, LOG_TAG, __VA_ARGS__)
#define LOGE(...) __android_log_print(ANDROID_LOG_ERROR, LOG_TAG, __VA_ARGS__)
#define LOGD(...) __android_log_print(ANDROID_LOG_DEBUG, LOG_TAG, __VA_ARGS__)

// TIFF 标签定义
namespace TiffTags {
const uint16_t ImageWidth = 256;
const uint16_t ImageLength = 257;
const uint16_t BitsPerSample = 258;
const uint16_t Compression = 259;
const uint16_t PhotometricInterpretation = 262;
const uint16_t Orientation = 274; // EXIF 旋转方向
const uint16_t StripOffsets = 273;
const uint16_t SamplesPerPixel = 277;
const uint16_t RowsPerStrip = 278;
const uint16_t StripByteCounts = 279;
const uint16_t PlanarConfiguration = 284;
const uint16_t SubIFDs = 330;
const uint16_t CFARepeatPatternDim = 33421;
const uint16_t CFAPattern = 33422;
const uint16_t BlackLevel = 50714;
const uint16_t WhiteLevel = 50717;
const uint16_t CalibrationIlluminant1 = 50778;
const uint16_t CalibrationIlluminant2 = 50779;
const uint16_t CameraCalibration1 = 50723;
const uint16_t CameraCalibration2 = 50724;
const uint16_t AnalogBalance = 50727;
const uint16_t AsShotNeutral = 50728;
const uint16_t ColorMatrix1 = 50721;
const uint16_t ColorMatrix2 = 50722;
const uint16_t ForwardMatrix1 = 50964;
const uint16_t ForwardMatrix2 = 50965;
const uint16_t BaselineExposure = 50730;
const uint16_t OpcodeList2 = 51009; // 镜头校正 opcodes (包含 LSC)
} // namespace TiffTags

// TIFF 数据类型
enum TiffType {
  BYTE = 1,
  ASCII = 2,
  SHORT = 3,
  LONG = 4,
  RATIONAL = 5,
  SBYTE = 6,
  UNDEFINED = 7,
  SSHORT = 8,
  SLONG = 9,
  SRATIONAL = 10,
  FLOAT = 11,
  DOUBLE = 12
};

// TIFF 数据标签及其对应数据
struct TiffTagData {
  uint16_t type;
  uint32_t count;
  std::vector<uint8_t> data;
};

// DNG 元数据结构
struct DngMetadata {
  uint32_t width;
  uint32_t height;
  uint32_t bitsPerSample;
  uint32_t cfaPattern[4]; // [0]=R, [1]=Gr, [2]=Gb, [3]=B 的位置模式
  std::vector<float> blackLevel;
  float whiteLevel;
  std::vector<float> asShotNeutral; // 原始 AsShotNeutral 值
  std::vector<float> analogBalance; // AnalogBalance 值
  std::vector<float> wbGains;       // 计算出的白平衡增益
  std::vector<float> colorMatrix1;
  std::vector<float> colorMatrix2;
  std::vector<float> forwardMatrix1;
  std::vector<float> forwardMatrix2;
  uint32_t illuminant1 = 0;
  uint32_t illuminant2 = 0;
  float baselineExposure = 0.0f;
  uint32_t rawDataOffset;
  uint32_t rawDataLength;
  uint32_t rowStride;
  uint16_t orientation; // EXIF 旋转方向 (1-8)

  // Lens Shading Map (LSC) 数据
  std::vector<float> lensShadingMap; // LSC 增益表
  uint32_t lscWidth = 0;             // LSC 表宽度
  uint32_t lscHeight = 0;            // LSC 表高度
};

// 读取不同字节序的值
template <typename T> T readValue(const uint8_t *data, bool bigEndian) {
  T value = 0;
  if (bigEndian) {
    for (size_t i = 0; i < sizeof(T); i++) {
      value = (value << 8) | data[i];
    }
  } else {
    for (size_t i = 0; i < sizeof(T); i++) {
      value |= static_cast<T>(data[i]) << (i * 8);
    }
  }
  return value;
}

// 矩阵运算工具
void matmul3x3(const float *A, const float *B, float *out) {
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      out[i * 3 + j] = A[i * 3 + 0] * B[0 * 3 + j] +
                       A[i * 3 + 1] * B[1 * 3 + j] +
                       A[i * 3 + 2] * B[2 * 3 + j];
    }
  }
}

float determinant3x3(const float *M) {
  return M[0] * (M[4] * M[8] - M[5] * M[7]) -
         M[1] * (M[3] * M[8] - M[5] * M[6]) +
         M[2] * (M[3] * M[7] - M[4] * M[6]);
}

bool invert3x3(const float *M, float *out) {
  float det = determinant3x3(M);
  if (std::abs(det) < 1e-12)
    return false;
  float invDet = 1.0f / det;

  // 标准的 3x3 矩阵求逆（行主序）
  // 第一行
  out[0] = (M[4] * M[8] - M[5] * M[7]) * invDet;
  out[1] = (M[2] * M[7] - M[1] * M[8]) * invDet;
  out[2] = (M[1] * M[5] - M[2] * M[4]) * invDet;
  // 第二行
  out[3] = (M[5] * M[6] - M[3] * M[8]) * invDet;
  out[4] = (M[0] * M[8] - M[2] * M[6]) * invDet;
  out[5] = (M[2] * M[3] - M[0] * M[5]) * invDet;
  // 第三行
  out[6] = (M[3] * M[7] - M[4] * M[6]) * invDet;
  out[7] = (M[1] * M[6] - M[0] * M[7]) * invDet;
  out[8] = (M[0] * M[4] - M[1] * M[3]) * invDet;

  LOGD("Matrix inversion: det=%.6f", det);
  return true;
}

// 基于 DNG 光源 ID 获取大概的色温 (K)
float illuminantToTemp(uint32_t illuminant) {
  switch (illuminant) {
  case 1:
    return 2856.0f; // Daylight
  case 17:
    return 2856.0f; // Standard Light A
  case 20:
    return 5500.0f; // D55
  case 21:
    return 5000.0f; // D50
  case 11:
  case 22:
    return 6504.0f; // D65
  case 23:
    return 7500.0f; // D75
  default:
    return 5000.0f;
  }
}

extern "C" {

/**
 * 处理 YUV_420_888 图像：旋转、裁切、转换为 ARGB
 *
 * @param yBuffer Y 平面数据
 * @param uBuffer U 平面数据
 * @param vBuffer V 平面数据
 * @param width 原始宽度
 * @param height 原始高度
 * @param yRowStride Y 平面行跨度
 * @param uvRowStride UV 平面行跨度
 * @param uvPixelStride UV 平面像素跨度
 * @param rotation 旋转角度 (0, 90, 180, 270)
 * @param targetRatio 目标宽高比 (长边/短边)
 * @return ARGB 像素数组
 */
JNIEXPORT jintArray JNICALL
Java_com_hinnka_mycamera_utils_YuvProcessor_processYuv(
    JNIEnv *env, jobject /* this */, jobject yBuffer, jobject uBuffer,
    jobject vBuffer, jint width, jint height, jint yRowStride, jint uvRowStride,
    jint uvPixelStride, jint rotation, jfloat targetRatio) {

  // 获取 buffer 指针
  auto *yData = static_cast<uint8_t *>(env->GetDirectBufferAddress(yBuffer));
  auto *uData = static_cast<uint8_t *>(env->GetDirectBufferAddress(uBuffer));
  auto *vData = static_cast<uint8_t *>(env->GetDirectBufferAddress(vBuffer));

  if (yData == nullptr || uData == nullptr || vData == nullptr) {
    LOGE("Failed to get buffer addresses");
    return nullptr;
  }

  //        LOGI("Processing YUV: %dx%d, rotation=%d, targetRatio=%.2f",
  //             width, height, rotation, targetRatio);

  // === Step 1: 将 YUV_420_888 转换为 I420 ===
  int i420Size = width * height * 3 / 2;
  auto *i420Data = static_cast<uint8_t *>(malloc(i420Size));
  if (i420Data == nullptr) {
    LOGE("Failed to allocate I420 buffer");
    return nullptr;
  }

  uint8_t *i420Y = i420Data;
  uint8_t *i420U = i420Data + width * height;
  uint8_t *i420V = i420U + (width / 2) * (height / 2);

  // 处理 Y 平面
  if (yRowStride == width) {
    memcpy(i420Y, yData, width * height);
  } else {
    for (int row = 0; row < height; row++) {
      memcpy(i420Y + row * width, yData + row * yRowStride, width);
    }
  }

  // 处理 UV 平面
  int uvWidth = width / 2;
  int uvHeight = height / 2;

  if (uvPixelStride == 1 && uvRowStride == uvWidth) {
    // 已经是紧凑格式
    memcpy(i420U, uData, uvWidth * uvHeight);
    memcpy(i420V, vData, uvWidth * uvHeight);
  } else if (uvPixelStride == 2) {
    // NV21/NV12 交错格式
    for (int row = 0; row < uvHeight; row++) {
      for (int col = 0; col < uvWidth; col++) {
        i420U[row * uvWidth + col] =
            uData[row * uvRowStride + col * uvPixelStride];
        i420V[row * uvWidth + col] =
            vData[row * uvRowStride + col * uvPixelStride];
      }
    }
  } else {
    // 通用情况
    for (int row = 0; row < uvHeight; row++) {
      for (int col = 0; col < uvWidth; col++) {
        i420U[row * uvWidth + col] =
            uData[row * uvRowStride + col * uvPixelStride];
        i420V[row * uvWidth + col] =
            vData[row * uvRowStride + col * uvPixelStride];
      }
    }
  }

  // === Step 2: 旋转 I420 ===
  int rotatedWidth = (rotation == 90 || rotation == 270) ? height : width;
  int rotatedHeight = (rotation == 90 || rotation == 270) ? width : height;

  auto *rotatedI420 =
      static_cast<uint8_t *>(malloc(rotatedWidth * rotatedHeight * 3 / 2));
  if (rotatedI420 == nullptr) {
    LOGE("Failed to allocate rotated I420 buffer");
    free(i420Data);
    return nullptr;
  }

  uint8_t *rotatedY = rotatedI420;
  uint8_t *rotatedU = rotatedI420 + rotatedWidth * rotatedHeight;
  uint8_t *rotatedV = rotatedU + (rotatedWidth / 2) * (rotatedHeight / 2);

  libyuv::RotationMode mode;
  switch (rotation) {
  case 90:
    mode = libyuv::kRotate90;
    break;
  case 180:
    mode = libyuv::kRotate180;
    break;
  case 270:
    mode = libyuv::kRotate270;
    break;
  default:
    mode = libyuv::kRotate0;
    break;
  }

  if (mode == libyuv::kRotate0) {
    // 无需旋转，直接复制
    memcpy(rotatedI420, i420Data, rotatedWidth * rotatedHeight * 3 / 2);
  } else {
    libyuv::I420Rotate(i420Y, width, i420U, width / 2, i420V, width / 2,
                       rotatedY, rotatedWidth, rotatedU, rotatedWidth / 2,
                       rotatedV, rotatedWidth / 2, width, height, mode);
  }

  free(i420Data);

  // === Step 3: 计算裁切区域 ===
  int visualWidth = rotatedWidth;
  int visualHeight = rotatedHeight;
  int finalWidth, finalHeight;

  // 判断是横图还是竖图
  if (visualWidth > visualHeight) {
    // 横图
    float expectedWidth = visualHeight * targetRatio;
    if (expectedWidth <= visualWidth) {
      finalHeight = visualHeight;
      finalWidth = static_cast<int>(expectedWidth);
    } else {
      finalWidth = visualWidth;
      finalHeight = static_cast<int>(visualWidth / targetRatio);
    }
  } else {
    // 竖图
    float expectedHeight = visualWidth * targetRatio;
    if (expectedHeight <= visualHeight) {
      finalWidth = visualWidth;
      finalHeight = static_cast<int>(expectedHeight);
    } else {
      finalHeight = visualHeight;
      finalWidth = static_cast<int>(visualHeight / targetRatio);
    }
  }

  // 确保尺寸为偶数（YUV 要求）
  finalWidth = (finalWidth / 2) * 2;
  finalHeight = (finalHeight / 2) * 2;

  int cropX = (rotatedWidth - finalWidth) / 2;
  int cropY = (rotatedHeight - finalHeight) / 2;
  cropX = (cropX / 2) * 2; // 确保偶数
  cropY = (cropY / 2) * 2;

  //    LOGI("Crop: %dx%d at (%d, %d) from %dx%d",
  //         finalWidth, finalHeight, cropX, cropY, rotatedWidth,
  //         rotatedHeight);

  // === Step 4: 裁切并转换为 ARGB ===
  int argbSize = finalWidth * finalHeight;
  auto *argbData = static_cast<uint8_t *>(malloc(argbSize * 4));
  if (argbData == nullptr) {
    LOGE("Failed to allocate ARGB buffer");
    free(rotatedI420);
    return nullptr;
  }

  // 计算裁切后的 Y/U/V 起始位置
  uint8_t *croppedY = rotatedY + cropY * rotatedWidth + cropX;
  uint8_t *croppedU = rotatedU + (cropY / 2) * (rotatedWidth / 2) + (cropX / 2);
  uint8_t *croppedV = rotatedV + (cropY / 2) * (rotatedWidth / 2) + (cropX / 2);

  // I420 to ARGB
  libyuv::I420ToARGB(croppedY, rotatedWidth, croppedU, rotatedWidth / 2,
                     croppedV, rotatedWidth / 2, argbData, finalWidth * 4,
                     finalWidth, finalHeight);

  free(rotatedI420);

  // === Step 5: 创建 Java int 数组并返回 ===
  // ARGB 格式：每个像素 4 字节，转换为 int
  jintArray result = env->NewIntArray(argbSize + 2);
  if (result == nullptr) {
    LOGE("Failed to create result array");
    free(argbData);
    return nullptr;
  }

  // 前两个元素存储宽高
  jint dimensions[2] = {finalWidth, finalHeight};
  env->SetIntArrayRegion(result, 0, 2, dimensions);

  // 转换 ARGB 字节为 int 数组
  auto *pixels = static_cast<jint *>(malloc(argbSize * sizeof(jint)));
  if (pixels == nullptr) {
    LOGE("Failed to allocate pixels buffer");
    free(argbData);
    return nullptr;
  }

  for (int i = 0; i < argbSize; i++) {
    int offset = i * 4;
    // ARGB 格式: B, G, R, A (libyuv 输出)
    uint8_t b = argbData[offset];
    uint8_t g = argbData[offset + 1];
    uint8_t r = argbData[offset + 2];
    uint8_t a = argbData[offset + 3];
    pixels[i] = (a << 24) | (r << 16) | (g << 8) | b;
  }

  env->SetIntArrayRegion(result, 2, argbSize, pixels);

  free(argbData);
  free(pixels);

  //    LOGI("YUV processing completed: output %dx%d", finalWidth, finalHeight);

  return result;
}

/**
 * 处理 YUV_420_888 图像并转换为 16-bit RGB：旋转、裁切、转换为 RGB16
 *
 * @param yBuffer Y 平面数据
 * @param uBuffer U 平面数据
 * @param vBuffer V 平面数据
 * @param width 原始宽度
 * @param height 原始高度
 * @param yRowStride Y 平面行跨度
 * @param uvRowStride UV 平面行跨度
 * @param uvPixelStride UV 平面像素跨度
 * @param rotation 旋转角度 (0, 90, 180, 270)
 * @param targetRatio 目标宽高比 (长边/短边)
 * @return short 数组: [width, height, r1, g1, b1, r2, g2, b2, ...]
 */
JNIEXPORT jshortArray JNICALL
Java_com_hinnka_mycamera_utils_YuvProcessor_processYuvToRgb16Native(
    JNIEnv *env, jobject /* this */, jobject yBuffer, jobject uBuffer,
    jobject vBuffer, jint width, jint height, jint yRowStride, jint uvRowStride,
    jint uvPixelStride, jint rotation, jfloat targetRatio) {

  // 获取 buffer 指针
  auto *yData = static_cast<uint8_t *>(env->GetDirectBufferAddress(yBuffer));
  auto *uData = static_cast<uint8_t *>(env->GetDirectBufferAddress(uBuffer));
  auto *vData = static_cast<uint8_t *>(env->GetDirectBufferAddress(vBuffer));

  if (yData == nullptr || uData == nullptr || vData == nullptr) {
    LOGE("Failed to get buffer addresses");
    return nullptr;
  }

  LOGI("Processing YUV to RGB16: %dx%d, rotation=%d, targetRatio=%.2f", width,
       height, rotation, targetRatio);

  // === Step 1: 将 YUV_420_888 转换为 I420 ===
  int i420Size = width * height * 3 / 2;
  auto *i420Data = static_cast<uint8_t *>(malloc(i420Size));
  if (i420Data == nullptr) {
    LOGE("Failed to allocate I420 buffer");
    return nullptr;
  }

  uint8_t *i420Y = i420Data;
  uint8_t *i420U = i420Data + width * height;
  uint8_t *i420V = i420U + (width / 2) * (height / 2);

  // 处理 Y 平面
  if (yRowStride == width) {
    memcpy(i420Y, yData, width * height);
  } else {
    for (int row = 0; row < height; row++) {
      memcpy(i420Y + row * width, yData + row * yRowStride, width);
    }
  }

  // 处理 UV 平面
  int uvWidth = width / 2;
  int uvHeight = height / 2;

  if (uvPixelStride == 1 && uvRowStride == uvWidth) {
    // 已经是紧凑格式
    memcpy(i420U, uData, uvWidth * uvHeight);
    memcpy(i420V, vData, uvWidth * uvHeight);
  } else if (uvPixelStride == 2) {
    // NV21/NV12 交错格式
    for (int row = 0; row < uvHeight; row++) {
      for (int col = 0; col < uvWidth; col++) {
        i420U[row * uvWidth + col] =
            uData[row * uvRowStride + col * uvPixelStride];
        i420V[row * uvWidth + col] =
            vData[row * uvRowStride + col * uvPixelStride];
      }
    }
  } else {
    // 通用情况
    for (int row = 0; row < uvHeight; row++) {
      for (int col = 0; col < uvWidth; col++) {
        i420U[row * uvWidth + col] =
            uData[row * uvRowStride + col * uvPixelStride];
        i420V[row * uvWidth + col] =
            vData[row * uvRowStride + col * uvPixelStride];
      }
    }
  }

  // === Step 2: 旋转 I420 ===
  int rotatedWidth = (rotation == 90 || rotation == 270) ? height : width;
  int rotatedHeight = (rotation == 90 || rotation == 270) ? width : height;

  auto *rotatedI420 =
      static_cast<uint8_t *>(malloc(rotatedWidth * rotatedHeight * 3 / 2));
  if (rotatedI420 == nullptr) {
    LOGE("Failed to allocate rotated I420 buffer");
    free(i420Data);
    return nullptr;
  }

  uint8_t *rotatedY = rotatedI420;
  uint8_t *rotatedU = rotatedI420 + rotatedWidth * rotatedHeight;
  uint8_t *rotatedV = rotatedU + (rotatedWidth / 2) * (rotatedHeight / 2);

  libyuv::RotationMode mode;
  switch (rotation) {
  case 90:
    mode = libyuv::kRotate90;
    break;
  case 180:
    mode = libyuv::kRotate180;
    break;
  case 270:
    mode = libyuv::kRotate270;
    break;
  default:
    mode = libyuv::kRotate0;
    break;
  }

  if (mode == libyuv::kRotate0) {
    // 无需旋转，直接复制
    memcpy(rotatedI420, i420Data, rotatedWidth * rotatedHeight * 3 / 2);
  } else {
    libyuv::I420Rotate(i420Y, width, i420U, width / 2, i420V, width / 2,
                       rotatedY, rotatedWidth, rotatedU, rotatedWidth / 2,
                       rotatedV, rotatedWidth / 2, width, height, mode);
  }

  free(i420Data);

  // === Step 3: 计算裁切区域 ===
  int visualWidth = rotatedWidth;
  int visualHeight = rotatedHeight;
  int finalWidth, finalHeight;

  // 判断是横图还是竖图
  if (visualWidth > visualHeight) {
    // 横图
    float expectedWidth = visualHeight * targetRatio;
    if (expectedWidth <= visualWidth) {
      finalHeight = visualHeight;
      finalWidth = static_cast<int>(expectedWidth);
    } else {
      finalWidth = visualWidth;
      finalHeight = static_cast<int>(visualWidth / targetRatio);
    }
  } else {
    // 竖图
    float expectedHeight = visualWidth * targetRatio;
    if (expectedHeight <= visualHeight) {
      finalWidth = visualWidth;
      finalHeight = static_cast<int>(expectedHeight);
    } else {
      finalHeight = visualHeight;
      finalWidth = static_cast<int>(visualHeight / targetRatio);
    }
  }

  // 确保尺寸为偶数（YUV 要求）
  finalWidth = (finalWidth / 2) * 2;
  finalHeight = (finalHeight / 2) * 2;

  int cropX = (rotatedWidth - finalWidth) / 2;
  int cropY = (rotatedHeight - finalHeight) / 2;
  cropX = (cropX / 2) * 2; // 确保偶数
  cropY = (cropY / 2) * 2;

  LOGI("Crop: %dx%d at (%d, %d) from %dx%d", finalWidth, finalHeight, cropX,
       cropY, rotatedWidth, rotatedHeight);

  // === Step 4: 裁切并转换为 RGB24 (8-bit) ===
  int rgbSize = finalWidth * finalHeight * 3;
  auto *rgb24Data = static_cast<uint8_t *>(malloc(rgbSize));
  if (rgb24Data == nullptr) {
    LOGE("Failed to allocate RGB24 buffer");
    free(rotatedI420);
    return nullptr;
  }

  // 计算裁切后的 Y/U/V 起始位置
  uint8_t *croppedY = rotatedY + cropY * rotatedWidth + cropX;
  uint8_t *croppedU = rotatedU + (cropY / 2) * (rotatedWidth / 2) + (cropX / 2);
  uint8_t *croppedV = rotatedV + (cropY / 2) * (rotatedWidth / 2) + (cropX / 2);

  // I420 to RGB24
  libyuv::I420ToRGB24(croppedY, rotatedWidth, croppedU, rotatedWidth / 2,
                      croppedV, rotatedWidth / 2, rgb24Data, finalWidth * 3,
                      finalWidth, finalHeight);

  free(rotatedI420);

  // === Step 5: 转换为 16-bit RGB ===
  int pixelCount = finalWidth * finalHeight;
  jshortArray result = env->NewShortArray(pixelCount * 3 + 2);
  if (result == nullptr) {
    LOGE("Failed to create result array");
    free(rgb24Data);
    return nullptr;
  }

  // 前两个元素存储宽高
  jshort dimensions[2] = {static_cast<jshort>(finalWidth),
                          static_cast<jshort>(finalHeight)};
  env->SetShortArrayRegion(result, 0, 2, dimensions);

  // 转换 8-bit BGR 为 16-bit RGB (左移 8 位，并交换 R 和 B)
  auto *rgb16Data =
      static_cast<jshort *>(malloc(pixelCount * 3 * sizeof(jshort)));
  if (rgb16Data == nullptr) {
    LOGE("Failed to allocate RGB16 buffer");
    free(rgb24Data);
    return nullptr;
  }

  // libyuv::I420ToRGB24 输出的是 BGR 顺序，需要转换为 RGB
  for (int i = 0; i < pixelCount; i++) {
    uint8_t b = rgb24Data[i * 3];     // B
    uint8_t g = rgb24Data[i * 3 + 1]; // G
    uint8_t r = rgb24Data[i * 3 + 2]; // R

    // 按 RGB 顺序存储，并扩展到 16-bit
    rgb16Data[i * 3] = static_cast<jshort>(r << 8);     // R
    rgb16Data[i * 3 + 1] = static_cast<jshort>(g << 8); // G
    rgb16Data[i * 3 + 2] = static_cast<jshort>(b << 8); // B
  }

  env->SetShortArrayRegion(result, 2, pixelCount * 3, rgb16Data);

  free(rgb24Data);
  free(rgb16Data);

  LOGI("YUV to RGB16 processing completed: output %dx%d", finalWidth,
       finalHeight);

  return result;
}

/**
 * 将 ARGB 数据进行 gzip 压缩并保存到文件
 *
 * @param argbData ARGB 像素数据
 * @param width 图像宽度
 * @param height 图像高度
 * @param outputPath 输出文件路径
 * @return 是否成功保存
 */
JNIEXPORT jboolean JNICALL
Java_com_hinnka_mycamera_utils_YuvProcessor_saveCompressedArgb(
    JNIEnv *env, jobject /* this */, jintArray argbData, jint width,
    jint height, jstring outputPath) {

  // 获取输出路径
  const char *path = env->GetStringUTFChars(outputPath, nullptr);
  if (path == nullptr) {
    LOGE("Failed to get output path");
    return JNI_FALSE;
  }

  // 获取 ARGB 数据
  jint *pixels = env->GetIntArrayElements(argbData, nullptr);
  if (pixels == nullptr) {
    LOGE("Failed to get ARGB data");
    env->ReleaseStringUTFChars(outputPath, path);
    return JNI_FALSE;
  }

  jsize dataSize = env->GetArrayLength(argbData);

  LOGI("Saving compressed ARGB: %dx%d (%d pixels) to %s", width, height,
       dataSize, path);

  // 打开文件（wb1 表示最快压缩速度）
  gzFile file = gzopen(path, "wb1");
  if (file == nullptr) {
    LOGE("Failed to open file for writing: %s", path);
    env->ReleaseIntArrayElements(argbData, pixels, JNI_ABORT);
    env->ReleaseStringUTFChars(outputPath, path);
    return JNI_FALSE;
  }

  // 写入头部信息（宽度和高度）
  int32_t header[2] = {width, height};
  if (gzwrite(file, header, sizeof(header)) != sizeof(header)) {
    LOGE("Failed to write header");
    gzclose(file);
    env->ReleaseIntArrayElements(argbData, pixels, JNI_ABORT);
    env->ReleaseStringUTFChars(outputPath, path);
    return JNI_FALSE;
  }

  // 写入 ARGB 数据
  size_t bytesToWrite = dataSize * sizeof(jint);
  if (gzwrite(file, pixels, bytesToWrite) != static_cast<int>(bytesToWrite)) {
    LOGE("Failed to write ARGB data");
    gzclose(file);
    env->ReleaseIntArrayElements(argbData, pixels, JNI_ABORT);
    env->ReleaseStringUTFChars(outputPath, path);
    return JNI_FALSE;
  }

  // 关闭文件
  gzclose(file);

  // 释放资源
  env->ReleaseIntArrayElements(argbData, pixels, JNI_ABORT);
  env->ReleaseStringUTFChars(outputPath, path);

  LOGI("ARGB data compressed and saved successfully");

  return JNI_TRUE;
}

/**
 * 从文件中读取并解压缩 ARGB 数据
 *
 * @param inputPath 输入文件路径
 * @return IntArray: [width, height, pixel1, pixel2, ...]，失败返回 null
 */
JNIEXPORT jintArray JNICALL
Java_com_hinnka_mycamera_utils_YuvProcessor_loadCompressedArgb(
    JNIEnv *env, jobject /* this */, jstring inputPath) {

  // 获取输入路径
  const char *path = env->GetStringUTFChars(inputPath, nullptr);
  if (path == nullptr) {
    LOGE("Failed to get input path");
    return nullptr;
  }

  LOGI("Loading compressed ARGB from %s", path);

  // 打开文件
  gzFile file = gzopen(path, "rb");
  if (file == nullptr) {
    LOGE("Failed to open file for reading: %s", path);
    env->ReleaseStringUTFChars(inputPath, path);
    return nullptr;
  }

  // 读取头部信息
  int32_t header[2];
  if (gzread(file, header, sizeof(header)) != sizeof(header)) {
    LOGE("Failed to read header");
    gzclose(file);
    env->ReleaseStringUTFChars(inputPath, path);
    return nullptr;
  }

  int32_t width = header[0];
  int32_t height = header[1];
  int32_t pixelCount = width * height;

  LOGI("Image dimensions: %dx%d (%d pixels)", width, height, pixelCount);

  // 创建结果数组（包含宽度、高度和像素数据）
  jintArray result = env->NewIntArray(pixelCount + 2);
  if (result == nullptr) {
    LOGE("Failed to create result array");
    gzclose(file);
    env->ReleaseStringUTFChars(inputPath, path);
    return nullptr;
  }

  // 写入宽度和高度
  env->SetIntArrayRegion(result, 0, 2, header);

  // 读取 ARGB 数据
  auto *pixels = static_cast<jint *>(malloc(pixelCount * sizeof(jint)));
  if (pixels == nullptr) {
    LOGE("Failed to allocate pixel buffer");
    gzclose(file);
    env->ReleaseStringUTFChars(inputPath, path);
    return nullptr;
  }

  size_t bytesToRead = pixelCount * sizeof(jint);
  int bytesRead = gzread(file, pixels, bytesToRead);
  if (bytesRead != static_cast<int>(bytesToRead)) {
    LOGE("Failed to read ARGB data: expected %zu bytes, got %d bytes",
         bytesToRead, bytesRead);
    free(pixels);
    gzclose(file);
    env->ReleaseStringUTFChars(inputPath, path);
    return nullptr;
  }

  // 写入像素数据到结果数组
  env->SetIntArrayRegion(result, 2, pixelCount, pixels);

  // 释放资源
  free(pixels);
  gzclose(file);
  env->ReleaseStringUTFChars(inputPath, path);

  LOGI("ARGB data loaded and decompressed successfully");

  return result;
}

/**
 * 解析 TIFF IFD (Image File Directory)
 *
 * @param data 文件数据
 * @param offset IFD 偏移位置
 * @param bigEndian 是否大端序
 * @return IFD 标签映射表
 */
std::map<uint16_t, TiffTagData> parseTiffIFD(const std::vector<uint8_t> &data,
                                             uint32_t offset, bool bigEndian) {

  std::map<uint16_t, TiffTagData> tags;

  if (offset + 2 > data.size()) {
    LOGE("Invalid IFD offset");
    return tags;
  }

  // 读取目录条目数量
  uint16_t entryCount = readValue<uint16_t>(&data[offset], bigEndian);
  offset += 2;

  // 每个 IFD 条目 12 字节
  for (uint16_t i = 0; i < entryCount; i++) {
    if (offset + 12 > data.size())
      break;

    uint16_t tag = readValue<uint16_t>(&data[offset], bigEndian);
    uint16_t type = readValue<uint16_t>(&data[offset + 2], bigEndian);
    uint32_t count = readValue<uint32_t>(&data[offset + 4], bigEndian);
    uint32_t valueOffset = readValue<uint32_t>(&data[offset + 8], bigEndian);

    // 计算数据大小
    uint32_t typeSize = 0;
    switch (type) {
    case BYTE:
    case SBYTE:
    case ASCII:
    case UNDEFINED:
      typeSize = 1;
      break;
    case SHORT:
    case SSHORT:
      typeSize = 2;
      break;
    case LONG:
    case SLONG:
    case FLOAT:
      typeSize = 4;
      break;
    case RATIONAL:
    case SRATIONAL:
    case DOUBLE:
      typeSize = 8;
      break;
    default:
      typeSize = 1;
      break;
    }

    uint32_t dataSize = count * typeSize;

    TiffTagData tagData;
    tagData.type = type;
    tagData.count = count;

    // 如果数据 <= 4 字节，直接存储在 valueOffset 字段
    if (dataSize <= 4) {
      tagData.data.resize(dataSize);
      // 提取数据时需要注意字节序，但对于原始字节拷贝没关系
      // 关键是之后解析这些字节时要用正确的 readValue
      memcpy(tagData.data.data(), &data[offset + 8], dataSize);
    } else {
      // 否则 valueOffset 是指针
      if (valueOffset + dataSize <= data.size()) {
        tagData.data.resize(dataSize);
        memcpy(tagData.data.data(), &data[valueOffset], dataSize);
      }
    }

    tags[tag] = tagData;
    offset += 12;
  }

  return tags;
}

/**
 * 从标签数据中读取单个 uint32 值
 */
uint32_t getUint32FromTag(const TiffTagData &tag, bool bigEndian) {
  if (tag.data.size() < 4) {
    if (tag.data.size() >= 2 && tag.type == SHORT) {
      return readValue<uint16_t>(tag.data.data(), bigEndian);
    }
    return 0;
  }
  if (tag.type == SHORT) {
    return readValue<uint16_t>(tag.data.data(), bigEndian);
  }
  return readValue<uint32_t>(tag.data.data(), bigEndian);
}

/**
 * 从标签数据中读取 uint16 值
 */
uint16_t getUint16FromTag(const TiffTagData &tag, bool bigEndian) {
  if (tag.data.size() < 2)
    return 0;
  return readValue<uint16_t>(tag.data.data(), bigEndian);
}

/**
 * 从标签数据中读取浮点数组
 */
std::vector<float> getFloatArrayFromTag(const TiffTagData &tag,
                                        bool bigEndian) {
  std::vector<float> result;
  const uint8_t *p = tag.data.data();
  size_t dataSize = tag.data.size();

  switch (tag.type) {
  case BYTE:
    for (uint32_t i = 0; i < tag.count && i < dataSize; ++i) {
      result.push_back(static_cast<float>(p[i]));
    }
    break;
  case SHORT:
    for (uint32_t i = 0; i < tag.count && (i + 1) * 2 <= dataSize; ++i) {
      result.push_back(
          static_cast<float>(readValue<uint16_t>(p + i * 2, bigEndian)));
    }
    break;
  case LONG:
    for (uint32_t i = 0; i < tag.count && (i + 1) * 4 <= dataSize; ++i) {
      result.push_back(
          static_cast<float>(readValue<uint32_t>(p + i * 4, bigEndian)));
    }
    break;
  case RATIONAL:
    for (uint32_t i = 0; i < tag.count && (i + 1) * 8 <= dataSize; ++i) {
      uint32_t num = readValue<uint32_t>(p + i * 8, bigEndian);
      uint32_t den = readValue<uint32_t>(p + i * 8 + 4, bigEndian);
      result.push_back(
          den == 0 ? 0.0f : static_cast<float>(num) / static_cast<float>(den));
    }
    break;
  case SRATIONAL:
    for (uint32_t i = 0; i < tag.count && (i + 1) * 8 <= dataSize; ++i) {
      int32_t num = readValue<int32_t>(p + i * 8, bigEndian);
      int32_t den = readValue<int32_t>(p + i * 8 + 4, bigEndian);
      result.push_back(
          den == 0 ? 0.0f : static_cast<float>(num) / static_cast<float>(den));
    }
    break;
  case FLOAT:
    for (uint32_t i = 0; i < tag.count && (i + 1) * 4 <= dataSize; ++i) {
      // readValue for float might be tricky due to endianness, but assuming
      // standard IEEE 754
      uint32_t bits = readValue<uint32_t>(p + i * 4, bigEndian);
      float f;
      memcpy(&f, &bits, 4);
      result.push_back(f);
    }
    break;
  default:
    LOGD("Unsupported tag type for float array: %d", tag.type);
    break;
  }
  return result;
}

/**
 * 将 EXIF Orientation 值转换为旋转角度
 *
 * EXIF Orientation 值定义：
 * 1 = 正常 (0°)
 * 3 = 180° 旋转
 * 6 = 顺时针 90° (右侧朝上)
 * 8 = 逆时针 90° (左侧朝上)
 *
 * @param orientation EXIF orientation 值 (1-8)
 * @return 旋转角度 (0, 90, 180, 270)
 */
int orientationToRotation(uint16_t orientation) {
  switch (orientation) {
  case 1: // Normal
    return 0;
  case 3: // Rotate 180
    return 180;
  case 6: // Rotate 90 CW (右侧朝上，需要顺时针旋转90度显示正确)
    return 90;
  case 8: // Rotate 270 CW (左侧朝上，需要顺时针旋转270度显示正确)
    return 270;
  default:
    LOGD("Unknown EXIF orientation: %u, defaulting to 0°", orientation);
    return 0;
  }
}

/**
 * 将 DNG 的 CFAPattern (2x2) 映射到 App 的枚举
 * 0=RGGB, 1=GRBG, 2=GBRG, 3=BGGR
 */
int mapCfaPattern(const uint32_t pattern[4]) {
  // DNG Spec: 0=R, 1=G, 2=B
  if (pattern[0] == 0 && pattern[1] == 1 && pattern[2] == 1 && pattern[3] == 2)
    return 0; // RGGB
  if (pattern[0] == 1 && pattern[1] == 0 && pattern[2] == 2 && pattern[3] == 1)
    return 1; // GRBG
  if (pattern[0] == 1 && pattern[1] == 2 && pattern[2] == 0 && pattern[3] == 1)
    return 2; // GBRG
  if (pattern[0] == 2 && pattern[1] == 1 && pattern[2] == 1 && pattern[3] == 0)
    return 3; // BGGR
  return 0;   // 默认 RGGB
}

/**
 * 将排列在 CFA 模式顺序中的数组重排为 [R, Gr, Gb, B] 顺序
 */
void reorderArrayByPattern(std::vector<float> &arr, const uint32_t pattern[4]) {
  if (arr.size() != 4)
    return;
  float r = 0, g1 = 0, g2 = 0, b = 0;
  bool foundG1 = false;
  for (int i = 0; i < 4; i++) {
    if (pattern[i] == 0)
      r = arr[i];
    else if (pattern[i] == 1) {
      if (!foundG1) {
        g1 = arr[i];
        foundG1 = true;
      } else
        g2 = arr[i];
    } else if (pattern[i] == 2)
      b = arr[i];
  }
  arr = {r, g1, g2, b};
}

/**
 * 从 OpcodeList2 中提取 Lens Shading Map (GainMap)
 *
 * DNG Spec: OpcodeList2 包含一系列 opcodes，每个 opcode 的格式：
 * - 4 bytes: Opcode ID (9 = GainMap)
 * - 4 bytes: Version (通常是 0x01000000)
 * - 4 bytes: Flags
 * - 4 bytes: Parameter size
 * - N bytes: Parameters
 *
 * GainMap parameters:
 * - AreaSpec (top, left, bottom, right, plane count) - 20 bytes
 * - 4 bytes: row pitch (每行间距)
 * - 4 bytes: col pitch (每列间距)
 * - 4 bytes: map width
 * - 4 bytes: map height
 * - 4 bytes: map plane count (通常 = 4, 对应 R/Gr/Gb/B)
 * - 4 bytes: map gain format (1=ushort, 2=float)
 * - N bytes: gain map data
 */
bool parseOpcodeList2ForLSC(const std::vector<uint8_t> &opcodeData,
                            bool bigEndian, DngMetadata &metadata) {
  if (opcodeData.empty()) {
    LOGD("OpcodeList2 is empty");
    return false;
  }

  size_t offset = 0;
  const uint8_t *data = opcodeData.data();
  size_t dataSize = opcodeData.size();

  // OpcodeList 格式: 4-byte count + opcodes
  if (dataSize < 4) {
    LOGE("OpcodeList2 too small");
    return false;
  }

  // 根据DNG规范，OpcodeList始终使用big-endian字节序，与TIFF文件头无关
  bool opcodeEndian = true;

  uint32_t opcodeCount = readValue<uint32_t>(data, opcodeEndian);
  offset += 4;
  LOGD("Found %u opcodes in OpcodeList2 (using big endian)", opcodeCount);

  for (uint32_t i = 0; i < opcodeCount && offset + 16 <= dataSize; i++) {
    uint32_t opcodeID = readValue<uint32_t>(data + offset, opcodeEndian);
    uint32_t version = readValue<uint32_t>(data + offset + 4, opcodeEndian);
    uint32_t flags = readValue<uint32_t>(data + offset + 8, opcodeEndian);
    uint32_t paramSize = readValue<uint32_t>(data + offset + 12, opcodeEndian);
    size_t paramStart = offset + 16;

    LOGD("Opcode #%u: ID=%u, Version=0x%X, Flags=0x%X, ParamSize=%u", i,
         opcodeID, version, flags, paramSize);

    if (offset + 16 + paramSize > dataSize) {
      LOGE("Opcode parameter exceeds data size");
      break;
    }

    // Opcode ID 9 = GainMap (Lens Shading Correction)
    if (opcodeID == 9) {
      LOGI("Processing GainMap opcode (ID 9)");

      if (paramSize < 76) {
        LOGE("GainMap parameter block too small (%u bytes)", paramSize);
        offset += 16 + paramSize;
        continue;
      }

      // 按照 DNG Spec 解析参数体 (Big Endian)
      // Top(0), Left(4), Bottom(8), Right(12), Plane(16), Planes(20),
      // RowPitch(24), ColPitch(28), MapPointsV(32), MapPointsH(36),
      // ...doubles (40-71), MapPlanes(72), GainValues(76)

      uint32_t planeStart =
          readValue<uint32_t>(data + paramStart + 16, opcodeEndian);
      uint32_t planesCount =
          readValue<uint32_t>(data + paramStart + 20, opcodeEndian);
      uint32_t rowPitch =
          readValue<uint32_t>(data + paramStart + 24, opcodeEndian);
      uint32_t colPitch =
          readValue<uint32_t>(data + paramStart + 28, opcodeEndian);
      uint32_t mapPointsV =
          readValue<uint32_t>(data + paramStart + 32, opcodeEndian);
      uint32_t mapPointsH =
          readValue<uint32_t>(data + paramStart + 36, opcodeEndian);
      uint32_t mapPlanes =
          readValue<uint32_t>(data + paramStart + 72, opcodeEndian);

      LOGI("LSC GainMap: %ux%u, planes: %u, startPlane: %u, rowPitch: %u, "
           "colPitch: %u, mapPlanes: %u",
           mapPointsH, mapPointsV, planesCount, planeStart, rowPitch, colPitch,
           mapPlanes);

      if (mapPointsH == 0 || mapPointsV == 0 || planesCount == 0) {
        LOGE("Invalid GainMap parameters");
        offset += 16 + paramSize;
        continue;
      }

      // 初始化 LSC 增益图 (App 内部始终使用 RGBA 4通道布局)
      metadata.lensShadingMap.assign(mapPointsH * mapPointsV * 4, 1.0f);
      metadata.lscWidth = mapPointsH;
      metadata.lscHeight = mapPointsV;

      size_t gainValuesStart = paramStart + 76;

      // DNG Index Formula: (p - Plane) * RowPitch * MapPointsV + r * RowPitch +
      // c * ColPitch
      for (uint32_t p = 0; p < planesCount && (planeStart + p) < 4; p++) {
        for (uint32_t r = 0; r < mapPointsV; r++) {
          for (uint32_t c = 0; c < mapPointsH; c++) {
            size_t srcIdx = (size_t)p * rowPitch * mapPointsV +
                            (size_t)r * rowPitch + (size_t)c * colPitch;
            size_t valOffset = gainValuesStart + srcIdx * 4;

            if (valOffset + 4 <= paramStart + paramSize) {
              uint32_t bits =
                  readValue<uint32_t>(data + valOffset, opcodeEndian);
              float gain;
              memcpy(&gain, &bits, 4);

              // 映射到 App 的交错 RGBA 数组
              metadata
                  .lensShadingMap[(r * mapPointsH + c) * 4 + (planeStart + p)] =
                  gain;
            }
          }
        }
      }

      // 处理单平面或共享平面的补全
      if (planesCount == 1) {
        for (uint32_t i = 0; i < mapPointsH * mapPointsV; i++) {
          float g = metadata.lensShadingMap[i * 4 + planeStart];
          metadata.lensShadingMap[i * 4 + 0] = g;
          metadata.lensShadingMap[i * 4 + 1] = g;
          metadata.lensShadingMap[i * 4 + 2] = g;
          metadata.lensShadingMap[i * 4 + 3] = g;
        }
      }

      LOGI("Successfully extracted LSC data: %ux%u points", mapPointsH,
           mapPointsV);
      return true;
    }

    offset += 16 + paramSize;
  }

  LOGD("No GainMap opcode found in OpcodeList2");
  return false;
}

/**
 * 从 DNG 文件中提取 RAW 数据和元数据
 *
 * @param filePath DNG 文件路径
 * @return jobject 包含提取数据的 Java 对象（宽度、高度、RAW数据、元数据等）
 */
JNIEXPORT jobject JNICALL
Java_com_hinnka_mycamera_raw_RawDemosaicProcessor_extractDngDataNative(
    JNIEnv *env, jobject /* this */, jstring filePath) {

  // 获取文件路径
  const char *path = env->GetStringUTFChars(filePath, nullptr);
  if (path == nullptr) {
    LOGE("Failed to get file path");
    return nullptr;
  }

  LOGI("Parsing DNG file: %s", path);

  // 读取整个文件到内存
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

  LOGI("File size: %ld bytes", static_cast<long>(fileSize));

  // === Step 1: 解析 TIFF 头部 ===
  if (fileSize < 8) {
    LOGE("File too small to be a valid TIFF");
    env->ReleaseStringUTFChars(filePath, path);
    return nullptr;
  }

  // 字节序标记: "II" (little-endian) 或 "MM" (big-endian)
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

  // TIFF 版本（应该是 42）
  uint16_t version = readValue<uint16_t>(&fileData[2], bigEndian);
  if (version != 42 && version != 43) { // 43 for BigTIFF
    LOGE("Unsupported TIFF version: %d", version);
    env->ReleaseStringUTFChars(filePath, path);
    return nullptr;
  }

  // 第一个 IFD 的偏移
  uint32_t ifdOffset = readValue<uint32_t>(&fileData[4], bigEndian);

  // 1. 递归解析所有 IFD (主链 + 所有层级的 SubIFDs)
  std::vector<std::map<uint16_t, TiffTagData>> allIFDs;
  std::vector<uint32_t> pendingOffsets = {ifdOffset};
  std::vector<uint32_t> visitedOffsets;

  while (!pendingOffsets.empty()) {
    uint32_t offset = pendingOffsets.back();
    pendingOffsets.pop_back();

    // 避免循环
    if (std::find(visitedOffsets.begin(), visitedOffsets.end(), offset) !=
        visitedOffsets.end()) {
      LOGD("  Skipping already visited offset: %u", offset);
      continue;
    }
    visitedOffsets.push_back(offset);

    if (offset == 0 || offset + 2 >= fileData.size()) {
      LOGD("  Invalid offset: %u (fileSize: %zu)", offset, fileData.size());
      continue;
    }

    auto ifd = parseTiffIFD(fileData, offset, bigEndian);
    if (ifd.empty()) {
      LOGD("  IFD at offset %u is empty", offset);
      continue;
    }

    allIFDs.push_back(ifd);

    // 检查下一个 IFD 链
    uint16_t entryCount = readValue<uint16_t>(&fileData[offset], bigEndian);
    uint32_t nextPtr = offset + 2 + entryCount * 12;
    if (nextPtr + 4 <= fileData.size()) {
      uint32_t nextOffset = readValue<uint32_t>(&fileData[nextPtr], bigEndian);
      if (nextOffset > 0) {
        pendingOffsets.push_back(nextOffset);
      }
    }

    // 检查 SubIFDs 标签
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

  // === Step 2: 汇总元数据 ===
  DngMetadata metadata;
  metadata.width = 0;
  metadata.height = 0;
  metadata.whiteLevel = 65535.0f;
  metadata.bitsPerSample = 16;
  metadata.orientation = 1;
  metadata.rawDataOffset = 0;
  metadata.rawDataLength = 0;

  // 遍历所有 IFD，寻找最像 RAW 的那一个（通常是分辨率最大的那个）
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

  // 如果找到了 RAW IFD，从中提取最终的几何和像素信息
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

    // 如果此 IFD 有自己的黑白电平或 CFA，以它为准
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

    // 解析 OpcodeList2 提取 Lens Shading Map
    if (ifd.count(TiffTags::OpcodeList2)) {
      auto &opcodeTag = ifd.at(TiffTags::OpcodeList2);
      parseOpcodeList2ForLSC(opcodeTag.data, bigEndian, metadata);
    }
  }
  // === Step 3: 计算白平衡与色彩校正矩阵 (CCM) ===

  // 1. 计算白平衡增益 (AsShotNeutral -> WB Gains)
  if (!metadata.asShotNeutral.empty()) {
    metadata.wbGains.clear();
    for (float neutral : metadata.asShotNeutral) {
      // AsShotNeutral 是归一化的，Gains 是其倒数
      metadata.wbGains.push_back((neutral > 1e-6f) ? (1.0f / neutral) : 1.0f);
    }
    // DNG 规范建议将 Green 通道归一化为 1.0 (可选，但在渲染管线中常用)
    if (metadata.wbGains.size() > 1) {
      float gGain = metadata.wbGains[1];
      if (gGain > 1e-6f) {
        for (float &g : metadata.wbGains)
          g /= gGain;
      }
    }
  }

  // 补齐 WB 数组到 4 位
  if (metadata.wbGains.empty()) {
    metadata.wbGains = {1.0f, 1.0f, 1.0f, 1.0f};
  } else if (metadata.wbGains.size() == 3) {
    // 修正：显式处理 3 通道扩展 [R, G, B] -> [R, G, G, B]
    // 这里的顺序是 Android 常用的 [R, Gr, Gb, B]
    metadata.wbGains = {metadata.wbGains[0], metadata.wbGains[1],
                        metadata.wbGains[1], metadata.wbGains[2]};
  }
  // 处理其他情况（如 1 或 2 个值）
  while (metadata.wbGains.size() < 4) {
    metadata.wbGains.push_back(metadata.wbGains.back());
  }

  // 补齐 BlackLevel 到 4 位 (并根据 CFA 模式重排)
  if (metadata.blackLevel.empty()) {
    metadata.blackLevel = {0.0f, 0.0f, 0.0f, 0.0f};
  } else if (metadata.blackLevel.size() == 1) {
    float b = metadata.blackLevel[0];
    metadata.blackLevel = {b, b, b, b};
  } else if (metadata.blackLevel.size() == 4) {
    reorderArrayByPattern(metadata.blackLevel, metadata.cfaPattern);
  }

  // 2. 准备 XYZ(D50) 到 Linear sRGB 的转换矩阵
  // DNG 的 PCS (Profile Connection Space) 是 D50 XYZ。
  // 下面的矩阵包含 Bradford 色彩适应 (D50 -> D65) 和 XYZ -> sRGB 的转换。
  // Source: standard D50-adapted sRGB matrix
  const float XYZ_D50_TO_SRGB[9] = {3.1338561f,  -1.6168667f, -0.4906146f,
                                    -0.9787684f, 1.9161415f,  0.0334540f,
                                    0.0719453f,  -0.2289914f, 1.4052427f};

  // 3. 计算双光源插值权重 (Weight)
  // DNG 推荐在倒数色温空间 (Mired) 进行线性插值
  float weight = 0.0f; // 默认使用 Illuminant 2 (通常是 D65/Daylight)

  if (metadata.illuminant1 != 0 && metadata.illuminant2 != 0 &&
      metadata.wbGains.size() >= 3 && metadata.wbGains[0] > 0 &&
      metadata.wbGains[2] > 0) {

    float temp1 = illuminantToTemp(metadata.illuminant1);
    float temp2 = illuminantToTemp(metadata.illuminant2);

    // 从当前的 WB Gains 估算场景相关色温 (CCT)
    // 使用简单的假设：(R/B) 比例与色温成反比关系。
    // R/B 高 -> 色温低 (钨丝灯); R/B 低 -> 色温高 (蓝天)
    float rGain = metadata.wbGains[0];
    float bGain =
        metadata.wbGains[metadata.wbGains.size() > 2 ? 2 : 0]; // 假设 B 在索引
                                                               // 2 或 3
    if (metadata.wbGains.size() == 4 && metadata.cfaPattern[3] == 2)
      bGain = metadata.wbGains[3]; // BGGR case

    // 估算当前场景的对数色温比
    // 这是一个简化估算，标准的 McCamy 公式需要 XYZ 输入，这里仅用 WB 比例近似
    // 参考: interpolation = (1/T_scene - 1/T_2) / (1/T_1 - 1/T_2)

    // 这里我们直接利用 R/B 比例在两个校准点之间插值
    // 假设 Illuminant1 是 StdA (2856K, 偏红, R/B 大), Illuminant2 是 D65
    // (6504K, 偏蓝, R/B 小) 我们需要先计算校准光源下的理论 R/B 比例
    // (理想情况下应从 DNG CalibrationIlluminant 标签读取，这里简化处理)
    // 为了稳健性，我们使用一个经验性的映射范围。
    // StdA (2850K) R/B gain ratio approx 0.4 (Red gain is low, Blue gain is
    // high) D65 (6500K) R/B gain ratio approx 0.8 注意：WB Gains = 1/Neutral.
    // Neutral R > B in Tungsten. So WB Gain R < B.

    float currentRatio = rGain / bGain;

    // 设定两个基准点的 R/B Gain 比例 (这些值取决于传感器，但通常在此范围内)
    // 如果你有 CalibrationIlluminant1/2 对应的 AsShotNeutral，应该用那些值计算
    // ratio1 和 ratio2 由于没有那些数据，我们根据 Illuminant ID 设定权重

    // 如果无法精确计算，默认逻辑：
    // 如果是室内(低色温)，靠近 Illuminant1 (Weight -> 1.0)
    // 如果是室外(高色温)，靠近 Illuminant2 (Weight -> 0.0)

    // 这里使用基于 illuminantToTemp 的简单反距离插值
    // 实际场景 T 通常在 2000K 到 10000K 之间
    // 为了简化，我们只判断是否主要使用 Illuminant 1 (通常是 Tungsten)
    if (temp1 < 4000 && temp2 > 5000) {
      // 典型情况：Illum1=StdA, Illum2=D65
      // 如果 R gain 明显小于 B gain (e.g. ratio < 0.5), 说明是低色温环境
      if (currentRatio < 0.5f)
        weight = 1.0f; // 完全使用 A 光源
      else if (currentRatio > 0.8f)
        weight = 0.0f; // 完全使用 D65
      else
        weight = (0.8f - currentRatio) / (0.8f - 0.5f); // 线性插值
    }
  }

  // 4. 获取两个光源下的 Camera -> XYZ(D50) 矩阵
  float m1[9], m2[9];
  bool hasM1 = false, hasM2 = false;

  // 处理矩阵 1
  if (!metadata.forwardMatrix1.empty()) {
    memcpy(m1, metadata.forwardMatrix1.data(), 36);
    hasM1 = true;
  } else if (!metadata.colorMatrix1.empty()) {
    // 如果只有 ColorMatrix (XYZ -> Camera)，则求逆得到 (Camera -> XYZ)
    // 注意：ColorMatrix 是在对应光源白点下的，ForwardMatrix 需映射到 D50
    // 简易模式下，直接求逆作为近似
    hasM1 = invert3x3(metadata.colorMatrix1.data(), m1);
  }

  // 处理矩阵 2
  if (!metadata.forwardMatrix2.empty()) {
    memcpy(m2, metadata.forwardMatrix2.data(), 36);
    hasM2 = true;
  } else if (!metadata.colorMatrix2.empty()) {
    hasM2 = invert3x3(metadata.colorMatrix2.data(), m2);
  }

  // 5. 插值得到最终的 Camera -> XYZ(D50) 矩阵
  float camToXYZ[9];
  if (hasM1 && hasM2) {
    for (int i = 0; i < 9; i++) {
      camToXYZ[i] = m1[i] * weight + m2[i] * (1.0f - weight);
    }
  } else if (hasM1) {
    memcpy(camToXYZ, m1, 36);
  } else if (hasM2) {
    memcpy(camToXYZ, m2, 36);
  } else {
    // Fallback:Identity
    memset(camToXYZ, 0, 36);
    camToXYZ[0] = camToXYZ[4] = camToXYZ[8] = 1.0f;
  }

  // 6. 计算最终 CCM: Camera -> sRGB
  // Formula: Final = XYZ_D50_TO_SRGB * Cam_To_XYZ_D50
  float finalCCM[9];
  matmul3x3(XYZ_D50_TO_SRGB, camToXYZ, finalCCM);

  // 计算行跨度 (Bytes per row)
  metadata.rowStride = metadata.width * (metadata.bitsPerSample / 8);

  // === Step 4: 提取 RAW 数据 ===
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

  // === Step 5: 创建返回对象 ===
  jclass dngDataClass = env->FindClass("com/hinnka/mycamera/raw/DngRawData");
  if (dngDataClass == nullptr) {
    LOGE("Failed to find DngRawData class");
    env->ReleaseStringUTFChars(filePath, path);
    return nullptr;
  }

  // 新的构造函数签名，添加了 LSC 相关参数：[F (LSC array), II (width, height)
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

  // 创建 LSC 数组 (如果有的话)
  jfloatArray lscArray = nullptr;
  if (!metadata.lensShadingMap.empty()) {
    lscArray = env->NewFloatArray(metadata.lensShadingMap.size());
    env->SetFloatArrayRegion(lscArray, 0, metadata.lensShadingMap.size(),
                             metadata.lensShadingMap.data());
    LOGI("LSC data: %dx%d (%zu values)", metadata.lscWidth, metadata.lscHeight,
         metadata.lensShadingMap.size());
  }

  int cfaEnum = mapCfaPattern(metadata.cfaPattern);
  int rotation = orientationToRotation(metadata.orientation);
  LOGI("CFA Pattern: %d, Rotation: %d°", cfaEnum, rotation);

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
  LOGI("DNG parsing completed successfully");
  return dngData;
}

/**
 * 释放 DNG RAW 数据的 native 内存
 *
 * @param rawDataBuffer 从 extractDngDataNative 返回的 ByteBuffer
 */
JNIEXPORT void JNICALL Java_com_hinnka_mycamera_raw_DngRawData_freeNativeBuffer(
    JNIEnv *env, jobject /* this */, jobject rawDataBuffer) {

  if (rawDataBuffer == nullptr) {
    return;
  }

  // 获取 ByteBuffer 的 native 指针
  void *nativePtr = env->GetDirectBufferAddress(rawDataBuffer);
  if (nativePtr != nullptr) {
    LOGI("Freeing DNG RAW data native buffer: %p", nativePtr);
    free(nativePtr);
  }
}

} // extern "C"
