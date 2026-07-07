package com.hinnka.mycamera.lut

internal enum class PreviewColorTextureSource {
    EXTERNAL_OES,
    TEXTURE_2D,
}

internal data class PreviewColorShaderVariant(
    val textureSource: PreviewColorTextureSource,
    val includeHlgInput: Boolean,
    val includeExtendedLutCurves: Boolean,
    val includeOklchDensity: Boolean,
    val includeLchMixer: Boolean,
    val includeFilmGrain: Boolean,
    val includeLutMask: Boolean = false,
)
