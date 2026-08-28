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
    fun finishRawSnrUsesSpatialAotOutputNoiseInsteadOfAdmittedFrameCount() {
        val signal = 0.1f
        val inputRead = 0.001f
        val inputShot = 0.02f
        val propagatedCoefficientScale = 0.2f
        val inputSnr = MgcSpatialMergeTuning.outputNoiseModelSnr(
            signal = signal,
            greenReadVariance = inputRead,
            greenShotNoiseFactor = inputShot,
        )
        val outputSnr = MgcSpatialMergeTuning.outputNoiseModelSnr(
            signal = signal,
            greenReadVariance = inputRead * propagatedCoefficientScale,
            greenShotNoiseFactor = inputShot * propagatedCoefficientScale,
        )

        assertEquals(
            checkNotNull(inputSnr) / kotlin.math.sqrt(propagatedCoefficientScale),
            checkNotNull(outputSnr),
            1e-5f,
        )
    }

    @Test
    fun outputNoiseSnrRejectsMalformedNoiseModel() {
        assertEquals(
            null,
            MgcSpatialMergeTuning.outputNoiseModelSnr(
                signal = 0.1f,
                greenReadVariance = Float.NaN,
                greenShotNoiseFactor = 0.01f,
            ),
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
    fun expectedWeightRemainsDiagnosticAndDiffersFromAotMaximum() {
        val maximum = MgcSpatialMergeTuning.maximumMergeWeight(
            baseReadVariance = 0.004f,
            alternateReadVariance = 0.001f,
            exposureScale = 0.5f,
        )
        val expected = MgcSpatialMergeTuning.expectedMergeWeight(
            referenceSignal = 0.5f,
            baseShotNoiseFactor = 0.001f,
            baseReadVariance = 0.004f,
            alternateShotNoiseFactor = 0.05f,
            alternateReadVariance = 0.001f,
            exposureScale = 0.5f,
        )

        assertEquals(16f, maximum, 1e-6f)
        assertEquals(0.0045f / 0.01275f, expected, 1e-6f)
    }

    @Test
    fun rejectionScaleUsesTheSameCapAsAotFrameWeight() {
        assertEquals(
            50f,
            MgcSpatialMergeTuning.rejectionWeightScale(
                baseReadVariance = 1f,
                alternateReadVariance = 0.001f,
                exposureScale = 1f,
            ),
            0f,
        )
    }

    @Test
    fun kernelSigmaUsesOriginalMergeWeightMultiplierMap() {
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
