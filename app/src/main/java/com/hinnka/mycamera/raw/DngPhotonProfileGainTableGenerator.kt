package com.hinnka.mycamera.raw

import com.hinnka.mycamera.utils.PLog
import kotlin.math.ceil

/** Builds a DNG ProfileGainTableMap2 from MGC HDRNet's bilateral affine coefficient grid. */
internal object DngPhotonProfileGainTableGenerator {
    private const val TAG = "DngPhotonProfileGainTableGenerator"

    private const val TABLE_POINTS = 257
    private const val HDRNET_MAX_TABLE_POINTS = 4096
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

    /**
     * Plans a 64 x 48 PGTM grid resampled from MGC HDRNet's fixed 16 x 12 coefficient grid.
     *
     * HDRNet runs in the final-short-exposure linear domain: `RAW * sourceToShortGain`.
     * A conforming renderer folds its total BaselineExposure into the ProfileGainTableMap N
     * coordinate, so the stored weights cancel that renderer gain and reconstruct the same
     * `RAW * sourceToShortGain` domain used to build the table.
     */
    fun hdrNetPlan(
        rendererBaselineExposureEv: Float,
        hdrRatio: Float,
        sourceToShortGain: Float,
        samplingArea: PhotonPgtmSamplingArea = PhotonPgtmSamplingArea.FULL,
        maximumShortIntensity: Float = 0f,
        maximumTablePoints: Int = HDRNET_MAX_TABLE_POINTS,
    ): HdrNetProfileGainTablePlan? {
        if (!rendererBaselineExposureEv.isFinite() ||
            !hdrRatio.isFinite() || hdrRatio <= 0f ||
            !sourceToShortGain.isFinite() || sourceToShortGain <= 0f ||
            !maximumShortIntensity.isFinite() || maximumShortIntensity < 0f ||
            maximumTablePoints < TABLE_POINTS
        ) {
            return null
        }
        val rendererBaselineGain = DngBaselineExposure.exactGain(rendererBaselineExposureEv)
        if (!rendererBaselineGain.isFinite() || rendererBaselineGain <= 0f) {
            return null
        }
        val pointLimit = minOf(maximumTablePoints, HDRNET_MAX_TABLE_POINTS)
        val requiredPoints = maxOf(
            TABLE_POINTS.toDouble(),
            ceil(maximumShortIntensity.toDouble() * TABLE_POINTS) + 1.0,
        )
        val pointCount = minOf(requiredPoints, pointLimit.toDouble()).toInt()
        val rangeScale = if (requiredPoints <= pointLimit) {
            TABLE_POINTS.toFloat() / pointCount
        } else {
            ((pointCount - 1).toDouble() / pointCount / maximumShortIntensity).toFloat()
        }
        val mapInputScale = sourceToShortGain / rendererBaselineGain * rangeScale
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
            pointCount = pointCount,
            mapInputWeights = mapInputWeights,
            gamma = 1f,
            rendererBaselineGain = rendererBaselineGain,
            sourceToShortGain = sourceToShortGain,
            hdrRatio = hdrRatio.coerceAtLeast(1f),
            mapInputRangeScale = rangeScale,
        )
    }

    /**
     * Bakes HDRNet's bilateral affine grid into a DNG ProfileGainTableMap2.
     *
     * Each spatial cell's affine response is resampled to 64 x 48 and converted into a gain curve
     * per cell, then mapped through Standard Gamma -> sRGB decode -> inverse ACR3 in one LUT so
     * the renderer's subsequent ACR3 restores Standard's linear output.
     */
    fun mapFromHdrNetCoefficients(
        plan: HdrNetProfileGainTablePlan,
        coefficients: FloatArray,
        modelInput: FloatArray,
    ): DngProfileGainTableMap? {
        if (coefficients.size != HDRNET_OUTPUT_FLOAT_COUNT) {
            PLog.e(
                TAG,
                "HDRNet coefficient count=${coefficients.size}, expected=$HDRNET_OUTPUT_FLOAT_COUNT",
            )
            return null
        }
        if (modelInput.size != HDRNET_INPUT_WIDTH * HDRNET_INPUT_HEIGHT * 4) return null
        val gains = DngHdrNetProfileGainTableNative.generateGains(
            plan = plan,
            coefficients = coefficients,
            modelInput = modelInput,
            guideShifts = HDRNET_GUIDE_SHIFTS,
            guideSlopes = HDRNET_GUIDE_SLOPES,
            outputCurve = MgcHdrNetOutputCurve.samples(),
            renderMinGain = HDRNET_RENDER_MIN_GAIN,
            renderMaxGain = HDRNET_RENDER_MAX_GAIN,
            renderMaxGainBlendThreshold = HDRNET_RENDER_MAX_GAIN_BLEND_THRESHOLD,
            minTableGain = MIN_TABLE_GAIN,
            maxTableGain = MAX_TABLE_GAIN,
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
}

internal data class HdrNetProfileGainTablePlan(
    val grid: PhotonPgtmGrid,
    val pointCount: Int,
    val mapInputWeights: FloatArray,
    val gamma: Float,
    /** Total gain a conforming DNG renderer folds into the MapInputWeights coordinate. */
    val rendererBaselineGain: Float,
    /** Gain from source RAW to the final-short exposure used by HDRNet. */
    val sourceToShortGain: Float,
    val hdrRatio: Float,
    /** Maps the captured final-short intensity range into the DNG table's unit N axis. */
    val mapInputRangeScale: Float = 1f,
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
        require(mapInputRangeScale.isFinite() && mapInputRangeScale > 0f && mapInputRangeScale <= 1f)
        val rendererMapInputEffectiveScale = mapInputWeights.sum() * rendererBaselineGain
        val expectedScale = sourceToShortGain * mapInputRangeScale
        require(
            kotlin.math.abs(rendererMapInputEffectiveScale - expectedScale) <=
                maxOf(1e-6f, expectedScale * 1e-5f)
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
