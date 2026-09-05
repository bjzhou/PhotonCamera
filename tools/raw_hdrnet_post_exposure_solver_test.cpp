#include <array>
#include <cassert>
#include <cmath>
#include <cstdint>
#include <iostream>
#include <vector>

// Exercise production 8 x 6 spatial/portrait scoring and the per-pixel SLM response.
#include "../app/src/main/cpp/raw_legacy_auto_exposure_solver.cpp"

namespace {

namespace post = photon::hdrnet_post_exposure;
constexpr int kReferenceCode = 128;

jint GrayPixel(int code) {
    const uint32_t channel = static_cast<uint32_t>(code & 0xff);
    return static_cast<jint>(0xff000000U | (channel << 16U) | (channel << 8U) | channel);
}

float ReferenceLuma() { return *DisplayLinearLuma(GrayPixel(kReferenceCode)); }

std::unique_ptr<ExposureSolver> CreateSolver(const std::vector<float>* portrait_weights = nullptr) {
    const std::vector<jint> pixels(kGridCellCount, GrayPixel(kReferenceCode));
    return ExposureSolver::Create(pixels.data(),
        portrait_weights != nullptr ? portrait_weights->data() : nullptr, kGridColumns, kGridRows);
}

post::Rgb RgbAt(const std::vector<float>& pixels, int index) {
    return {pixels[index * 3], pixels[index * 3 + 1], pixels[index * 3 + 2]};
}

float ResponseLuma(const post::Rgb& rgb, float exposure_ev) {
    return post::DisplayLuma(post::Apply(rgb, post::SplitGain(std::exp2(exposure_ev))));
}

float ErrorEv(float actual, float reference) { return std::abs(std::log2(actual / reference)); }

jint EncodeDisplayRgb(const post::Rgb& rgb) {
    const auto encode = [](float linear) {
        const float srgb = linear <= 0.0031308f ? 12.92f * linear
            : 1.055f * std::pow(linear, 1.0f / 2.4f) - 0.055f;
        return static_cast<uint32_t>(std::lround(std::clamp(srgb, 0.0f, 1.0f) * 255.0f));
    };
    return static_cast<jint>(0xff000000U | (encode(rgb.red) << 16U) |
                            (encode(rgb.green) << 8U) | encode(rgb.blue));
}

void TestUniformGridMatchesThroughRolloffResponse() {
    auto solver = CreateSolver();
    assert(solver != nullptr);
    const std::vector<float> candidate(kGridCellCount * 3, ReferenceLuma() * 0.5f);
    const auto result = solver->SolveSingleGridExposure(
        candidate.data(), kGridColumns, kGridRows, -4.0f, 4.0f);
    assert(result.has_value());
    // The rolloff reduces gain above black, so halving the input now needs more than +1 EV.
    assert(result->exposure_ev > 1.05f);
    assert(ErrorEv(ResponseLuma(RgbAt(candidate, 0), result->exposure_ev), ReferenceLuma()) < 1.0e-4f);
    assert(std::abs(result->match.match_rate - 1.0f) < 1.0e-6f);
}

void TestPortraitPriorityOutweighsBackground() {
    std::vector<float> portrait_weights(kGridCellCount, 0.0f);
    std::vector<float> candidate(kGridCellCount * 3, ReferenceLuma() * 2.0f);
    for (int y = 2; y <= 3; ++y) {
        for (int x = 2; x <= 5; ++x) {
            const int cell = y * kGridColumns + x;
            portrait_weights[cell] = 1.0f;
            for (int channel = 0; channel < 3; ++channel) candidate[cell * 3 + channel] = ReferenceLuma() * 0.5f;
        }
    }
    auto solver = CreateSolver(&portrait_weights);
    assert(solver != nullptr);
    const auto result = solver->SolveSingleGridExposure(
        candidate.data(), kGridColumns, kGridRows, -4.0f, 4.0f);
    assert(result.has_value());
    assert(result->exposure_ev > 0.0f);
    assert(ErrorEv(ResponseLuma(RgbAt(candidate, 2 * kGridColumns + 2), result->exposure_ev),
                   ReferenceLuma()) < 1.0e-4f);
    assert(result->match.match_rate > 0.70f);
}

void TestGenericExposureBoundsRemainEffective() {
    auto solver = CreateSolver();
    assert(solver != nullptr);
    const std::vector<float> dark(kGridCellCount * 3, ReferenceLuma() * 0.5f);
    const auto limited = solver->SolveSingleGridExposure(dark.data(), kGridColumns, kGridRows, -4.0f, 0.25f);
    assert(limited.has_value() && std::abs(limited->exposure_ev - 0.25f) < 1.0e-6f);
    const std::vector<float> bright(kGridCellCount * 3, ReferenceLuma() * 2.0f);
    const auto negative = solver->SolveSingleGridExposure(bright.data(), kGridColumns, kGridRows, -0.25f, 4.0f);
    assert(negative.has_value() && std::abs(negative->exposure_ev + 0.25f) < 1.0e-6f);
    const std::vector<float> very_dark(kGridCellCount * 3, ReferenceLuma() / 64.0f);
    const auto global = solver->SolveSingleGridExposure(very_dark.data(), kGridColumns, kGridRows, -20.0f, 20.0f);
    assert(global.has_value() && std::abs(global->exposure_ev - 4.0f) < 1.0e-6f);
}

void TestWhitePixelsDoNotCapPositiveMatchingAtZero() {
    auto solver = CreateSolver();
    assert(solver != nullptr);
    std::vector<float> candidate(kGridCellCount * 3, ReferenceLuma() * 0.5f);
    // More than 1% of the image is white, which used to force the p99 exposure cap to zero.
    for (int channel = 0; channel < 3; ++channel) candidate[channel] = 1.0f;
    const auto result = solver->SolveSingleGridExposure(
        candidate.data(), kGridColumns, kGridRows, -4.0f, 4.0f);
    assert(result.has_value() && result->exposure_ev > 1.0f);
    assert(result->match.match_rate > 0.95f);
    assert(ErrorEv(ResponseLuma(RgbAt(candidate, 1), result->exposure_ev), ReferenceLuma()) < 1.0e-4f);
    assert(ResponseLuma(RgbAt(candidate, 0), result->exposure_ev) > 0.9999f);
}

void TestShadowPreferenceIsModestAndKeepsReliability() {
    assert(std::abs(HdrNetShadowPriority(0.02f) - 1.25f) < 1.0e-6f);
    assert(std::abs(HdrNetShadowPriority(0.135f) - 1.125f) < 1.0e-6f);
    assert(std::abs(HdrNetShadowPriority(0.25f) - 1.0f) < 1.0e-6f);
    float previous = 1.25f;
    for (int index = 0; index <= 1000; ++index) {
        const float priority = HdrNetShadowPriority(index / 1000.0f);
        assert(priority >= 1.0f && priority <= 1.25f && priority <= previous);
        previous = priority;
    }
    assert(ReferenceReliabilityWeight(0.0f) * HdrNetShadowPriority(0.0f) == 0.0f);
    const std::vector<jint> black(kGridCellCount, GrayPixel(0));
    assert(ExposureSolver::Create(black.data(), nullptr, kGridColumns, kGridRows) == nullptr);

    // Left and right halves have exactly equal spatial weight; the shadow preference breaks
    // the competing +/-EV match without allowing dark cells to dominate by more than 25%.
    std::vector<jint> reference(kGridCellCount);
    std::vector<float> candidate(kGridCellCount * 3);
    for (int cell = 0; cell < kGridCellCount; ++cell) {
        const bool shadow = cell % kGridColumns < kGridColumns / 2;
        reference[cell] = GrayPixel(shadow ? 64 : 180);
        const float value = *DisplayLinearLuma(reference[cell]) * (shadow ? 0.5f : 2.0f);
        for (int channel = 0; channel < 3; ++channel) candidate[cell * 3 + channel] = value;
    }
    auto solver = ExposureSolver::Create(reference.data(), nullptr, kGridColumns, kGridRows);
    assert(solver != nullptr);
    const auto result = solver->SolveSingleGridExposure(
        candidate.data(), kGridColumns, kGridRows, -4.0f, 4.0f);
    assert(result.has_value() && result->exposure_ev > 0.0f);
    assert(result->match.match_rate > 0.50f && result->match.match_rate <= 1.25f / 2.25f + 1.0e-6f);
    assert(ErrorEv(ResponseLuma(RgbAt(candidate, 0), result->exposure_ev),
                   *DisplayLinearLuma(reference[0])) <= 0.10001f);
}

void TestPerPixelResponseBeforeCellMean(const std::array<post::Rgb, 4>& pattern, float known_gain) {
    constexpr int width = kGridColumns * 4;
    constexpr int height = kGridRows;
    const auto known_gains = post::SplitGain(known_gain);
    std::vector<float> candidate(width * height * 3);
    std::vector<jint> reference(width * height);
    for (int y = 0; y < height; ++y) {
        for (int x = 0; x < width; ++x) {
            const auto rgb = pattern[x % pattern.size()];
            const int pixel = y * width + x;
            candidate[pixel * 3] = rgb.red;
            candidate[pixel * 3 + 1] = rgb.green;
            candidate[pixel * 3 + 2] = rgb.blue;
            reference[pixel] = EncodeDisplayRgb(post::Apply(rgb, known_gains));
        }
    }
    auto solver = ExposureSolver::Create(reference.data(), nullptr, width, height);
    assert(solver != nullptr);
    const auto result = solver->SolveSingleGridExposure(candidate.data(), width, height, -4.0f, 4.0f);
    assert(result.has_value());
    assert(std::abs(result->exposure_ev - std::log2(known_gain)) < 0.02f);
    assert(std::abs(result->match.match_rate - 1.0f) < 1.0e-6f);

    float reference_mean = 0.0f, processed_mean = 0.0f;
    post::Rgb rgb_mean{};
    bool clips_channel = false;
    for (size_t index = 0; index < pattern.size(); ++index) {
        const auto rgb = pattern[index];
        reference_mean += *DisplayLinearLuma(reference[index]) / pattern.size();
        processed_mean += ResponseLuma(rgb, result->exposure_ev) / pattern.size();
        rgb_mean.red += rgb.red / pattern.size();
        rgb_mean.green += rgb.green / pattern.size();
        rgb_mean.blue += rgb.blue / pattern.size();
        const auto mapped = post::Apply(rgb, known_gains);
        clips_channel |= std::max({mapped.red, mapped.green, mapped.blue}) == 1.0f;
    }
    assert(clips_channel);
    assert(ErrorEv(processed_mean, reference_mean) < 1.0e-4f);
    // Guard against replacing the nonlinear pixel response by either a mean RGB or mean luma.
    assert(ErrorEv(ResponseLuma(rgb_mean, result->exposure_ev), reference_mean) > 0.1f);
    const float luma_mean = post::DisplayLuma(rgb_mean);
    assert(ErrorEv(ResponseLuma({luma_mean, luma_mean, luma_mean}, result->exposure_ev), reference_mean) > 0.1f);
}

void TestMgcRolloffOracles() {
    assert(std::abs(post::SplitGain(1.5f).rolloff - 1.4375f) < 1.0e-7f);
    assert(std::abs(post::SplitGain(1.5f).digital - 1.5f / 1.4375f) < 1.0e-7f);
    assert(std::abs(post::SplitGain(3.0f).rolloff - 1.5f) < 1.0e-7f);
    assert(std::abs(post::SplitGain(3.0f).digital - 2.0f) < 1.0e-7f);
    // ARM64 MGC V25 ApplySlm 0x471a0e4, identical LTM0/LTM1 and zero short input:
    // this isolates its post-interpolation gain stage. Allow only one 12-bit quantization step.
    const auto check = [](const std::array<int, 3>& input, post::Gains gains,
                          const std::array<int, 3>& expected) {
        const auto output = post::Apply({input[0] / 4095.0f, input[1] / 4095.0f, input[2] / 4095.0f}, gains);
        const std::array<float, 3> actual{output.red, output.green, output.blue};
        for (int channel = 0; channel < 3; ++channel) {
            assert(std::abs(std::lround(actual[channel] * 4095.0f) - expected[channel]) <= 1);
        }
    };
    check({1000, 2000, 3000}, {1.5f, 1.0f}, {1036, 2071, 3107});
    check({1000, 2000, 3000}, {1.5f, 2.0f}, {2071, 4095, 4095});
    check({1000, 2000, 3000}, {1.5f, 0.5f}, {500, 1000, 1500});
    check({1, 4, 16}, {1.5f, 1.0f}, {1, 6, 24});
}

}  // namespace

int main() {
    TestUniformGridMatchesThroughRolloffResponse();
    TestPortraitPriorityOutweighsBackground();
    TestGenericExposureBoundsRemainEffective();
    TestWhitePixelsDoNotCapPositiveMatchingAtZero();
    TestShadowPreferenceIsModestAndKeepsReliability();
    TestPerPixelResponseBeforeCellMean({post::Rgb{0.015f, 0.015f, 0.015f}, {0.15f, 0.15f, 0.15f},
                                      {0.4f, 0.4f, 0.4f}, {0.8f, 0.8f, 0.8f}}, 2.8f);
    TestPerPixelResponseBeforeCellMean({post::Rgb{0.04f, 0.02f, 0.01f}, {0.9f, 0.08f, 0.015f},
                                      {0.1f, 0.7f, 0.2f}, {0.01f, 0.03f, 0.95f}}, 3.0f);
    TestMgcRolloffOracles();
    std::cout << "raw HDRNet post-exposure solver tests passed\n";
    return 0;
}
