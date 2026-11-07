package com.hinnka.mycamera.raw

import org.junit.Assert.assertEquals
import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertNull
import org.junit.Test
import kotlin.math.PI
import kotlin.math.abs
import kotlin.math.cos
import kotlin.math.max
import kotlin.math.sin

class DemosaicNoiseSpectrumTest {
    @Test
    fun propagationPreservesInputAmplitudeWithoutChangingNormalizedShape() {
        val size = DemosaicNoiseSpectrum.SIZE
        val residuals = arrayOf(FloatArray(size * size) { index ->
            sin(index * 0.071).toFloat() + cos(index / size * 0.113).toFloat()
        })
        val input = FloatArray(size) { 0.5f + it.toFloat() / (size - 1) }
        val unitMean = requireNotNull(DemosaicNoiseSpectrum.propagatedCorrelation(
            residuals, intArrayOf(0), input,
        ))
        assertEquals(1.0, unitMean.average(), 1e-6)
        for (amplitude in listOf(0f, 0.5f, 2f)) {
            val propagated = requireNotNull(DemosaicNoiseSpectrum.propagatedCorrelation(
                residuals, intArrayOf(0), FloatArray(size) { input[it] * amplitude },
            ))
            assertEquals(amplitude.toDouble(), propagated.average(), 1e-6)
            assertArrayEquals(FloatArray(size) { unitMean[it] * amplitude }, propagated, 1e-6f)
        }
        assertNull(DemosaicNoiseSpectrum.propagatedCorrelation(
            residuals, intArrayOf(0), FloatArray(size) { Float.NaN },
        ))
    }

    @Test
    fun halfBinFftMatchesLegacyDirectTransform() {
        val size = DemosaicNoiseSpectrum.SIZE
        val residuals = Array(3) { channel ->
            FloatArray(size * size) { index ->
                val x = index % size
                val y = index / size
                (
                    sin((x + 1) * (channel + 2) * 0.071) +
                        cos((y + 3) * (channel + 1) * 0.113) +
                        0.15 * sin((x + y + 5) * 0.037)
                    ).toFloat()
            }
        }
        val channels = intArrayOf(0, 2)

        val expected = legacyDirectPower(residuals, channels)
        val actual = DemosaicNoiseSpectrum.halfBinDirectionalPower(residuals, channels)

        for (bin in 0 until size) {
            val tolerance = max(1e-10, abs(expected[bin]) * 1e-9)
            assertEquals("bin=$bin", expected[bin], actual[bin], tolerance)
        }
    }

    private fun legacyDirectPower(
        residuals: Array<FloatArray>,
        channels: IntArray,
    ): DoubleArray {
        val size = DemosaicNoiseSpectrum.SIZE
        val power = DoubleArray(size)
        for (bin in 0 until size) {
            val omega = (bin + 0.5) * 2.0 * PI / size - PI
            var accumulatedPower = 0.0
            for (channel in channels) {
                val residual = residuals[channel]
                for (line in 0 until size) {
                    var horizontalReal = 0.0
                    var horizontalImaginary = 0.0
                    var verticalReal = 0.0
                    var verticalImaginary = 0.0
                    for (position in 0 until size) {
                        val real = cos(omega * position)
                        val imaginary = sin(omega * position)
                        val horizontal = residual[line * size + position]
                        val vertical = residual[position * size + line]
                        horizontalReal += horizontal * real
                        horizontalImaginary -= horizontal * imaginary
                        verticalReal += vertical * real
                        verticalImaginary -= vertical * imaginary
                    }
                    accumulatedPower +=
                        horizontalReal * horizontalReal +
                            horizontalImaginary * horizontalImaginary +
                            verticalReal * verticalReal +
                            verticalImaginary * verticalImaginary
                }
            }
            power[bin] = accumulatedPower / (2.0 * size * size)
        }
        return power
    }
}
