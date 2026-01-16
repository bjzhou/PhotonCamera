package com.hinnka.mycamera.model

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
    val vibrance: Float = 1f,       // 0.0 ~ 2.0 (蓝色增强/自然饱和度，1为无调整)
    val highlights: Float = 0f,     // -1.0 ~ +1.0 (高光调整，0为无调整)
    val shadows: Float = 0f,        // -1.0 ~ +1.0 (阴影调整，0为无调整)
    val filmGrain: Float = 0f,      // 0.0 ~ 1.0 (颗粒强度，0为无颗粒)
    val vignette: Float = 0f,       // -1.0 ~ +1.0 (晕影，负值暗角，正值亮角)
    val bleachBypass: Float = 0f,   // 0.0 ~ 1.0 (留银冲洗强度，0为无效果)
    val lutIntensity: Float = 1f    // 0.0 ~ 1.0 (LUT强度，1为完全应用)
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
                vibrance == 1f &&
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
                vibrance == other.vibrance &&
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
 * 色彩配方预设
 *
 * 包含命名的预设配方，可以快速应用到照片
 */
data class ColorRecipe(
    val id: String,                     // 配方唯一ID
    val name: String,                   // 配方名称（用户可见）
    val description: String = "",       // 配方描述
    val params: ColorRecipeParams,      // 配方参数
    val thumbnailRes: Int? = null,      // 缩略图资源ID（可选）
    val isVip: Boolean = false          // 是否为VIP专享配方
)

/**
 * 色彩配方参数枚举
 *
 * 用于标识不同的可调整参数
 */
enum class RecipeParam(
    val displayName: String,             // 显示名称
    val minValue: Float,                 // 最小值
    val maxValue: Float,                 // 最大值
    val defaultValue: Float              // 默认值
) {
    EXPOSURE("曝光", -2.0f, 2.0f, 0f),
    CONTRAST("对比度", 0.5f, 1.5f, 1f),
    SATURATION("饱和度", 0.0f, 2.0f, 1f),
    TEMPERATURE("色温", -1.0f, 1.0f, 0f),
    TINT("色调", -1.0f, 1.0f, 0f),
    FADE("褪色", 0.0f, 1.0f, 0f),
    VIBRANCE("蓝色增强", 0.0f, 2.0f, 1f),
    HIGHLIGHTS("高光", -1.0f, 1.0f, 0f),
    SHADOWS("阴影", -1.0f, 1.0f, 0f),
    FILM_GRAIN("颗粒", 0.0f, 1.0f, 0f),
    VIGNETTE("晕影", -1.0f, 1.0f, 0f),
    BLEACH_BYPASS("留银冲洗", 0.0f, 1.0f, 0f),
    LUT_INTENSITY("滤镜强度", 0.0f, 1.0f, 1f);

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
            VIBRANCE -> params.vibrance
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
            VIBRANCE -> params.copy(vibrance = clampedValue)
            HIGHLIGHTS -> params.copy(highlights = clampedValue)
            SHADOWS -> params.copy(shadows = clampedValue)
            FILM_GRAIN -> params.copy(filmGrain = clampedValue)
            VIGNETTE -> params.copy(vignette = clampedValue)
            BLEACH_BYPASS -> params.copy(bleachBypass = clampedValue)
            LUT_INTENSITY -> params.copy(lutIntensity = clampedValue)
        }
    }
}
