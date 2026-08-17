package com.hinnka.mycamera.processor

import org.junit.Assert.assertEquals
import org.junit.Test

class MgcSabreResolveTuningTest {
    @Test
    fun outputWhiteUsesOriginalSnrCurveAndEndpointClamping() {
        assertEquals(0f, MgcSabreResolveTuning.outputWhiteLevel(0f), 0f)
        assertEquals(0f, MgcSabreResolveTuning.outputWhiteLevel(5f), 0f)
        assertEquals(0.25f, MgcSabreResolveTuning.outputWhiteLevel(12.5f), 1e-7f)
        assertEquals(0.5f, MgcSabreResolveTuning.outputWhiteLevel(20f), 0f)
        assertEquals(0.75f, MgcSabreResolveTuning.outputWhiteLevel(30f), 1e-7f)
        assertEquals(1f, MgcSabreResolveTuning.outputWhiteLevel(40f), 0f)
        assertEquals(1f, MgcSabreResolveTuning.outputWhiteLevel(80f), 0f)
    }

    @Test
    fun demosaicSharpnessUsesOriginalFinalTetToActualTetRatio() {
        assertEquals(
            0.5f,
            MgcSabreResolveTuning.demosaicSharpness(
                desiredExposureProduct = 100.0,
                actualExposureProduct = 200.0,
            ),
            0f,
        )
        assertEquals(
            1f,
            MgcSabreResolveTuning.demosaicSharpness(
                desiredExposureProduct = 300.0,
                actualExposureProduct = 200.0,
            ),
            0f,
        )
    }

    @Test
    fun invalidAeInputKeepsOriginalDefaultSharpness() {
        assertEquals(1f, MgcSabreResolveTuning.demosaicSharpness(null, 200.0), 0f)
        assertEquals(1f, MgcSabreResolveTuning.demosaicSharpness(100.0, 0.0), 0f)
    }
}
