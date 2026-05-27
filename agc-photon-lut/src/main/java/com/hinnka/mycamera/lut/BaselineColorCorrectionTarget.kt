package com.hinnka.mycamera.lut

import com.hinnka.mycamera.model.ColorRecipeParams

enum class BaselineColorCorrectionTarget {
    JPG,
    RAW,
    PHANTOM
}

data class LutRenderLayer(
    val lutConfig: LutConfig?,
    val colorRecipeParams: ColorRecipeParams?
)
