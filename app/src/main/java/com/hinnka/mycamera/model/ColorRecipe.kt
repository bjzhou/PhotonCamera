package com.hinnka.mycamera.model

import com.google.gson.Gson
import com.hinnka.mycamera.R

/**
 * 色彩配方参数数据类
 *
 * 定义所有色彩调整参数的值
 */
data class ColorRecipeParams(
    val exposure: Float = 0f,       // -2.0 ~ +2.0 (EV值，曝光调整)
    val contrast: Float = 1f,       // 0.5 ~ 1.5 (对比度，1为无调整)
    val saturation: Float = 1f,     // 0.0 ~ 2.0 (饱和度，1为无调整)
    val temperature: Float = 0f,    // -1.0 ~ +1.0 (色温，负值偏冷，正值偏暖)
    val tint: Float = 0f,           // -1.0 ~ +1.0 (色调，负值偏绿，正值偏品红)
    val fade: Float = 0f,           // 0.0 ~ 1.0 (褪色效果，0为无褪色)
    val color: Float = 0f,       // -1.0 ~ 1.0 (蓝色增强，0为无调整)
    val highlights: Float = 0f,     // -1.0 ~ +1.0 (高光调整，0为无调整)
    val shadows: Float = 0f,        // -1.0 ~ +1.0 (阴影调整，0为无调整)
    val toneToe: Float = 0f,        // -1.0 ~ +1.0 (影调曲线暗部塑形)
    val toneShoulder: Float = 0f,   // -1.0 ~ +1.0 (影调曲线亮部塑形)
    val tonePivot: Float = 0f,      // -1.0 ~ +1.0 (影调曲线中点偏移)
    val paletteX: Float = 0.5f,     // 调色盘横向落点
    val paletteY: Float = 0.5f,     // 调色盘纵向落点
    val paletteDensity: Float = 1f, // 调色盘浓度
    val filmGrain: Float = 0f,      // 0.0 ~ 1.0 (颗粒强度，0为无颗粒)
    val vignette: Float = 0f,       // -1.0 ~ +1.0 (晕影，负值暗角，正值亮角)
    val bleachBypass: Float = 0f,   // 0.0 ~ 1.0 (留银冲洗强度，0为无效果)
    val halation: Float = 0f,       // 0.0 ~ 1.0 (光晕/高光扩散强度，0为无效果，模拟 GR3 HDF)
    val chromaticAberration: Float = 0f, // 0.0 ~ 1.0 (色散/边缘溢色强度，0为无效果)
    val noise: Float = 0f,          // 0.0 ~ 1.0 (噪点强度，包含亮度和色彩噪点，0为无效果)
    val lowRes: Float = 0f,         // 0.0 ~ 1.0 (低像素强度，0为无效果)
    val skinHue: Float = 0f,
    val skinChroma: Float = 0f,
    val skinLightness: Float = 0f,
    val redHue: Float = 0f,
    val redChroma: Float = 0f,
    val redLightness: Float = 0f,
    val orangeHue: Float = 0f,
    val orangeChroma: Float = 0f,
    val orangeLightness: Float = 0f,
    val yellowHue: Float = 0f,
    val yellowChroma: Float = 0f,
    val yellowLightness: Float = 0f,
    val greenHue: Float = 0f,
    val greenChroma: Float = 0f,
    val greenLightness: Float = 0f,
    val cyanHue: Float = 0f,
    val cyanChroma: Float = 0f,
    val cyanLightness: Float = 0f,
    val blueHue: Float = 0f,
    val blueChroma: Float = 0f,
    val blueLightness: Float = 0f,
    val purpleHue: Float = 0f,
    val purpleChroma: Float = 0f,
    val purpleLightness: Float = 0f,
    val magentaHue: Float = 0f,
    val magentaChroma: Float = 0f,
    val magentaLightness: Float = 0f,
    val lutIntensity: Float = 1f,   // 0.0 ~ 1.0 (LUT强度，1为完全应用)
    val remarks: String = "",       // 用户备注
    // 曲线控制点 [x0,y0, x1,y1, ...], null = 恒等曲线（无效果）
    val masterCurvePoints: FloatArray? = null,
    val redCurvePoints: FloatArray? = null,
    val greenCurvePoints: FloatArray? = null,
    val blueCurvePoints: FloatArray? = null,
) {
    /**
     * 检查参数是否为默认值（无任何调整）
     */
    fun isDefault(): Boolean {
        return exposure == 0f &&
                contrast == 1f &&
                saturation == 1f &&
                temperature == 0f &&
                tint == 0f &&
                fade == 0f &&
                color == 0f &&
                highlights == 0f &&
                shadows == 0f &&
                toneToe == 0f &&
                toneShoulder == 0f &&
                tonePivot == 0f &&
                paletteX == 0.5f &&
                paletteY == 0.5f &&
                paletteDensity == 1f &&
                filmGrain == 0f &&
                vignette == 0f &&
                bleachBypass == 0f &&
                halation == 0f &&
                chromaticAberration == 0f &&
                noise == 0f &&
                lowRes == 0f &&
                skinHue == 0f &&
                skinChroma == 0f &&
                skinLightness == 0f &&
                redHue == 0f &&
                redChroma == 0f &&
                redLightness == 0f &&
                orangeHue == 0f &&
                orangeChroma == 0f &&
                orangeLightness == 0f &&
                yellowHue == 0f &&
                yellowChroma == 0f &&
                yellowLightness == 0f &&
                greenHue == 0f &&
                greenChroma == 0f &&
                greenLightness == 0f &&
                cyanHue == 0f &&
                cyanChroma == 0f &&
                cyanLightness == 0f &&
                blueHue == 0f &&
                blueChroma == 0f &&
                blueLightness == 0f &&
                purpleHue == 0f &&
                purpleChroma == 0f &&
                purpleLightness == 0f &&
                magentaHue == 0f &&
                magentaChroma == 0f &&
                magentaLightness == 0f &&
                remarks.isEmpty() &&
                masterCurvePoints == null &&
                redCurvePoints == null &&
                greenCurvePoints == null &&
                blueCurvePoints == null
    }

    /**
     * 检查参数是否与另一个参数集相同
     */
    fun isSameAs(other: ColorRecipeParams): Boolean {
        return exposure == other.exposure &&
                contrast == other.contrast &&
                saturation == other.saturation &&
                temperature == other.temperature &&
                tint == other.tint &&
                fade == other.fade &&
                color == other.color &&
                highlights == other.highlights &&
                shadows == other.shadows &&
                toneToe == other.toneToe &&
                toneShoulder == other.toneShoulder &&
                tonePivot == other.tonePivot &&
                paletteX == other.paletteX &&
                paletteY == other.paletteY &&
                paletteDensity == other.paletteDensity &&
                filmGrain == other.filmGrain &&
                vignette == other.vignette &&
                bleachBypass == other.bleachBypass &&
                halation == other.halation &&
                chromaticAberration == other.chromaticAberration &&
                noise == other.noise &&
                lowRes == other.lowRes &&
                skinHue == other.skinHue &&
                skinChroma == other.skinChroma &&
                skinLightness == other.skinLightness &&
                redHue == other.redHue &&
                redChroma == other.redChroma &&
                redLightness == other.redLightness &&
                orangeHue == other.orangeHue &&
                orangeChroma == other.orangeChroma &&
                orangeLightness == other.orangeLightness &&
                yellowHue == other.yellowHue &&
                yellowChroma == other.yellowChroma &&
                yellowLightness == other.yellowLightness &&
                greenHue == other.greenHue &&
                greenChroma == other.greenChroma &&
                greenLightness == other.greenLightness &&
                cyanHue == other.cyanHue &&
                cyanChroma == other.cyanChroma &&
                cyanLightness == other.cyanLightness &&
                blueHue == other.blueHue &&
                blueChroma == other.blueChroma &&
                blueLightness == other.blueLightness &&
                purpleHue == other.purpleHue &&
                purpleChroma == other.purpleChroma &&
                purpleLightness == other.purpleLightness &&
                magentaHue == other.magentaHue &&
                magentaChroma == other.magentaChroma &&
                magentaLightness == other.magentaLightness &&
                lutIntensity == other.lutIntensity &&
                remarks == other.remarks &&
                (masterCurvePoints === other.masterCurvePoints || masterCurvePoints?.contentEquals(other.masterCurvePoints) == true) &&
                (redCurvePoints === other.redCurvePoints || redCurvePoints?.contentEquals(other.redCurvePoints) == true) &&
                (greenCurvePoints === other.greenCurvePoints || greenCurvePoints?.contentEquals(other.greenCurvePoints) == true) &&
                (blueCurvePoints === other.blueCurvePoints || blueCurvePoints?.contentEquals(other.blueCurvePoints) == true)
    }

    /**
     * 序列化为 JSON 字符串
     */
    fun toJson(): String = gson.toJson(this)

    companion object {
        private val gson = Gson()

        /**
         * 从 JSON 字符串反序列化
         */
        fun fromJson(json: String): ColorRecipeParams =
            gson.fromJson(json, ColorRecipeParams::class.java) ?: DEFAULT

        /**
         * 默认参数（无调整）
         */
        val DEFAULT = ColorRecipeParams()
    }
}

/**
 * 色彩配方参数枚举
 *
 * 用于标识不同的可调整参数
 */
enum class RecipeParam(
    val displayNameRes: Int,             // 显示名称资源ID
    val minValue: Float,                 // 最小值
    val maxValue: Float,                 // 最大值
    val defaultValue: Float              // 默认值
) {
    EXPOSURE(R.string.recipe_param_exposure, -2.0f, 2.0f, 0f),
    CONTRAST(R.string.recipe_param_contrast, 0.5f, 1.5f, 1f),
    SATURATION(R.string.recipe_param_saturation, 0.0f, 2.0f, 1f),
    TEMPERATURE(R.string.recipe_param_temperature, -1.0f, 1.0f, 0f),
    TINT(R.string.recipe_param_tint, -1.0f, 1.0f, 0f),
    FADE(R.string.recipe_param_fade, 0.0f, 1.0f, 0f),
    COLOR(R.string.recipe_param_color, -1.0f, 1.0f, 0f),
    HIGHLIGHTS(R.string.recipe_param_highlights, -1.0f, 1.0f, 0f),
    SHADOWS(R.string.recipe_param_shadows, -1.0f, 1.0f, 0f),
    FILM_GRAIN(R.string.recipe_param_film_grain, 0.0f, 1.0f, 0f),
    VIGNETTE(R.string.recipe_param_vignette, -1.0f, 1.0f, 0f),
    BLEACH_BYPASS(R.string.recipe_param_bleach_bypass, 0.0f, 1.0f, 0f),
    HALATION(R.string.recipe_param_halation, 0.0f, 1.0f, 0f),
    CHROMATIC_ABERRATION(R.string.recipe_param_chromatic_aberration, 0.0f, 1.0f, 0f),
    NOISE(R.string.recipe_param_noise, 0.0f, 1.0f, 0f),
    LOW_RES(R.string.recipe_param_low_res, 0.0f, 1.0f, 0f),
    SKIN_HUE(R.string.recipe_param_skin_hue, -1.0f, 1.0f, 0f),
    SKIN_CHROMA(R.string.recipe_param_skin_chroma, -1.0f, 1.0f, 0f),
    SKIN_LIGHTNESS(R.string.recipe_param_skin_lightness, -1.0f, 1.0f, 0f),
    RED_HUE(R.string.recipe_param_red_hue, -1.0f, 1.0f, 0f),
    RED_CHROMA(R.string.recipe_param_red_chroma, -1.0f, 1.0f, 0f),
    RED_LIGHTNESS(R.string.recipe_param_red_lightness, -1.0f, 1.0f, 0f),
    ORANGE_HUE(R.string.recipe_param_orange_hue, -1.0f, 1.0f, 0f),
    ORANGE_CHROMA(R.string.recipe_param_orange_chroma, -1.0f, 1.0f, 0f),
    ORANGE_LIGHTNESS(R.string.recipe_param_orange_lightness, -1.0f, 1.0f, 0f),
    YELLOW_HUE(R.string.recipe_param_yellow_hue, -1.0f, 1.0f, 0f),
    YELLOW_CHROMA(R.string.recipe_param_yellow_chroma, -1.0f, 1.0f, 0f),
    YELLOW_LIGHTNESS(R.string.recipe_param_yellow_lightness, -1.0f, 1.0f, 0f),
    GREEN_HUE(R.string.recipe_param_green_hue, -1.0f, 1.0f, 0f),
    GREEN_CHROMA(R.string.recipe_param_green_chroma, -1.0f, 1.0f, 0f),
    GREEN_LIGHTNESS(R.string.recipe_param_green_lightness, -1.0f, 1.0f, 0f),
    CYAN_HUE(R.string.recipe_param_cyan_hue, -1.0f, 1.0f, 0f),
    CYAN_CHROMA(R.string.recipe_param_cyan_chroma, -1.0f, 1.0f, 0f),
    CYAN_LIGHTNESS(R.string.recipe_param_cyan_lightness, -1.0f, 1.0f, 0f),
    BLUE_HUE(R.string.recipe_param_blue_hue, -1.0f, 1.0f, 0f),
    BLUE_CHROMA(R.string.recipe_param_blue_chroma, -1.0f, 1.0f, 0f),
    BLUE_LIGHTNESS(R.string.recipe_param_blue_lightness, -1.0f, 1.0f, 0f),
    PURPLE_HUE(R.string.recipe_param_purple_hue, -1.0f, 1.0f, 0f),
    PURPLE_CHROMA(R.string.recipe_param_purple_chroma, -1.0f, 1.0f, 0f),
    PURPLE_LIGHTNESS(R.string.recipe_param_purple_lightness, -1.0f, 1.0f, 0f),
    MAGENTA_HUE(R.string.recipe_param_magenta_hue, -1.0f, 1.0f, 0f),
    MAGENTA_CHROMA(R.string.recipe_param_magenta_chroma, -1.0f, 1.0f, 0f),
    MAGENTA_LIGHTNESS(R.string.recipe_param_magenta_lightness, -1.0f, 1.0f, 0f),
    LUT_INTENSITY(R.string.recipe_param_lut_intensity, 0.0f, 1.0f, 1f);

    /**
     * 将参数值限制在合法范围内
     */
    fun clamp(value: Float): Float {
        return value.coerceIn(minValue, maxValue)
    }

    /**
     * 获取参数在当前参数集中的值
     */
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

    /**
     * 在参数集中设置此参数的值
     */
    fun setValue(params: ColorRecipeParams, value: Float): ColorRecipeParams {
        val clampedValue = clamp(value)
        return when (this) {
            EXPOSURE -> params.copy(exposure = clampedValue)
            CONTRAST -> params.copy(contrast = clampedValue)
            SATURATION -> params.copy(saturation = clampedValue)
            TEMPERATURE -> params.copy(temperature = clampedValue)
            TINT -> params.copy(tint = clampedValue)
            FADE -> params.copy(fade = clampedValue)
            COLOR -> params.copy(color = clampedValue)
            HIGHLIGHTS -> params.copy(highlights = clampedValue)
            SHADOWS -> params.copy(shadows = clampedValue)
            FILM_GRAIN -> params.copy(filmGrain = clampedValue)
            VIGNETTE -> params.copy(vignette = clampedValue)
            BLEACH_BYPASS -> params.copy(bleachBypass = clampedValue)
            HALATION -> params.copy(halation = clampedValue)
            CHROMATIC_ABERRATION -> params.copy(chromaticAberration = clampedValue)
            NOISE -> params.copy(noise = clampedValue)
            LOW_RES -> params.copy(lowRes = clampedValue)
            SKIN_HUE -> params.copy(skinHue = clampedValue)
            SKIN_CHROMA -> params.copy(skinChroma = clampedValue)
            SKIN_LIGHTNESS -> params.copy(skinLightness = clampedValue)
            RED_HUE -> params.copy(redHue = clampedValue)
            RED_CHROMA -> params.copy(redChroma = clampedValue)
            RED_LIGHTNESS -> params.copy(redLightness = clampedValue)
            ORANGE_HUE -> params.copy(orangeHue = clampedValue)
            ORANGE_CHROMA -> params.copy(orangeChroma = clampedValue)
            ORANGE_LIGHTNESS -> params.copy(orangeLightness = clampedValue)
            YELLOW_HUE -> params.copy(yellowHue = clampedValue)
            YELLOW_CHROMA -> params.copy(yellowChroma = clampedValue)
            YELLOW_LIGHTNESS -> params.copy(yellowLightness = clampedValue)
            GREEN_HUE -> params.copy(greenHue = clampedValue)
            GREEN_CHROMA -> params.copy(greenChroma = clampedValue)
            GREEN_LIGHTNESS -> params.copy(greenLightness = clampedValue)
            CYAN_HUE -> params.copy(cyanHue = clampedValue)
            CYAN_CHROMA -> params.copy(cyanChroma = clampedValue)
            CYAN_LIGHTNESS -> params.copy(cyanLightness = clampedValue)
            BLUE_HUE -> params.copy(blueHue = clampedValue)
            BLUE_CHROMA -> params.copy(blueChroma = clampedValue)
            BLUE_LIGHTNESS -> params.copy(blueLightness = clampedValue)
            PURPLE_HUE -> params.copy(purpleHue = clampedValue)
            PURPLE_CHROMA -> params.copy(purpleChroma = clampedValue)
            PURPLE_LIGHTNESS -> params.copy(purpleLightness = clampedValue)
            MAGENTA_HUE -> params.copy(magentaHue = clampedValue)
            MAGENTA_CHROMA -> params.copy(magentaChroma = clampedValue)
            MAGENTA_LIGHTNESS -> params.copy(magentaLightness = clampedValue)
            LUT_INTENSITY -> params.copy(lutIntensity = clampedValue)
        }
    }
}
