package com.hinnka.mycamera.model

import kotlin.math.abs
import kotlin.math.max

/**
 * 在“调色盘交互状态”和现有色彩配方参数之间做单向/近似双向映射。
 *
 * 第一版策略：
 * 1. x/y 先定义目标风格轮廓。
 * 2. density 再把目标风格从 neutral 混合到目标值。
 * 3. 仅覆盖色彩/影调相关参数，保留纹理、镜头、备注、LUT 强度等其它字段。
 */
object ColorPaletteMapper {
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
        val xBias = (state.x - 0.5f) * 2f
        val toneBias = 1f - state.y * 2f
        val density = state.density
        val warmBias = smoothSignedBias(xBias)
        val coolBias = smoothSignedBias(-xBias)
        val vividness = positiveBias(xBias)
        val mutedness = positiveBias(-xBias)
        val highKey = positiveBias(toneBias)
        val lowKey = positiveBias(-toneBias)

        val targetExposure = RecipeParam.EXPOSURE.clamp(
            highKey * 0.26f - lowKey * 0.18f
        )
        val targetContrast = RecipeParam.CONTRAST.clamp(
            1f - highKey * 0.08f + lowKey * 0.18f
        )
        val targetHighlights = RecipeParam.HIGHLIGHTS.clamp(
            highKey * 0.22f - lowKey * 0.18f
        )
        val targetShadows = RecipeParam.SHADOWS.clamp(
            highKey * 0.22f - lowKey * 0.32f
        )
        val targetToneToe = clampLch(highKey * 0.50f - lowKey * 0.56f)
        val targetToneShoulder = clampLch(highKey * 0.34f - lowKey * 0.48f)
        val targetTonePivot = clampLch(highKey * 0.14f - lowKey * 0.10f)

        val targetVibrance = RecipeParam.COLOR.clamp(
            vividness * 0.62f - mutedness * 0.28f
        )
        val targetSaturation = RecipeParam.SATURATION.clamp(
            1f + vividness * 0.06f - mutedness * 0.04f
        )
        val targetFade = RecipeParam.FADE.clamp(
            mutedness * 0.14f + highKey * 0.08f - lowKey * 0.04f
        )

        val globalChromaLift = vividness * 0.24f - mutedness * 0.10f
        val globalLightnessLift = highKey * 0.24f - lowKey * 0.22f

        fun lerpNeutral(defaultValue: Float, targetValue: Float): Float {
            return defaultValue + (targetValue - defaultValue) * density
        }

        fun chromaWeight(
            warmAffinity: Float,
            coolAffinity: Float,
            neutralAffinity: Float = 0f
        ): Float {
            return globalChromaLift +
                warmBias * warmAffinity * 0.18f -
                coolBias * coolAffinity * 0.16f +
                mutedness * neutralAffinity * -0.08f
        }

        fun lightnessWeight(
            brightAffinity: Float,
            darkAffinity: Float,
            warmAffinity: Float = 0f,
            coolAffinity: Float = 0f
        ): Float {
            return globalLightnessLift * brightAffinity -
                lowKey * darkAffinity * 0.10f +
                warmBias * warmAffinity * 0.04f -
                coolBias * coolAffinity * 0.04f
        }

        return ColorRecipeParams.DEFAULT.copy(
            exposure = RecipeParam.EXPOSURE.clamp(lerpNeutral(RecipeParam.EXPOSURE.defaultValue, targetExposure)),
            contrast = RecipeParam.CONTRAST.clamp(lerpNeutral(RecipeParam.CONTRAST.defaultValue, targetContrast)),
            saturation = RecipeParam.SATURATION.clamp(lerpNeutral(RecipeParam.SATURATION.defaultValue, targetSaturation)),
            fade = RecipeParam.FADE.clamp(lerpNeutral(RecipeParam.FADE.defaultValue, targetFade)),
            color = RecipeParam.COLOR.clamp(lerpNeutral(RecipeParam.COLOR.defaultValue, targetVibrance)),
            highlights = RecipeParam.HIGHLIGHTS.clamp(lerpNeutral(RecipeParam.HIGHLIGHTS.defaultValue, targetHighlights)),
            shadows = RecipeParam.SHADOWS.clamp(lerpNeutral(RecipeParam.SHADOWS.defaultValue, targetShadows)),
            toneToe = clampLch(lerpNeutral(0f, targetToneToe)),
            toneShoulder = clampLch(lerpNeutral(0f, targetToneShoulder)),
            tonePivot = clampLch(lerpNeutral(0f, targetTonePivot)),
            paletteX = state.x,
            paletteY = state.y,
            paletteDensity = state.density,
            skinChroma = clampLch(lerpNeutral(0f, chromaWeight(warmAffinity = 0.45f, coolAffinity = 0.08f, neutralAffinity = 0.10f))),
            redChroma = clampLch(lerpNeutral(0f, chromaWeight(warmAffinity = 0.78f, coolAffinity = 0.06f))),
            orangeChroma = clampLch(lerpNeutral(0f, chromaWeight(warmAffinity = 0.88f, coolAffinity = 0.04f))),
            yellowChroma = clampLch(lerpNeutral(0f, chromaWeight(warmAffinity = 0.64f, coolAffinity = 0.08f))),
            greenChroma = clampLch(lerpNeutral(0f, chromaWeight(warmAffinity = 0.18f, coolAffinity = 0.26f, neutralAffinity = 0.06f))),
            cyanChroma = clampLch(lerpNeutral(0f, chromaWeight(warmAffinity = 0.06f, coolAffinity = 0.54f))),
            blueChroma = clampLch(lerpNeutral(0f, chromaWeight(warmAffinity = 0.04f, coolAffinity = 0.74f))),
            purpleChroma = clampLch(lerpNeutral(0f, chromaWeight(warmAffinity = 0.20f, coolAffinity = 0.50f))),
            magentaChroma = clampLch(lerpNeutral(0f, chromaWeight(warmAffinity = 0.34f, coolAffinity = 0.32f))),
            skinLightness = clampLch(lerpNeutral(0f, lightnessWeight(brightAffinity = 0.24f, darkAffinity = 0.10f, warmAffinity = 0.20f))),
            redLightness = clampLch(lerpNeutral(0f, lightnessWeight(brightAffinity = 0.18f, darkAffinity = 0.16f, warmAffinity = 0.12f))),
            orangeLightness = clampLch(lerpNeutral(0f, lightnessWeight(brightAffinity = 0.26f, darkAffinity = 0.10f, warmAffinity = 0.22f))),
            yellowLightness = clampLch(lerpNeutral(0f, lightnessWeight(brightAffinity = 0.42f, darkAffinity = 0.08f, warmAffinity = 0.16f))),
            greenLightness = clampLch(lerpNeutral(0f, lightnessWeight(brightAffinity = 0.16f, darkAffinity = 0.18f, coolAffinity = 0.12f))),
            cyanLightness = clampLch(lerpNeutral(0f, lightnessWeight(brightAffinity = 0.18f, darkAffinity = 0.16f, coolAffinity = 0.16f))),
            blueLightness = clampLch(lerpNeutral(0f, lightnessWeight(brightAffinity = 0.12f, darkAffinity = 0.24f, coolAffinity = 0.20f))),
            purpleLightness = clampLch(lerpNeutral(0f, lightnessWeight(brightAffinity = 0.12f, darkAffinity = 0.22f, coolAffinity = 0.14f))),
            magentaLightness = clampLch(lerpNeutral(0f, lightnessWeight(brightAffinity = 0.14f, darkAffinity = 0.20f, warmAffinity = 0.08f, coolAffinity = 0.08f))),
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
            return (manualValue + (paletteValue - defaultValue)).coerceIn(minValue, maxValue)
        }

        fun combineZeroDefault(
            manualValue: Float,
            paletteValue: Float
        ): Float = (manualValue + paletteValue).coerceIn(-1f, 1f)

        return manualParams.copy(
            exposure = combine(manualParams.exposure, paletteContribution.exposure, 0f, -2f, 2f),
            contrast = combine(manualParams.contrast, paletteContribution.contrast, 1f, 0.5f, 1.5f),
            saturation = combine(manualParams.saturation, paletteContribution.saturation, 1f, 0f, 2f),
            fade = combine(manualParams.fade, paletteContribution.fade, 0f, 0f, 1f),
            color = combine(manualParams.color, paletteContribution.color, 0f, -1f, 1f),
            highlights = combine(manualParams.highlights, paletteContribution.highlights, 0f, -1f, 1f),
            shadows = combine(manualParams.shadows, paletteContribution.shadows, 0f, -1f, 1f),
            toneToe = combine(manualParams.toneToe, paletteContribution.toneToe, 0f, -1f, 1f),
            toneShoulder = combine(manualParams.toneShoulder, paletteContribution.toneShoulder, 0f, -1f, 1f),
            tonePivot = combine(manualParams.tonePivot, paletteContribution.tonePivot, 0f, -1f, 1f),
            skinChroma = combineZeroDefault(manualParams.skinChroma, paletteContribution.skinChroma),
            redChroma = combineZeroDefault(manualParams.redChroma, paletteContribution.redChroma),
            orangeChroma = combineZeroDefault(manualParams.orangeChroma, paletteContribution.orangeChroma),
            yellowChroma = combineZeroDefault(manualParams.yellowChroma, paletteContribution.yellowChroma),
            greenChroma = combineZeroDefault(manualParams.greenChroma, paletteContribution.greenChroma),
            cyanChroma = combineZeroDefault(manualParams.cyanChroma, paletteContribution.cyanChroma),
            blueChroma = combineZeroDefault(manualParams.blueChroma, paletteContribution.blueChroma),
            purpleChroma = combineZeroDefault(manualParams.purpleChroma, paletteContribution.purpleChroma),
            magentaChroma = combineZeroDefault(manualParams.magentaChroma, paletteContribution.magentaChroma),
            skinLightness = combineZeroDefault(manualParams.skinLightness, paletteContribution.skinLightness),
            redLightness = combineZeroDefault(manualParams.redLightness, paletteContribution.redLightness),
            orangeLightness = combineZeroDefault(manualParams.orangeLightness, paletteContribution.orangeLightness),
            yellowLightness = combineZeroDefault(manualParams.yellowLightness, paletteContribution.yellowLightness),
            greenLightness = combineZeroDefault(manualParams.greenLightness, paletteContribution.greenLightness),
            cyanLightness = combineZeroDefault(manualParams.cyanLightness, paletteContribution.cyanLightness),
            blueLightness = combineZeroDefault(manualParams.blueLightness, paletteContribution.blueLightness),
            purpleLightness = combineZeroDefault(manualParams.purpleLightness, paletteContribution.purpleLightness),
            magentaLightness = combineZeroDefault(manualParams.magentaLightness, paletteContribution.magentaLightness),
        )
    }

    /**
     * 用当前参数近似反推调色盘落点，保证首次进入不会总是从中心跳变。
     */
    fun deriveFromParams(params: ColorRecipeParams): ColorPaletteState {
        return ColorPaletteState(
            x = params.paletteX,
            y = params.paletteY,
            density = params.paletteDensity
        ).normalized()
    }

    private fun smoothSignedBias(value: Float): Float {
        return value * abs(value) * (2f - abs(value))
    }

    private fun positiveBias(value: Float): Float {
        val clamped = value.coerceIn(0f, 1f)
        return clamped * clamped * (2f - clamped)
    }

    private fun clampLch(value: Float): Float {
        return value.coerceIn(-1f, 1f)
    }

}
