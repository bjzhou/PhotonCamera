package com.hinnka.mycamera.processor

import com.hinnka.mycamera.ml.RelativeDepthMap
import com.hinnka.mycamera.utils.PLog
import kotlin.math.max
import kotlin.math.pow

/**
 * Adapts relative monocular depth for the background-first bokeh renderer.
 *
 * The renderer assumes a disparity-style map where larger values are closer to
 * camera and background is lower than the focused subject. Monocular depth
 * models can flip that polarity image-by-image, so score both directions before
 * rendering.
 */
internal object DepthBokehDepthPreprocessor {
    private const val TAG = "DepthBokehDepthPreprocessor"
    private const val FOCUS_POINT_RADIUS = 0.045f
    private const val FOCUS_PROTECT_WIDTH = 0.028f
    private const val BACKGROUND_BLUR_GAMMA = 1.45f
    private const val INVERT_SCORE_MARGIN = 1.18f

    data class Result(
        val depthMap: RelativeDepthMap,
        val focusDepth: Float,
        val inverted: Boolean,
        val normalScore: Float,
        val invertedScore: Float
    )

    fun prepare(depthMap: RelativeDepthMap, focusX: Float, focusY: Float): Result {
        val width = depthMap.width
        val height = depthMap.height
        val values = depthMap.values
        val invertedValues = FloatArray(values.size)
        for (i in values.indices) {
            invertedValues[i] = 1.0f - values[i]
        }

        val normalFocus = estimateFocusDepth(values, width, height, focusX, focusY)
        val invertedFocus = estimateFocusDepth(invertedValues, width, height, focusX, focusY)
        val normalScore = scoreBackgroundPotential(values, normalFocus)
        val invertedScore = scoreBackgroundPotential(invertedValues, invertedFocus)
        val shouldInvert = invertedScore > normalScore * INVERT_SCORE_MARGIN

        if (!shouldInvert) {
            return Result(
                depthMap = depthMap,
                focusDepth = normalFocus,
                inverted = false,
                normalScore = normalScore,
                invertedScore = invertedScore
            )
        }

        PLog.d(
            TAG,
            "Depth polarity inverted for background bokeh: normalScore=$normalScore invertedScore=$invertedScore"
        )
        return Result(
            depthMap = RelativeDepthMap(width, height, invertedValues),
            focusDepth = invertedFocus,
            inverted = true,
            normalScore = normalScore,
            invertedScore = invertedScore
        )
    }

    private fun estimateFocusDepth(
        values: FloatArray,
        width: Int,
        height: Int,
        focusX: Float,
        focusY: Float
    ): Float {
        val centerX = (focusX.coerceIn(0f, 1f) * (width - 1)).toInt()
        val centerY = (focusY.coerceIn(0f, 1f) * (height - 1)).toInt()
        val radius = max((minOf(width, height) * FOCUS_POINT_RADIUS).toInt(), 3)
        val samples = ArrayList<Float>((radius * 2 + 1) * (radius * 2 + 1))

        val xStart = max(centerX - radius, 0)
        val xEnd = minOf(centerX + radius, width - 1)
        val yStart = max(centerY - radius, 0)
        val yEnd = minOf(centerY + radius, height - 1)
        for (y in yStart..yEnd) {
            val rowOffset = y * width
            for (x in xStart..xEnd) {
                samples.add(values[rowOffset + x])
            }
        }

        if (samples.isEmpty()) {
            return 0.5f
        }
        samples.sort()
        return samples[samples.size / 2]
    }

    private fun scoreBackgroundPotential(values: FloatArray, focusDepth: Float): Float {
        var sum = 0.0
        for (value in values) {
            val backgroundGap = max(focusDepth - value - FOCUS_PROTECT_WIDTH, 0.0f)
            sum += backgroundGap.pow(BACKGROUND_BLUR_GAMMA).toDouble()
        }
        return (sum / values.size).toFloat()
    }
}
