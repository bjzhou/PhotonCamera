package com.hinnka.mycamera.processor

import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Test

class MgcSabreKernelTuningTest {
    @Test
    fun effectiveSnrUsesOriginalTwelveFrameNormalization() {
        assertEquals(12f, MgcSabreKernelTuning.effectiveSnr(12f, 12), 0f)
        assertEquals(6f, MgcSabreKernelTuning.effectiveSnr(12f, 3), 1e-6f)
    }

    @Test
    fun parametersClampAndInterpolateAtOriginalCurveNodes() {
        val low = MgcSabreKernelTuning.build(referenceSnr = 0f, frameCount = 12)
        assertEquals(0.33f, low.directionalScale, 0f)
        assertEquals(4.2f, low.isotropicScale, 0f)
        assertEquals(0.01f, low.gradientThreshold, 0f)
        assertEquals(0.028f, low.gradientTransition, 0f)
        assertEquals(true, low.forceReferenceColorRgb)

        val middle = MgcSabreKernelTuning.build(referenceSnr = 11f, frameCount = 12)
        assertEquals(4f, middle.isotropicScale, 0f)
        assertEquals(0.014925926f, middle.gradientTransition, 1e-7f)
        assertEquals(false, middle.forceReferenceColorRgb)

        val high = MgcSabreKernelTuning.build(referenceSnr = 30f, frameCount = 12)
        assertEquals(0.25f, high.directionalScale, 0f)
        assertEquals(3f, high.isotropicScale, 0f)
        assertEquals(0.001f, high.gradientThreshold, 0f)
        assertEquals(0.009f, high.gradientTransition, 0f)
    }

    @Test
    fun covarianceUniformsMatchOriginalConversion() {
        val parameters = MgcSabreKernelTuning.build(referenceSnr = 30f, frameCount = 12)
        assertArrayEquals(
            floatArrayOf(6f, 4f / 3f, 0.001f, 4f),
            parameters.covarianceParameters1,
            1e-6f,
        )
        assertArrayEquals(
            floatArrayOf(4f / 3f, 1000f / 9f, 0f, 0f),
            parameters.covarianceParameters2,
            1e-4f,
        )
    }

    @Test
    fun mergeGradientThresholdReplacesOnlyCovarianceParameters1Z() {
        val stock = MgcSabreKernelTuning.build(referenceSnr = 11f, frameCount = 12)
        val patched = MgcSabreKernelTuning.build(
            referenceSnr = 11f,
            frameCount = 12,
            mergeGradientThreshold = 0.02f,
        )

        assertEquals(0.02f, patched.gradientThreshold, 0f)
        assertEquals(0.02f, patched.covarianceParameters1[2], 0f)
        assertEquals(stock.directionalScale, patched.directionalScale, 0f)
        assertEquals(stock.isotropicScale, patched.isotropicScale, 0f)
        assertEquals(stock.gradientTransition, patched.gradientTransition, 0f)
        assertEquals(stock.anisotropyScale, patched.anisotropyScale, 0f)
        assertEquals(stock.coherenceScale, patched.coherenceScale, 0f)
        assertArrayEquals(stock.covarianceParameters2, patched.covarianceParameters2, 0f)
    }
}
