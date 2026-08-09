package com.hinnka.mycamera.raw

object RawSharpeningDefaults {
    const val DEFAULT_STRENGTH = 0.4f

    fun normalize(value: Float): Float = if (value.isFinite()) {
        value.coerceIn(0f, 1f)
    } else {
        DEFAULT_STRENGTH
    }
}
