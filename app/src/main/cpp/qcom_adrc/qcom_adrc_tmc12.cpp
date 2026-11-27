#include "qcom_adrc_tmc12.h"

#include <algorithm>
#include <cmath>
#include <numeric>

namespace qcom_adrc {

namespace {

constexpr float kEps = 1.0e-6f;
constexpr float kLogAvgEps = 1.0e-4f;
// Camera linear mid-grey target before downstream ACR3 curve.
// Empirically aligned with Qualcomm AEC metering + Gamma15 vs Adobe ACR3 (+0.50 EV offset):
// at DRCGain=1.0, ACR3(0.71 * x) reproduces Qualcomm's flat-scene Gamma15 response across [0, 1].
constexpr float kBasePreAcr3Scale = 0.69f;
constexpr float kTargetCameraMidLuma = 0.150f;

// Qualcomm tmc12_sw.xml calibrated baseline constants.
constexpr float kHistClipSlope = 16.0f;
constexpr float kToneBrightAdj = 1.55f;
constexpr float kToneDarkAdj = 2.60f;
constexpr float kHistEnhanceClamp = 1.35f;
constexpr float kContrastBrightClip = 1.65f;
constexpr float kContrastDarkAdj = 1.15f;
constexpr float kToneMaxRatio = 8.0f;
constexpr float kBaseLtmPercentage = 0.75f;
constexpr float kMinLtmPercentage = 0.20f;

// 5-tap symmetric smoothing kernel matching TMC12 hist_conv_kernel structure.
constexpr float kHistConvKernel[5] = {0.36f, 0.20f, 0.08f, 0.03f, 0.01f};

// Tone anchors & targets aligned with Qualcomm tmc12_sw.xml (in camera-linear domain).
// Keep bright anchors close to or below identity when highlights saturate to preserve sky/cloud texture.
constexpr float kToneAnchors[kKneePointCount] = {0.0f, 0.16f, 0.26f, 0.72f, 1.0f};
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
    double faceWeightedLogSum = 0.0;
    double faceWeightSum = 0.0;
    int highlightClipCount = 0;

    // Step 1: Collect linear intensity, luminance, weighted log-avg and 256-bin histogram.
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
            const double logL = std::log(static_cast<double>(std::max(luma, 0.0f)) + kLogAvgEps);
            weightedLogSum += static_cast<double>(totalWeight) * logL;
            weightSum += static_cast<double>(totalWeight);
            if (inFace) {
                faceWeightedLogSum += logL;
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
    // Note: yRatioMax is expressed in pre-ACR3 DNG PGTM gain units (2.7x pre-ACR3 ≈ 3.8-4.2x
    // display-linear shadow lift after ACR3, matching Qualcomm's observed backlit ceiling).
    const float refIso = static_cast<float>(std::max(params.minIso, 50));
    const float isoGain = std::max(static_cast<float>(params.iso) / refIso, 1.0f);
    const float highIsoAtten = 1.0f - 0.65f * SmoothStep(4.0f, 32.0f, isoGain);
    const float yRatioMax = ClampFloat(2.55f - 1.05f * SmoothStep(4.0f, 32.0f, isoGain), 1.48f, 2.65f);
    result.yRatioMax = yRatioMax;

    // Step 4: Self-contained ADRC decision layer (computes DRCGain & DRCGainDark).
    // Always run full scene-linear ADRC/TMC12 regardless of Camera2 aeMode so capture-time
    // multi-frame locked exposure and gallery re-development produce identical results.
    const float postBoost = std::isfinite(params.postRawSensitivityBoost)
        ? ClampFloat(params.postRawSensitivityBoost, 1.0f, 8.0f)
        : 1.0f;
    const float userEvScale = std::pow(2.0f, ClampFloat(params.exposureCompensationEv, -3.0f, 3.0f));
    const bool isMultiFrameHdr = (params.frameCount > 1) || (params.maxLinearIntensity * baselineGain > 1.25f);
    const float maxDrcGain = isMultiFrameHdr ? 4.8f : 3.8f;

    // Target camera-linear mid-grey (~0.150 before kBasePreAcr3Scale, matching Qualcomm AEC metering).
    // Keep only gentle night damping when there is no highlight clipping and the whole scene is very dark.
    const float highlightPressure = SmoothStep(0.65f, 0.96f, p992) * 0.70f +
                                    SmoothStep(0.003f, 0.05f, clippedFraction) * 0.30f;
    const float darkNightDamp = (1.0f - highlightPressure) *
                                (1.0f - SmoothStep(0.015f, 0.055f, effectiveLuma));
    const float targetMidLuma = ClampFloat(
        kTargetCameraMidLuma * (1.0f - 0.35f * darkNightDamp) * userEvScale,
        0.07f, 0.32f);

    // Raw brightness deficit relative to target camera mid-grey.
    const float neededGain = targetMidLuma / std::max(effectiveLuma, 0.018f);
    const float drcGain = ClampFloat(std::max(postBoost, neededGain), 1.0f, maxDrcGain);

    // Dark boost (DRCGainDark): lifts shadows in moderate/high-DR scenes, attenuated at high ISO.
    const float shadowRatio = ClampFloat(p50 / std::max(p05, 1.0e-3f), 1.0f, 64.0f);
    const float darkTrigger = SmoothStep(4.8f, 8.0f, sceneDrEv) *
                              SmoothStep(2.5f, 10.0f, shadowRatio);
    const float darkBoostExtra = 0.25f * darkTrigger * highIsoAtten;
    const float drcGainDark = ClampFloat(1.0f + darkBoostExtra, 1.0f, 1.30f);

    // Step 5: Qualcomm TMC12 Anchor Knee Points mapped into pre-ACR3 DNG linear domain.
    // Flat scene (drcGain=1.0): pre-ACR3 gain stays ~0.71 across tones (matches Qualcomm Gamma15 after ACR3).
    // High-DR / backlit scene: strong lift concentrates in [0, 0.10] and rolls off smoothly through
    // midtones into a concave highlight shoulder so indoor shadows lift while sky/clouds stay detailed.
    const float preAcr3DarkGain = ClampFloat(
        drcGain * drcGainDark * kBasePreAcr3Scale,
        kBasePreAcr3Scale,
        std::min(kToneMaxRatio, yRatioMax));
    // Midtone gain rolls off earlier under extreme bimodal highlight saturation (e.g. bright window).
    const float bimodalCompress = highlightPressure * SmoothStep(6.8f, 9.5f, sceneDrEv);
    const float midGainRetention = 0.86f - 0.30f * bimodalCompress;
    const float preAcr3MidGain = ClampFloat(
        kBasePreAcr3Scale + (preAcr3DarkGain - kBasePreAcr3Scale) * midGainRetention,
        kBasePreAcr3Scale,
        preAcr3DarkGain);

    const float kneeDarkY = ClampFloat(0.050f + 0.020f * SmoothStep(1.2f, 3.4f, drcGain), 0.045f, 0.075f);
    const float kneeDarkX = ClampFloat(kneeDarkY / std::max(preAcr3DarkGain, 0.5f), 0.014f, 0.14f);

    const float kneeMidY = ClampFloat(
        0.180f + 0.040f * SmoothStep(1.2f, 2.8f, drcGain) - 0.055f * bimodalCompress,
        0.125f, 0.230f);
    const float kneeMidX = ClampFloat(kneeMidY / std::max(preAcr3MidGain, 0.5f), kneeDarkX + 0.025f, 0.36f);

    // Bright anchor & concave highlight top: lift mid-highlights moderately in non-clipping scenes,
    // and keep a smooth concave shoulder under highlight saturation to preserve sky/cloud texture.
    const float brightAnchorX = 0.52f;
    const float brightGain = kBasePreAcr3Scale +
                             0.28f * SmoothStep(1.2f, 2.4f, drcGain) * (1.0f - 0.72f * highlightPressure) -
                             0.02f * highlightPressure;
    const float brightAnchorY = ClampFloat(
        brightAnchorX * brightGain,
        kneeMidY + 0.11f,
        0.56f);

    std::array<float, kKneePointCount> anchorKneeX{
        0.0f,
        kneeDarkX,
        kneeMidX,
        brightAnchorX,
        1.0f,
    };
    std::array<float, kKneePointCount> anchorKneeY{
        0.0f,
        kneeDarkY,
        kneeMidY,
        brightAnchorY,
        ClampFloat(0.86f - 0.04f * bimodalCompress, 0.80f, 0.90f),
    };

    // Step 6: Qualcomm TMC12 Histogram Knee Points (CalculateHistKneePoints).
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

    // Target pre-ACR3 midtone from Qualcomm tone_target[2] (~0.48 sRGB -> ~0.195 display lin -> ~0.102 pre-ACR3).
    const float targetMidPreAcr3 = SrgbToLinear(kToneTargets[2]) * kBasePreAcr3Scale * 0.78f * userEvScale;
    const float epsHist = 1.0f;
    const float histF = ClampFloat(
        (2.0f * std::log(lwAvg + epsHist) - std::log(1.0f) - std::log(16383.0f + epsHist)) /
        std::max(std::log(16383.0f + epsHist) - std::log(1.0f), 1.0f),
        -1.0f, 1.0f);
    const float adaptiveA = targetMidPreAcr3 *
        std::pow((histF > 0.0f) ? kToneBrightAdj : kToneDarkAdj, histF * 0.30f);
    float histGlobalGain = adaptiveA / std::max(lwAvg / 16383.0f, 1.0e-3f);
    histGlobalGain = ClampFloat(histGlobalGain,
                                preAcr3MidGain / kHistEnhanceClamp,
                                std::min(preAcr3MidGain * kHistEnhanceClamp, yRatioMax));

    const float gainMinAdj = std::min(histGlobalGain * kContrastDarkAdj, yRatioMax);
    const float gainAvgAdj = histGlobalGain;
    const float gainMaxAdj = ClampFloat(
        kBasePreAcr3Scale * (1.25f - 0.35f * highlightPressure),
        0.55f,
        std::min(histGlobalGain, 1.05f));

    std::array<float, kKneePointCount> histKneeX{
        0.0f,
        ClampFloat(lwMin / 16383.0f, 0.015f, 0.25f),
        ClampFloat(lwAvg / 16383.0f, 0.045f, 0.50f),
        ClampFloat(lwMax / 16383.0f, 0.25f, 0.85f),
        1.0f,
    };
    std::array<float, kKneePointCount> histKneeY{
        0.0f,
        ClampFloat(histKneeX[1] * gainMinAdj, 0.015f, 0.35f),
        ClampFloat(histKneeX[2] * gainAvgAdj, 0.05f, 0.55f),
        ClampFloat(histKneeX[3] * gainMaxAdj, 0.20f, 0.78f),
        anchorKneeY[4],
    };

    // Step 7: Blend anchor & histogram knee points (matches TMC12Interpolation::CalculateKneePoints).
    for (int i = 0; i < kKneePointCount; ++i) {
        const float w = kHistEnhanceRatio[i];
        result.kneeX[i] = w * histKneeX[i] + (1.0f - w) * anchorKneeX[i];
        result.kneeY[i] = w * histKneeY[i] + (1.0f - w) * anchorKneeY[i];
    }

    // Preserve anchor end-point Y cleanly before monotonic clamp (note: EnforceStrictMonotonicKnots
    // previously pinned y[4]=1.0, so preserve our smooth highlight ceiling explicitly).
    const float targetTopY = anchorKneeY[4];
    EnforceStrictMonotonicKnots(&result.kneeX, &result.kneeY);
    result.kneeY[kKneePointCount - 1] = std::max(targetTopY, result.kneeY[kKneePointCount - 2] + 0.05f);
    ComputePchipSlopes(result.kneeX, result.kneeY, &result.pchipSlope);

    // Step 8: GTM / LTM split (MaxLTMPercentageCheck).
    const float effectiveDarkRatio = (result.kneeY[1] / std::max(result.kneeX[1], 1.0e-4f)) / kBasePreAcr3Scale;
    const float compressionStrength = SmoothStep(1.15f, 3.0f, std::max(drcGain, effectiveDarkRatio));
    result.drcGain = drcGain;
    result.drcGainDark = drcGainDark;
    result.ltmPercentage = ClampFloat(
        kMinLtmPercentage + (kBaseLtmPercentage - kMinLtmPercentage) * compressionStrength,
        0.0f, kBaseLtmPercentage);
    if (drcGain <= 1.08f && drcGainDark <= 1.02f) {
        result.ltmPercentage = 0.0f;
    }
    result.gtmPercentage = 1.0f - result.ltmPercentage;

    // Keep contrast enhancement off when ACR3 already supplies the display S-curve toe/shoulder.
    result.contrastEnhanceDark = 0.0f;
    result.contrastEnhanceBright = 0.0f;

    // Preserve linear highlight ceiling for multi-frame HDR+ bracket captures (> 1.0).
    result.highlightClipLimit = result.kneeY[kKneePointCount - 1] +
                                0.16f * SmoothStep(1.05f, 3.0f, params.maxLinearIntensity * baselineGain);

    *outCurve = result;
    return true;
}

}  // namespace qcom_adrc
