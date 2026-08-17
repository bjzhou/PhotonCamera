package com.hinnka.mycamera.processor

import org.junit.Assert.assertEquals
import org.junit.Test

class MgcSpatialMergeTuningTest {
    @Test
    fun baseScaleUsesMergedSnrAndOriginalBayerCurve() {
        assertEquals(30f, MgcSpatialMergeTuning.mergedSnr(10f, 9), 0f)
        assertEquals(
            0.6f,
            MgcSpatialMergeTuning.baseSpatialScale(14.5f, 1, MgcSpatialOutputMode.BAYER),
            0f,
        )
        assertEquals(
            0.42f,
            MgcSpatialMergeTuning.baseSpatialScale(29.5f, 1, MgcSpatialOutputMode.BAYER),
            0f,
        )
        assertEquals(
            0.35f,
            MgcSpatialMergeTuning.baseSpatialScale(44f, 1, MgcSpatialOutputMode.BAYER),
            0f,
        )
    }

    @Test
    fun rgbScaleUsesItsIndependentOriginalCurve() {
        assertEquals(
            0.32f,
            MgcSpatialMergeTuning.baseSpatialScale(2.3f, 1, MgcSpatialOutputMode.RGB),
            0f,
        )
        assertEquals(
            0.4f,
            MgcSpatialMergeTuning.baseSpatialScale(51.1f, 1, MgcSpatialOutputMode.RGB),
            0f,
        )
        assertEquals(
            0.28f,
            MgcSpatialMergeTuning.baseSpatialScale(71f, 1, MgcSpatialOutputMode.RGB),
            0f,
        )
    }

    @Test
    fun maximumWeightUsesExposureScaledShadowReadVariance() {
        assertEquals(
            1f,
            MgcSpatialMergeTuning.maximumMergeWeight(0.004f, 0.001f, 2f),
            1e-6f,
        )
        assertEquals(
            16f,
            MgcSpatialMergeTuning.maximumMergeWeight(0.004f, 0.001f, 0.5f),
            1e-5f,
        )
        assertEquals(
            50f,
            MgcSpatialMergeTuning.maximumMergeWeight(1f, 0.001f, 1f),
            0f,
        )
    }

    @Test
    fun kernelSigmaUsesOriginalMaximumWeightMultiplierMap() {
        assertEquals(1f, MgcSpatialMergeTuning.frameWeightKernelMultiplier(10f), 0f)
        assertEquals(
            1.414000034332275f,
            MgcSpatialMergeTuning.frameWeightKernelMultiplier(30f),
            0f,
        )
        assertEquals(
            1f / (0.42f * 1.414000034332275f),
            MgcSpatialMergeTuning.kernelSigma(0.42f, 30f),
            1e-6f,
        )
    }
}
