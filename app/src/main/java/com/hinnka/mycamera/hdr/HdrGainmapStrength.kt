package com.hinnka.mycamera.hdr

object HdrGainmapStrength {
    const val MIN = 0.25f
    const val DEFAULT = 1.0f
    const val MAX = 2.0f

    fun coerce(value: Float?): Float {
        return (value ?: DEFAULT).coerceIn(MIN, MAX)
    }

    fun applyToRatio(ratio: Float, minGainRatio: Float, maxGainRatio: Float, strength: Float): Float {
        val normalizedStrength = coerce(strength)
        return (1f + (ratio - 1f) * normalizedStrength).coerceIn(minGainRatio, maxGainRatio)
    }
}
