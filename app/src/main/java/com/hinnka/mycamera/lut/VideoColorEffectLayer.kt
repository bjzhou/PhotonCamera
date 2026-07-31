package com.hinnka.mycamera.lut

import com.hinnka.mycamera.model.ColorRecipeParams

/** 一层可实时烘焙到录像的 LUT 与色彩配方快照。 */
data class VideoColorEffectLayer(
    val lutConfig: LutConfig?,
    val recipeParams: ColorRecipeParams?,
)
