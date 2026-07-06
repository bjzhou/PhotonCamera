package com.hinnka.mycamera.raw

data class RawToneMappingParameters(
    val agxBlackRelativeExposure: Float = AGX_BLACK_RELATIVE_EXPOSURE_DEFAULT,
    val agxWhiteRelativeExposure: Float = AGX_WHITE_RELATIVE_EXPOSURE_DEFAULT,
    val agxToe: Float = AGX_TOE_DEFAULT,
    val agxShoulder: Float = AGX_SHOULDER_DEFAULT,
    val filmicBlackRelativeExposure: Float = FILMIC_BLACK_RELATIVE_EXPOSURE_DEFAULT,
    val filmicWhiteRelativeExposure: Float = FILMIC_WHITE_RELATIVE_EXPOSURE_DEFAULT,
    val useGooglePixelToneMap: Boolean = false,
    val useOppoMasterToneMap: Boolean = false
) {
    fun normalized(): RawToneMappingParameters {
        val blackAgx = agxBlackRelativeExposure.coerceIn(
            AGX_BLACK_RELATIVE_EXPOSURE_MIN,
            AGX_BLACK_RELATIVE_EXPOSURE_MAX
        )
        val whiteAgx = agxWhiteRelativeExposure.coerceIn(
            AGX_WHITE_RELATIVE_EXPOSURE_MIN,
            AGX_WHITE_RELATIVE_EXPOSURE_MAX
        )
        val blackFilmic = filmicBlackRelativeExposure.coerceIn(
            FILMIC_BLACK_RELATIVE_EXPOSURE_MIN,
            FILMIC_BLACK_RELATIVE_EXPOSURE_MAX
        )
        val whiteFilmic = filmicWhiteRelativeExposure.coerceIn(
            FILMIC_WHITE_RELATIVE_EXPOSURE_MIN,
            FILMIC_WHITE_RELATIVE_EXPOSURE_MAX
        )
        return copy(
            agxBlackRelativeExposure = minOf(blackAgx, whiteAgx - MIN_DYNAMIC_RANGE_EV),
            agxWhiteRelativeExposure = maxOf(whiteAgx, blackAgx + MIN_DYNAMIC_RANGE_EV),
            agxToe = agxToe.coerceIn(AGX_TOE_MIN, AGX_TOE_MAX),
            agxShoulder = agxShoulder.coerceIn(AGX_SHOULDER_MIN, AGX_SHOULDER_MAX),
            filmicBlackRelativeExposure = minOf(blackFilmic, whiteFilmic - MIN_DYNAMIC_RANGE_EV),
            filmicWhiteRelativeExposure = maxOf(whiteFilmic, blackFilmic + MIN_DYNAMIC_RANGE_EV),
            useGooglePixelToneMap = useGooglePixelToneMap && !useOppoMasterToneMap
        )
    }

    fun withGooglePixelToneMap(enabled: Boolean): RawToneMappingParameters {
        return copy(
            useGooglePixelToneMap = enabled,
            useOppoMasterToneMap = if (enabled) false else useOppoMasterToneMap
        ).normalized()
    }

    fun withOppoMasterToneMap(enabled: Boolean): RawToneMappingParameters {
        return copy(
            useOppoMasterToneMap = enabled,
            useGooglePixelToneMap = if (enabled) false else useGooglePixelToneMap
        ).normalized()
    }

    companion object {
        const val MIN_DYNAMIC_RANGE_EV = 0.2f

        const val AGX_BLACK_RELATIVE_EXPOSURE_MIN = -20f
        const val AGX_BLACK_RELATIVE_EXPOSURE_MAX = -0.1f
        const val AGX_BLACK_RELATIVE_EXPOSURE_DEFAULT = -10f
        const val AGX_WHITE_RELATIVE_EXPOSURE_MIN = 0.1f
        const val AGX_WHITE_RELATIVE_EXPOSURE_MAX = 20f
        const val AGX_WHITE_RELATIVE_EXPOSURE_DEFAULT = 6.5f
        const val AGX_TOE_MIN = 0.01f
        const val AGX_TOE_MAX = 10f
        const val AGX_TOE_DEFAULT = 1.5f
        const val AGX_SHOULDER_MIN = 0.01f
        const val AGX_SHOULDER_MAX = 10f
        const val AGX_SHOULDER_DEFAULT = 3.3f

        const val FILMIC_BLACK_RELATIVE_EXPOSURE_MIN = -16f
        const val FILMIC_BLACK_RELATIVE_EXPOSURE_MAX = -0.1f
        const val FILMIC_BLACK_RELATIVE_EXPOSURE_DEFAULT = -7.65f
        const val FILMIC_WHITE_RELATIVE_EXPOSURE_MIN = 0.1f
        const val FILMIC_WHITE_RELATIVE_EXPOSURE_MAX = 16f
        const val FILMIC_WHITE_RELATIVE_EXPOSURE_DEFAULT = 4.56f

        val DEFAULT = RawToneMappingParameters()
    }
}
