/**
 * native-lib.cpp
 *
 * 使用 libyuv 实现 YUV 图像处理：旋转、裁切、转换为 ARGB
 */
#include "libyuv_source/include/libyuv.h"
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
#define LOGW(...) __android_log_print(ANDROID_LOG_WARN, LOG_TAG, __VA_ARGS__)
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

// 字节序交换辅助函数 (OpcodeList 始终为 Big-Endian)
template <typename T> T readBigEndian(const uint8_t *ptr) {
  T val;
  // 简单处理：假设宿主机器是 Little-Endian (如 ARM/x86)
  // 如果是 Big-Endian 机器，直接 memcpy 即可
  uint8_t *dest = reinterpret_cast<uint8_t *>(&val);
  for (size_t i = 0; i < sizeof(T); ++i) {
    dest[i] = ptr[sizeof(T) - 1 - i];
  }
  return val;
}

extern "C" {

// 16-bit 平面旋转辅助函数
void RotatePlane16(const uint16_t *src, uint16_t *dst, int width, int height,
                   int rotation) {
  if (rotation == 0) {
    memcpy(dst, src, width * height * sizeof(uint16_t));
    return;
  }

  for (int y = 0; y < height; ++y) {
    for (int x = 0; x < width; ++x) {
      int srcIdx = y * width + x;
      int dstIdx;
      if (rotation == 90) {
        dstIdx = x * height + (height - 1 - y);
      } else if (rotation == 180) {
        dstIdx = (height - 1 - y) * width + (width - 1 - x);
      } else { // 270
        dstIdx = (width - 1 - x) * height + y;
      }
      dst[dstIdx] = src[srcIdx];
    }
  }
}

/**
 * 处理 YUV_420_888 或 P010 图像：旋转、裁切、转换为 RGBA16
 */
JNIEXPORT jshortArray JNICALL
Java_com_hinnka_mycamera_utils_YuvProcessor_processYuv(
    JNIEnv *env, jobject /* this */, jobject yBuffer, jobject uBuffer,
    jobject vBuffer, jint width, jint height, jint yRowStride, jint uvRowStride,
    jint uvPixelStride, jint rotation, jfloat targetRatio, jint format) {

  // 获取 buffer 指针
  auto *yData = static_cast<uint8_t *>(env->GetDirectBufferAddress(yBuffer));
  auto *uData = static_cast<uint8_t *>(env->GetDirectBufferAddress(uBuffer));
  auto *vData = static_cast<uint8_t *>(env->GetDirectBufferAddress(vBuffer));

  if (yData == nullptr || uData == nullptr || vData == nullptr) {
    LOGE("Failed to get buffer addresses");
    return nullptr;
  }

  bool isP010 = (format == 0x36);

  // === Step 1: 将 YUV 格式化为 16-bit I420/I010 结构 ===
  int ySize = width * height;
  int uvWidth = width / 2;
  int uvHeight = height / 2;
  int uvSize = uvWidth * uvHeight;
  int totalSize = (ySize + uvSize * 2) * sizeof(uint16_t);

  auto *yuv16Data = static_cast<uint16_t *>(malloc(totalSize));
  if (yuv16Data == nullptr) {
    LOGE("Failed to allocate YUV16 buffer");
    return nullptr;
  }

  uint16_t *iY = yuv16Data;
  uint16_t *iU = yuv16Data + ySize;
  uint16_t *iV = iU + uvSize;

  // 转换 Y 平面
  for (int row = 0; row < height; row++) {
    for (int col = 0; col < width; col++) {
      if (isP010) {
        iY[row * width + col] =
            readValue<uint16_t>(yData + row * yRowStride + col * 2, false);
      } else {
        iY[row * width + col] =
            static_cast<uint16_t>(yData[row * yRowStride + col]) << 8;
      }
    }
  }

  // 转换 UV 平面
  for (int row = 0; row < uvHeight; row++) {
    for (int col = 0; col < uvWidth; col++) {
      if (isP010) {
        iU[row * uvWidth + col] = readValue<uint16_t>(
            uData + row * uvRowStride + col * uvPixelStride, false);
        iV[row * uvWidth + col] = readValue<uint16_t>(
            vData + row * uvRowStride + col * uvPixelStride, false);
      } else {
        iU[row * uvWidth + col] =
            static_cast<uint16_t>(
                uData[row * uvRowStride + col * uvPixelStride])
            << 8;
        iV[row * uvWidth + col] =
            static_cast<uint16_t>(
                vData[row * uvRowStride + col * uvPixelStride])
            << 8;
      }
    }
  }

  // === Step 2: 旋转 YUV16 ===
  int rotatedWidth = (rotation == 90 || rotation == 270) ? height : width;
  int rotatedHeight = (rotation == 90 || rotation == 270) ? width : height;
  int rotatedUvWidth = rotatedWidth / 2;
  int rotatedUvHeight = rotatedHeight / 2;

  auto *rotatedYuv16 = static_cast<uint16_t *>(malloc(totalSize));
  if (rotatedYuv16 == nullptr) {
    LOGE("Failed to allocate rotated YUV16 buffer");
    free(yuv16Data);
    return nullptr;
  }

  uint16_t *rY = rotatedYuv16;
  uint16_t *rU = rotatedYuv16 + rotatedWidth * rotatedHeight;
  uint16_t *rV = rU + rotatedUvWidth * rotatedUvHeight;

  RotatePlane16(iY, rY, width, height, rotation);
  RotatePlane16(iU, rU, uvWidth, uvHeight, rotation);
  RotatePlane16(iV, rV, uvWidth, uvHeight, rotation);

  free(yuv16Data);

  // === Step 3: 裁切计算 ===
  int finalWidth, finalHeight;
  if (rotatedWidth > rotatedHeight) {
    float expectedWidth = rotatedHeight * targetRatio;
    if (expectedWidth <= rotatedWidth) {
      finalHeight = rotatedHeight;
      finalWidth = (static_cast<int>(expectedWidth) / 2) * 2;
    } else {
      finalWidth = rotatedWidth;
      finalHeight = (static_cast<int>(rotatedWidth / targetRatio) / 2) * 2;
    }
  } else {
    float expectedHeight = rotatedWidth * targetRatio;
    if (expectedHeight <= rotatedHeight) {
      finalWidth = rotatedWidth;
      finalHeight = (static_cast<int>(expectedHeight) / 2) * 2;
    } else {
      finalHeight = rotatedHeight;
      finalWidth = (static_cast<int>(rotatedHeight / targetRatio) / 2) * 2;
    }
  }

  int cropX = ((rotatedWidth - finalWidth) / 4) * 2;
  int cropY = ((rotatedHeight - finalHeight) / 4) * 2;

  // === Step 4: 转换并返回 16-bit RGBA (RGBA64) ===
  int pixelCount = finalWidth * finalHeight;
  jshortArray result = env->NewShortArray(pixelCount * 4 + 2);
  if (result == nullptr) {
    LOGE("Failed to create result array");
    free(rotatedYuv16);
    return nullptr;
  }

  jshort header[2] = {static_cast<jshort>(finalWidth),
                      static_cast<jshort>(finalHeight)};
  env->SetShortArrayRegion(result, 0, 2, header);

  auto *outData =
      static_cast<jshort *>(malloc(pixelCount * 4 * sizeof(jshort)));

  for (int y = 0; y < finalHeight; y++) {
    for (int x = 0; x < finalWidth; x++) {
      int srcY = (cropY + y) * rotatedWidth + (cropX + x);
      int srcUV = ((cropY + y) / 2) * (rotatedWidth / 2) + ((cropX + x) / 2);

      float Y, U, V;
      if (isP010) {
        // P010: 10-bit values in upper bits
        // Full scale is 65535, center for UV is 32768
        // Coefficients expect UV delta normalized by same scale as Y
        Y = rY[srcY] / 65535.0f;
        U = (static_cast<float>(rU[srcUV]) - 32768.0f) / 65535.0f;
        V = (static_cast<float>(rV[srcUV]) - 32768.0f) / 65535.0f;
      } else {
        // 8-bit shifted to 16-bit: value << 8
        // Max Y is 255*256 = 65280, UV center is 128*256 = 32768
        // Coefficients expect UV delta normalized by same scale as Y (65280)
        Y = rY[srcY] / 65280.0f;
        U = (static_cast<float>(rU[srcUV]) - 32768.0f) / 65280.0f;
        V = (static_cast<float>(rV[srcUV]) - 32768.0f) / 65280.0f;
      }

      float R, G, B;
      if (isP010) {
        // BT.2020 full range
        // Standard coefficients for normalized Y (0-1) and UV delta/scale
        R = Y + 1.4746f * V;
        G = Y - 0.16455f * U - 0.57135f * V;
        B = Y + 1.8814f * U;
      } else {
        // BT.601 full range
        R = Y + 1.402f * V;
        G = Y - 0.344136f * U - 0.714136f * V;
        B = Y + 1.772f * U;
      }

      int idx = (y * finalWidth + x) * 4;
      outData[idx] =
          static_cast<jshort>(std::max(0.0f, std::min(1.0f, R)) * 65535.0f);
      outData[idx + 1] =
          static_cast<jshort>(std::max(0.0f, std::min(1.0f, G)) * 65535.0f);
      outData[idx + 2] =
          static_cast<jshort>(std::max(0.0f, std::min(1.0f, B)) * 65535.0f);
      outData[idx + 3] = static_cast<jshort>(65535); // Alpha
    }
  }

  env->SetShortArrayRegion(result, 2, pixelCount * 4, outData);
  free(outData);
  free(rotatedYuv16);

  return result;
}

/**
 * 将 RGBA16 数据进行 gzip 压缩并保存到文件
 *
 * @param argbData RGBA16 像素数据 [width, height, r1, g1, b1, a1, ...]
 * @param outputPath 输出文件路径
 * @return 是否成功保存
 */
JNIEXPORT jboolean JNICALL
Java_com_hinnka_mycamera_utils_YuvProcessor_saveCompressedArgb(
    JNIEnv *env, jobject /* this */, jshortArray argbData, jstring outputPath) {

  const char *path = env->GetStringUTFChars(outputPath, nullptr);
  jshort *pixels = env->GetShortArrayElements(argbData, nullptr);
  jsize dataSize = env->GetArrayLength(argbData);

  if (dataSize < 2 || pixels == nullptr) {
    LOGE("saveCompressedArgb: Invalid argbData");
    if (pixels != nullptr) {
      env->ReleaseShortArrayElements(argbData, pixels, JNI_ABORT);
    }
    env->ReleaseStringUTFChars(outputPath, path);
    return JNI_FALSE;
  }

  // 直接从数组头部读取 width 和 height
  int32_t width = static_cast<uint16_t>(pixels[0]);
  int32_t height = static_cast<uint16_t>(pixels[1]);

  gzFile file = gzopen(path, "wb1");
  if (file == nullptr) {
    LOGE("saveCompressedArgb: Failed to open file for writing");
    env->ReleaseShortArrayElements(argbData, pixels, JNI_ABORT);
    env->ReleaseStringUTFChars(outputPath, path);
    return JNI_FALSE;
  }

  // Header: width, height, version (1 for 16-bit RGBA)
  int32_t header[3] = {width, height, 1};
  gzwrite(file, header, sizeof(header));

  // 跳过前 2 个 short (width, height header)，只写入像素数据
  int pixelDataSize = (dataSize - 2) * sizeof(jshort);
  gzwrite(file, pixels + 2, pixelDataSize);

  gzclose(file);

  env->ReleaseShortArrayElements(argbData, pixels, JNI_ABORT);
  env->ReleaseStringUTFChars(outputPath, path);
  return JNI_TRUE;
}

/**
 * 从文件中读取并解压缩 RGBA16 数据
 *
 * @param inputPath 输入文件路径
 * @return ShortArray: [width, height, r1, g1, b1, a1, ...]，失败返回 null
 */
JNIEXPORT jshortArray JNICALL
Java_com_hinnka_mycamera_utils_YuvProcessor_loadCompressedArgb(
    JNIEnv *env, jobject /* this */, jstring inputPath) {

  const char *path = env->GetStringUTFChars(inputPath, nullptr);
  gzFile file = gzopen(path, "rb");
  if (file == nullptr) {
    LOGE("loadCompressedArgb: Failed to open file: %s", path);
    env->ReleaseStringUTFChars(inputPath, path);
    return nullptr;
  }

  // 读取 header: width, height, version
  int32_t header[3];
  int headerRead = gzread(file, header, sizeof(header));
  if (headerRead < static_cast<int>(sizeof(header))) {
    LOGE("loadCompressedArgb: Failed to read header from: %s", path);
    gzclose(file);
    env->ReleaseStringUTFChars(inputPath, path);
    return nullptr;
  }

  int32_t width = header[0];
  int32_t height = header[1];
  // header[2] 是 version，当前只支持 version=1 (16-bit RGBA)

  int32_t pixelCount = width * height;
  jshortArray result = env->NewShortArray(pixelCount * 4 + 2);
  if (result == nullptr) {
    LOGE("loadCompressedArgb: Failed to allocate result array");
    gzclose(file);
    env->ReleaseStringUTFChars(inputPath, path);
    return nullptr;
  }

  // 写入 header
  jshort resHeader[2] = {static_cast<jshort>(width),
                         static_cast<jshort>(height)};
  env->SetShortArrayRegion(result, 0, 2, resHeader);

  // 读取像素数据
  if (pixelCount > 0) {
    jshort *pixels =
        static_cast<jshort *>(malloc(pixelCount * 4 * sizeof(jshort)));
    if (pixels == nullptr) {
      LOGE("loadCompressedArgb: Failed to allocate pixels buffer");
      gzclose(file);
      env->ReleaseStringUTFChars(inputPath, path);
      return nullptr;
    }

    gzread(file, pixels, pixelCount * 4 * sizeof(jshort));
    env->SetShortArrayRegion(result, 2, pixelCount * 4, pixels);
    free(pixels);
  }

  gzclose(file);
  env->ReleaseStringUTFChars(inputPath, path);
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
 * 根据 CFA Pattern 和 Opcode 的物理坐标，计算逻辑通道索引。
 * 目标顺序: [R, Gr, Gb, B] (Index 0, 1, 2, 3)
 *
 * @param top Opcode ROI Top
 * @param left Opcode ROI Left
 * @param cfaPattern Android
 * CameraCharacteristics.SENSOR_INFO_COLOR_FILTER_ARRANGEMENT 0=RGGB, 1=GRBG,
 * 2=GBRG, 3=BGGR
 */
uint32_t getLogicalChannelIndex(uint32_t top, uint32_t left, int cfaPattern) {
  // 1. 计算物理几何索引 (0=TopLeft, 1=TopRight, 2=BottomLeft, 3=BottomRight)
  // 假设 Opcode 总是处理 2x2 块中的某一个
  uint32_t geometricIndex = (top % 2) * 2 + (left % 2);

  // 2. 根据 CFA Pattern 映射到逻辑通道 [R=0, Gr=1, Gb=2, B=3]
  switch (cfaPattern) {
  case 0: // RGGB: R G / G B -> 0 1 / 2 3
    // 0->0, 1->1, 2->2, 3->3 (Identity)
    return geometricIndex;

  case 1: // GRBG: G R / B G -> 1 0 / 3 2
    // (0,0)G->1, (0,1)R->0, (1,0)B->3, (1,1)G->2
    if (geometricIndex == 0)
      return 1; // Gr
    if (geometricIndex == 1)
      return 0; // R
    if (geometricIndex == 2)
      return 3; // B
    if (geometricIndex == 3)
      return 2; // Gb
    break;

  case 2: // GBRG: G B / R G -> 2 3 / 0 1
    // (0,0)G->2, (0,1)B->3, (1,0)R->0, (1,1)G->1
    if (geometricIndex == 0)
      return 2; // Gb
    if (geometricIndex == 1)
      return 3; // B
    if (geometricIndex == 2)
      return 0; // R
    if (geometricIndex == 3)
      return 1; // Gr
    break;

  case 3: // BGGR: B G / G R -> 3 2 / 1 0 (根据你的 Log 推断绿色的顺序)
    // (0,0)B->3, (0,1)G->1, (1,0)G->2, (1,1)R->0
    // 注意：你的日志显示 Green 通道在 BGGR 下对应 Opcode(0,1)->Index 1 和
    // Opcode(1,0)->Index 2 这意味着 BGGR 下的 Green 映射与 RGGB 相同，只有 R/B
    // 互换。
    if (geometricIndex == 0)
      return 3; // B
    if (geometricIndex == 1)
      return 1; // Gr (Matches Log)
    if (geometricIndex == 2)
      return 2; // Gb (Matches Log)
    if (geometricIndex == 3)
      return 0; // R
    break;
  }
  return geometricIndex; // Fallback
}

bool parseOpcodeList2ForLSC(const std::vector<uint8_t> &opcodeData,
                            DngMetadata &metadata, int cfaPattern) {
  if (opcodeData.empty())
    return false;

  const uint8_t *data = opcodeData.data();
  size_t dataSize = opcodeData.size();
  size_t offset = 0;

  if (dataSize < 4)
    return false;

  uint32_t opcodeCount = readBigEndian<uint32_t>(data + offset);
  offset += 4;

  bool foundAnyLSC = false;

  for (uint32_t i = 0; i < opcodeCount; i++) {
    if (offset + 16 > dataSize)
      break;

    uint32_t opcodeID = readBigEndian<uint32_t>(data + offset);
    uint32_t paramSize = readBigEndian<uint32_t>(data + offset + 12);
    size_t paramStart = offset + 16;

    if (paramStart + paramSize > dataSize)
      break;

    // Opcode ID 9: GainMap
    if (opcodeID == 9) {
      if (paramSize < 76) {
        offset += 16 + paramSize;
        continue;
      }

      uint32_t top = readBigEndian<uint32_t>(data + paramStart + 0);
      uint32_t left = readBigEndian<uint32_t>(data + paramStart + 4);
      uint32_t startPlaneIndex =
          readBigEndian<uint32_t>(data + paramStart + 16);
      uint32_t planesCount = readBigEndian<uint32_t>(data + paramStart + 20);
      uint32_t mapPointsV = readBigEndian<uint32_t>(data + paramStart + 32);
      uint32_t mapPointsH = readBigEndian<uint32_t>(data + paramStart + 36);
      uint32_t mapPlanes = readBigEndian<uint32_t>(data + paramStart + 72);

      // 初始化容器
      if (metadata.lensShadingMap.empty()) {
        metadata.lscWidth = mapPointsH;
        metadata.lscHeight = mapPointsV;
        metadata.lensShadingMap.assign(mapPointsH * mapPointsV * 4, 1.0f);
      }

      // 计算该 Opcode 对应的逻辑通道 (R, Gr, Gb, B)
      uint32_t logicalChannel = startPlaneIndex;
      // 如果 startPlaneIndex 为 0，说明是 Split Opcode，需要根据 ROI 和 CFA
      // Pattern 计算
      if (startPlaneIndex == 0 && planesCount == 1) {
        logicalChannel = getLogicalChannelIndex(top, left, cfaPattern);
      }

      // 数据指针
      const uint8_t *gainDataPtr = data + paramStart + 76;

      // 填充数据
      for (uint32_t r = 0; r < mapPointsV; r++) {
        for (uint32_t c = 0; c < mapPointsH; c++) {
          size_t pixelBaseIdx = (r * mapPointsH + c) * 4;

          for (uint32_t mp = 0; mp < mapPlanes; mp++) {
            float gain = readBigEndian<float>(gainDataPtr);
            gainDataPtr += 4;

            // 写入正确的逻辑通道
            uint32_t targetCh = logicalChannel + mp;

            // 处理单平面覆盖多通道的情况 (Broadcast)
            if (mp == mapPlanes - 1 && planesCount > mapPlanes) {
              // 如果是全平面共用 (黑白raw)，或者 Green 共用
              // 这里为了稳妥，如果 planesCount=1，我们只写 targetCh
              if (targetCh < 4)
                metadata.lensShadingMap[pixelBaseIdx + targetCh] = gain;
            } else {
              if (targetCh < 4)
                metadata.lensShadingMap[pixelBaseIdx + targetCh] = gain;
            }
          }
        }
      }
      foundAnyLSC = true;
    }
    offset += 16 + paramSize;
  }
  return foundAnyLSC;
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
      int cfaEnum = mapCfaPattern(metadata.cfaPattern);
      parseOpcodeList2ForLSC(opcodeTag.data, metadata, cfaEnum);
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
