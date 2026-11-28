#include "qcom_adrc_tmc12.h"

#include <algorithm>
#include <cmath>
#include <numeric>

namespace qcom_adrc {

namespace {

constexpr float kEps = 1.0e-6f;
constexpr float kLogAvgEps = 1.0e-4f;
// Qualcomm linear AEC/ADRC luminance targets aligned with Chromatix tmc12_sw tone_target[2]=0.55
// (SrgbToLinear(0.55) = 0.266 in pure [0, 1] scene-linear domain before IPE Gamma15).
constexpr float kTargetCameraMidLuma = 0.205f;
constexpr float kTargetBgMidLuma = 0.266f;

// Qualcomm Chromatix tmc12_sw.xml (mod_tmc12_aec_data) baseline constants.
constexpr float kHistClipSlope = 16.0f;
constexpr float kToneBrightAdj = 1.50f;
constexpr float kToneDarkAdj = 2.00f;
constexpr float kHistEnhanceClamp = 1.30f;
constexpr float kContrastDarkAdj = 1.08f;
constexpr float kToneMaxRatio = 8.0f;
constexpr float kBaseLtmPercentage = 0.80f;
constexpr float kMinLtmPercentage = 0.20f;

// 5-tap symmetric smoothing kernel matching TMC12 hist_conv_kernel structure.
constexpr float kHistConvKernel[5] = {0.36f, 0.20f, 0.08f, 0.03f, 0.01f};

// Pure scene-linear Qualcomm TMC12 anchor points, Chromatix tone_target, and histogram blend weights.
constexpr float kAnchorY[kKneePointCount] = {0.0f, 0.06f, 0.20f, 0.58f, 1.0f};
constexpr float kToneTargets[kKneePointCount] = {0.0f, 0.30f, 0.55f, 0.70f, 1.0f};
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
    double facePixelCount = 0.0;
    int highlightClipCount = 0;

    // Precompute Qualcomm Face.xml FaceROILocationWeight (center=0.95 -> edge=0.05) per face.
    std::vector<float> faceLocWeights(params.faceRects.size(), 1.0f);
    for (size_t fi = 0; fi < params.faceRects.size(); ++fi) {
        const auto& face = params.faceRects[fi];
        const float cx = 0.5f * (face.left + face.right) - 0.5f;
        const float cy = 0.5f * (face.top + face.bottom) - 0.5f;
        const float normDist = ClampFloat(std::sqrt(cx * cx + cy * cy) * 2.0f, 0.0f, 1.0f);
        faceLocWeights[fi] = 0.95f - 0.90f * SmoothStep(0.15f, 0.95f, normDist);
    }

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
            float faceLocWeight = 0.0f;
            for (size_t fi = 0; fi < params.faceRects.size(); ++fi) {
                const auto& face = params.faceRects[fi];
                if (u >= face.left && u <= face.right && v >= face.top && v <= face.bottom) {
                    faceLocWeight = std::max(faceLocWeight, faceLocWeights[fi]);
                }
            }
            const float totalWeight = centerWeight + 3.0f * faceLocWeight;
            const double safeLuma = static_cast<double>(std::max(luma, 0.0f));
            const double logL = std::log(safeLuma + kLogAvgEps);
            weightedLogSum += static_cast<double>(totalWeight) * logL;
            weightSum += static_cast<double>(totalWeight);
            if (maxChannel < 0.85f) {
                bgUnsatLumaSum += static_cast<double>(totalWeight) * safeLuma;
                bgUnsatWeightSum += static_cast<double>(totalWeight);
            }
            if (faceLocWeight > 0.0f) {
                faceWeightedLogSum += static_cast<double>(faceLocWeight) * logL;
                faceLinearLumaSum += static_cast<double>(faceLocWeight) * safeLuma;
                faceWeightSum += static_cast<double>(faceLocWeight);
                facePixelCount += 1.0;
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
    const float bgUnsatMean = (bgUnsatWeightSum > 16.0)
        ? static_cast<float>(bgUnsatLumaSum / bgUnsatWeightSum)
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

    // Step 3: Physical exposure index (CamX Arbitration.xml / Metering.xml luxIndex),
    // exposure ceiling detection, and low-light triggers (ADRCCapForGain / CappedQLLADRC).
    // Both auto and manual captures go through the exact same exposure-metadata + RAW-stats
    // formulation: tone mapping / DRC depends on scene exposure and RAW dynamic range, not on
    // whether AE mode is ON or OFF.
    const float refIso = static_cast<float>(std::max(params.minIso, 50));
    const float isoGain = std::max(static_cast<float>(params.iso) / refIso, 1.0f);
    const float highIsoAtten = 1.0f - 0.65f * SmoothStep(4.0f, 32.0f, isoGain);

    const float shutterMs = (params.shutterSpeedNs > 0)
        ? (static_cast<float>(params.shutterSpeedNs) * 1.0e-6f)
        : 10.0f;
    const float apertureF = (std::isfinite(params.aperture) && params.aperture > 0.5f && params.aperture < 32.0f)
        ? params.aperture
        : 1.8f;
    const float apertureScale = (1.8f / apertureF) * (1.8f / apertureF);
    const float tetMsNorm = shutterMs * (static_cast<float>(std::max(params.iso, 50)) / 100.0f) * apertureScale;
    const float tetNorm = tetMsNorm / 1000.0f;
    // CamX Arbitration.xml expKneeEntries mapping: (gain=2, 11.11ms -> 260.6), +23.45 per +1 EV.
    // Metering.xml luxLumaTarget transitions from daylight (63) to night (45) over luxIndex [360, 420].
    const float camxExpIndex = 260.57f + 23.45f * std::log2(std::max(tetMsNorm, 0.01f) / 22.22f);
    const float lowLightBlend = std::max(
        SmoothStep(360.0f, 420.0f, camxExpIndex),
        SmoothStep(8.0f, 32.0f, isoGain));

    // Exposure saturation detection: when shutter and ISO both approach hardware/handheld ceilings,
    // exposure headroom is exhausted rather than intentionally underexposed to protect highlights.
    const float isoCapSat = (params.maxIso > static_cast<int>(refIso))
        ? SmoothStep(0.65f, 0.92f, static_cast<float>(params.iso) / static_cast<float>(params.maxIso))
        : 0.0f;
    const float analogSat = (params.maxAnalogIso > static_cast<int>(refIso))
        ? SmoothStep(0.75f, 1.15f, static_cast<float>(params.iso) / static_cast<float>(params.maxAnalogIso))
        : 0.0f;
    const float absIsoSat = SmoothStep(24.0f, 64.0f, isoGain);
    const float isoSaturation = std::max(std::max(isoCapSat, analogSat), absIsoSat);

    const float shutterMsSat = SmoothStep(28.0f, 80.0f, shutterMs);
    const float shutterCapSat = (params.maxExposureTimeNs > 0 && params.shutterSpeedNs > 0)
        ? SmoothStep(0.65f, 0.92f,
                     static_cast<float>(params.shutterSpeedNs) / static_cast<float>(params.maxExposureTimeNs))
        : 0.0f;
    const float shutterSaturation = std::max(shutterMsSat, shutterCapSat);

    const float exposureCeiling = isoSaturation * shutterSaturation;
    const float extremeDarkTet = SmoothStep(1.5f, 6.0f, tetNorm) * SmoothStep(16.0f, 48.0f, isoGain);
    const float lowLightCeiling = ClampFloat(std::max(exposureCeiling, extremeDarkTet), 0.0f, 1.0f);

    // Highlight presence check: ADRC lift is justified when bright highlights exist in the RAW
    // (meaning exposure was held down to preserve highlights / high DR). Require both peak (p992)
    // and upper-body (p95) evidence so tiny hot pixels or isolated LEDs in a pitch-black frame
    // do not trigger global amplification.
    const float highlightPresence = 0.55f * SmoothStep(0.08f, 0.45f, p992) +
                                    0.45f * SmoothStep(0.04f, 0.25f, p95);
    const float darkNoHighlight = (1.0f - highlightPresence) *
                                  std::max(lowLightCeiling, SmoothStep(6.0f, 20.0f, isoGain));
    const float pitchBlackGuard = (1.0f - SmoothStep(0.03f, 0.14f, p992)) *
                                  (1.0f - SmoothStep(0.01f, 0.04f, bgUnsatMean));
    const float nightNoLift = ClampFloat(std::max(darkNoHighlight, pitchBlackGuard), 0.0f, 1.0f);

    const float yRatioMax = ClampFloat(
        (5.00f - 2.00f * SmoothStep(4.0f, 32.0f, isoGain)) * (1.0f - 0.50f * lowLightCeiling),
        1.40f,
        5.00f);
    result.yRatioMax = yRatioMax;

    // Step 4: Unified Qualcomm AEC/ADRC metering layer (DRCGain, DRCGainDark, FaceSA & QLL).
    const float postBoost = std::isfinite(params.postRawSensitivityBoost)
        ? ClampFloat(params.postRawSensitivityBoost, 1.0f, 8.0f)
        : 1.0f;
    const float userEvScale = std::pow(2.0f, ClampFloat(params.exposureCompensationEv, -3.0f, 3.0f));
    const bool isMultiFrameHdr = (params.frameCount > 1) || (params.maxLinearIntensity * baselineGain > 1.25f);
    const float baseMaxDrcGain = isMultiFrameHdr ? 6.0f : 5.0f;

    // Qualcomm Face.xml (FaceROISizeWeight * FaceROILocationWeight) + ALowLightFaceControl:
    // smooth area/location confidence weighting, backlit portrait detection, and low-light
    // attenuation so dark faces never blow up night noise.
    const float faceAreaFraction = static_cast<float>(facePixelCount) / static_cast<float>(pixelCount);
    const float faceAreaConf = SmoothStep(0.002f, 0.04f, faceAreaFraction);
    const float avgFaceLocWeight = (facePixelCount > 0.0)
        ? static_cast<float>(faceWeightSum / facePixelCount)
        : 0.0f;
    const float faceSpatialConf = faceAreaConf * ClampFloat(avgFaceLocWeight, 0.0f, 1.0f);
    const float lowLightFaceAtten = (1.0f - 0.80f * lowLightCeiling) * (1.0f - nightNoLift);
    const float faceLogMean = (faceWeightSum > 8.0)
        ? static_cast<float>(std::exp(faceWeightedLogSum / faceWeightSum))
        : weightedLogAvg;
    const float faceLinearMean = (faceWeightSum > 8.0)
        ? static_cast<float>(faceLinearLumaSum / faceWeightSum)
        : bgUnsatMean;
    const float backlitFaceFactor = faceSpatialConf * lowLightFaceAtten *
                                    SmoothStep(0.60f, 0.90f, p992) *
                                    (1.0f - SmoothStep(0.10f, 0.22f, faceLinearMean)) *
                                    SmoothStep(1.25f, 2.50f, bgUnsatMean / std::max(faceLinearMean, 0.01f));
    const float faceBlend = (0.40f + 0.15f * backlitFaceFactor) * faceSpatialConf * lowLightFaceAtten;
    const float effectiveLuma = weightedLogAvg * (1.0f - faceBlend) + faceLogMean * faceBlend;
    const float effectiveBgLuma = bgUnsatMean * (1.0f - faceBlend) + faceLinearMean * faceBlend;

    // ADRCCapForGain & CappedQLLADRC: cap allowed ADRC lift as ISO rises and collapse toward
    // 1.0 when exposure has reached its ceiling or when no highlights exist to justify ADRC.
    const float highIsoCap = isMultiFrameHdr ? 1.85f : 1.55f;
    const float gainCapForIso = baseMaxDrcGain -
        (baseMaxDrcGain - highIsoCap) * SmoothStep(6.0f, 28.0f, isoGain);
    const float capWithCeiling = gainCapForIso + (1.15f - gainCapForIso) * lowLightCeiling;
    const float effectiveMaxDrcGain = ClampFloat(
        capWithCeiling + (1.0f - capWithCeiling) * nightNoLift,
        1.0f,
        baseMaxDrcGain);

    const float highlightPressure = SmoothStep(0.65f, 0.96f, p992) * 0.70f +
                                    SmoothStep(0.003f, 0.05f, clippedFraction) * 0.30f;
    const float darkNightDamp = (1.0f - highlightPressure) *
                                (1.0f - SmoothStep(0.015f, 0.055f, effectiveLuma));
    // CamX Metering.xml drops luxLumaTarget from 63 -> 45 (ratio 0.714 in luma / ~0.50 in scene-linear)
    // and tmc12_sw shifts tone_target[2] from 0.55 -> 0.40 in low light so night scenes keep dark mood.
    const float lowLightTargetScale = 1.0f - 0.50f * lowLightBlend;
    const float targetBgLuma = ClampFloat(
        kTargetBgMidLuma * lowLightTargetScale * (1.0f - 0.35f * darkNightDamp) * userEvScale,
        0.08f, 0.48f);
    const float targetMidLuma = ClampFloat(
        kTargetCameraMidLuma * lowLightTargetScale * (1.0f - 0.35f * darkNightDamp) * userEvScale,
        0.06f, 0.40f);

    const float bgNeededGain = ClampFloat(
        targetBgLuma / std::max(effectiveBgLuma, 0.025f),
        0.72f,
        effectiveMaxDrcGain);
    const float logNeededGain = ClampFloat(
        targetMidLuma / std::max(effectiveLuma, 0.018f),
        1.0f,
        effectiveMaxDrcGain);
    const float adrcBlend = std::max(
        SmoothStep(5.6f, 7.2f, sceneDrEv),
        0.85f * backlitFaceFactor);
    float neededGain = bgNeededGain * (1.0f - adrcBlend) +
                       std::max(bgNeededGain, logNeededGain) * adrcBlend;
    // Only suppress unwarranted amplification (> 1.0) in dark/ceiling frames.
    if (neededGain > 1.0f) {
        neededGain = 1.0f + (neededGain - 1.0f) * (1.0f - nightNoLift);
    }
    const float drcGain = ClampFloat(
        (postBoost > 1.01f) ? std::max(postBoost, neededGain) : neededGain,
        0.72f,
        std::max(postBoost, effectiveMaxDrcGain));

    // Dark boost (DRCGainDark): lifts shadows in moderate/high-DR scenes, suppressed at high ISO
    // and disabled when exposure is saturated or no highlights exist.
    const float shadowRatio = ClampFloat(p50 / std::max(p05, 1.0e-3f), 1.0f, 64.0f);
    const float darkTrigger = SmoothStep(4.8f, 8.0f, sceneDrEv) *
                              SmoothStep(2.5f, 10.0f, shadowRatio);
    const float darkBoostExtra = 0.25f * darkTrigger * highIsoAtten *
                                 (1.0f - lowLightCeiling) * (1.0f - nightNoLift);
    const float drcGainDark = ClampFloat(1.0f + darkBoostExtra, 1.0f, 1.30f);

    const float histEnhanceScale = (1.0f - nightNoLift) * (1.0f - 0.85f * lowLightCeiling);

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

    const float activeMidToneTarget = kToneTargets[2] - 0.15f * lowLightBlend;
    const float targetMidLinear = SrgbToLinear(activeMidToneTarget) * userEvScale;
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
    // Suppress histogram lift in manual exposure, exposure-ceiling, and pitch-black scenes so
    // drcGain == 1.0 converges cleanly to an identity linear curve.
    for (int i = 0; i < kKneePointCount; ++i) {
        const float w = kHistEnhanceRatio[i] * histEnhanceScale;
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
        0.0f, kBaseLtmPercentage) * (1.0f - nightNoLift) * (1.0f - 0.75f * lowLightCeiling);
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
