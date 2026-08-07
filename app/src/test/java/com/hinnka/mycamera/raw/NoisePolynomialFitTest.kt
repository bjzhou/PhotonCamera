package com.hinnka.mycamera.raw

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class NoisePolynomialFitTest {
    @Test
    fun recoversPhysicalThreeTermNoiseModel() {
        val signals = doubleArrayOf(0.04, 0.18, 0.5)
        val expected = NonNegativeNoisePolynomial(
            read = 4.7e-7,
            shot = 1.9e-6,
            quadratic = 9.6e-5,
            squaredError = 0.0,
        )
        val variances = DoubleArray(signals.size) { index ->
            val signal = signals[index]
            expected.read + expected.shot * signal + expected.quadratic * signal * signal
        }

        val actual = requireNotNull(fitNonNegativeNoisePolynomial(signals, variances))

        assertEquals(expected.read, actual.read, 1e-15)
        assertEquals(expected.shot, actual.shot, 1e-15)
        assertEquals(expected.quadratic, actual.quadratic, 1e-15)
    }

    @Test
    fun usesReadAndQuadraticBoundaryWhenUnconstrainedShotWouldBeNegative() {
        val signals = doubleArrayOf(0.04, 0.18, 0.5)
        val read = 2.9e-7
        val quadratic = 5.9e-5
        val variances = DoubleArray(signals.size) { index ->
            read + quadratic * signals[index] * signals[index]
        }

        val actual = requireNotNull(fitNonNegativeNoisePolynomial(signals, variances))

        assertEquals(read, actual.read, 1e-15)
        assertEquals(0.0, actual.shot, 1e-15)
        assertEquals(quadratic, actual.quadratic, 1e-15)
    }

    @Test
    fun capturedVgnChromaTransferKeepsBothReadFloorsPositive() {
        val signals = doubleArrayOf(
            0.040088941942137954,
            0.18001025889178143,
            0.49978757384641587,
        )
        val cb = requireNotNull(
            fitNonNegativeNoisePolynomial(
                signals,
                doubleArrayOf(4.9927866e-7, 2.0807913e-6, 1.5127165e-5),
            ),
        )
        val cr = requireNotNull(
            fitNonNegativeNoisePolynomial(
                signals,
                doubleArrayOf(7.0421515e-7, 3.917892e-6, 2.5307698e-5),
            ),
        )

        assertTrue(cb.read > 0.0)
        assertTrue(cr.read > 0.0)
        assertEquals(2.891076060e-7, cb.read, 1e-14)
        assertEquals(4.729562337e-7, cr.read, 1e-14)
    }

    @Test
    fun preservesIndependentlyMeasuredReadWhileFittingSignalTerms() {
        val signals = doubleArrayOf(0.04, 0.18, 0.5)
        val read = 2.4e-5
        val shot = 4.2e-4
        val quadratic = 3.0e-5
        val variances = DoubleArray(signals.size) { index ->
            val signal = signals[index]
            read + shot * signal + quadratic * signal * signal
        }

        val actual = requireNotNull(
            fitNonNegativeNoisePolynomial(signals, variances, fixedRead = read),
        )

        assertEquals(read, actual.read, 0.0)
        assertEquals(shot, actual.shot, 1e-15)
        assertEquals(quadratic, actual.quadratic, 1e-15)
    }

    @Test
    fun rejectsNonPhysicalSamples() {
        assertTrue(
            fitNonNegativeNoisePolynomial(
                doubleArrayOf(0.04, 0.18),
                doubleArrayOf(1e-6, -1e-6),
            ) == null,
        )
    }
}
