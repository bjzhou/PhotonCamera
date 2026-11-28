package com.hinnka.mycamera.raw

object RawSharpeningDefaults {
    const val DEFAULT_STRENGTH = 1f
    const val ALGORITHM_STRENGTH_SCALE = 2f
    const val MAX_ALGORITHM_STRENGTH = 2f

    val valueRange: ClosedFloatingPointRange<Float> = 0f..2f

    fun normalize(value: Float): Float = if (value.isFinite()) {
        value.coerceIn(valueRange)
    } else {
        DEFAULT_STRENGTH
    }

    /** Converts to legacy GLES USM strength within its own limits. */
    fun toAlgorithmStrength(value: Float): Float =
        (normalize(value) * ALGORITHM_STRENGTH_SCALE).coerceAtMost(MAX_ALGORITHM_STRENGTH)
}
