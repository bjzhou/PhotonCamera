package com.hinnka.mycamera.lut

import com.hinnka.mycamera.color.TransferCurve
import com.hinnka.mycamera.model.ColorRecipeParams
import kotlin.math.abs

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
) {
    companion object {
        fun forPass(
            textureSource: PreviewColorTextureSource,
            params: ColorRecipeParams,
            lutConfig: LutConfig?,
            lutEnabled: Boolean,
            videoLogEnabled: Boolean,
            hlgInput: Boolean,
        ): PreviewColorShaderVariant {
            val lutCurve = lutConfig?.curve ?: TransferCurve.SRGB
            return PreviewColorShaderVariant(
                textureSource = textureSource,
                includeHlgInput = hlgInput,
                includeExtendedLutCurves = videoLogEnabled ||
                    (lutEnabled && lutCurve.shaderId !in SIMPLE_LUT_CURVES),
                includeOklchDensity = abs(params.color) > EPSILON,
                includeLchMixer = params.hasLchAdjustments(),
                includeFilmGrain = params.filmGrain > EPSILON,
            )
        }

        private val SIMPLE_LUT_CURVES = setOf(TransferCurve.SRGB.shaderId, TransferCurve.LINEAR.shaderId)
        private const val EPSILON = 0.001f
    }
}

private fun ColorRecipeParams.hasLchAdjustments(): Boolean {
    return abs(skinHue) > 0.001f ||
        abs(skinChroma) > 0.001f ||
        abs(skinLightness) > 0.001f ||
        abs(redHue) > 0.001f ||
        abs(redChroma) > 0.001f ||
        abs(redLightness) > 0.001f ||
        abs(orangeHue) > 0.001f ||
        abs(orangeChroma) > 0.001f ||
        abs(orangeLightness) > 0.001f ||
        abs(yellowHue) > 0.001f ||
        abs(yellowChroma) > 0.001f ||
        abs(yellowLightness) > 0.001f ||
        abs(greenHue) > 0.001f ||
        abs(greenChroma) > 0.001f ||
        abs(greenLightness) > 0.001f ||
        abs(cyanHue) > 0.001f ||
        abs(cyanChroma) > 0.001f ||
        abs(cyanLightness) > 0.001f ||
        abs(blueHue) > 0.001f ||
        abs(blueChroma) > 0.001f ||
        abs(blueLightness) > 0.001f ||
        abs(purpleHue) > 0.001f ||
        abs(purpleChroma) > 0.001f ||
        abs(purpleLightness) > 0.001f ||
        abs(magentaHue) > 0.001f ||
        abs(magentaChroma) > 0.001f ||
        abs(magentaLightness) > 0.001f
}
