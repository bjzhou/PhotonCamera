#include <algorithm>
#include <cmath>
#include <jni.h>
#include <omp.h>
#include <vector>

enum class TransferCurve {
  SRGB = 0,
  LINEAR = 1,
  VLOG = 2,
  SLOG3 = 3,
  FLOG2 = 4,
  LOGC4 = 5,
  APPLE_LOG = 6,
  HLG = 7,
  ACES_CCT = 8,
  LEICA_LLOG = 11
};

inline float clamp(float v, float min, float max) {
  if (v < min)
    return min;
  if (v > max)
    return max;
  return v;
}

float fromLinear(float linear, TransferCurve curve) {
  linear = clamp(linear, 0.0f, 1.0f);
  switch (curve) {
  case TransferCurve::SRGB:
    return (linear <= 0.0031308f)
               ? 12.92f * linear
               : 1.055f * std::pow(linear, 1.0f / 2.4f) - 0.055f;
  case TransferCurve::LINEAR:
    return linear;
  case TransferCurve::VLOG:
    return (linear < 0.01f)
               ? 5.6f * linear + 0.125f
               : 0.241514f * std::log10(linear + 0.00873f) + 0.598206f;
  case TransferCurve::SLOG3:
    return (linear < 0.01125f)
               ? (linear * (171.2102946929f - 95.0f) / 0.01125f + 95.0f) /
                     1023.0f
               : (420.0f +
                  std::log10((linear + 0.01f) / (0.18f + 0.01f)) * 261.5f) /
                     1023.0f;
  case TransferCurve::FLOG2:
    return (linear < 0.000889f)
               ? 8.799461f * linear + 0.092864f
               : 0.245281f * std::log10(5.555556f * linear + 0.064829f) +
                     0.384316f;
  case TransferCurve::LOGC4:
    return (linear < -0.018057f)
               ? 8.80302f * linear + 0.158957f
               : 0.21524584f * std::log10(2231.8263f * linear + 64.0f) - 0.29590839f;
  case TransferCurve::APPLE_LOG:
    // Apple Log formula from Apple Log Profile White Paper (September 2023)
    if (linear >= 0.01f) {
      return 0.08550479f * std::log2(linear + 0.00964052f) + 0.69336945f;
    } else if (linear >= -0.05641088f) {
      return 47.28711236f * std::pow(linear + 0.05641088f, 2.0f);
    } else {
      return 0.0f;
    }
  case TransferCurve::HLG: {
    const float a = 0.17883277f;
    const float b = 1.0f - 4.0f * a;
    const float c = 0.5f - a * std::log(4.0f * a);
    return (linear <= 1.0f / 12.0f) ? std::sqrt(3.0f * linear)
                                    : a * std::log(12.0f * linear - b) + c;
  }
  case TransferCurve::ACES_CCT:
    return (linear < 0.0078125f)
               ? 10.540237f * linear + 0.072905536f
               : 0.18955931f * std::log10(std::max(linear, 1e-6f)) + 0.5547945f;
  case TransferCurve::LEICA_LLOG:
    return (linear <= 0.006f)
               ? 8.0f * linear + 0.09f
               : 0.27f * std::log10(1.3f * linear + 0.0115f) + 0.6f;
  }
  return linear;
}

float toLinear(float value, TransferCurve curve) {
  value = clamp(value, 0.0f, 1.0f);
  switch (curve) {
  case TransferCurve::SRGB:
    return (value <= 0.04045f) ? value / 12.92f
                               : std::pow((value + 0.055f) / 1.055f, 2.4f);
  case TransferCurve::LINEAR:
    return value;
  case TransferCurve::VLOG:
    return (value < 0.181f)
               ? (value - 0.125f) / 5.6f
               : std::pow(10.0f, (value - 0.598206f) / 0.241514f) - 0.00873f;
  case TransferCurve::SLOG3:
    return (value < 171.2102946929f / 1023.0f)
               ? (value * 1023.0f - 95.0f) * 0.01125f /
                     (171.2102946929f - 95.0f)
               : std::pow(10.0f, (value * 1023.0f - 420.0f) / 261.5f) *
                         (0.18f + 0.01f) -
                     0.01f;
  case TransferCurve::FLOG2:
    return (value < 0.100686685370811f)
               ? (value - 0.092864f) / 8.799461f
               : (std::pow(10.0f, (value - 0.384316f) / 0.245281f) -
                  0.064829f) /
                     5.555556f;
  case TransferCurve::LOGC4:
    return (value < 0.0f)
               ? (value - 0.158957f) / 8.80302f
               : (std::pow(10.0f, (value + 0.29590839f) / 0.21524584f) - 64.0f) /
                     2231.8263f;
  case TransferCurve::APPLE_LOG: {
    // Pt = c * (Rt - R0)^2 = 47.28711236 * (0.01 + 0.05641088)^2 ≈ 0.2088
    const float pt = 0.20883119f;
    if (value >= pt) {
      return std::pow(2.0f, (value - 0.69336945f) / 0.08550479f) - 0.00964052f;
    } else if (value > 0.0f) {
      return std::sqrt(value / 47.28711236f) - 0.05641088f;
    } else {
      return -0.05641088f;
    }
  }
  case TransferCurve::HLG: {
    const float a = 0.17883277f;
    const float b = 1.0f - 4.0f * a;
    const float c = 0.5f - a * std::log(4.0f * a);
    return (value <= 0.5f) ? (value * value) / 3.0f
                           : (std::exp((value - c) / a) + b) / 12.0f;
  }
  case TransferCurve::ACES_CCT:
    return (value < 0.15525114f)
               ? (value - 0.072905536f) / 10.540237f
               : std::pow(10.0f, (value - 0.5547945f) / 0.18955931f);
  case TransferCurve::LEICA_LLOG:
    return (value <= 0.138f)
               ? (value - 0.09f) / 8.0f
               : (std::pow(10.0f, (value - 0.6f) / 0.27f) - 0.0115f) / 1.3f;
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

  TransferCurve curve = static_cast<TransferCurve>(curve_type);
  float step = 1.0f / (size - 1);

#pragma omp parallel for collapse(2)
  for (int bIdx = 0; bIdx < size; bIdx++) {
    for (int gIdx = 0; gIdx < size; gIdx++) {
      for (int rIdx = 0; rIdx < size; rIdx++) {
        float r = rIdx * step;
        float g = gIdx * step;
        float b = bIdx * step;

        // 1. sRGB to Linear
        float rLin = toLinear(r, TransferCurve::SRGB);
        float gLin = toLinear(g, TransferCurve::SRGB);
        float bLin = toLinear(b, TransferCurve::SRGB);

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

extern "C" JNIEXPORT jshortArray JNICALL
Java_com_hinnka_mycamera_lut_LutProcessor_resampleSizeNative(
    JNIEnv *env, jobject thiz, jshortArray src_data, jint src_size,
    jint target_size) {
  jshort *src = env->GetShortArrayElements(src_data, nullptr);
  uint16_t *src_u16 = reinterpret_cast<uint16_t *>(src);

  jsize len = target_size * target_size * target_size * 3;
  jshortArray result_data = env->NewShortArray(len);
  jshort *dst = env->GetShortArrayElements(result_data, nullptr);
  uint16_t *dst_u16 = reinterpret_cast<uint16_t *>(dst);

  float step = 1.0f / (target_size - 1);

#pragma omp parallel for collapse(2)
  for (int bIdx = 0; bIdx < target_size; bIdx++) {
    for (int gIdx = 0; gIdx < target_size; gIdx++) {
      for (int rIdx = 0; rIdx < target_size; rIdx++) {
        float r = rIdx * step;
        float g = gIdx * step;
        float b = bIdx * step;

        int index = ((bIdx * target_size + gIdx) * target_size + rIdx) * 3;
        trilinearSample(src_u16, src_size, r, g, b, &dst_u16[index]);
      }
    }
  }

  env->ReleaseShortArrayElements(src_data, src, JNI_ABORT);
  env->ReleaseShortArrayElements(result_data, dst, 0);

  return result_data;
}
