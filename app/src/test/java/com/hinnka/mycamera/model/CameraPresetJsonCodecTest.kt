package com.hinnka.mycamera.model

import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.raw.RawRenderingEngine
import com.hinnka.mycamera.raw.RawDenoiseDefaults
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class CameraPresetJsonCodecTest {
    @Test
    fun contentReferences_includeAndRemapEveryLutSlot() {
        val source = CameraPreset(
            id = "preset_resource_mapping",
            name = "Resource Mapping",
            lutId = "main",
            colorRecipe = ColorRecipeParams.DEFAULT,
            effects = EffectParams.DEFAULT,
            frameId = "frame_source",
            jpgBaselineLutId = "jpg",
            rawBaselineLutId = "raw",
            phantomBaselineLutId = "phantom",
        )

        assertEquals(listOf("main", "jpg", "raw", "phantom"), source.referencedLutIds())

        val resolved = source.withResolvedContentReferences(
            lutIdsBySourceKey = mapOf(
                "main" to "imported_main",
                "jpg" to "imported_jpg",
                "raw" to "imported_raw",
                "phantom" to "imported_phantom",
            ),
            resolvedFrameId = "imported_frame",
        )
        assertEquals("imported_main", resolved.lutId)
        assertEquals("imported_jpg", resolved.jpgBaselineLutId)
        assertEquals("imported_raw", resolved.rawBaselineLutId)
        assertEquals("imported_phantom", resolved.phantomBaselineLutId)
        assertEquals("imported_frame", resolved.frameId)
    }

    @Test
    fun fromJson_readsCurrentRawRenderingEngineField() {
        val source = CameraPreset(
            id = "preset_current_raw_engine",
            name = "Current RAW Engine",
            lutId = null,
            colorRecipe = ColorRecipeParams.DEFAULT.copy(clarity = 0.42f),
            effects = EffectParams.DEFAULT.copy(clarity = -0.31f),
            useRaw = true,
            ultraHdrGainMapEnabled = false,
            rawRenderingEngine = RawRenderingEngine.Spektrafilm.name,
            rawSharpening = 0.2f,
            rawMaxSharpening = 0.7f,
            rawNoiseReduction = 0.35f,
            rawChromaNoiseReduction = 0.9f,
            rawMaxNoiseReduction = 1.2f,
            rawMaxChromaNoiseReduction = 1.5f,
            rawSpectralFilmStock = "kodak_gold_200",
            rawSpectralFilmPrint = "kodak_2383",
            rawDROMode = "DR400"
        )

        val preset = CameraPreset.fromJson(source.toJson())

        requireNotNull(preset)
        assertEquals(RawRenderingEngine.Spektrafilm.name, preset.rawRenderingEngine)
        assertEquals(0.2f, preset.rawSharpening, 0.0001f)
        assertEquals(0.7f, preset.rawMaxSharpening, 0.0001f)
        assertEquals(0.35f, preset.rawNoiseReduction, 0.0001f)
        assertEquals(0.9f, preset.rawChromaNoiseReduction, 0.0001f)
        assertEquals(1.2f, preset.rawMaxNoiseReduction, 0.0001f)
        assertEquals(1.5f, preset.rawMaxChromaNoiseReduction, 0.0001f)
        assertEquals("kodak_gold_200", preset.rawSpectralFilmStock)
        assertEquals("kodak_2383", preset.rawSpectralFilmPrint)
        assertEquals("DR400", preset.rawDROMode)
        assertTrue(preset.useRaw)
        assertFalse(preset.ultraHdrGainMapEnabled)
        assertEquals(0.42f, preset.colorRecipe.clarity, 0.0001f)
        assertEquals(-0.31f, preset.effects.clarity, 0.0001f)
    }

    @Test
    fun fromJson_migratesLegacyPhotonPgtmSwitchToIndependentPhotonHdr() {
        val preset = CameraPreset.fromJson(
            """
            {
              "id": "preset_legacy_photon",
              "name": "Legacy Photon",
              "rawPhotonPgtmToneMap": true,
              "rawOppoMasterToneMap": true
            }
            """.trimIndent()
        )

        requireNotNull(preset)
        assertTrue(preset.rawPhotonHdr)
        assertTrue(preset.rawOppoMasterToneMap)
        assertTrue(preset.toJson().contains("\"rawPhotonHdr\":true"))
        assertFalse(preset.toJson().contains("rawPhotonPgtmToneMap"))
    }

    @Test
    fun fromJson_normalizesNoneLutSentinelToNull() {
        val preset = CameraPreset.fromJson(
            """
            {
              "id": "preset_without_lut",
              "name": "No LUT",
              "lutId": "none",
              "colorRecipe": {},
              "effects": {}
            }
            """.trimIndent()
        )

        requireNotNull(preset)
        assertNull(preset.lutId)
        assertFalse(preset.toJson().contains("\"lutId\":\"none\""))
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
                  "flash": 0.15,
                  "gradingShadowHue": 0.08,
                  "gradingShadowAmount": 0.22,
                  "gradingMidtoneHue": 0.31,
                  "gradingMidtoneAmount": 0.44,
                  "gradingHighlightHue": 0.58,
                  "gradingHighlightAmount": 0.66,
                  "gradingBalance": -0.18,
                  "gradingBlending": 0.72,
                  "unknownColorField": 10
                },
                "effects": {
                  "vignette": -0.2,
                  "flash": 0.65,
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
        assertTrue(preset.ultraHdrGainMapEnabled)
        assertEquals(0.4f, preset.rawSharpening, 0.0001f)
        assertEquals(0.4f, preset.rawMaxSharpening, 0.0001f)
        assertEquals(RawDenoiseDefaults.RAW_LUMA_STRENGTH, preset.rawNoiseReduction, 0f)
        assertEquals(
            RawDenoiseDefaults.RAW_CHROMA_STRENGTH,
            preset.rawChromaNoiseReduction,
            0f,
        )
        assertEquals(
            RawDenoiseDefaults.RAW_MAX_LUMA_STRENGTH,
            preset.rawMaxNoiseReduction,
            0f,
        )
        assertEquals(
            RawDenoiseDefaults.RAW_MAX_CHROMA_STRENGTH,
            preset.rawMaxChromaNoiseReduction,
            0f,
        )
        assertEquals(0.25f, preset.colorRecipe.exposure, 0.0001f)
        assertEquals(1f, preset.colorRecipe.contrast, 0.0001f)
        assertEquals(1f, preset.colorRecipe.saturation, 0.0001f)
        assertEquals(0.5f, preset.colorRecipe.paletteX, 0.0001f)
        assertEquals(1f, preset.colorRecipe.lutIntensity, 0.0001f)
        assertEquals(0.15f, preset.colorRecipe.flash, 0.0001f)
        assertEquals(0.08f, preset.colorRecipe.gradingShadowHue, 0.0001f)
        assertEquals(0.22f, preset.colorRecipe.gradingShadowAmount, 0.0001f)
        assertEquals(0.31f, preset.colorRecipe.gradingMidtoneHue, 0.0001f)
        assertEquals(0.44f, preset.colorRecipe.gradingMidtoneAmount, 0.0001f)
        assertEquals(0.58f, preset.colorRecipe.gradingHighlightHue, 0.0001f)
        assertEquals(0.66f, preset.colorRecipe.gradingHighlightAmount, 0.0001f)
        assertEquals(-0.18f, preset.colorRecipe.gradingBalance, 0.0001f)
        assertEquals(0.72f, preset.colorRecipe.gradingBlending, 0.0001f)
        assertEquals(-0.2f, preset.effects.vignette, 0.0001f)
        assertEquals(0.65f, preset.effects.flash, 0.0001f)
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
