#include "mgc_denoise_static.h"
#include "mgc_sharpen_adapter.h"
#include <GLES3/gl3.h>
#include <algorithm>
#include <android/log.h>
#include <arm_neon.h>
#include <chrono>
#include <cmath>
#include <jni.h>
#include <limits>

namespace photon::mgc_denoise {
namespace {
constexpr float kMatrix[9] = {
    0.2125999927520752f,   0.7152000069618225f,  0.07219959795475006f,
    -0.16245023906230927f, -0.5464943051338196f, 0.7089447379112244f,
    0.9999967217445374f,   -0.9083024859428406f, -0.09169333428144455f,
};
constexpr float kU8ToU12 = 4095.0f / 255.0f;

int16x4_t Convert4(float32x4_t r, float32x4_t g, float32x4_t b, int channel) {
  // Deliberately separate multiply/adds: FMA changes U12 rounding boundaries.
  const float32x4_t value =
      vaddq_f32(vaddq_f32(vmulq_n_f32(r, kMatrix[channel * 3]),
                          vmulq_n_f32(g, kMatrix[channel * 3 + 1])),
                vmulq_n_f32(b, kMatrix[channel * 3 + 2]));
  return vmovn_s32(vmaxq_s32(
      vdupq_n_s32(-4095), vminq_s32(vdupq_n_s32(4095), vcvtnq_s32_f32(value))));
}
} // namespace

void SharpenRgbaToYuv(const uint8_t *rgba, size_t count, int16_t *yuv) {
  const size_t groups = count / 8;
#pragma omp parallel for schedule(static) num_threads(4)
  for (size_t group = 0; group < groups; ++group) {
    const size_t i = group * 8;
    const uint8x8x4_t packed = vld4_u8(rgba + i * 4);
    const uint16x8_t r16 = vmovl_u8(packed.val[0]);
    const uint16x8_t g16 = vmovl_u8(packed.val[1]);
    const uint16x8_t b16 = vmovl_u8(packed.val[2]);
    const auto low = [](uint16x8_t v) {
      return vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(vget_low_u16(v))), kU8ToU12);
    };
    const auto high = [](uint16x8_t v) {
      return vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(vget_high_u16(v))), kU8ToU12);
    };
    const auto r0 = low(r16), g0 = low(g16), b0 = low(b16);
    const auto r1 = high(r16), g1 = high(g16), b1 = high(b16);
    for (int c = 0; c < 3; ++c) {
      vst1q_s16(yuv + c * count + i,
                vcombine_s16(Convert4(r0, g0, b0, c), Convert4(r1, g1, b1, c)));
    }
  }
  for (size_t i = groups * 8; i < count; ++i) {
    const float r = rgba[i * 4] * kU8ToU12;
    const float g = rgba[i * 4 + 1] * kU8ToU12;
    const float b = rgba[i * 4 + 2] * kU8ToU12;
    for (int c = 0; c < 3; ++c) {
      yuv[c * count + i] = static_cast<int16_t>(std::clamp<long>(
          std::lrintf(kMatrix[c * 3] * r + kMatrix[c * 3 + 1] * g +
                      kMatrix[c * 3 + 2] * b),
          -4095, 4095));
    }
  }
}

void SharpenRgbToRgba(const uint16_t *rgb, size_t count, uint8_t *rgba) {
  const size_t groups = count / 8;
#pragma omp parallel for schedule(static) num_threads(4)
  for (size_t group = 0; group < groups; ++group) {
    const size_t i = group * 8;
    const uint16x8x3_t input = vld3q_u16(rgb + i * 3);
    uint8x8x4_t output;
    for (int c = 0; c < 3; ++c) {
      const uint16x8_t v = vminq_u16(input.val[c], vdupq_n_u16(4095));
      const auto convert = [](uint16x4_t samples) {
        const uint32x4_t numerator =
            vaddq_u32(vmull_n_u16(samples, 255), vdupq_n_u32(2047));
        // Exact floor(n / 4095) on this bounded numerator domain, not a float
        // reciprocal.
        return vmovn_u32(
            vshrq_n_u32(vaddq_u32(vaddq_u32(numerator, vdupq_n_u32(1)),
                                  vshrq_n_u32(numerator, 12)),
                        12));
      };
      output.val[c] = vmovn_u16(
          vcombine_u16(convert(vget_low_u16(v)), convert(vget_high_u16(v))));
    }
    output.val[3] = vdup_n_u8(255);
    vst4_u8(rgba + i * 4, output);
  }
  for (size_t i = groups * 8; i < count; ++i) {
    for (size_t c = 0; c < 3; ++c) {
      const uint32_t v = std::min<uint32_t>(rgb[i * 3 + c], 4095);
      rgba[i * 4 + c] = static_cast<uint8_t>((v * 255 + 2047) / 4095);
    }
    rgba[i * 4 + 3] = 255;
  }
}
bool SharpenFloatRgbaToYuv(const float *rgba, size_t count, int16_t *yuv) {
  const size_t groups = count / 4;
  int invalid = 0;
#pragma omp parallel for schedule(static) num_threads(4) reduction(| : invalid)
  for (size_t group = 0; group < groups; ++group) {
    const size_t i = group * 4;
    const float32x4x4_t input = vld4q_f32(rgba + i * 4);
    uint32x4_t nonfinite = vdupq_n_u32(0);
    for (int c = 0; c < 3; ++c) {
      const auto exponent = vandq_u32(vreinterpretq_u32_f32(input.val[c]),
                                      vdupq_n_u32(0x7f800000));
      nonfinite = vorrq_u32(nonfinite,
                            vceqq_u32(exponent, vdupq_n_u32(0x7f800000)));
    }
    if (vmaxvq_u32(nonfinite)) {
      invalid = 1;
      continue;
    }
    const auto scaled = [](float32x4_t value) {
      return vmulq_n_f32(vminq_f32(vmaxq_f32(value, vdupq_n_f32(0.f)),
                                    vdupq_n_f32(1.f)), 4095.f);
    };
    const auto r = scaled(input.val[0]), g = scaled(input.val[1]),
               b = scaled(input.val[2]);
    for (int c = 0; c < 3; ++c) {
      const auto value = vaddq_f32(
          vaddq_f32(vmulq_n_f32(r, kMatrix[c * 3]),
                     vmulq_n_f32(g, kMatrix[c * 3 + 1])),
          vmulq_n_f32(b, kMatrix[c * 3 + 2]));
      // Match lrintf's current rounding mode, retaining separate matrix adds.
      const auto rounded = vcvtq_s32_f32(vrndiq_f32(value));
      vst1_s16(yuv + c * count + i,
                vmovn_s32(vmaxq_s32(vdupq_n_s32(-4095),
                                    vminq_s32(vdupq_n_s32(4095), rounded))));
    }
  }
  if (invalid) return false;
  for (size_t i = groups * 4; i < count; ++i) {
    for (int c = 0; c < 3; ++c) {
      if (!std::isfinite(rgba[4 * i + c])) return false;
    }
    const float r = std::clamp(rgba[4 * i], 0.f, 1.f) * 4095.f;
    const float g = std::clamp(rgba[4 * i + 1], 0.f, 1.f) * 4095.f;
    const float b = std::clamp(rgba[4 * i + 2], 0.f, 1.f) * 4095.f;
    for (int c = 0; c < 3; ++c) {
      yuv[c * count + i] = static_cast<int16_t>(std::clamp<long>(
          std::lrintf(kMatrix[c * 3] * r + kMatrix[c * 3 + 1] * g +
                     kMatrix[c * 3 + 2] * b), -4095, 4095));
    }
  }
  return true;
}

void SharpenRgbToFloatRgba(const uint16_t *rgb, size_t count, float *rgba) {
  const size_t groups = count / 4;
#pragma omp parallel for schedule(static) num_threads(4)
  for (size_t group = 0; group < groups; ++group) {
    const size_t i = group * 4;
    const uint16x4x3_t input = vld3_u16(rgb + i * 3);
    float32x4x4_t output;
    for (int c = 0; c < 3; ++c) {
      const auto bounded = vmin_u16(input.val[c], vdup_n_u16(4095));
      // Division preserves the scalar boundary's rounding; a reciprocal does not.
      output.val[c] = vdivq_f32(vcvtq_f32_u32(vmovl_u16(bounded)),
                                vdupq_n_f32(4095.f));
    }
    output.val[3] = vdupq_n_f32(1.f);
    vst4q_f32(rgba + i * 4, output);
  }
  for (size_t i = groups * 4; i < count; ++i) {
    for (int c = 0; c < 3; ++c) {
      rgba[4 * i + c] = std::min<uint16_t>(rgb[3 * i + c], 4095) / 4095.f;
    }
    rgba[4 * i + 3] = 1.f;
  }
}
} // namespace photon::mgc_denoise

extern "C" JNIEXPORT jint JNICALL
Java_com_hinnka_mycamera_raw_MgcSharpen_nativeSharpenRgbaFloat(
    JNIEnv *env, jobject, jobject rgba_buffer, jobject scratch_buffer,
    jint width, jint height, jfloat snr, jfloat attenuation, jfloatArray curve_points) {
  using namespace photon::mgc_denoise;
  if (!rgba_buffer || !scratch_buffer || !curve_points || width <= 0 || height <= 0 ||
      !std::isfinite(snr) || snr < 0 || !std::isfinite(attenuation) ||
      attenuation < 0)
    return -1;
  const size_t count = size_t(width) * size_t(height);
  const size_t output_count =
      size_t(width) * ((size_t(height) + 1) & ~size_t(1));
  const size_t scratch_bytes = (count + output_count) * 6;
  if (scratch_bytes > size_t(std::numeric_limits<int>::max()))
    return -1;
  auto *rgba = static_cast<float *>(env->GetDirectBufferAddress(rgba_buffer));
  auto *yuv =
      static_cast<int16_t *>(env->GetDirectBufferAddress(scratch_buffer));
  if (!rgba || !yuv ||
      env->GetDirectBufferCapacity(rgba_buffer) < jlong(count * 4 * sizeof(float)) ||
      env->GetDirectBufferCapacity(scratch_buffer) < jlong(scratch_bytes))
    return -1;
  auto *rgb = reinterpret_cast<uint16_t *>(yuv + count * 3);
  // Curves are resolved once in Kotlin from Photon's local, named tuning table.
  // Halide layout: point + 5 * frequency + 15 * coordinate.
  if (env->GetArrayLength(curve_points) != 30)
    return -1;
  float curves[30];
  env->GetFloatArrayRegion(curve_points, 0, 30, curves);
  if (env->ExceptionCheck())
    return -1;
  for (int band = 0; band < 3; ++band) {
    for (int point = 0; point < 5; ++point) {
      const int index = point + 5 * band;
      const float x = curves[index], y = curves[index + 15];
      if (!std::isfinite(x) || !std::isfinite(y) || x < 0 || y < 0 ||
          (point == 0 && (x != 0 || y != 0)) ||
          (point > 0 && x <= curves[index - 1]))
        return -1;
    }
  }
  constexpr float corner_correction[3] = {0, 0, 0};
  using Clock = std::chrono::steady_clock;
  const auto start = Clock::now();
  if (!SharpenFloatRgbaToYuv(rgba, count, yuv)) return -1;
  const auto converted = Clock::now();
  const int result = RunSharpenTo16Bit(
      yuv, width, height, curves, corner_correction, attenuation, rgb);
  if (result != 0)
    return result;
  const auto sharpened = Clock::now();
  SharpenRgbToFloatRgba(rgb, count, rgba);
  const auto finish = Clock::now();
  const auto ms = [](auto a, auto b) {
    return std::chrono::duration<double, std::milli>(b - a).count();
  };
  __android_log_print(
      ANDROID_LOG_INFO, "PLog_MgcSharpen",
      "MGC original sharpen %dx%d snr=%.6g attenuation=%.6g convertInMs=%.3f "
      "kernelMs=%.3f convertOutMs=%.3f totalNativeMs=%.3f",
      width, height, snr, attenuation, ms(start, converted),
      ms(converted, sharpened), ms(sharpened, finish), ms(start, finish));
  return 0;
}

extern "C" JNIEXPORT jboolean JNICALL
Java_com_hinnka_mycamera_raw_RawFloatTextureTransfer_nativeUpload(
    JNIEnv *, jobject, jint pbo, jint texture, jint width, jint height) {
  if (pbo <= 0 || texture <= 0 || width <= 0 || height <= 0)
    return JNI_FALSE;
  glActiveTexture(GL_TEXTURE0);
  glBindTexture(GL_TEXTURE_2D, static_cast<GLuint>(texture));
  glBindBuffer(GL_PIXEL_UNPACK_BUFFER, static_cast<GLuint>(pbo));
  glPixelStorei(GL_UNPACK_ALIGNMENT, 1);
  glPixelStorei(GL_UNPACK_ROW_LENGTH, 0);
  glTexSubImage2D(GL_TEXTURE_2D, 0, 0, 0, width, height, GL_RGBA,
                  GL_FLOAT, nullptr);
  const GLenum error = glGetError();
  glBindBuffer(GL_PIXEL_UNPACK_BUFFER, 0);
  return error == GL_NO_ERROR ? JNI_TRUE : JNI_FALSE;
}
