package com.hinnka.mycamera.lut.creator

import java.nio.ByteBuffer
import java.nio.ByteOrder
import kotlin.math.abs
import kotlin.math.max
import kotlin.math.min

/** train-srgb: Pillow RGB bicubic to 320, then torch antialiased bilinear to 224. */
internal object StyleLutPreprocessor {
    const val RENDER_SIZE = 320
    const val IMAGE_SIZE = 224
    private const val PRECISION = 22

    fun prepare(pixels: IntArray, width: Int, height: Int): ByteBuffer {
        val rendered = resizeBicubic(pixels, width, height)
        val weights = bilinearWeights()
        val input = ByteBuffer.allocateDirect(3 * IMAGE_SIZE * IMAGE_SIZE * Float.SIZE_BYTES)
            .order(ByteOrder.nativeOrder())
        for (shift in intArrayOf(16, 8, 0)) {
            val horizontal = FloatArray(RENDER_SIZE * IMAGE_SIZE)
            for (y in 0 until RENDER_SIZE) {
                for (x in 0 until IMAGE_SIZE) {
                    val kernel = weights[x]
                    var value = 0f
                    for (i in kernel.values.indices) {
                        val pixel = rendered[y * RENDER_SIZE + kernel.start + i]
                        value += (((pixel ushr shift) and 255) / 255f) * kernel.values[i]
                    }
                    horizontal[y * IMAGE_SIZE + x] = value
                }
            }
            for (y in 0 until IMAGE_SIZE) {
                val kernel = weights[y]
                for (x in 0 until IMAGE_SIZE) {
                    var value = 0f
                    for (i in kernel.values.indices) {
                        value += horizontal[(kernel.start + i) * IMAGE_SIZE + x] * kernel.values[i]
                    }
                    input.putFloat(value)
                }
            }
        }
        input.rewind()
        return input
    }

    private class LinearKernel(val start: Int, val values: FloatArray)

    private fun bilinearWeights(): Array<LinearKernel> {
        val scale = RENDER_SIZE.toFloat() / IMAGE_SIZE
        return Array(IMAGE_SIZE) { output ->
            val center = (output + 0.5f) * scale
            val start = max(0, (center - scale + 0.5f).toInt())
            val end = min(RENDER_SIZE, (center + scale + 0.5f).toInt())
            val weights = FloatArray(end - start) { i ->
                max(0f, 1f - abs((start + i - center + 0.5f) / scale))
            }
            val sum = weights.sum()
            for (i in weights.indices) weights[i] /= sum
            LinearKernel(start, weights)
        }
    }

    private fun resizeBicubic(pixels: IntArray, width: Int, height: Int): IntArray {
        require(width > 0 && height > 0 && pixels.size == width * height)
        val horizontal = if (width == RENDER_SIZE) pixels else {
            val weights = cubicWeights(width)
            IntArray(RENDER_SIZE * height) { index ->
                val kernel = weights[index % RENDER_SIZE]
                filter(pixels, index / RENDER_SIZE * width + kernel.start, 1, kernel.values)
            }
        }
        if (height == RENDER_SIZE) return horizontal
        val weights = cubicWeights(height)
        return IntArray(RENDER_SIZE * RENDER_SIZE) { index ->
            val kernel = weights[index / RENDER_SIZE]
            filter(horizontal, kernel.start * RENDER_SIZE + index % RENDER_SIZE, RENDER_SIZE, kernel.values)
        }
    }

    private class CubicKernel(val start: Int, val values: IntArray)

    private fun cubicWeights(inputSize: Int): Array<CubicKernel> {
        val scale = inputSize.toDouble() / RENDER_SIZE
        val filterScale = max(1.0, scale)
        val support = 2.0 * filterScale
        return Array(RENDER_SIZE) { output ->
            val center = (output + 0.5) * scale
            val start = max(0, (center - support + 0.5).toInt())
            val end = min(inputSize, (center + support + 0.5).toInt())
            val weights = DoubleArray(end - start) { offset ->
                val x = abs((start + offset - center + 0.5) / filterScale)
                when {
                    x < 1.0 -> ((1.5 * x - 2.5) * x) * x + 1.0
                    x < 2.0 -> ((-0.5 * x + 2.5) * x - 4.0) * x + 2.0
                    else -> 0.0
                }
            }
            val sum = weights.sum()
            CubicKernel(start, IntArray(weights.size) { i ->
                val value = weights[i] / sum * (1 shl PRECISION)
                (value + if (value < 0) -0.5 else 0.5).toInt()
            })
        }
    }

    private fun filter(pixels: IntArray, start: Int, stride: Int, weights: IntArray): Int {
        var red = 1 shl (PRECISION - 1)
        var green = red
        var blue = red
        for (i in weights.indices) {
            val pixel = pixels[start + i * stride]
            red += ((pixel ushr 16) and 255) * weights[i]
            green += ((pixel ushr 8) and 255) * weights[i]
            blue += (pixel and 255) * weights[i]
        }
        // Pillow clips bicubic overshoot to uint8 after each separable pass.
        return (0xff shl 24) or ((red shr PRECISION).coerceIn(0, 255) shl 16) or
            ((green shr PRECISION).coerceIn(0, 255) shl 8) or (blue shr PRECISION).coerceIn(0, 255)
    }
}
