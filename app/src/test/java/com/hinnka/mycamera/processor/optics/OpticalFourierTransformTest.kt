package com.hinnka.mycamera.processor.optics

import kotlin.math.PI
import kotlin.math.cos
import kotlin.math.sin
import org.junit.Assert.assertEquals
import org.junit.Test

class OpticalFourierTransformTest {
    @Test
    fun transformMatchesBruteForceDft() {
        val size = 2
        val real = doubleArrayOf(1.0, 2.0, 3.0, 4.0)
        val imaginary = doubleArrayOf(0.5, -1.0, 2.0, -0.25)
        val expected = bruteForce(real, imaginary, size, inverse = false)

        OpticalFourierTransform.transform2D(real, imaginary, size)

        expected.first.indices.forEach { index ->
            assertEquals(expected.first[index], real[index], EPSILON)
            assertEquals(expected.second[index], imaginary[index], EPSILON)
        }
    }

    @Test
    fun forwardAndInverseRoundTripComplexInput() {
        val originalReal = DoubleArray(16) { index -> (index * 3 - 5) / 7.0 }
        val originalImaginary = DoubleArray(16) { index -> (index * index - 4) / 11.0 }
        val real = originalReal.copyOf()
        val imaginary = originalImaginary.copyOf()

        OpticalFourierTransform.transform2D(real, imaginary, 4)
        OpticalFourierTransform.transform2D(real, imaginary, 4, inverse = true)

        originalReal.indices.forEach { index ->
            assertEquals(originalReal[index], real[index], EPSILON)
            assertEquals(originalImaginary[index], imaginary[index], EPSILON)
        }
    }

    @Test
    fun forwardTransformSatisfiesParsevalEnergy() {
        val real = DoubleArray(16) { index -> (index + 1) / 5.0 }
        val imaginary = DoubleArray(16) { index -> (index - 3) / 9.0 }
        val inputEnergy = energy(real, imaginary)

        OpticalFourierTransform.transform2D(real, imaginary, 4)

        assertEquals(16.0 * inputEnergy, energy(real, imaginary), 1e-9)
    }

    private fun bruteForce(
        real: DoubleArray,
        imaginary: DoubleArray,
        size: Int,
        inverse: Boolean,
    ): Pair<DoubleArray, DoubleArray> {
        val outputReal = DoubleArray(real.size)
        val outputImaginary = DoubleArray(real.size)
        val sign = if (inverse) 1.0 else -1.0
        for (ky in 0 until size) {
            for (kx in 0 until size) {
                var sumReal = 0.0
                var sumImaginary = 0.0
                for (y in 0 until size) {
                    for (x in 0 until size) {
                        val angle = sign * 2.0 * PI * (kx * x + ky * y) / size
                        val index = y * size + x
                        val c = cos(angle)
                        val s = sin(angle)
                        sumReal += real[index] * c - imaginary[index] * s
                        sumImaginary += real[index] * s + imaginary[index] * c
                    }
                }
                val outputIndex = ky * size + kx
                val scale = if (inverse) 1.0 / (size * size) else 1.0
                outputReal[outputIndex] = sumReal * scale
                outputImaginary[outputIndex] = sumImaginary * scale
            }
        }
        return outputReal to outputImaginary
    }

    private fun energy(real: DoubleArray, imaginary: DoubleArray): Double =
        real.indices.sumOf { index -> real[index] * real[index] + imaginary[index] * imaginary[index] }

    private companion object {
        const val EPSILON = 1e-10
    }
}
