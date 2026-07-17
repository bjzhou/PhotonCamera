package com.hinnka.mycamera.lut

object ChromaDenoiseDefaults {
    const val RAW_HIDDEN_BASE_STRENGTH = 0.25f
    private const val MIN_ACTIVE_NOISE_BANDWIDTH = 1.0f
    private const val MAX_NOISE_BANDWIDTH = 8.0f
    private const val FULL_OUTPUT_STRENGTH_POINT = 0.25f
    private const val EDGE_GUIDANCE_START_POINT = 0.75f

    fun rawDefaultStrength(userStrength: Float): Float {
        val clamped = userStrength.coerceIn(0f, 1f)
        return RAW_HIDDEN_BASE_STRENGTH + clamped * (1f - RAW_HIDDEN_BASE_STRENGTH)
    }

    /**
     * Keeps the bilateral kernel wide enough to recognize noise at every active
     * slider value. Once output mixing reaches full strength at 0.25, the remaining
     * slider range continues widening chroma similarity.
     */
    fun noiseBandwidth(strength: Float): Float {
        val clamped = strength.coerceIn(0f, 1f)
        if (clamped <= 0f) return 0f
        return MIN_ACTIVE_NOISE_BANDWIDTH +
            clamped * (MAX_NOISE_BANDWIDTH - MIN_ACTIVE_NOISE_BANDWIDTH)
    }

    /** Smoothly reaches full filter output at one quarter of the slider range. */
    fun outputStrength(strength: Float): Float {
        val t = (strength.coerceIn(0f, 1f) / FULL_OUTPUT_STRENGTH_POINT)
            .coerceIn(0f, 1f)
        return t * t * (3f - 2f * t)
    }

    /**
     * Uses strict edge rejection through the lower half of the slider. Above 0.5
     * the guide is relaxed smoothly so stronger settings can cross weak or noisy
     * pseudo-edges and establish enough support for dense chroma noise.
     */
    fun edgeGuidanceRelaxation(strength: Float): Float {
        val t = ((strength.coerceIn(0f, 1f) - EDGE_GUIDANCE_START_POINT) /
            (1f - EDGE_GUIDANCE_START_POINT)).coerceIn(0f, 1f)
        return t * t * (3f - 2f * t)
    }
}
