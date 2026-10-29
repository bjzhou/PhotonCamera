package com.hinnka.mycamera.raw

import com.hinnka.mycamera.data.UserPreferences
import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test
import kotlin.math.max
import kotlin.math.pow
import kotlin.math.sqrt

class RawNoiseProfileSelectionTest {
    @Test
    fun unconfiguredLensesUseSystemProfileWithUnityCaptureStrength() {
        val preferences = UserPreferences()
        assertEquals(RawNoiseProfileManager.SYSTEM_PROFILE_ID,
            preferences.rawNoiseProfileIdForLens("rear_main"))
        assertEquals(RawNoiseProfileManager.SYSTEM_PROFILE_ID,
            preferences.rawNoiseProfileIdForLens("rear_isz"))
        assertEquals(1f, RawDenoiseDefaults.RAW_MAX_LUMA_STRENGTH, 0f)
        assertEquals(1f, RawDenoiseDefaults.RAW_MAX_CHROMA_STRENGTH, 0f)
    }

    @Test
    fun userPreferencesResolveUnifiedAndPerLensNoiseProfiles() {
        val preferences = UserPreferences(
            rawNoiseProfileId = "unified",
            rawNoiseProfileIdsByLens = mapOf("rear_tele" to "tele_override"),
        )

        assertEquals("unified", preferences.rawNoiseProfileIdForLens("rear_main"))
        assertEquals("tele_override", preferences.rawNoiseProfileIdForLens("rear_tele"))
        assertEquals("unified", preferences.rawNoiseProfileIdForLens(null))
    }

    @Test
    fun camera2ProfileAveragesTheTwoGreenChannels() {
        val profile = floatArrayOf(
            1f, 10f,
            2f, 20f,
            4f, 40f,
            8f, 80f,
        )

        assertArrayEquals(
            floatArrayOf(3f, 30f),
            RawMetadata.greenNoiseProfile(
                profile,
                RawMetadata.CFA_RGGB,
                RawNoiseProfileLayout.CAMERA2_CFA,
            ),
            0f
        )
        assertArrayEquals(
            floatArrayOf(4.5f, 45f),
            RawMetadata.greenNoiseProfile(
                profile,
                RawMetadata.CFA_GRBG,
                RawNoiseProfileLayout.CAMERA2_CFA,
            ),
            0f
        )
    }

    @Test
    fun threePlaneDngProfileUsesGreenAndIgnoresNativePadding() {
        val profile = floatArrayOf(
            1f, 10f,
            2f, 20f,
            8f, 80f,
            0f, 0f,
        )

        assertArrayEquals(
            floatArrayOf(2f, 20f),
            RawMetadata.greenNoiseProfile(
                profile,
                RawMetadata.CFA_RGGB,
                RawNoiseProfileLayout.DNG_RGB,
            ),
            0f
        )
    }

    @Test
    fun camera2ProfileSelectsRedAndBlueFromCfaPositionOrder() {
        val profile = floatArrayOf(
            1f, 10f,
            2f, 20f,
            4f, 40f,
            8f, 80f,
        )

        assertArrayEquals(
            floatArrayOf(1f, 10f, 8f, 80f),
            RawMetadata.redBlueNoiseProfile(
                profile,
                RawMetadata.CFA_RGGB,
                RawNoiseProfileLayout.CAMERA2_CFA,
            ),
            0f
        )
        assertArrayEquals(
            floatArrayOf(2f, 20f, 4f, 40f),
            RawMetadata.redBlueNoiseProfile(
                profile,
                RawMetadata.CFA_GRBG,
                RawNoiseProfileLayout.CAMERA2_CFA,
            ),
            0f
        )
        assertArrayEquals(
            floatArrayOf(4f, 40f, 2f, 20f),
            RawMetadata.redBlueNoiseProfile(
                profile,
                RawMetadata.CFA_GBRG,
                RawNoiseProfileLayout.CAMERA2_CFA,
            ),
            0f
        )
        assertArrayEquals(
            floatArrayOf(8f, 80f, 1f, 10f),
            RawMetadata.redBlueNoiseProfile(
                profile,
                RawMetadata.CFA_BGGR,
                RawNoiseProfileLayout.CAMERA2_CFA,
            ),
            0f
        )
    }

    @Test
    fun threePlaneDngProfileSelectsRedAndBlueAndIgnoresPadding() {
        val profile = floatArrayOf(
            1f, 10f,
            2f, 20f,
            8f, 80f,
            0f, 0f,
        )

        assertArrayEquals(
            floatArrayOf(1f, 10f, 8f, 80f),
            RawMetadata.redBlueNoiseProfile(
                profile,
                RawMetadata.CFA_BGGR,
                RawNoiseProfileLayout.DNG_RGB,
            ),
            0f
        )
    }

    @Test
    fun canonicalCalibratedProfileKeepsRGrGbBOrderForEveryCfaLayout() {
        val profile = floatArrayOf(
            1f, 10f,
            2f, 20f,
            4f, 40f,
            8f, 80f,
        )

        assertArrayEquals(
            floatArrayOf(3f, 30f),
            RawMetadata.greenNoiseProfile(
                profile,
                RawMetadata.CFA_BGGR,
                RawNoiseProfileLayout.CANONICAL_BAYER,
            ),
            0f,
        )
        assertArrayEquals(
            floatArrayOf(1f, 10f, 8f, 80f),
            RawMetadata.redBlueNoiseProfile(
                profile,
                RawMetadata.CFA_GBRG,
                RawNoiseProfileLayout.CANONICAL_BAYER,
            ),
            0f,
        )
    }
}
