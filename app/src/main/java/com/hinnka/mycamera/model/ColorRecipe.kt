package com.hinnka.mycamera.model

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
    val blue: Float = 0f,       // -1.0 ~ 1.0 (蓝色增强，0为无调整)
    val highlights: Float = 0f,     // -1.0 ~ +1.0 (高光调整，0为无调整)
    val shadows: Float = 0f,        // -1.0 ~ +1.0 (阴影调整，0为无调整)
    val filmGrain: Float = 0f,      // 0.0 ~ 1.0 (颗粒强度，0为无颗粒)
    val vignette: Float = 0f,       // -1.0 ~ +1.0 (晕影，负值暗角，正值亮角)
    val bleachBypass: Float = 0f,   // 0.0 ~ 1.0 (留银冲洗强度，0为无效果)
    val lutIntensity: Float = 1f,   // 0.0 ~ 1.0 (LUT强度，1为完全应用)
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
                blue == 0f &&
                highlights == 0f &&
                shadows == 0f &&
                filmGrain == 0f &&
                vignette == 0f &&
                bleachBypass == 0f &&
                lutIntensity == 1f
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
                blue == other.blue &&
                highlights == other.highlights &&
                shadows == other.shadows &&
                filmGrain == other.filmGrain &&
                vignette == other.vignette &&
                bleachBypass == other.bleachBypass &&
                lutIntensity == other.lutIntensity
    }

    companion object {
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
    BLUE(R.string.recipe_param_blue, -1.0f, 1.0f, 0f),
    HIGHLIGHTS(R.string.recipe_param_highlights, -1.0f, 1.0f, 0f),
    SHADOWS(R.string.recipe_param_shadows, -1.0f, 1.0f, 0f),
    FILM_GRAIN(R.string.recipe_param_film_grain, 0.0f, 1.0f, 0f),
    VIGNETTE(R.string.recipe_param_vignette, -1.0f, 1.0f, 0f),
    BLEACH_BYPASS(R.string.recipe_param_bleach_bypass, 0.0f, 1.0f, 0f),
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
            BLUE -> params.blue
            HIGHLIGHTS -> params.highlights
            SHADOWS -> params.shadows
            FILM_GRAIN -> params.filmGrain
            VIGNETTE -> params.vignette
            BLEACH_BYPASS -> params.bleachBypass
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
            BLUE -> params.copy(blue = clampedValue)
            HIGHLIGHTS -> params.copy(highlights = clampedValue)
            SHADOWS -> params.copy(shadows = clampedValue)
            FILM_GRAIN -> params.copy(filmGrain = clampedValue)
            VIGNETTE -> params.copy(vignette = clampedValue)
            BLEACH_BYPASS -> params.copy(bleachBypass = clampedValue)
            LUT_INTENSITY -> params.copy(lutIntensity = clampedValue)
        }
    }
}
