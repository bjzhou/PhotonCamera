#ifndef JXL_UTILS_H
#define JXL_UTILS_H

#include <cstdint>
#include <string>
#include <vector>

#include <jxl/types.h>

enum class JxlEncodingProfile {
  ORIGINAL = 0,
  BT2100_HLG = 1,
};

// 将 RGBA 数据进行 JPEG XL 压缩并保存到文件
bool saveJxl(const void *pixels, int32_t width, int32_t height,
             JxlDataType dataType, const std::string &outputPath,
             JxlEncodingProfile encodingProfile = JxlEncodingProfile::ORIGINAL);

// 从 JPEG XL 文件中读取并解压缩 RGBA 数据
bool loadJxl(const std::string &inputPath, std::vector<uint16_t> &outPixels,
             int32_t &outWidth, int32_t &outHeight, JxlDataType dataType);

// 更加内存高效的加载方式
void *loadJxlRaw(const std::string &inputPath, int32_t &outWidth,
                 int32_t &outHeight, JxlDataType dataType, size_t &outSize);

#endif // JXL_UTILS_H
