#include <algorithm>
#include <android/log.h>
#include <atomic>
#include <cmath>
#include <cstdint>
#include <jni.h>
#include <limits>
#include <new>
#include <vector>

namespace {

constexpr char kLogTag[] = "PLog_DngHdrNetPgtm";

struct AxisSample {
  int lower;
  int upper;
  float amount;
};

class ScopedFloatArray {
 public:
  ScopedFloatArray(JNIEnv* env, jfloatArray array)
      : env_(env), array_(array), elements_(nullptr), release_mode_(JNI_ABORT) {
    if (array_ != nullptr) {
      elements_ = env_->GetFloatArrayElements(array_, nullptr);
    }
  }

  ~ScopedFloatArray() {
    if (elements_ != nullptr) {
      env_->ReleaseFloatArrayElements(array_, elements_, release_mode_);
    }
  }

  float* data() const { return elements_; }
  void CommitOnRelease() { release_mode_ = 0; }

 private:
  JNIEnv* env_;
  jfloatArray array_;
  jfloat* elements_;
  jint release_mode_;
};

void LogError(const char* message) {
  __android_log_print(ANDROID_LOG_ERROR, kLogTag, "%s", message);
}

float Lerp(float first, float second, float amount) {
  return first + (second - first) * amount;
}

AxisSample MakeAxisSample(int output_index, int output_size, int source_size) {
  const float source_position =
      (static_cast<float>(output_index) + 0.5f) * source_size / output_size -
      0.5f;
  const float source_floor = std::floor(source_position);
  const int lower_unclamped = static_cast<int>(source_floor);
  return {
      std::clamp(lower_unclamped, 0, source_size - 1),
      std::clamp(lower_unclamped + 1, 0, source_size - 1),
      source_position - source_floor,
  };
}

float SampleCoefficient(const float* coefficients, int source_width,
                        int source_depth, int coefficient_count,
                        const AxisSample& sample_x,
                        const AxisSample& sample_y,
                        const AxisSample& sample_range, int component) {
  const auto value_at = [&](int x, int y, int depth) {
    const size_t index =
        ((static_cast<size_t>(y) * source_width + x) * source_depth + depth) *
            coefficient_count +
        component;
    return coefficients[index];
  };
  const auto spatial_value_at = [&](int depth) {
    const float top =
        Lerp(value_at(sample_x.lower, sample_y.lower, depth),
             value_at(sample_x.upper, sample_y.lower, depth),
             sample_x.amount);
    const float bottom =
        Lerp(value_at(sample_x.lower, sample_y.upper, depth),
             value_at(sample_x.upper, sample_y.upper, depth),
             sample_x.amount);
    return Lerp(top, bottom, sample_y.amount);
  };
  return Lerp(spatial_value_at(sample_range.lower),
              spatial_value_at(sample_range.upper), sample_range.amount);
}

float EvaluateGuide(float source_luma, const float* shifts,
                    const float* slopes, int guide_count) {
  float guide = 0.0f;
  for (int index = 0; index < guide_count; ++index) {
    guide += slopes[index] * std::max(source_luma - shifts[index], 0.0f);
  }
  return std::clamp(guide, 0.0f, 1.0f);
}

float InputForAcrOutput(float output, const float* curve, int curve_count) {
  const float target = std::clamp(output, curve[0], curve[curve_count - 1]);
  if (target <= curve[0]) return 0.0f;
  if (target >= curve[curve_count - 1]) return 1.0f;

  int lower_index = 0;
  int upper_index = curve_count - 1;
  while (lower_index + 1 < upper_index) {
    const int middle_index = (lower_index + upper_index) >> 1;
    if (curve[middle_index] < target) {
      lower_index = middle_index;
    } else {
      upper_index = middle_index;
    }
  }
  const float lower_output = curve[lower_index];
  const float upper_output = curve[upper_index];
  const float amount = upper_output > lower_output
                           ? (target - lower_output) /
                                 (upper_output - lower_output)
                           : 0.0f;
  return (lower_index + amount) / static_cast<float>(curve_count - 1);
}

float SmoothStep(float edge_0, float edge_1, float value) {
  const float amount = std::clamp(
      (value - edge_0) / std::max(edge_1 - edge_0, 1.0e-6f), 0.0f, 1.0f);
  return amount * amount * (3.0f - 2.0f * amount);
}

float DiagnosticMask(float input, float start, float end, float feather) {
  const float enter = start <= 0.0f || feather <= 0.0f
                          ? (input >= start ? 1.0f : 0.0f)
                          : SmoothStep(start - feather, start + feather, input);
  const float exit = end >= 1.0f || feather <= 0.0f
                         ? (input <= end ? 1.0f : 0.0f)
                         : 1.0f -
                               SmoothStep(end - feather, end + feather, input);
  return std::clamp(std::min(enter, exit), 0.0f, 1.0f);
}

bool IsFiniteArray(const float* values, int count) {
  for (int index = 0; index < count; ++index) {
    if (!std::isfinite(values[index])) return false;
  }
  return true;
}

bool IsValidAcrCurve(const float* curve, int count) {
  if (count < 2 || !IsFiniteArray(curve, count)) return false;
  for (int index = 1; index < count; ++index) {
    if (curve[index] < curve[index - 1]) return false;
  }
  return curve[count - 1] > curve[0];
}

}  // namespace

extern "C" JNIEXPORT jboolean JNICALL
Java_com_hinnka_mycamera_raw_DngHdrNetProfileGainTableNative_nativeGenerateGains(
    JNIEnv* env, jobject, jfloatArray coefficients_array,
    jint source_grid_width, jint source_grid_height, jint source_grid_depth,
    jint coefficient_count, jint output_grid_width, jint output_grid_height,
    jint point_count, jfloat hdr_ratio, jfloat baseline_gain,
    jfloat min_table_gain, jfloat max_table_gain,
    jfloatArray guide_shifts_array,
    jfloatArray guide_slopes_array, jfloatArray acr_curve_array,
    jfloat diagnostic_start, jfloat diagnostic_end,
    jfloat diagnostic_feather, jint diagnostic_mode,
    jfloatArray output_gains_array) {
  if (coefficients_array == nullptr || guide_shifts_array == nullptr ||
      guide_slopes_array == nullptr || acr_curve_array == nullptr ||
      output_gains_array == nullptr || source_grid_width <= 0 ||
      source_grid_height <= 0 || source_grid_depth <= 0 ||
      coefficient_count != 2 || output_grid_width <= 0 ||
      output_grid_height <= 0 || point_count <= 1 ||
      !std::isfinite(hdr_ratio) || hdr_ratio < 1.0f ||
      !std::isfinite(baseline_gain) || baseline_gain <= 0.0f ||
      !std::isfinite(min_table_gain) || min_table_gain <= 0.0f ||
      !std::isfinite(max_table_gain) || max_table_gain < min_table_gain ||
      diagnostic_mode < -1 || diagnostic_mode > 1) {
    LogError("Rejected invalid HDRNet PGTM parameters");
    return JNI_FALSE;
  }

  const int64_t coefficient_values =
      static_cast<int64_t>(source_grid_width) * source_grid_height *
      source_grid_depth * coefficient_count;
  const int64_t cell_count =
      static_cast<int64_t>(output_grid_width) * output_grid_height;
  const int64_t output_values = cell_count * point_count;
  const int guide_count = env->GetArrayLength(guide_shifts_array);
  const int acr_curve_count = env->GetArrayLength(acr_curve_array);
  if (coefficient_values <= 0 || output_values <= 0 ||
      coefficient_values > std::numeric_limits<jsize>::max() ||
      output_values > std::numeric_limits<jsize>::max() || guide_count <= 0 ||
      env->GetArrayLength(coefficients_array) != coefficient_values ||
      env->GetArrayLength(guide_slopes_array) != guide_count ||
      acr_curve_count < 2 ||
      env->GetArrayLength(output_gains_array) != output_values) {
    LogError("Rejected mismatched HDRNet PGTM array geometry");
    return JNI_FALSE;
  }
  if (diagnostic_mode >= 0 &&
      (!std::isfinite(diagnostic_start) ||
       !std::isfinite(diagnostic_end) ||
       !std::isfinite(diagnostic_feather) ||
       diagnostic_start < 0.0f || diagnostic_end > 1.0f ||
       diagnostic_end <= diagnostic_start || diagnostic_feather < 0.0f)) {
    LogError("Rejected invalid HDRNet diagnostic band");
    return JNI_FALSE;
  }

  ScopedFloatArray coefficients(env, coefficients_array);
  ScopedFloatArray guide_shifts(env, guide_shifts_array);
  ScopedFloatArray guide_slopes(env, guide_slopes_array);
  ScopedFloatArray acr_curve(env, acr_curve_array);
  ScopedFloatArray output_gains(env, output_gains_array);
  if (coefficients.data() == nullptr || guide_shifts.data() == nullptr ||
      guide_slopes.data() == nullptr || acr_curve.data() == nullptr ||
      output_gains.data() == nullptr) {
    LogError("Unable to acquire HDRNet PGTM arrays");
    return JNI_FALSE;
  }
  if (!IsFiniteArray(coefficients.data(), static_cast<int>(coefficient_values)) ||
      !IsFiniteArray(guide_shifts.data(), guide_count) ||
      !IsFiniteArray(guide_slopes.data(), guide_count) ||
      !IsValidAcrCurve(acr_curve.data(), acr_curve_count)) {
    LogError("Rejected non-finite HDRNet PGTM input");
    return JNI_FALSE;
  }

  try {
    std::vector<AxisSample> x_samples(static_cast<size_t>(output_grid_width));
    std::vector<AxisSample> y_samples(static_cast<size_t>(output_grid_height));
    std::vector<AxisSample> range_samples(static_cast<size_t>(point_count));
    std::vector<float> source_lumas(static_cast<size_t>(point_count));
    for (int x = 0; x < output_grid_width; ++x) {
      x_samples[static_cast<size_t>(x)] =
          MakeAxisSample(x, output_grid_width, source_grid_width);
    }
    for (int y = 0; y < output_grid_height; ++y) {
      y_samples[static_cast<size_t>(y)] =
          MakeAxisSample(y, output_grid_height, source_grid_height);
    }
    for (int point = 0; point < point_count; ++point) {
      const int evaluated_point = point == 0 ? 1 : point;
      const float source_luma =
          static_cast<float>(evaluated_point) / point_count;
      source_lumas[static_cast<size_t>(point)] = source_luma;
      const float guide =
          EvaluateGuide(source_luma, guide_shifts.data(), guide_slopes.data(),
                        guide_count);
      const float range_position = guide * source_grid_depth - 0.5f;
      const float range_floor = std::floor(range_position);
      const int lower_unclamped = static_cast<int>(range_floor);
      range_samples[static_cast<size_t>(point)] = {
          std::clamp(lower_unclamped, 0, source_grid_depth - 1),
          std::clamp(lower_unclamped + 1, 0, source_grid_depth - 1),
          range_position - range_floor,
      };
    }

    std::atomic<bool> targets_valid{true};
#pragma omp parallel for schedule(static)
    for (int cell = 0; cell < cell_count; ++cell) {
      const int x = cell % output_grid_width;
      const int y = cell / output_grid_width;
      float* const gain_curve =
          output_gains.data() + static_cast<size_t>(cell) * point_count;
      for (int point = 0; point < point_count; ++point) {
        const float source_luma = source_lumas[static_cast<size_t>(point)];
        const AxisSample& range_sample =
            range_samples[static_cast<size_t>(point)];
        const float raw_scale = SampleCoefficient(
            coefficients.data(), source_grid_width, source_grid_depth,
            coefficient_count, x_samples[static_cast<size_t>(x)],
            y_samples[static_cast<size_t>(y)], range_sample, 0);
        const float bias = SampleCoefficient(
            coefficients.data(), source_grid_width, source_grid_depth,
            coefficient_count, x_samples[static_cast<size_t>(x)],
            y_samples[static_cast<size_t>(y)], range_sample, 1);
        const float scale = raw_scale * (hdr_ratio - 1.0f) + 1.0f;
        const float target = scale * source_luma + bias;
        if (!std::isfinite(target)) {
          targets_valid.store(false, std::memory_order_relaxed);
          gain_curve[point] = min_table_gain;
          continue;
        }
        const float target_luma = std::clamp(target, 0.0f, 1.0f);
        const float pre_curve_target = InputForAcrOutput(
            target_luma, acr_curve.data(), acr_curve_count);
        float gain = std::clamp(
            pre_curve_target / (baseline_gain * source_luma), min_table_gain,
            max_table_gain);
        if (diagnostic_mode >= 0) {
          const float mask =
              DiagnosticMask(source_luma, diagnostic_start, diagnostic_end,
                             diagnostic_feather);
          gain = diagnostic_mode == 0 ? Lerp(1.0f, gain, mask)
                                      : Lerp(gain, 1.0f, mask);
          gain = std::clamp(gain, min_table_gain, max_table_gain);
        }
        gain_curve[point] = gain;
      }
    }
    if (!targets_valid.load(std::memory_order_relaxed)) {
      LogError("HDRNet PGTM resampling produced a non-finite target");
      return JNI_FALSE;
    }
  } catch (const std::bad_alloc&) {
    LogError("Unable to allocate native HDRNet PGTM working buffers");
    return JNI_FALSE;
  }

  output_gains.CommitOnRelease();
  return env->ExceptionCheck() ? JNI_FALSE : JNI_TRUE;
}
