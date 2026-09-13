package com.hinnka.mycamera.model

/** The palette is a two-axis view of the same parameters used by the basic controls. */
object ColorPaletteMapper {
    fun updatePaletteState(base: ColorRecipeParams, paletteState: ColorPaletteState): ColorRecipeParams {
        val state = paletteState.normalized()
        return base.copy(
            saturation = RecipeParam.SATURATION.clamp(state.x * 2f),
            tonality = RecipeParam.TONALITY.clamp(1f - state.y * 2f),
        )
    }

    fun deriveFromParams(params: ColorRecipeParams): ColorPaletteState = ColorPaletteState(
        x = RecipeParam.SATURATION.clamp(params.saturation) / 2f,
        y = (1f - RecipeParam.TONALITY.clamp(params.tonality)) / 2f,
    )
}
