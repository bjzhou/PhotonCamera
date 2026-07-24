/*
 * Copyright 2024 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <algorithm>
#include <cmath>

#include "ultrahdr/gainmapmath.h"
#include "ultrahdr/gainmapmetadata.h"

namespace ultrahdr {

void streamWriteU8(std::vector<uint8_t> &data, uint8_t value) { data.push_back(value); }

void streamWriteU16(std::vector<uint8_t> &data, uint16_t value) {
  data.push_back((value >> 8) & 0xff);
  data.push_back(value & 0xff);
}

void streamWriteU32(std::vector<uint8_t> &data, uint32_t value) {
  data.push_back((value >> 24) & 0xff);
  data.push_back((value >> 16) & 0xff);
  data.push_back((value >> 8) & 0xff);
  data.push_back(value & 0xff);
}

void streamWriteS32(std::vector<uint8_t> &data, int32_t value) {
  data.push_back((value >> 24) & 0xff);
  data.push_back((value >> 16) & 0xff);
  data.push_back((value >> 8) & 0xff);
  data.push_back(value & 0xff);
}

uhdr_error_info_t streamReadU8(const std::vector<uint8_t> &data, uint8_t &value, size_t &pos) {
  if (pos >= data.size()) {
    uhdr_error_info_t status;
    status.error_code = UHDR_CODEC_MEM_ERROR;
    status.has_detail = 1;
    snprintf(status.detail, sizeof status.detail,
             "attempting to read byte at position %d when the buffer size is %d", (int)pos,
             (int)data.size());
    return status;
  }
  value = data[pos++];
  return g_no_error;
}

uhdr_error_info_t streamReadU16(const std::vector<uint8_t> &data, uint16_t &value, size_t &pos) {
  if (pos + 1 >= data.size()) {
    uhdr_error_info_t status;
    status.error_code = UHDR_CODEC_MEM_ERROR;
    status.has_detail = 1;
    snprintf(status.detail, sizeof status.detail,
             "attempting to read 2 bytes from position %d when the buffer size is %d", (int)pos,
             (int)data.size());
    return status;
  }
  value = (data[pos] << 8 | data[pos + 1]);
  pos += 2;
  return g_no_error;
}

uhdr_error_info_t streamReadU32(const std::vector<uint8_t> &data, uint32_t &value, size_t &pos) {
  if (pos + 3 >= data.size()) {
    uhdr_error_info_t status;
    status.error_code = UHDR_CODEC_MEM_ERROR;
    status.has_detail = 1;
    snprintf(status.detail, sizeof status.detail,
             "attempting to read 4 bytes from position %d when the buffer size is %d", (int)pos,
             (int)data.size());
    return status;
  }
  value = (data[pos] << 24 | data[pos + 1] << 16 | data[pos + 2] << 8 | data[pos + 3]);
  pos += 4;
  return g_no_error;
}

uhdr_error_info_t streamReadS32(const std::vector<uint8_t> &data, int32_t &value, size_t &pos) {
  if (pos + 3 >= data.size()) {
    uhdr_error_info_t status;
    status.error_code = UHDR_CODEC_MEM_ERROR;
    status.has_detail = 1;
    snprintf(status.detail, sizeof status.detail,
             "attempting to read 4 bytes from position %d when the buffer size is %d", (int)pos,
             (int)data.size());
    return status;
  }
  value = (data[pos] << 24 | data[pos + 1] << 16 | data[pos + 2] << 8 | data[pos + 3]);
  pos += 4;
  return g_no_error;
}

bool uhdr_gainmap_metadata_frac::allChannelsIdentical() const {
  return gainMapMinN[0] == gainMapMinN[1] && gainMapMinN[0] == gainMapMinN[2] &&
         gainMapMinD[0] == gainMapMinD[1] && gainMapMinD[0] == gainMapMinD[2] &&
         gainMapMaxN[0] == gainMapMaxN[1] && gainMapMaxN[0] == gainMapMaxN[2] &&
         gainMapMaxD[0] == gainMapMaxD[1] && gainMapMaxD[0] == gainMapMaxD[2] &&
         gainMapGammaN[0] == gainMapGammaN[1] && gainMapGammaN[0] == gainMapGammaN[2] &&
         gainMapGammaD[0] == gainMapGammaD[1] && gainMapGammaD[0] == gainMapGammaD[2] &&
         baseOffsetN[0] == baseOffsetN[1] && baseOffsetN[0] == baseOffsetN[2] &&
         baseOffsetD[0] == baseOffsetD[1] && baseOffsetD[0] == baseOffsetD[2] &&
         alternateOffsetN[0] == alternateOffsetN[1] && alternateOffsetN[0] == alternateOffsetN[2] &&
         alternateOffsetD[0] == alternateOffsetD[1] && alternateOffsetD[0] == alternateOffsetD[2];
}

uhdr_error_info_t uhdr_gainmap_metadata_frac::encodeGainmapMetadata(
    const uhdr_gainmap_metadata_frac *in_metadata, std::vector<uint8_t> &out_data) {
  if (in_metadata == nullptr) {
    uhdr_error_info_t status;
    status.error_code = UHDR_CODEC_INVALID_PARAM;
    status.has_detail = 1;
    snprintf(status.detail, sizeof status.detail,
             "received nullptr for gain map metadata descriptor");
    return status;
  }

  const uint16_t min_version = 0, writer_version = 0;
  streamWriteU16(out_data, min_version);
  streamWriteU16(out_data, writer_version);

  uint8_t flags = 0u;
  // Always write three channels for now for simplicity.
  // TODO(maryla): the draft says that this specifies the count of channels of the
  // gain map. But tone mapping is done in RGB space so there are always three
  // channels, even if the gain map is grayscale. Should this be revised?
  const uint8_t channelCount = in_metadata->allChannelsIdentical() ? 1u : 3u;

  if (channelCount == 3) {
    flags |= kIsMultiChannelMask;
  }
  if (in_metadata->useBaseColorSpace) {
    flags |= kUseBaseColorSpaceMask;
  }
  if (in_metadata->backwardDirection) {
    flags |= 4;
  }

  const uint32_t denom = in_metadata->baseHdrHeadroomD;
  bool useCommonDenominator = true;
  if (in_metadata->baseHdrHeadroomD != denom || in_metadata->alternateHdrHeadroomD != denom) {
    useCommonDenominator = false;
  }
  for (int c = 0; c < channelCount; ++c) {
    if (in_metadata->gainMapMinD[c] != denom || in_metadata->gainMapMaxD[c] != denom ||
        in_metadata->gainMapGammaD[c] != denom || in_metadata->baseOffsetD[c] != denom ||
        in_metadata->alternateOffsetD[c] != denom) {
      useCommonDenominator = false;
    }
  }
  if (useCommonDenominator) {
    flags |= 8;
  }
  streamWriteU8(out_data, flags);

  if (useCommonDenominator) {
    streamWriteU32(out_data, denom);
    streamWriteU32(out_data, in_metadata->baseHdrHeadroomN);
    streamWriteU32(out_data, in_metadata->alternateHdrHeadroomN);
    for (int c = 0; c < channelCount; ++c) {
      streamWriteS32(out_data, in_metadata->gainMapMinN[c]);
      streamWriteS32(out_data, in_metadata->gainMapMaxN[c]);
      streamWriteU32(out_data, in_metadata->gainMapGammaN[c]);
      streamWriteS32(out_data, in_metadata->baseOffsetN[c]);
      streamWriteS32(out_data, in_metadata->alternateOffsetN[c]);
    }
  } else {
    streamWriteU32(out_data, in_metadata->baseHdrHeadroomN);
    streamWriteU32(out_data, in_metadata->baseHdrHeadroomD);
    streamWriteU32(out_data, in_metadata->alternateHdrHeadroomN);
    streamWriteU32(out_data, in_metadata->alternateHdrHeadroomD);
    for (int c = 0; c < channelCount; ++c) {
      streamWriteS32(out_data, in_metadata->gainMapMinN[c]);
      streamWriteU32(out_data, in_metadata->gainMapMinD[c]);
      streamWriteS32(out_data, in_metadata->gainMapMaxN[c]);
      streamWriteU32(out_data, in_metadata->gainMapMaxD[c]);
      streamWriteU32(out_data, in_metadata->gainMapGammaN[c]);
      streamWriteU32(out_data, in_metadata->gainMapGammaD[c]);
      streamWriteS32(out_data, in_metadata->baseOffsetN[c]);
      streamWriteU32(out_data, in_metadata->baseOffsetD[c]);
      streamWriteS32(out_data, in_metadata->alternateOffsetN[c]);
      streamWriteU32(out_data, in_metadata->alternateOffsetD[c]);
    }
  }

  return g_no_error;
}

uhdr_error_info_t uhdr_gainmap_metadata_frac::decodeGainmapMetadata(
    const std::vector<uint8_t> &in_data, uhdr_gainmap_metadata_frac *out_metadata) {
  if (out_metadata == nullptr) {
    uhdr_error_info_t status;
    status.error_code = UHDR_CODEC_INVALID_PARAM;
    status.has_detail = 1;
    snprintf(status.detail, sizeof status.detail,
             "received nullptr for gain map metadata descriptor");
    return status;
  }

  size_t pos = 0;
  uint16_t min_version = 0xffff;
  uint16_t writer_version = 0xffff;
  UHDR_ERR_CHECK(streamReadU16(in_data, min_version, pos))
  if (min_version != 0) {
    uhdr_error_info_t status;
    status.error_code = UHDR_CODEC_UNSUPPORTED_FEATURE;
    status.has_detail = 1;
    snprintf(status.detail, sizeof status.detail,
             "received unexpected minimum version %d, expected 0", min_version);
    return status;
  }
  UHDR_ERR_CHECK(streamReadU16(in_data, writer_version, pos))

  uint8_t flags = 0xff;
  UHDR_ERR_CHECK(streamReadU8(in_data, flags, pos))
  uint8_t channelCount = ((flags & kIsMultiChannelMask) != 0) * 2 + 1;
  if (!(channelCount == 1 || channelCount == 3)) {
    uhdr_error_info_t status;
    status.error_code = UHDR_CODEC_UNSUPPORTED_FEATURE;
    status.has_detail = 1;
    snprintf(status.detail, sizeof status.detail,
             "received unexpected channel count %d, expects one of {1, 3}", channelCount);
    return status;
  }
  out_metadata->useBaseColorSpace = (flags & kUseBaseColorSpaceMask) != 0;
  out_metadata->backwardDirection = (flags & 4) != 0;
  const bool useCommonDenominator = (flags & 8) != 0;

  if (useCommonDenominator) {
    uint32_t commonDenominator = 1u;
    UHDR_ERR_CHECK(streamReadU32(in_data, commonDenominator, pos))

    UHDR_ERR_CHECK(streamReadU32(in_data, out_metadata->baseHdrHeadroomN, pos))
    out_metadata->baseHdrHeadroomD = commonDenominator;
    UHDR_ERR_CHECK(streamReadU32(in_data, out_metadata->alternateHdrHeadroomN, pos))
    out_metadata->alternateHdrHeadroomD = commonDenominator;

    for (int c = 0; c < channelCount; ++c) {
      UHDR_ERR_CHECK(streamReadS32(in_data, out_metadata->gainMapMinN[c], pos))
      out_metadata->gainMapMinD[c] = commonDenominator;
      UHDR_ERR_CHECK(streamReadS32(in_data, out_metadata->gainMapMaxN[c], pos))
      out_metadata->gainMapMaxD[c] = commonDenominator;
      UHDR_ERR_CHECK(streamReadU32(in_data, out_metadata->gainMapGammaN[c], pos))
      out_metadata->gainMapGammaD[c] = commonDenominator;
      UHDR_ERR_CHECK(streamReadS32(in_data, out_metadata->baseOffsetN[c], pos))
      out_metadata->baseOffsetD[c] = commonDenominator;
      UHDR_ERR_CHECK(streamReadS32(in_data, out_metadata->alternateOffsetN[c], pos))
      out_metadata->alternateOffsetD[c] = commonDenominator;
    }
  } else {
    UHDR_ERR_CHECK(streamReadU32(in_data, out_metadata->baseHdrHeadroomN, pos))
    UHDR_ERR_CHECK(streamReadU32(in_data, out_metadata->baseHdrHeadroomD, pos))
    UHDR_ERR_CHECK(streamReadU32(in_data, out_metadata->alternateHdrHeadroomN, pos))
    UHDR_ERR_CHECK(streamReadU32(in_data, out_metadata->alternateHdrHeadroomD, pos))
    for (int c = 0; c < channelCount; ++c) {
      UHDR_ERR_CHECK(streamReadS32(in_data, out_metadata->gainMapMinN[c], pos))
      UHDR_ERR_CHECK(streamReadU32(in_data, out_metadata->gainMapMinD[c], pos))
      UHDR_ERR_CHECK(streamReadS32(in_data, out_metadata->gainMapMaxN[c], pos))
      UHDR_ERR_CHECK(streamReadU32(in_data, out_metadata->gainMapMaxD[c], pos))
      UHDR_ERR_CHECK(streamReadU32(in_data, out_metadata->gainMapGammaN[c], pos))
      UHDR_ERR_CHECK(streamReadU32(in_data, out_metadata->gainMapGammaD[c], pos))
      UHDR_ERR_CHECK(streamReadS32(in_data, out_metadata->baseOffsetN[c], pos))
      UHDR_ERR_CHECK(streamReadU32(in_data, out_metadata->baseOffsetD[c], pos))
      UHDR_ERR_CHECK(streamReadS32(in_data, out_metadata->alternateOffsetN[c], pos))
      UHDR_ERR_CHECK(streamReadU32(in_data, out_metadata->alternateOffsetD[c], pos))
    }
  }

  // Fill the remaining values by copying those from the first channel.
  for (int c = channelCount; c < 3; ++c) {
    out_metadata->gainMapMinN[c] = out_metadata->gainMapMinN[0];
    out_metadata->gainMapMinD[c] = out_metadata->gainMapMinD[0];
    out_metadata->gainMapMaxN[c] = out_metadata->gainMapMaxN[0];
    out_metadata->gainMapMaxD[c] = out_metadata->gainMapMaxD[0];
    out_metadata->gainMapGammaN[c] = out_metadata->gainMapGammaN[0];
    out_metadata->gainMapGammaD[c] = out_metadata->gainMapGammaD[0];
    out_metadata->baseOffsetN[c] = out_metadata->baseOffsetN[0];
    out_metadata->baseOffsetD[c] = out_metadata->baseOffsetD[0];
    out_metadata->alternateOffsetN[c] = out_metadata->alternateOffsetN[0];
    out_metadata->alternateOffsetD[c] = out_metadata->alternateOffsetD[0];
  }

  return g_no_error;
}

#define UHDR_CHECK_NON_ZERO(x, message)                                                            \
  if (x == 0) {                                                                                    \
    uhdr_error_info_t status;                                                                      \
    status.error_code = UHDR_CODEC_INVALID_PARAM;                                                  \
    status.has_detail = 1;                                                                         \
    snprintf(status.detail, sizeof status.detail, "received 0 (bad value) for field %s", message); \
    return status;                                                                                 \
  }

uhdr_error_info_t uhdr_gainmap_metadata_frac::gainmapMetadataFractionToFloat(
    const uhdr_gainmap_metadata_frac *from, uhdr_gainmap_metadata_ext_t *to) {
  if (from == nullptr || to == nullptr) {
    uhdr_error_info_t status;
    status.error_code = UHDR_CODEC_INVALID_PARAM;
    status.has_detail = 1;
    snprintf(status.detail, sizeof status.detail,
             "received nullptr for gain map metadata descriptor");
    return status;
  }

  UHDR_CHECK_NON_ZERO(from->baseHdrHeadroomD, "baseHdrHeadroom denominator");
  UHDR_CHECK_NON_ZERO(from->alternateHdrHeadroomD, "alternateHdrHeadroom denominator");
  for (int i = 0; i < 3; ++i) {
    UHDR_CHECK_NON_ZERO(from->gainMapMaxD[i], "gainMapMax denominator");
    UHDR_CHECK_NON_ZERO(from->gainMapGammaD[i], "gainMapGamma denominator");
    UHDR_CHECK_NON_ZERO(from->gainMapMinD[i], "gainMapMin denominator");
    UHDR_CHECK_NON_ZERO(from->baseOffsetD[i], "baseOffset denominator");
    UHDR_CHECK_NON_ZERO(from->alternateOffsetD[i], "alternateOffset denominator");
  }

  // jpeg supports only 8 bits per component, applying gainmap in inverse direction is unexpected
  if (from->backwardDirection) {
    uhdr_error_info_t status;
    status.error_code = UHDR_CODEC_UNSUPPORTED_FEATURE;
    status.has_detail = 1;
    snprintf(status.detail, sizeof status.detail, "hdr intent as base rendition is not supported");
    return status;
  }

  to->version = kJpegrVersion;
  for (int i = 0; i < 3; i++) {
    to->max_content_boost[i] = exp2((float)from->gainMapMaxN[i] / from->gainMapMaxD[i]);
    to->min_content_boost[i] = exp2((float)from->gainMapMinN[i] / from->gainMapMinD[i]);

    to->gamma[i] = (float)from->gainMapGammaN[i] / from->gainMapGammaD[i];

    // BaseRenditionIsHDR is false
    to->offset_sdr[i] = (float)from->baseOffsetN[i] / from->baseOffsetD[i];
    to->offset_hdr[i] = (float)from->alternateOffsetN[i] / from->alternateOffsetD[i];
  }
  to->hdr_capacity_max = exp2((float)from->alternateHdrHeadroomN / from->alternateHdrHeadroomD);
  to->hdr_capacity_min = exp2((float)from->baseHdrHeadroomN / from->baseHdrHeadroomD);
  to->use_base_cg = from->useBaseColorSpace;

  return g_no_error;
}

uhdr_error_info_t uhdr_gainmap_metadata_frac::gainmapMetadataFloatToFraction(
    const uhdr_gainmap_metadata_ext_t *from, uhdr_gainmap_metadata_frac *to) {
  if (from == nullptr || to == nullptr) {
    uhdr_error_info_t status;
    status.error_code = UHDR_CODEC_INVALID_PARAM;
    status.has_detail = 1;
    snprintf(status.detail, sizeof status.detail,
             "received nullptr for gain map metadata descriptor");
    return status;
  }

  to->backwardDirection = false;
  to->useBaseColorSpace = from->use_base_cg;

#define CONVERT_FLT_TO_UNSIGNED_FRACTION(flt, numerator, denominator)                          \
  if (!floatToUnsignedFraction(flt, numerator, denominator)) {                                 \
    uhdr_error_info_t status;                                                                  \
    status.error_code = UHDR_CODEC_INVALID_PARAM;                                              \
    status.has_detail = 1;                                                                     \
    snprintf(status.detail, sizeof status.detail,                                              \
             "encountered error while representing float %f as a rational number (p/q form) ", \
             flt);                                                                             \
    return status;                                                                             \
  }

#define CONVERT_FLT_TO_SIGNED_FRACTION(flt, numerator, denominator)                            \
  if (!floatToSignedFraction(flt, numerator, denominator)) {                                   \
    uhdr_error_info_t status;                                                                  \
    status.error_code = UHDR_CODEC_INVALID_PARAM;                                              \
    status.has_detail = 1;                                                                     \
    snprintf(status.detail, sizeof status.detail,                                              \
             "encountered error while representing float %f as a rational number (p/q form) ", \
             flt);                                                                             \
    return status;                                                                             \
  }

  bool isSingleChannel = from->are_all_channels_identical();
  for (int i = 0; i < (isSingleChannel ? 1 : 3); i++) {
    CONVERT_FLT_TO_SIGNED_FRACTION(log2(from->max_content_boost[i]), &to->gainMapMaxN[i],
                                   &to->gainMapMaxD[i])

    CONVERT_FLT_TO_SIGNED_FRACTION(log2(from->min_content_boost[i]), &to->gainMapMinN[i],
                                   &to->gainMapMinD[i]);

    CONVERT_FLT_TO_UNSIGNED_FRACTION(from->gamma[i], &to->gainMapGammaN[i], &to->gainMapGammaD[i]);

    CONVERT_FLT_TO_SIGNED_FRACTION(from->offset_sdr[i], &to->baseOffsetN[i], &to->baseOffsetD[i]);

    CONVERT_FLT_TO_SIGNED_FRACTION(from->offset_hdr[i], &to->alternateOffsetN[i],
                                   &to->alternateOffsetD[i]);
  }

  if (isSingleChannel) {
    to->gainMapMaxN[2] = to->gainMapMaxN[1] = to->gainMapMaxN[0];
    to->gainMapMaxD[2] = to->gainMapMaxD[1] = to->gainMapMaxD[0];

    to->gainMapMinN[2] = to->gainMapMinN[1] = to->gainMapMinN[0];
    to->gainMapMinD[2] = to->gainMapMinD[1] = to->gainMapMinD[0];

    to->gainMapGammaN[2] = to->gainMapGammaN[1] = to->gainMapGammaN[0];
    to->gainMapGammaD[2] = to->gainMapGammaD[1] = to->gainMapGammaD[0];

    to->baseOffsetN[2] = to->baseOffsetN[1] = to->baseOffsetN[0];
    to->baseOffsetD[2] = to->baseOffsetD[1] = to->baseOffsetD[0];

    to->alternateOffsetN[2] = to->alternateOffsetN[1] = to->alternateOffsetN[0];
    to->alternateOffsetD[2] = to->alternateOffsetD[1] = to->alternateOffsetD[0];
  }

  CONVERT_FLT_TO_UNSIGNED_FRACTION(log2(from->hdr_capacity_min), &to->baseHdrHeadroomN,
                                   &to->baseHdrHeadroomD);

  CONVERT_FLT_TO_UNSIGNED_FRACTION(log2(from->hdr_capacity_max), &to->alternateHdrHeadroomN,
                                   &to->alternateHdrHeadroomD);

  return g_no_error;
}

}  // namespace ultrahdr
