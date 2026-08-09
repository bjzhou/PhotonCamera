package com.hinnka.mycamera.lut

import com.hinnka.mycamera.processor.DenoiseStrength

object ChromaDenoiseDefaults {
    const val RAW_CAPTURE_DEFAULT_STRENGTH = 0.0f
    private const val MIN_ACTIVE_NOISE_BANDWIDTH = 1.0f
    private const val STRENGTH_ONE_NOISE_BANDWIDTH = 8.0f
    private const val FULL_OUTPUT_STRENGTH_POINT = 0.5f
    private const val EDGE_GUIDANCE_START_POINT = 0.75f

    fun forRawCapture(requested: Float): Float = DenoiseStrength.clamp(
        maxOf(requested, RAW_CAPTURE_DEFAULT_STRENGTH)
    )

    /**
     * Keeps the bilateral kernel wide enough to recognize noise at every active
     * slider value. Once output mixing reaches full strength, the remaining slider
     * range continues widening chroma similarity. Strength 2 therefore extends the
     * noise bandwidth beyond the former strength-1 endpoint instead of saturating.
     */
    fun noiseBandwidth(strength: Float): Float {
        val clamped = DenoiseStrength.clamp(strength)
        if (clamped <= 0f) return 0f
        return MIN_ACTIVE_NOISE_BANDWIDTH +
            clamped * (STRENGTH_ONE_NOISE_BANDWIDTH - MIN_ACTIVE_NOISE_BANDWIDTH)
    }

    /** Smoothly reaches full filter output at strength 0.5. */
    fun outputStrength(strength: Float): Float {
        val t = (DenoiseStrength.clamp(strength) / FULL_OUTPUT_STRENGTH_POINT)
            .coerceIn(0f, 1f)
        return t * t * (3f - 2f * t)
    }

    /**
     * Uses strict edge rejection through the lower part of the slider. Above 0.75
     * the guide is relaxed smoothly so stronger settings can cross weak or noisy
     * pseudo-edges and establish enough support for dense chroma noise.
     */
    fun edgeGuidanceRelaxation(strength: Float): Float {
        val t = ((DenoiseStrength.clamp(strength) - EDGE_GUIDANCE_START_POINT) /
            (1f - EDGE_GUIDANCE_START_POINT)).coerceIn(0f, 1f)
        return t * t * (3f - 2f * t)
    }
}
