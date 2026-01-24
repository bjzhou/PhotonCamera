#include "dng_parser.h"
#include <cmath>

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
    return 5000.0f; // Baseline
  }
}

std::map<uint16_t, TiffTagData> parseTiffIFD(const std::vector<uint8_t> &data,
                                             uint32_t offset, bool bigEndian) {
  std::map<uint16_t, TiffTagData> tags;
  if (offset + 2 > data.size())
    return tags;

  uint16_t entryCount = readValue<uint16_t>(&data[offset], bigEndian);
  offset += 2;

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

uint16_t getUint16FromTag(const TiffTagData &tag, bool bigEndian) {
  if (tag.data.size() < 2)
    return 0;
  return readValue<uint16_t>(tag.data.data(), bigEndian);
}

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

uint32_t getLogicalChannelIndex(uint32_t top, uint32_t left, int cfaPattern) {
  uint32_t geometricIndex = (top % 2) * 2 + (left % 2);
  switch (cfaPattern) {
  case 0: // RGGB
    return geometricIndex;
  case 1: // GRBG
    if (geometricIndex == 0)
      return 1;
    if (geometricIndex == 1)
      return 0;
    if (geometricIndex == 2)
      return 3;
    if (geometricIndex == 3)
      return 2;
    break;
  case 2: // GBRG
    if (geometricIndex == 0)
      return 2;
    if (geometricIndex == 1)
      return 3;
    if (geometricIndex == 2)
      return 0;
    if (geometricIndex == 3)
      return 1;
    break;
  case 3: // BGGR
    if (geometricIndex == 0)
      return 3;
    if (geometricIndex == 1)
      return 1;
    if (geometricIndex == 2)
      return 2;
    if (geometricIndex == 3)
      return 0;
    break;
  }
  return geometricIndex;
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

      if (metadata.lensShadingMap.empty()) {
        metadata.lscWidth = mapPointsH;
        metadata.lscHeight = mapPointsV;
        metadata.lensShadingMap.assign(mapPointsH * mapPointsV * 4, 1.0f);
      }

      uint32_t logicalChannel = startPlaneIndex;
      if (startPlaneIndex == 0 && planesCount == 1) {
        logicalChannel = getLogicalChannelIndex(top, left, cfaPattern);
      }

      const uint8_t *gainDataPtr = data + paramStart + 76;

      for (uint32_t r = 0; r < mapPointsV; r++) {
        for (uint32_t c = 0; c < mapPointsH; c++) {
          size_t pixelBaseIdx = (r * mapPointsH + c) * 4;

          for (uint32_t mp = 0; mp < mapPlanes; mp++) {
            float gain = readBigEndian<float>(gainDataPtr);
            gainDataPtr += 4;

            uint32_t targetCh = logicalChannel + mp;

            if (mp == mapPlanes - 1 && planesCount > mapPlanes) {
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
