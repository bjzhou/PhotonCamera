package com.hinnka.mycamera.raw

import com.hinnka.mycamera.utils.PLog
import kotlin.math.ln
import kotlin.math.max
import kotlin.math.pow
import kotlin.math.sqrt

/** Plans a constrained DNG profile gain table from GPU-produced spatial RAW statistics. */
internal object DngHdrProfileGainTableGenerator {
    private const val TAG = "DngHdrProfileGainTableGenerator"

    const val CELL_STATS_FLOAT_STRIDE = 8

    private const val MAP_INPUT_WEIGHT_COUNT = 5
    private const val TABLE_POINTS = 257
    private const val TARGET_TILE_PX = 64
    private const val GRID_MIN_H = 8
    private const val GRID_MIN_V = 6
    private const val GRID_MAX_H = 64
    private const val GRID_MAX_V = 48

    private const val LEVEL_EPS = 0.006f
    private const val TAIL_EPS = 0.040f
    private const val CURVE_EPS = 1e-6f
    private const val FALLBACK_NOISE_SLOPE = 1e-4f
    private const val FALLBACK_NOISE_OFFSET = 4.5e-7f

    internal const val BASE_INPUT_WEIGHT_RED = 0.1495f
    internal const val BASE_INPUT_WEIGHT_GREEN = 0.2935f
    internal const val BASE_INPUT_WEIGHT_BLUE = 0.0570f
    internal const val BASE_INPUT_WEIGHT_MIN = 0.1250f
    internal const val BASE_INPUT_WEIGHT_MAX = 0.3750f

    internal val BASE_INPUT_WEIGHTS = floatArrayOf(
        BASE_INPUT_WEIGHT_RED,
        BASE_INPUT_WEIGHT_GREEN,
        BASE_INPUT_WEIGHT_BLUE,
        BASE_INPUT_WEIGHT_MIN,
        BASE_INPUT_WEIGHT_MAX,
    )

    internal val GOOGLE_CURVE_PARAMETERS = HdrPgtmCurveParameters(
        minTableGain = 0.01f,
        maxTableGain = 4.80f,
        minBlackGain = 0.50f,
        // The stored table uses point/257 for non-terminal inputs. Extending the measured 0.020
        // toe plateau through the next grid point keeps a DNG lookup at 0.020 on that plateau.
        toeEnd = 0.024f,
        shapeQ = 1.50f,
        minShapePower = 1.0f,
        maxShapePower = 1.425f,
        minInputScale = 0.25f,
        maxInputScale = 1.05f,
    )

    fun gridSizeFor(width: Int, height: Int): IntArray {
        val grid = chooseLtmGrid(width, height)
        return intArrayOf(grid.mapPointsH, grid.mapPointsV)
    }

    internal fun planForCellStats(
        width: Int,
        height: Int,
        baselineExposureEv: Float,
        packedCellStats: FloatArray,
        noiseSlope: Float = FALLBACK_NOISE_SLOPE,
        noiseOffset: Float = FALLBACK_NOISE_OFFSET,
        tablePointCount: Int = TABLE_POINTS,
        diagnosticBand: DiagnosticBand? = null,
        curveModel: HdrPgtmCurveModel = HdrPgtmCurveModel.GOOGLE,
    ): HdrProfileGainTablePlan? {
        if (width <= 0 || height <= 0 || !baselineExposureEv.isFinite()) return null
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
            if (sampleWeight > 0f) packedStatsAt(packedCellStats, offset, sampleWeight) else null
        }
        val global = weightedGlobalStats(cells)
        val safeNoiseSlope = noiseSlope.takeIf { it.isFinite() && it > 0f }
            ?: FALLBACK_NOISE_SLOPE
        val safeNoiseOffset = noiseOffset.takeIf { it.isFinite() && it > 0f }
            ?: FALLBACK_NOISE_OFFSET
        if (curveModel == HdrPgtmCurveModel.PHOTON) {
            return DngPhotonProfileGainTableGenerator.plan(
                grid = grid,
                pointCount = tablePointCount.coerceIn(TABLE_POINTS, TABLE_POINTS),
                baselineExposureEv = baselineExposureEv,
                cells = cells,
                global = global,
                noiseSlope = safeNoiseSlope,
                noiseOffset = safeNoiseOffset,
                diagnosticBand = diagnosticBand?.sanitized(),
            )
        }

        val curveParameters = GOOGLE_CURVE_PARAMETERS
        val inputScale = estimateInputScale(global, baselineExposureEv, curveParameters)
        val globalPlan = buildGlobalCurvePlan(
            stats = global,
            inputScale = inputScale,
            noiseOffset = safeNoiseOffset,
            curveParameters = curveParameters,
        )
        val cellPlans = DngHdrLtmSpatialModel.buildCurvePlans(
            cells = cells,
            grid = grid,
            globalPlan = globalPlan,
            baselineExposureEv = baselineExposureEv,
            noiseSlope = safeNoiseSlope,
            noiseOffset = safeNoiseOffset,
            curveParameters = curveParameters,
        )
        return HdrProfileGainTablePlan(
            curveModel = HdrPgtmCurveModel.GOOGLE,
            grid = grid,
            pointCount = tablePointCount.coerceIn(TABLE_POINTS, TABLE_POINTS),
            mapInputWeights = ltmInputWeights(inputScale, curveParameters),
            gamma = 1f,
            googlePlan = GooglePgtmPlan(
                inputScale = inputScale,
                curveParameters = curveParameters,
                cellPlans = cellPlans,
            ),
            photonPlan = null,
            diagnosticBand = diagnosticBand?.sanitized(),
        )
    }

    internal fun mapFromGpuGains(
        plan: HdrProfileGainTablePlan,
        gains: FloatArray,
    ): DngProfileGainTableMap? {
        val expected = plan.grid.mapPointsH * plan.grid.mapPointsV * plan.pointCount
        if (gains.size != expected) {
            PLog.e(TAG, "GPU PGTM gain count=${gains.size}, expected=$expected")
            return null
        }
        if (gains.any { !it.isFinite() || it <= 0f }) {
            PLog.e(TAG, "GPU PGTM contains a non-finite or non-positive gain")
            return null
        }
        return createMap(plan, gains)
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
                mode = mode,
            )
        }
    }

    enum class DiagnosticMode { PASS_ONLY, BLOCK_ONLY }

    private fun packedStatsAt(
        stats: FloatArray,
        offset: Int,
        sampleWeight: Float,
    ): HdrPgtmCellStats {
        val p10 = safe01(stats[offset])
        val p50 = max(p10, safe01(stats[offset + 1]))
        val p90 = max(p50, safe01(stats[offset + 2]))
        val p98 = max(p90, safe01(stats[offset + 3]))
        val p995 = max(p98, safePositive(stats[offset + 6], p98))
        val p999 = max(p995, safePositive(stats[offset + 7], p995))
        return HdrPgtmCellStats(
            p10 = p10,
            p50 = p50,
            p90 = p90,
            p98 = p98,
            highlightFraction = safe01(stats[offset + 4]),
            p995Input = p995,
            p999Input = p999,
            inputTailP95 = p995,
            inputTailP98 = p995,
            inputTailP99 = p999,
            maxInput = p999,
            sampleWeight = sampleWeight,
        )
    }

    private fun weightedGlobalStats(cells: Array<HdrPgtmCellStats?>): HdrPgtmCellStats {
        val valid = cells.mapNotNull { it?.takeIf { cell -> cell.sampleWeight > 0f } }
        val weightSum = valid.sumOf { it.sampleWeight.toDouble() }.toFloat()
        if (weightSum <= 0f) return fallbackStats()

        fun weightedMean(selector: (HdrPgtmCellStats) -> Float): Float =
            valid.sumOf { (selector(it) * it.sampleWeight).toDouble() }.toFloat() / weightSum

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
            sampleWeight = weightSum,
        )
    }

    private fun fallbackStats() = HdrPgtmCellStats(
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
        sampleWeight = 1f,
    )

    private fun weightedPercentile(
        cells: List<HdrPgtmCellStats>,
        percentile: Float,
        selector: (HdrPgtmCellStats) -> Float,
    ): Float {
        val sorted = cells.map { selector(it) to it.sampleWeight }.sortedBy { it.first }
        val target = sorted.sumOf { it.second.toDouble() }.toFloat() * percentile.coerceIn(0f, 1f)
        var accumulated = 0f
        for ((value, weight) in sorted) {
            accumulated += weight
            if (accumulated >= target) return value
        }
        return sorted.last().first
    }

    /** PXLs2 leave-one-scene-out fit of total headroom, without a reciprocal-baseline clamp. */
    private fun estimateInputScale(
        stats: HdrPgtmCellStats,
        baselineExposureEv: Float,
        curveParameters: HdrPgtmCurveParameters,
    ): Float {
        val tailP95 = positiveOr(stats.inputTailP95, stats.p995Input, stats.p98, 1f)
        val tailP99 = max(tailP95, positiveOr(stats.inputTailP99, stats.p999Input, tailP95))
        val totalHeadroomEv =
            0.643521568f +
                1.043402671f * baselineExposureEv +
                0.437326319f * log2(stats.p98 + LEVEL_EPS) -
                1.796161979f * sqrt(stats.highlightFraction.coerceIn(0f, 1f)) -
                0.362162094f * log2(tailP95 + TAIL_EPS) -
                0.431998130f * log2((tailP99 + TAIL_EPS) / (tailP95 + TAIL_EPS))
        return sanitizeInputScale(
            value = 2.0f.pow(totalHeadroomEv - baselineExposureEv),
            curveParameters = curveParameters,
        )
    }

    private fun buildGlobalCurvePlan(
        stats: HdrPgtmCellStats,
        inputScale: Float,
        noiseOffset: Float,
        curveParameters: HdrPgtmCurveParameters,
    ): HdrPgtmCurvePlan {
        val tailP95 = positiveOr(stats.inputTailP95, stats.p995Input, stats.p98, 1f)
        val tailP99 = max(tailP95, positiveOr(stats.inputTailP99, stats.p999Input, tailP95))
        val blackGainEv =
            -0.943690137f -
                0.310687278f * log2(stats.p50 + LEVEL_EPS) +
                2.373225506f * sqrt(stats.highlightFraction.coerceIn(0f, 1f)) -
                0.058252151f * log2Noise(noiseOffset)
        val shapePower =
            1.033760023f +
                0.029590443f * log2(tailP95 + TAIL_EPS) +
                0.042870987f * log2((tailP99 + TAIL_EPS) / (tailP95 + TAIL_EPS))
        return HdrPgtmCurvePlan(
            // Spatial residuals are part of the fitted predictor. Apply the physical bounds only
            // after those residuals are added in DngHdrLtmSpatialModel.
            blackGain = 2.0f.pow(blackGainEv),
            endpointGain = inputScale,
            shapePower = shapePower,
        )
    }

    private fun createMap(
        plan: HdrProfileGainTablePlan,
        gains: FloatArray,
    ) = DngProfileGainTableMap(
        mapPointsV = plan.grid.mapPointsV,
        mapPointsH = plan.grid.mapPointsH,
        mapSpacingV = plan.grid.mapSpacingV,
        mapSpacingH = plan.grid.mapSpacingH,
        mapOriginV = 0.0,
        mapOriginH = 0.0,
        mapPointsN = plan.pointCount,
        mapInputWeights = plan.mapInputWeights,
        gamma = plan.gamma,
        gains = gains,
        sourceTag = DngProfileGainTableMap.TAG_PROFILE_GAIN_TABLE_MAP2,
    )

    private fun chooseLtmGrid(width: Int, height: Int): HdrPgtmGrid {
        val mapPointsH = ((width + TARGET_TILE_PX - 1) / TARGET_TILE_PX)
            .coerceIn(GRID_MIN_H, GRID_MAX_H)
        val mapPointsV = ((height + TARGET_TILE_PX - 1) / TARGET_TILE_PX)
            .coerceIn(GRID_MIN_V, GRID_MAX_V)
        return HdrPgtmGrid(
            mapPointsH = mapPointsH,
            mapPointsV = mapPointsV,
            mapSpacingH = if (mapPointsH > 1) 1.0 / (mapPointsH - 1) else 1.0,
            mapSpacingV = if (mapPointsV > 1) 1.0 / (mapPointsV - 1) else 1.0,
        )
    }

    private fun ltmInputWeights(
        inputScale: Float,
        curveParameters: HdrPgtmCurveParameters,
    ): FloatArray {
        val scale = sanitizeInputScale(inputScale, curveParameters)
        return FloatArray(MAP_INPUT_WEIGHT_COUNT) { BASE_INPUT_WEIGHTS[it] * scale }
    }

    private fun sanitizeInputScale(
        value: Float,
        curveParameters: HdrPgtmCurveParameters,
    ): Float = value.takeIf { it.isFinite() }?.coerceIn(
        curveParameters.minInputScale,
        curveParameters.maxInputScale,
    ) ?: curveParameters.minInputScale

    private fun log2(value: Float): Float =
        (ln(max(value, CURVE_EPS).toDouble()) / ln(2.0)).toFloat()

    private fun log2Noise(value: Float): Float =
        (ln(max(value, 1e-12f).toDouble()) / ln(2.0)).toFloat()

    private fun safe01(value: Float) = value.takeIf { it.isFinite() }?.coerceIn(0f, 1f) ?: 0f
    private fun safePositive(value: Float, fallback: Float) =
        value.takeIf { it.isFinite() && it > 0f } ?: fallback
    private fun positiveOr(vararg values: Float) =
        values.firstOrNull { it.isFinite() && it > 0f } ?: 1f
}

internal data class HdrProfileGainTablePlan(
    val curveModel: HdrPgtmCurveModel,
    val grid: HdrPgtmGrid,
    val pointCount: Int,
    val mapInputWeights: FloatArray,
    val gamma: Float,
    val googlePlan: GooglePgtmPlan?,
    val photonPlan: PhotonPgtmPlan?,
    val diagnosticBand: DngHdrProfileGainTableGenerator.DiagnosticBand?,
) {
    init {
        require(mapInputWeights.size == 5 && mapInputWeights.all { it.isFinite() })
        require(gamma.isFinite() && gamma in 0.125f..8f)
        require((googlePlan != null) xor (photonPlan != null))
        require(
            when (curveModel) {
                HdrPgtmCurveModel.GOOGLE -> googlePlan != null
                HdrPgtmCurveModel.PHOTON -> photonPlan != null
            }
        )
    }

    val cellCount: Int
        get() = grid.mapPointsH * grid.mapPointsV
}

internal enum class HdrPgtmCurveModel { GOOGLE, PHOTON }

internal data class GooglePgtmPlan(
    val inputScale: Float,
    val curveParameters: HdrPgtmCurveParameters,
    val cellPlans: Array<HdrPgtmCurvePlan>,
)

internal data class HdrPgtmCurveParameters(
    val minTableGain: Float,
    val maxTableGain: Float,
    val minBlackGain: Float,
    val toeEnd: Float,
    val shapeQ: Float,
    val minShapePower: Float,
    val maxShapePower: Float,
    val minInputScale: Float,
    val maxInputScale: Float,
) {
    init {
        require(minTableGain.isFinite() && minTableGain > 0f)
        require(maxTableGain.isFinite() && maxTableGain >= minTableGain)
        require(minBlackGain.isFinite() && minBlackGain in minTableGain..maxTableGain)
        require(toeEnd.isFinite() && toeEnd >= 0f && toeEnd < 1f)
        require(shapeQ.isFinite() && shapeQ > 0f)
        require(minShapePower.isFinite() && minShapePower > 0f)
        require(maxShapePower.isFinite() && maxShapePower >= minShapePower)
        require(minInputScale.isFinite() && minInputScale > 0f)
        require(maxInputScale.isFinite() && maxInputScale >= minInputScale)
    }
}

internal data class HdrPgtmCurvePlan(
    val blackGain: Float,
    val endpointGain: Float,
    val shapePower: Float,
)
