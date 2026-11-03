package com.hinnka.mycamera.processor

import org.junit.Assert.assertEquals
import org.junit.Test

class MgcSabreResolveTuningTest {
    @Test
    fun greenImbalanceRetentionUsesOriginalSnrCurveAndEndpointClamping() {
        assertEquals(0f, MgcSabreResolveTuning.greenImbalanceRetention(0f), 0f)
        assertEquals(0f, MgcSabreResolveTuning.greenImbalanceRetention(5f), 0f)
        assertEquals(0.25f, MgcSabreResolveTuning.greenImbalanceRetention(12.5f), 1e-7f)
        assertEquals(0.5f, MgcSabreResolveTuning.greenImbalanceRetention(20f), 0f)
        assertEquals(0.75f, MgcSabreResolveTuning.greenImbalanceRetention(30f), 1e-7f)
        assertEquals(1f, MgcSabreResolveTuning.greenImbalanceRetention(40f), 0f)
        assertEquals(1f, MgcSabreResolveTuning.greenImbalanceRetention(80f), 0f)
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
