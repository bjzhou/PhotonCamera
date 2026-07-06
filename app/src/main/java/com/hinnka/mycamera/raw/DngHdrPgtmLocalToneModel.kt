package com.hinnka.mycamera.raw

import kotlin.math.abs
import kotlin.math.ln
import kotlin.math.max
import kotlin.math.min

internal object DngHdrPgtmLocalToneModel {
    private const val LOCAL_CURVE_MAX_BLEND = 0.90f
    private const val LOCAL_CURVE_SMOOTH_PASSES = 1
    private const val FEATURE_EPS = 0.006f
    private const val TAIL_EPS = 0.04f

    private val TONE_DISTANCE_WEIGHTS = floatArrayOf(
        0.34f,
        0.32f,
        0.20f,
        0.18f,
        0.70f
    )

    fun buildSpatialCurveParams(
        cells: Array<HdrPgtmCellStats?>,
        grid: HdrPgtmGrid,
        global: HdrPgtmCellStats,
        globalCurveParams: HdrPgtmCurveParams,
        cellCurveParams: (HdrPgtmCellStats) -> HdrPgtmCurveParams,
    ): Array<HdrPgtmCurveParams> {
        val globalFeature = ToneFeature.from(global)
        val splatFeatures = splatToneFeatures(cells, globalFeature)
        val localFeatures = localToneFeatures(splatFeatures, grid)
        val cellCount = grid.mapPointsH * grid.mapPointsV
        val predicted = Array(cellCount) { index ->
            val cell = cells.getOrNull(index)
            if (cell == null || cell.sampleWeight <= 0f) {
                globalCurveParams
            } else {
                val blend = predictResidualBlend(
                    cell = cell,
                    global = global,
                    splatFeature = splatFeatures[index],
                    localFeature = localFeatures[index],
                    globalFeature = globalFeature
                )
                blendCurveParams(
                    first = globalCurveParams,
                    second = cellCurveParams(cell),
                    amount = blend
                )
            }
        }
        return smoothSpatialCurveParams(predicted, grid)
    }

    private fun splatToneFeatures(
        cells: Array<HdrPgtmCellStats?>,
        fallback: ToneFeature,
    ): Array<ToneFeature> {
        return Array(cells.size) { index ->
            val cell = cells[index]
            if (cell != null && cell.sampleWeight > 0f) {
                ToneFeature.from(cell)
            } else {
                fallback
            }
        }
    }

    private fun localToneFeatures(
        source: Array<ToneFeature>,
        grid: HdrPgtmGrid,
    ): Array<ToneFeature> {
        return Array(source.size) { index ->
            val x = index % grid.mapPointsH
            val y = index / grid.mapPointsH
            var weightSum = 0f
            var fullRangeEv = 0f
            var upperRangeEv = 0f
            var midRangeEv = 0f
            var tailRangeEv = 0f
            var highlightFraction = 0f
            for (dy in -1..1) {
                val yy = y + dy
                if (yy !in 0 until grid.mapPointsV) continue
                for (dx in -1..1) {
                    val xx = x + dx
                    if (xx !in 0 until grid.mapPointsH) continue
                    val weight = when {
                        dx == 0 && dy == 0 -> 4f
                        dx == 0 || dy == 0 -> 2f
                        else -> 1f
                    }
                    val feature = source[yy * grid.mapPointsH + xx]
                    weightSum += weight
                    fullRangeEv += feature.fullRangeEv * weight
                    upperRangeEv += feature.upperRangeEv * weight
                    midRangeEv += feature.midRangeEv * weight
                    tailRangeEv += feature.tailRangeEv * weight
                    highlightFraction += feature.highlightFraction * weight
                }
            }
            ToneFeature(
                fullRangeEv = fullRangeEv / weightSum,
                upperRangeEv = upperRangeEv / weightSum,
                midRangeEv = midRangeEv / weightSum,
                tailRangeEv = tailRangeEv / weightSum,
                highlightFraction = highlightFraction / weightSum
            )
        }
    }

    private fun predictResidualBlend(
        cell: HdrPgtmCellStats,
        global: HdrPgtmCellStats,
        splatFeature: ToneFeature,
        localFeature: ToneFeature,
        globalFeature: ToneFeature,
    ): Float {
        val fusedFeature = ToneFeature.fuse(
            splatFeature = splatFeature,
            localFeature = localFeature
        )
        val toneDelta = weightedToneDistance(fusedFeature, globalFeature)
        val variation = smoothStep(0.08f, 0.70f, toneDelta)
        val confidence = smoothStep(24f, 96f, cell.sampleWeight)
        val darkerThanGlobal = 1f - smoothStep(
            0.70f,
            1.06f,
            (cell.p98 + FEATURE_EPS) / max(global.p98 + FEATURE_EPS, FEATURE_EPS)
        )
        val quietDarkCell = darkerThanGlobal * (1f - smoothStep(0.015f, 0.10f, cell.highlightFraction))
        val localLiftDamping = lerp(1f, 1.45f, quietDarkCell)
        val saturatedCellDamping = lerp(1f, 0.00f, smoothStep(0.96f, 1.0f, cell.p98))
        return (LOCAL_CURVE_MAX_BLEND * variation * confidence * localLiftDamping * saturatedCellDamping)
            .coerceIn(0f, LOCAL_CURVE_MAX_BLEND)
    }

    private fun weightedToneDistance(first: ToneFeature, second: ToneFeature): Float {
        val deltas = floatArrayOf(
            abs(first.fullRangeEv - second.fullRangeEv),
            abs(first.upperRangeEv - second.upperRangeEv),
            abs(first.midRangeEv - second.midRangeEv),
            abs(first.tailRangeEv - second.tailRangeEv),
            abs(first.highlightFraction - second.highlightFraction)
        )
        var distance = 0f
        for (index in deltas.indices) {
            distance += deltas[index] * TONE_DISTANCE_WEIGHTS[index]
        }
        return distance
    }

    private fun smoothSpatialCurveParams(
        source: Array<HdrPgtmCurveParams>,
        grid: HdrPgtmGrid,
    ): Array<HdrPgtmCurveParams> {
        var current = source
        repeat(LOCAL_CURVE_SMOOTH_PASSES) {
            current = Array(current.size) { index ->
                val x = index % grid.mapPointsH
                val y = index / grid.mapPointsH
                var weightSum = 0f
                var midOutput = 0f
                var blackGain = 0f
                var toeSlope = 0f
                var shoulderPower = 0f
                var highlightPressure = 0f
                var lowDetailGainFactor = 0f
                var lowRangeStart = 0f
                var lowRangeEnd = 0f
                var lowRangeRetention = 0f
                for (dy in -1..1) {
                    val yy = y + dy
                    if (yy !in 0 until grid.mapPointsV) continue
                    for (dx in -1..1) {
                        val xx = x + dx
                        if (xx !in 0 until grid.mapPointsH) continue
                        val weight = when {
                            dx == 0 && dy == 0 -> 4f
                            dx == 0 || dy == 0 -> 2f
                            else -> 1f
                        }
                        val params = current[yy * grid.mapPointsH + xx]
                        weightSum += weight
                        midOutput += params.midOutput * weight
                        blackGain += params.blackGain * weight
                        toeSlope += params.toeSlope * weight
                        shoulderPower += params.shoulderPower * weight
                        highlightPressure += params.highlightPressure * weight
                        lowDetailGainFactor += params.lowDetailGainFactor * weight
                        lowRangeStart += params.lowRangeStart * weight
                        lowRangeEnd += params.lowRangeEnd * weight
                        lowRangeRetention += params.lowRangeRetention * weight
                    }
                }
                HdrPgtmCurveParams(
                    midOutput = midOutput / weightSum,
                    blackGain = blackGain / weightSum,
                    toeSlope = toeSlope / weightSum,
                    shoulderPower = shoulderPower / weightSum,
                    highlightPressure = highlightPressure / weightSum,
                    lowDetailGainFactor = lowDetailGainFactor / weightSum,
                    lowRangeStart = lowRangeStart / weightSum,
                    lowRangeEnd = lowRangeEnd / weightSum,
                    lowRangeRetention = lowRangeRetention / weightSum
                )
            }
        }
        return current
    }

    private fun blendCurveParams(
        first: HdrPgtmCurveParams,
        second: HdrPgtmCurveParams,
        amount: Float,
    ): HdrPgtmCurveParams {
        val t = amount.coerceIn(0f, 1f)
        return HdrPgtmCurveParams(
            midOutput = lerp(first.midOutput, second.midOutput, t),
            blackGain = lerp(first.blackGain, second.blackGain, t),
            toeSlope = lerp(first.toeSlope, second.toeSlope, t),
            shoulderPower = lerp(first.shoulderPower, second.shoulderPower, t),
            highlightPressure = lerp(first.highlightPressure, second.highlightPressure, t),
            lowDetailGainFactor = lerp(first.lowDetailGainFactor, second.lowDetailGainFactor, t),
            lowRangeStart = lerp(first.lowRangeStart, second.lowRangeStart, t),
            lowRangeEnd = lerp(first.lowRangeEnd, second.lowRangeEnd, t),
            lowRangeRetention = lerp(first.lowRangeRetention, second.lowRangeRetention, t)
        )
    }

    private fun lerp(a: Float, b: Float, t: Float): Float {
        return a + (b - a) * min(max(t, 0f), 1f)
    }

    private fun smoothStep(edge0: Float, edge1: Float, x: Float): Float {
        val t = ((x - edge0) / max(edge1 - edge0, 1e-6f)).coerceIn(0f, 1f)
        return t * t * (3f - 2f * t)
    }

    private fun log2(value: Float): Float {
        return (ln(max(value, 1e-6f).toDouble()) / ln(2.0)).toFloat()
    }

    private data class ToneFeature(
        val fullRangeEv: Float,
        val upperRangeEv: Float,
        val midRangeEv: Float,
        val tailRangeEv: Float,
        val highlightFraction: Float,
    ) {
        companion object {
            fun from(stats: HdrPgtmCellStats): ToneFeature {
                return ToneFeature(
                    fullRangeEv = log2((stats.p98 + FEATURE_EPS) / (stats.p10 + FEATURE_EPS)),
                    upperRangeEv = log2((stats.p98 + FEATURE_EPS) / (stats.p50 + FEATURE_EPS)),
                    midRangeEv = log2((stats.p90 + FEATURE_EPS) / (stats.p50 + FEATURE_EPS)),
                    tailRangeEv = log2((stats.p999Input + TAIL_EPS) / (stats.p98 + TAIL_EPS)),
                    highlightFraction = stats.highlightFraction
                )
            }

            fun fuse(
                splatFeature: ToneFeature,
                localFeature: ToneFeature,
            ): ToneFeature {
                return ToneFeature(
                    fullRangeEv = splatFeature.fullRangeEv,
                    upperRangeEv = splatFeature.upperRangeEv,
                    midRangeEv = splatFeature.midRangeEv,
                    tailRangeEv = splatFeature.tailRangeEv,
                    highlightFraction = localFeature.highlightFraction
                )
            }
        }
    }
}

internal data class HdrPgtmGrid(
    val mapPointsH: Int,
    val mapPointsV: Int,
    val mapSpacingH: Double,
    val mapSpacingV: Double,
)

internal data class HdrPgtmCellStats(
    val p10: Float,
    val p50: Float,
    val p90: Float,
    val p98: Float,
    val highlightFraction: Float,
    val p995Input: Float,
    val p999Input: Float,
    val inputTailP95: Float,
    val inputTailP98: Float,
    val inputTailP99: Float,
    val maxInput: Float,
    val sampleWeight: Float,
)

internal data class HdrPgtmCurveParams(
    val midOutput: Float,
    val blackGain: Float,
    val toeSlope: Float,
    val shoulderPower: Float,
    val highlightPressure: Float,
    val lowDetailGainFactor: Float,
    val lowRangeStart: Float,
    val lowRangeEnd: Float,
    val lowRangeRetention: Float,
)
