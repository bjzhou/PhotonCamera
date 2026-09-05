package com.hinnka.mycamera.model

import org.junit.Assert.assertEquals
import org.junit.Test

class ColorPaletteMapperTest {
    @Test
    fun legacySaturation_matchesSliderAndSurvivesSerializationWithoutDoubleApplication() {
        val legacy = ColorRecipeParams(
            saturation = 0.9f,
            paletteX = 0.75f,
            paletteY = 0.125f,
            paletteDensity = 0.5f,
        )
        assertEquals(1.05f, RecipeParam.SATURATION.getValue(legacy), 0.0001f)

        val restored = ColorRecipeParams.fromJson(
            """{"saturation":0.9,"paletteX":0.75,"paletteY":0.125,"paletteDensity":0.5}"""
        )
        val roundTripped = ColorRecipeParams.fromJson(legacy.toJson())
        for (recipe in listOf(restored, roundTripped)) {
            assertEquals(1.05f, recipe.saturation, 0.0001f)
            assertEquals(0.5f, recipe.paletteX, 0f)
            assertEquals(0.375f, ColorPaletteMapper.basicToneAmount(recipe), 0.0001f)
            val rendered = ColorPaletteMapper.mergeIntoEffectiveParams(recipe)
            val renderedAgain = ColorPaletteMapper.mergeIntoEffectiveParams(rendered)
            assertEquals(recipe.saturation, renderedAgain.saturation, 0f)
        }
    }

    @Test
    fun saturationEdit_replacesLegacyOffsetAndToneEditDoesNotRestoreIt() {
        val legacy = ColorRecipeParams(paletteX = 1f, paletteDensity = 0.5f)
        val edited = RecipeParam.SATURATION.setValue(legacy, 0f)
        assertEquals(0f, ColorPaletteMapper.mergeIntoEffectiveParams(edited).saturation, 0f)

        val toneEdited = ColorPaletteMapper.updatePaletteState(
            edited,
            ColorPaletteMapper.deriveFromParams(edited).withValues(tone = 80f),
        )
        val rendered = ColorPaletteMapper.mergeIntoEffectiveParams(toneEdited)
        assertEquals(0f, rendered.saturation, 0f)
        assertEquals(0.4f, ColorPaletteMapper.basicToneAmount(rendered), 0.0001f)

        val reset = RecipeParam.SATURATION.setValue(legacy, RecipeParam.SATURATION.defaultValue)
        assertEquals(1f, ColorPaletteMapper.mergeIntoEffectiveParams(reset).saturation, 0f)
    }

    @Test
    fun legacySaturation_respectsDensityAndExistingRange() {
        val cases = listOf(
            ColorRecipeParams(saturation = 0.2f, paletteX = 0f) to 0f,
            ColorRecipeParams(saturation = 1.8f, paletteX = 1f) to 2f,
            ColorRecipeParams(saturation = 1.2f, paletteX = 0f, paletteDensity = 0f) to 1.2f,
        )
        for ((legacy, expected) in cases) {
            assertEquals(expected, RecipeParam.SATURATION.getValue(legacy), 0.0001f)
            val migrated = ColorPaletteMapper.mergeIntoEffectiveParams(legacy)
            assertEquals(expected, migrated.saturation, 0.0001f)
            assertEquals(0.5f, migrated.paletteX, 0f)
        }
    }

    @Test
    fun paletteAxes_useContinuousOplusValueRange() {
        assertEquals(-100f, ColorPaletteState(x = 0f).saturationValue, 0.0001f)
        assertEquals(-25f, ColorPaletteState(x = 0.375f).saturationValue, 0.0001f)
        assertEquals(0f, ColorPaletteState(x = 0.5f).saturationValue, 0.0001f)
        assertEquals(100f, ColorPaletteState(x = 1f).saturationValue, 0.0001f)

        assertEquals(100f, ColorPaletteState(y = 0f).toneValue, 0.0001f)
        assertEquals(0f, ColorPaletteState(y = 0.5f).toneValue, 0.0001f)
        assertEquals(-100f, ColorPaletteState(y = 1f).toneValue, 0.0001f)

        val state = ColorPaletteState.DEFAULT.withValues(saturation = -81.25f, tone = 62.5f)
        assertEquals(0.09375f, state.x, 0.0001f)
        assertEquals(0.1875f, state.y, 0.0001f)
    }

    @Test
    fun paletteContribution_keepsAxesIndependent() {
        val saturationOnly = ColorPaletteMapper.buildPaletteContribution(
            ColorPaletteState.DEFAULT.withValues(saturation = 100f, tone = 0f)
        )
        assertEquals(1.6f, saturationOnly.saturation, 0.0001f)
        assertEquals(0f, saturationOnly.toneToe, 0.0001f)
        assertEquals(0f, saturationOnly.toneShoulder, 0.0001f)
        assertEquals(0f, saturationOnly.exposure, 0.0001f)
        assertEquals(0f, saturationOnly.temperature, 0.0001f)
        assertEquals(0f, saturationOnly.color, 0.0001f)
        assertEquals(
            0.4f,
            ColorPaletteMapper.buildPaletteContribution(
                ColorPaletteState.DEFAULT.withValues(saturation = -100f, tone = 0f)
            ).saturation,
            0.0001f
        )

        val toneOnly = ColorPaletteMapper.buildPaletteContribution(
            ColorPaletteState.DEFAULT.withValues(saturation = 0f, tone = -100f)
        )
        assertEquals(1f, toneOnly.saturation, 0.0001f)
        assertEquals(0f, toneOnly.toneToe, 0.0001f)
        assertEquals(0f, toneOnly.toneShoulder, 0.0001f)
        assertEquals(0f, toneOnly.tonePivot, 0.0001f)
        assertEquals(-1f, ColorPaletteMapper.basicToneAmount(toneOnly), 0.0001f)
        assertEquals(
            0.375f,
            ColorPaletteMapper.basicToneAmount(
                ColorPaletteState.DEFAULT
                    .withValues(tone = 75f)
                    .copy(density = 0.5f)
            ),
            0.0001f
        )
    }

    @Test
    fun merge_preservesManualParametersOutsidePaletteAxes() {
        val params = ColorRecipeParams.DEFAULT.copy(
            exposure = 0.7f,
            temperature = -0.3f,
            color = 0.25f,
            saturation = 0.9f,
            toneToe = -0.2f,
            toneShoulder = 0.3f,
            tonePivot = 0.1f,
            paletteX = ColorPaletteState.valueToPosition(50f),
            paletteY = ColorPaletteState.valueToPosition(-75f)
        )

        val effective = ColorPaletteMapper.mergeIntoEffectiveParams(params)

        assertEquals(0.7f, effective.exposure, 0.0001f)
        assertEquals(-0.3f, effective.temperature, 0.0001f)
        assertEquals(0.25f, effective.color, 0.0001f)
        assertEquals(1.2f, effective.saturation, 0.0001f)
        assertEquals(-0.2f, effective.toneToe, 0.0001f)
        assertEquals(0.3f, effective.toneShoulder, 0.0001f)
        assertEquals(0.1f, effective.tonePivot, 0.0001f)
        assertEquals(0.75f, ColorPaletteMapper.basicToneAmount(effective), 0.0001f)
    }
}
