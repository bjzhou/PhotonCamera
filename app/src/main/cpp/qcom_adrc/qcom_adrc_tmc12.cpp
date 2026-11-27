#include "qcom_adrc_tmc12.h"

#include <algorithm>
#include <cmath>
#include <numeric>

namespace qcom_adrc {

namespace {

constexpr float kEps = 1.0e-6f;
constexpr float kLogAvgEps = 1.0e-4f;
// Qualcomm linear AEC/ADRC luminance targets (in pure [0, 1] scene-linear domain before IPE Gamma15).
constexpr float kTargetCameraMidLuma = 0.148f;
constexpr float kTargetBgMidLuma = 0.204f;

// Qualcomm tmc12_sw.xml calibrated baseline constants.
constexpr float kHistClipSlope = 16.0f;
constexpr float kToneBrightAdj = 1.55f;
constexpr float kToneDarkAdj = 2.60f;
constexpr float kHistEnhanceClamp = 1.15f;
constexpr float kContrastDarkAdj = 1.08f;
constexpr float kToneMaxRatio = 8.0f;
constexpr float kBaseLtmPercentage = 0.75f;
constexpr float kMinLtmPercentage = 0.20f;

// 5-tap symmetric smoothing kernel matching TMC12 hist_conv_kernel structure.
constexpr float kHistConvKernel[5] = {0.36f, 0.20f, 0.08f, 0.03f, 0.01f};

// Pure scene-linear Qualcomm TMC12 anchor points and histogram blend weights.
constexpr float kAnchorY[kKneePointCount] = {0.0f, 0.06f, 0.20f, 0.58f, 1.0f};
constexpr float kToneTargets[kKneePointCount] = {0.0f, 0.28f, 0.48f, 0.70f, 1.0f};
constexpr float kHistEnhanceRatio[kKneePointCount] = {0.0f, 0.18f, 0.25f, 0.20f, 0.0f};

// DNG ProfileGainTableMap intensity weights (shared with DngPhotonProfileGainTableGenerator).
constexpr float kPgtmWeightR = 0.1495f;
constexpr float kPgtmWeightG = 0.2935f;
constexpr float kPgtmWeightB = 0.0570f;
constexpr float kPgtmWeightMin = 0.125f;
constexpr float kPgtmWeightMax = 0.375f;

inline float ClampFloat(float v, float lo, float hi) {
    return std::max(lo, std::min(hi, v));
}

inline float SmoothStep(float edge0, float edge1, float x) {
    if (edge1 <= edge0) return x >= edge1 ? 1.0f : 0.0f;
    const float t = ClampFloat((x - edge0) / (edge1 - edge0), 0.0f, 1.0f);
    return t * t * (3.0f - 2.0f * t);
}

inline float ComputePgtmIntensity(float r, float g, float b) {
    const float rr = std::max(r, 0.0f);
    const float gg = std::max(g, 0.0f);
    const float bb = std::max(b, 0.0f);
    const float rgbMin = std::min(rr, std::min(gg, bb));
    const float rgbMax = std::max(rr, std::max(gg, bb));
    return rr * kPgtmWeightR + gg * kPgtmWeightG + bb * kPgtmWeightB +
           rgbMin * kPgtmWeightMin + rgbMax * kPgtmWeightMax;
}

inline float ComputeRec709Luma(float r, float g, float b) {
    return 0.2126f * std::max(r, 0.0f) +
           0.7152f * std::max(g, 0.0f) +
           0.0722f * std::max(b, 0.0f);
}

// sRGB OETF & inverse OETF used as Qualcomm IPE Gamma15 reference domain.
inline float LinearToSrgb(float x) {
    const float c = ClampFloat(x, 0.0f, 1.0f);
    if (c <= 0.0031308f) {
        return 12.92f * c;
    }
    return 1.055f * std::pow(c, 1.0f / 2.4f) - 0.055f;
}

inline float SrgbToLinear(float s) {
    const float c = ClampFloat(s, 0.0f, 1.0f);
    if (c <= 0.04045f) {
        return c / 12.92f;
    }
    return std::pow((c + 0.055f) / 1.055f, 2.4f);
}

// Compute Fritsch-Carlson monotonic PCHIP slopes matching TMC12Interpolation::CalculatePCHIPCoefficient.
void ComputePchipSlopes(
    const std::array<float, kKneePointCount>& x,
    const std::array<float, kKneePointCount>& y,
    std::array<float, kKneePointCount>* outSlopes) {
    float h[kKneePointCount - 1];
    float delta[kKneePointCount - 1];
    for (int i = 0; i < kKneePointCount - 1; ++i) {
        h[i] = std::max(x[i + 1] - x[i], 1.0e-5f);
        delta[i] = std::max((y[i + 1] - y[i]) / h[i], 0.0f);
    }

    // Interior knots: weighted harmonic mean when slopes have same sign.
    for (int i = 1; i < kKneePointCount - 1; ++i) {
        if (delta[i - 1] <= 0.0f || delta[i] <= 0.0f) {
            (*outSlopes)[i] = 0.0f;
        } else {
            const float w1 = 2.0f * h[i] + h[i - 1];
            const float w2 = h[i] + 2.0f * h[i - 1];
            (*outSlopes)[i] = (w1 + w2) / (w1 / delta[i - 1] + w2 / delta[i]);
        }
    }

    // Endpoint 0 (non-centered three-point shape-preserving formula).
    {
        float d0 = ((2.0f * h[0] + h[1]) * delta[0] - h[0] * delta[1]) / (h[0] + h[1]);
        if (d0 <= 0.0f) {
            d0 = 0.0f;
        } else if (d0 > 3.0f * delta[0]) {
            d0 = 3.0f * delta[0];
        }
        (*outSlopes)[0] = d0;
    }

    // Endpoint N-1.
    {
        const int n = kKneePointCount - 1;
        float dn = ((2.0f * h[n - 1] + h[n - 2]) * delta[n - 1] - h[n - 1] * delta[n - 2]) /
                   (h[n - 1] + h[n - 2]);
        if (dn <= 0.0f) {
            dn = 0.0f;
        } else if (dn > 3.0f * delta[n - 1]) {
            dn = 3.0f * delta[n - 1];
        }
        (*outSlopes)[n] = dn;
    }
}

void EnforceStrictMonotonicKnots(
    std::array<float, kKneePointCount>* x,
    std::array<float, kKneePointCount>* y) {
    (*x)[0] = 0.0f;
    (*y)[0] = 0.0f;
    (*x)[kKneePointCount - 1] = 1.0f;
    (*y)[kKneePointCount - 1] = 1.0f;

    constexpr float kMinDx = 0.015f;
    constexpr float kMinDy = 0.015f;
    for (int i = 1; i < kKneePointCount - 1; ++i) {
        const float maxX = 1.0f - kMinDx * static_cast<float>(kKneePointCount - 1 - i);
        const float maxY = 1.0f - kMinDy * static_cast<float>(kKneePointCount - 1 - i);
        (*x)[i] = ClampFloat((*x)[i], (*x)[i - 1] + kMinDx, maxX);
        (*y)[i] = ClampFloat((*y)[i], (*y)[i - 1] + kMinDy, maxY);
    }
}

// TMC12 HistogramPreProcess: CLAHE clip, under-saturated bin suppression, 5-tap smoothing.
void PreprocessHistogram(
    const std::array<float, kHistBinCount>& rawHist,
    std::array<float, kHistBinCount>* outHist,
    std::array<float, kHistBinCount>* outCdf) {
    float totalCount = 0.0f;
    for (float c : rawHist) {
        totalCount += c;
    }
    if (totalCount <= kEps) {
        outHist->fill(1.0f / static_cast<float>(kHistBinCount));
        for (int i = 0; i < kHistBinCount; ++i) {
            (*outCdf)[i] = static_cast<float>(i + 1) / static_cast<float>(kHistBinCount);
        }
        return;
    }

    const float histMax = kHistClipSlope * totalCount / static_cast<float>(kHistBinCount);
    float histClipped = 0.0f;
    for (int i = 0; i < kHistBinCount; ++i) {
        if (rawHist[i] < histMax) {
            (*outHist)[i] = rawHist[i];
        } else {
            (*outHist)[i] = histMax;
            histClipped += (rawHist[i] - histMax);
        }
    }

    // Suppress under-saturated black spike (matches TMC12Interpolation::HistogramPreProcess).
    if ((*outHist)[0] > (*outHist)[1]) {
        histClipped += (*outHist)[0] - (*outHist)[1];
        (*outHist)[0] = (*outHist)[1];
    }

    const float avgClipped = histClipped / static_cast<float>(kHistBinCount);
    for (int i = 0; i < kHistBinCount; ++i) {
        (*outHist)[i] += avgClipped;
    }

    // 4-pass 5-tap symmetric smoothing.
    std::array<float, kHistBinCount> scratch{};
    for (int pass = 0; pass < 4; ++pass) {
        for (int i = 0; i < kHistBinCount; ++i) {
            float acc = (*outHist)[i] * kHistConvKernel[0];
            for (int k = 1; k < 5; ++k) {
                const int l = std::max(0, i - k);
                const int r = std::min(kHistBinCount - 1, i + k);
                acc += ((*outHist)[l] + (*outHist)[r]) * kHistConvKernel[k];
            }
            scratch[i] = acc;
        }
        *outHist = scratch;
    }

    float normSum = 0.0f;
    for (float c : *outHist) {
        normSum += c;
    }
    const float invNorm = (normSum > kEps) ? (1.0f / normSum) : 0.0f;
    float running = 0.0f;
    for (int i = 0; i < kHistBinCount; ++i) {
        (*outHist)[i] *= invNorm;
        running += (*outHist)[i];
        (*outCdf)[i] = ClampFloat(running, 0.0f, 1.0f);
    }
}

float QuantileFromSorted(const std::vector<float>& sorted, float q) {
    if (sorted.empty()) return 0.0f;
    const float pos = ClampFloat(q, 0.0f, 1.0f) * static_cast<float>(sorted.size() - 1);
    const size_t i0 = static_cast<size_t>(std::floor(pos));
    const size_t i1 = std::min(i0 + 1, sorted.size() - 1);
    const float t = pos - static_cast<float>(i0);
    return sorted[i0] + (sorted[i1] - sorted[i0]) * t;
}

}  // namespace

float EvaluateTmc12ToneCurve(const Tmc12CurveResult& curve, float x) {
    if (!std::isfinite(x) || x <= 0.0f) {
        return 0.0f;
    }

    const float topY = curve.kneeY[kKneePointCount - 1];
    const float highlightLimit = std::max(curve.highlightClipLimit, topY);
    if (x >= 1.0f) {
        // C1-continuous monotonic highlight shoulder for overrange HDR highlights (x > 1.0).
        const float endSlope = ClampFloat(curve.pchipSlope[kKneePointCount - 1], 0.08f, 1.0f);
        const float excess = x - 1.0f;
        const float headroom = std::max(highlightLimit - topY, 0.0f);
        if (headroom <= 1.0e-4f) {
            const float softHeadroom = 0.15f;
            const float k = endSlope / softHeadroom;
            return topY + softHeadroom * (1.0f - std::exp(-k * excess));
        }
        const float k = endSlope / headroom;
        return topY + headroom * (1.0f - std::exp(-k * excess));
    }

    // Locate segment [kneeX[i], kneeX[i+1]].
    int seg = 0;
    for (int i = 0; i < kKneePointCount - 1; ++i) {
        if (x <= curve.kneeX[i + 1] || i == kKneePointCount - 2) {
            seg = i;
            break;
        }
    }

    const float x0 = curve.kneeX[seg];
    const float x1 = curve.kneeX[seg + 1];
    const float h = std::max(x1 - x0, 1.0e-5f);
    const float t = ClampFloat((x - x0) / h, 0.0f, 1.0f);
    const float t2 = t * t;
    const float t3 = t2 * t;

    const float h00 = 2.0f * t3 - 3.0f * t2 + 1.0f;
    const float h10 = t3 - 2.0f * t2 + t;
    const float h01 = -2.0f * t3 + 3.0f * t2;
    const float h11 = t3 - t2;

    const float y = h00 * curve.kneeY[seg] +
                    h10 * h * curve.pchipSlope[seg] +
                    h01 * curve.kneeY[seg + 1] +
                    h11 * h * curve.pchipSlope[seg + 1];

    // Optional subtle contrast enhancement curve (TMC12 contrast_he_dark / contrast_he_bright).
    float yFinal = std::max(y, 0.0f);
    if (curve.contrastEnhanceDark > 1.0e-4f || curve.contrastEnhanceBright > 1.0e-4f) {
        const float ySrgb = LinearToSrgb(ClampFloat(yFinal, 0.0f, 1.0f));
        const int bin = static_cast<int>(ClampFloat(ySrgb * (kHistBinCount - 1), 0.0f,
                                                    static_cast<float>(kHistBinCount - 1)));
        const float cdfVal = curve.cdf[bin];
        const float blend = (ySrgb < 0.5f) ? curve.contrastEnhanceDark : curve.contrastEnhanceBright;
        const float enhancedSrgb = ClampFloat(ySrgb + blend * (cdfVal - ySrgb), 0.0f, 1.0f);
        yFinal = SrgbToLinear(enhancedSrgb);
    }
    return std::max(yFinal, 0.0f);
}

float EvaluateTmc12Gain(const Tmc12CurveResult& curve, float x, float minGain) {
    if (!std::isfinite(x) || x <= 1.0e-5f) {
        return ClampFloat(curve.pchipSlope[0], minGain, curve.yRatioMax);
    }
    const float y = EvaluateTmc12ToneCurve(curve, x);
    return ClampFloat(y / x, minGain, curve.yRatioMax);
}

bool SolveAdrcTmc12(
    const float* linearRgba,
    const AdrcInputParams& params,
    Tmc12CurveResult* outCurve) {
    if (linearRgba == nullptr || outCurve == nullptr ||
        params.width <= 0 || params.height <= 0 ||
        !std::isfinite(params.rendererBaselineGain) || params.rendererBaselineGain <= 0.0f) {
        return false;
    }

    const int pixelCount = params.width * params.height;
    std::vector<float> intensities(static_cast<size_t>(pixelCount));
    std::vector<float> lumas(static_cast<size_t>(pixelCount));
    std::array<float, kHistBinCount> rawHist{};

    const float baselineGain = params.rendererBaselineGain;
    double weightedLogSum = 0.0;
    double weightSum = 0.0;
    double bgUnsatLumaSum = 0.0;
    double bgUnsatWeightSum = 0.0;
    double faceWeightedLogSum = 0.0;
    double faceLinearLumaSum = 0.0;
    double faceWeightSum = 0.0;
    int highlightClipCount = 0;

    // Step 1: Collect linear intensity, luminance, BG-stats unsaturated mean, weighted log-avg and 256-bin histogram.
    for (int y = 0; y < params.height; ++y) {
        const float v = (static_cast<float>(y) + 0.5f) / static_cast<float>(params.height);
        const float dy = v - 0.5f;
        for (int x = 0; x < params.width; ++x) {
            const float u = (static_cast<float>(x) + 0.5f) / static_cast<float>(params.width);
            const float dx = u - 0.5f;
            const int idx = y * params.width + x;
            const float r = linearRgba[idx * 4 + 0] * baselineGain;
            const float g = linearRgba[idx * 4 + 1] * baselineGain;
            const float b = linearRgba[idx * 4 + 2] * baselineGain;

            const float intensity = ComputePgtmIntensity(r, g, b);
            const float luma = ComputeRec709Luma(r, g, b);
            const float maxChannel = std::max(r, std::max(g, b));
            intensities[static_cast<size_t>(idx)] = intensity;
            lumas[static_cast<size_t>(idx)] = luma;

            if (intensity >= 0.96f) {
                highlightClipCount++;
            }

            // Center-weighted metering prior.
            const float centerWeight = 0.45f + 0.55f * std::exp(-(dx * dx + dy * dy) / (2.0f * 0.36f * 0.36f));
            bool inFace = false;
            for (const auto& face : params.faceRects) {
                if (u >= face.left && u <= face.right && v >= face.top && v <= face.bottom) {
                    inFace = true;
                    break;
                }
            }
            const float totalWeight = inFace ? (centerWeight + 3.0f) : centerWeight;
            const double safeLuma = static_cast<double>(std::max(luma, 0.0f));
            const double logL = std::log(safeLuma + kLogAvgEps);
            weightedLogSum += static_cast<double>(totalWeight) * logL;
            weightSum += static_cast<double>(totalWeight);
            if (maxChannel < 0.85f) {
                bgUnsatLumaSum += static_cast<double>(totalWeight) * safeLuma;
                bgUnsatWeightSum += static_cast<double>(totalWeight);
            }
            if (inFace) {
                faceWeightedLogSum += logL;
                faceLinearLumaSum += safeLuma;
                faceWeightSum += 1.0;
            }

            // Qualcomm BHIST-style histogram mapped in sRGB gamma domain for perceptual spacing.
            const float histCoord = LinearToSrgb(ClampFloat(intensity, 0.0f, 1.0f));
            const int bin = static_cast<int>(ClampFloat(
                histCoord * static_cast<float>(kHistBinCount - 1), 0.0f,
                static_cast<float>(kHistBinCount - 1)));
            rawHist[static_cast<size_t>(bin)] += 1.0f;
        }
    }

    std::vector<float> sortedIntensity = intensities;
    std::sort(sortedIntensity.begin(), sortedIntensity.end());

    const float p05 = std::max(QuantileFromSorted(sortedIntensity, 0.05f), 1.0e-4f);
    const float p50 = std::max(QuantileFromSorted(sortedIntensity, 0.50f), 1.0e-4f);
    const float p95 = std::max(QuantileFromSorted(sortedIntensity, 0.95f), p50);
    const float p992 = std::max(QuantileFromSorted(sortedIntensity, 0.992f), p95);
    const float weightedLogAvg = (weightSum > 0.0)
        ? static_cast<float>(std::exp(weightedLogSum / weightSum))
        : p50;
    const float effectiveLuma = (faceWeightSum > 16.0)
        ? (0.60f * weightedLogAvg + 0.40f * static_cast<float>(std::exp(faceWeightedLogSum / faceWeightSum)))
        : weightedLogAvg;
    const float bgUnsatMean = (bgUnsatWeightSum > 16.0)
        ? static_cast<float>(bgUnsatLumaSum / bgUnsatWeightSum)
        : weightedLogAvg;
    const float effectiveBgLuma = (faceWeightSum > 16.0)
        ? (0.60f * bgUnsatMean + 0.40f * static_cast<float>(faceLinearLumaSum / faceWeightSum))
        : bgUnsatMean;

    const float sceneDrEv = std::max(0.0f, std::log2(p992 / p05));
    const float clippedFraction = static_cast<float>(highlightClipCount) / static_cast<float>(pixelCount);

    // Step 2: Preprocess histogram (CLAHE clip + smooth + CDF).
    Tmc12CurveResult result;
    PreprocessHistogram(rawHist, &result.processedHist, &result.cdf);
    result.sceneDynamicRangeEv = sceneDrEv;
    result.weightedLogAvgLuma = weightedLogAvg;
    result.lumaP05 = p05;
    result.lumaP992 = p992;

    // Step 3: ISO-aware noise attenuation & y_ratio_max (mirrors Qualcomm Chromatix gain triggers).
    // Expressed directly in Qualcomm's scene-linear domain before downstream IPE Gamma15.
    const float refIso = static_cast<float>(std::max(params.minIso, 50));
    const float isoGain = std::max(static_cast<float>(params.iso) / refIso, 1.0f);
    const float highIsoAtten = 1.0f - 0.65f * SmoothStep(4.0f, 32.0f, isoGain);
    const float yRatioMax = ClampFloat(3.75f - 1.50f * SmoothStep(4.0f, 32.0f, isoGain), 2.10f, 3.85f);
    result.yRatioMax = yRatioMax;

    // Step 4: Self-contained Qualcomm AEC/ADRC metering layer (computes DRCGain & DRCGainDark).
    // Standard/moderate-DR scenes track Qualcomm BG-stats unsaturated arithmetic mean (including
    // smooth attenuation < 1.0 on bright high-key scenes). High-DR backlit scenes transition
    // smoothly to shadow-aware log-average ADRC lift.
    const float postBoost = std::isfinite(params.postRawSensitivityBoost)
        ? ClampFloat(params.postRawSensitivityBoost, 1.0f, 8.0f)
        : 1.0f;
    const float userEvScale = std::pow(2.0f, ClampFloat(params.exposureCompensationEv, -3.0f, 3.0f));
    const bool isMultiFrameHdr = (params.frameCount > 1) || (params.maxLinearIntensity * baselineGain > 1.25f);
    const float maxDrcGain = isMultiFrameHdr ? 4.8f : 3.8f;

    const float highlightPressure = SmoothStep(0.65f, 0.96f, p992) * 0.70f +
                                    SmoothStep(0.003f, 0.05f, clippedFraction) * 0.30f;
    const float darkNightDamp = (1.0f - highlightPressure) *
                                (1.0f - SmoothStep(0.015f, 0.055f, effectiveLuma));
    const float targetBgLuma = ClampFloat(
        kTargetBgMidLuma * (1.0f - 0.35f * darkNightDamp) * userEvScale,
        0.09f, 0.40f);
    const float targetMidLuma = ClampFloat(
        kTargetCameraMidLuma * (1.0f - 0.35f * darkNightDamp) * userEvScale,
        0.07f, 0.32f);

    const float bgNeededGain = ClampFloat(
        targetBgLuma / std::max(effectiveBgLuma, 0.025f),
        0.72f,
        maxDrcGain);
    const float logNeededGain = ClampFloat(
        targetMidLuma / std::max(effectiveLuma, 0.018f),
        1.0f,
        maxDrcGain);
    const float adrcBlend = SmoothStep(5.6f, 7.2f, sceneDrEv);
    const float neededGain = bgNeededGain * (1.0f - adrcBlend) +
                             std::max(bgNeededGain, logNeededGain) * adrcBlend;
    const float drcGain = ClampFloat(
        (postBoost > 1.01f) ? std::max(postBoost, neededGain) : neededGain,
        0.72f,
        maxDrcGain);

    // Dark boost (DRCGainDark): lifts shadows in moderate/high-DR scenes, attenuated at high ISO.
    const float shadowRatio = ClampFloat(p50 / std::max(p05, 1.0e-3f), 1.0f, 64.0f);
    const float darkTrigger = SmoothStep(4.8f, 8.0f, sceneDrEv) *
                              SmoothStep(2.5f, 10.0f, shadowRatio);
    const float darkBoostExtra = 0.25f * darkTrigger * highIsoAtten;
    const float drcGainDark = ClampFloat(1.0f + darkBoostExtra, 1.0f, 1.30f);

    // Step 5: Pure scene-linear Qualcomm TMC12 Anchor Knee Points (DRCGain=1 -> exact identity).
    // Output tone rendering (IPE Gamma15 -> invACR3) is cleanly decoupled as a downstream 1D LUT.
    const float liftDrcGain = std::max(drcGain, 1.0f);
    const float darkGain = (drcGain >= 1.0f)
        ? ClampFloat(drcGain * drcGainDark, 1.0f, std::min(kToneMaxRatio, yRatioMax))
        : drcGain;
    const float midGain = (drcGain >= 1.0f) ? std::pow(darkGain, 0.80f) : drcGain;
    const float brightGain = (drcGain >= 1.0f) ? std::pow(drcGain, 0.30f) : drcGain;

    std::array<float, kKneePointCount> anchorKneeX{};
    std::array<float, kKneePointCount> anchorKneeY{};
    if (drcGain >= 1.0f) {
        anchorKneeX = {
            0.0f,
            ClampFloat(kAnchorY[1] / darkGain, 0.015f, kAnchorY[1]),
            ClampFloat(kAnchorY[2] / midGain, 0.045f, kAnchorY[2]),
            ClampFloat(kAnchorY[3] / brightGain, 0.20f, kAnchorY[3]),
            1.0f,
        };
        anchorKneeY = {kAnchorY[0], kAnchorY[1], kAnchorY[2], kAnchorY[3], kAnchorY[4]};
    } else {
        anchorKneeX = {kAnchorY[0], kAnchorY[1], kAnchorY[2], kAnchorY[3], kAnchorY[4]};
        anchorKneeY = {
            0.0f,
            kAnchorY[1] * drcGain,
            kAnchorY[2] * drcGain,
            kAnchorY[3] * drcGain,
            1.0f,
        };
    }

    // Step 6: Qualcomm TMC12 Histogram Knee Points (CalculateHistKneePoints) in pure [0, 1] linear.
    // Compute log-mean luminance in boost [0, 0.4], avg [0, 1.0], and suppress [0.2, 1.0] CDF ranges.
    double sumAvg = 0.0, cntAvg = 0.0;
    double sumMin = 0.0, cntMin = 0.0;
    double sumMax = 0.0, cntMax = 0.0;
    float accumCdf = 0.0f;
    for (int i = 0; i < kHistBinCount; ++i) {
        const float hVal = result.processedHist[static_cast<size_t>(i)];
        accumCdf += hVal;
        const float srgbBin = (static_cast<float>(i) + 0.5f) / static_cast<float>(kHistBinCount);
        const float linBin = std::max(SrgbToLinear(srgbBin), 1.0e-4f);
        const double logBin = std::log(static_cast<double>(linBin) * 16383.0);

        sumAvg += hVal * logBin;
        cntAvg += hVal;
        if (accumCdf <= 0.40f) {
            sumMin += hVal * logBin;
            cntMin += hVal;
        }
        if (accumCdf >= 0.20f) {
            sumMax += hVal * logBin;
            cntMax += hVal;
        }
    }

    const float lwAvg = (cntAvg > kEps) ? static_cast<float>(std::exp(sumAvg / cntAvg)) : 2300.0f;
    const float lwMin = (cntMin > kEps) ? static_cast<float>(std::exp(sumMin / cntMin)) : 350.0f;
    const float lwMax = (cntMax > kEps) ? static_cast<float>(std::exp(sumMax / cntMax)) : 8000.0f;

    const float targetMidLinear = SrgbToLinear(kToneTargets[2]) * 0.82f * userEvScale;
    const float epsHist = 1.0f;
    const float histF = ClampFloat(
        (2.0f * std::log(lwAvg + epsHist) - std::log(1.0f) - std::log(16383.0f + epsHist)) /
        std::max(std::log(16383.0f + epsHist) - std::log(1.0f), 1.0f),
        -1.0f, 1.0f);
    const float adaptiveA = targetMidLinear *
        std::pow((histF > 0.0f) ? kToneBrightAdj : kToneDarkAdj, histF * 0.30f);
    float histGlobalGain = adaptiveA / std::max(lwAvg / 16383.0f, 1.0e-3f);
    histGlobalGain = ClampFloat(histGlobalGain,
                                midGain / kHistEnhanceClamp,
                                std::min(midGain * kHistEnhanceClamp, yRatioMax));

    const float gainMinAdj = std::min(histGlobalGain * kContrastDarkAdj, yRatioMax);
    const float gainAvgAdj = histGlobalGain;
    const float gainMaxAdj = ClampFloat(
        std::pow(std::max(histGlobalGain, 0.5f), 0.35f),
        0.65f,
        std::min(histGlobalGain, 1.15f));

    std::array<float, kKneePointCount> histKneeX{
        0.0f,
        ClampFloat(lwMin / 16383.0f, 0.015f, 0.25f),
        ClampFloat(lwAvg / 16383.0f, 0.045f, 0.50f),
        ClampFloat(lwMax / 16383.0f, 0.25f, 0.85f),
        1.0f,
    };
    std::array<float, kKneePointCount> histKneeY{
        0.0f,
        ClampFloat(histKneeX[1] * gainMinAdj, 0.015f, 0.45f),
        ClampFloat(histKneeX[2] * gainAvgAdj, 0.05f, 0.72f),
        ClampFloat(histKneeX[3] * gainMaxAdj, 0.20f, 0.90f),
        1.0f,
    };

    // Step 7: Blend anchor & histogram knee points (matches TMC12Interpolation::CalculateKneePoints).
    for (int i = 0; i < kKneePointCount; ++i) {
        const float w = kHistEnhanceRatio[i];
        result.kneeX[i] = w * histKneeX[i] + (1.0f - w) * anchorKneeX[i];
        result.kneeY[i] = w * histKneeY[i] + (1.0f - w) * anchorKneeY[i];
    }

    EnforceStrictMonotonicKnots(&result.kneeX, &result.kneeY);
    ComputePchipSlopes(result.kneeX, result.kneeY, &result.pchipSlope);

    // Step 8: GTM / LTM split (MaxLTMPercentageCheck).
    const float effectiveDarkRatio = result.kneeY[1] / std::max(result.kneeX[1], 1.0e-4f);
    const float compressionStrength = SmoothStep(1.15f, 3.0f, std::max(liftDrcGain, effectiveDarkRatio));
    result.drcGain = drcGain;
    result.drcGainDark = drcGainDark;
    result.ltmPercentage = ClampFloat(
        kMinLtmPercentage + (kBaseLtmPercentage - kMinLtmPercentage) * compressionStrength,
        0.0f, kBaseLtmPercentage);
    if (liftDrcGain <= 1.08f && drcGainDark <= 1.02f) {
        result.ltmPercentage = 0.0f;
    }
    result.gtmPercentage = 1.0f - result.ltmPercentage;

    // Downstream Gamma15 supplies the display contrast S-curve toe/shoulder.
    result.contrastEnhanceDark = 0.0f;
    result.contrastEnhanceBright = 0.0f;

    // Preserve linear highlight ceiling for multi-frame HDR+ bracket captures (> 1.0).
    result.highlightClipLimit = 1.0f +
                                0.25f * SmoothStep(1.05f, 3.0f, params.maxLinearIntensity * baselineGain);

    *outCurve = result;
    return true;
}

}  // namespace qcom_adrc
