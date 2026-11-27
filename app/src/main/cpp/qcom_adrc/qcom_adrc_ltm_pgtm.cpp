#include "qcom_adrc_ltm_pgtm.h"

#include <algorithm>
#include <cmath>
#include <vector>

namespace qcom_adrc {

namespace {

constexpr float kEps = 1.0e-6f;
constexpr float kLogFloor = 1.0e-4f;
constexpr float kMinTableGain = 1.0f / 4096.0f;
constexpr float kMaxTableGain = 4096.0f;

// Shared DNG ProfileGainTableMap intensity weights.
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

// Fast O(N) separable box filter with edge clamping.
void BoxFilter(
    const std::vector<float>& src,
    int width,
    int height,
    int radius,
    std::vector<float>* temp,
    std::vector<float>* dst) {
    temp->resize(src.size());
    dst->resize(src.size());

    // Horizontal pass.
    for (int y = 0; y < height; ++y) {
        const int rowOffset = y * width;
        double sum = 0.0;
        for (int dx = -radius; dx <= radius; ++dx) {
            const int sx = std::max(0, std::min(width - 1, dx));
            sum += static_cast<double>(src[static_cast<size_t>(rowOffset + sx)]);
        }
        const double invWindow = 1.0 / static_cast<double>(2 * radius + 1);
        (*temp)[static_cast<size_t>(rowOffset)] = static_cast<float>(sum * invWindow);
        for (int x = 1; x < width; ++x) {
            const int removeX = std::max(0, x - radius - 1);
            const int addX = std::min(width - 1, x + radius);
            sum += static_cast<double>(src[static_cast<size_t>(rowOffset + addX)]) -
                   static_cast<double>(src[static_cast<size_t>(rowOffset + removeX)]);
            (*temp)[static_cast<size_t>(rowOffset + x)] = static_cast<float>(sum * invWindow);
        }
    }

    // Vertical pass.
    const double invWindow = 1.0 / static_cast<double>(2 * radius + 1);
    for (int x = 0; x < width; ++x) {
        double sum = 0.0;
        for (int dy = -radius; dy <= radius; ++dy) {
            const int sy = std::max(0, std::min(height - 1, dy));
            sum += static_cast<double>((*temp)[static_cast<size_t>(sy * width + x)]);
        }
        (*dst)[static_cast<size_t>(x)] = static_cast<float>(sum * invWindow);
        for (int y = 1; y < height; ++y) {
            const int removeY = std::max(0, y - radius - 1);
            const int addY = std::min(height - 1, y + radius);
            sum += static_cast<double>((*temp)[static_cast<size_t>(addY * width + x)]) -
                   static_cast<double>((*temp)[static_cast<size_t>(removeY * width + x)]);
            (*dst)[static_cast<size_t>(y * width + x)] = static_cast<float>(sum * invWindow);
        }
    }
}

// Self-guided edge-preserving filter (He et al.) in log-luminance domain.
void SelfGuidedFilter(
    const std::vector<float>& guide,
    int width,
    int height,
    int radius,
    float eps,
    std::vector<float>* outBase) {
    const size_t n = guide.size();
    std::vector<float> sq(n);
    for (size_t i = 0; i < n; ++i) {
        sq[i] = guide[i] * guide[i];
    }

    std::vector<float> scratch(n);
    std::vector<float> meanI(n);
    std::vector<float> meanII(n);
    BoxFilter(guide, width, height, radius, &scratch, &meanI);
    BoxFilter(sq, width, height, radius, &scratch, &meanII);

    std::vector<float> coeffA(n);
    std::vector<float> coeffB(n);
    for (size_t i = 0; i < n; ++i) {
        const float varI = std::max(meanII[i] - meanI[i] * meanI[i], 0.0f);
        const float a = varI / (varI + eps);
        const float b = meanI[i] * (1.0f - a);
        coeffA[i] = a;
        coeffB[i] = b;
    }

    std::vector<float> meanA(n);
    std::vector<float> meanB(n);
    BoxFilter(coeffA, width, height, radius, &scratch, &meanA);
    BoxFilter(coeffB, width, height, radius, &scratch, &meanB);

    outBase->resize(n);
    for (size_t i = 0; i < n; ++i) {
        (*outBase)[i] = meanA[i] * guide[i] + meanB[i];
    }
}

// Perceptual coordinate mapping linear intensity in [0, maxRange] to [0, 1] for bilateral Z-axis.
inline float IntensityToZCoord(float intensity, float maxRange) {
    const float safeMax = std::max(maxRange, 1.0f);
    const float k = 12.0f;
    const float denom = std::log1p(k * safeMax);
    return ClampFloat(std::log1p(k * std::max(intensity, 0.0f)) / denom, 0.0f, 1.0f);
}

inline int GridIndex(int x, int y, int z) {
    return (y * kBilateralGridW + x) * kBilateralGridZ + z;
}

struct BguCellStats {
    float sw = 0.0f;
    float sx = 0.0f;
    float sxx = 0.0f;
    float sy = 0.0f;
    float sxy = 0.0f;
};

struct BguAffine {
    float slope = 1.0f;
    float offset = 0.0f;
};

void BlurBguGrid(std::vector<BguCellStats>* grid) {
    constexpr float kW[3] = {0.25f, 0.50f, 0.25f};
    std::vector<BguCellStats> tmp(grid->size());

    auto addWeighted = [](BguCellStats& dst, const BguCellStats& src, float w) {
        dst.sw += src.sw * w;
        dst.sx += src.sx * w;
        dst.sxx += src.sxx * w;
        dst.sy += src.sy * w;
        dst.sxy += src.sxy * w;
    };

    // Blur along Z (intensity axis, 1 pass).
    for (int y = 0; y < kBilateralGridH; ++y) {
        for (int x = 0; x < kBilateralGridW; ++x) {
            for (int z = 0; z < kBilateralGridZ; ++z) {
                BguCellStats acc{};
                for (int dz = -1; dz <= 1; ++dz) {
                    const int sz = std::max(0, std::min(kBilateralGridZ - 1, z + dz));
                    addWeighted(acc, (*grid)[static_cast<size_t>(GridIndex(x, y, sz))], kW[dz + 1]);
                }
                tmp[static_cast<size_t>(GridIndex(x, y, z))] = acc;
            }
        }
    }
    *grid = tmp;

    // Blur along X and Y (2 passes for smooth spatial LTM transitions without block seams).
    for (int pass = 0; pass < 2; ++pass) {
        for (int y = 0; y < kBilateralGridH; ++y) {
            for (int x = 0; x < kBilateralGridW; ++x) {
                for (int z = 0; z < kBilateralGridZ; ++z) {
                    BguCellStats acc{};
                    for (int dx = -1; dx <= 1; ++dx) {
                        const int sx = std::max(0, std::min(kBilateralGridW - 1, x + dx));
                        addWeighted(acc, (*grid)[static_cast<size_t>(GridIndex(sx, y, z))], kW[dx + 1]);
                    }
                    tmp[static_cast<size_t>(GridIndex(x, y, z))] = acc;
                }
            }
        }
        for (int y = 0; y < kBilateralGridH; ++y) {
            for (int x = 0; x < kBilateralGridW; ++x) {
                for (int z = 0; z < kBilateralGridZ; ++z) {
                    BguCellStats acc{};
                    for (int dy = -1; dy <= 1; ++dy) {
                        const int sy = std::max(0, std::min(kBilateralGridH - 1, y + dy));
                        addWeighted(acc, tmp[static_cast<size_t>(GridIndex(x, sy, z))], kW[dy + 1]);
                    }
                    (*grid)[static_cast<size_t>(GridIndex(x, y, z))] = acc;
                }
            }
        }
    }
}

BguAffine SampleTrilinearBgu(
    const std::vector<BguAffine>& affineGrid,
    float gx,
    float gy,
    float gz) {
    const float cx = ClampFloat(gx, 0.0f, static_cast<float>(kBilateralGridW - 1));
    const float cy = ClampFloat(gy, 0.0f, static_cast<float>(kBilateralGridH - 1));
    const float cz = ClampFloat(gz, 0.0f, static_cast<float>(kBilateralGridZ - 1));

    const int x0 = static_cast<int>(std::floor(cx));
    const int y0 = static_cast<int>(std::floor(cy));
    const int z0 = static_cast<int>(std::floor(cz));
    const int x1 = std::min(x0 + 1, kBilateralGridW - 1);
    const int y1 = std::min(y0 + 1, kBilateralGridH - 1);
    const int z1 = std::min(z0 + 1, kBilateralGridZ - 1);

    const float tx = cx - static_cast<float>(x0);
    const float ty = cy - static_cast<float>(y0);
    const float tz = cz - static_cast<float>(z0);

    auto lerp2 = [&](int z) -> BguAffine {
        const BguAffine& a00 = affineGrid[static_cast<size_t>(GridIndex(x0, y0, z))];
        const BguAffine& a10 = affineGrid[static_cast<size_t>(GridIndex(x1, y0, z))];
        const BguAffine& a01 = affineGrid[static_cast<size_t>(GridIndex(x0, y1, z))];
        const BguAffine& a11 = affineGrid[static_cast<size_t>(GridIndex(x1, y1, z))];
        const float s0 = a00.slope + (a10.slope - a00.slope) * tx;
        const float s1 = a01.slope + (a11.slope - a01.slope) * tx;
        const float o0 = a00.offset + (a10.offset - a00.offset) * tx;
        const float o1 = a01.offset + (a11.offset - a01.offset) * tx;
        return {s0 + (s1 - s0) * ty, o0 + (o1 - o0) * ty};
    };

    const BguAffine c0 = lerp2(z0);
    const BguAffine c1 = lerp2(z1);
    return {
        c0.slope + (c1.slope - c0.slope) * tz,
        c0.offset + (c1.offset - c0.offset) * tz,
    };
}

}  // namespace

bool GenerateQualcommAdrcPgtm(
    const float* linearRgba,
    const AdrcInputParams& params,
    int pointCount,
    float rangeScale,
    QualcommAdrcPgtmOutput* outPgtm) {
    if (linearRgba == nullptr || outPgtm == nullptr ||
        params.width <= 0 || params.height <= 0 ||
        pointCount < 2 || !std::isfinite(rangeScale) || rangeScale <= 0.0f ||
        !std::isfinite(params.rendererBaselineGain) || params.rendererBaselineGain <= 0.0f) {
        return false;
    }

    Tmc12CurveResult curve;
    if (!SolveAdrcTmc12(linearRgba, params, &curve)) {
        return false;
    }

    const int width = params.width;
    const int height = params.height;
    const int pixelCount = width * height;
    const float baselineGain = params.rendererBaselineGain;

    std::vector<float> effIntensity(static_cast<size_t>(pixelCount));
    std::vector<float> logIntensity(static_cast<size_t>(pixelCount));
    float maxEffIntensity = 1.0f;

    for (int i = 0; i < pixelCount; ++i) {
        const float r = linearRgba[i * 4 + 0] * baselineGain;
        const float g = linearRgba[i * 4 + 1] * baselineGain;
        const float b = linearRgba[i * 4 + 2] * baselineGain;
        const float intensity = ComputePgtmIntensity(r, g, b);
        effIntensity[static_cast<size_t>(i)] = intensity;
        logIntensity[static_cast<size_t>(i)] = std::log(std::max(intensity, 0.0f) + kLogFloor);
        maxEffIntensity = std::max(maxEffIntensity, intensity);
    }

    // Include unaveraged peak highlights from GPU box reduction so table grid covers full range.
    const float tableMaxEffIntensity = std::max(
        maxEffIntensity,
        std::max(params.maxLinearIntensity, 1.0f) * baselineGain);

    // Step 1: Multi-scale edge-preserving Guided Filter in log-intensity domain.
    // Combines medium-scale (local contrast halo-free) and large-scale (regional illumination)
    // illumination estimates, mirroring Qualcomm LTM14 mask filter + 3D cell distribution.
    std::vector<float> baseMedium;
    std::vector<float> baseLarge;
    SelfGuidedFilter(logIntensity, width, height, /*radius=*/7, /*eps=*/0.035f, &baseMedium);
    SelfGuidedFilter(logIntensity, width, height, /*radius=*/20, /*eps=*/0.050f, &baseLarge);

    const float ltmPct = ClampFloat(curve.ltmPercentage, 0.0f, 0.85f);
    const float gtmPct = 1.0f - ltmPct;
    const float refIso = static_cast<float>(std::max(params.minIso, 50));
    const float isoGain = std::max(static_cast<float>(params.iso) / refIso, 1.0f);
    const float lceStrength = 0.12f * (1.0f - 0.70f * SmoothStep(4.0f, 24.0f, isoGain)) *
                              SmoothStep(0.05f, 0.45f, ltmPct);

    // Step 2: Compute per-pixel LTM + GTM + LCE target linear intensity and splat into 16x12x16 BGU grid.
    std::vector<BguCellStats> bguGrid(
        static_cast<size_t>(kBilateralGridW * kBilateralGridH * kBilateralGridZ));

    for (int y = 0; y < height; ++y) {
        const float gy = (static_cast<float>(y) + 0.5f) * static_cast<float>(kBilateralGridH) /
                         static_cast<float>(height) - 0.5f;
        const int y0 = static_cast<int>(ClampFloat(std::floor(gy), 0.0f, static_cast<float>(kBilateralGridH - 1)));
        const int y1 = std::min(y0 + 1, kBilateralGridH - 1);
        const float ty = ClampFloat(gy - static_cast<float>(y0), 0.0f, 1.0f);

        for (int x = 0; x < width; ++x) {
            const int idx = y * width + x;
            const float xLin = effIntensity[static_cast<size_t>(idx)];
            const float baseLog = 0.45f * baseMedium[static_cast<size_t>(idx)] +
                                  0.55f * baseLarge[static_cast<size_t>(idx)];
            const float detailLog = logIntensity[static_cast<size_t>(idx)] - baseLog;
            const float baseLin = std::max(std::exp(baseLog) - kLogFloor, 0.0f);

            // Split total compression into global (pixel-based GTM) + local (base-layer LTM).
            const float gtmGain = EvaluateTmc12Gain(curve, xLin, 0.05f);
            const float ltmGain = EvaluateTmc12Gain(curve, baseLin, 0.05f);
            float combinedGain = std::pow(gtmGain, gtmPct) * std::pow(ltmGain, ltmPct);

            // Subtle Qualcomm LCE (local contrast enhancement), attenuated in deep shadows & clipped highlights.
            if (lceStrength > 1.0e-4f) {
                const float shadowMask = SmoothStep(0.008f, 0.06f, baseLin);
                const float highlightMask = 1.0f - SmoothStep(0.75f, 1.05f, baseLin);
                const float clampedDetail = ClampFloat(detailLog, -0.35f, 0.35f);
                const float lceGain = std::exp(lceStrength * shadowMask * highlightMask * clampedDetail);
                combinedGain *= lceGain;
            }

            // Clamp gain to Qualcomm y_ratio_max to prevent noise explosion in deep shadows.
            combinedGain = ClampFloat(combinedGain, 0.05f, curve.yRatioMax);
            const float yTarget = std::max(xLin * combinedGain, 0.0f);

            const float gx = (static_cast<float>(x) + 0.5f) * static_cast<float>(kBilateralGridW) /
                             static_cast<float>(width) - 0.5f;
            const int x0 = static_cast<int>(ClampFloat(std::floor(gx), 0.0f, static_cast<float>(kBilateralGridW - 1)));
            const int x1 = std::min(x0 + 1, kBilateralGridW - 1);
            const float tx = ClampFloat(gx - static_cast<float>(x0), 0.0f, 1.0f);

            const float gz = IntensityToZCoord(xLin, tableMaxEffIntensity) *
                             static_cast<float>(kBilateralGridZ - 1);
            const int z0 = static_cast<int>(ClampFloat(std::floor(gz), 0.0f, static_cast<float>(kBilateralGridZ - 1)));
            const int z1 = std::min(z0 + 1, kBilateralGridZ - 1);
            const float tz = ClampFloat(gz - static_cast<float>(z0), 0.0f, 1.0f);

            const float wx[2] = {1.0f - tx, tx};
            const float wy[2] = {1.0f - ty, ty};
            const float wz[2] = {1.0f - tz, tz};
            const int xs[2] = {x0, x1};
            const int ys[2] = {y0, y1};
            const int zs[2] = {z0, z1};

            for (int dy = 0; dy < 2; ++dy) {
                for (int dx = 0; dx < 2; ++dx) {
                    const float wxy = wy[dy] * wx[dx];
                    for (int dz = 0; dz < 2; ++dz) {
                        const float w = wxy * wz[dz];
                        if (w <= 0.0f) continue;
                        BguCellStats& cell = bguGrid[static_cast<size_t>(GridIndex(xs[dx], ys[dy], zs[dz]))];
                        cell.sw += w;
                        cell.sx += w * xLin;
                        cell.sxx += w * xLin * xLin;
                        cell.sy += w * yTarget;
                        cell.sxy += w * xLin * yTarget;
                    }
                }
            }
        }
    }

    // Step 3: Smooth BGU statistics grid and solve regularized affine model per cell
    // with TMC12 global curve prior so empty/sparse bins gracefully fall back to TMC12.
    BlurBguGrid(&bguGrid);

    std::vector<BguAffine> affineGrid(bguGrid.size());
    constexpr float kPriorWeight = 2.0f;
    constexpr float kSlopeReg = 0.02f;
    const float kLogK = 12.0f;
    const float kLogDenom = std::log1p(kLogK * std::max(tableMaxEffIntensity, 1.0f));

    for (int z = 0; z < kBilateralGridZ; ++z) {
        const float zNorm = static_cast<float>(z) / static_cast<float>(kBilateralGridZ - 1);
        const float zCenterIntensity = std::expm1(zNorm * kLogDenom) / kLogK;
        const float priorGain = EvaluateTmc12Gain(curve, zCenterIntensity, 0.05f);
        const float priorY = zCenterIntensity * priorGain;

        for (int y = 0; y < kBilateralGridH; ++y) {
            for (int x = 0; x < kBilateralGridW; ++x) {
                const size_t cIdx = static_cast<size_t>(GridIndex(x, y, z));
                const BguCellStats& s = bguGrid[cIdx];

                // Regularized 2x2 least squares for y ≈ slope * x + offset anchored toward (priorGain, 0).
                const float a00 = s.sxx + kPriorWeight * zCenterIntensity * zCenterIntensity + kSlopeReg;
                const float a01 = s.sx + kPriorWeight * zCenterIntensity;
                const float a11 = s.sw + kPriorWeight + 1.0e-3f;
                const float b0 = s.sxy + kPriorWeight * zCenterIntensity * priorY + kSlopeReg * priorGain;
                const float b1 = s.sy + kPriorWeight * priorY;

                const float det = a00 * a11 - a01 * a01;
                float slope = priorGain;
                float offset = 0.0f;
                if (det > 1.0e-9f) {
                    slope = (a11 * b0 - a01 * b1) / det;
                    offset = (-a01 * b0 + a00 * b1) / det;
                }
                if (!std::isfinite(slope) || !std::isfinite(offset)) {
                    slope = priorGain;
                    offset = 0.0f;
                }
                affineGrid[cIdx] = {
                    ClampFloat(slope, 0.05f, curve.yRatioMax * 1.25f),
                    ClampFloat(offset, -0.15f, 0.35f),
                };
            }
        }
    }

    // Step 4: Bake 64x48xN pure scene-linear DNG ProfileGainTableMap2.
    // DNG SDK lookup coordinate: tableIndex = clamp(I_raw * rangeScale, 0, 1) * pointCount,
    // so knot n corresponds to I_raw = n / (pointCount * rangeScale),
    // and effective intensity I_eff = I_raw * baselineGain.
    outPgtm->curve = curve;
    outPgtm->mapPointsH = kPgtmGridWidth;
    outPgtm->mapPointsV = kPgtmGridHeight;
    outPgtm->mapPointsN = pointCount;
    outPgtm->rangeScale = rangeScale;
    outPgtm->gains.resize(
        static_cast<size_t>(kPgtmGridWidth * kPgtmGridHeight * pointCount));

    std::vector<float> knotEffX(static_cast<size_t>(pointCount));
    std::vector<float> knotZCoord(static_cast<size_t>(pointCount));
    std::vector<float> knotGlobalY(static_cast<size_t>(pointCount));
    const float invPointRange = 1.0f / (static_cast<float>(pointCount) * rangeScale);
    for (int n = 0; n < pointCount; ++n) {
        const float xRaw = static_cast<float>(n) * invPointRange;
        const float xEff = xRaw * baselineGain;
        knotEffX[static_cast<size_t>(n)] = xEff;
        knotZCoord[static_cast<size_t>(n)] =
            IntensityToZCoord(xEff, tableMaxEffIntensity) * static_cast<float>(kBilateralGridZ - 1);
        knotGlobalY[static_cast<size_t>(n)] = EvaluateTmc12ToneCurve(curve, xEff);
    }

    std::vector<float> curveY(static_cast<size_t>(pointCount));
    for (int py = 0; py < kPgtmGridHeight; ++py) {
        const float gy = (static_cast<float>(py) + 0.5f) * static_cast<float>(kBilateralGridH) /
                         static_cast<float>(kPgtmGridHeight) - 0.5f;
        for (int px = 0; px < kPgtmGridWidth; ++px) {
            const float gx = (static_cast<float>(px) + 0.5f) * static_cast<float>(kBilateralGridW) /
                             static_cast<float>(kPgtmGridWidth) - 0.5f;

            curveY[0] = 0.0f;
            for (int n = 1; n < pointCount; ++n) {
                const float xEff = knotEffX[static_cast<size_t>(n)];
                const float globalY = knotGlobalY[static_cast<size_t>(n)];
                const BguAffine affine = SampleTrilinearBgu(affineGrid, gx, gy, knotZCoord[static_cast<size_t>(n)]);
                float localY = affine.slope * xEff + affine.offset;

                // Blend back smoothly to global TMC12 shoulder above 0.95 to guarantee clean
                // highlight convergence across spatial cells without color/highlight banding.
                const float highlightBlend = SmoothStep(0.92f, 1.35f, xEff);
                float yVal = localY * (1.0f - highlightBlend) + globalY * highlightBlend;

                // Bound scalar gain to [0.05, yRatioMax].
                yVal = ClampFloat(yVal, xEff * 0.05f, xEff * curve.yRatioMax);
                curveY[static_cast<size_t>(n)] = yVal;
            }

            // Strict forward monotonicity projection: prevents tonal inversion anywhere on the curve.
            for (int n = 1; n < pointCount; ++n) {
                const float dx = knotEffX[static_cast<size_t>(n)] - knotEffX[static_cast<size_t>(n - 1)];
                const float minNextY = curveY[static_cast<size_t>(n - 1)] + dx * 0.04f;
                if (curveY[static_cast<size_t>(n)] < minNextY) {
                    curveY[static_cast<size_t>(n)] = minNextY;
                }
            }

            float* dst = outPgtm->gains.data() +
                         static_cast<size_t>((py * kPgtmGridWidth + px) * pointCount);
            for (int n = 1; n < pointCount; ++n) {
                const float xEff = knotEffX[static_cast<size_t>(n)];
                const float gain = (xEff > kEps) ? (curveY[static_cast<size_t>(n)] / xEff) : 1.0f;
                dst[n] = ClampFloat(gain, kMinTableGain, std::min(kMaxTableGain, curve.yRatioMax));
            }
            dst[0] = dst[1];
        }
    }

    return true;
}

}  // namespace qcom_adrc
