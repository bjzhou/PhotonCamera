package com.hinnka.mycamera.raw

import org.junit.Assert.assertEquals
import org.junit.Test

class RawAdaptiveExposureModeTest {
    @Test
    fun resolveKeepsOffWhenBothAlgorithmsAreDisabled() {
        assertEquals(
            RawAdaptiveExposureMode.OFF,
            RawAdaptiveExposureMode.resolve(
                usePhotonHdr = false,
                useLegacyAutoExposure = false,
            ),
        )
    }

    @Test
    fun resolveKeepsModesMutuallyExclusive() {
        assertEquals(
            RawAdaptiveExposureMode.PHOTON_HDR,
            RawAdaptiveExposureMode.resolve(
                usePhotonHdr = true,
                useLegacyAutoExposure = true,
            ),
        )
        assertEquals(
            RawAdaptiveExposureMode.LEGACY_AUTO_EXPOSURE,
            RawAdaptiveExposureMode.resolve(
                usePhotonHdr = false,
                useLegacyAutoExposure = true,
            ),
        )
    }

    @Test
    fun persistedOffDoesNotEnableEitherAlgorithm() {
        assertEquals(
            RawAdaptiveExposureMode.OFF,
            RawAdaptiveExposureMode.fromPersistedValue(
                value = "OFF",
                usePhotonHdr = false,
                useLegacyAutoExposure = false,
            ),
        )
    }
}
