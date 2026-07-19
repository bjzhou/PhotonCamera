package com.hinnka.mycamera.hdr

import kotlin.math.ln

object EstimatedSdrGainmapMath {
    fun encodedSrgbLuma(red: Float, green: Float, blue: Float): Float {
        return (LUMA_RED * red + LUMA_GREEN * green + LUMA_BLUE * blue).coerceIn(0.0f, 1.0f)
    }

    fun estimateGainRatio(
        encodedSrgbLuma: Float,
        fullHdrRatio: Float,
        maxGainRatio: Float,
    ): Float {
        val targetRatio = fullHdrRatio.coerceIn(MIN_GAIN_RATIO, maxGainRatio)
        val highlightWeight = smoothstep(
            GAIN_START_LUMA,
            GAIN_END_LUMA,
            encodedSrgbLuma,
        )
        return MIN_GAIN_RATIO + (targetRatio - MIN_GAIN_RATIO) * highlightWeight
    }

    fun encodeRatio(ratio: Float, minGainRatio: Float, maxGainRatio: Float): Int {
        val logRatioSpan = ln(maxGainRatio / minGainRatio)
        return ((ln(ratio.coerceIn(minGainRatio, maxGainRatio) / minGainRatio) / logRatioSpan) * 255.0f)
            .toInt()
            .coerceIn(0, 255)
    }

    private fun smoothstep(edge0: Float, edge1: Float, value: Float): Float {
        val t = ((value - edge0) / (edge1 - edge0)).coerceIn(0.0f, 1.0f)
        return t * t * (3.0f - 2.0f * t)
    }

    const val GAIN_START_LUMA = 0.25f
    const val GAIN_END_LUMA = 1.0f

    private const val MIN_GAIN_RATIO = 1.0f
    private const val LUMA_RED = 0.2126f
    private const val LUMA_GREEN = 0.7152f
    private const val LUMA_BLUE = 0.0722f
}
