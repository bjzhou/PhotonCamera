package com.hinnka.mycamera.processor.optics

import kotlin.math.cos
import kotlin.math.sin

/** In-place square two-dimensional radix-2 discrete Fourier transform. */
object OpticalFourierTransform {
    /**
     * Transforms [real] and [imaginary] in row-major order.
     * The forward transform uses exp(-i 2 pi k n / N); the inverse is scaled by 1/N.
     */
    fun transform2D(
        real: DoubleArray,
        imaginary: DoubleArray,
        size: Int,
        inverse: Boolean = false,
    ) {
        require(size > 0 && size and (size - 1) == 0) {
            "FFT size must be a positive power of two"
        }
        val elementCount = size.toLong() * size
        require(elementCount <= Int.MAX_VALUE) { "FFT size is too large" }
        require(real.size == elementCount.toInt() && imaginary.size == elementCount.toInt()) {
            "FFT arrays must each contain size * size elements"
        }

        for (row in 0 until size) {
            transform1D(real, imaginary, row * size, 1, size, inverse)
        }
        for (column in 0 until size) {
            transform1D(real, imaginary, column, size, size, inverse)
        }
    }

    private fun transform1D(
        real: DoubleArray,
        imaginary: DoubleArray,
        offset: Int,
        stride: Int,
        length: Int,
        inverse: Boolean,
    ) {
        var j = 0
        for (i in 1 until length) {
            var bit = length shr 1
            while (j and bit != 0) {
                j = j xor bit
                bit = bit shr 1
            }
            j = j xor bit
            if (i < j) {
                val first = offset + i * stride
                val second = offset + j * stride
                val realValue = real[first]
                real[first] = real[second]
                real[second] = realValue
                val imaginaryValue = imaginary[first]
                imaginary[first] = imaginary[second]
                imaginary[second] = imaginaryValue
            }
        }

        var blockLength = 2
        val sign = if (inverse) 1.0 else -1.0
        while (blockLength <= length) {
            val angle = sign * 2.0 * Math.PI / blockLength
            val stepReal = cos(angle)
            val stepImaginary = sin(angle)
            var blockStart = 0
            while (blockStart < length) {
                var twiddleReal = 1.0
                var twiddleImaginary = 0.0
                val halfBlock = blockLength shr 1
                for (offsetInBlock in 0 until halfBlock) {
                    val first = offset + (blockStart + offsetInBlock) * stride
                    val second = offset + (blockStart + offsetInBlock + halfBlock) * stride
                    val productReal = twiddleReal * real[second] - twiddleImaginary * imaginary[second]
                    val productImaginary = twiddleReal * imaginary[second] + twiddleImaginary * real[second]
                    val firstReal = real[first]
                    val firstImaginary = imaginary[first]
                    real[first] = firstReal + productReal
                    imaginary[first] = firstImaginary + productImaginary
                    real[second] = firstReal - productReal
                    imaginary[second] = firstImaginary - productImaginary

                    val nextTwiddleReal = twiddleReal * stepReal - twiddleImaginary * stepImaginary
                    twiddleImaginary = twiddleReal * stepImaginary + twiddleImaginary * stepReal
                    twiddleReal = nextTwiddleReal
                }
                blockStart += blockLength
            }
            blockLength = blockLength shl 1
        }

        if (inverse) {
            val scale = 1.0 / length
            for (index in 0 until length) {
                val position = offset + index * stride
                real[position] *= scale
                imaginary[position] *= scale
            }
        }
    }
}
