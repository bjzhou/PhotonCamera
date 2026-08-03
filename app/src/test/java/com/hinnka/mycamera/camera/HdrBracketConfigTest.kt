package com.hinnka.mycamera.camera

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import kotlin.math.pow

class HdrBracketConfigTest {
    @Test
    fun yuvBracketUsesAsymmetricLongAndShortExposureOffsets() {
        assertEquals(2.2f, HdrBracketConfig.YUV_LONG_EV)
        assertEquals(-1.5f, HdrBracketConfig.YUV_SHORT_EV)
        assertEquals(10_000_000L, HdrBracketConfig.YUV_LONG_MAX_SHUTTER_NS)
        assertTrue(2f.pow(HdrBracketConfig.YUV_LONG_EV) > 1f)
        assertTrue(2f.pow(HdrBracketConfig.YUV_SHORT_EV) < 1f)
    }

    @Test
    fun longFrameCapsShutterAtOneHundredthAndUsesIsoForRemainingExposure() {
        val (iso, shutterNs) = HdrBracketConfig.planManualExposure(
            baseIso = 100,
            baseShutterNs = 5_000_000L,
            evOffset = HdrBracketConfig.YUV_LONG_EV,
            isoLower = 50,
            isoUpper = 12_800,
            shutterLowerNs = 100_000L,
            shutterUpperNs = 1_000_000_000L,
        )

        assertTrue(shutterNs <= 10_000_000L)
        assertTrue(iso > 100)
        val expectedExposureProduct = 100.0 * 5_000_000.0 *
            2.0.pow(HdrBracketConfig.YUV_LONG_EV.toDouble())
        val actualExposureProduct = iso.toDouble() * shutterNs.toDouble()
        assertEquals(expectedExposureProduct, actualExposureProduct, expectedExposureProduct * 0.005)
    }

    @Test
    fun shortFrameIsNotAffectedByLongFrameShutterCap() {
        val (_, shutterNs) = HdrBracketConfig.planManualExposure(
            baseIso = 100,
            baseShutterNs = 80_000_000L,
            evOffset = HdrBracketConfig.YUV_SHORT_EV,
            isoLower = 100,
            isoUpper = 12_800,
            shutterLowerNs = 100_000L,
            shutterUpperNs = 1_000_000_000L,
        )

        assertTrue(shutterNs > HdrBracketConfig.YUV_LONG_MAX_SHUTTER_NS)
    }
}
