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

#include "ultrahdr/gainmapmath.h"

#include <arm_neon.h>
#include <cassert>

#ifdef _MSC_VER
#define ALIGNED(x) __declspec(align(x))
#else
#define ALIGNED(x) __attribute__((aligned(x)))
#endif

namespace ultrahdr {

// Scale all coefficients by 2^14 to avoid needing floating-point arithmetic. This can cause an off
// by one error compared to the scalar floating-point implementation.

// Removing conversion coefficients 1 and 0 from the group for each standard leaves 6 coefficients.
// Pack them into a single 128-bit vector as follows, zeroing the remaining elements:
// {Y1, Y2, U1, U2, V1, V2, 0, 0}

// Yuv Bt709 -> Yuv Bt601
// Y' = (1.0f * Y) + ( 0.101579f * U) + ( 0.196076f * V)
// U' = (0.0f * Y) + ( 0.989854f * U) + (-0.110653f * V)
// V' = (0.0f * Y) + (-0.072453f * U) + ( 0.983398f * V)
ALIGNED(16)
const int16_t kYuv709To601_coeffs_neon[8] = {1664, 3213, 16218, -1813, -1187, 16112, 0, 0};

// Yuv Bt709 -> Yuv Bt2100
// Y' = (1.0f * Y) + (-0.016969f * U) + ( 0.096312f * V)
// U' = (0.0f * Y) + ( 0.995306f * U) + (-0.051192f * V)
// V' = (0.0f * Y) + ( 0.011507f * U) + ( 1.002637f * V)
ALIGNED(16)
const int16_t kYuv709To2100_coeffs_neon[8] = {-278, 1578, 16307, -839, 189, 16427, 0, 0};

// Yuv Bt601 -> Yuv Bt709
// Y' = (1.0f * Y) + (-0.118188f * U) + (-0.212685f * V),
// U' = (0.0f * Y) + ( 1.018640f * U) + ( 0.114618f * V),
// V' = (0.0f * Y) + ( 0.075049f * U) + ( 1.025327f * V);
ALIGNED(16)
const int16_t kYuv601To709_coeffs_neon[8] = {-1936, -3485, 16689, 1878, 1230, 16799, 0, 0};

// Yuv Bt601 -> Yuv Bt2100
// Y' = (1.0f * Y) + (-0.128245f * U) + (-0.115879f * V)
// U' = (0.0f * Y) + ( 1.010016f * U) + ( 0.061592f * V)
// V' = (0.0f * Y) + ( 0.086969f * U) + ( 1.029350f * V)
ALIGNED(16)
const int16_t kYuv601To2100_coeffs_neon[8] = {-2101, -1899, 16548, 1009, 1425, 16865, 0, 0};

// Yuv Bt2100 -> Yuv Bt709
// Y' = (1.0f * Y) + ( 0.018149f * U) + (-0.095132f * V)
// U' = (0.0f * Y) + ( 1.004123f * U) + ( 0.051267f * V)
// V' = (0.0f * Y) + (-0.011524f * U) + ( 0.996782f * V)
ALIGNED(16)
const int16_t kYuv2100To709_coeffs_neon[8] = {297, -1559, 16452, 840, -189, 16331, 0, 0};

// Yuv Bt2100 -> Yuv Bt601
// Y' = (1.0f * Y) + ( 0.117887f * U) + ( 0.105521f * V)
// U' = (0.0f * Y) + ( 0.995211f * U) + (-0.059549f * V)
// V' = (0.0f * Y) + (-0.084085f * U) + ( 0.976518f * V)
ALIGNED(16)
const int16_t kYuv2100To601_coeffs_neon[8] = {1931, 1729, 16306, -976, -1378, 15999, 0, 0};

static inline int16x8_t yConversion_neon(uint8x8_t y, int16x8_t u, int16x8_t v, int16x8_t coeffs) {
  int32x4_t lo = vmull_lane_s16(vget_low_s16(u), vget_low_s16(coeffs), 0);
  int32x4_t hi = vmull_lane_s16(vget_high_s16(u), vget_low_s16(coeffs), 0);
  lo = vmlal_lane_s16(lo, vget_low_s16(v), vget_low_s16(coeffs), 1);
  hi = vmlal_lane_s16(hi, vget_high_s16(v), vget_low_s16(coeffs), 1);

  // Descale result to account for coefficients being scaled by 2^14.
  uint16x8_t y_output =
      vreinterpretq_u16_s16(vcombine_s16(vqrshrn_n_s32(lo, 14), vqrshrn_n_s32(hi, 14)));
  return vreinterpretq_s16_u16(vaddw_u8(y_output, y));
}

static inline int16x8_t uConversion_neon(int16x8_t u, int16x8_t v, int16x8_t coeffs) {
  int32x4_t u_lo = vmull_lane_s16(vget_low_s16(u), vget_low_s16(coeffs), 2);
  int32x4_t u_hi = vmull_lane_s16(vget_high_s16(u), vget_low_s16(coeffs), 2);
  u_lo = vmlal_lane_s16(u_lo, vget_low_s16(v), vget_low_s16(coeffs), 3);
  u_hi = vmlal_lane_s16(u_hi, vget_high_s16(v), vget_low_s16(coeffs), 3);

  // Descale result to account for coefficients being scaled by 2^14.
  const int16x8_t u_output = vcombine_s16(vqrshrn_n_s32(u_lo, 14), vqrshrn_n_s32(u_hi, 14));
  return u_output;
}

static inline int16x8_t vConversion_neon(int16x8_t u, int16x8_t v, int16x8_t coeffs) {
  int32x4_t v_lo = vmull_lane_s16(vget_low_s16(u), vget_high_s16(coeffs), 0);
  int32x4_t v_hi = vmull_lane_s16(vget_high_s16(u), vget_high_s16(coeffs), 0);
  v_lo = vmlal_lane_s16(v_lo, vget_low_s16(v), vget_high_s16(coeffs), 1);
  v_hi = vmlal_lane_s16(v_hi, vget_high_s16(v), vget_high_s16(coeffs), 1);

  // Descale result to account for coefficients being scaled by 2^14.
  const int16x8_t v_output = vcombine_s16(vqrshrn_n_s32(v_lo, 14), vqrshrn_n_s32(v_hi, 14));
  return v_output;
}

int16x8x3_t yuvConversion_neon(uint8x8_t y, int16x8_t u, int16x8_t v, int16x8_t coeffs) {
  const int16x8_t y_output = yConversion_neon(y, u, v, coeffs);
  const int16x8_t u_output = uConversion_neon(u, v, coeffs);
  const int16x8_t v_output = vConversion_neon(u, v, coeffs);
  return {y_output, u_output, v_output};
}

void transformYuv420_neon(uhdr_raw_image_t* image, const int16_t* coeffs_ptr) {
  // Implementation assumes image buffer is multiple of 16.
  assert(image->w % 16 == 0);
  uint8_t* y0_ptr = static_cast<uint8_t*>(image->planes[UHDR_PLANE_Y]);
  uint8_t* y1_ptr = y0_ptr + image->stride[UHDR_PLANE_Y];
  uint8_t* u_ptr = static_cast<uint8_t*>(image->planes[UHDR_PLANE_U]);
  uint8_t* v_ptr = static_cast<uint8_t*>(image->planes[UHDR_PLANE_V]);

  const int16x8_t coeffs = vld1q_s16(coeffs_ptr);
  const uint16x8_t uv_bias = vreinterpretq_u16_s16(vdupq_n_s16(-128));
  size_t h = 0;
  do {
    size_t w = 0;
    do {
      uint8x16_t y0 = vld1q_u8(y0_ptr + w * 2);
      uint8x16_t y1 = vld1q_u8(y1_ptr + w * 2);
      uint8x8_t u = vld1_u8(u_ptr + w);
      uint8x8_t v = vld1_u8(v_ptr + w);

      // 128 bias for UV given we are using libjpeg; see:
      // https://github.com/kornelski/libjpeg/blob/master/structure.doc
      int16x8_t u_wide_s16 = vreinterpretq_s16_u16(vaddw_u8(uv_bias, u));  // -128 + u
      int16x8_t v_wide_s16 = vreinterpretq_s16_u16(vaddw_u8(uv_bias, v));  // -128 + v

      const int16x8_t u_wide_lo = vzipq_s16(u_wide_s16, u_wide_s16).val[0];
      const int16x8_t u_wide_hi = vzipq_s16(u_wide_s16, u_wide_s16).val[1];
      const int16x8_t v_wide_lo = vzipq_s16(v_wide_s16, v_wide_s16).val[0];
      const int16x8_t v_wide_hi = vzipq_s16(v_wide_s16, v_wide_s16).val[1];

      const int16x8_t y0_lo = yConversion_neon(vget_low_u8(y0), u_wide_lo, v_wide_lo, coeffs);
      const int16x8_t y0_hi = yConversion_neon(vget_high_u8(y0), u_wide_hi, v_wide_hi, coeffs);
      const int16x8_t y1_lo = yConversion_neon(vget_low_u8(y1), u_wide_lo, v_wide_lo, coeffs);
      const int16x8_t y1_hi = yConversion_neon(vget_high_u8(y1), u_wide_hi, v_wide_hi, coeffs);

      const int16x8_t new_u = uConversion_neon(u_wide_s16, v_wide_s16, coeffs);
      const int16x8_t new_v = vConversion_neon(u_wide_s16, v_wide_s16, coeffs);

      // Narrow from 16-bit to 8-bit with saturation.
      const uint8x16_t y0_output = vcombine_u8(vqmovun_s16(y0_lo), vqmovun_s16(y0_hi));
      const uint8x16_t y1_output = vcombine_u8(vqmovun_s16(y1_lo), vqmovun_s16(y1_hi));
      const uint8x8_t u_output = vqmovun_s16(vaddq_s16(new_u, vdupq_n_s16(128)));
      const uint8x8_t v_output = vqmovun_s16(vaddq_s16(new_v, vdupq_n_s16(128)));

      vst1q_u8(y0_ptr + w * 2, y0_output);
      vst1q_u8(y1_ptr + w * 2, y1_output);
      vst1_u8(u_ptr + w, u_output);
      vst1_u8(v_ptr + w, v_output);

      w += 8;
    } while (w < image->w / 2);
    y0_ptr += image->stride[UHDR_PLANE_Y] * 2;
    y1_ptr += image->stride[UHDR_PLANE_Y] * 2;
    u_ptr += image->stride[UHDR_PLANE_U];
    v_ptr += image->stride[UHDR_PLANE_V];
  } while (++h < image->h / 2);
}

void transformYuv444_neon(uhdr_raw_image_t* image, const int16_t* coeffs_ptr) {
  // Implementation assumes image buffer is multiple of 16.
  assert(image->w % 16 == 0);
  uint8_t* y_ptr = static_cast<uint8_t*>(image->planes[UHDR_PLANE_Y]);
  uint8_t* u_ptr = static_cast<uint8_t*>(image->planes[UHDR_PLANE_U]);
  uint8_t* v_ptr = static_cast<uint8_t*>(image->planes[UHDR_PLANE_V]);

  const int16x8_t coeffs = vld1q_s16(coeffs_ptr);
  const uint16x8_t uv_bias = vreinterpretq_u16_s16(vdupq_n_s16(-128));
  size_t h = 0;
  do {
    size_t w = 0;
    do {
      uint8x16_t y = vld1q_u8(y_ptr + w);
      uint8x16_t u = vld1q_u8(u_ptr + w);
      uint8x16_t v = vld1q_u8(v_ptr + w);

      // 128 bias for UV given we are using libjpeg; see:
      // https://github.com/kornelski/libjpeg/blob/master/structure.doc
      int16x8_t u_wide_low_s16 =
          vreinterpretq_s16_u16(vaddw_u8(uv_bias, vget_low_u8(u)));  // -128 + u
      int16x8_t v_wide_low_s16 =
          vreinterpretq_s16_u16(vaddw_u8(uv_bias, vget_low_u8(v)));  // -128 + v
      int16x8_t u_wide_high_s16 =
          vreinterpretq_s16_u16(vaddw_u8(uv_bias, vget_high_u8(u)));  // -128 + u
      int16x8_t v_wide_high_s16 =
          vreinterpretq_s16_u16(vaddw_u8(uv_bias, vget_high_u8(v)));  // -128 + v

      const int16x8_t y_lo =
          yConversion_neon(vget_low_u8(y), u_wide_low_s16, v_wide_low_s16, coeffs);
      const int16x8_t y_hi =
          yConversion_neon(vget_high_u8(y), u_wide_high_s16, v_wide_high_s16, coeffs);

      const int16x8_t new_u_lo = uConversion_neon(u_wide_low_s16, v_wide_low_s16, coeffs);
      const int16x8_t new_v_lo = vConversion_neon(u_wide_low_s16, v_wide_low_s16, coeffs);
      const int16x8_t new_u_hi = uConversion_neon(u_wide_high_s16, v_wide_high_s16, coeffs);
      const int16x8_t new_v_hi = vConversion_neon(u_wide_high_s16, v_wide_high_s16, coeffs);

      // Narrow from 16-bit to 8-bit with saturation.
      const uint8x16_t y_output = vcombine_u8(vqmovun_s16(y_lo), vqmovun_s16(y_hi));
      const uint8x8_t u_output_lo = vqmovun_s16(vaddq_s16(new_u_lo, vdupq_n_s16(128)));
      const uint8x8_t u_output_hi = vqmovun_s16(vaddq_s16(new_u_hi, vdupq_n_s16(128)));
      const uint8x8_t v_output_lo = vqmovun_s16(vaddq_s16(new_v_lo, vdupq_n_s16(128)));
      const uint8x8_t v_output_hi = vqmovun_s16(vaddq_s16(new_v_hi, vdupq_n_s16(128)));
      const uint8x16_t u_output = vcombine_u8(u_output_lo, u_output_hi);
      const uint8x16_t v_output = vcombine_u8(v_output_lo, v_output_hi);

      vst1q_u8(y_ptr + w, y_output);
      vst1q_u8(u_ptr + w, u_output);
      vst1q_u8(v_ptr + w, v_output);

      w += 16;
    } while (w < image->w);
    y_ptr += image->stride[UHDR_PLANE_Y];
    u_ptr += image->stride[UHDR_PLANE_U];
    v_ptr += image->stride[UHDR_PLANE_V];
  } while (++h < image->h);
}

uhdr_error_info_t convertYuv_neon(uhdr_raw_image_t* image, uhdr_color_gamut_t src_encoding,
                                  uhdr_color_gamut_t dst_encoding) {
  uhdr_error_info_t status = g_no_error;
  const int16_t* coeffs = nullptr;

  switch (src_encoding) {
    case UHDR_CG_BT_709:
      switch (dst_encoding) {
        case UHDR_CG_BT_709:
          return status;
        case UHDR_CG_DISPLAY_P3:
          coeffs = kYuv709To601_coeffs_neon;
          break;
        case UHDR_CG_BT_2100:
          coeffs = kYuv709To2100_coeffs_neon;
          break;
        default:
          status.error_code = UHDR_CODEC_INVALID_PARAM;
          status.has_detail = 1;
          snprintf(status.detail, sizeof status.detail, "Unrecognized dest color gamut %d",
                   dst_encoding);
          return status;
      }
      break;
    case UHDR_CG_DISPLAY_P3:
      switch (dst_encoding) {
        case UHDR_CG_BT_709:
          coeffs = kYuv601To709_coeffs_neon;
          break;
        case UHDR_CG_DISPLAY_P3:
          return status;
        case UHDR_CG_BT_2100:
          coeffs = kYuv601To2100_coeffs_neon;
          break;
        default:
          status.error_code = UHDR_CODEC_INVALID_PARAM;
          status.has_detail = 1;
          snprintf(status.detail, sizeof status.detail, "Unrecognized dest color gamut %d",
                   dst_encoding);
          return status;
      }
      break;
    case UHDR_CG_BT_2100:
      switch (dst_encoding) {
        case UHDR_CG_BT_709:
          coeffs = kYuv2100To709_coeffs_neon;
          break;
        case UHDR_CG_DISPLAY_P3:
          coeffs = kYuv2100To601_coeffs_neon;
          break;
        case UHDR_CG_BT_2100:
          return status;
        default:
          status.error_code = UHDR_CODEC_INVALID_PARAM;
          status.has_detail = 1;
          snprintf(status.detail, sizeof status.detail, "Unrecognized dest color gamut %d",
                   dst_encoding);
          return status;
      }
      break;
    default:
      status.error_code = UHDR_CODEC_INVALID_PARAM;
      status.has_detail = 1;
      snprintf(status.detail, sizeof status.detail, "Unrecognized src color gamut %d",
               src_encoding);
      return status;
  }

  if (image->fmt == UHDR_IMG_FMT_12bppYCbCr420) {
    transformYuv420_neon(image, coeffs);
  } else if (image->fmt == UHDR_IMG_FMT_24bppYCbCr444) {
    transformYuv444_neon(image, coeffs);
  } else {
    status.error_code = UHDR_CODEC_UNSUPPORTED_FEATURE;
    status.has_detail = 1;
    snprintf(status.detail, sizeof status.detail,
             "No implementation available for performing gamut conversion for color format %d",
             image->fmt);
    return status;
  }

  return status;
}

// Scale all coefficients by 2^14 to avoid needing floating-point arithmetic. This can cause an off
// by one error compared to the scalar floating-point implementation.

// In the 3x3 conversion matrix, 0.5 is duplicated. But represented as only one entry in lut leaving
// with an array size of 8 elements.

// RGB Bt709 -> Yuv Bt709
// Y = 0.212639 * R + 0.715169 * G + 0.072192 * B
// U = -0.114592135 * R + -0.385407865 * G + 0.5 * B
// V = 0.5 * R + -0.454155718 * G + -0.045844282 * B
ALIGNED(16)
const uint16_t kRgb709ToYuv_coeffs_neon[8] = {3484, 11717, 1183, 1877, 6315, 8192, 7441, 751};

// RGB Display P3 -> Yuv Display P3
// Y = 0.2289746 * R + 0.6917385 * G + 0.0792869 * B
// U = -0.124346335 * R + -0.375653665 * G + 0.5 * B
// V = 0.5 * R + -0.448583471 * G + -0.051416529 * B
ALIGNED(16)
const uint16_t kRgbDispP3ToYuv_coeffs_neon[8] = {3752, 11333, 1299, 2037, 6155, 8192, 7350, 842};

// RGB Bt2100 -> Yuv Bt2100
// Y = 0.2627 * R + 0.677998 * G + 0.059302 * B
// U = -0.13963036 * R + -0.36036964 * G + 0.5 * B
// V = 0.5 * R + -0.459784348 * G + -0.040215652 * B
ALIGNED(16)
const uint16_t kRgb2100ToYuv_coeffs_neon[8] = {4304, 11108, 972, 2288, 5904, 8192, 7533, 659};

// The core logic is taken from jsimd_rgb_ycc_convert_neon implementation in jccolext-neon.c of
// libjpeg-turbo
static void ConvertRgba8888ToYuv444_neon(uhdr_raw_image_t* src, uhdr_raw_image_t* dst,
                                         const uint16_t* coeffs_ptr) {
  // Implementation processes 16 pixel per iteration.
  assert(src->stride[UHDR_PLANE_PACKED] % 16 == 0);
  uint8_t* rgba_base_ptr = static_cast<uint8_t*>(src->planes[UHDR_PLANE_PACKED]);

  uint8_t* y_base_ptr = static_cast<uint8_t*>(dst->planes[UHDR_PLANE_Y]);
  uint8_t* u_base_ptr = static_cast<uint8_t*>(dst->planes[UHDR_PLANE_U]);
  uint8_t* v_base_ptr = static_cast<uint8_t*>(dst->planes[UHDR_PLANE_V]);

  const uint16x8_t coeffs = vld1q_u16(coeffs_ptr);
  const uint32x4_t bias = vdupq_n_u32((128 << 14) + 8191);

  unsigned int h = 0;
  do {
    unsigned int w = 0;
    uint8_t* rgba_ptr = rgba_base_ptr + (size_t)src->stride[UHDR_PLANE_PACKED] * 4 * h;
    uint8_t* y_ptr = y_base_ptr + (size_t)dst->stride[UHDR_PLANE_Y] * h;
    uint8_t* u_ptr = u_base_ptr + (size_t)dst->stride[UHDR_PLANE_U] * h;
    uint8_t* v_ptr = v_base_ptr + (size_t)dst->stride[UHDR_PLANE_V] * h;
    do {
      uint8x16x4_t rgb_pixels = vld4q_u8(rgba_ptr);

      uint16x8_t r_l = vmovl_u8(vget_low_u8(rgb_pixels.val[0]));
      uint16x8_t g_l = vmovl_u8(vget_low_u8(rgb_pixels.val[1]));
      uint16x8_t b_l = vmovl_u8(vget_low_u8(rgb_pixels.val[2]));
      uint16x8_t r_h = vmovl_u8(vget_high_u8(rgb_pixels.val[0]));
      uint16x8_t g_h = vmovl_u8(vget_high_u8(rgb_pixels.val[1]));
      uint16x8_t b_h = vmovl_u8(vget_high_u8(rgb_pixels.val[2]));

      /* Compute Y */
      uint32x4_t y_ll = vmull_lane_u16(vget_low_u16(r_l), vget_low_u16(coeffs), 0);
      y_ll = vmlal_lane_u16(y_ll, vget_low_u16(g_l), vget_low_u16(coeffs), 1);
      y_ll = vmlal_lane_u16(y_ll, vget_low_u16(b_l), vget_low_u16(coeffs), 2);
      uint32x4_t y_lh = vmull_lane_u16(vget_high_u16(r_l), vget_low_u16(coeffs), 0);
      y_lh = vmlal_lane_u16(y_lh, vget_high_u16(g_l), vget_low_u16(coeffs), 1);
      y_lh = vmlal_lane_u16(y_lh, vget_high_u16(b_l), vget_low_u16(coeffs), 2);
      uint32x4_t y_hl = vmull_lane_u16(vget_low_u16(r_h), vget_low_u16(coeffs), 0);
      y_hl = vmlal_lane_u16(y_hl, vget_low_u16(g_h), vget_low_u16(coeffs), 1);
      y_hl = vmlal_lane_u16(y_hl, vget_low_u16(b_h), vget_low_u16(coeffs), 2);
      uint32x4_t y_hh = vmull_lane_u16(vget_high_u16(r_h), vget_low_u16(coeffs), 0);
      y_hh = vmlal_lane_u16(y_hh, vget_high_u16(g_h), vget_low_u16(coeffs), 1);
      y_hh = vmlal_lane_u16(y_hh, vget_high_u16(b_h), vget_low_u16(coeffs), 2);

      /* Compute Cb */
      uint32x4_t cb_ll = bias;
      cb_ll = vmlsl_lane_u16(cb_ll, vget_low_u16(r_l), vget_low_u16(coeffs), 3);
      cb_ll = vmlsl_lane_u16(cb_ll, vget_low_u16(g_l), vget_high_u16(coeffs), 0);
      cb_ll = vmlal_lane_u16(cb_ll, vget_low_u16(b_l), vget_high_u16(coeffs), 1);
      uint32x4_t cb_lh = bias;
      cb_lh = vmlsl_lane_u16(cb_lh, vget_high_u16(r_l), vget_low_u16(coeffs), 3);
      cb_lh = vmlsl_lane_u16(cb_lh, vget_high_u16(g_l), vget_high_u16(coeffs), 0);
      cb_lh = vmlal_lane_u16(cb_lh, vget_high_u16(b_l), vget_high_u16(coeffs), 1);
      uint32x4_t cb_hl = bias;
      cb_hl = vmlsl_lane_u16(cb_hl, vget_low_u16(r_h), vget_low_u16(coeffs), 3);
      cb_hl = vmlsl_lane_u16(cb_hl, vget_low_u16(g_h), vget_high_u16(coeffs), 0);
      cb_hl = vmlal_lane_u16(cb_hl, vget_low_u16(b_h), vget_high_u16(coeffs), 1);
      uint32x4_t cb_hh = bias;
      cb_hh = vmlsl_lane_u16(cb_hh, vget_high_u16(r_h), vget_low_u16(coeffs), 3);
      cb_hh = vmlsl_lane_u16(cb_hh, vget_high_u16(g_h), vget_high_u16(coeffs), 0);
      cb_hh = vmlal_lane_u16(cb_hh, vget_high_u16(b_h), vget_high_u16(coeffs), 1);

      /* Compute Cr */
      uint32x4_t cr_ll = bias;
      cr_ll = vmlal_lane_u16(cr_ll, vget_low_u16(r_l), vget_high_u16(coeffs), 1);
      cr_ll = vmlsl_lane_u16(cr_ll, vget_low_u16(g_l), vget_high_u16(coeffs), 2);
      cr_ll = vmlsl_lane_u16(cr_ll, vget_low_u16(b_l), vget_high_u16(coeffs), 3);
      uint32x4_t cr_lh = bias;
      cr_lh = vmlal_lane_u16(cr_lh, vget_high_u16(r_l), vget_high_u16(coeffs), 1);
      cr_lh = vmlsl_lane_u16(cr_lh, vget_high_u16(g_l), vget_high_u16(coeffs), 2);
      cr_lh = vmlsl_lane_u16(cr_lh, vget_high_u16(b_l), vget_high_u16(coeffs), 3);
      uint32x4_t cr_hl = bias;
      cr_hl = vmlal_lane_u16(cr_hl, vget_low_u16(r_h), vget_high_u16(coeffs), 1);
      cr_hl = vmlsl_lane_u16(cr_hl, vget_low_u16(g_h), vget_high_u16(coeffs), 2);
      cr_hl = vmlsl_lane_u16(cr_hl, vget_low_u16(b_h), vget_high_u16(coeffs), 3);
      uint32x4_t cr_hh = bias;
      cr_hh = vmlal_lane_u16(cr_hh, vget_high_u16(r_h), vget_high_u16(coeffs), 1);
      cr_hh = vmlsl_lane_u16(cr_hh, vget_high_u16(g_h), vget_high_u16(coeffs), 2);
      cr_hh = vmlsl_lane_u16(cr_hh, vget_high_u16(b_h), vget_high_u16(coeffs), 3);

      /* Descale Y values (rounding right shift) and narrow to 16-bit. */
      uint16x8_t y_l = vcombine_u16(vrshrn_n_u32(y_ll, 14), vrshrn_n_u32(y_lh, 14));
      uint16x8_t y_h = vcombine_u16(vrshrn_n_u32(y_hl, 14), vrshrn_n_u32(y_hh, 14));
      /* Descale Cb values (right shift) and narrow to 16-bit. */
      uint16x8_t cb_l = vcombine_u16(vshrn_n_u32(cb_ll, 14), vshrn_n_u32(cb_lh, 14));
      uint16x8_t cb_h = vcombine_u16(vshrn_n_u32(cb_hl, 14), vshrn_n_u32(cb_hh, 14));
      /* Descale Cr values (right shift) and narrow to 16-bit. */
      uint16x8_t cr_l = vcombine_u16(vshrn_n_u32(cr_ll, 14), vshrn_n_u32(cr_lh, 14));
      uint16x8_t cr_h = vcombine_u16(vshrn_n_u32(cr_hl, 14), vshrn_n_u32(cr_hh, 14));

      /* Narrow Y, Cb, and Cr values to 8-bit and store to memory.  Buffer
       * overwrite is permitted up to the next multiple of ALIGN_SIZE bytes.
       */
      vst1q_u8(y_ptr, vcombine_u8(vmovn_u16(y_l), vmovn_u16(y_h)));
      vst1q_u8(u_ptr, vcombine_u8(vmovn_u16(cb_l), vmovn_u16(cb_h)));
      vst1q_u8(v_ptr, vcombine_u8(vmovn_u16(cr_l), vmovn_u16(cr_h)));

      /* Increment pointers. */
      rgba_ptr += (16 * 4);
      y_ptr += 16;
      u_ptr += 16;
      v_ptr += 16;

      w += 16;
    } while (w < src->w);
  } while (++h < src->h);
}

std::unique_ptr<uhdr_raw_image_ext_t> convert_raw_input_to_ycbcr_neon(uhdr_raw_image_t* src) {
  if (src->fmt == UHDR_IMG_FMT_32bppRGBA8888) {
    std::unique_ptr<uhdr_raw_image_ext_t> dst = nullptr;
    const uint16_t* coeffs_ptr = nullptr;

    if (src->cg == UHDR_CG_BT_709) {
      coeffs_ptr = kRgb709ToYuv_coeffs_neon;
    } else if (src->cg == UHDR_CG_BT_2100) {
      coeffs_ptr = kRgbDispP3ToYuv_coeffs_neon;
    } else if (src->cg == UHDR_CG_DISPLAY_P3) {
      coeffs_ptr = kRgb2100ToYuv_coeffs_neon;
    } else {
      return dst;
    }
    dst = std::make_unique<uhdr_raw_image_ext_t>(UHDR_IMG_FMT_24bppYCbCr444, src->cg, src->ct,
                                                 UHDR_CR_FULL_RANGE, src->w, src->h, 64);
    ConvertRgba8888ToYuv444_neon(src, dst.get(), coeffs_ptr);
    return dst;
  }
  return nullptr;
}

}  // namespace ultrahdr
