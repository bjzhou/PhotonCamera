#ifndef DNG_PARSER_H
#define DNG_PARSER_H

#include "common.h"
#include "math_utils.h"
#include <cstdint>
#include <map>
#include <string>
#include <vector>


namespace TiffTags {
const uint16_t ImageWidth = 256;
const uint16_t ImageLength = 257;
const uint16_t BitsPerSample = 258;
const uint16_t Compression = 259;
const uint16_t PhotometricInterpretation = 262;
const uint16_t Orientation = 274;
const uint16_t StripOffsets = 273;
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
const uint16_t ColorMatrix1 = 50721;
const uint16_t ColorMatrix2 = 50722;
const uint16_t ForwardMatrix1 = 50964;
const uint16_t ForwardMatrix2 = 50965;
const uint16_t AsShotNeutral = 50728;
const uint16_t BaselineExposure = 50730;
const uint16_t OpcodeList2 = 51009;
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
  std::vector<float> asShotNeutral;
  std::vector<float> analogBalance;
  std::vector<float> colorMatrix1;
  std::vector<float> colorMatrix2;
  std::vector<float> forwardMatrix1;
  std::vector<float> forwardMatrix2;
  uint32_t illuminant1 = 0;
  uint32_t illuminant2 = 0;
  float baselineExposure = 0.0f;

  // 输出给 App 的计算结果
  std::vector<float> wbGains;
  uint32_t rawDataOffset;
  uint32_t rawDataLength;
  uint32_t rowStride;

  uint16_t orientation; // EXIF 旋转方向 (1-8)

  // Lens Shading Map (LSC) 数据
  std::vector<float> lensShadingMap; // LSC 增益表
  uint32_t lscWidth = 0;             // LSC 表宽度
  uint32_t lscHeight = 0;            // LSC 表高度
};

float illuminantToTemp(uint32_t illuminant);
std::map<uint16_t, TiffTagData> parseTiffIFD(const std::vector<uint8_t> &data,
                                             uint32_t offset, bool bigEndian);
uint32_t getUint32FromTag(const TiffTagData &tag, bool bigEndian);
uint16_t getUint16FromTag(const TiffTagData &tag, bool bigEndian);
std::vector<float> getFloatArrayFromTag(const TiffTagData &tag, bool bigEndian);
int orientationToRotation(uint16_t orientation);
int mapCfaPattern(const uint32_t pattern[4]);
void reorderArrayByPattern(std::vector<float> &arr, const uint32_t pattern[4]);
uint32_t getLogicalChannelIndex(uint32_t top, uint32_t left, int cfaPattern);
bool parseOpcodeList2ForLSC(const std::vector<uint8_t> &opcodeData,
                            DngMetadata &metadata, int cfaPattern);

#endif // DNG_PARSER_H
