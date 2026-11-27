#pragma once

#include <vector>

#include "qcom_adrc_tmc12.h"

namespace qcom_adrc {

constexpr int kPgtmGridWidth = 64;
constexpr int kPgtmGridHeight = 48;
constexpr int kBilateralGridW = 16;
constexpr int kBilateralGridH = 12;
constexpr int kBilateralGridZ = 16;

struct QualcommAdrcPgtmOutput {
    Tmc12CurveResult curve;
    int mapPointsH = kPgtmGridWidth;
    int mapPointsV = kPgtmGridHeight;
    int mapPointsN = 257;
    float rangeScale = 1.0f;
    std::vector<float> gains;  // layout: ((v * mapPointsH + h) * mapPointsN + n)
};

/**
 * Generates a pure scene-linear DNG ProfileGainTableMap2 from a 256x192 linear Profile RGB
 * image using Qualcomm ADRC/TMC12 curve solving + multi-scale Guided Filter LTM + regularized
 * Bilateral Guided Upsampling (BGU) with strict monotonicity & ISO-aware noise clamping.
 */
bool GenerateQualcommAdrcPgtm(
    const float* linearRgba,
    const AdrcInputParams& params,
    int pointCount,
    float rangeScale,
    QualcommAdrcPgtmOutput* outPgtm);

}  // namespace qcom_adrc
