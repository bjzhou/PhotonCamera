package com.hinnka.mycamera.model

import org.junit.Assert.assertEquals
import org.junit.Test

class ColorPaletteMapperTest {
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
