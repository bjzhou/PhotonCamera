package com.hinnka.mycamera.camera

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class GyroExposureWindowIntegratorTest {
    @Test
    fun constantAngularVelocityIntegratesAcrossInterpolatedBoundaries() {
        val samples = listOf(
            GyroSample(0L, 1f, 2f, -1f),
            GyroSample(5_000_000L, 1f, 2f, -1f),
            GyroSample(10_000_000L, 1f, 2f, -1f),
        )

        val window = GyroExposureWindowIntegrator.integrate(
            samples = samples,
            startTimestampNs = 2_000_000L,
            endTimestampNs = 8_000_000L,
        )

        assertEquals(1f, window.coverageRatio, 1e-6f)
        assertEquals(0.006f, window.integratedRotationRad[0], 1e-6f)
        assertEquals(0.012f, window.integratedRotationRad[1], 1e-6f)
        assertEquals(-0.006f, window.integratedRotationRad[2], 1e-6f)
        assertEquals(6f, window.angularEnergy, 1e-5f)
        assertEquals(0f, window.jerkEnergy, 1e-5f)
        assertTrue(window.sampleCount >= 3)
    }

    @Test
    fun partialSampleCoverageIsReportedWithoutBorrowingData() {
        val samples = listOf(
            GyroSample(4_000_000L, 1f, 0f, 0f),
            GyroSample(8_000_000L, 1f, 0f, 0f),
        )

        val window = GyroExposureWindowIntegrator.integrate(
            samples = samples,
            startTimestampNs = 0L,
            endTimestampNs = 10_000_000L,
        )

        assertEquals(0.4f, window.coverageRatio, 1e-6f)
        assertEquals(0.004f, window.integratedRotationRad[0], 1e-6f)
    }

    @Test
    fun missingSamplesProduceUnavailableWindow() {
        val window = GyroExposureWindowIntegrator.integrate(
            samples = emptyList(),
            startTimestampNs = 100L,
            endTimestampNs = 200L,
        )

        assertEquals(0, window.sampleCount)
        assertEquals(0f, window.coverageRatio, 0f)
        assertTrue(window.integratedRotationRad.all { it == 0f })
    }
}
