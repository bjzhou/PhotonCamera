package com.hinnka.mycamera.previewhook.api

import com.hinnka.mycamera.model.ColorRecipeParams

data class MgcPreviewRecipeParams(
    val lutIntensity: Float = 1f,
    val exposure: Float = 0f,
    val contrast: Float = 1f,
    val saturation: Float = 1f,
    val temperature: Float = 0f,
    val tint: Float = 0f,
) {
    fun toColorRecipeParams(): ColorRecipeParams {
        return ColorRecipeParams(
            lutIntensity = lutIntensity,
            exposure = exposure,
            contrast = contrast,
            saturation = saturation,
            temperature = temperature,
            tint = tint,
        )
    }
}
