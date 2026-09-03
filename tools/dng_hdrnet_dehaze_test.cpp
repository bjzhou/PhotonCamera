#include <cassert>
#include <cmath>
#include <iostream>
#include <vector>

// Exercise the production HDRNet evaluator and Dehaze/DHA curve implementation directly.
#include "../app/src/main/cpp/dng_hdrnet_pgtm_jni.cpp"

namespace {

void TestDisabledCurveIsIdentity() {
  std::vector<uint32_t> haze(kDehazeHistogramSize, 0);
  std::vector<uint32_t> highlight(kHighlightHistogramSize, 0);
  int sample_count = 0;
  for (int index = 0; index < 4096; ++index) {
    AddDehazeHistogramSample(
        RgbSample{0.2f, 0.4f, 0.6f}, &haze, &highlight, &sample_count);
  }
  const DehazeCurve curve =
      EstimateDehazeCurve(haze, highlight, sample_count, 0.0f, 0.0f);
  for (int index = 0; index <= 100; ++index) {
    const float value = static_cast<float>(index) / 100.0f;
    assert(std::abs(MappedDehazeLuminance(value, curve) - value) < 1.0e-6f);
  }
}

void TestHdrNetOutputFeedsWholeImageDehaze() {
  constexpr int input_width = 256;
  constexpr int input_height = 192;
  constexpr int input_channels = 4;
  constexpr int grid_width = 16;
  constexpr int grid_height = 12;
  constexpr int grid_depth = 8;
  constexpr int coefficient_count = 2;
  std::vector<float> model_input(
      input_width * input_height * input_channels, 0.0f);
  for (size_t offset = 0; offset < model_input.size(); offset += input_channels) {
    model_input[offset] = 0.25f;
    model_input[offset + 1] = 0.25f;
    model_input[offset + 2] = 0.25f;
    model_input[offset + 3] = 0.5f;
  }
  std::vector<float> coefficients(
      grid_width * grid_height * grid_depth * coefficient_count, 0.0f);
  const float guide_shifts[] = {0.0f};
  const float guide_slopes[] = {1.0f};

  std::vector<uint32_t> haze(kDehazeHistogramSize, 0);
  std::vector<uint32_t> highlight(kHighlightHistogramSize, 0);
  int sample_count = 0;
  for (int y = 0; y < input_height; ++y) {
    for (int x = 0; x < input_width; ++x) {
      RgbSample hdr_rgb{};
      assert(EvaluateHdrNetRgb(
          coefficients.data(), grid_width, grid_height, grid_depth,
          coefficient_count, model_input.data(), input_width, input_height,
          input_channels, (x + 0.5f) / input_width, (y + 0.5f) / input_height,
          2.0f, 0.25f, 8.0f, 0.02f, guide_shifts, guide_slopes, 1,
          &hdr_rgb));
      assert(std::abs(hdr_rgb.red - 0.25f) < 2.0e-6f);
      AddDehazeHistogramSample(
          hdr_rgb, &haze, &highlight, &sample_count);
    }
  }
  assert(sample_count == input_width * input_height);

  const DehazeCurve curve =
      EstimateDehazeCurve(haze, highlight, sample_count, 1.0f, 1.0f);
  const float render_gain = 0.25f / (0.25f + kHdrNetGainEpsilon);
  const RgbSample hdr_rgb{
      0.25f * render_gain,
      0.25f * render_gain,
      0.25f * render_gain,
  };
  const RgbSample composed = ApplyDehaze(hdr_rgb, curve);
  const float baked_target = DehazedHdrNetTargetLuma(
      0.25f, render_gain, RgbSample{0.25f, 0.25f, 0.25f}, 0.25f, curve);
  assert(curve.sampled_pixel_count == input_width * input_height);
  assert(std::abs(
      composed.red - MappedDehazeLuminance(hdr_rgb.red, curve)) < 1.0e-6f);
  assert(std::abs(composed.red - baked_target) < 1.0e-6f);
  assert(composed.red > 0.25f);
  constexpr float post_exposure_gain = 1.25f;
  const float exposed_target = std::clamp(
      baked_target * post_exposure_gain, 0.0f, 1.0f);
  assert(std::abs(exposed_target - composed.red * post_exposure_gain) < 1.0e-6f);
}

}  // namespace

int main() {
  TestDisabledCurveIsIdentity();
  TestHdrNetOutputFeedsWholeImageDehaze();
  std::cout << "HDRNet Dehaze/DHA composition tests passed\n";
  return 0;
}
