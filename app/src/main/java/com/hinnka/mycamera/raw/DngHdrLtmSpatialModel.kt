package com.hinnka.mycamera.raw

import kotlin.math.ln
import kotlin.math.max
import kotlin.math.pow
import kotlin.math.sqrt

/** PXLs2-trained Gaussian parameter pyramid for PGTM black gain and shoulder shape. */
internal object DngHdrLtmSpatialModel {
    private const val LEVEL_EPS = 0.006f
    private const val TAIL_EPS = 0.040f
    private const val FEATURE_COUNT = 11

    private val BLACK_FINE = floatArrayOf(
        0.080100003f, 0.038598747f, -0.009591165f, 0.040930166f,
        -0.032663656f, 0.003484404f, -0.036142493f, -0.013543239f,
        0.221111670f, -0.056745937f, 0.022797185f,
    )
    private val BLACK_REGIONAL = floatArrayOf(
        0.050453932f, -0.164809241f, -0.025868995f, 0.024685689f,
        -0.169930713f, 0.082901192f, 0.057923125f, 0.054644468f,
        -0.628739524f, -0.120014771f, 0.272379151f,
    )
    private val SHAPE_FINE = floatArrayOf(
        -0.042331190f, -0.002069818f, -0.003614245f, -0.011158727f,
        0.025782988f, -0.011451446f, 0.188099210f, -0.026559214f,
        -0.048570362f, 0.027670583f, -0.014421700f,
    )
    private val SHAPE_REGIONAL = floatArrayOf(
        0.032147274f, 0.012769699f, -0.005806728f, -0.042285077f,
        0.097232112f, -0.041291256f, 0.005268769f, -0.025812120f,
        0.213336867f, 0.033524746f, -0.045624738f,
    )

    fun buildCurvePlans(
        cells: Array<HdrPgtmCellStats?>,
        grid: HdrPgtmGrid,
        globalPlan: HdrPgtmCurvePlan,
        baselineExposureEv: Float,
        noiseSlope: Float,
        noiseOffset: Float,
        curveParameters: HdrPgtmCurveParameters,
    ): Array<HdrPgtmCurvePlan> {
        val boundedGlobalPlan = globalPlan.copy(
            blackGain = globalPlan.blackGain.coerceIn(
                curveParameters.minBlackGain,
                curveParameters.maxTableGain,
            ),
            shapePower = globalPlan.shapePower.coerceIn(
                curveParameters.minShapePower,
                curveParameters.maxShapePower,
            ),
        )
        val fallbackStats = cells.filterNotNull().firstOrNull()
            ?: return Array(cells.size) { boundedGlobalPlan }
        val raw = Array(cells.size) { index ->
            featureVector(
                stats = cells[index] ?: fallbackStats,
                baselineExposureEv = baselineExposureEv,
                noiseSlope = noiseSlope,
                noiseOffset = noiseOffset,
            )
        }
        val fine = smoothFeatures(raw, grid)
        var regional = fine
        repeat(3) { regional = smoothFeatures(regional, grid) }
        val reference = medianFeature(regional)

        return Array(cells.size) { index ->
            if (cells[index] == null) {
                boundedGlobalPlan
            } else {
                var blackOffsetEv = 0f
                var shapeOffset = 0f
                for (feature in 0 until FEATURE_COUNT) {
                    val fineResidual = fine[index][feature] - regional[index][feature]
                    val regionalResidual = regional[index][feature] - reference[feature]
                    blackOffsetEv +=
                        BLACK_FINE[feature] * fineResidual +
                            BLACK_REGIONAL[feature] * regionalResidual
                    shapeOffset +=
                        SHAPE_FINE[feature] * fineResidual +
                            SHAPE_REGIONAL[feature] * regionalResidual
                }
                globalPlan.copy(
                    blackGain = (globalPlan.blackGain * 2.0f.pow(blackOffsetEv))
                        .coerceIn(curveParameters.minBlackGain, curveParameters.maxTableGain),
                    shapePower = (globalPlan.shapePower + shapeOffset).coerceIn(
                        curveParameters.minShapePower,
                        curveParameters.maxShapePower,
                    ),
                )
            }
        }
    }

    private fun featureVector(
        stats: HdrPgtmCellStats,
        baselineExposureEv: Float,
        noiseSlope: Float,
        noiseOffset: Float,
    ): FloatArray {
        val logP10 = log2(stats.p10 + LEVEL_EPS)
        val logP50 = log2(stats.p50 + LEVEL_EPS)
        val logP90 = log2(stats.p90 + LEVEL_EPS)
        val logP98 = log2(stats.p98 + LEVEL_EPS)
        return floatArrayOf(
            logP10,
            logP50,
            logP90,
            logP98,
            logP98 - logP10,
            logP98 - logP50,
            sqrt(stats.highlightFraction.coerceIn(0f, 1f)),
            log2((stats.p995Input + TAIL_EPS) / (stats.p98 + TAIL_EPS)),
            log2((stats.p999Input + TAIL_EPS) / (stats.p995Input + TAIL_EPS)),
            snrFeature(stats.p10, baselineExposureEv, noiseSlope, noiseOffset),
            snrFeature(stats.p50, baselineExposureEv, noiseSlope, noiseOffset),
        )
    }

    private fun snrFeature(
        signal: Float,
        baselineExposureEv: Float,
        noiseSlope: Float,
        noiseOffset: Float,
    ): Float {
        val sourceSignal = max(signal / DngBaselineExposure.exactGain(baselineExposureEv), 0f)
        val variance = max(noiseSlope * sourceSignal + noiseOffset, 1e-12f)
        return log2(1f + sourceSignal / sqrt(variance))
    }

    private fun smoothFeatures(
        source: Array<FloatArray>,
        grid: HdrPgtmGrid,
    ): Array<FloatArray> = Array(source.size) { index ->
        val x = index % grid.mapPointsH
        val y = index / grid.mapPointsH
        val result = FloatArray(FEATURE_COUNT)
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
                val feature = source[yy * grid.mapPointsH + xx]
                weightSum += weight
                for (component in 0 until FEATURE_COUNT) {
                    result[component] += feature[component] * weight
                }
            }
        }
        for (component in 0 until FEATURE_COUNT) result[component] /= weightSum
        result
    }

    private fun medianFeature(source: Array<FloatArray>): FloatArray =
        FloatArray(FEATURE_COUNT) { component ->
            val values = FloatArray(source.size) { source[it][component] }
            values.sort()
            val center = values.size / 2
            if (values.size % 2 == 0) {
                0.5f * (values[center - 1] + values[center])
            } else {
                values[center]
            }
        }

    private fun log2(value: Float): Float =
        (ln(max(value, 1e-8f).toDouble()) / ln(2.0)).toFloat()
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
