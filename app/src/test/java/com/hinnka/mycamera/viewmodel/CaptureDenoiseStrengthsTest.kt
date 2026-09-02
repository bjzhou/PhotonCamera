package com.hinnka.mycamera.viewmodel

import com.hinnka.mycamera.data.UserPreferences
import com.hinnka.mycamera.raw.RawDenoiseDefaults
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

class CaptureDenoiseStrengthsTest {
    @Test
    fun singleRawUsesHdrPlusDefaultsAndBakesThem() {
        val resolved = resolveCaptureDenoiseStrengths(
            isRawCapture = true,
            userPrefs = null,
        )

        assertEquals(0f, resolved.editableLuma, 0f)
        assertEquals(0f, resolved.editableChroma, 0f)
        assertEquals(RawDenoiseDefaults.RAW_MAX_LUMA_STRENGTH, resolved.bakedLuma ?: -1f, 0f)
        assertEquals(RawDenoiseDefaults.RAW_MAX_CHROMA_STRENGTH, resolved.bakedChroma ?: -1f, 0f)
    }

    @Test
    fun rawMaxDefaultsAreBakedAndGalleryAdjustmentStartsAtZero() {
        val resolved = resolveCaptureDenoiseStrengths(
            isRawCapture = true,
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
