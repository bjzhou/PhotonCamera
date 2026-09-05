#include <algorithm>
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
constexpr float kDisplayLumaRed = 0.2126f;
constexpr float kDisplayLumaGreen = 0.7152f;
constexpr float kDisplayLumaBlue = 0.0722f;
constexpr int kDehazeCurveValueCount = 8;
constexpr int kEvaluationMetricCount = 1;
constexpr int kPostDehazeP99PeakMetric = 0;
constexpr float kPostDehazePeakQuantile = 0.99f;
constexpr int kDehazeHistogramSize = 877;
constexpr int kHighlightHistogramSize = 5251;
constexpr float kDehazeSignalMax = 4095.0f;
constexpr int kDehazeQuantileSampleCount = 20;
constexpr int kHighlightQuantileSampleCount = 5;
constexpr float kDehazeQuantile = 0.001f;
constexpr float kDehazeQuantileLow = 0.1f;
constexpr float kDehazeQuantileHigh = 1.9f;
constexpr float kDehazeLevelLimit = 172.0f;
constexpr float kDehazePointLowScale = 0.6f;
constexpr float kDehazePointHighScale = 1.2f;
constexpr float kDehazeDamping = 0.98f;
constexpr float kHighlightQuantile = 0.993f;
constexpr float kHighlightTarget = 0.94f;
constexpr float kHighlightWindowMin = 0.01f;
constexpr float kHighlightWindowMax = 0.05f;
constexpr float kHighlightScaleMin = 0.78f;
constexpr float kHighlightScaleMax = 1.7f;
constexpr float kMinimumCurveInterval = 1.0e-6f;

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

struct DehazeCurve {
  float haze_point_low = 0.0f;
  float haze_point_high = 0.0f;
  float highlight_scale = 1.0f;
  float quadratic_coefficient = 0.0f;
  float linear_slope = 1.0f;
  float shoulder_value = 0.0f;
  float detected_highlight_scale = 1.0f;
  int sampled_pixel_count = 1;
};

float RenderMaximumGain(float short_intensity, float render_max_gain,
                        float blend_threshold) {
  if (!(blend_threshold > 0.0f)) return render_max_gain;
  const float blend = std::clamp(
      short_intensity / blend_threshold, 0.0f, 1.0f);
  return Lerp(1.0f, render_max_gain, blend);
}

bool EvaluateHdrNetRgb(
    const float* coefficients, int source_grid_width, int source_grid_height,
    int source_grid_depth, int coefficient_count, const float* model_input, int input_width,
    int input_height, int input_channels, float source_u, float source_v, float hdr_ratio,
    float render_min_gain, float render_max_gain,
    float render_max_gain_blend_threshold, const float* guide_shifts,
    const float* guide_slopes, int guide_count, RgbSample* output) {
  if (output == nullptr) return false;
  const AxisSample input_x =
      MakeNormalizedAxisSample(source_u, input_width);
  const AxisSample input_y =
      MakeNormalizedAxisSample(source_v, input_height);
  const RgbSample short_rgb = SampleModelRgb(
      model_input, input_width, input_channels, input_x, input_y);
  const float short_intensity = std::clamp(
      short_rgb.red * kHdrNetLumaRed +
          short_rgb.green * kHdrNetLumaGreen +
          short_rgb.blue * kHdrNetLumaBlue,
      0.0f, 1.0f);
  const float guide = EvaluateGuide(
      short_intensity, guide_shifts, guide_slopes, guide_count);
  const AxisSample grid_x_sample =
      MakeNormalizedAxisSample(source_u, source_grid_width);
  const AxisSample grid_y_sample =
      MakeNormalizedAxisSample(source_v, source_grid_height);
  const AxisSample range_sample =
      MakeNormalizedAxisSample(guide, source_grid_depth);
  const float raw_scale = SampleCoefficient(
      coefficients, source_grid_width, source_grid_depth, coefficient_count,
      grid_x_sample, grid_y_sample, range_sample, 0);
  const float bias = SampleCoefficient(
      coefficients, source_grid_width, source_grid_depth, coefficient_count,
      grid_x_sample, grid_y_sample, range_sample, 1);
  const float scale = raw_scale * (hdr_ratio - 1.0f) + 1.0f;
  const float predicted_luma = scale * short_intensity + bias;
  if (!std::isfinite(predicted_luma)) return false;
  const float render_gain = std::clamp(
      predicted_luma / (short_intensity + kHdrNetGainEpsilon),
      render_min_gain,
      RenderMaximumGain(short_intensity, render_max_gain,
                        render_max_gain_blend_threshold));
  *output = {
      std::clamp(short_rgb.red * render_gain, 0.0f, 1.0f),
      std::clamp(short_rgb.green * render_gain, 0.0f, 1.0f),
      std::clamp(short_rgb.blue * render_gain, 0.0f, 1.0f),
  };
  return std::isfinite(output->red) && std::isfinite(output->green) &&
      std::isfinite(output->blue);
}

float HistogramQuantile(const std::vector<uint32_t>& cumulative,
                        float target) {
  if (cumulative.empty()) return 0.0f;
  const float bounded_target = std::clamp(
      target, 0.0f, static_cast<float>(cumulative.back()));
  const auto found = std::lower_bound(
      cumulative.begin(), cumulative.end(), bounded_target,
      [](uint32_t count, float requested) {
        return static_cast<float>(count) < requested;
      });
  const int index = found == cumulative.end()
                        ? static_cast<int>(cumulative.size()) - 1
                        : static_cast<int>(found - cumulative.begin());
  if (index == 0) return 0.0f;
  const float previous = static_cast<float>(cumulative[index - 1]);
  const float current = static_cast<float>(cumulative[index]);
  if (!(current > previous)) return static_cast<float>(index);
  const float fraction = std::clamp(
      (bounded_target - previous) / (current - previous), 0.0f, 1.0f);
  return static_cast<float>(index - 1) + fraction;
}

std::vector<uint32_t> CumulativeHistogram(
    const std::vector<uint32_t>& histogram) {
  std::vector<uint32_t> cumulative(histogram.size());
  uint32_t sum = 0;
  for (size_t index = 0; index < histogram.size(); ++index) {
    sum += histogram[index];
    cumulative[index] = sum;
  }
  return cumulative;
}

void AddDehazeHistogramSample(
    const RgbSample& rgb, std::vector<uint32_t>* haze_histogram,
    std::vector<uint32_t>* highlight_histogram, int* sample_count) {
  const int red = static_cast<int>(std::floor(
      std::clamp(rgb.red, 0.0f, 1.0f) * kDehazeSignalMax + 0.5f));
  const int green = static_cast<int>(std::floor(
      std::clamp(rgb.green, 0.0f, 1.0f) * kDehazeSignalMax + 0.5f));
  const int blue = static_cast<int>(std::floor(
      std::clamp(rgb.blue, 0.0f, 1.0f) * kDehazeSignalMax + 0.5f));
  const int minimum = std::min({red, green, blue});
  const int maximum = std::max({red, green, blue});
  const int haze_bin = std::clamp(
      red + green + blue, 0, kDehazeHistogramSize - 1);
  const int highlight_bin = std::clamp(
      maximum + (maximum - minimum) / 8,
      0, kHighlightHistogramSize - 1);
  ++(*haze_histogram)[static_cast<size_t>(haze_bin)];
  ++(*highlight_histogram)[static_cast<size_t>(highlight_bin)];
  ++(*sample_count);
}

DehazeCurve EstimateDehazeCurve(
    const std::vector<uint32_t>& haze_histogram,
    const std::vector<uint32_t>& highlight_histogram, int sample_count,
    float strength, float dynamic_highlight_strength) {
  DehazeCurve curve;
  curve.sampled_pixel_count = std::max(sample_count, 1);
  if (sample_count <= 0) return curve;
  const std::vector<uint32_t> cumulative_haze =
      CumulativeHistogram(haze_histogram);
  const std::vector<uint32_t> cumulative_highlight =
      CumulativeHistogram(highlight_histogram);

  const float distance_from_white = 1.0f - kHighlightQuantile;
  const float adaptive_window_mix =
      std::clamp(distance_from_white * 5.0f, 0.0f, 1.0f);
  const float maximum_half_window = kHighlightWindowMin +
      (kHighlightWindowMax - kHighlightWindowMin) * adaptive_window_mix;
  const float half_window = std::min(distance_from_white, maximum_half_window);
  float highlight_sum = 0.0f;
  for (int index = 0; index < kHighlightQuantileSampleCount; ++index) {
    const float position = static_cast<float>(index) /
        static_cast<float>(kHighlightQuantileSampleCount - 1);
    const float quantile_position =
        (kHighlightQuantile - half_window) + 2.0f * half_window * position;
    highlight_sum += HistogramQuantile(
        cumulative_highlight, quantile_position * sample_count) /
        kDehazeSignalMax;
  }
  const float mean_highlight =
      highlight_sum / kHighlightQuantileSampleCount;
  const float raw_highlight_scale = mean_highlight > 1.0e-6f
      ? kHighlightTarget / mean_highlight
      : kHighlightScaleMax;
  curve.detected_highlight_scale = std::clamp(
      raw_highlight_scale, kHighlightScaleMin, kHighlightScaleMax);
  curve.highlight_scale = 1.0f +
      (curve.detected_highlight_scale - 1.0f) * dynamic_highlight_strength;

  float haze_level_sum = 0.0f;
  for (int index = 0; index < kDehazeQuantileSampleCount; ++index) {
    const float position = static_cast<float>(index) /
        static_cast<float>(kDehazeQuantileSampleCount - 1);
    const float multiplier = kDehazeQuantileLow +
        (kDehazeQuantileHigh - kDehazeQuantileLow) * position;
    const float summed_rgb_bin = HistogramQuantile(
        cumulative_haze, kDehazeQuantile * multiplier * sample_count);
    haze_level_sum += std::min(summed_rgb_bin / 3.0f, kDehazeLevelLimit);
  }
  const float haze_level = haze_level_sum / kDehazeQuantileSampleCount;
  const float haze_base = curve.highlight_scale * haze_level *
      kDehazeDamping * strength;
  curve.haze_point_low = std::clamp(
      kDehazePointLowScale * haze_base / kDehazeSignalMax, 0.0f, 1.0f);
  curve.haze_point_high = std::clamp(
      kDehazePointHighScale * haze_base / kDehazeSignalMax,
      curve.haze_point_low, 1.0f);
  const float interval = curve.haze_point_high - curve.haze_point_low;
  if (interval > kMinimumCurveInterval) {
    curve.quadratic_coefficient = 1.0f /
        (interval * interval +
         2.0f * (1.0f - curve.haze_point_high) * interval);
    curve.shoulder_value =
        interval * interval * curve.quadratic_coefficient;
    curve.linear_slope = curve.haze_point_high < 1.0f
        ? (1.0f - curve.shoulder_value) /
              (1.0f - curve.haze_point_high)
        : 0.0f;
  }
  return curve;
}

float MappedDehazeLuminance(float input, const DehazeCurve& curve) {
  const float normalized = std::clamp(input, 0.0f, 1.0f);
  const float scaled = std::min(normalized * curve.highlight_scale, 1.0f);
  const float distance = std::max(scaled - curve.haze_point_low, 0.0f);
  const float mapped = scaled < curve.haze_point_high
      ? distance * distance * curve.quadratic_coefficient
      : curve.shoulder_value +
            (scaled - curve.haze_point_high) * curve.linear_slope;
  return std::clamp(mapped, 0.0f, 1.0f);
}

RgbSample ApplyDehaze(const RgbSample& rgb, const DehazeCurve& curve) {
  const float mean = (rgb.red + rgb.green + rgb.blue) / 3.0f;
  const float gain = MappedDehazeLuminance(mean, curve) /
      std::max(std::clamp(mean, 0.0f, 1.0f), 1.0e-6f);
  return {
      std::clamp(rgb.red * gain, 0.0f, 1.0f),
      std::clamp(rgb.green * gain, 0.0f, 1.0f),
      std::clamp(rgb.blue * gain, 0.0f, 1.0f),
  };
}

float DehazedHdrNetTargetLuma(float short_intensity, float render_gain,
                              const RgbSample& cell_rgb,
                              float cell_intensity,
                              const DehazeCurve& curve) {
  const float hdrnet_target_luma = std::clamp(
      short_intensity * render_gain, 0.0f, 1.0f);
  const float source_scale = cell_intensity > kHdrNetGainEpsilon
      ? short_intensity / cell_intensity
      : 0.0f;
  const RgbSample hdrnet_rgb = cell_intensity > kHdrNetGainEpsilon
      ? RgbSample{
            std::clamp(cell_rgb.red * source_scale * render_gain, 0.0f, 1.0f),
            std::clamp(cell_rgb.green * source_scale * render_gain, 0.0f, 1.0f),
            std::clamp(cell_rgb.blue * source_scale * render_gain, 0.0f, 1.0f),
        }
      : RgbSample{
            hdrnet_target_luma,
            hdrnet_target_luma,
            hdrnet_target_luma,
        };
  const float hdrnet_mean =
      (hdrnet_rgb.red + hdrnet_rgb.green + hdrnet_rgb.blue) / 3.0f;
  const float dehaze_gain = MappedDehazeLuminance(hdrnet_mean, curve) /
      std::max(std::clamp(hdrnet_mean, 0.0f, 1.0f), 1.0e-6f);
  return std::clamp(hdrnet_target_luma * dehaze_gain, 0.0f, 1.0f);
}

void WriteDehazeCurve(const DehazeCurve& curve, float* values) {
  values[0] = curve.haze_point_low;
  values[1] = curve.haze_point_high;
  values[2] = curve.highlight_scale;
  values[3] = curve.quadratic_coefficient;
  values[4] = curve.linear_slope;
  values[5] = curve.shoulder_value;
  values[6] = curve.detected_highlight_scale;
  values[7] = static_cast<float>(curve.sampled_pixel_count);
}

bool ReadDehazeCurve(const float* values, int count, DehazeCurve* curve) {
  if (values == nullptr || curve == nullptr || count != kDehazeCurveValueCount ||
      !IsFiniteArray(values, count)) {
    return false;
  }
  *curve = DehazeCurve{
      values[0], values[1], values[2], values[3], values[4], values[5],
      values[6], std::max(static_cast<int>(std::lround(values[7])), 1),
  };
  return curve->haze_point_low >= 0.0f &&
      curve->haze_point_high >= curve->haze_point_low &&
      curve->haze_point_high <= 1.0f && curve->highlight_scale > 0.0f &&
      curve->quadratic_coefficient >= 0.0f && curve->linear_slope >= 0.0f;
}

}  // namespace

extern "C" JNIEXPORT jboolean JNICALL
Java_com_hinnka_mycamera_raw_DngHdrNetProfileGainTableNative_nativeEvaluateDisplayLinearLumaGrid(
    JNIEnv* env, jobject, jfloatArray coefficients_array,
    jint source_grid_width, jint source_grid_height, jint source_grid_depth,
    jint coefficient_count, jfloatArray model_input_array,
    jint input_width, jint input_height, jint input_channels,
    jint output_grid_width, jint output_grid_height,
    jfloat hdr_ratio,
    jfloat render_min_gain, jfloat render_max_gain,
    jfloat render_max_gain_blend_threshold, jboolean dehaze_enabled,
    jfloat dehaze_strength, jfloat dynamic_highlight_strength,
    jint output_rotation,
    jfloatArray guide_shifts_array, jfloatArray guide_slopes_array,
    jfloatArray output_lumas_array, jfloatArray output_dehaze_curve_array,
    jfloatArray output_metrics_array) {
  if (coefficients_array == nullptr || model_input_array == nullptr ||
      guide_shifts_array == nullptr || guide_slopes_array == nullptr ||
      output_lumas_array == nullptr || output_dehaze_curve_array == nullptr ||
      output_metrics_array == nullptr ||
      source_grid_width <= 0 ||
      source_grid_height <= 0 || source_grid_depth <= 0 ||
      coefficient_count != 2 || input_width <= 0 || input_height <= 0 ||
      input_channels < 3 || output_grid_width <= 0 || output_grid_height <= 0 ||
      !std::isfinite(hdr_ratio) ||
      hdr_ratio < 1.0f || !std::isfinite(render_min_gain) ||
      render_min_gain <= 0.0f || !std::isfinite(render_max_gain) ||
      render_max_gain < render_min_gain ||
      !std::isfinite(render_max_gain_blend_threshold) ||
      render_max_gain_blend_threshold < 0.0f ||
      !std::isfinite(dehaze_strength) || dehaze_strength < 0.0f ||
      !std::isfinite(dynamic_highlight_strength) ||
      dynamic_highlight_strength < 0.0f || dynamic_highlight_strength > 1.0f ||
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
      env->GetArrayLength(output_lumas_array) != output_values ||
      env->GetArrayLength(output_dehaze_curve_array) != kDehazeCurveValueCount ||
      env->GetArrayLength(output_metrics_array) != kEvaluationMetricCount) {
    LogError("Rejected mismatched HDRNet display-grid geometry");
    return JNI_FALSE;
  }

  ScopedFloatArray coefficients(env, coefficients_array);
  ScopedFloatArray model_input(env, model_input_array);
  ScopedFloatArray guide_shifts(env, guide_shifts_array);
  ScopedFloatArray guide_slopes(env, guide_slopes_array);
  ScopedFloatArray output_lumas(env, output_lumas_array);
  ScopedFloatArray output_dehaze_curve(env, output_dehaze_curve_array);
  ScopedFloatArray output_metrics(env, output_metrics_array);
  if (coefficients.data() == nullptr || model_input.data() == nullptr ||
      guide_shifts.data() == nullptr || guide_slopes.data() == nullptr ||
      output_lumas.data() == nullptr || output_dehaze_curve.data() == nullptr ||
      output_metrics.data() == nullptr) {
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

  DehazeCurve dehaze_curve;
  std::vector<RgbSample> full_image_display_rgb;
  try {
    const int full_image_pixel_count = input_width * input_height;
    full_image_display_rgb.resize(static_cast<size_t>(full_image_pixel_count));
    std::vector<uint32_t> haze_histogram;
    std::vector<uint32_t> highlight_histogram;
    int sample_count = 0;
    if (dehaze_enabled == JNI_TRUE) {
      haze_histogram.assign(kDehazeHistogramSize, 0);
      highlight_histogram.assign(kHighlightHistogramSize, 0);
    }
    for (int y = 0; y < input_height; ++y) {
      const float source_v = (static_cast<float>(y) + 0.5f) / input_height;
      for (int x = 0; x < input_width; ++x) {
        const float source_u = (static_cast<float>(x) + 0.5f) / input_width;
        RgbSample hdr_rgb{};
        if (!EvaluateHdrNetRgb(
                coefficients.data(), source_grid_width, source_grid_height,
                source_grid_depth, coefficient_count, model_input.data(),
                input_width, input_height, input_channels, source_u, source_v,
                hdr_ratio, render_min_gain, render_max_gain,
                render_max_gain_blend_threshold, guide_shifts.data(),
                guide_slopes.data(), guide_count, &hdr_rgb)) {
          LogError("HDRNet full-image evaluation produced a non-finite value");
          return JNI_FALSE;
        }
        full_image_display_rgb[static_cast<size_t>(y * input_width + x)] = hdr_rgb;
        if (dehaze_enabled == JNI_TRUE) {
          AddDehazeHistogramSample(
              hdr_rgb, &haze_histogram, &highlight_histogram, &sample_count);
        }
      }
    }
    if (dehaze_enabled == JNI_TRUE) {
      dehaze_curve = EstimateDehazeCurve(
          haze_histogram, highlight_histogram, sample_count,
          dehaze_strength, dynamic_highlight_strength);
    } else {
      dehaze_curve.sampled_pixel_count = full_image_pixel_count;
    }
    std::vector<float> post_dehaze_peaks(
        static_cast<size_t>(full_image_pixel_count));
#pragma omp parallel for schedule(static)
    for (int index = 0; index < full_image_pixel_count; ++index) {
      const RgbSample rgb = ApplyDehaze(
          full_image_display_rgb[static_cast<size_t>(index)], dehaze_curve);
      full_image_display_rgb[static_cast<size_t>(index)] = rgb;
      post_dehaze_peaks[static_cast<size_t>(index)] =
          std::max({rgb.red, rgb.green, rgb.blue});
    }
    const size_t quantile_index = static_cast<size_t>(std::floor(
        kPostDehazePeakQuantile * (full_image_pixel_count - 1)));
    std::nth_element(
        post_dehaze_peaks.begin(),
        post_dehaze_peaks.begin() + quantile_index,
        post_dehaze_peaks.end());
    output_metrics.data()[kPostDehazeP99PeakMetric] =
        post_dehaze_peaks[quantile_index];
  } catch (const std::bad_alloc&) {
    LogError("Unable to allocate HDRNet full-image evaluation buffers");
    return JNI_FALSE;
  }
  WriteDehazeCurve(dehaze_curve, output_dehaze_curve.data());

  const int output_count = static_cast<int>(output_values);
  const bool swaps_axes = output_rotation == 90 || output_rotation == 270;
  const int oriented_width = swaps_axes ? input_height : input_width;
  const int oriented_height = swaps_axes ? input_width : input_height;
  std::atomic<bool> output_valid{true};
#pragma omp parallel for schedule(static)
  for (int cell = 0; cell < output_count; ++cell) {
    const int grid_x = cell % output_grid_width;
    const int grid_y = cell / output_grid_width;
    const int x_begin =
        (grid_x * oriented_width + output_grid_width - 1) / output_grid_width;
    const int x_end =
        ((grid_x + 1) * oriented_width + output_grid_width - 1) /
        output_grid_width;
    const int y_begin =
        (grid_y * oriented_height + output_grid_height - 1) / output_grid_height;
    const int y_end =
        ((grid_y + 1) * oriented_height + output_grid_height - 1) /
        output_grid_height;
    double luma_sum = 0.0;
    int sample_count = 0;
    for (int output_y = y_begin; output_y < y_end; ++output_y) {
      const float output_v_top =
          (static_cast<float>(output_y) + 0.5f) / oriented_height;
      for (int output_x = x_begin; output_x < x_end; ++output_x) {
        const float output_u =
            (static_cast<float>(output_x) + 0.5f) / oriented_width;
        const NormalizedImagePoint source = MapTopLeftOutputToSource(
            output_u, output_v_top, output_rotation);
        const int source_x = std::clamp(
            static_cast<int>(source.u * input_width), 0, input_width - 1);
        const int source_y = std::clamp(
            static_cast<int>(source.v * input_height), 0, input_height - 1);
        const RgbSample display_rgb = full_image_display_rgb[
            static_cast<size_t>(source_y * input_width + source_x)];
        luma_sum += display_rgb.red * kDisplayLumaRed +
            display_rgb.green * kDisplayLumaGreen +
            display_rgb.blue * kDisplayLumaBlue;
        ++sample_count;
      }
    }
    if (sample_count <= 0) {
      output_valid.store(false, std::memory_order_relaxed);
    } else {
      output_lumas.data()[cell] = static_cast<float>(luma_sum / sample_count);
    }
  }
  if (!output_valid.load(std::memory_order_relaxed) ||
      !IsFiniteArray(output_lumas.data(), static_cast<int>(output_values))) {
    LogError("HDRNet display-linear grid evaluation produced a non-finite value");
    return JNI_FALSE;
  }
  output_lumas.CommitOnRelease();
  output_dehaze_curve.CommitOnRelease();
  output_metrics.CommitOnRelease();
  return env->ExceptionCheck() ? JNI_FALSE : JNI_TRUE;
}

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
    jfloatArray guide_slopes_array, jfloatArray acr_curve_array,
    jfloatArray dehaze_curve_array, jfloat post_exposure_gain,
    jfloatArray output_gains_array) {
  if (coefficients_array == nullptr || model_input_array == nullptr ||
      guide_shifts_array == nullptr ||
      guide_slopes_array == nullptr || acr_curve_array == nullptr ||
      dehaze_curve_array == nullptr || output_gains_array == nullptr ||
      input_width <= 0 || input_height <= 0 || input_channels < 3 ||
      source_grid_width <= 0 ||
      source_grid_height <= 0 || source_grid_depth <= 0 ||
      coefficient_count != 2 || output_grid_width <= 0 ||
      output_grid_height <= 0 || point_count <= 1 ||
      !std::isfinite(hdr_ratio) || hdr_ratio < 1.0f ||
      !std::isfinite(source_to_short_gain) || source_to_short_gain <= 0.0f ||
      !std::isfinite(renderer_baseline_gain) || renderer_baseline_gain <= 0.0f ||
      !std::isfinite(post_exposure_gain) || post_exposure_gain <= 0.0f ||
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
  const int64_t output_values = cell_count * point_count;
  const int guide_count = env->GetArrayLength(guide_shifts_array);
  const int acr_curve_count = env->GetArrayLength(acr_curve_array);
  if (coefficient_values <= 0 || input_values <= 0 || output_values <= 0 ||
      coefficient_values > std::numeric_limits<jsize>::max() ||
      input_values > std::numeric_limits<jsize>::max() ||
      output_values > std::numeric_limits<jsize>::max() || guide_count <= 0 ||
      env->GetArrayLength(coefficients_array) != coefficient_values ||
      env->GetArrayLength(model_input_array) != input_values ||
      env->GetArrayLength(guide_slopes_array) != guide_count ||
      acr_curve_count < 2 ||
      env->GetArrayLength(dehaze_curve_array) != kDehazeCurveValueCount ||
      env->GetArrayLength(output_gains_array) != output_values) {
    LogError("Rejected mismatched HDRNet PGTM array geometry");
    return JNI_FALSE;
  }
  ScopedFloatArray coefficients(env, coefficients_array);
  ScopedFloatArray model_input(env, model_input_array);
  ScopedFloatArray guide_shifts(env, guide_shifts_array);
  ScopedFloatArray guide_slopes(env, guide_slopes_array);
  ScopedFloatArray acr_curve(env, acr_curve_array);
  ScopedFloatArray dehaze_curve_values(env, dehaze_curve_array);
  ScopedFloatArray output_gains(env, output_gains_array);
  if (coefficients.data() == nullptr || model_input.data() == nullptr ||
      guide_shifts.data() == nullptr ||
      guide_slopes.data() == nullptr || acr_curve.data() == nullptr ||
      dehaze_curve_values.data() == nullptr || output_gains.data() == nullptr) {
    LogError("Unable to acquire HDRNet PGTM arrays");
    return JNI_FALSE;
  }
  DehazeCurve dehaze_curve;
  if (!IsFiniteArray(coefficients.data(), static_cast<int>(coefficient_values)) ||
      !IsFiniteArray(model_input.data(), static_cast<int>(input_values)) ||
      !IsFiniteArray(guide_shifts.data(), guide_count) ||
      !IsFiniteArray(guide_slopes.data(), guide_count) ||
      !IsValidAcrCurve(acr_curve.data(), acr_curve_count) ||
      !ReadDehazeCurve(
          dehaze_curve_values.data(), kDehazeCurveValueCount, &dehaze_curve)) {
    LogError("Rejected non-finite HDRNet PGTM input");
    return JNI_FALSE;
  }

  try {
    std::vector<AxisSample> x_samples(static_cast<size_t>(output_grid_width));
    std::vector<AxisSample> y_samples(static_cast<size_t>(output_grid_height));
    std::vector<AxisSample> model_x_samples(static_cast<size_t>(output_grid_width));
    std::vector<AxisSample> model_y_samples(static_cast<size_t>(output_grid_height));
    std::vector<AxisSample> range_samples(static_cast<size_t>(point_count));
    std::vector<float> short_intensities(static_cast<size_t>(point_count));
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
      const RgbSample cell_rgb = local_model_rgb[static_cast<size_t>(cell)];
      const float cell_intensity = std::clamp(
          cell_rgb.red * kHdrNetLumaRed +
              cell_rgb.green * kHdrNetLumaGreen +
              cell_rgb.blue * kHdrNetLumaBlue,
          0.0f, 1.0f);
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
        // Dehaze + DHA is downstream of HDRNet. Folding its scalar neutral-axis response into
        // the same table makes the runtime order HdrNet -> Dehaze/DHA -> profile processing.
        // Reuse the selected model input's local chromaticity so the arithmetic-RGB curve lookup
        // agrees with candidate evaluation instead of assuming every table cell is neutral gray.
        const float target_luma = std::clamp(
            DehazedHdrNetTargetLuma(
                short_intensity, render_gain, cell_rgb, cell_intensity,
                dehaze_curve) * post_exposure_gain,
            0.0f, 1.0f);
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
