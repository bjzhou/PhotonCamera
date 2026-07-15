package com.hinnka.mycamera.raw

import kotlin.math.ln
import kotlin.math.max
import kotlin.math.pow
import kotlin.math.sqrt

/**
 * Spatial LTM stage fitted against Google PGTM cells from the Skyyking regression set.
 *
 * The brightest member of each local synthetic-exposure stack is biased from local luminance and
 * highlight topology. Absolute percentile levels, ranges and tail descriptors are retained. A
 * single normalized 3x3 convolution gives these exposure decisions the same spatial support as
 * the profile map; the final gain curve is produced later by exposure fusion, not by this stage.
 */
internal object DngHdrLtmSpatialModel {
    private const val LEVEL_EPS = 0.006f
    private const val TAIL_EPS = 0.04f
    private const val MAX_LOCAL_EXPOSURE_OFFSET_EV = 1.25f

    fun buildExposurePlans(
        cells: Array<HdrPgtmCellStats?>,
        grid: HdrPgtmGrid,
        global: HdrPgtmCellStats,
        globalPlan: HdrLtmExposurePlan,
        maxExposureGain: Float,
    ): Array<HdrLtmExposurePlan> {
        val globalFeature = ToneFeature.from(global)
        val features = Array(cells.size) { index ->
            cells[index]?.takeIf { it.sampleWeight > 0f }?.let(ToneFeature::from) ?: globalFeature
        }
        val neighborhoods = smoothFeatures(features, grid)
        // The global exposure plan represents a robust scene median. Center local residuals on
        // the same statistic;
        // a feature built from arithmetic-mean percentiles is biased in strongly bimodal scenes.
        val referenceFeature = medianFeature(neighborhoods)
        val saturatedScene = smoothStep(0.55f, 0.72f, global.highlightFraction) *
            smoothStep(0.70f, 0.84f, global.p50)
        val sparseSeparatedTail =
            (1f - smoothStep(0.21f, 0.24f, global.p98)) *
                (1f - smoothStep(1.15f, 1.45f, global.inputTailP95)) *
                smoothStep(
                    0.75f,
                    1.20f,
                    log2((global.inputTailP99 + TAIL_EPS) / (global.inputTailP95 + TAIL_EPS))
                )
        val residualScale = 1f + 1.50f * saturatedScene + 1.00f * sparseSeparatedTail
        return Array(cells.size) { index ->
            val cell = cells[index]
            if (cell == null || cell.sampleWeight <= 0f) {
                globalPlan
            } else {
                planLocalExposureRange(
                    globalPlan = globalPlan,
                    referenceFeature = referenceFeature,
                    localFeature = neighborhoods[index],
                    sampleWeight = cell.sampleWeight,
                    residualScale = residualScale,
                    maxExposureGain = maxExposureGain,
                )
            }
        }
    }

    private fun planLocalExposureRange(
        globalPlan: HdrLtmExposurePlan,
        referenceFeature: ToneFeature,
        localFeature: ToneFeature,
        sampleWeight: Float,
        residualScale: Float,
        maxExposureGain: Float,
    ): HdrLtmExposurePlan {
        val residualEv =
            0.0070524f * (localFeature.logP10 - referenceFeature.logP10) +
                0.0018840f * (localFeature.logP50 - referenceFeature.logP50) -
                0.1109007f * (localFeature.logP90 - referenceFeature.logP90) +
                0.0874353f * (localFeature.logP98 - referenceFeature.logP98) -
                0.0166212f * (localFeature.fullRangeEv - referenceFeature.fullRangeEv) -
                0.0036315f * (localFeature.upperRangeEv - referenceFeature.upperRangeEv) -
                0.2828567f * (localFeature.sqrtHighlightFraction - referenceFeature.sqrtHighlightFraction) +
                0.0116745f * (localFeature.tail995Ev - referenceFeature.tail995Ev) -
                0.1805684f * (localFeature.tail999Ev - referenceFeature.tail999Ev)
        val confidence = smoothStep(16f, 64f, sampleWeight)
        val exposureOffsetEv = (residualEv * confidence * residualScale)
            .coerceIn(-MAX_LOCAL_EXPOSURE_OFFSET_EV, MAX_LOCAL_EXPOSURE_OFFSET_EV)
        return globalPlan.copy(
            brightestExposureGain = (globalPlan.brightestExposureGain * 2.0f.pow(exposureOffsetEv))
                .coerceIn(globalPlan.darkestExposureGain, maxExposureGain)
        )
    }

    private fun medianFeature(source: Array<ToneFeature>): ToneFeature {
        fun median(selector: (ToneFeature) -> Float): Float {
            val values = FloatArray(source.size) { selector(source[it]) }
            values.sort()
            val center = values.size / 2
            return if (values.size % 2 == 0) {
                0.5f * (values[center - 1] + values[center])
            } else {
                values[center]
            }
        }
        return ToneFeature(
            logP10 = median { it.logP10 },
            logP50 = median { it.logP50 },
            logP90 = median { it.logP90 },
            logP98 = median { it.logP98 },
            fullRangeEv = median { it.fullRangeEv },
            upperRangeEv = median { it.upperRangeEv },
            sqrtHighlightFraction = median { it.sqrtHighlightFraction },
            tail995Ev = median { it.tail995Ev },
            tail999Ev = median { it.tail999Ev }
        )
    }

    private fun smoothFeatures(
        source: Array<ToneFeature>,
        grid: HdrPgtmGrid,
    ): Array<ToneFeature> {
        return Array(source.size) { index ->
            val x = index % grid.mapPointsH
            val y = index / grid.mapPointsH
            var weightSum = 0f
            var logP10 = 0f
            var logP50 = 0f
            var logP90 = 0f
            var logP98 = 0f
            var fullRangeEv = 0f
            var upperRangeEv = 0f
            var sqrtHighlightFraction = 0f
            var tail995Ev = 0f
            var tail999Ev = 0f
            forEachNeighbor(x, y, grid) { neighbor, weight ->
                val feature = source[neighbor]
                weightSum += weight
                logP10 += feature.logP10 * weight
                logP50 += feature.logP50 * weight
                logP90 += feature.logP90 * weight
                logP98 += feature.logP98 * weight
                fullRangeEv += feature.fullRangeEv * weight
                upperRangeEv += feature.upperRangeEv * weight
                sqrtHighlightFraction += feature.sqrtHighlightFraction * weight
                tail995Ev += feature.tail995Ev * weight
                tail999Ev += feature.tail999Ev * weight
            }
            ToneFeature(
                logP10 = logP10 / weightSum,
                logP50 = logP50 / weightSum,
                logP90 = logP90 / weightSum,
                logP98 = logP98 / weightSum,
                fullRangeEv = fullRangeEv / weightSum,
                upperRangeEv = upperRangeEv / weightSum,
                sqrtHighlightFraction = sqrtHighlightFraction / weightSum,
                tail995Ev = tail995Ev / weightSum,
                tail999Ev = tail999Ev / weightSum
            )
        }
    }

    private inline fun forEachNeighbor(
        x: Int,
        y: Int,
        grid: HdrPgtmGrid,
        block: (index: Int, weight: Float) -> Unit,
    ) {
        for (dy in -1..1) {
            val yy = (y + dy).coerceIn(0, grid.mapPointsV - 1)
            for (dx in -1..1) {
                val xx = (x + dx).coerceIn(0, grid.mapPointsH - 1)
                val weight = when {
                    dx == 0 && dy == 0 -> 4f
                    dx == 0 || dy == 0 -> 2f
                    else -> 1f
                }
                block(yy * grid.mapPointsH + xx, weight)
            }
        }
    }

    private fun smoothStep(edge0: Float, edge1: Float, value: Float): Float {
        val t = ((value - edge0) / max(edge1 - edge0, 1e-6f)).coerceIn(0f, 1f)
        return t * t * (3f - 2f * t)
    }

    private fun log2(value: Float): Float {
        return (ln(max(value, 1e-6f).toDouble()) / ln(2.0)).toFloat()
    }

    private data class ToneFeature(
        val logP10: Float,
        val logP50: Float,
        val logP90: Float,
        val logP98: Float,
        val fullRangeEv: Float,
        val upperRangeEv: Float,
        val sqrtHighlightFraction: Float,
        val tail995Ev: Float,
        val tail999Ev: Float,
    ) {
        companion object {
            fun from(stats: HdrPgtmCellStats): ToneFeature {
                val logP10 = log2(stats.p10 + LEVEL_EPS)
                val logP50 = log2(stats.p50 + LEVEL_EPS)
                val logP90 = log2(stats.p90 + LEVEL_EPS)
                val logP98 = log2(stats.p98 + LEVEL_EPS)
                return ToneFeature(
                    logP10 = logP10,
                    logP50 = logP50,
                    logP90 = logP90,
                    logP98 = logP98,
                    fullRangeEv = logP98 - logP10,
                    upperRangeEv = logP98 - logP50,
                    sqrtHighlightFraction = sqrt(stats.highlightFraction.coerceIn(0f, 1f)),
                    tail995Ev = log2((stats.p995Input + TAIL_EPS) / (stats.p98 + TAIL_EPS)),
                    tail999Ev = log2((stats.p999Input + TAIL_EPS) / (stats.p995Input + TAIL_EPS))
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

internal data class HdrLtmExposurePlan(
    val brightestExposureGain: Float,
    val darkestExposureGain: Float,
)
