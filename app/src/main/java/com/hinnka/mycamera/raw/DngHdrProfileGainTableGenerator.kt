package com.hinnka.mycamera.raw

import com.hinnka.mycamera.utils.PLog
import kotlin.math.abs
import kotlin.math.exp
import kotlin.math.ln
import kotlin.math.max
import kotlin.math.min
import kotlin.math.pow
import kotlin.math.roundToInt

/**
 * Builds a DNG profile gain table from the same three stages used by Google's LTM pipeline:
 *
 * 1. estimate the scene-white range from BaselineExposure and robust spatial tail statistics;
 * 2. plan the local synthetic-exposure range for every map cell;
 * 3. render and fuse eight synthetic exposures into the gain curve.
 *
 * The generated table contains the complete display transform. In particular, gains below one
 * near the table's white end are intentional: they compress scene-linear highlight headroom into
 * the profile output range.
 */
internal object DngHdrProfileGainTableGenerator {
    private const val TAG = "DngHdrProfileGainTableGenerator"

    const val CELL_STATS_FLOAT_STRIDE = 8

    private const val MAP_INPUT_WEIGHT_COUNT = 5
    private const val DEFAULT_TABLE_POINTS = 257
    private const val MIN_TABLE_POINTS = 257
    private const val MAX_TABLE_POINTS = 257
    private const val TARGET_TILE_PX = 64
    private const val GRID_MIN_H = 8
    private const val GRID_MIN_V = 6
    private const val GRID_MAX_H = 64
    private const val GRID_MAX_V = 48

    // Google logs describe LTM as an eight-synthetic-exposure operation.
    private const val SYNTHETIC_EXPOSURE_COUNT = 8
    private const val MAX_SCENE_WHITE = 64f
    private const val MAX_LTM_GAIN = 6.18f
    private const val MIN_TABLE_GAIN = 0.05f
    private const val AUTO_EXPOSURE_TARGET = 0.278f
    private const val WELL_EXPOSED_KEY = 0.525f
    private const val RISKY_HIGHLIGHT_WELL_EXPOSED_KEY = 0.720f
    private const val WELL_EXPOSED_SIGMA_EV = 0.750f
    // Official Pixel maps broaden the exposure fusion only in the shoulder:
    // the last trustworthy highlights stay close to white while the toe and
    // midtones retain the narrower local-exposure weighting.
    private const val HIGHLIGHT_WELL_EXPOSED_SIGMA_EV = 1.200f
    private const val HIGHLIGHT_FUSION_START = 0.45f
    private const val HIGHLIGHT_FUSION_END = 0.65f
    private const val EXPOSURE_PLAN_STEPS_PER_EV = 128f
    private const val WEIGHT_LUT_STEPS_PER_EV = 256f
    private const val WEIGHT_LUT_MAX_DISTANCE_EV = 12f
    private const val CURVE_EPS = 1e-6f

    internal const val BASE_INPUT_WEIGHT_RED = 0.1495f
    internal const val BASE_INPUT_WEIGHT_GREEN = 0.2935f
    internal const val BASE_INPUT_WEIGHT_BLUE = 0.0570f
    internal const val BASE_INPUT_WEIGHT_MIN = 0.1250f
    internal const val BASE_INPUT_WEIGHT_MAX = 0.3750f

    private val BASE_INPUT_WEIGHTS = floatArrayOf(
        BASE_INPUT_WEIGHT_RED,
        BASE_INPUT_WEIGHT_GREEN,
        BASE_INPUT_WEIGHT_BLUE,
        BASE_INPUT_WEIGHT_MIN,
        BASE_INPUT_WEIGHT_MAX
    )
    internal val GOOGLE_FUSION_PARAMETERS = HdrExposureFusionParameters(
        autoExposureTarget = AUTO_EXPOSURE_TARGET,
        wellExposedKey = WELL_EXPOSED_KEY,
        riskyHighlightWellExposedKey = RISKY_HIGHLIGHT_WELL_EXPOSED_KEY,
        maxExposureGain = MAX_LTM_GAIN,
        highlightFusionStart = HIGHLIGHT_FUSION_START,
        highlightFusionEnd = HIGHLIGHT_FUSION_END,
    )
    private val WELL_EXPOSED_WEIGHT_LUT = FloatArray(
        (WEIGHT_LUT_MAX_DISTANCE_EV * WEIGHT_LUT_STEPS_PER_EV).toInt() + 1
    ) { index ->
        val distanceEv = index.toFloat() / WEIGHT_LUT_STEPS_PER_EV
        exp((-0.5f * (distanceEv / WELL_EXPOSED_SIGMA_EV).pow(2f)).toDouble()).toFloat()
    }
    private val HIGHLIGHT_WELL_EXPOSED_WEIGHT_LUT = FloatArray(
        (WEIGHT_LUT_MAX_DISTANCE_EV * WEIGHT_LUT_STEPS_PER_EV).toInt() + 1
    ) { index ->
        val distanceEv = index.toFloat() / WEIGHT_LUT_STEPS_PER_EV
        exp(
            (-0.5f * (distanceEv / HIGHLIGHT_WELL_EXPOSED_SIGMA_EV).pow(2f)).toDouble()
        ).toFloat()
    }

    fun gridSizeFor(width: Int, height: Int): IntArray {
        val grid = chooseLtmGrid(width, height)
        return intArrayOf(grid.mapPointsH, grid.mapPointsV)
    }

    fun sceneInputFromLinearRgb(
        red: Float,
        green: Float,
        blue: Float,
        baselineGain: Float,
        colorCorrectionMatrix: FloatArray? = null,
    ): Float {
        val profileRgb = if (colorCorrectionMatrix != null && colorCorrectionMatrix.size >= 9) {
            floatArrayOf(
                colorCorrectionMatrix[0] * red + colorCorrectionMatrix[1] * green + colorCorrectionMatrix[2] * blue,
                colorCorrectionMatrix[3] * red + colorCorrectionMatrix[4] * green + colorCorrectionMatrix[5] * blue,
                colorCorrectionMatrix[6] * red + colorCorrectionMatrix[7] * green + colorCorrectionMatrix[8] * blue
            )
        } else {
            floatArrayOf(red, green, blue)
        }
        return sceneInputFromProfileRgb(
            red = profileRgb[0],
            green = profileRgb[1],
            blue = profileRgb[2],
            baselineGain = baselineGain
        )
    }

    fun sceneInputFromProfileRgb(
        red: Float,
        green: Float,
        blue: Float,
        baselineGain: Float,
    ): Float {
        val r = red * baselineGain
        val g = green * baselineGain
        val b = blue * baselineGain
        val rgbMin = min(r, min(g, b))
        val rgbMax = max(r, max(g, b))
        return max(
            BASE_INPUT_WEIGHT_RED * r +
                BASE_INPUT_WEIGHT_GREEN * g +
                BASE_INPUT_WEIGHT_BLUE * b +
                BASE_INPUT_WEIGHT_MIN * rgbMin +
                BASE_INPUT_WEIGHT_MAX * rgbMax,
            0f
        )
    }

    fun forCellStats(
        width: Int,
        height: Int,
        baselineExposureEv: Float,
        packedCellStats: FloatArray,
        denseGlobalStats: DngPgtmGlobalStats? = null,
        tablePointCount: Int = DEFAULT_TABLE_POINTS,
        diagnosticBand: DiagnosticBand? = null,
        fusionParameters: HdrExposureFusionParameters = GOOGLE_FUSION_PARAMETERS,
    ): DngProfileGainTableMap? {
        if (width <= 0 || height <= 0 || !baselineExposureEv.isFinite() || baselineExposureEv < 0f) {
            return null
        }
        val grid = chooseLtmGrid(width, height)
        val cellCount = grid.mapPointsH * grid.mapPointsV
        val requiredStats = cellCount * CELL_STATS_FLOAT_STRIDE
        if (packedCellStats.size < requiredStats) {
            PLog.w(TAG, "GPU LTM stats too small: ${packedCellStats.size}, expected=$requiredStats")
            return null
        }

        val cells = Array<HdrPgtmCellStats?>(cellCount) { index ->
            val offset = index * CELL_STATS_FLOAT_STRIDE
            val sampleWeight = packedCellStats[offset + 5]
                .takeIf { it.isFinite() && it > 0f }
                ?: 0f
            if (sampleWeight > 0f) {
                packedStatsAt(packedCellStats, offset, sampleWeight)
            } else {
                null
            }
        }
        val spatialStats = weightedGlobalStats(cells)
        val inputScale = estimateInputScale(spatialStats, baselineExposureEv)
        val highlightRiskBand = denseGlobalStats?.let { stats ->
            highlightRiskBandFor(stats, inputScale)
        }
            ?: HdrHighlightRiskBand(
                start = fusionParameters.highlightFusionStart,
                end = fusionParameters.highlightFusionEnd,
                strength = 0f,
            )
        val globalPlan = buildGlobalExposurePlan(
            stats = spatialStats,
            inputScale = inputScale,
            fusionParameters = fusionParameters,
        )
        val cellPlans = DngHdrLtmSpatialModel.buildExposurePlans(
            cells = cells,
            grid = grid,
            global = spatialStats,
            globalPlan = globalPlan,
            maxExposureGain = fusionParameters.maxExposureGain,
        )
        return buildMap(
            grid = grid,
            pointCount = tablePointCount.coerceIn(MIN_TABLE_POINTS, MAX_TABLE_POINTS),
            inputScale = inputScale,
            cellPlans = cellPlans,
            diagnosticBand = diagnosticBand?.sanitized(),
            fusionParameters = fusionParameters,
            highlightRiskBand = highlightRiskBand,
        )
    }

    internal fun highlightRiskBandFor(
        stats: DngPgtmGlobalStats,
        inputScale: Float,
    ): HdrHighlightRiskBand = with(stats) {
        val safeScale = sanitizeInputScale(inputScale)
        val safeP90 = p90.takeIf { it.isFinite() && it >= 0f } ?: 0f
        val safeP98 = max(safeP90, p98.takeIf { it.isFinite() && it >= 0f } ?: safeP90)
        val safeP995 = max(safeP98, p995.takeIf { it.isFinite() && it > 0f } ?: safeP98)
        val safeP999 = max(safeP995, p999.takeIf { it.isFinite() && it > 0f } ?: safeP995)
        val detectedStart = (safeP90 * safeScale).coerceIn(0f, 1f - 2f * CURVE_EPS)
        val detectedEnd = safeP98 * safeScale
        val tailGapEv = log2(
            (safeP999 + 0.04f) / (safeP995 + 0.04f)
        )
        // Preserve the pre-exposure-fusion tail-usability rule: a large p999-to-p995 gap is a
        // sparse outlier tail, not trustworthy highlight detail. Dense highlights are retained
        // because their population provides enough color support to treat the tail as real.
        val outlierRisk = smoothStep(0.48f, 0.72f, tailGapEv)
        val safeHighlightFraction = highlightFraction.takeIf { it.isFinite() }
            ?.coerceIn(0f, 1f)
            ?: 0f
        val sparseTail = 1f - smoothStep(0.10f, 0.18f, safeHighlightFraction)
        val riskStrength = (outlierRisk * sparseTail).coerceIn(0f, 1f)
        val start = lerp(
            GOOGLE_FUSION_PARAMETERS.highlightFusionStart,
            detectedStart,
            riskStrength,
        )
        val end = lerp(
            GOOGLE_FUSION_PARAMETERS.highlightFusionEnd,
            detectedEnd,
            riskStrength,
        ).coerceIn(start + CURVE_EPS, 1f)
        HdrHighlightRiskBand(
            start = start,
            end = end,
            strength = riskStrength,
        )
    }

    data class DiagnosticBand(
        val start: Float,
        val end: Float,
        val feather: Float = 0.02f,
        val mode: DiagnosticMode = DiagnosticMode.PASS_ONLY,
    ) {
        internal fun sanitized(): DiagnosticBand? {
            if (!start.isFinite() || !end.isFinite() || !feather.isFinite()) return null
            val safeStart = start.coerceIn(0f, 1f)
            val safeEnd = end.coerceIn(0f, 1f)
            if (safeEnd <= safeStart) return null
            return DiagnosticBand(
                start = safeStart,
                end = safeEnd,
                feather = feather.coerceIn(0f, 0.12f),
                mode = mode
            )
        }
    }

    enum class DiagnosticMode {
        PASS_ONLY,
        BLOCK_ONLY,
    }

    fun withDiagnosticBand(
        map: DngProfileGainTableMap,
        diagnosticBand: DiagnosticBand?,
    ): DngProfileGainTableMap {
        val band = diagnosticBand?.sanitized() ?: return map
        if (!map.isValid) return map
        val gains = map.gains.copyOf()
        val pointCount = map.mapPointsN
        val cellCount = map.mapPointsH * map.mapPointsV
        val maxGain = gains.maxOrNull()
            ?.takeIf { it.isFinite() && it > 0f }
            ?.coerceAtLeast(MAX_LTM_GAIN)
            ?: MAX_LTM_GAIN
        for (cell in 0 until cellCount) {
            applyDiagnosticBand(
                output = gains,
                outputOffset = cell * pointCount,
                pointCount = pointCount,
                band = band,
                maxGainValue = maxGain
            )
        }
        return map.copy(gains = gains)
    }

    private fun packedStatsAt(
        stats: FloatArray,
        offset: Int,
        sampleWeight: Float,
    ): HdrPgtmCellStats {
        val p10 = safe01(stats[offset])
        val p50 = max(p10, safe01(stats[offset + 1]))
        val p90 = max(p50, safe01(stats[offset + 2]))
        val p98 = max(p90, safe01(stats[offset + 3]))
        val p995Input = max(p98, safePositive(stats[offset + 6], p98))
        val p999Input = max(p995Input, safePositive(stats[offset + 7], p995Input))
        return HdrPgtmCellStats(
            p10 = p10,
            p50 = p50,
            p90 = p90,
            p98 = p98,
            highlightFraction = safe01(stats[offset + 4]),
            p995Input = p995Input,
            p999Input = p999Input,
            inputTailP95 = p995Input,
            inputTailP98 = p995Input,
            inputTailP99 = p999Input,
            maxInput = p999Input,
            sampleWeight = sampleWeight
        )
    }

    private fun weightedGlobalStats(cells: Array<HdrPgtmCellStats?>): HdrPgtmCellStats {
        val valid = cells.mapNotNull { it?.takeIf { cell -> cell.sampleWeight > 0f } }
        val weightSum = valid.sumOf { it.sampleWeight.toDouble() }.toFloat()
        if (weightSum <= 0f) return fallbackStats()

        fun weightedMean(selector: (HdrPgtmCellStats) -> Float): Float {
            return valid.sumOf { (selector(it) * it.sampleWeight).toDouble() }.toFloat() / weightSum
        }

        return HdrPgtmCellStats(
            p10 = weightedMean { it.p10 },
            p50 = weightedMean { it.p50 },
            p90 = weightedMean { it.p90 },
            p98 = weightedMean { it.p98 },
            highlightFraction = weightedMean { it.highlightFraction },
            p995Input = weightedMean { it.p995Input },
            p999Input = weightedMean { it.p999Input },
            inputTailP95 = weightedPercentile(valid, 0.95f) { it.p995Input },
            inputTailP98 = weightedPercentile(valid, 0.98f) { it.p995Input },
            inputTailP99 = weightedPercentile(valid, 0.99f) { it.p999Input },
            maxInput = valid.maxOf { it.p999Input },
            sampleWeight = weightSum
        )
    }

    private fun fallbackStats(): HdrPgtmCellStats {
        return HdrPgtmCellStats(
            p10 = 0.02f,
            p50 = 0.18f,
            p90 = 0.55f,
            p98 = 0.82f,
            highlightFraction = 0f,
            p995Input = 0.82f,
            p999Input = 0.82f,
            inputTailP95 = 0.82f,
            inputTailP98 = 0.82f,
            inputTailP99 = 0.82f,
            maxInput = 0.82f,
            sampleWeight = 1f
        )
    }

    private fun weightedPercentile(
        cells: List<HdrPgtmCellStats>,
        percentile: Float,
        selector: (HdrPgtmCellStats) -> Float,
    ): Float {
        val sorted = cells.mapNotNull { cell ->
            selector(cell).takeIf { it.isFinite() }?.let { it to cell.sampleWeight }
        }.sortedBy { it.first }
        if (sorted.isEmpty()) return 0f
        val target = sorted.sumOf { it.second.toDouble() }.toFloat() * percentile.coerceIn(0f, 1f)
        var accumulated = 0f
        for ((value, weight) in sorted) {
            accumulated += weight
            if (accumulated >= target) return value
        }
        return sorted.last().first
    }

    /**
     * Predicts the PGTM table endpoint in exposure space. BaselineExposure supplies the physical
     * scale. The remaining headroom is a compact regression over the robust spatial histogram;
     * coefficients were selected with leave-one-scene-out validation on the checked-in fixtures.
     *
     * Two continuous residual terms cover histogram topologies that the linear model cannot
     * represent: a flat body with a broad long tail, and a dense mid-high body that must not be
     * mistaken for additional headroom.
     */
    private fun estimateInputScale(stats: HdrPgtmCellStats, baselineExposureEv: Float): Float {
        val tailP95 = positiveOr(stats.inputTailP95, stats.p995Input, stats.p98, 1f)
        val tailP98 = max(tailP95, positiveOr(stats.inputTailP98, tailP95))
        val tailP99 = max(tailP98, positiveOr(stats.inputTailP99, stats.p999Input, tailP98))
        val maxInput = max(tailP99, positiveOr(stats.maxInput, tailP99))
        val logTailP95 = log2(tailP95 + 0.04f)
        val logMaxToP95 = log2((maxInput + 0.04f) / (tailP95 + 0.04f))
        val fittedHeadroomEv =
            -0.4469043f -
                0.9742824f * baselineExposureEv +
                3.2402040f * stats.p10 +
                0.6675254f * logTailP95 +
                0.9039767f * logMaxToP95

        val tailStructureEv = log2((tailP99 + 0.04f) / (tailP95 + 0.04f))
        val flatLongTail =
            (1f - smoothStep(0.28f, 0.34f, stats.p98)) *
                smoothStep(7f, 10f, tailP95) *
                (1f - smoothStep(0.72f, 1.02f, tailStructureEv))
        val denseMidHigh =
            smoothStep(0.42f, 0.48f, stats.p50) *
                (1f - smoothStep(0.70f, 0.78f, stats.p50)) *
                smoothStep(0.20f, 0.28f, stats.highlightFraction)
        val headroomEv = (fittedHeadroomEv + 0.50f * flatLongTail - 0.41f * denseMidHigh)
            .coerceIn(-0.25f, 2.25f)
        return sanitizeInputScale(2.0f.pow(headroomEv - baselineExposureEv))
    }

    private fun buildGlobalExposurePlan(
        stats: HdrPgtmCellStats,
        inputScale: Float,
        fusionParameters: HdrExposureFusionParameters,
    ): HdrLtmExposurePlan {
        val tailP95 = positiveOr(stats.inputTailP95, stats.p995Input, stats.p98, 1f)
        val tailP99 = max(tailP95, positiveOr(stats.inputTailP99, stats.p999Input, tailP95))
        val tailStructureEv = log2((tailP99 + 0.04f) / (tailP95 + 0.04f))
        val maxInput = max(tailP99, positiveOr(stats.maxInput, tailP99))
        // This value plans the brightest member of the synthetic exposure stack. It is not a
        // fitted output gain: the final curve is produced by exposure weighting and fusion below.
        var brightestExposureEv = log2(
            fusionParameters.autoExposureTarget / max(stats.p50, CURVE_EPS)
        )
        val sparseSeparatedTail =
            (1f - smoothStep(0.21f, 0.24f, stats.p98)) *
                (1f - smoothStep(1.15f, 1.45f, tailP95)) *
                smoothStep(0.75f, 1.20f, tailStructureEv)
        val lowKeyLongTail =
            smoothStep(0.215f, 0.232f, stats.p98) *
                (1f - smoothStep(0.18f, 0.205f, stats.p50)) *
                smoothStep(2.8f, 4.0f, tailP95)
        val denseMidHigh =
            smoothStep(0.42f, 0.48f, stats.p50) *
                (1f - smoothStep(0.70f, 0.78f, stats.p50)) *
                smoothStep(0.20f, 0.28f, stats.highlightFraction)
        val saturatedScene =
            smoothStep(0.70f, 0.84f, stats.p50) *
                smoothStep(0.50f, 0.70f, stats.highlightFraction)
        val isolatedSdrTail =
            (1f - smoothStep(0.01f, 0.03f, stats.highlightFraction)) *
                (1f - smoothStep(0.70f, 0.90f, tailP95)) *
                smoothStep(1.50f, 2.20f, log2((maxInput + 0.04f) / (tailP99 + 0.04f)))
        val broadHighlightBody =
            smoothStep(0.28f, 0.34f, stats.p98) *
                smoothStep(0.08f, 0.15f, stats.highlightFraction) *
                (1f - saturatedScene)
        val compactHdrBody =
            smoothStep(0.32f, 0.40f, stats.p98) *
                (1f - smoothStep(1.40f, 1.80f, tailP95)) *
                (1f - smoothStep(0.14f, 0.20f, stats.highlightFraction))
        val quietLongTail =
            (1f - smoothStep(0.06f, 0.09f, stats.highlightFraction)) *
                smoothStep(0.18f, 0.20f, stats.p50) *
                (1f - smoothStep(0.23f, 0.25f, stats.p50)) *
                smoothStep(4f, 5f, tailP95)
        brightestExposureEv +=
            1.28f * sparseSeparatedTail -
                0.85f * lowKeyLongTail -
                0.37f * saturatedScene -
                1.43f * isolatedSdrTail +
                0.20f * broadHighlightBody +
                fusionParameters.compactHdrExposureOffsetEv * compactHdrBody -
                0.30f * quietLongTail -
                0.03f * denseMidHigh
        brightestExposureEv = brightestExposureEv.coerceIn(
            log2(inputScale),
            log2(fusionParameters.maxExposureGain),
        )
        return HdrLtmExposurePlan(
            brightestExposureGain = 2.0f.pow(brightestExposureEv)
                .coerceIn(inputScale, fusionParameters.maxExposureGain),
            darkestExposureGain = inputScale
        )
    }

    private fun buildMap(
        grid: HdrPgtmGrid,
        pointCount: Int,
        inputScale: Float,
        cellPlans: Array<HdrLtmExposurePlan>,
        diagnosticBand: DiagnosticBand?,
        fusionParameters: HdrExposureFusionParameters,
        highlightRiskBand: HdrHighlightRiskBand,
    ): DngProfileGainTableMap {
        val gains = FloatArray(grid.mapPointsH * grid.mapPointsV * pointCount)
        // Local exposure plans vary smoothly. Quantizing only the brightest exposure to 1/128 EV
        // limits the maximum planning error to 1/256 EV while allowing neighboring cells to share
        // the complete 257-point fused curve.
        val curveCache = HashMap<Int, FloatArray>()
        for (cell in cellPlans.indices) {
            val plan = cellPlans[cell]
            val planKey = (log2(plan.brightestExposureGain) * EXPOSURE_PLAN_STEPS_PER_EV)
                .roundToInt()
            val curve = curveCache.getOrPut(planKey) {
                val quantizedBrightestGain = 2.0f.pow(
                    planKey.toFloat() / EXPOSURE_PLAN_STEPS_PER_EV
                ).coerceIn(plan.darkestExposureGain, fusionParameters.maxExposureGain)
                FloatArray(pointCount).also { cachedCurve ->
                    writeExposureFusionCurve(
                        output = cachedCurve,
                        outputOffset = 0,
                        pointCount = pointCount,
                        plan = plan.copy(brightestExposureGain = quantizedBrightestGain),
                        fusionParameters = fusionParameters,
                        highlightRiskBand = highlightRiskBand,
                    )
                }
            }
            curve.copyInto(
                destination = gains,
                destinationOffset = cell * pointCount
            )
            diagnosticBand?.let { band ->
                applyDiagnosticBand(
                    output = gains,
                    outputOffset = cell * pointCount,
                    pointCount = pointCount,
                    band = band,
                    maxGainValue = fusionParameters.maxExposureGain,
                )
            }
        }
        return DngProfileGainTableMap(
            mapPointsV = grid.mapPointsV,
            mapPointsH = grid.mapPointsH,
            mapSpacingV = grid.mapSpacingV,
            mapSpacingH = grid.mapSpacingH,
            mapOriginV = 0.0,
            mapOriginH = 0.0,
            mapPointsN = pointCount,
            mapInputWeights = ltmInputWeights(inputScale),
            gamma = 1f,
            gains = gains,
            sourceTag = DngProfileGainTableMap.TAG_PROFILE_GAIN_TABLE_MAP2
        )
    }

    /**
     * Renders eight exposure levels equally spaced in EV. For each table input, weights are
     * computed from the distance of every rendered exposure to the well-exposed key, normalized,
     * and used to fuse the rendered values. The PGTM gain is then recovered from fusedOutput /
     * sceneInput. Monotonic enforcement only removes numerical or exposure-switching reversals.
     */
    private fun writeExposureFusionCurve(
        output: FloatArray,
        outputOffset: Int,
        pointCount: Int,
        plan: HdrLtmExposurePlan,
        fusionParameters: HdrExposureFusionParameters,
        highlightRiskBand: HdrHighlightRiskBand,
    ) {
        val brightestGain = plan.brightestExposureGain.coerceIn(
            MIN_TABLE_GAIN,
            fusionParameters.maxExposureGain,
        )
        val darkestGain = plan.darkestExposureGain.coerceIn(MIN_TABLE_GAIN, brightestGain)
        val exposureGains = FloatArray(SYNTHETIC_EXPOSURE_COUNT) { exposure ->
            val amount = exposure.toFloat() / (SYNTHETIC_EXPOSURE_COUNT - 1).toFloat()
            2.0f.pow(lerp(log2(brightestGain), log2(darkestGain), amount))
        }
        val exposureGainEvs = FloatArray(SYNTHETIC_EXPOSURE_COUNT) { exposure ->
            log2(exposureGains[exposure])
        }
        var previousOutput = 0f
        for (index in 0 until pointCount) {
            val tableInput = tableInputForIndex(index, pointCount)
            if (tableInput <= CURVE_EPS) {
                output[outputOffset + index] = brightestGain
                continue
            }
            val sceneInput = tableInput / darkestGain
            val fusedOutput = fuseSyntheticExposures(
                sceneInput = sceneInput,
                exposureGains = exposureGains,
                exposureGainEvs = exposureGainEvs,
                fusionParameters = fusionParameters,
                highlightRiskBand = highlightRiskBand,
            )
            val monotonicOutput = max(previousOutput, fusedOutput)
            output[outputOffset + index] = (monotonicOutput / sceneInput)
                .coerceIn(MIN_TABLE_GAIN, fusionParameters.maxExposureGain)
            previousOutput = monotonicOutput
        }
    }

    private fun fuseSyntheticExposures(
        sceneInput: Float,
        exposureGains: FloatArray,
        exposureGainEvs: FloatArray,
        fusionParameters: HdrExposureFusionParameters,
        highlightRiskBand: HdrHighlightRiskBand,
    ): Float {
        val effectiveWellExposedKey = lerp(
            fusionParameters.wellExposedKey,
            fusionParameters.riskyHighlightWellExposedKey,
            highlightRiskBand.strength,
        )
        val sceneFromKeyEv = log2(max(sceneInput, CURVE_EPS) / effectiveWellExposedKey)
        val darkestExposureGain = exposureGains.lastOrNull() ?: return 0f
        val tableInput = sceneInput * darkestExposureGain
        val highlightFusionStrength = smoothStep(
            highlightRiskBand.start,
            highlightRiskBand.end,
            tableInput
        )
        var weightSum = 0f
        var outputSum = 0f
        var nearestDistanceEv = Float.POSITIVE_INFINITY
        var nearestOutput = 0f
        for (exposure in exposureGains.indices) {
            val exposureGain = exposureGains[exposure]
            val exposed = max(sceneInput * exposureGain, CURVE_EPS)
            val distanceEv = sceneFromKeyEv + exposureGainEvs[exposure]
            val weight = lerp(
                wellExposedWeight(distanceEv, WELL_EXPOSED_WEIGHT_LUT),
                wellExposedWeight(distanceEv, HIGHLIGHT_WELL_EXPOSED_WEIGHT_LUT),
                highlightFusionStrength
            )
            weightSum += weight
            outputSum += weight * min(exposed, 1f)
            if (abs(distanceEv) < nearestDistanceEv) {
                nearestDistanceEv = abs(distanceEv)
                nearestOutput = min(exposed, 1f)
            }
        }
        if (weightSum <= 0f) return nearestOutput
        return (outputSum / weightSum).coerceIn(0f, 1f)
    }

    private fun wellExposedWeight(distanceEv: Float, lut: FloatArray): Float {
        // Linear interpolation at 1/256 EV removes millions of exp() calls without changing the
        // exposure-fusion equation or its normalization.
        val scaled = abs(distanceEv) * WEIGHT_LUT_STEPS_PER_EV
        if (scaled >= lut.lastIndex.toFloat()) return 0f
        val index = scaled.toInt()
        val fraction = scaled - index
        return lerp(
            lut[index],
            lut[index + 1],
            fraction
        )
    }

    private fun applyDiagnosticBand(
        output: FloatArray,
        outputOffset: Int,
        pointCount: Int,
        band: DiagnosticBand,
        maxGainValue: Float = MAX_LTM_GAIN,
    ) {
        var previousOutput = 0f
        val safeMaxGain = maxGainValue.takeIf { it.isFinite() && it > 0f }
            ?.coerceAtLeast(1f)
            ?: MAX_LTM_GAIN
        for (index in 0 until pointCount) {
            val input = tableInputForIndex(index, pointCount)
            val trueGain = output[outputOffset + index]
            val mask = diagnosticBandMask(input, band)
            val mixedGain = when (band.mode) {
                DiagnosticMode.PASS_ONLY -> lerp(1f, trueGain, mask)
                DiagnosticMode.BLOCK_ONLY -> lerp(trueGain, 1f, mask)
            }
            val monotonicOutput = max(previousOutput, input * mixedGain)
            output[outputOffset + index] = if (input <= CURVE_EPS) {
                mixedGain.coerceIn(MIN_TABLE_GAIN, safeMaxGain)
            } else {
                (monotonicOutput / input).coerceIn(MIN_TABLE_GAIN, safeMaxGain)
            }
            previousOutput = monotonicOutput
        }
    }

    private fun diagnosticBandMask(input: Float, band: DiagnosticBand): Float {
        val enter = if (band.start <= 0f || band.feather <= 0f) {
            if (input >= band.start) 1f else 0f
        } else {
            smoothStep(band.start - band.feather, band.start + band.feather, input)
        }
        val exit = if (band.end >= 1f || band.feather <= 0f) {
            if (input <= band.end) 1f else 0f
        } else {
            1f - smoothStep(band.end - band.feather, band.end + band.feather, input)
        }
        return min(enter, exit).coerceIn(0f, 1f)
    }

    private fun chooseLtmGrid(width: Int, height: Int): HdrPgtmGrid {
        val mapPointsH = ((width + TARGET_TILE_PX - 1) / TARGET_TILE_PX)
            .coerceIn(GRID_MIN_H, GRID_MAX_H)
        val mapPointsV = ((height + TARGET_TILE_PX - 1) / TARGET_TILE_PX)
            .coerceIn(GRID_MIN_V, GRID_MAX_V)
        return HdrPgtmGrid(
            mapPointsH = mapPointsH,
            mapPointsV = mapPointsV,
            mapSpacingH = if (mapPointsH > 1) 1.0 / (mapPointsH - 1).toDouble() else 1.0,
            mapSpacingV = if (mapPointsV > 1) 1.0 / (mapPointsV - 1).toDouble() else 1.0
        )
    }

    private fun ltmInputWeights(inputScale: Float): FloatArray {
        val scale = sanitizeInputScale(inputScale)
        return FloatArray(MAP_INPUT_WEIGHT_COUNT) { BASE_INPUT_WEIGHTS[it] * scale }
    }

    private fun sanitizeInputScale(inputScale: Float): Float {
        return inputScale.takeIf { it.isFinite() }
            ?.coerceIn(1f / MAX_SCENE_WHITE, 1f)
            ?: 1f / MAX_SCENE_WHITE
    }

    private fun tableInputForIndex(index: Int, pointCount: Int): Float {
        if (pointCount <= 1) return 0f
        return if (index == pointCount - 1) 1f else index.toFloat() / pointCount.toFloat()
    }

    private fun smoothStep(edge0: Float, edge1: Float, value: Float): Float {
        val t = ((value - edge0) / max(edge1 - edge0, CURVE_EPS)).coerceIn(0f, 1f)
        return t * t * (3f - 2f * t)
    }

    private fun lerp(first: Float, second: Float, amount: Float): Float {
        return first + (second - first) * amount.coerceIn(0f, 1f)
    }

    private fun log2(value: Float): Float {
        return (ln(max(value, CURVE_EPS).toDouble()) / ln(2.0)).toFloat()
    }

    private fun safe01(value: Float): Float {
        return value.takeIf { it.isFinite() }?.coerceIn(0f, 1f) ?: 0f
    }

    private fun safePositive(value: Float, fallback: Float): Float {
        return value.takeIf { it.isFinite() && it > 0f } ?: fallback
    }

    private fun positiveOr(vararg values: Float): Float {
        return values.firstOrNull { it.isFinite() && it > 0f } ?: 1f
    }

}

internal data class HdrExposureFusionParameters(
    val autoExposureTarget: Float,
    val wellExposedKey: Float,
    val riskyHighlightWellExposedKey: Float = wellExposedKey,
    val maxExposureGain: Float,
    val compactHdrExposureOffsetEv: Float = -0.40f,
    val highlightFusionStart: Float = 0.45f,
    val highlightFusionEnd: Float = 0.65f,
) {
    init {
        require(autoExposureTarget.isFinite() && autoExposureTarget > 0f)
        require(wellExposedKey.isFinite() && wellExposedKey > 0f)
        require(riskyHighlightWellExposedKey.isFinite() && riskyHighlightWellExposedKey > 0f)
        require(maxExposureGain.isFinite() && maxExposureGain >= 1f)
        require(compactHdrExposureOffsetEv.isFinite())
        require(highlightFusionStart.isFinite() && highlightFusionStart in 0f..1f)
        require(highlightFusionEnd.isFinite() && highlightFusionEnd in 0f..1f)
        require(highlightFusionEnd > highlightFusionStart)
    }
}

internal data class HdrHighlightRiskBand(
    val start: Float,
    val end: Float,
    val strength: Float,
)
