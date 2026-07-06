package com.hinnka.mycamera.lut

object ChromaDenoiseDefaults {
    const val RAW_HIDDEN_BASE_STRENGTH = 0.5f

    fun rawDefaultStrength(userStrength: Float): Float {
        val clamped = userStrength.coerceIn(0f, 1f)
        return RAW_HIDDEN_BASE_STRENGTH + clamped * (1f - RAW_HIDDEN_BASE_STRENGTH)
    }
}
