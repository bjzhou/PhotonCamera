package com.hinnka.mycamera.viewmodel

import com.hinnka.mycamera.data.UserPreferences
import com.hinnka.mycamera.raw.RawDenoiseDefaults
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

class CaptureDenoiseStrengthsTest {
    @Test
    fun singleRawStartsEditableAtRawMaxDefaults() {
        val resolved = resolveCaptureDenoiseStrengths(
            isRawCapture = true,
            isMergedCapture = false,
            userPrefs = null,
        )

        assertEquals(RawDenoiseDefaults.RAW_MAX_LUMA_STRENGTH, resolved.editableLuma, 0f)
        assertEquals(RawDenoiseDefaults.RAW_MAX_CHROMA_STRENGTH, resolved.editableChroma, 0f)
        assertNull(resolved.bakedLuma)
        assertNull(resolved.bakedChroma)
    }

    @Test
    fun rawMaxDefaultsAreBakedAndGalleryAdjustmentStartsAtZero() {
        val resolved = resolveCaptureDenoiseStrengths(
            isRawCapture = true,
            isMergedCapture = true,
            userPrefs = UserPreferences(
                rawMaxNoiseReduction = 1.4f,
                rawMaxChromaNoiseReduction = 1.6f,
            ),
        )

        assertEquals(0f, resolved.editableLuma, 0f)
        assertEquals(0f, resolved.editableChroma, 0f)
        assertEquals(1.4f, resolved.bakedLuma ?: -1f, 0f)
        assertEquals(1.6f, resolved.bakedChroma ?: -1f, 0f)
    }

    @Test
    fun nonRawCaptureDoesNotInheritRawDenoise() {
        val resolved = resolveCaptureDenoiseStrengths(
            isRawCapture = false,
            isMergedCapture = false,
            userPrefs = UserPreferences(
                rawMaxNoiseReduction = 1f,
                rawMaxChromaNoiseReduction = 1f,
            ),
        )

        assertEquals(0f, resolved.editableLuma, 0f)
        assertEquals(0f, resolved.editableChroma, 0f)
        assertNull(resolved.bakedLuma)
        assertNull(resolved.bakedChroma)
    }
}
