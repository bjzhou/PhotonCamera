package com.hinnka.mycamera.model

/**
 * 把二维调色盘转换为现有渲染参数。
 *
 * 调色盘对外显示 -100..+100，并保持连续输入：
 *
 * - 饱和度线性对应 0.4..1.6 倍，中心 0 对应 1.0。
 * - 影调直接归一化为 -1..+1 的 BasicTone 强度：负值使用 Low Key 端点，正值使用 High Key 端点。
 *
 * - 两条轴彼此独立，不再隐式改变色温、色相、LCH 或曝光参数。
 */
object ColorPaletteMapper {
    private const val SATURATION_OFFSET_AT_MAX = 0.6f

    fun updatePaletteState(
        base: ColorRecipeParams,
        paletteState: ColorPaletteState
    ): ColorRecipeParams {
        val state = paletteState.normalized()
        return base.copy(
            paletteX = state.x,
            paletteY = state.y,
            paletteDensity = state.density
        )
    }

    fun buildPaletteContribution(paletteState: ColorPaletteState): ColorRecipeParams {
        val state = paletteState.normalized()
        val saturationFactor =
            1f +
                state.saturationValue / ColorPaletteState.AXIS_MAX *
                SATURATION_OFFSET_AT_MAX *
                state.density

        return ColorRecipeParams.DEFAULT.copy(
            saturation = RecipeParam.SATURATION.clamp(saturationFactor),
            paletteX = state.x,
            paletteY = state.y,
            paletteDensity = state.density
        )
    }

    fun mergeIntoEffectiveParams(manualParams: ColorRecipeParams): ColorRecipeParams {
        val paletteContribution = buildPaletteContribution(
            ColorPaletteState(
                x = manualParams.paletteX,
                y = manualParams.paletteY,
                density = manualParams.paletteDensity
            )
        )

        fun combine(
            manualValue: Float,
            paletteValue: Float,
            defaultValue: Float,
            minValue: Float,
            maxValue: Float
        ): Float {
            return (manualValue + paletteValue - defaultValue).coerceIn(minValue, maxValue)
        }

        return manualParams.copy(
            saturation = combine(
                manualValue = manualParams.saturation,
                paletteValue = paletteContribution.saturation,
                defaultValue = RecipeParam.SATURATION.defaultValue,
                minValue = RecipeParam.SATURATION.minValue,
                maxValue = RecipeParam.SATURATION.maxValue
            )
        )
    }

    fun basicToneAmount(params: ColorRecipeParams): Float {
        return basicToneAmount(deriveFromParams(params))
    }

    fun basicToneAmount(paletteState: ColorPaletteState): Float {
        val state = paletteState.normalized()
        return (
            state.toneValue / ColorPaletteState.AXIS_MAX *
                state.density
            ).coerceIn(-1f, 1f)
    }

    fun deriveFromParams(params: ColorRecipeParams): ColorPaletteState {
        return ColorPaletteState(
            x = params.paletteX,
            y = params.paletteY,
            density = params.paletteDensity
        ).normalized()
    }
}
