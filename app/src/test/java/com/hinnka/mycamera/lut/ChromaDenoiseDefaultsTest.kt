package com.hinnka.mycamera.lut

import org.junit.Assert.assertEquals
import org.junit.Test

class ChromaDenoiseDefaultsTest {
    @Test
    fun rawCaptureUsesAnExplicitDefaultWithoutScalingUserValues() {
        assertEquals(0.25f, ChromaDenoiseDefaults.forRawCapture(0f), 0f)
        assertEquals(0.25f, ChromaDenoiseDefaults.forRawCapture(0.1f), 0f)
        assertEquals(0.5f, ChromaDenoiseDefaults.forRawCapture(0.5f), 0f)
    }

    @Test
    fun activeNoiseBandwidthRespondsAcrossTheWholeSliderRange() {
        assertEquals(0f, ChromaDenoiseDefaults.noiseBandwidth(0f), 0f)
        assertEquals(5.25f, ChromaDenoiseDefaults.noiseBandwidth(0.25f), 1e-6f)
        assertEquals(9.5f, ChromaDenoiseDefaults.noiseBandwidth(0.5f), 1e-6f)
        assertEquals(18f, ChromaDenoiseDefaults.noiseBandwidth(1f), 0f)
    }

    @Test
    fun outputStrengthSmoothlyReachesFullAtOneQuarter() {
        assertEquals(0f, ChromaDenoiseDefaults.outputStrength(0f), 0f)
        assertEquals(0.5f, ChromaDenoiseDefaults.outputStrength(0.125f), 1e-6f)
        assertEquals(1f, ChromaDenoiseDefaults.outputStrength(0.25f), 0f)
        assertEquals(1f, ChromaDenoiseDefaults.outputStrength(1f), 0f)
    }

    @Test
    fun edgeGuidanceOnlyRelaxesAboveHalfStrength() {
        assertEquals(0f, ChromaDenoiseDefaults.edgeGuidanceRelaxation(0f), 0f)
        assertEquals(0f, ChromaDenoiseDefaults.edgeGuidanceRelaxation(0.5f), 0f)
        assertEquals(0.5f, ChromaDenoiseDefaults.edgeGuidanceRelaxation(0.75f), 1e-6f)
        assertEquals(1f, ChromaDenoiseDefaults.edgeGuidanceRelaxation(1f), 0f)
    }
}
