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
constexpr float kHdrNetGainEpsilon = 1.0e-6f;
constexpr float kHdrNetLumaRed = 0.298828125f;
constexpr float kHdrNetLumaGreen = 0.5869140625f;
constexpr float kHdrNetLumaBlue = 0.1142578125f;
constexpr float kDisplayLumaRed = 0.2126f;
constexpr float kDisplayLumaGreen = 0.7152f;
constexpr float kDisplayLumaBlue = 0.0722f;

struct AxisSample {
  int lower;
  int upper;
  float amount;
};

struct NormalizedImagePoint {
  float u;
  float v;
};

// Shared RAW/Bitmap contract: row zero is the image top, and positive rotation is clockwise.
// Returns the source point sampled by one point in the rotated output image.
NormalizedImagePoint MapTopLeftOutputToSource(float output_u,
                                             float output_v,
                                             int clockwise_rotation) {
  if (clockwise_rotation == 90) {
    return {output_v, 1.0f - output_u};
  }
  if (clockwise_rotation == 180) {
    return {1.0f - output_u, 1.0f - output_v};
  }
  if (clockwise_rotation == 270) {
    return {1.0f - output_v, output_u};
  }
  return {output_u, output_v};
}

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

struct RgbSample {
  float red;
  float green;
  float blue;
};

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
Java_com_hinnka_mycamera_raw_DngHdrNetProfileGainTableNative_nativeEvaluateDisplayLinearLumaGrid(
    JNIEnv* env, jobject, jfloatArray coefficients_array,
    jint source_grid_width, jint source_grid_height, jint source_grid_depth,
    jint coefficient_count, jfloatArray model_input_array,
    jint input_width, jint input_height, jint input_channels,
    jint output_grid_width, jint output_grid_height,
    jint footprint_samples_per_axis, jfloat hdr_ratio,
    jfloat render_min_gain, jfloat render_max_gain, jint output_rotation,
    jfloatArray guide_shifts_array, jfloatArray guide_slopes_array,
    jfloatArray output_lumas_array) {
  if (coefficients_array == nullptr || model_input_array == nullptr ||
      guide_shifts_array == nullptr || guide_slopes_array == nullptr ||
      output_lumas_array == nullptr || source_grid_width <= 0 ||
      source_grid_height <= 0 || source_grid_depth <= 0 ||
      coefficient_count != 2 || input_width <= 0 || input_height <= 0 ||
      input_channels < 3 || output_grid_width <= 0 || output_grid_height <= 0 ||
      footprint_samples_per_axis <= 0 || footprint_samples_per_axis > 16 ||
      !std::isfinite(hdr_ratio) ||
      hdr_ratio < 1.0f || !std::isfinite(render_min_gain) ||
      render_min_gain <= 0.0f || !std::isfinite(render_max_gain) ||
      render_max_gain < render_min_gain ||
      (output_rotation != 0 && output_rotation != 90 &&
       output_rotation != 180 && output_rotation != 270)) {
    LogError("Rejected invalid HDRNet display-grid parameters");
    return JNI_FALSE;
  }

  const int64_t coefficient_values =
      static_cast<int64_t>(source_grid_width) * source_grid_height *
      source_grid_depth * coefficient_count;
  const int64_t input_values =
      static_cast<int64_t>(input_width) * input_height * input_channels;
  const int64_t output_values =
      static_cast<int64_t>(output_grid_width) * output_grid_height;
  const int guide_count = env->GetArrayLength(guide_shifts_array);
  if (coefficient_values <= 0 || input_values <= 0 || output_values <= 0 ||
      coefficient_values > std::numeric_limits<jsize>::max() ||
      input_values > std::numeric_limits<jsize>::max() ||
      output_values > std::numeric_limits<jsize>::max() || guide_count <= 0 ||
      env->GetArrayLength(coefficients_array) != coefficient_values ||
      env->GetArrayLength(model_input_array) != input_values ||
      env->GetArrayLength(guide_slopes_array) != guide_count ||
      env->GetArrayLength(output_lumas_array) != output_values) {
    LogError("Rejected mismatched HDRNet display-grid geometry");
    return JNI_FALSE;
  }

  ScopedFloatArray coefficients(env, coefficients_array);
  ScopedFloatArray model_input(env, model_input_array);
  ScopedFloatArray guide_shifts(env, guide_shifts_array);
  ScopedFloatArray guide_slopes(env, guide_slopes_array);
  ScopedFloatArray output_lumas(env, output_lumas_array);
  if (coefficients.data() == nullptr || model_input.data() == nullptr ||
      guide_shifts.data() == nullptr || guide_slopes.data() == nullptr ||
      output_lumas.data() == nullptr) {
    LogError("Unable to acquire HDRNet display-grid arrays");
    return JNI_FALSE;
  }
  if (!IsFiniteArray(coefficients.data(), static_cast<int>(coefficient_values)) ||
      !IsFiniteArray(model_input.data(), static_cast<int>(input_values)) ||
      !IsFiniteArray(guide_shifts.data(), guide_count) ||
      !IsFiniteArray(guide_slopes.data(), guide_count)) {
    LogError("Rejected non-finite HDRNet display-grid input");
    return JNI_FALSE;
  }

  const int output_count = static_cast<int>(output_values);
  const int footprint_sample_count =
      footprint_samples_per_axis * footprint_samples_per_axis;
  std::atomic<bool> output_valid{true};
#pragma omp parallel for schedule(static)
  for (int cell = 0; cell < output_count; ++cell) {
    const int grid_x = cell % output_grid_width;
    const int grid_y = cell / output_grid_width;
    double luma_sum = 0.0;
    for (int sample_y = 0; sample_y < footprint_samples_per_axis; ++sample_y) {
      const float output_v_top =
          (grid_y + (sample_y + 0.5f) / footprint_samples_per_axis) /
          output_grid_height;
      for (int sample_x = 0; sample_x < footprint_samples_per_axis; ++sample_x) {
        const float output_u =
            (grid_x + (sample_x + 0.5f) / footprint_samples_per_axis) /
            output_grid_width;
        // HDRNet now samples the same top-left/clockwise coordinates as the RAW render and the
        // already-rotated Android Bitmap used as the viewfinder reference.
        const NormalizedImagePoint source = MapTopLeftOutputToSource(
            output_u, output_v_top, output_rotation);
        const float source_u = source.u;
        const float source_v = source.v;

        const AxisSample input_x =
            MakeNormalizedAxisSample(source_u, input_width);
        const AxisSample input_y =
            MakeNormalizedAxisSample(source_v, input_height);
        const RgbSample short_rgb = SampleModelRgb(
            model_input.data(), input_width, input_channels, input_x, input_y);
        const float short_intensity = std::clamp(
            short_rgb.red * kHdrNetLumaRed +
                short_rgb.green * kHdrNetLumaGreen +
                short_rgb.blue * kHdrNetLumaBlue,
            0.0f, 1.0f);
        const float guide =
            EvaluateGuide(short_intensity, guide_shifts.data(),
                          guide_slopes.data(), guide_count);
        const AxisSample grid_x_sample =
            MakeNormalizedAxisSample(source_u, source_grid_width);
        const AxisSample grid_y_sample =
            MakeNormalizedAxisSample(source_v, source_grid_height);
        const AxisSample range_sample =
            MakeNormalizedAxisSample(guide, source_grid_depth);
        const float raw_scale = SampleCoefficient(
            coefficients.data(), source_grid_width, source_grid_depth,
            coefficient_count, grid_x_sample, grid_y_sample, range_sample, 0);
        const float bias = SampleCoefficient(
            coefficients.data(), source_grid_width, source_grid_depth,
            coefficient_count, grid_x_sample, grid_y_sample, range_sample, 1);
        const float scale = raw_scale * (hdr_ratio - 1.0f) + 1.0f;
        const float predicted_luma = scale * short_intensity + bias;
        if (!std::isfinite(predicted_luma)) {
          output_valid.store(false, std::memory_order_relaxed);
          continue;
        }
        const float render_gain = std::clamp(
            predicted_luma / (short_intensity + kHdrNetGainEpsilon),
            render_min_gain, render_max_gain);
        // Match the classic ARGB path after its per-channel sRGB EOTF: clamp the rendered
        // linear RGB channels, compute Rec.709 display-linear luma, then average the footprint.
        // This is exactly the domain consumed by the shared exposure solver.
        const float display_red = std::clamp(short_rgb.red * render_gain, 0.0f, 1.0f);
        const float display_green =
            std::clamp(short_rgb.green * render_gain, 0.0f, 1.0f);
        const float display_blue =
            std::clamp(short_rgb.blue * render_gain, 0.0f, 1.0f);
        luma_sum += display_red * kDisplayLumaRed +
            display_green * kDisplayLumaGreen +
            display_blue * kDisplayLumaBlue;
      }
    }
    output_lumas.data()[cell] =
        static_cast<float>(luma_sum / footprint_sample_count);
  }
  if (!output_valid.load(std::memory_order_relaxed) ||
      !IsFiniteArray(output_lumas.data(), static_cast<int>(output_values))) {
    LogError("HDRNet display-linear grid evaluation produced a non-finite value");
    return JNI_FALSE;
  }
  output_lumas.CommitOnRelease();
  return env->ExceptionCheck() ? JNI_FALSE : JNI_TRUE;
}

extern "C" JNIEXPORT jboolean JNICALL
Java_com_hinnka_mycamera_raw_DngHdrNetProfileGainTableNative_nativeGenerateGains(
    JNIEnv* env, jobject, jfloatArray coefficients_array,
    jint source_grid_width, jint source_grid_height, jint source_grid_depth,
    jint coefficient_count, jint output_grid_width, jint output_grid_height,
    jint point_count, jfloat hdr_ratio, jfloat source_to_short_gain,
    jfloat renderer_baseline_gain,
    jfloat render_min_gain, jfloat render_max_gain,
    jfloat render_max_gain_blend_threshold,
    jfloat min_table_gain, jfloat max_table_gain,
    jfloatArray guide_shifts_array,
    jfloatArray guide_slopes_array, jfloatArray acr_curve_array,
    jfloatArray output_gains_array) {
  if (coefficients_array == nullptr || guide_shifts_array == nullptr ||
      guide_slopes_array == nullptr || acr_curve_array == nullptr ||
      output_gains_array == nullptr || source_grid_width <= 0 ||
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
    std::vector<float> short_intensities(static_cast<size_t>(point_count));
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
      // Adobe indexes a table with weight * tableSize, so entry p represents p / tableSize.
      // MapInputWeights already reparameterizes this N axis into Pixel's final-short intensity.
      const float short_intensity =
          static_cast<float>(evaluated_point) / point_count;
      short_intensities[static_cast<size_t>(point)] = short_intensity;
      const float guide =
          EvaluateGuide(short_intensity, guide_shifts.data(), guide_slopes.data(),
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
        const float short_intensity =
            short_intensities[static_cast<size_t>(point)];
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
        const float predicted_luma = scale * short_intensity + bias;
        if (!std::isfinite(predicted_luma)) {
          targets_valid.store(false, std::memory_order_relaxed);
          gain_curve[point] = min_table_gain;
          continue;
        }

        // Match MGC's HDRNet renderer: convert the unconstrained affine luma
        // prediction to a gain first, then apply uGainLimits. Clamping the
        // affine output itself to zero would turn negative local predictions
        // into DNG's 1/4096 legal minimum and produce grid-shaped black areas.
        float render_max_gain_for_luma = render_max_gain;
        if (render_max_gain_blend_threshold > 0.0f) {
          const float blend = std::clamp(
              short_intensity / render_max_gain_blend_threshold, 0.0f, 1.0f);
          render_max_gain_for_luma = Lerp(1.0f, render_max_gain, blend);
        }
        const float render_gain = std::clamp(
            predicted_luma / (short_intensity + kHdrNetGainEpsilon),
            render_min_gain, render_max_gain_for_luma);
        const float target_luma = std::clamp(
            short_intensity * render_gain, 0.0f, 1.0f);
        const float pre_curve_target = InputForAcrOutput(
            target_luma, acr_curve.data(), acr_curve_count);
        // The N axis is final-short intensity = stored source * sourceToShortGain. PGTM itself is
        // applied before the renderer's BaselineExposure, so divide by the source value after that
        // pending exposure. The subsequent exposure ramp then restores pre_curve_target exactly.
        const float baseline_applied_source_intensity =
            short_intensity * renderer_baseline_gain / source_to_short_gain;
        const float gain = std::clamp(
            pre_curve_target / baseline_applied_source_intensity, min_table_gain,
            max_table_gain);
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
