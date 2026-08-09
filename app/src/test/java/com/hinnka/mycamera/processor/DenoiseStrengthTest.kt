package com.hinnka.mycamera.processor

import com.hinnka.mycamera.lut.ChromaDenoiseDefaults
import org.junit.Assert.assertEquals
import org.junit.Test

class DenoiseStrengthTest {
    @Test
    fun strengthIsBoundedAndRejectsNonFiniteValues() {
        assertEquals(0f, DenoiseStrength.clamp(-1f), 0f)
        assertEquals(1.5f, DenoiseStrength.clamp(1.5f), 0f)
        assertEquals(2f, DenoiseStrength.clamp(3f), 0f)
        assertEquals(0f, DenoiseStrength.clamp(Float.NaN), 0f)
        assertEquals(0f, DenoiseStrength.clamp(Float.POSITIVE_INFINITY), 0f)
    }

    @Test
    fun strengthAboveOneScalesNoiseVarianceQuadratically() {
        assertEquals(1f, DenoiseStrength.noiseVarianceScale(0.5f), 0f)
        assertEquals(1f, DenoiseStrength.noiseVarianceScale(1f), 0f)
        assertEquals(2.25f, DenoiseStrength.noiseVarianceScale(1.5f), 0f)
        assertEquals(4f, DenoiseStrength.noiseVarianceScale(2f), 0f)
        assertEquals(1f, DenoiseStrength.outputMix(2f), 0f)
    }

    @Test
    fun chromaBandwidthContinuesGrowingAboveOne() {
        assertEquals(8f, ChromaDenoiseDefaults.noiseBandwidth(1f), 0f)
        assertEquals(15f, ChromaDenoiseDefaults.noiseBandwidth(2f), 0f)
        assertEquals(15f, ChromaDenoiseDefaults.noiseBandwidth(3f), 0f)
    }
}
