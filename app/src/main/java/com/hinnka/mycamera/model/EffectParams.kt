package com.hinnka.mycamera.model

import androidx.annotation.Keep
import com.google.gson.Gson

/**
 * 独立画面效果参数，不可烘焙进 LUT
 */
@Keep
data class EffectParams(
    val vignette: Float = 0f,               // 暗角 (-1.0 ~ 1.0)
    val filmGrain: Float = 0f,             // 胶片颗粒 (0.0 ~ 1.0)
    val bloom: Float = 0f,                 // Bevy Bloom 泛光 (0.0 ~ 1.0)
    val softLight: Float = 0f,             // 柔光扩散 (0.0 ~ 1.0)
    val hdf: Float = 0f,                   // 高光扩散 HDF (0.0 ~ 1.0)
    val halation: Float = 0f,              // 边缘红晕 Halation (0.0 ~ 1.0)
    val chromaticAberration: Float = 0f,   // 色散 (0.0 ~ 1.0)
    val noise: Float = 0f,                 // 噪声 (0.0 ~ 1.0)
    val lowRes: Float = 0f                 // 低像素模拟 (0.0 ~ 1.0)
) {
    /**
     * 判断是否是默认值（无效果）
     */
    fun isDefault(): Boolean {
        return vignette == 0f &&
                filmGrain == 0f &&
                bloom == 0f &&
                softLight == 0f &&
                halation == 0f &&
                chromaticAberration == 0f &&
                noise == 0f &&
                lowRes == 0f
    }

    /**
     * 将 EffectParams 应用并覆盖到已有的 ColorRecipeParams 中，
     * 以便直接利用原有的 OpenGL 渲染参数接口。
     */
    fun applyTo(recipe: ColorRecipeParams): ColorRecipeParams {
        return recipe.copy(
            vignette = vignette,
            filmGrain = filmGrain,
            bloom = bloom,
            softLight = softLight,
            halation = 0f,             // 旧 HDF 已移除 UI 入口，强制归零以避免旧值继续生效
            redHalation = halation,     // 底层 redHalation 属性对应 Halation
            chromaticAberration = chromaticAberration,
            noise = noise,
            lowRes = lowRes
        )
    }

    fun toJson(): String = gson.toJson(copy(hdf = 0f))

    companion object {
        private val gson = Gson()
        val DEFAULT = EffectParams()

        fun fromJson(json: String): EffectParams {
            return try {
                gson.fromJson(json, EffectParams::class.java)?.copy(hdf = 0f) ?: DEFAULT
            } catch (e: Exception) {
                DEFAULT
            }
        }
    }
}

fun ColorRecipeParams.toEffectParams(): EffectParams {
    return EffectParams(
        vignette = vignette,
        filmGrain = filmGrain,
        bloom = bloom,
        softLight = softLight,
        hdf = 0f,
        halation = redHalation,
        chromaticAberration = chromaticAberration,
        noise = noise,
        lowRes = lowRes
    )
}
