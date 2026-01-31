#include <algorithm>
#include <cmath>
#include <jni.h>
#include <omp.h>
#include <vector>

enum class LutCurve {
  SRGB,
  LINEAR,
  V_LOG,
  S_LOG3,
  F_LOG2,
  LOG_C,
  APPLE_LOG,
  HLG
};

inline float clamp(float v, float min, float max) {
  if (v < min)
    return min;
  if (v > max)
    return max;
  return v;
}

float fromLinear(float linear, LutCurve curve) {
  linear = clamp(linear, 0.0f, 1.0f);
  switch (curve) {
  case LutCurve::SRGB:
    return (linear <= 0.0031308f)
               ? 12.92f * linear
               : 1.055f * std::pow(linear, 1.0f / 2.4f) - 0.055f;
  case LutCurve::LINEAR:
    return linear;
  case LutCurve::V_LOG:
    return (linear < 0.01f)
               ? 5.6f * linear + 0.125f
               : 0.421248f * std::log10(5.555556f * linear + 0.047996f) +
                     0.383577f;
  case LutCurve::S_LOG3:
    return (linear < 0.01125f)
               ? (171.2102946929f * linear + 95.0f) / 1023.0f
               : (422.0f * std::log10((linear + 0.01f) / (0.18f + 0.01f)) +
                  616.0f) /
                     1023.0f;
  case LutCurve::F_LOG2:
    return (linear < 0.00089f)
               ? 8.799461f * linear + 0.092864f
               : 0.245281f * std::log10(5.555556f * linear + 0.064829f) +
                     0.384316f;
  case LutCurve::LOG_C:
    return (linear > 0.010591f)
               ? 0.247190f * std::log10(1.702f * linear + 0.043519f) + 0.385537f
               : 5.613235f * linear + 0.092809f;
  case LutCurve::APPLE_LOG:
    return (linear > 0.019242594858951f)
               ? 0.081519922730206f * std::log(47.3665233297121f * linear +
                                               0.0028231596425514f) +
                     0.453351173665842f
               : 9.50854453301014f * linear + 0.063718911571732f;
  case LutCurve::HLG: {
    const float a = 0.17883277f;
    const float b = 1.0f - 4.0f * a;
    const float c = 0.5f - a * std::log(4.0f * a);
    return (linear <= 1.0f / 12.0f) ? std::sqrt(3.0f * linear)
                                    : a * std::log(12.0f * linear - b) + c;
  }
  }
  return linear;
}

float toLinear(float value, LutCurve curve) {
  value = clamp(value, 0.0f, 1.0f);
  switch (curve) {
  case LutCurve::SRGB:
    return (value <= 0.04045f) ? value / 12.92f
                               : std::pow((value + 0.055f) / 1.055f, 2.4f);
  case LutCurve::LINEAR:
    return value;
  case LutCurve::V_LOG:
    return (value < 0.181f)
               ? (value - 0.125f) / 5.6f
               : (std::pow(10.0f, (value - 0.383577f) / 0.421248f) -
                  0.047996f) /
                     5.555556f;
  case LutCurve::S_LOG3:
    return (value < 171.2102946929f * 0.01125f / 1023.0f)
               ? (value * 1023.0f - 95.0f) / 171.2102946929f
               : std::pow(10.0f, (value * 1023.0f - 616.0f) / 422.0f) *
                         (0.18f + 0.01f) -
                     0.01f;
  case LutCurve::F_LOG2:
    return (value < 0.100686685370811f)
               ? (value - 0.092864f) / 8.799461f
               : (std::pow(10.0f, (value - 0.384316f) / 0.245281f) -
                  0.064829f) /
                     5.555556f;
  case LutCurve::LOG_C:
    return (value > 5.613235f * 0.010591f + 0.092809f)
               ? (std::pow(10.0f, (value - 0.385537f) / 0.247190f) -
                  0.043519f) /
                     1.702f
               : (value - 0.092809f) / 5.613235f;
  case LutCurve::APPLE_LOG:
    return (value > 0.246602353f)
               ? (std::exp((value - 0.453351173665842f) / 0.081519922730206f) -
                  0.0028231596425514f) /
                     47.3665233297121f
               : (value - 0.063718911571732f) / 9.50854453301014f;
  case LutCurve::HLG: {
    const float a = 0.17883277f;
    const float b = 1.0f - 4.0f * a;
    const float c = 0.5f - a * std::log(4.0f * a);
    return (value <= 0.5f) ? (value * value) / 3.0f
                           : (std::exp((value - c) / a) + b) / 12.0f;
  }
  }
  return value;
}

void trilinearSample(const uint16_t *data, int size, float r, float g, float b,
                     uint16_t *out) {
  float x = clamp(r * (size - 1), 0.0f, (float)size - 1.0001f);
  float y = clamp(g * (size - 1), 0.0f, (float)size - 1.0001f);
  float z = clamp(b * (size - 1), 0.0f, (float)size - 1.0001f);

  int x0 = (int)x;
  int x1 = x0 + 1;
  int y0 = (int)y;
  int y1 = y0 + 1;
  int z0 = (int)z;
  int z1 = z0 + 1;

  float dx = x - x0;
  float dy = y - y0;
  float dz = z - z0;

  for (int c = 0; c < 3; c++) {
    float v000 = (float)data[((z0 * size + y0) * size + x0) * 3 + c];
    float v100 = (float)data[((z0 * size + y0) * size + x1) * 3 + c];
    float v010 = (float)data[((z0 * size + y1) * size + x0) * 3 + c];
    float v110 = (float)data[((z0 * size + y1) * size + x1) * 3 + c];
    float v001 = (float)data[((z1 * size + y0) * size + x0) * 3 + c];
    float v101 = (float)data[((z1 * size + y0) * size + x1) * 3 + c];
    float v011 = (float)data[((z1 * size + y1) * size + x0) * 3 + c];
    float v111 = (float)data[((z1 * size + y1) * size + x1) * 3 + c];

    float v00 = v000 * (1.0f - dx) + v100 * dx;
    float v10 = v010 * (1.0f - dx) + v110 * dx;
    float v01 = v001 * (1.0f - dx) + v101 * dx;
    float v11 = v011 * (1.0f - dx) + v111 * dx;

    float v0 = v00 * (1.0f - dy) + v10 * dy;
    float v1 = v01 * (1.0f - dy) + v11 * dy;

    float v = v0 * (1.0f - dz) + v1 * dz;
    out[c] = (uint16_t)(v + 0.5f);
  }
}

extern "C" JNIEXPORT jshortArray JNICALL
Java_com_hinnka_mycamera_lut_LutProcessor_resampleLutNative(
    JNIEnv *env, jobject thiz, jshortArray src_data, jint size,
    jint curve_type) {
  jsize len = env->GetArrayLength(src_data);
  jshort *src = env->GetShortArrayElements(src_data, nullptr);
  uint16_t *src_u16 = reinterpret_cast<uint16_t *>(src);

  jshortArray result_data = env->NewShortArray(len);
  jshort *dst = env->GetShortArrayElements(result_data, nullptr);
  uint16_t *dst_u16 = reinterpret_cast<uint16_t *>(dst);

  LutCurve curve = static_cast<LutCurve>(curve_type);
  float step = 1.0f / (size - 1);

#pragma omp parallel for collapse(2)
  for (int bIdx = 0; bIdx < size; bIdx++) {
    for (int gIdx = 0; gIdx < size; gIdx++) {
      for (int rIdx = 0; rIdx < size; rIdx++) {
        float r = rIdx * step;
        float g = gIdx * step;
        float b = bIdx * step;

        // 1. sRGB to Linear
        float rLin = toLinear(r, LutCurve::SRGB);
        float gLin = toLinear(g, LutCurve::SRGB);
        float bLin = toLinear(b, LutCurve::SRGB);

        // 2. Linear to Target Log
        float rLog = fromLinear(rLin, curve);
        float gLog = fromLinear(gLin, curve);
        float bLog = fromLinear(bLin, curve);

        // 3. Trilinear Sample
        int index = ((bIdx * size + gIdx) * size + rIdx) * 3;
        trilinearSample(src_u16, size, rLog, gLog, bLog, &dst_u16[index]);
      }
    }
  }

  env->ReleaseShortArrayElements(src_data, src, JNI_ABORT);
  env->ReleaseShortArrayElements(result_data, dst, 0);

  return result_data;
}
