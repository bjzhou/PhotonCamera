#include <algorithm>
#include <cmath>
#include <cstddef>
#include <cstdint>
#include <jni.h>
#include <limits>

namespace {

constexpr int kLinearHistogramBits = 10;
constexpr int kLinearHistogramBins = 1 << kLinearHistogramBits;
constexpr int kSignalRowStep = 8;

int HistogramShift(int white_level) {
  const int tail = white_level - kLinearHistogramBins;
  if (tail < kLinearHistogramBins) {
    return 0;
  }
  const unsigned int shifted =
      static_cast<unsigned int>(tail) >> kLinearHistogramBits;
  return 32 - __builtin_clz(shifted);
}

int HistogramBinCenter(int raw, int histogram_shift,
                       int quantization_half) {
  if (histogram_shift == 0 || raw < kLinearHistogramBins) {
    return raw;
  }
  const int bucket =
      (raw - kLinearHistogramBins) >> histogram_shift;
  return kLinearHistogramBins + (bucket << histogram_shift) +
         quantization_half;
}

}  // namespace

extern "C" JNIEXPORT jfloat JNICALL
Java_com_hinnka_mycamera_raw_RawDemosaicProcessor_estimateMgcReferenceSignalNative(
    JNIEnv* env, jobject /* thiz */, jobject raw_buffer, jint buffer_offset,
    jint buffer_limit, jint width, jint height, jint row_stride,
    jint samples_per_pixel, jint first_row_green_phase, jfloat black_level,
    jint white_level, jfloat normalization_range) {
  const jfloat invalid = std::numeric_limits<jfloat>::quiet_NaN();
  if (raw_buffer == nullptr || width <= 0 || height <= 0 ||
      samples_per_pixel < 1 || samples_per_pixel > 4 || row_stride <= 0 ||
      buffer_offset < 0 || buffer_limit <= buffer_offset ||
      !std::isfinite(black_level) || !std::isfinite(normalization_range) ||
      normalization_range <= 0.0f || white_level < 0) {
    return invalid;
  }

  auto* const buffer_base = static_cast<const std::uint8_t*>(
      env->GetDirectBufferAddress(raw_buffer));
  const jlong buffer_capacity = env->GetDirectBufferCapacity(raw_buffer);
  if (buffer_base == nullptr || buffer_capacity <= 0 ||
      static_cast<jlong>(buffer_limit) > buffer_capacity) {
    return invalid;
  }

  const std::int64_t pixel_stride =
      static_cast<std::int64_t>(samples_per_pixel) * sizeof(std::uint16_t);
  if (row_stride < static_cast<std::int64_t>(width) * pixel_stride) {
    return invalid;
  }
  const std::int64_t required_bytes =
      static_cast<std::int64_t>(height - 1) * row_stride +
      static_cast<std::int64_t>(width) * pixel_stride;
  if (required_bytes >
      static_cast<std::int64_t>(buffer_limit - buffer_offset)) {
    return invalid;
  }

  const int crop_left = (width / 8) & -4;
  const int crop_right = ((width * 7) / 8) & -4;
  const int crop_top = (height / 8) & -2;
  const int crop_bottom = ((height * 7) / 8) & -2;
  if (crop_right <= crop_left || crop_bottom <= crop_top) {
    return invalid;
  }

  const int histogram_shift = HistogramShift(white_level);
  const int quantization_half = (1 << histogram_shift) / 2;
  const int component_offset =
      samples_per_pixel == 1 ? 0 : sizeof(std::uint16_t);
  const int first_x = samples_per_pixel == 1
                          ? crop_left + (first_row_green_phase & 1)
                          : crop_left;
  const int sampled_row_count =
      (crop_bottom - crop_top + kSignalRowStep - 1) / kSignalRowStep;
  const auto* const source = buffer_base + buffer_offset;
  if ((reinterpret_cast<std::uintptr_t>(source) &
       (alignof(std::uint16_t) - 1)) != 0 ||
      row_stride % alignof(std::uint16_t) != 0) {
    return invalid;
  }

  double sqrt_signal_sum = 0.0;
  std::int64_t sample_count = 0;
#pragma omp parallel for reduction(+ : sqrt_signal_sum, sample_count) \
    schedule(static) if (sampled_row_count >= 8)
  for (int sampled_row = 0; sampled_row < sampled_row_count; ++sampled_row) {
    const int y = crop_top + sampled_row * kSignalRowStep;
    for (int x = first_x; x < crop_right; x += 2) {
      const std::int64_t byte_offset =
          static_cast<std::int64_t>(y) * row_stride +
          static_cast<std::int64_t>(x) * pixel_stride + component_offset;
      const auto* const sample_address = source + byte_offset;
      const int raw = static_cast<int>(
          *reinterpret_cast<const std::uint16_t*>(sample_address));
      const float stabilized_signal = std::max(
          static_cast<float>(HistogramBinCenter(
              raw, histogram_shift, quantization_half)) -
              black_level,
          0.0f);
      sqrt_signal_sum += std::sqrt(static_cast<double>(stabilized_signal));
      ++sample_count;
    }
  }

  if (sample_count <= 0 || !std::isfinite(sqrt_signal_sum)) {
    return invalid;
  }
  const double mean_sqrt_signal =
      sqrt_signal_sum / static_cast<double>(sample_count);
  const double signal =
      mean_sqrt_signal * mean_sqrt_signal /
      static_cast<double>(normalization_range);
  if (!std::isfinite(signal) || signal < 0.0) {
    return invalid;
  }
  return static_cast<jfloat>(signal);
}

extern "C" JNIEXPORT jboolean JNICALL
Java_com_hinnka_mycamera_raw_DngProfileGainTableValidation_validateGainsNative(
    JNIEnv* env, jobject /* thiz */, jfloatArray gains, jfloat minimum,
    jfloat maximum) {
  if (gains == nullptr || !std::isfinite(minimum) ||
      !std::isfinite(maximum) || maximum < minimum) {
    return JNI_FALSE;
  }
  const jsize count = env->GetArrayLength(gains);
  if (count <= 0) {
    return JNI_FALSE;
  }
  jboolean copied = JNI_FALSE;
  jfloat* const values = env->GetFloatArrayElements(gains, &copied);
  if (values == nullptr) {
    return JNI_FALSE;
  }

  int invalid = 0;
#pragma omp parallel for reduction(| : invalid) schedule(static) if (count >= 16384)
  for (jsize index = 0; index < count; ++index) {
    const float value = values[index];
    if (!std::isfinite(value) || value < minimum || value > maximum) {
      invalid = 1;
    }
  }
  env->ReleaseFloatArrayElements(gains, values, JNI_ABORT);
  return invalid == 0 ? JNI_TRUE : JNI_FALSE;
}
