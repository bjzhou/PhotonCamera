#include <algorithm>
#include <array>
#include <atomic>
#include <cmath>
#include <cstdint>
#include <jni.h>
#include <limits>
#include <new>
#include <vector>

#if defined(__ANDROID__)
#include <android/log.h>
#endif

namespace {

constexpr char kLogTag[] = "PLog_DngHdrNetPgtm";
constexpr float kHdrNetGainEpsilon = 1.0e-6f;
constexpr float kHdrNetLumaRed = 0.298828125f;
constexpr float kHdrNetLumaGreen = 0.5869140625f;
constexpr float kHdrNetLumaBlue = 0.1142578125f;

struct AxisSample {
  int lower;
  int upper;
  float amount;
};

struct RgbSample {
  float red;
  float green;
  float blue;
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
  float* elements_;
  jint release_mode_;
};

void LogError(const char* message) {
#if defined(__ANDROID__)
  __android_log_print(ANDROID_LOG_ERROR, kLogTag, "%s", message);
#else
  (void)message;
#endif
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

AxisSample MakeNormalizedAxisSample(float coordinate, int source_size) {
  const float source_position =
      std::clamp(coordinate, 0.0f, 1.0f) * source_size - 0.5f;
  const float source_floor = std::floor(source_position);
  const int lower_unclamped = static_cast<int>(source_floor);
  return {
      std::clamp(lower_unclamped, 0, source_size - 1),
      std::clamp(lower_unclamped + 1, 0, source_size - 1),
      source_position - source_floor,
  };
}

RgbSample SampleModelRgb(const float* model_input, int input_width,
                         int input_channels, const AxisSample& sample_x,
                         const AxisSample& sample_y) {
  const auto channel_at = [&](int x, int y, int channel) {
    return model_input[
        (static_cast<size_t>(y) * input_width + x) * input_channels + channel];
  };
  const auto sample_channel = [&](int channel) {
    const float top =
        Lerp(channel_at(sample_x.lower, sample_y.lower, channel),
             channel_at(sample_x.upper, sample_y.lower, channel),
             sample_x.amount);
    const float bottom =
        Lerp(channel_at(sample_x.lower, sample_y.upper, channel),
             channel_at(sample_x.upper, sample_y.upper, channel),
             sample_x.amount);
    return Lerp(top, bottom, sample_y.amount);
  };
  return {sample_channel(0), sample_channel(1), sample_channel(2)};
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

float SampleOutputCurve(float input, const float* curve, int curve_count) {
  const float position = std::clamp(input, 0.0f, 1.0f) * (curve_count - 1);
  const int lower = static_cast<int>(position);
  const int upper = std::min(lower + 1, curve_count - 1);
  return Lerp(curve[lower], curve[upper], position - lower);
}

bool IsFiniteArray(const float* values, int count) {
  for (int index = 0; index < count; ++index) {
    if (!std::isfinite(values[index])) return false;
  }
  return true;
}

bool IsValidOutputCurve(const float* curve, int count) {
  if (count < 2 || !IsFiniteArray(curve, count)) return false;
  for (int index = 1; index < count; ++index) {
    if (curve[index] < curve[index - 1]) return false;
  }
  return curve[0] == 0.0f && curve[count - 1] == 1.0f;
}

float RenderMaximumGain(float short_intensity, float render_max_gain,
                        float blend_threshold) {
  if (!(blend_threshold > 0.0f)) return render_max_gain;
  const float blend = std::clamp(
      short_intensity / blend_threshold, 0.0f, 1.0f);
  return Lerp(1.0f, render_max_gain, blend);
}

float HdrNetLuma(const RgbSample& rgb) {
  return rgb.red * kHdrNetLumaRed + rgb.green * kHdrNetLumaGreen + rgb.blue * kHdrNetLumaBlue;
}

float TableIntensity(const RgbSample& rgb, const float* weights) {
  return rgb.red * weights[0] + rgb.green * weights[1] + rgb.blue * weights[2] +
      std::min({rgb.red, rgb.green, rgb.blue}) * weights[3] +
      std::max({rgb.red, rgb.green, rgb.blue}) * weights[4];
}

RgbSample RgbForTableCoordinate(float coordinate, const RgbSample& cell_rgb,
                                float cell_coordinate, float weight_sum) {
  // A positive scalar table cannot reproduce a positive target from non-positive
  // source luma. Define black/signed-noise cells on the neutral axis instead.
  if (cell_coordinate <= kHdrNetGainEpsilon * weight_sum || HdrNetLuma(cell_rgb) <= kHdrNetGainEpsilon) {
    const float gray = coordinate / weight_sum;
    return {gray, gray, gray};
  }
  const float scale = coordinate / cell_coordinate;
  return {cell_rgb.red * scale, cell_rgb.green * scale, cell_rgb.blue * scale};
}

}  // namespace

extern "C" JNIEXPORT jboolean JNICALL
Java_com_hinnka_mycamera_raw_DngHdrNetProfileGainTableNative_nativeGenerateGains(
    JNIEnv* env, jobject, jfloatArray coefficients_array,
    jfloatArray model_input_array,
    jint input_width, jint input_height, jint input_channels,
    jint source_grid_width, jint source_grid_height, jint source_grid_depth,
    jint coefficient_count, jint output_grid_width, jint output_grid_height,
    jint point_count, jfloat hdr_ratio, jfloat source_to_short_gain,
    jfloat renderer_baseline_gain,
    jfloat render_min_gain, jfloat render_max_gain,
    jfloat render_max_gain_blend_threshold,
    jfloat min_table_gain, jfloat max_table_gain,
    jfloatArray guide_shifts_array,
    jfloatArray guide_slopes_array, jfloatArray output_curve_array,
    jfloatArray map_input_weights_array,
    jfloatArray output_gains_array) {
  if (coefficients_array == nullptr || model_input_array == nullptr ||
      guide_shifts_array == nullptr ||
      guide_slopes_array == nullptr || output_curve_array == nullptr ||
      map_input_weights_array == nullptr || output_gains_array == nullptr ||
      input_width <= 0 || input_height <= 0 || input_channels < 3 ||
      source_grid_width <= 0 ||
      source_grid_height <= 0 || source_grid_depth <= 0 ||
      coefficient_count != 2 || output_grid_width <= 0 ||
      output_grid_height <= 0 || point_count <= 1 ||
      !std::isfinite(hdr_ratio) || hdr_ratio < 1.0f ||
      !std::isfinite(source_to_short_gain) || source_to_short_gain <= 0.0f ||
      !std::isfinite(renderer_baseline_gain) || renderer_baseline_gain <= 0.0f ||
      !std::isfinite(render_min_gain) || render_min_gain <= 0.0f ||
      !std::isfinite(render_max_gain) ||
      render_max_gain < render_min_gain ||
      !std::isfinite(render_max_gain_blend_threshold) ||
      render_max_gain_blend_threshold < 0.0f ||
      !std::isfinite(min_table_gain) || min_table_gain <= 0.0f ||
      !std::isfinite(max_table_gain) || max_table_gain < min_table_gain) {
    LogError("Rejected invalid HDRNet PGTM parameters");
    return JNI_FALSE;
  }

  const int64_t coefficient_values =
      static_cast<int64_t>(source_grid_width) * source_grid_height *
      source_grid_depth * coefficient_count;
  const int64_t input_values =
      static_cast<int64_t>(input_width) * input_height * input_channels;
  const int64_t cell_count =
      static_cast<int64_t>(output_grid_width) * output_grid_height;
  if (cell_count > std::numeric_limits<jsize>::max() / point_count) {
    LogError("Rejected oversized HDRNet PGTM grid");
    return JNI_FALSE;
  }
  const int64_t output_values = cell_count * point_count;
  const int guide_count = env->GetArrayLength(guide_shifts_array);
  const int output_curve_count = env->GetArrayLength(output_curve_array);
  if (coefficient_values <= 0 || input_values <= 0 || output_values <= 0 ||
      coefficient_values > std::numeric_limits<jsize>::max() ||
      input_values > std::numeric_limits<jsize>::max() ||
      output_values > std::numeric_limits<jsize>::max() || guide_count <= 0 ||
      env->GetArrayLength(coefficients_array) != coefficient_values ||
      env->GetArrayLength(model_input_array) != input_values ||
      env->GetArrayLength(guide_slopes_array) != guide_count ||
      output_curve_count < 2 ||
      env->GetArrayLength(map_input_weights_array) != 5 ||
      env->GetArrayLength(output_gains_array) != output_values) {
    LogError("Rejected mismatched HDRNet PGTM array geometry");
    return JNI_FALSE;
  }
  ScopedFloatArray coefficients(env, coefficients_array);
  ScopedFloatArray model_input(env, model_input_array);
  ScopedFloatArray guide_shifts(env, guide_shifts_array);
  ScopedFloatArray guide_slopes(env, guide_slopes_array);
  ScopedFloatArray output_curve(env, output_curve_array);
  ScopedFloatArray map_input_weights(env, map_input_weights_array);
  ScopedFloatArray output_gains(env, output_gains_array);
  if (coefficients.data() == nullptr || model_input.data() == nullptr ||
      guide_shifts.data() == nullptr ||
      guide_slopes.data() == nullptr || output_curve.data() == nullptr ||
      map_input_weights.data() == nullptr || output_gains.data() == nullptr) {
    LogError("Unable to acquire HDRNet PGTM arrays");
    return JNI_FALSE;
  }
  if (!IsFiniteArray(coefficients.data(), static_cast<int>(coefficient_values)) ||
      !IsFiniteArray(model_input.data(), static_cast<int>(input_values)) ||
      !IsFiniteArray(guide_shifts.data(), guide_count) ||
      !IsFiniteArray(guide_slopes.data(), guide_count) ||
      !IsFiniteArray(map_input_weights.data(), 5) ||
      !IsValidOutputCurve(output_curve.data(), output_curve_count)) {
    LogError("Rejected non-finite HDRNet PGTM input");
    return JNI_FALSE;
  }

  std::array<float, 5> short_input_weights{};
  float weight_sum = 0.0f;
  for (int index = 0; index < 5; ++index) {
    const float weight = map_input_weights.data()[index] * renderer_baseline_gain / source_to_short_gain;
    if (!std::isfinite(weight) || weight < 0.0f) return JNI_FALSE;
    short_input_weights[index] = weight;
    weight_sum += weight;
  }
  if (!std::isfinite(weight_sum) || weight_sum <= 0.0f) return JNI_FALSE;

  try {
    std::vector<AxisSample> x_samples(static_cast<size_t>(output_grid_width));
    std::vector<AxisSample> y_samples(static_cast<size_t>(output_grid_height));
    std::vector<AxisSample> model_x_samples(static_cast<size_t>(output_grid_width));
    std::vector<AxisSample> model_y_samples(static_cast<size_t>(output_grid_height));
    std::vector<RgbSample> local_model_rgb(static_cast<size_t>(cell_count));
    for (int x = 0; x < output_grid_width; ++x) {
      x_samples[static_cast<size_t>(x)] =
          MakeAxisSample(x, output_grid_width, source_grid_width);
      model_x_samples[static_cast<size_t>(x)] =
          MakeAxisSample(x, output_grid_width, input_width);
    }
    for (int y = 0; y < output_grid_height; ++y) {
      y_samples[static_cast<size_t>(y)] =
          MakeAxisSample(y, output_grid_height, source_grid_height);
      model_y_samples[static_cast<size_t>(y)] =
          MakeAxisSample(y, output_grid_height, input_height);
    }
    for (int cell = 0; cell < cell_count; ++cell) {
      const int x = cell % output_grid_width;
      const int y = cell / output_grid_width;
      local_model_rgb[static_cast<size_t>(cell)] = SampleModelRgb(
          model_input.data(), input_width, input_channels,
          model_x_samples[static_cast<size_t>(x)],
          model_y_samples[static_cast<size_t>(y)]);
    }
    std::atomic<bool> targets_valid{true};
#pragma omp parallel for schedule(static)
    for (int cell = 0; cell < cell_count; ++cell) {
      const int x = cell % output_grid_width;
      const int y = cell / output_grid_width;
      const RgbSample cell_rgb = local_model_rgb[static_cast<size_t>(cell)];
      const float cell_coordinate = TableIntensity(cell_rgb, short_input_weights.data());
      float* const gain_curve =
          output_gains.data() + static_cast<size_t>(cell) * point_count;
      for (int point = 0; point < point_count; ++point) {
        const float coordinate = static_cast<float>(point == 0 ? 1 : point) / point_count;
        const RgbSample short_rgb = RgbForTableCoordinate(
            coordinate, cell_rgb, cell_coordinate, weight_sum);
        const float source_luma = HdrNetLuma(short_rgb);
        const float short_intensity = std::clamp(source_luma, 0.0f, 1.0f);
        const float guide = EvaluateGuide(
            short_intensity, guide_shifts.data(), guide_slopes.data(), guide_count);
        const AxisSample range_sample = MakeNormalizedAxisSample(guide, source_grid_depth);
        const float raw_scale = SampleCoefficient(
            coefficients.data(), source_grid_width, source_grid_depth,
            coefficient_count, x_samples[static_cast<size_t>(x)],
            y_samples[static_cast<size_t>(y)], range_sample, 0);
        const float bias = SampleCoefficient(
            coefficients.data(), source_grid_width, source_grid_depth,
            coefficient_count, x_samples[static_cast<size_t>(x)],
            y_samples[static_cast<size_t>(y)], range_sample, 1);
        const float scale = raw_scale * (hdr_ratio - 1.0f) + 1.0f;
        const float predicted_luma = scale * short_intensity + bias;
        if (!std::isfinite(predicted_luma)) {
          targets_valid.store(false, std::memory_order_relaxed);
          gain_curve[point] = min_table_gain;
          continue;
        }

        // Match MGC's HDRNet renderer: convert the unconstrained affine luma
        // prediction to a gain first, then apply uGainLimits.
        const float render_gain = std::clamp(
            predicted_luma / (short_intensity + kHdrNetGainEpsilon),
            render_min_gain, RenderMaximumGain(
                short_intensity, render_max_gain, render_max_gain_blend_threshold));
        const RgbSample hdrnet_rgb{
            std::clamp(short_rgb.red * render_gain, 0.0f, 1.0f),
            std::clamp(short_rgb.green * render_gain, 0.0f, 1.0f),
            std::clamp(short_rgb.blue * render_gain, 0.0f, 1.0f)};
        const float target_luma = HdrNetLuma(hdrnet_rgb);
        if (!std::isfinite(target_luma)) {
          targets_valid.store(false, std::memory_order_relaxed);
          gain_curve[point] = min_table_gain;
          continue;
        }
        // One forward lookup composes MGC Standard Gamma -> sRGB decode -> inverse
        // ACR3. The forward ACR3 used by the DNG renderer remains unchanged.
        const float pre_curve_target = SampleOutputCurve(
            target_luma, output_curve.data(), output_curve_count);
        // PGTM is applied before BaselineExposure, so divide by source luma after that
        // pending exposure. The subsequent exposure ramp then restores pre_curve_target exactly.
        const float baseline_applied_source_intensity =
            source_luma * renderer_baseline_gain / source_to_short_gain;
        const float gain = std::clamp(
            pre_curve_target / baseline_applied_source_intensity, min_table_gain,
            max_table_gain);
        if (!std::isfinite(gain)) targets_valid.store(false, std::memory_order_relaxed);
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
