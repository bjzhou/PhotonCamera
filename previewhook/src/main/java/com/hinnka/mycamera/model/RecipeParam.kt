package com.hinnka.mycamera.model

enum class RecipeParam(
    val minValue: Float,
    val maxValue: Float,
    val defaultValue: Float,
    val displayName: String,
) {
    EXPOSURE(-2.0f, 2.0f, 0f, "Exposure"),
    CONTRAST(0.5f, 1.5f, 1f, "Contrast"),
    SATURATION(0.0f, 2.0f, 1f, "Saturation"),
    TEMPERATURE(-1.0f, 1.0f, 0f, "Temp."),
    TINT(-1.0f, 1.0f, 0f, "Tint"),
    FADE(0.0f, 1.0f, 0f, "Fade"),
    COLOR(-1.0f, 1.0f, 0f, "Color"),
    HIGHLIGHTS(-1.0f, 1.0f, 0f, "Highlights"),
    SHADOWS(-1.0f, 1.0f, 0f, "Shadows"),
    FILM_GRAIN(0.0f, 1.0f, 0f, "Grain"),
    VIGNETTE(-1.0f, 1.0f, 0f, "Vignette"),
    BLEACH_BYPASS(0.0f, 1.0f, 0f, "Bleach Bypass"),
    HALATION(0.0f, 1.0f, 0f, "Halation"),
    CHROMATIC_ABERRATION(0.0f, 1.0f, 0f, "Chrom. Aberr."),
    NOISE(0.0f, 1.0f, 0f, "Noise"),
    LOW_RES(0.0f, 1.0f, 0f, "Low Res"),
    SKIN_HUE(-1.0f, 1.0f, 0f, "Skin Hue"),
    SKIN_CHROMA(-1.0f, 1.0f, 0f, "Skin Chroma"),
    SKIN_LIGHTNESS(-1.0f, 1.0f, 0f, "Skin Light."),
    RED_HUE(-1.0f, 1.0f, 0f, "Red Hue"),
    RED_CHROMA(-1.0f, 1.0f, 0f, "Red Chroma"),
    RED_LIGHTNESS(-1.0f, 1.0f, 0f, "Red Light."),
    ORANGE_HUE(-1.0f, 1.0f, 0f, "Orange Hue"),
    ORANGE_CHROMA(-1.0f, 1.0f, 0f, "Orange Chroma"),
    ORANGE_LIGHTNESS(-1.0f, 1.0f, 0f, "Orange Light."),
    YELLOW_HUE(-1.0f, 1.0f, 0f, "Yellow Hue"),
    YELLOW_CHROMA(-1.0f, 1.0f, 0f, "Yellow Chroma"),
    YELLOW_LIGHTNESS(-1.0f, 1.0f, 0f, "Yellow Light."),
    GREEN_HUE(-1.0f, 1.0f, 0f, "Green Hue"),
    GREEN_CHROMA(-1.0f, 1.0f, 0f, "Green Chroma"),
    GREEN_LIGHTNESS(-1.0f, 1.0f, 0f, "Green Light."),
    CYAN_HUE(-1.0f, 1.0f, 0f, "Cyan Hue"),
    CYAN_CHROMA(-1.0f, 1.0f, 0f, "Cyan Chroma"),
    CYAN_LIGHTNESS(-1.0f, 1.0f, 0f, "Cyan Light."),
    BLUE_HUE(-1.0f, 1.0f, 0f, "Blue Hue"),
    BLUE_CHROMA(-1.0f, 1.0f, 0f, "Blue Chroma"),
    BLUE_LIGHTNESS(-1.0f, 1.0f, 0f, "Blue Light."),
    PURPLE_HUE(-1.0f, 1.0f, 0f, "Purple Hue"),
    PURPLE_CHROMA(-1.0f, 1.0f, 0f, "Purple Chroma"),
    PURPLE_LIGHTNESS(-1.0f, 1.0f, 0f, "Purple Light."),
    MAGENTA_HUE(-1.0f, 1.0f, 0f, "Magenta Hue"),
    MAGENTA_CHROMA(-1.0f, 1.0f, 0f, "Magenta Chroma"),
    MAGENTA_LIGHTNESS(-1.0f, 1.0f, 0f, "Magenta Light."),
    LUT_INTENSITY(0.0f, 1.0f, 1f, "LUT Intensity");

    fun clamp(value: Float): Float = value.coerceIn(minValue, maxValue)

    fun getValue(params: ColorRecipeParams): Float {
        return when (this) {
            EXPOSURE -> params.exposure
            CONTRAST -> params.contrast
            SATURATION -> params.saturation
            TEMPERATURE -> params.temperature
            TINT -> params.tint
            FADE -> params.fade
            COLOR -> params.color
            HIGHLIGHTS -> params.highlights
            SHADOWS -> params.shadows
            FILM_GRAIN -> params.filmGrain
            VIGNETTE -> params.vignette
            BLEACH_BYPASS -> params.bleachBypass
            HALATION -> params.halation
            CHROMATIC_ABERRATION -> params.chromaticAberration
            NOISE -> params.noise
            LOW_RES -> params.lowRes
            SKIN_HUE -> params.skinHue
            SKIN_CHROMA -> params.skinChroma
            SKIN_LIGHTNESS -> params.skinLightness
            RED_HUE -> params.redHue
            RED_CHROMA -> params.redChroma
            RED_LIGHTNESS -> params.redLightness
            ORANGE_HUE -> params.orangeHue
            ORANGE_CHROMA -> params.orangeChroma
            ORANGE_LIGHTNESS -> params.orangeLightness
            YELLOW_HUE -> params.yellowHue
            YELLOW_CHROMA -> params.yellowChroma
            YELLOW_LIGHTNESS -> params.yellowLightness
            GREEN_HUE -> params.greenHue
            GREEN_CHROMA -> params.greenChroma
            GREEN_LIGHTNESS -> params.greenLightness
            CYAN_HUE -> params.cyanHue
            CYAN_CHROMA -> params.cyanChroma
            CYAN_LIGHTNESS -> params.cyanLightness
            BLUE_HUE -> params.blueHue
            BLUE_CHROMA -> params.blueChroma
            BLUE_LIGHTNESS -> params.blueLightness
            PURPLE_HUE -> params.purpleHue
            PURPLE_CHROMA -> params.purpleChroma
            PURPLE_LIGHTNESS -> params.purpleLightness
            MAGENTA_HUE -> params.magentaHue
            MAGENTA_CHROMA -> params.magentaChroma
            MAGENTA_LIGHTNESS -> params.magentaLightness
            LUT_INTENSITY -> params.lutIntensity
        }
    }

    fun setValue(params: ColorRecipeParams, value: Float): ColorRecipeParams {
        val v = clamp(value)
        return when (this) {
            EXPOSURE -> params.copy(exposure = v)
            CONTRAST -> params.copy(contrast = v)
            SATURATION -> params.copy(saturation = v)
            TEMPERATURE -> params.copy(temperature = v)
            TINT -> params.copy(tint = v)
            FADE -> params.copy(fade = v)
            COLOR -> params.copy(color = v)
            HIGHLIGHTS -> params.copy(highlights = v)
            SHADOWS -> params.copy(shadows = v)
            FILM_GRAIN -> params.copy(filmGrain = v)
            VIGNETTE -> params.copy(vignette = v)
            BLEACH_BYPASS -> params.copy(bleachBypass = v)
            HALATION -> params.copy(halation = v)
            CHROMATIC_ABERRATION -> params.copy(chromaticAberration = v)
            NOISE -> params.copy(noise = v)
            LOW_RES -> params.copy(lowRes = v)
            SKIN_HUE -> params.copy(skinHue = v)
            SKIN_CHROMA -> params.copy(skinChroma = v)
            SKIN_LIGHTNESS -> params.copy(skinLightness = v)
            RED_HUE -> params.copy(redHue = v)
            RED_CHROMA -> params.copy(redChroma = v)
            RED_LIGHTNESS -> params.copy(redLightness = v)
            ORANGE_HUE -> params.copy(orangeHue = v)
            ORANGE_CHROMA -> params.copy(orangeChroma = v)
            ORANGE_LIGHTNESS -> params.copy(orangeLightness = v)
            YELLOW_HUE -> params.copy(yellowHue = v)
            YELLOW_CHROMA -> params.copy(yellowChroma = v)
            YELLOW_LIGHTNESS -> params.copy(yellowLightness = v)
            GREEN_HUE -> params.copy(greenHue = v)
            GREEN_CHROMA -> params.copy(greenChroma = v)
            GREEN_LIGHTNESS -> params.copy(greenLightness = v)
            CYAN_HUE -> params.copy(cyanHue = v)
            CYAN_CHROMA -> params.copy(cyanChroma = v)
            CYAN_LIGHTNESS -> params.copy(cyanLightness = v)
            BLUE_HUE -> params.copy(blueHue = v)
            BLUE_CHROMA -> params.copy(blueChroma = v)
            BLUE_LIGHTNESS -> params.copy(blueLightness = v)
            PURPLE_HUE -> params.copy(purpleHue = v)
            PURPLE_CHROMA -> params.copy(purpleChroma = v)
            PURPLE_LIGHTNESS -> params.copy(purpleLightness = v)
            MAGENTA_HUE -> params.copy(magentaHue = v)
            MAGENTA_CHROMA -> params.copy(magentaChroma = v)
            MAGENTA_LIGHTNESS -> params.copy(magentaLightness = v)
            LUT_INTENSITY -> params.copy(lutIntensity = v)
        }
    }
}
