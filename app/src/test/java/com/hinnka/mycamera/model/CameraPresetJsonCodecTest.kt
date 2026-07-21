package com.hinnka.mycamera.model

import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.raw.RawRenderingEngine
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class CameraPresetJsonCodecTest {
    @Test
    fun fromJson_readsCurrentRawRenderingEngineField() {
        val source = CameraPreset(
            id = "preset_current_raw_engine",
            name = "Current RAW Engine",
            lutId = null,
            colorRecipe = ColorRecipeParams.DEFAULT,
            effects = EffectParams.DEFAULT,
            useRaw = true,
            rawRenderingEngine = RawRenderingEngine.Spektrafilm.name,
            rawSpectralFilmStock = "kodak_gold_200",
            rawSpectralFilmPrint = "kodak_2383",
            rawDROMode = "DR400"
        )

        val preset = CameraPreset.fromJson(source.toJson())

        requireNotNull(preset)
        assertEquals(RawRenderingEngine.Spektrafilm.name, preset.rawRenderingEngine)
        assertEquals("kodak_gold_200", preset.rawSpectralFilmStock)
        assertEquals("kodak_2383", preset.rawSpectralFilmPrint)
        assertEquals("DR400", preset.rawDROMode)
        assertTrue(preset.useRaw)
    }

    @Test
    fun toJson_writesOnlyNormalizedMaxFields() {
        val source = CameraPreset(
            id = "preset_current_raw_max",
            name = "Current RAWmax",
            lutId = null,
            colorRecipe = ColorRecipeParams.DEFAULT,
            effects = EffectParams.DEFAULT,
            useRaw = false,
            useJpgMax = true,
            useRawMax = true,
        )

        val json = source.toJson()
        val preset = CameraPreset.fromJson(json)

        requireNotNull(preset)
        assertTrue(json.contains("\"useRawMax\""))
        assertTrue(json.contains("\"useJpgMax\""))
        assertFalse(json.contains("\"useMFNR\""))
        assertFalse(json.contains("\"useMFSR\""))
        assertFalse(json.contains("\"useHdrComposition\""))
        assertTrue(preset.useRaw)
        assertTrue(preset.useRawMax)
        assertFalse(preset.useJpgMax)
    }

    @Test
    fun fromJson_migratesLegacyRawMultiFrameToRawMax() {
        val preset = CameraPreset.fromJson(
            """
            {
              "id": "preset_raw_mfsr_conflict",
              "name": "RAW MFSR Conflict",
              "lutId": "standard",
              "useRaw": true,
              "useMFNR": false,
              "useMFSR": true,
              "colorRecipe": {},
              "effects": {}
            }
            """.trimIndent()
        )

        requireNotNull(preset)
        assertTrue(preset.useRaw)
        assertTrue(preset.useRawMax)
        assertFalse(preset.useJpgMax)
    }

    @Test
    fun fromJson_ignoresLegacyYuvHdrFlagForRawMaxMigration() {
        val preset = CameraPreset.fromJson(
            """
            {
              "id": "preset_raw_mfsr_hdr_preference",
              "name": "RAW MFSR with HDR Preference",
              "useRaw": true,
              "useMFNR": false,
              "useHdrComposition": true,
              "useMFSR": true,
              "colorRecipe": {},
              "effects": {}
            }
            """.trimIndent()
        )

        requireNotNull(preset)
        assertTrue(preset.useRaw)
        assertTrue(preset.useRawMax)
        assertFalse(preset.useJpgMax)
    }

    @Test
    fun fromJson_migratesLegacyYuvMultiFrameAndHdrToJpgMax() {
        val preset = CameraPreset.fromJson(
            """
            {
              "id": "preset_yuv_mfsr_hdr_conflict",
              "name": "YUV MFSR HDR Conflict",
              "useRaw": false,
              "useMFNR": false,
              "useHdrComposition": true,
              "useMFSR": true,
              "colorRecipe": {},
              "effects": {}
            }
            """.trimIndent()
        )

        requireNotNull(preset)
        assertTrue(preset.useJpgMax)
        assertFalse(preset.useRawMax)
        assertFalse(preset.useRaw)
    }

    @Test
    fun listFromJson_ignoresUnknownFieldsAndUsesCurrentDefaults() {
        val presets = CameraPreset.listFromJson(
            """
            [
              {
                "id": "preset_1",
                "name": "Legacy Preset",
                "rawSpectralFilmEnabled": true,
                "unknownFutureField": "ignored",
                "colorRecipe": {
                  "exposure": 0.25,
                  "unknownColorField": 10
                },
                "effects": {
                  "vignette": -0.2,
                  "hdf": 0.7
                }
              }
            ]
            """.trimIndent()
        )

        assertEquals(1, presets.size)
        val preset = presets.first()
        assertEquals("preset_1", preset.id)
        assertEquals("Legacy Preset", preset.name)
        assertEquals(RawRenderingEngine.AdobeCurve.name, preset.rawRenderingEngine)
        assertEquals(AspectRatio.RATIO_4_3.name, preset.aspectRatio)
        assertFalse(preset.useJpgMax)
        assertFalse(preset.useRawMax)
        assertEquals(0.25f, preset.colorRecipe.exposure, 0.0001f)
        assertEquals(1f, preset.colorRecipe.contrast, 0.0001f)
        assertEquals(1f, preset.colorRecipe.saturation, 0.0001f)
        assertEquals(0.5f, preset.colorRecipe.paletteX, 0.0001f)
        assertEquals(1f, preset.colorRecipe.lutIntensity, 0.0001f)
        assertEquals(-0.2f, preset.effects.vignette, 0.0001f)
        assertEquals(0f, preset.effects.hdf, 0.0001f)
    }

    @Test
    fun listFromJson_skipsInvalidItemsWithoutDroppingValidPresets() {
        val presets = CameraPreset.listFromJson(
            """
            [
              { "name": "Missing ID" },
              {
                "id": "preset_2",
                "name": "Valid Preset",
                "rawColorEngine": "Spektrafilm",
                "rawDROMode": "DR400",
                "useRaw": true
              }
            ]
            """.trimIndent()
        )

        assertEquals(1, presets.size)
        assertEquals("preset_2", presets.first().id)
        assertEquals(RawRenderingEngine.Spektrafilm.name, presets.first().rawRenderingEngine)
        assertEquals("DR400", presets.first().rawDROMode)
        assertTrue(presets.first().useRaw)
    }

    @Test
    fun fromJson_defaultsUnsupportedCurrentFieldValues() {
        val preset = CameraPreset.fromJson(
            """
            {
              "id": "preset_3",
              "name": "Future Values",
              "aspectRatio": "FUTURE_RATIO",
              "rawColorEngine": "FutureEngine",
              "rawDROMode": "DR800",
              "lutId": null,
              "frameId": null
            }
            """.trimIndent()
        )

        requireNotNull(preset)
        assertEquals(AspectRatio.RATIO_4_3.name, preset.aspectRatio)
        assertEquals(RawRenderingEngine.AdobeCurve.name, preset.rawRenderingEngine)
        assertEquals("OFF", preset.rawDROMode)
        assertNull(preset.lutId)
        assertNull(preset.frameId)
    }
}
