package com.hinnka.mycamera.raw

object RawWhiteLevelCorrection {
    const val MODE_DEFAULT = "Default"
    const val MODE_RAW10 = "RAW10"
    const val MODE_RAW12 = "RAW12"
    const val MODE_RAW14 = "RAW14"
    const val MODE_RAW_SENSOR = "RAW_SENSOR_65535"
    const val MODE_CUSTOM = "Custom"

    fun resolveWhiteLevel(
        defaultWhiteLevel: Float,
        mode: String?,
        customWhiteLevel: Float? = null
    ): Float {
        return when (mode) {
            MODE_RAW10 -> 1023f
            MODE_RAW12 -> 4095f
            MODE_RAW14 -> 16383f
            MODE_RAW_SENSOR -> 65535f
            MODE_CUSTOM -> customWhiteLevel?.takeIf { it > 0f } ?: defaultWhiteLevel
            else -> defaultWhiteLevel
        }
    }

    fun isOverrideMode(mode: String?): Boolean {
        return when (mode) {
            MODE_RAW10,
            MODE_RAW12,
            MODE_RAW14,
            MODE_RAW_SENSOR,
            MODE_CUSTOM -> true
            else -> false
        }
    }
}
