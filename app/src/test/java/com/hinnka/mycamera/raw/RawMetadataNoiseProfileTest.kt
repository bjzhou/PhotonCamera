package com.hinnka.mycamera.raw

import com.hinnka.mycamera.processor.CalibratedRawNoiseProfile
import com.hinnka.mycamera.processor.RawNoiseProfileSelection
import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertSame
import org.junit.Test

class RawMetadataNoiseProfileTest {
    private val systemSelection = RawNoiseProfileSelection.Camera2(
        fallbackProfile = CalibratedRawNoiseProfile.MGC_GOOGLE_BLUELINE_REAR,
    )

    @Test
    fun camera2SelectionKeepsCompleteSensorNoiseProfile() {
        val profile = floatArrayOf(
            1f, 10f,
            2f, 20f,
            3f, 30f,
            4f, 40f,
        )
        val metadata = metadata(profile)

        val resolved = metadata.withNoiseProfileSelection(systemSelection)

        assertSame(metadata, resolved)
    }

    @Test
    fun camera2SelectionUsesConfiguredFallbackWhenReadTermsAreZero() {
        val metadata = metadata(
            floatArrayOf(
                1f, 0f,
                2f, 0f,
                3f, 0f,
                4f, 0f,
            ),
        )
        val resolved = metadata.withNoiseProfileSelection(systemSelection)

        assertSystemFallback(resolved)
    }

    @Test
    fun camera2SelectionUsesConfiguredFallbackWhenSensorProfileIsMissing() {
        val metadata = metadata(FloatArray(0)).copy(
            noiseProfileLayout = RawNoiseProfileLayout.NONE,
        )

        val resolved = metadata.withNoiseProfileSelection(systemSelection)

        assertSystemFallback(resolved)
    }

    @Test
    fun camera2SelectionUsesConfiguredFallbackForInvalidPersistedDngProfile() {
        val metadata = metadata(
            floatArrayOf(
                1f, 0f,
                2f, 0f,
                3f, 0f,
            ),
        ).copy(noiseProfileLayout = RawNoiseProfileLayout.DNG_RGB)
        val resolved = metadata.withNoiseProfileSelection(systemSelection)

        assertSystemFallback(resolved)
    }

    @Test
    fun pixel3SelectionUsesMetadataCameraGainLimits() {
        val metadata = metadata(FloatArray(0)).copy(
            minimumSensitivityIso = 150,
            maxAnalogSensitivity = 600,
        )
        val expected = checkNotNull(
            CalibratedRawNoiseProfile.MGC_GOOGLE_BLUELINE_REAR.evaluate(
                sensitivity = TEST_ISO,
                minimumSensitivityIso = 150,
                maximumAnalogSensitivityIso = 600,
            ),
        )

        val resolved = metadata.withNoiseProfileSelection(
            RawNoiseProfileSelection.Calibrated(
                CalibratedRawNoiseProfile.MGC_GOOGLE_BLUELINE_REAR,
            ),
        )

        assertArrayEquals(expected.canonicalChannelPairs(), resolved.channelNoiseProfile, 0f)
    }

    private fun metadata(profile: FloatArray): RawMetadata = RawMetadata(
        width = 16,
        height = 16,
        cfaPattern = RawMetadata.CFA_RGGB,
        blackLevel = FloatArray(4),
        whiteLevel = 4095f,
        whiteBalanceGains = FloatArray(4) { 1f },
        colorCorrectionMatrix = FloatArray(9),
        channelNoiseProfile = profile,
        noiseProfileLayout = RawNoiseProfileLayout.CAMERA2_CFA,
        iso = TEST_ISO,
    )

    private fun assertSystemFallback(resolved: RawMetadata) {
        val expected = checkNotNull(
            systemSelection.fallbackProfile.evaluate(
                sensitivity = resolved.iso,
                minimumSensitivityIso = resolved.minimumSensitivityIso,
                maximumAnalogSensitivityIso = resolved.maxAnalogSensitivity,
            ),
        )
        assertEquals(RawNoiseProfileLayout.CANONICAL_BAYER, resolved.noiseProfileLayout)
        assertArrayEquals(expected.canonicalChannelPairs(), resolved.channelNoiseProfile, 0f)
    }

    companion object {
        private const val TEST_ISO = 800
    }
}
