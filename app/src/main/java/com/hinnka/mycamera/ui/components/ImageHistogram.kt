package com.hinnka.mycamera.ui.components

import android.graphics.Bitmap
import kotlin.math.roundToInt

/**
 * Display-referred histogram data shared by the gallery overlay and curve editor.
 *
 * Pixels are sampled directly from the rendered preview at a bounded two-dimensional stride. This
 * avoids resampling the bitmap, which would invent channel values that do not exist in the image.
 */
class ImageHistogram private constructor(
    private val luminance: IntArray,
    private val red: IntArray,
    private val green: IntArray,
    private val blue: IntArray,
) {
    /** Returns display-smoothed bins; bins 0 and 255 retain their exact sampled counts. */
    fun binsFor(channel: CurveChannel): IntArray = when (channel) {
        CurveChannel.MASTER -> luminance
        CurveChannel.RED -> red
        CurveChannel.GREEN -> green
        CurveChannel.BLUE -> blue
    }

    companion object {
        private const val BIN_COUNT = 256
        private const val MAX_SAMPLE_EDGE = 512
        private val SMOOTHING_KERNEL = intArrayOf(1, 6, 15, 20, 15, 6, 1)

        fun fromBitmap(bitmap: Bitmap): ImageHistogram {
            check(!bitmap.isRecycled) { "Cannot calculate a histogram from a recycled bitmap" }
            require(bitmap.width > 0 && bitmap.height > 0) {
                "Histogram source bitmap must have non-zero dimensions"
            }

            val readableBitmap = if (bitmap.config == Bitmap.Config.HARDWARE) {
                checkNotNull(bitmap.copy(Bitmap.Config.ARGB_8888, false)) {
                    "Unable to create a software bitmap for histogram calculation"
                }
            } else {
                bitmap
            }

            try {
                val luminance = IntArray(BIN_COUNT)
                val red = IntArray(BIN_COUNT)
                val green = IntArray(BIN_COUNT)
                val blue = IntArray(BIN_COUNT)
                val longestEdge = maxOf(readableBitmap.width, readableBitmap.height)
                val sampleStep = ((longestEdge + MAX_SAMPLE_EDGE - 1) / MAX_SAMPLE_EDGE)
                    .coerceAtLeast(1)
                val sampleOffset = sampleStep / 2
                val rowPixels = IntArray(readableBitmap.width)
                var y = sampleOffset.coerceAtMost(readableBitmap.height - 1)

                while (y < readableBitmap.height) {
                    readableBitmap.getPixels(
                        rowPixels,
                        0,
                        readableBitmap.width,
                        0,
                        y,
                        readableBitmap.width,
                        1,
                    )
                    var x = sampleOffset.coerceAtMost(readableBitmap.width - 1)
                    while (x < readableBitmap.width) {
                        val pixel = rowPixels[x]
                        val alpha = pixel ushr 24
                        if (alpha != 0) {
                            val r = pixel shr 16 and 0xFF
                            val g = pixel shr 8 and 0xFF
                            val b = pixel and 0xFF
                            val luma = (0.2126f * r + 0.7152f * g + 0.0722f * b)
                                .roundToInt()
                                .coerceIn(0, BIN_COUNT - 1)

                            luminance[luma]++
                            red[r]++
                            green[g]++
                            blue[b]++
                        }
                        x += sampleStep
                    }
                    y += sampleStep
                }

                return ImageHistogram(
                    luminance = smoothForDisplay(luminance),
                    red = smoothForDisplay(red),
                    green = smoothForDisplay(green),
                    blue = smoothForDisplay(blue),
                )
            } finally {
                if (readableBitmap !== bitmap) {
                    readableBitmap.recycle()
                }
            }
        }

        /**
         * Applies a compact binomial approximation of a Gaussian curve. The clipping bins remain
         * exact because values at 0 and 255 carry distinct shadow/highlight clipping meaning.
         */
        private fun smoothForDisplay(source: IntArray): IntArray {
            if (source.size < 3) return source.copyOf()

            val result = IntArray(source.size)
            result[0] = source[0]
            result[source.lastIndex] = source[source.lastIndex]
            val radius = SMOOTHING_KERNEL.size / 2

            for (index in 1 until source.lastIndex) {
                var weightedSum = 0L
                var weightSum = 0
                for (kernelIndex in SMOOTHING_KERNEL.indices) {
                    val sourceIndex = index + kernelIndex - radius
                    if (sourceIndex !in source.indices) continue

                    val weight = SMOOTHING_KERNEL[kernelIndex]
                    weightedSum += source[sourceIndex].toLong() * weight
                    weightSum += weight
                }
                result[index] = ((weightedSum + weightSum / 2L) / weightSum)
                    .coerceAtMost(Int.MAX_VALUE.toLong())
                    .toInt()
            }
            return result
        }
    }
}
