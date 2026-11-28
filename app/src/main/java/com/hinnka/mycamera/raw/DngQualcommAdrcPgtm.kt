package com.hinnka.mycamera.raw

import android.graphics.RectF
import kotlin.math.ceil

/** DNG metadata for the gain table produced by the GPU ADRC stages. */
internal object DngQualcommAdrcPgtm {
    const val GRID_WIDTH = 64
    const val GRID_HEIGHT = 48
    private const val BASE_TABLE_POINTS = 257
    const val MAX_TABLE_POINTS = 4096

    data class Layout(val pointCount: Int, val rangeScale: Float)

    data class Diagnostics(
        val drcGain: Float,
        val drcGainDark: Float,
        val ltmPercentage: Float,
        val yRatioMax: Float,
        val sceneDynamicRangeEv: Float,
        val weightedLogAvgLuma: Float,
        val lumaP05: Float,
        val lumaP992: Float,
    )

    fun layout(maxLinearIntensity: Float, maxTextureSize: Int): Layout? {
        if (!maxLinearIntensity.isFinite() || maxLinearIntensity < 0f || maxTextureSize < GRID_WIDTH * GRID_HEIGHT) {
            return null
        }
        // Extend the table's intensity axis above white to cover the RAW highlight range.
        val pointLimit = minOf(maxTextureSize, MAX_TABLE_POINTS)
        val requiredPoints = maxOf(
            BASE_TABLE_POINTS.toDouble(),
            ceil(maxLinearIntensity.toDouble() * BASE_TABLE_POINTS) + 1.0,
        )
        val pointCount = minOf(requiredPoints, pointLimit.toDouble()).toInt()
        val rangeScale = if (requiredPoints <= pointLimit) {
            BASE_TABLE_POINTS.toFloat() / pointCount
        } else {
            ((pointCount - 1).toDouble() / pointCount / maxLinearIntensity).toFloat()
        }
        if (!rangeScale.isFinite() || rangeScale <= 0f) return null
        return Layout(pointCount, rangeScale)
    }

    fun map(
        layout: Layout,
        rendererBaselineGain: Float,
        samplingArea: PhotonPgtmSamplingArea,
        gains: FloatArray,
    ): DngProfileGainTableMap? {
        val mapInputScale = layout.rangeScale / rendererBaselineGain
        if (!mapInputScale.isFinite() || mapInputScale <= 0f) return null
        val weights = DngPhotonProfileGainTableGenerator.PXL_PROFILE_GAIN_TABLE_INPUT_WEIGHTS
        val spacingH = samplingArea.extentH / GRID_WIDTH
        val spacingV = samplingArea.extentV / GRID_HEIGHT
        return DngProfileGainTableMap(
            mapPointsV = GRID_HEIGHT,
            mapPointsH = GRID_WIDTH,
            mapSpacingV = spacingV,
            mapSpacingH = spacingH,
            mapOriginV = samplingArea.originV + 0.5 * spacingV,
            mapOriginH = samplingArea.originH + 0.5 * spacingH,
            mapPointsN = layout.pointCount,
            mapInputWeights = FloatArray(weights.size) { weights[it] * mapInputScale },
            gamma = 1f,
            gains = gains,
            sourceTag = DngProfileGainTableMap.TAG_PROFILE_GAIN_TABLE_MAP2,
        ).takeIf { it.isValid }
    }

    fun diagnostics(values: FloatArray): Diagnostics? {
        if (values.size != 8 || values.any { !it.isFinite() }) return null
        return Diagnostics(values[0], values[1], values[2], values[3], values[4], values[5], values[6], values[7])
    }

    fun facesInSamplingArea(faceRects: List<RectF>, samplingArea: PhotonPgtmSamplingArea): List<RectF> {
        val originH = samplingArea.originH.toFloat()
        val originV = samplingArea.originV.toFloat()
        val extentH = samplingArea.extentH.toFloat().coerceAtLeast(1e-6f)
        val extentV = samplingArea.extentV.toFloat().coerceAtLeast(1e-6f)
        return faceRects.mapNotNull { rect ->
            if (!rect.left.isFinite() || !rect.top.isFinite() || !rect.right.isFinite() || !rect.bottom.isFinite()) {
                return@mapNotNull null
            }
            RectF(
                ((rect.left - originH) / extentH).coerceIn(0f, 1f),
                ((rect.top - originV) / extentV).coerceIn(0f, 1f),
                ((rect.right - originH) / extentH).coerceIn(0f, 1f),
                ((rect.bottom - originV) / extentV).coerceIn(0f, 1f),
            ).takeUnless { it.isEmpty }
        }
    }
}
