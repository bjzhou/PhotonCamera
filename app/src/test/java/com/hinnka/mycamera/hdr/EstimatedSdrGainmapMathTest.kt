package com.hinnka.mycamera.hdr

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class EstimatedSdrGainmapMathTest {
    @Test
    fun keepsEncodedSrgbLumaThroughQuarterScaleAtUnityGain() {
        for (luma in listOf(0.0f, 0.1f, 0.249f, 0.25f)) {
            assertEquals(1.0f, ratioAt(luma), 0.000001f)
        }
    }

    @Test
    fun addsGainSmoothlyAndMonotonicallyAboveQuarterScale() {
        val atStart = ratioAt(0.25f)
        val justAboveStart = ratioAt(0.251f)
        val atHalf = ratioAt(0.5f)
        val atThreeQuarters = ratioAt(0.75f)

        assertTrue(justAboveStart > atStart)
        assertTrue(justAboveStart - atStart < 0.00001f)
        assertTrue(atHalf > justAboveStart)
        assertTrue(atThreeQuarters > atHalf)
    }

    @Test
    fun reachesFullHdrRatioAtEncodedSrgbWhite() {
        assertEquals(FULL_HDR_RATIO, ratioAt(1.0f), 0.000001f)
    }

    @Test
    fun clampsRequestedPeakToDeclaredGainmapRange() {
        assertEquals(
            MAX_GAIN_RATIO,
            EstimatedSdrGainmapMath.estimateGainRatio(1.0f, 8.0f, MAX_GAIN_RATIO),
            0.000001f,
        )
    }

    @Test
    fun computesLumaInEncodedSrgbDomain() {
        assertEquals(0.2126f, EstimatedSdrGainmapMath.encodedSrgbLuma(1.0f, 0.0f, 0.0f), 0.000001f)
        assertEquals(0.7152f, EstimatedSdrGainmapMath.encodedSrgbLuma(0.0f, 1.0f, 0.0f), 0.000001f)
        assertEquals(0.0722f, EstimatedSdrGainmapMath.encodedSrgbLuma(0.0f, 0.0f, 1.0f), 0.000001f)
    }

    @Test
    fun encodesUnityAndDeclaredMaximumAtGainmapEndpoints() {
        assertEquals(0, EstimatedSdrGainmapMath.encodeRatio(1.0f, 1.0f, MAX_GAIN_RATIO))
        assertEquals(255, EstimatedSdrGainmapMath.encodeRatio(MAX_GAIN_RATIO, 1.0f, MAX_GAIN_RATIO))
    }

    private fun ratioAt(luma: Float): Float {
        return EstimatedSdrGainmapMath.estimateGainRatio(luma, FULL_HDR_RATIO, MAX_GAIN_RATIO)
    }

    private companion object {
        const val FULL_HDR_RATIO = 1.8f
        const val MAX_GAIN_RATIO = 4.0f
    }
}
