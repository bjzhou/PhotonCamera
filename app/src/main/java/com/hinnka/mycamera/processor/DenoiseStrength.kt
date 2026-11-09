package com.hinnka.mycamera.processor

/** Shared user-facing strength contract for luma and chroma denoise. */
object DenoiseStrength {
    const val MIN_VALUE = 0.0f
    const val MAX_VALUE = 2.0f

    val valueRange: ClosedFloatingPointRange<Float>
        get() = MIN_VALUE..MAX_VALUE

    fun clamp(value: Float?): Float = value
        ?.takeIf { it.isFinite() }
        ?.coerceIn(MIN_VALUE, MAX_VALUE)
        ?: MIN_VALUE
}
