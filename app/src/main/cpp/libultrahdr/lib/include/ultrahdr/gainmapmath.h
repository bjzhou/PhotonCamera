/*
 * Copyright 2022 The Android Open Source Project
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

#ifndef ULTRAHDR_GAINMAPMATH_H
#define ULTRAHDR_GAINMAPMATH_H

#include <array>
#include <cmath>
#include <cstring>
#include <functional>

#include "ultrahdr_api.h"
#include "ultrahdr/ultrahdrcommon.h"
#include "ultrahdr/jpegr.h"

#if (defined(UHDR_ENABLE_INTRINSICS) && (defined(__ARM_NEON__) || defined(__ARM_NEON)))
#include <arm_neon.h>
#endif

#define USE_SRGB_INVOETF_LUT 1
#define USE_HLG_OETF_LUT 1
#define USE_PQ_OETF_LUT 1
#define USE_HLG_INVOETF_LUT 1
#define USE_PQ_INVOETF_LUT 1
#define USE_APPLY_GAIN_LUT 1

#define CLIP3(x, min, max) ((x) < (min)) ? (min) : ((x) > (max)) ? (max) : (x)

namespace ultrahdr {

////////////////////////////////////////////////////////////////////////////////
// Framework

// nominal {SDR, HLG, PQ} peak display luminance
// This aligns with the suggested default reference diffuse white from ISO/TS 22028-5
// sdr white
static const float kSdrWhiteNits = 203.0f;
// hlg peak white. 75% of hlg peak white maps to reference diffuse white
static const float kHlgMaxNits = 1000.0f;
// pq peak white. 58% of pq peak white maps to reference diffuse white
static const float kPqMaxNits = 10000.0f;

float getReferenceDisplayPeakLuminanceInNits(uhdr_color_transfer_t transfer);

// Image pixel descriptor
struct Color {
  union {
    struct {
      float r;
      float g;
      float b;
    };
    struct {
      float y;
      float u;
      float v;
    };
  };
};

typedef Color (*ColorTransformFn)(Color);
typedef float (*LuminanceFn)(Color);
typedef Color (*SceneToDisplayLuminanceFn)(Color, LuminanceFn);
typedef Color (*GetPixelFn)(uhdr_raw_image_t*, size_t, size_t);
typedef Color (*SamplePixelFn)(uhdr_raw_image_t*, size_t, size_t, size_t);
typedef void (*PutPixelFn)(uhdr_raw_image_t*, size_t, size_t, Color&);

inline Color operator+=(Color& lhs, const Color& rhs) {
  lhs.r += rhs.r;
  lhs.g += rhs.g;
  lhs.b += rhs.b;
  return lhs;
}

inline Color operator-=(Color& lhs, const Color& rhs) {
  lhs.r -= rhs.r;
  lhs.g -= rhs.g;
  lhs.b -= rhs.b;
  return lhs;
}

inline Color operator+(const Color& lhs, const Color& rhs) {
  Color temp = lhs;
  return temp += rhs;
}

inline Color operator-(const Color& lhs, const Color& rhs) {
  Color temp = lhs;
  return temp -= rhs;
}

inline Color operator+=(Color& lhs, const float rhs) {
  lhs.r += rhs;
  lhs.g += rhs;
  lhs.b += rhs;
  return lhs;
}

inline Color operator-=(Color& lhs, const float rhs) {
  lhs.r -= rhs;
  lhs.g -= rhs;
  lhs.b -= rhs;
  return lhs;
}

inline Color operator*=(Color& lhs, const float rhs) {
  lhs.r *= rhs;
  lhs.g *= rhs;
  lhs.b *= rhs;
  return lhs;
}

inline Color operator/=(Color& lhs, const float rhs) {
  lhs.r /= rhs;
  lhs.g /= rhs;
  lhs.b /= rhs;
  return lhs;
}

inline Color operator+(const Color& lhs, const float rhs) {
  Color temp = lhs;
  return temp += rhs;
}

inline Color operator-(const Color& lhs, const float rhs) {
  Color temp = lhs;
  return temp -= rhs;
}

inline Color operator*(const Color& lhs, const float rhs) {
  Color temp = lhs;
  return temp *= rhs;
}

inline Color operator/(const Color& lhs, const float rhs) {
  Color temp = lhs;
  return temp /= rhs;
}

////////////////////////////////////////////////////////////////////////////////
// Float to Half and Half to Float conversions
union FloatUIntUnion {
  uint32_t mUInt;
  float mFloat;
};

// FIXME: The shift operations in this function are causing UBSAN (Undefined-shift) errors
// Precisely,
// runtime error: left shift of negative value -112
// runtime error : shift exponent 125 is too large for 32 - bit type 'uint32_t'(aka 'unsigned int')
// These need to be addressed. Until then, disable ubsan analysis for this function
UHDR_NO_SANITIZE_UNDEFINED
inline uint16_t floatToHalf(float f) {
  FloatUIntUnion floatUnion;
  floatUnion.mFloat = f;
  // round-to-nearest-even: add last bit after truncated mantissa
  const uint32_t b = floatUnion.mUInt + 0x00001000;

  const int32_t e = (b & 0x7F800000) >> 23;  // exponent
  const uint32_t m = b & 0x007FFFFF;         // mantissa

  // sign : normalized : denormalized : saturate
  return (b & 0x80000000) >> 16 | (e > 112) * ((((e - 112) << 10) & 0x7C00) | m >> 13) |
         ((e < 113) & (e > 101)) * ((((0x007FF000 + m) >> (125 - e)) + 1) >> 1) |
         (e > 143) * 0x7FFF;
}

// Taken from frameworks/base/libs/hwui/jni/android_graphics_ColorSpace.cpp

#if defined(__ANDROID__)  // __fp16 is not defined on non-Android builds
inline float halfToFloat(uint16_t bits) {
  __fp16 h;
  memcpy(&h, &bits, 2);
  return (float)h;
}
#else
// This is Skia's implementation of SkHalfToFloat, which is
// based on Fabien Giesen's half_to_float_fast2()
// see https://fgiesen.wordpress.com/2012/03/28/half-to-float-done-quic/
inline uint16_t halfMantissa(uint16_t h) { return h & 0x03ff; }

inline uint16_t halfExponent(uint16_t h) { return (h >> 10) & 0x001f; }

inline uint16_t halfSign(uint16_t h) { return h >> 15; }

inline float halfToFloat(uint16_t bits) {
  static const FloatUIntUnion magic = {126 << 23};
  FloatUIntUnion o;

  if (halfExponent(bits) == 0) {
    // Zero / Denormal
    o.mUInt = magic.mUInt + halfMantissa(bits);
    o.mFloat -= magic.mFloat;
  } else {
    // Set mantissa
    o.mUInt = halfMantissa(bits) << 13;
    // Set exponent
    if (halfExponent(bits) == 0x1f) {
      // Inf/NaN
      o.mUInt |= (255 << 23);
    } else {
      o.mUInt |= ((127 - 15 + halfExponent(bits)) << 23);
    }
  }

  // Set sign
  o.mUInt |= (halfSign(bits) << 31);
  return o.mFloat;
}
#endif  // defined(__ANDROID__)

////////////////////////////////////////////////////////////////////////////////
// Use Shepard's method for inverse distance weighting. For more information:
// en.wikipedia.org/wiki/Inverse_distance_weighting#Shepard's_method
struct ShepardsIDW {
  ShepardsIDW(int mapScaleFactor) : mMapScaleFactor{mapScaleFactor} {
    const int size = mMapScaleFactor * mMapScaleFactor * 4;
    mWeights = new float[size];
    mWeightsNR = new float[size];
    mWeightsNB = new float[size];
    mWeightsC = new float[size];
    fillShepardsIDW(mWeights, 1, 1);
    fillShepardsIDW(mWeightsNR, 0, 1);
    fillShepardsIDW(mWeightsNB, 1, 0);
    fillShepardsIDW(mWeightsC, 0, 0);
  }

  ~ShepardsIDW() {
    delete[] mWeights;
    delete[] mWeightsNR;
    delete[] mWeightsNB;
    delete[] mWeightsC;
  }

  int mMapScaleFactor;
  // curr, right, bottom, bottom-right are used during interpolation. hence table weight size is 4.
  float* mWeights;    // default
  float* mWeightsNR;  // no right
  float* mWeightsNB;  // no bottom
  float* mWeightsC;   // no right & bottom

  float euclideanDistance(float x1, float x2, float y1, float y2);
  void fillShepardsIDW(float* weights, int incR, int incB);
};

////////////////////////////////////////////////////////////////////////////////
// sRGB transformations.
// for all functions range in and out [0.0, 1.0]

// sRGB luminance
float srgbLuminance(Color e);

// sRGB rgb <-> yuv  conversion
Color srgbRgbToYuv(Color e_gamma);
Color srgbYuvToRgb(Color e_gamma);

// sRGB eotf
float srgbInvOetf(float e_gamma);
Color srgbInvOetf(Color e_gamma);
float srgbInvOetfLUT(float e_gamma);
Color srgbInvOetfLUT(Color e_gamma);

// sRGB oetf
float srgbOetf(float e);
Color srgbOetf(Color e);

constexpr int32_t kSrgbInvOETFPrecision = 10;
constexpr int32_t kSrgbInvOETFNumEntries = 1 << kSrgbInvOETFPrecision;

////////////////////////////////////////////////////////////////////////////////
// Display-P3 transformations
// for all functions range in and out [0.0, 1.0]

// DispP3 luminance
float p3Luminance(Color e);

// DispP3 rgb <-> yuv  conversion
Color p3RgbToYuv(Color e_gamma);
Color p3YuvToRgb(Color e_gamma);

////////////////////////////////////////////////////////////////////////////////
// BT.2100 transformations
// for all functions range in and out [0.0, 1.0]

// bt2100 luminance
float bt2100Luminance(Color e);

// bt2100 rgb <-> yuv  conversion
Color bt2100RgbToYuv(Color e_gamma);
Color bt2100YuvToRgb(Color e_gamma);

// hlg oetf (normalized)
float hlgOetf(float e);
Color hlgOetf(Color e);
float hlgOetfLUT(float e);
Color hlgOetfLUT(Color e);

constexpr int32_t kHlgOETFPrecision = 16;
constexpr int32_t kHlgOETFNumEntries = 1 << kHlgOETFPrecision;

// hlg inverse oetf (normalized)
float hlgInvOetf(float e_gamma);
Color hlgInvOetf(Color e_gamma);
float hlgInvOetfLUT(float e_gamma);
Color hlgInvOetfLUT(Color e_gamma);

constexpr int32_t kHlgInvOETFPrecision = 12;
constexpr int32_t kHlgInvOETFNumEntries = 1 << kHlgInvOETFPrecision;

// hlg ootf (normalized)
Color hlgOotf(Color e, LuminanceFn luminance);
Color hlgOotfApprox(Color e, [[maybe_unused]] LuminanceFn luminance);
inline Color identityOotf(Color e, [[maybe_unused]] LuminanceFn) { return e; }

// hlg inverse ootf (normalized)
Color hlgInverseOotf(Color e, LuminanceFn luminance);
Color hlgInverseOotfApprox(Color e);

// pq oetf
float pqOetf(float e);
Color pqOetf(Color e);
float pqOetfLUT(float e);
Color pqOetfLUT(Color e);

constexpr int32_t kPqOETFPrecision = 16;
constexpr int32_t kPqOETFNumEntries = 1 << kPqOETFPrecision;

// pq inverse oetf
float pqInvOetf(float e_gamma);
Color pqInvOetf(Color e_gamma);
float pqInvOetfLUT(float e_gamma);
Color pqInvOetfLUT(Color e_gamma);

constexpr int32_t kPqInvOETFPrecision = 12;
constexpr int32_t kPqInvOETFNumEntries = 1 << kPqInvOETFPrecision;

// util class to prepare look up tables for oetf/eotf functions
class LookUpTable {
 public:
  LookUpTable(size_t numEntries, std::function<float(float)> computeFunc) {
    for (size_t idx = 0; idx < numEntries; idx++) {
      float value = static_cast<float>(idx) / static_cast<float>(numEntries - 1);
      table.push_back(computeFunc(value));
    }
  }
  const std::vector<float>& getTable() const { return table; }

 private:
  std::vector<float> table;
};

////////////////////////////////////////////////////////////////////////////////
// Color access functions

// Get pixel from the image at the provided location.
Color getYuv444Pixel(uhdr_raw_image_t* image, size_t x, size_t y);
Color getYuv422Pixel(uhdr_raw_image_t* image, size_t x, size_t y);
Color getYuv420Pixel(uhdr_raw_image_t* image, size_t x, size_t y);
Color getYuv400Pixel(uhdr_raw_image_t* image, size_t x, size_t y);
Color getP010Pixel(uhdr_raw_image_t* image, size_t x, size_t y);
Color getYuv444Pixel10bit(uhdr_raw_image_t* image, size_t x, size_t y);
Color getRgb888Pixel(uhdr_raw_image_t* image, size_t x, size_t y);
Color getRgba8888Pixel(uhdr_raw_image_t* image, size_t x, size_t y);
Color getRgba1010102Pixel(uhdr_raw_image_t* image, size_t x, size_t y);
Color getRgbaF16Pixel(uhdr_raw_image_t* image, size_t x, size_t y);

// Sample the image at the provided location, with a weighting based on nearby pixels and the map
// scale factor.
Color sampleYuv444(uhdr_raw_image_t* map, size_t map_scale_factor, size_t x, size_t y);
Color sampleYuv422(uhdr_raw_image_t* map, size_t map_scale_factor, size_t x, size_t y);
Color sampleYuv420(uhdr_raw_image_t* map, size_t map_scale_factor, size_t x, size_t y);
Color sampleP010(uhdr_raw_image_t* map, size_t map_scale_factor, size_t x, size_t y);
Color sampleYuv44410bit(uhdr_raw_image_t* image, size_t map_scale_factor, size_t x, size_t y);
Color sampleRgba8888(uhdr_raw_image_t* image, size_t map_scale_factor, size_t x, size_t y);
Color sampleRgba1010102(uhdr_raw_image_t* image, size_t map_scale_factor, size_t x, size_t y);
Color sampleRgbaF16(uhdr_raw_image_t* image, size_t map_scale_factor, size_t x, size_t y);

// Put pixel in the image at the provided location.
void putRgba8888Pixel(uhdr_raw_image_t* image, size_t x, size_t y, Color& pixel);
void putRgb888Pixel(uhdr_raw_image_t* image, size_t x, size_t y, Color& pixel);
void putYuv400Pixel(uhdr_raw_image_t* image, size_t x, size_t y, Color& pixel);
void putYuv444Pixel(uhdr_raw_image_t* image, size_t x, size_t y, Color& pixel);

////////////////////////////////////////////////////////////////////////////////
// Color space conversions

// color gamut conversion (rgb) functions
extern const std::array<float, 9> kBt709ToP3;
extern const std::array<float, 9> kBt709ToBt2100;
extern const std::array<float, 9> kP3ToBt709;
extern const std::array<float, 9> kP3ToBt2100;
extern const std::array<float, 9> kBt2100ToBt709;
extern const std::array<float, 9> kBt2100ToP3;

inline Color identityConversion(Color e) { return e; }
Color bt709ToP3(Color e);
Color bt709ToBt2100(Color e);
Color p3ToBt709(Color e);
Color p3ToBt2100(Color e);
Color bt2100ToBt709(Color e);
Color bt2100ToP3(Color e);

// convert between yuv encodings
extern const std::array<float, 9> kYuvBt709ToBt601;
extern const std::array<float, 9> kYuvBt709ToBt2100;
extern const std::array<float, 9> kYuvBt601ToBt709;
extern const std::array<float, 9> kYuvBt601ToBt2100;
extern const std::array<float, 9> kYuvBt2100ToBt709;
extern const std::array<float, 9> kYuvBt2100ToBt601;

#if (defined(UHDR_ENABLE_INTRINSICS) && (defined(__ARM_NEON__) || defined(__ARM_NEON)))

extern const int16_t kYuv709To601_coeffs_neon[8];
extern const int16_t kYuv709To2100_coeffs_neon[8];
extern const int16_t kYuv601To709_coeffs_neon[8];
extern const int16_t kYuv601To2100_coeffs_neon[8];
extern const int16_t kYuv2100To709_coeffs_neon[8];
extern const int16_t kYuv2100To601_coeffs_neon[8];

/*
 * The Y values are provided at half the width of U & V values to allow use of the widening
 * arithmetic instructions.
 */
int16x8x3_t yuvConversion_neon(uint8x8_t y, int16x8_t u, int16x8_t v, int16x8_t coeffs);

void transformYuv420_neon(uhdr_raw_image_t* image, const int16_t* coeffs_ptr);

void transformYuv444_neon(uhdr_raw_image_t* image, const int16_t* coeffs_ptr);

uhdr_error_info_t convertYuv_neon(uhdr_raw_image_t* image, uhdr_color_gamut_t src_encoding,
                                  uhdr_color_gamut_t dst_encoding);
#endif

// Performs a color gamut transformation on an yuv image.
Color yuvColorGamutConversion(Color e_gamma, const std::array<float, 9>& coeffs);
void transformYuv420(uhdr_raw_image_t* image, const std::array<float, 9>& coeffs);
void transformYuv444(uhdr_raw_image_t* image, const std::array<float, 9>& coeffs);

////////////////////////////////////////////////////////////////////////////////
// Gain map calculations

constexpr int32_t kGainFactorPrecision = 10;
constexpr int32_t kGainFactorNumEntries = 1 << kGainFactorPrecision;

struct GainLUT {
  GainLUT(uhdr_gainmap_metadata_ext_t* metadata, float gainmapWeight) {
    bool isSingleChannel = metadata->are_all_channels_identical();
    for (int i = 0; i < (isSingleChannel ? 1 : 3); i++) {
      mGainTable[i] = memory[i] = new float[kGainFactorNumEntries];
      this->mGammaInv[i] = 1.0f / metadata->gamma[i];
      for (int32_t idx = 0; idx < kGainFactorNumEntries; idx++) {
        float value = static_cast<float>(idx) / static_cast<float>(kGainFactorNumEntries - 1);
        float logBoost = log2(metadata->min_content_boost[i]) * (1.0f - value) +
                         log2(metadata->max_content_boost[i]) * value;
        mGainTable[i][idx] = exp2(logBoost * gainmapWeight);
      }
    }
    if (isSingleChannel) {
      memory[1] = memory[2] = nullptr;
      mGammaInv[1] = mGammaInv[2] = mGammaInv[0];
      mGainTable[1] = mGainTable[2] = mGainTable[0];
    }
  }

  GainLUT(uhdr_gainmap_metadata_ext_t* metadata) : GainLUT(metadata, 1.0f) {}

  ~GainLUT() {
    for (int i = 0; i < 3; i++) {
      if (memory[i]) {
        delete[] memory[i];
        memory[i] = nullptr;
      }
    }
  }

  float getGainFactor(float gain, int index) {
    if (mGammaInv[index] != 1.0f) gain = pow(gain, mGammaInv[index]);
    int32_t idx = static_cast<int32_t>(gain * (kGainFactorNumEntries - 1) + 0.5);
    // TODO() : Remove once conversion modules have appropriate clamping in place
    idx = CLIP3(idx, 0, kGainFactorNumEntries - 1);
    return mGainTable[index][idx];
  }

 private:
  float* memory[3]{};
  float* mGainTable[3]{};
  float mGammaInv[3]{};
};

/*
 * Calculate the 8-bit unsigned integer gain value for the given SDR and HDR
 * luminances in linear space and gainmap metadata fields.
 */
uint8_t encodeGain(float y_sdr, float y_hdr, uhdr_gainmap_metadata_ext_t* metadata, int index);
uint8_t encodeGain(float y_sdr, float y_hdr, uhdr_gainmap_metadata_ext_t* metadata,
                   float log2MinContentBoost, float log2MaxContentBoost, int index);
float computeGain(float sdr, float hdr);
uint8_t affineMapGain(float gainlog2, float mingainlog2, float maxgainlog2, float gamma);

/*
 * Calculates the linear luminance in nits after applying the given gain
 * value, with the given hdr ratio, to the given sdr input in the range [0, 1].
 */
Color applyGain(Color e, float gain, uhdr_gainmap_metadata_ext_t* metadata);
Color applyGain(Color e, float gain, uhdr_gainmap_metadata_ext_t* metadata, float gainmapWeight);
Color applyGainLUT(Color e, float gain, GainLUT& gainLUT, uhdr_gainmap_metadata_ext_t* metadata);

/*
 * Apply gain in R, G and B channels, with the given hdr ratio, to the given sdr input
 * in the range [0, 1].
 */
Color applyGain(Color e, Color gain, uhdr_gainmap_metadata_ext_t* metadata);
Color applyGain(Color e, Color gain, uhdr_gainmap_metadata_ext_t* metadata, float gainmapWeight);
Color applyGainLUT(Color e, Color gain, GainLUT& gainLUT, uhdr_gainmap_metadata_ext_t* metadata);

/*
 * Sample the gain value for the map from a given x,y coordinate on a scale
 * that is map scale factor larger than the map size.
 */
float sampleMap(uhdr_raw_image_t* map, float map_scale_factor, size_t x, size_t y);
float sampleMap(uhdr_raw_image_t* map, size_t map_scale_factor, size_t x, size_t y,
                ShepardsIDW& weightTables);
Color sampleMap3Channel(uhdr_raw_image_t* map, float map_scale_factor, size_t x, size_t y,
                        bool has_alpha);
Color sampleMap3Channel(uhdr_raw_image_t* map, size_t map_scale_factor, size_t x, size_t y,
                        ShepardsIDW& weightTables, bool has_alpha);

////////////////////////////////////////////////////////////////////////////////
// function selectors

ColorTransformFn getGamutConversionFn(uhdr_color_gamut_t dst_gamut, uhdr_color_gamut_t src_gamut);
ColorTransformFn getYuvToRgbFn(uhdr_color_gamut_t gamut);
LuminanceFn getLuminanceFn(uhdr_color_gamut_t gamut);
ColorTransformFn getInverseOetfFn(uhdr_color_transfer_t transfer);
SceneToDisplayLuminanceFn getOotfFn(uhdr_color_transfer_t transfer);
GetPixelFn getPixelFn(uhdr_img_fmt_t format);
SamplePixelFn getSamplePixelFn(uhdr_img_fmt_t format);
PutPixelFn putPixelFn(uhdr_img_fmt_t format);

////////////////////////////////////////////////////////////////////////////////
// common utils
static const float kHdrOffset = 1e-7f;
static const float kSdrOffset = 1e-7f;

static inline float clipNegatives(float value) { return (value < 0.0f) ? 0.0f : value; }

static inline Color clipNegatives(Color e) {
  return {{{clipNegatives(e.r), clipNegatives(e.g), clipNegatives(e.b)}}};
}

// maximum limit of normalized pixel value in float representation
static const float kMaxPixelFloat = 1.0f;

static inline float clampPixelFloat(float value) {
  return (value < 0.0f) ? 0.0f : (value > kMaxPixelFloat) ? kMaxPixelFloat : value;
}

static inline Color clampPixelFloat(Color e) {
  return {{{clampPixelFloat(e.r), clampPixelFloat(e.g), clampPixelFloat(e.b)}}};
}

// maximum limit of pixel value for linear hdr intent raw resource
static const float kMaxPixelFloatHdrLinear = 10000.0f / 203.0f;

static inline float clampPixelFloatLinear(float value) {
  return CLIP3(value, 0.0f, kMaxPixelFloatHdrLinear);
}

static inline Color clampPixelFloatLinear(Color e) {
  return {{{clampPixelFloatLinear(e.r), clampPixelFloatLinear(e.g), clampPixelFloatLinear(e.b)}}};
}

static float mapNonFiniteFloats(float val) {
  if (std::isinf(val)) {
    return val > 0 ? kMaxPixelFloatHdrLinear : 0.0f;
  }
  // nan
  return 0.0f;
}

static inline Color sanitizePixel(Color e) {
  float r = std::isfinite(e.r) ? clampPixelFloatLinear(e.r) : mapNonFiniteFloats(e.r);
  float g = std::isfinite(e.g) ? clampPixelFloatLinear(e.g) : mapNonFiniteFloats(e.g);
  float b = std::isfinite(e.b) ? clampPixelFloatLinear(e.b) : mapNonFiniteFloats(e.b);
  return {{{r, g, b}}};
}

bool isPixelFormatRgb(uhdr_img_fmt_t format);

uint32_t colorToRgba1010102(Color e_gamma);
uint64_t colorToRgbaF16(Color e_gamma);

std::unique_ptr<uhdr_raw_image_ext_t> copy_raw_image(uhdr_raw_image_t* src);

uhdr_error_info_t copy_raw_image(uhdr_raw_image_t* src, uhdr_raw_image_t* dst);

std::unique_ptr<uhdr_raw_image_ext_t> convert_raw_input_to_ycbcr(
    uhdr_raw_image_t* src, bool chroma_sampling_enabled = false);

#if (defined(UHDR_ENABLE_INTRINSICS) && (defined(__ARM_NEON__) || defined(__ARM_NEON)))
std::unique_ptr<uhdr_raw_image_ext_t> convert_raw_input_to_ycbcr_neon(uhdr_raw_image_t* src);
#endif

bool floatToSignedFraction(float v, int32_t* numerator, uint32_t* denominator);
bool floatToUnsignedFraction(float v, uint32_t* numerator, uint32_t* denominator);

}  // namespace ultrahdr

#endif  // ULTRAHDR_GAINMAPMATH_H
