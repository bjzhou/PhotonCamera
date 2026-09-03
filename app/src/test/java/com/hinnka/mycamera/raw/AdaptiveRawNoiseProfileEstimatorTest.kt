package com.hinnka.mycamera.raw

import com.hinnka.mycamera.processor.CalibratedRawNoiseProfile
import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Test

class AdaptiveRawNoiseProfileEstimatorTest {
    private val template = CalibratedRawNoiseProfile(
        id = "template",
        shotSlopeA = doubleArrayOf(1.0, 2.0, 3.0, 4.0),
        shotInterceptB = doubleArrayOf(-1.0, -2.0, -3.0, -4.0),
        readQuadraticC = doubleArrayOf(5.0, 6.0, 7.0, 8.0),
        readDigitalGainD = doubleArrayOf(9.0, 10.0, 11.0, 12.0),
        maxAnalogSensitivity = 9_100,
    )

    @Test
    fun x9UltraReferenceGeometryPreservesTemplate() {
        val estimate = requireNotNull(
            AdaptiveRawNoiseProfileEstimator.estimate(
                id = "adaptive",
                template = template,
                target = targetForOpticalFormat(
                    denominator = 1.12,
                    aperture = 1.5f,
                    maximumAnalogSensitivityIso = 9_100,
                ),
            ),
        )

        assertEquals(1.0, estimate.relativeNoiseDriver, 1e-6)
        assertArrayEquals(template.shotSlopeA, estimate.profile.shotSlopeA, 1e-6)
        assertArrayEquals(template.shotInterceptB, estimate.profile.shotInterceptB, 1e-6)
        assertArrayEquals(template.readQuadraticC, estimate.profile.readQuadraticC, 1e-6)
        assertArrayEquals(template.readDigitalGainD, estimate.profile.readDigitalGainD, 1e-6)
    }

    @Test
    fun x9Ultra3xGeometryReproducesCalibrationPairMeanRatios() {
        val estimate = requireNotNull(
            AdaptiveRawNoiseProfileEstimator.estimate(
                id = "adaptive",
                template = template,
                target = targetForOpticalFormat(
                    denominator = 1.28,
                    aperture = 2.2f,
                    maximumAnalogSensitivityIso = 12_700,
                ),
            ),
        )

        assertEquals(2.8096145124716556, estimate.relativeNoiseDriver, 1e-6)
        assertEquals(1.8053171378702446, estimate.shotScale, 1e-6)
        assertEquals(3.0947830646211503, estimate.readQuadraticScale, 1e-6)
        assertEquals(1.4634279773805543, estimate.readFloorScale, 1e-6)
        assertEquals(12_700, estimate.profile.maxAnalogSensitivity)
    }

    private fun targetForOpticalFormat(
        denominator: Double,
        aperture: Float,
        maximumAnalogSensitivityIso: Int,
    ): AdaptiveRawNoiseProfileTarget {
        val diagonal = 16.0 / denominator
        return AdaptiveRawNoiseProfileTarget(
            sensorPhysicalWidthMm = (diagonal * 4.0 / 5.0).toFloat(),
            sensorPhysicalHeightMm = (diagonal * 3.0 / 5.0).toFloat(),
            sensorPixelArrayWidth = 20_000,
            sensorPixelArrayHeight = 10_000,
            aperture = aperture,
            maximumAnalogSensitivityIso = maximumAnalogSensitivityIso,
        )
    }
}
