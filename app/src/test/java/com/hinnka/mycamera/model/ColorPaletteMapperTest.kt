package com.hinnka.mycamera.model

import com.google.gson.JsonParser
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Test

class ColorPaletteMapperTest {
    @Test
    fun legacyPalette_isMigratedOnceAndNewJsonContainsOnlyCanonicalParameters() {
        val restored = ColorRecipeParams.fromJson(
            """{"saturation":0.9,"paletteX":0.75,"paletteY":0.125,"paletteDensity":0.5}"""
        )
        assertEquals(1.05f, restored.saturation, 0.0001f)
        assertEquals(0.375f, restored.tonality, 0.0001f)
        val json = restored.toJson()
        val root = JsonParser.parseString(json).asJsonObject
        for (name in listOf("paletteX", "paletteY", "paletteDensity", "toneToe", "toneShoulder", "tonePivot")) {
            assertFalse(name, root.has(name))
        }
        assertEquals(restored, ColorRecipeParams.fromJson(json))
    }

    @Test
    fun newParameters_takePrecedenceOverLegacyCoordinates() {
        val params = ColorRecipeParams.fromJson(
            """{"saturation":0.8,"tonality":-0.3,"paletteX":1,"paletteY":0,"paletteDensity":1}"""
        )
        assertEquals(0.8f, params.saturation, 0f)
        assertEquals(-0.3f, params.tonality, 0f)
    }

    @Test
    fun basicControlsAndPalette_shareFullRangesAndContinuousValues() {
        for (saturation in listOf(0f, 0.125f, 1f, 1.625f, 2f)) {
            for (tonality in listOf(-1f, -0.375f, 0f, 0.8125f, 1f)) {
                val params = RecipeParam.TONALITY.setValue(
                    RecipeParam.SATURATION.setValue(ColorRecipeParams.DEFAULT, saturation), tonality
                )
                val state = ColorPaletteMapper.deriveFromParams(params)
                assertEquals((saturation - 1f) * 10f, state.saturationValue, 0.0001f)
                assertEquals(tonality * 10f, state.toneValue, 0.0001f)
                val updated = ColorPaletteMapper.updatePaletteState(params, state)
                assertEquals(saturation, RecipeParam.SATURATION.getValue(updated), 0.0001f)
                assertEquals(tonality, RecipeParam.TONALITY.getValue(updated), 0.0001f)
            }
        }
    }

    @Test
    fun editingToneAfterSaturation_preservesSaturationAndUnrelatedParameters() {
        val migrated = ColorRecipeParams.fromJson(
            """{"saturation":1,"paletteX":1,"paletteDensity":0.5}"""
        ).copy(exposure = 0.7f, contrast = 1.2f, temperature = -0.2f)
        val edited = RecipeParam.SATURATION.setValue(migrated, 0f)
        val state = ColorPaletteMapper.deriveFromParams(edited).withValues(tone = 8f)
        val toneEdited = ColorPaletteMapper.updatePaletteState(edited, state)
        assertEquals(0f, toneEdited.saturation, 0f)
        assertEquals(0.8f, toneEdited.tonality, 0.0001f)
        assertEquals(edited.exposure, toneEdited.exposure, 0f)
        assertEquals(edited.contrast, toneEdited.contrast, 0f)
        assertEquals(edited.temperature, toneEdited.temperature, 0f)
        val reset = ColorPaletteMapper.updatePaletteState(toneEdited, ColorPaletteState.DEFAULT)
        assertEquals(1f, reset.saturation, 0f)
        assertEquals(0f, reset.tonality, 0f)
        assertEquals(edited.exposure, reset.exposure, 0f)
    }

    @Test
    fun legacyPalette_respectsDensityAndParameterLimits() {
        val cases = listOf(
            """{"saturation":0.2,"paletteX":0}""" to 0f,
            """{"saturation":1.8,"paletteX":1}""" to 2f,
            """{"saturation":1.2,"paletteX":0,"paletteY":1,"paletteDensity":0}""" to 1.2f,
        )
        for ((json, saturation) in cases) {
            val params = ColorRecipeParams.fromJson(json)
            assertEquals(saturation, params.saturation, 0.0001f)
            assertEquals(0f, params.tonality, 0f)
        }
    }
}
