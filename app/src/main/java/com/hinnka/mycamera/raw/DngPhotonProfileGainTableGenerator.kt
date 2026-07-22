package com.hinnka.mycamera.raw

import kotlin.math.exp
import kotlin.math.ln
import kotlin.math.max
import kotlin.math.pow
import kotlin.math.sqrt

/** Photon-owned analytic PGTM planner. Google fitting is intentionally not reused here. */
internal object DngPhotonProfileGainTableGenerator {
    private const val REFERENCE_GRAY = 0.18f
    private const val REFERENCE_GRAY_EV = 1.1f
    private const val TABLE_PIVOT = 0.18f
    private const val MAX_ENDPOINT_OUTPUT = 1.30f
    private const val MIN_MAP_GAMMA = 0.125f
    private const val MAX_MAP_GAMMA = 8.0f
    private const val MIN_TABLE_GAIN = 1f / 4096f
    private const val MAX_TABLE_GAIN = 4096f
    private const val FIXED_GRAY_SOURCE_LIMIT = 0.995f
    private const val SOURCE_EPS = 1e-6f
    private const val LOW_CURVE_LIFT = 1.50f
    private const val MAX_LOCAL_CONTRAST = 0.18f
    private const val MAX_LOCAL_CONTRAST_EXPONENT = 1.18f
    private const val MAX_LOCAL_HIGHLIGHT_RECOVERY = 0.42f
    private const val LOCAL_LEVEL_EPS = 0.006f
    private const val RECOVERY_EDGE_SIGMA_EV = 0.75f

    // Invert the exact LUT used by the renderer so PGTM + ProfileToneCurve, as a pair,
    // places exposed 18% gray at +1.1 EV.
    internal val referenceGrayOutput: Float by lazy {
        DngProfileToneCurve.photonPgtmInputForOutput(
            REFERENCE_GRAY * 2.0f.pow(REFERENCE_GRAY_EV)
        )
    }

    fun plan(
        grid: HdrPgtmGrid,
        pointCount: Int,
        baselineExposureEv: Float,
        cells: Array<HdrPgtmCellStats?>,
        global: HdrPgtmCellStats,
        noiseSlope: Float,
        noiseOffset: Float,
        diagnosticBand: DngHdrProfileGainTableGenerator.DiagnosticBand?,
    ): HdrProfileGainTablePlan {
        val exposureGain = DngBaselineExposure.exactGain(baselineExposureEv)
        val referenceSourcePivot = REFERENCE_GRAY / exposureGain
        // Below log2(0.18) EV, exposed 18% lies beyond the captured source domain. There is no
        // exact fixed-gray solution, so anchor the same output level at the scene median instead.
        val usesFixedGray = referenceSourcePivot.isFinite() &&
            referenceSourcePivot > SOURCE_EPS &&
            referenceSourcePivot < FIXED_GRAY_SOURCE_LIMIT
        val sourcePivot = if (usesFixedGray) {
            referenceSourcePivot
        } else {
            global.p50.coerceIn(0.05f, 0.75f)
        }
        val gamma = adaptiveGamma(sourcePivot)
        val tablePivot = sourcePivot.pow(gamma).coerceIn(1e-4f, 0.999f)
        val exposedPivot = (exposureGain * sourcePivot).coerceAtLeast(SOURCE_EPS)
        val endpointOutput = (
            1f + (MAX_ENDPOINT_OUTPUT - 1f) * highlightPressure(
                global = global,
                exposureGain = exposureGain,
            )
            ).coerceIn(1f, MAX_ENDPOINT_OUTPUT)
        val pivotOutput = referenceGrayOutput.coerceIn(0.05f, endpointOutput - 1e-4f)
        val lowSlope = pivotOutput / exposedPivot
        val shoulderSecant = (endpointOutput - pivotOutput) /
            (exposureGain - exposedPivot).coerceAtLeast(SOURCE_EPS)
        val shoulderParameter = solveShoulderParameter(
            normalizedInitialSlope = lowSlope / shoulderSecant.coerceAtLeast(SOURCE_EPS)
        )
        val cellPlans = buildCellPlans(
            cells = cells,
            grid = grid,
            global = global,
            noiseSlope = noiseSlope,
            noiseOffset = noiseOffset,
        )
        // DNG renderers include BaselineExposure while calculating the table coordinate.
        // Dividing the weights by that gain keeps Photon table sampling in source-linear space.
        val mapWeights = FloatArray(DngHdrProfileGainTableGenerator.BASE_INPUT_WEIGHTS.size) {
            DngHdrProfileGainTableGenerator.BASE_INPUT_WEIGHTS[it] / exposureGain
        }
        val photonPlan = PhotonPgtmPlan(
            exposureGain = exposureGain,
            sourcePivot = sourcePivot,
            exposedPivot = exposedPivot,
            tablePivot = tablePivot,
            pivotOutput = pivotOutput,
            endpointOutput = endpointOutput,
            lowSlope = lowSlope,
            lowCurveLift = LOW_CURVE_LIFT,
            shoulderParameter = shoulderParameter,
            minTableGain = MIN_TABLE_GAIN,
            maxTableGain = MAX_TABLE_GAIN,
            usesFixedGray = usesFixedGray,
            cellPlans = cellPlans,
        )
        return HdrProfileGainTablePlan(
            curveModel = HdrPgtmCurveModel.PHOTON,
            grid = grid,
            pointCount = pointCount,
            mapInputWeights = mapWeights,
            gamma = gamma,
            googlePlan = null,
            photonPlan = photonPlan,
            diagnosticBand = diagnosticBand,
        )
    }

    private fun adaptiveGamma(sourcePivot: Float): Float {
        val safePivot = sourcePivot.coerceIn(SOURCE_EPS, 1f - SOURCE_EPS)
        val value = ln(TABLE_PIVOT.toDouble()) / ln(safePivot.toDouble())
        return value.toFloat().takeIf { it.isFinite() }
            ?.coerceIn(MIN_MAP_GAMMA, MAX_MAP_GAMMA)
            ?: 1f
    }

    private fun highlightPressure(
        global: HdrPgtmCellStats,
        exposureGain: Float,
    ): Float {
        val exposedTail = exposureGain * max(global.p999Input, global.p98)
        val tailStrength = smoothStep(1.0f, 2.5f, exposedTail)
        val tailSpanEv = log2(
            (global.p999Input + 0.01f) / (global.p98 + 0.01f)
        )
        val tailSeparation = smoothStep(0.15f, 1.50f, tailSpanEv)
        val exposedHighlightPresence = smoothStep(0.85f, 1.10f, exposedTail)
        val broadHighlight = smoothStep(0.02f, 0.20f, global.highlightFraction)
        val sparsePreference = 1f - 0.75f * broadHighlight
        return max(tailStrength, tailSeparation * exposedHighlightPresence)
            .coerceIn(0f, 1f) * sparsePreference
    }

    private fun buildCellPlans(
        cells: Array<HdrPgtmCellStats?>,
        grid: HdrPgtmGrid,
        global: HdrPgtmCellStats,
        noiseSlope: Float,
        noiseOffset: Float,
    ): Array<PhotonPgtmCellPlan> {
        val cellLevelEv = FloatArray(cells.size) { index ->
            log2((cells[index] ?: global).p50 + LOCAL_LEVEL_EPS)
        }
        val rawContrast = FloatArray(cells.size) { index ->
            val cell = cells[index] ?: global
            val signal = cell.p50.coerceAtLeast(0f)
            val variance = max(noiseSlope * signal + noiseOffset, 1e-12f)
            val snr = signal / sqrt(variance)
            val snrGate = smoothStep(3f, 16f, snr)
            val rangeEv = log2((cell.p90 + 0.006f) / (cell.p10 + 0.006f))
            val lowContrastOpportunity = 1f - smoothStep(2.5f, 6f, rangeEv)
            // Highlight-rich cells still need texture separation. Reducing this to 20% made
            // foliage and architecture behind a bright window collapse into one pale band.
            val highlightDetailGate = 1f - 0.35f * smoothStep(
                0.08f,
                0.55f,
                cell.highlightFraction,
            )
            ((0.08f + 0.10f * lowContrastOpportunity) * snrGate * highlightDetailGate)
                .coerceIn(0f, MAX_LOCAL_CONTRAST)
        }
        val rawHighlightRecovery = FloatArray(cells.size) { index ->
            val cell = cells[index] ?: global
            val signal = cell.p50.coerceAtLeast(0f)
            val variance = max(noiseSlope * signal + noiseOffset, 1e-12f)
            val snr = signal / sqrt(variance)
            val snrGate = smoothStep(3f, 16f, snr)
            val medianOffsetEv = log2(
                (cell.p50 + LOCAL_LEVEL_EPS) / (global.p50 + LOCAL_LEVEL_EPS)
            )
            val upperOffsetEv = log2(
                (cell.p90 + LOCAL_LEVEL_EPS) / (global.p90 + LOCAL_LEVEL_EPS)
            )
            val brightRegion = smoothStep(
                0.20f,
                1.25f,
                max(medianOffsetEv, 0.5f * upperOffsetEv),
            )
            val highlightOccupancy = smoothStep(0.08f, 0.65f, cell.highlightFraction)
            (MAX_LOCAL_HIGHLIGHT_RECOVERY * brightRegion * highlightOccupancy * snrGate)
                .coerceIn(0f, MAX_LOCAL_HIGHLIGHT_RECOVERY)
        }
        val smoothedContrast = smoothScalarField(rawContrast, grid)
        // Bilateral weighting prevents the recovery field from spilling across a strong window
        // boundary. The DNG renderer supplies the final continuous interpolation between cells.
        val smoothedHighlightRecovery = smoothScalarField(
            source = rawHighlightRecovery,
            grid = grid,
            guide = cellLevelEv,
            edgeSigma = RECOVERY_EDGE_SIGMA_EV,
        )
        return Array(cells.size) { index ->
            val contrastExponent = (
                1f + smoothedContrast[index].coerceIn(0f, MAX_LOCAL_CONTRAST)
                ).coerceIn(1f, MAX_LOCAL_CONTRAST_EXPONENT)
            PhotonPgtmCellPlan(
                contrastExponent = contrastExponent,
                highlightRecovery = smoothedHighlightRecovery[index]
                    .coerceIn(0f, MAX_LOCAL_HIGHLIGHT_RECOVERY),
            )
        }
    }

    private fun smoothScalarField(
        source: FloatArray,
        grid: HdrPgtmGrid,
        guide: FloatArray? = null,
        edgeSigma: Float = 1f,
    ): FloatArray = FloatArray(source.size) { index ->
        val x = index % grid.mapPointsH
        val y = index / grid.mapPointsH
        var weightedSum = 0f
        var weightSum = 0f
        for (dy in -1..1) {
            val yy = (y + dy).coerceIn(0, grid.mapPointsV - 1)
            for (dx in -1..1) {
                val xx = (x + dx).coerceIn(0, grid.mapPointsH - 1)
                val weight = when {
                    dx == 0 && dy == 0 -> 4f
                    dx == 0 || dy == 0 -> 2f
                    else -> 1f
                }
                val neighbor = yy * grid.mapPointsH + xx
                val edgeWeight = if (guide == null) {
                    1f
                } else {
                    exp(
                        (-kotlin.math.abs(guide[neighbor] - guide[index]) /
                            edgeSigma.coerceAtLeast(SOURCE_EPS)).toDouble()
                    ).toFloat()
                }
                val combinedWeight = weight * edgeWeight
                weightedSum += source[neighbor] * combinedWeight
                weightSum += combinedWeight
            }
        }
        weightedSum / weightSum.coerceAtLeast(SOURCE_EPS)
    }

    /**
     * Positive values select a logarithmic shoulder: q = c / ln(1 + c). This distributes
     * compressed HDR stops much more evenly than an exponential saturation curve. Negative
     * values retain a convex exponential branch for the uncommon q < 1 case.
     */
    private fun solveShoulderParameter(normalizedInitialSlope: Float): Float {
        val target = normalizedInitialSlope.coerceIn(1e-4f, 2048f).toDouble()
        if (kotlin.math.abs(target - 1.0) < 1e-6) return 0f
        if (target > 1.0) {
            var low = 0.0
            var high = 1.0
            while (high / ln(1.0 + high) < target && high < 1e8) high *= 2.0
            repeat(80) {
                val mid = 0.5 * (low + high)
                val ratio = if (mid < 1e-8) 1.0 else mid / ln(1.0 + mid)
                if (ratio < target) low = mid else high = mid
            }
            return (0.5 * (low + high)).toFloat()
        }

        var low = 0.0
        var high = 64.0
        repeat(80) {
            val mid = 0.5 * (low + high)
            val ratio = if (mid < 1e-8) {
                1.0
            } else {
                mid / (exp(mid) - 1.0)
            }
            if (ratio > target) low = mid else high = mid
        }
        return -(0.5 * (low + high)).toFloat()
    }

    private fun smoothStep(edge0: Float, edge1: Float, value: Float): Float {
        val amount = ((value - edge0) / (edge1 - edge0).coerceAtLeast(1e-6f))
            .coerceIn(0f, 1f)
        return amount * amount * (3f - 2f * amount)
    }

    private fun log2(value: Float): Float =
        (ln(max(value, 1e-8f).toDouble()) / ln(2.0)).toFloat()
}

internal data class PhotonPgtmPlan(
    val exposureGain: Float,
    val sourcePivot: Float,
    val exposedPivot: Float,
    val tablePivot: Float,
    val pivotOutput: Float,
    val endpointOutput: Float,
    val lowSlope: Float,
    val lowCurveLift: Float,
    val shoulderParameter: Float,
    val minTableGain: Float,
    val maxTableGain: Float,
    val usesFixedGray: Boolean,
    val cellPlans: Array<PhotonPgtmCellPlan>,
) {
    init {
        require(exposureGain.isFinite() && exposureGain > 0f)
        require(sourcePivot.isFinite() && sourcePivot in 0f..1f)
        require(exposedPivot.isFinite() && exposedPivot > 0f)
        require(tablePivot.isFinite() && tablePivot in 0f..1f)
        require(pivotOutput.isFinite() && endpointOutput.isFinite())
        require(pivotOutput in 0f..endpointOutput && endpointOutput in 1f..1.3f)
        require(lowSlope.isFinite() && lowSlope > 0f)
        require(lowCurveLift.isFinite() && lowCurveLift in 0f..5f)
        require(shoulderParameter.isFinite())
        require(minTableGain > 0f && maxTableGain >= minTableGain)
        val invalidCell = cellPlans.indexOfFirst { cellPlan ->
            !cellPlan.contrastExponent.isFinite() ||
                cellPlan.contrastExponent !in 1f..1.18f ||
                !cellPlan.highlightRecovery.isFinite() ||
                cellPlan.highlightRecovery !in 0f..0.42f
        }
        require(invalidCell < 0) {
            "Invalid Photon PGTM cell[$invalidCell]=${cellPlans.getOrNull(invalidCell)} " +
                "globalEndpoint=$endpointOutput"
        }
    }
}

internal data class PhotonPgtmCellPlan(
    val contrastExponent: Float,
    val highlightRecovery: Float,
)
