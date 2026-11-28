#pragma once

#include <array>
#include <cstdint>
#include <vector>

namespace qcom_adrc {

constexpr int kInputWidth = 256;
constexpr int kInputHeight = 192;
constexpr int kHistBinCount = 256;
constexpr int kKneePointCount = 5;

struct NormalizedFaceRect {
    float left;
    float top;
    float right;
    float bottom;
};

struct AdrcInputParams {
    int width = kInputWidth;
    int height = kInputHeight;
    int iso = 100;
    int minIso = 100;
    int maxIso = 0;
    int maxAnalogIso = 0;
    int64_t shutterSpeedNs = 0;
    int64_t maxExposureTimeNs = 0;
    float aperture = 1.8f;
    int aeMode = 1;  // 0 = CONTROL_AE_MODE_OFF, non-zero = auto exposure
    float postRawSensitivityBoost = 1.0f;
    float exposureCompensationEv = 0.0f;
    float rendererBaselineGain = 1.0f;
    float maxLinearIntensity = 1.0f;
    int frameCount = 1;
    std::vector<NormalizedFaceRect> faceRects;
};

struct Tmc12CurveResult {
    float drcGain = 1.0f;
    float drcGainDark = 1.0f;
    float ltmPercentage = 0.0f;
    float gtmPercentage = 1.0f;
    float yRatioMax = 4.0f;
    float sceneDynamicRangeEv = 0.0f;
    float weightedLogAvgLuma = 0.18f;
    float lumaP05 = 0.01f;
    float lumaP992 = 0.90f;
    float highlightClipLimit = 1.0f;
    float contrastEnhanceDark = 0.0f;
    float contrastEnhanceBright = 0.0f;

    std::array<float, kKneePointCount> kneeX{0.0f, 0.1f, 0.3f, 0.85f, 1.0f};
    std::array<float, kKneePointCount> kneeY{0.0f, 0.1f, 0.3f, 0.85f, 1.0f};
    std::array<float, kKneePointCount> pchipSlope{1.0f, 1.0f, 1.0f, 1.0f, 1.0f};
    std::array<float, kHistBinCount> processedHist{};
    std::array<float, kHistBinCount> cdf{};
};

/**
 * Evaluates Qualcomm TMC12 PCHIP tone mapping curve at linear intensity x >= 0.
 * Returns target mapped linear intensity y >= 0 with C1-continuous monotonic
 * highlight shoulder for x > 1.0 (e.g. merged HDR+ bracket linear highlights).
 */
float EvaluateTmc12ToneCurve(const Tmc12CurveResult& curve, float x);

/**
 * Evaluates scalar gain y / x of the TMC12 curve at linear intensity x >= 0,
 * clamped to [minGain, curve.yRatioMax].
 */
float EvaluateTmc12Gain(const Tmc12CurveResult& curve, float x, float minGain = 0.05f);

/**
 * Runs pure scene-linear ADRC metering and Qualcomm TMC12 knee/PCHIP curve solving
 * from a 256x192 interleaved RGBA float buffer (RGB = profile-linear RGB,
 * A = unaveraged box peak DNG table intensity).
 */
bool SolveAdrcTmc12(
    const float* linearRgba,
    const AdrcInputParams& params,
    Tmc12CurveResult* outCurve);

}  // namespace qcom_adrc
