package com.hinnka.mycamera.raw

import com.hinnka.mycamera.processor.PhotonDehazeTuning
import com.hinnka.mycamera.utils.PLog
import kotlin.math.ln

/** Builds a DNG ProfileGainTableMap2 from MGC HDRNet's bilateral affine coefficient grid. */
internal object DngPhotonProfileGainTableGenerator {
    private const val TAG = "DngPhotonProfileGainTableGenerator"

    private const val TABLE_POINTS = 257
    private const val TARGET_TILE_PX = 64
    private const val GRID_MIN_H = 8
    private const val GRID_MIN_V = 6
    private const val GRID_MAX_H = 64
    private const val GRID_MAX_V = 48
    private const val MIN_TABLE_GAIN = 1f / 4096f
    private const val MAX_TABLE_GAIN = 4096f

    // Exact uGainLimits uploaded by MGC 9.6/9.7 Fast Moments' HDRNet renderer. The network's
    // affine luma prediction is converted to a gain and clamped to this range before it is
    // applied. These are renderer limits, distinct from DNG's much wider legal table range.
    private const val HDRNET_RENDER_MIN_GAIN = 0.03f
    private const val HDRNET_RENDER_MAX_GAIN = 30f
    private const val HDRNET_RENDER_MAX_GAIN_BLEND_THRESHOLD = 0f

    const val HDRNET_INPUT_WIDTH = 256
    const val HDRNET_INPUT_HEIGHT = 192
    const val HDRNET_GRID_WIDTH = 16
    const val HDRNET_GRID_HEIGHT = 12
    const val HDRNET_GRID_DEPTH = 8
    const val HDRNET_PGTM_GRID_WIDTH = 64
    const val HDRNET_PGTM_GRID_HEIGHT = 48
    const val HDRNET_MATCH_GRID_WIDTH = 8
    const val HDRNET_MATCH_GRID_HEIGHT = 6
    const val HDRNET_COEFFICIENT_COUNT = 2
    const val HDRNET_OUTPUT_FLOAT_COUNT =
        HDRNET_GRID_WIDTH * HDRNET_GRID_HEIGHT * HDRNET_GRID_DEPTH * HDRNET_COEFFICIENT_COUNT

    // Exact 1 x 16 guide parameters from MGC's embedded guide_coeffs.pb (MD5
    // 046e9e017194f8293245c33bf3b45b44). The protobuf's leading/trailing 1 x 2
    // matrices are both [1, 0], so only this learned piecewise-linear curve changes luma.
    private val HDRNET_GUIDE_SHIFTS = floatArrayOf(
        -0.016231587f,
        0.087645173f,
        0.046893604f,
        0.046908736f,
        0.164940223f,
        0.169144228f,
        0.164913952f,
        0.334212393f,
        0.360981315f,
        0.405426592f,
        0.502622545f,
        0.575052559f,
        0.885822535f,
        0.671997726f,
        0.769933939f,
        0.999969125f,
    )
    private val HDRNET_GUIDE_SLOPES = floatArrayOf(
        2.254485607f,
        -0.186903119f,
        -0.379063636f,
        -0.270400405f,
        -0.319921762f,
        -0.316523373f,
        -0.369912237f,
        -0.101488806f,
        -0.077343300f,
        -0.076434754f,
        0.009167636f,
        -0.071477108f,
        -0.020303842f,
        0.119247116f,
        0.008830319f,
        0.051524382f,
    )

    /**
     * Normalized ProfileGainTableMap intensity direction written by Pixel's MGC pipeline.
     *
     * This is deliberately distinct from the HDRNet tensor, whose channels are final-short
     * R, G, B and reconstructed final-long Rec.601 luma.
     * The DNG table N axis combines half of standard RGB luma with one eighth of min-RGB and
     * three eighths of max-RGB. Pixel DNGs scale all five values together for final-short space;
     * [hdrNetPlan] performs the same scale after accounting for renderer BaselineExposure.
     */
    internal val PXL_PROFILE_GAIN_TABLE_INPUT_WEIGHTS = floatArrayOf(
        0.1495f,
        0.2935f,
        0.057f,
        0.125f,
        0.375f,
    )

    /** Paris et al. intensity retained by the legacy CPU/reference implementation below. */
    internal val LOCAL_LAPLACIAN_INPUT_WEIGHTS = floatArrayOf(
        20f / 61f,
        40f / 61f,
        1f / 61f,
        0f,
        0f,
    )

    fun gridSizeFor(width: Int, height: Int): IntArray {
        val grid = chooseGrid(width, height)
        return intArrayOf(grid.mapPointsH, grid.mapPointsV)
    }

    /**
     * Plans a 64 x 48 PGTM grid resampled from MGC HDRNet's fixed 16 x 12 coefficient grid.
     *
     * HDRNet runs in the final-short-exposure linear domain: `RAW * sourceToShortGain`.
     * A conforming renderer folds its total BaselineExposure into the ProfileGainTableMap N
     * coordinate, so the stored weights cancel that renderer gain and reconstruct the same
     * `RAW * sourceToShortGain` coordinate used to build the table. BaselineExposure has no role
     * in HDRNet inference or viewfinder matching.
     */
    fun hdrNetPlan(
        rendererBaselineExposureEv: Float,
        hdrRatio: Float,
        sourceToShortGain: Float,
        samplingArea: PhotonPgtmSamplingArea = PhotonPgtmSamplingArea.FULL,
    ): HdrNetProfileGainTablePlan? {
        if (!rendererBaselineExposureEv.isFinite() ||
            !hdrRatio.isFinite() || hdrRatio <= 0f ||
            !sourceToShortGain.isFinite() || sourceToShortGain <= 0f
        ) {
            return null
        }
        val rendererBaselineGain = DngBaselineExposure.exactGain(rendererBaselineExposureEv)
        if (!rendererBaselineGain.isFinite() || rendererBaselineGain <= 0f) {
            return null
        }
        // Adobe evaluates MapInputWeights after applying TotalBaselineExposure (including any
        // profile offset). Cancel that entire renderer factor: both HDRNet and the PGTM N axis
        // must operate on RAW * finalShortGain, independently of the display-exposure target.
        val mapInputScale = sourceToShortGain / rendererBaselineGain
        if (!mapInputScale.isFinite() || mapInputScale <= 0f) return null
        val mapInputWeights = FloatArray(PXL_PROFILE_GAIN_TABLE_INPUT_WEIGHTS.size) { index ->
            PXL_PROFILE_GAIN_TABLE_INPUT_WEIGHTS[index] * mapInputScale
        }
        val spacingH = samplingArea.extentH / HDRNET_PGTM_GRID_WIDTH
        val spacingV = samplingArea.extentV / HDRNET_PGTM_GRID_HEIGHT
        return HdrNetProfileGainTablePlan(
            grid = PhotonPgtmGrid(
                mapPointsH = HDRNET_PGTM_GRID_WIDTH,
                mapPointsV = HDRNET_PGTM_GRID_HEIGHT,
                mapSpacingH = spacingH,
                mapSpacingV = spacingV,
                mapOriginH = samplingArea.originH + 0.5 * spacingH,
                mapOriginV = samplingArea.originV + 0.5 * spacingV,
            ),
            pointCount = TABLE_POINTS,
            mapInputWeights = mapInputWeights,
            gamma = 1f,
            rendererBaselineGain = rendererBaselineGain,
            sourceToShortGain = sourceToShortGain,
            // The native MGC path builds the long-exposure guide from a ratio of at least one.
            hdrRatio = hdrRatio.coerceAtLeast(1f),
        )
    }

    /**
     * Bakes HDRNet's bilateral affine grid into a DNG ProfileGainTableMap2.
     *
     * The extracted network returns one scale and one bias for every 16 x 12 x 8 grid entry.
     * DNG can only apply a scalar multiplicative gain, so each spatial cell's affine response is
     * resampled to 64 x 48 and converted into a 257-point gain curve per cell. The range
     * coordinate uses MGC's learned 16-segment luma guide from guide_coeffs.pb before trilinear
     * sampling of the bilateral grid. The selected model input supplies each cell's local
     * chromaticity so the downstream arithmetic-RGB Dehaze curve is represented by the scalar
     * table without reverting to a neutral-gray assumption. [postExposureEv] is applied after
     * that composed target, so viewfinder matching cannot alter HDRNet inference or its tone shape.
     */
    fun mapFromHdrNetCoefficients(
        plan: HdrNetProfileGainTablePlan,
        coefficients: FloatArray,
        modelInput: FloatArray,
        dehazeCurve: PhotonDehazeCurveParameters,
        postExposureEv: Float,
    ): DngProfileGainTableMap? {
        if (coefficients.size != HDRNET_OUTPUT_FLOAT_COUNT) {
            PLog.e(
                TAG,
                "HDRNet coefficient count=${coefficients.size}, expected=$HDRNET_OUTPUT_FLOAT_COUNT",
            )
            return null
        }
        if (modelInput.size != HDRNET_INPUT_WIDTH * HDRNET_INPUT_HEIGHT * 4) return null
        if (!postExposureEv.isFinite()) return null
        val gains = DngHdrNetProfileGainTableNative.generateGains(
            plan = plan,
            coefficients = coefficients,
            modelInput = modelInput,
            guideShifts = HDRNET_GUIDE_SHIFTS,
            guideSlopes = HDRNET_GUIDE_SLOPES,
            acr3Curve = ACR3Curve.samples(),
            renderMinGain = HDRNET_RENDER_MIN_GAIN,
            renderMaxGain = HDRNET_RENDER_MAX_GAIN,
            renderMaxGainBlendThreshold = HDRNET_RENDER_MAX_GAIN_BLEND_THRESHOLD,
            minTableGain = MIN_TABLE_GAIN,
            maxTableGain = MAX_TABLE_GAIN,
            dehazeCurve = dehazeCurve,
            postExposureGain = DngBaselineExposure.exactGain(postExposureEv),
        ) ?: run {
            PLog.e(TAG, "Native HDRNet ProfileGainTableMap generation failed")
            return null
        }

        return DngProfileGainTableMap(
            mapPointsV = plan.grid.mapPointsV,
            mapPointsH = plan.grid.mapPointsH,
            mapSpacingV = plan.grid.mapSpacingV,
            mapSpacingH = plan.grid.mapSpacingH,
            mapOriginV = plan.grid.mapOriginV,
            mapOriginH = plan.grid.mapOriginH,
            mapPointsN = plan.pointCount,
            mapInputWeights = plan.mapInputWeights,
            gamma = plan.gamma,
            gains = gains,
            sourceTag = DngProfileGainTableMap.TAG_PROFILE_GAIN_TABLE_MAP2,
        )
    }

    /** Exact MGC HDRNet guide: sum(slopes * relu(luma - shifts)), then clamp for slicing. */
    internal fun hdrNetGuide(luma: Float): Float {
        var guide = 0f
        for (index in HDRNET_GUIDE_SHIFTS.indices) {
            guide += HDRNET_GUIDE_SLOPES[index] *
                (luma - HDRNET_GUIDE_SHIFTS[index]).coerceAtLeast(0f)
        }
        return guide.coerceIn(0f, 1f)
    }

    /**
     * Builds Dehaze + DHA from the complete 256 x 192 HDRNet candidate, then evaluates the
     * composed output on the 8 x 6 display-linear Rec.709 matching grid.
     */
    fun evaluateHdrNetDehaze(
        plan: HdrNetProfileGainTablePlan,
        coefficients: FloatArray,
        modelInput: FloatArray,
        outputRotation: Int,
        dehazeTuning: PhotonDehazeTuning,
    ): DngHdrNetProfileGainTableNative.Evaluation? {
        if (coefficients.size != HDRNET_OUTPUT_FLOAT_COUNT) return null
        val expectedInputCount = HDRNET_INPUT_WIDTH * HDRNET_INPUT_HEIGHT * 4
        if (modelInput.size != expectedInputCount) return null
        val rotation = ((outputRotation % 360) + 360) % 360
        if (rotation != 0 && rotation != 90 && rotation != 180 && rotation != 270) return null
        return DngHdrNetProfileGainTableNative.evaluateDehazedDisplayLinearLumaGrid(
            plan = plan,
            coefficients = coefficients,
            modelInput = modelInput,
            outputRotation = rotation,
            guideShifts = HDRNET_GUIDE_SHIFTS,
            guideSlopes = HDRNET_GUIDE_SLOPES,
            renderMinGain = HDRNET_RENDER_MIN_GAIN,
            renderMaxGain = HDRNET_RENDER_MAX_GAIN,
            renderMaxGainBlendThreshold = HDRNET_RENDER_MAX_GAIN_BLEND_THRESHOLD,
            dehazeTuning = dehazeTuning,
            outputGridWidth = HDRNET_MATCH_GRID_WIDTH,
            outputGridHeight = HDRNET_MATCH_GRID_HEIGHT,
        )
    }

    fun plan(
        width: Int,
        height: Int,
        baselineExposureEv: Float,
        tablePointCount: Int = TABLE_POINTS,
        samplingArea: PhotonPgtmSamplingArea = PhotonPgtmSamplingArea.FULL,
    ): PhotonProfileGainTablePlan? {
        if (width <= 0 || height <= 0 || !baselineExposureEv.isFinite()) return null
        return plan(
            grid = chooseGrid(width, height),
            pointCount = tablePointCount.coerceIn(TABLE_POINTS, TABLE_POINTS),
            baselineExposureEv = baselineExposureEv,
            samplingArea = samplingArea,
        )
    }

    fun plan(
        grid: PhotonPgtmGrid,
        pointCount: Int,
        baselineExposureEv: Float,
        samplingArea: PhotonPgtmSamplingArea = PhotonPgtmSamplingArea.FULL,
    ): PhotonProfileGainTablePlan {
        val exposureGain = DngBaselineExposure.exactGain(baselineExposureEv)
        // The input shader samples one non-overlapping 16x16 block per spatial table entry.
        // Locate entries at those block centers; values outside the first/last center are
        // edge-clamped by DNG renderers, matching the BGU input boundary condition.
        val spacingH = samplingArea.extentH / grid.mapPointsH
        val spacingV = samplingArea.extentV / grid.mapPointsV
        val centeredGrid = grid.copy(
            mapSpacingH = spacingH,
            mapSpacingV = spacingV,
            mapOriginH = samplingArea.originH + 0.5 * spacingH,
            mapOriginV = samplingArea.originV + 0.5 * spacingV,
        )
        // dng_render applies PGTM before its exposure ramp, but multiplies the MapInputWeights
        // result by TotalBaselineExposure. Dividing the stored weights by that exact gain makes
        // the lookup coordinate equal the sampled source-linear guide in either pass order.
        val mapWeights = FloatArray(LOCAL_LAPLACIAN_INPUT_WEIGHTS.size) {
            LOCAL_LAPLACIAN_INPUT_WEIGHTS[it] / exposureGain
        }
        return PhotonProfileGainTablePlan(
            grid = centeredGrid,
            pointCount = pointCount,
            mapInputWeights = mapWeights,
            gamma = 1f,
            photonPlan = PhotonPgtmPlan(
                exposureGain = exposureGain,
                minTableGain = MIN_TABLE_GAIN,
                maxTableGain = MAX_TABLE_GAIN,
                parameters = PhotonLocalToneMappingParameters(),
            ),
        )
    }

    fun mapFromGpuGains(
        plan: PhotonProfileGainTablePlan,
        gains: FloatArray,
    ): DngProfileGainTableMap? {
        val expected = plan.cellCount * plan.pointCount
        if (gains.size != expected) {
            PLog.e(TAG, "GPU Photon HDR gain count=${gains.size}, expected=$expected")
            return null
        }
        val map = DngProfileGainTableMap(
            mapPointsV = plan.grid.mapPointsV,
            mapPointsH = plan.grid.mapPointsH,
            mapSpacingV = plan.grid.mapSpacingV,
            mapSpacingH = plan.grid.mapSpacingH,
            mapOriginV = plan.grid.mapOriginV,
            mapOriginH = plan.grid.mapOriginH,
            mapPointsN = plan.pointCount,
            mapInputWeights = plan.mapInputWeights,
            gamma = plan.gamma,
            gains = gains,
            sourceTag = DngProfileGainTableMap.TAG_PROFILE_GAIN_TABLE_MAP2,
        )
        if (!map.isValid) {
            PLog.e(TAG, "GPU Photon HDR produced an invalid ProfileGainTableMap")
            return null
        }
        return map
    }

    private fun chooseGrid(width: Int, height: Int): PhotonPgtmGrid {
        val mapPointsH = ((width + TARGET_TILE_PX - 1) / TARGET_TILE_PX)
            .coerceIn(GRID_MIN_H, GRID_MAX_H)
        val mapPointsV = ((height + TARGET_TILE_PX - 1) / TARGET_TILE_PX)
            .coerceIn(GRID_MIN_V, GRID_MAX_V)
        return PhotonPgtmGrid(
            mapPointsH = mapPointsH,
            mapPointsV = mapPointsV,
            mapSpacingH = if (mapPointsH > 1) 1.0 / (mapPointsH - 1) else 1.0,
            mapSpacingV = if (mapPointsV > 1) 1.0 / (mapPointsV - 1) else 1.0,
        )
    }
}

/**
 * Parameters copied from the published Local Laplacian and Google BGU reference code.
 *
 * The Local Laplacian edge slope is the compression ratio required to reach the target dynamic
 * range. A fixed exposure boost is applied to scene-linear input before Local Laplacian; scene
 * highlights therefore do not determine exposure. The Local Laplacian intensity and the DNG
 * table coordinate both use the paper's (20 R + 40 G + B) / 61 definition.
 * The MATLAB example's final display gamma is omitted because output
 * encoding is performed by the renderer after the DNG profile pipeline.
 */
internal data class PhotonLocalToneMappingParameters(
    val localLaplacianRangeSigma: Float = ln(2.5).toFloat(),
    val localLaplacianDetailExponent: Float = 1f,
    val localLaplacianIntensityLevels: Int = 64,
    val percentileClip: Float = 0.005f,
    val targetDynamicRange: Float = 100f,
    val preToneMapExposureBoostEv: Float = 0.0f,
    val bilateralSpatialBinSize: Int = 16,
    val bilateralRangeSigma: Float = 1f / 12f,
    val bilateralGuideCurveAlpha: Float = 0.8f,
    val bilateralRegularization: Float = 10f,
) {
    init {
        require(localLaplacianRangeSigma.isFinite() && localLaplacianRangeSigma > 0f)
        require(localLaplacianDetailExponent.isFinite() && localLaplacianDetailExponent > 0f)
        require(localLaplacianIntensityLevels >= 2)
        require(percentileClip.isFinite() && percentileClip in 0f..<0.5f)
        require(targetDynamicRange.isFinite() && targetDynamicRange > 1f)
        require(preToneMapExposureBoostEv.isFinite())
        require(bilateralSpatialBinSize > 0)
        require(bilateralRangeSigma.isFinite() && bilateralRangeSigma > 0f)
        require(bilateralGuideCurveAlpha.isFinite() && bilateralGuideCurveAlpha in 0f..1f)
        require(bilateralRegularization.isFinite() && bilateralRegularization > 0f)
    }
}

internal data class PhotonPgtmPlan(
    val exposureGain: Float,
    val minTableGain: Float,
    val maxTableGain: Float,
    val parameters: PhotonLocalToneMappingParameters,
) {
    init {
        require(exposureGain.isFinite() && exposureGain > 0f)
        require(minTableGain.isFinite() && minTableGain > 0f)
        require(maxTableGain.isFinite() && maxTableGain >= minTableGain)
    }
}

internal data class PhotonProfileGainTablePlan(
    val grid: PhotonPgtmGrid,
    val pointCount: Int,
    val mapInputWeights: FloatArray,
    val gamma: Float,
    val photonPlan: PhotonPgtmPlan,
) {
    init {
        require(mapInputWeights.size == 5 && mapInputWeights.all { it.isFinite() })
        require(gamma.isFinite() && gamma in 0.125f..8f)
    }

    val cellCount: Int
        get() = grid.mapPointsH * grid.mapPointsV
}

internal data class HdrNetProfileGainTablePlan(
    val grid: PhotonPgtmGrid,
    val pointCount: Int,
    val mapInputWeights: FloatArray,
    val gamma: Float,
    /** Total gain a conforming DNG renderer folds into the MapInputWeights coordinate. */
    val rendererBaselineGain: Float,
    /** Gain from source RAW to the candidate final-short exposure used by HDRNet. */
    val sourceToShortGain: Float,
    val hdrRatio: Float,
) {
    init {
        require(grid.mapPointsH == DngPhotonProfileGainTableGenerator.HDRNET_PGTM_GRID_WIDTH)
        require(grid.mapPointsV == DngPhotonProfileGainTableGenerator.HDRNET_PGTM_GRID_HEIGHT)
        require(pointCount > 1)
        require(mapInputWeights.size == 5 && mapInputWeights.all { it.isFinite() })
        require(gamma.isFinite() && gamma in 0.125f..8f)
        require(rendererBaselineGain.isFinite() && rendererBaselineGain > 0f)
        require(sourceToShortGain.isFinite() && sourceToShortGain > 0f)
        require(hdrRatio.isFinite() && hdrRatio >= 1f)
        val rendererMapInputEffectiveScale = mapInputWeights.sum() * rendererBaselineGain
        require(
            kotlin.math.abs(rendererMapInputEffectiveScale - sourceToShortGain) <=
                maxOf(1e-6f, sourceToShortGain * 1e-5f)
        )
    }

    val cellCount: Int
        get() = grid.mapPointsH * grid.mapPointsV

}

internal data class PhotonPgtmGrid(
    val mapPointsH: Int,
    val mapPointsV: Int,
    val mapSpacingH: Double,
    val mapSpacingV: Double,
    val mapOriginH: Double = 0.0,
    val mapOriginV: Double = 0.0,
)

internal data class PhotonPgtmSamplingArea(
    val originH: Double,
    val originV: Double,
    val extentH: Double,
    val extentV: Double,
) {
    init {
        require(originH.isFinite() && originV.isFinite())
        require(extentH.isFinite() && extentH > 0.0)
        require(extentV.isFinite() && extentV > 0.0)
        require(originH >= 0.0 && originV >= 0.0)
        require(originH + extentH <= 1.0 + COORDINATE_EPS)
        require(originV + extentV <= 1.0 + COORDINATE_EPS)
    }

    companion object {
        val FULL = PhotonPgtmSamplingArea(
            originH = 0.0,
            originV = 0.0,
            extentH = 1.0,
            extentV = 1.0,
        )

        private const val COORDINATE_EPS = 1e-9
    }
}
