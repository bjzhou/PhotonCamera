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
    val includeExtendedLutCurves: Boolean,
    val includeOklchDensity: Boolean,
    val includeLchMixer: Boolean,
    val includePreLogFilmGrain: Boolean,
    val includeLutMask: Boolean = false,
    /** Night vision luma tone curve on the camera input, before recipe and LUT. */
    val includeNightVisionTone: Boolean = false,
    val includeSpatialRecipeEffects: Boolean = false,
    val includeVideoLog: Boolean = false,
    val includeSharpening: Boolean = false,
    val includeEnginePreview: Boolean = false,
    val includeChromaticAberration: Boolean = false,
    val includeColorRecipe: Boolean = true,
    /** Local Laplacian highlights / shadows from [ShadowsHighlightsShader]. */
    val includeShadowsHighlights: Boolean = false,
    /** Preview-only single-pass stand-ins for the multi-pass effects, see [PreviewLiteEffectsGl]. */
    val includeLiteClarity: Boolean = false,
    val includeLiteSoftLight: Boolean = false,
    val includeLiteBloom: Boolean = false,
    val includeLiteRedHalation: Boolean = false,
    /** Cheap film grain after the LUT, in place of the separate grain pass. */
    val includeFinalFilmGrain: Boolean = false,
    /**
     * [RecipeOps] bits of the recipe steps that are not identity. Only these are emitted, so a
     * single slider costs one step rather than the whole recipe chain.
     */
    val recipeOps: Int = RecipeOps.ALL,
) {
    val includePreviewBlur: Boolean
        get() = includeLiteClarity || includeLiteSoftLight ||
            includeLiteBloom || includeLiteRedHalation

    companion object {
        fun forPass(
            textureSource: PreviewColorTextureSource,
            params: ColorRecipeParams,
            lutConfig: LutConfig?,
            lutEnabled: Boolean,
            videoLogEnabled: Boolean,
            previewLite: Boolean = false,
            nightVisionTone: Boolean = false,
        ): PreviewColorShaderVariant {
            val lutCurve = lutConfig?.curve ?: TransferCurve.SRGB
            val recipe = !params.isDefault()
            val shadowsHighlights = recipe &&
                (abs(params.highlights) >= SHADOWS_HIGHLIGHTS_ACTIVE_THRESHOLD ||
                    abs(params.shadows) >= SHADOWS_HIGHLIGHTS_ACTIVE_THRESHOLD)
            val preLogFilmGrain = videoLogEnabled && !lutEnabled && params.filmGrain > EPSILON
            val lite = previewLite && recipe
            return PreviewColorShaderVariant(
                textureSource = textureSource,
                includeNightVisionTone = nightVisionTone,
                includeExtendedLutCurves = videoLogEnabled ||
                    (lutEnabled && lutCurve.shaderId !in SIMPLE_LUT_CURVES),
                includeOklchDensity = abs(params.color) > EPSILON,
                includeLchMixer = params.hasLchAdjustments(),
                // A custom Log recording has no display LUT, so bake grain before encoding.
                includePreLogFilmGrain = preLogFilmGrain,
                includeVideoLog = videoLogEnabled,
                // Match the shader's activation threshold, including negative (softening) values.
                includeSharpening = abs(params.sharpness) > 0.0001f,
                includeChromaticAberration = params.chromaticAberration > 0.001f,
                includeColorRecipe = recipe,
                includeShadowsHighlights = shadowsHighlights,
                includeLiteClarity = lite && abs(params.clarity) > EPSILON,
                includeLiteSoftLight = lite && params.softLight > EPSILON,
                includeLiteBloom = lite && params.bloom > EPSILON,
                includeLiteRedHalation = lite && params.redHalation > EPSILON,
                includeFinalFilmGrain = lite && !preLogFilmGrain && params.filmGrain > EPSILON,
                recipeOps = if (recipe) RecipeOps.of(params) else 0,
            )
        }

        private val SIMPLE_LUT_CURVES = setOf(TransferCurve.SRGB.shaderId, TransferCurve.LINEAR.shaderId)
        private const val EPSILON = 0.001f

        /** Matches the early-out of `applyShadowsHighlights`, which doubles the slider value first. */
        private const val SHADOWS_HIGHLIGHTS_ACTIVE_THRESHOLD = 0.0005f
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

/** Recipe steps of the colour pass; each bit set means the step changes the image. */
internal object RecipeOps {
    const val EXPOSURE = 1 shl 0
    const val CONTRAST = 1 shl 1
    const val BASIC_TONE = 1 shl 2
    const val WHITE_BALANCE = 1 shl 3
    const val SATURATION = 1 shl 4
    const val PRIMARY_CALIBRATION = 1 shl 5
    const val GRADING = 1 shl 6
    const val FADE = 1 shl 7
    const val BLEACH_BYPASS = 1 shl 8
    const val FLASH = 1 shl 9
    const val VIGNETTE = 1 shl 10
    const val NOISE = 1 shl 11
    const val LOW_RES = 1 shl 12
    const val ALL = (1 shl 13) - 1

    // Thresholds match the shader's own early-outs.
    fun of(params: ColorRecipeParams): Int {
        var ops = 0
        if (abs(params.exposure) > 0.001f) ops = ops or EXPOSURE
        if (abs(params.contrast.coerceIn(0.5f, 1.5f) - 1f) > 0f) ops = ops or CONTRAST
        if (abs(params.tonality) >= 0.001f) ops = ops or BASIC_TONE
        if (params.temperature != 0f || params.tint != 0f) ops = ops or WHITE_BALANCE
        if (abs(params.saturation - 1f) > 0.001f) ops = ops or SATURATION
        if (params.primaryRedHue != 0f || params.primaryRedSaturation != 0f ||
            params.primaryGreenHue != 0f || params.primaryGreenSaturation != 0f ||
            params.primaryBlueHue != 0f || params.primaryBlueSaturation != 0f
        ) {
            ops = ops or PRIMARY_CALIBRATION
        }
        if (maxOf(params.gradingShadowAmount, params.gradingMidtoneAmount, params.gradingHighlightAmount) > 0.0001f) {
            ops = ops or GRADING
        }
        if (params.fade > 0.001f) ops = ops or FADE
        if (params.bleachBypass > 0.001f) ops = ops or BLEACH_BYPASS
        if (params.flash > 0.001f) ops = ops or FLASH
        if (abs(params.vignette) > 0.001f) ops = ops or VIGNETTE
        if (params.noise > 0.001f) ops = ops or NOISE
        if (params.lowRes > 0.005f) ops = ops or LOW_RES
        return ops
    }
}
