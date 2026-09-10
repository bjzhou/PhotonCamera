package com.hinnka.mycamera.processor

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class BokehDefocusModelTest {
    @Test
    fun reportedBackgroundRetainsEstablishedApertureStrength() {
        assertEquals(38.807f, BokehDefocusModel.radiusPixels(0.06f, 0.33435f, 1.8f, 4096), 0.002f)
        assertEquals(4096f / 26f, BokehDefocusModel.baseRadiusPixels(4096), 0f)
    }

    @Test
    fun frontAndBackKeepTheirSignAtEqualRelativeDepthSeparation() {
        val front = BokehDefocusModel.signedRadiusFraction(0.65, 0.4, 1.8)
        val back = BokehDefocusModel.signedRadiusFraction(0.15, 0.4, 1.8)
        assertTrue(front > 0.0)
        assertTrue(back < 0.0)
        assertEquals(front, -back, 1e-15)
    }

    @Test
    fun focusDeadBandHasNoGeometricDefocus() {
        for (depth in listOf(0.0, 0.01, BokehDefocusModel.FOCUS_DEPTH_DEAD_BAND.toDouble())) {
            assertEquals(0.0, BokehDefocusModel.signedRadiusFraction(depth, 0.0, 1.8), 0.0)
        }
        assertTrue(BokehDefocusModel.signedRadiusFraction(0.016, 0.0, 1.8) > 0.0)
        assertEquals(0.0, BokehDefocusModel.signedRadiusFraction(0.49, 0.5, 1.8), 0.0)
    }

    @Test
    fun apertureUsesTheEstablishedWideLimitAndInverseScaling() {
        val reference = BokehDefocusModel.signedRadiusFraction(0.1, 0.5, 1.4)
        assertEquals(reference * 0.5, BokehDefocusModel.signedRadiusFraction(0.1, 0.5, 2.8), 1e-15)
        assertEquals(reference * 1.25, BokehDefocusModel.signedRadiusFraction(0.1, 0.5, 0.5), 1e-15)
        assertEquals(
            BokehDefocusModel.signedRadiusFraction(0.1, 0.5, 0.5),
            BokehDefocusModel.signedRadiusFraction(0.1, 0.5, 1.0),
            0.0,
        )
        assertEquals(1.0 / 26.0, BokehDefocusModel.signedRadiusFraction(1.0, 0.0, 1.0), 0.0)
    }

    @Test
    fun resolutionChangesPixelRadiusWithoutChangingRelativeStrength() {
        val radius = BokehDefocusModel.radiusPixels(0.06f, 0.33435f, 1.8f, 4096)
        assertEquals(radius / 2f, BokehDefocusModel.radiusPixels(0.06f, 0.33435f, 1.8f, 2048), 0f)
        assertEquals(2048f / 26f, BokehDefocusModel.baseRadiusPixels(2048), 0f)
    }

    @Test
    fun invalidCalibrationInputsAreRejected() {
        val invalidCalls = listOf<() -> Unit>(
            { BokehDefocusModel.signedRadiusFraction(Double.NaN, 0.5, 1.8) },
            { BokehDefocusModel.signedRadiusFraction(-0.1, 0.5, 1.8) },
            { BokehDefocusModel.signedRadiusFraction(0.5, 1.1, 1.8) },
            { BokehDefocusModel.signedRadiusFraction(0.5, Double.POSITIVE_INFINITY, 1.8) },
            { BokehDefocusModel.signedRadiusFraction(0.5, 0.5, 0.0) },
            { BokehDefocusModel.signedRadiusFraction(0.5, 0.5, Double.NaN) },
            { BokehDefocusModel.radiusPixels(0.1f, 0.5f, 1.8f, 0) },
            { BokehDefocusModel.baseRadiusPixels(-1) },
        )
        for (invalidCall in invalidCalls) {
            try {
                invalidCall()
                throw AssertionError("Invalid calibration input was accepted")
            } catch (_: IllegalArgumentException) {
                // Expected: invalid depth must not silently acquire a blur scale.
            }
        }
    }
}
