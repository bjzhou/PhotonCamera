package com.hinnka.mycamera.ui.components

import android.graphics.Bitmap
import kotlin.math.roundToInt

/**
 * Display-referred histogram data for the curve editor.
 *
 * The source bitmap is reduced to a bounded software bitmap before reading pixels so histogram
 * updates do not allocate a full-resolution pixel buffer for the gallery preview.
 */
class ImageHistogram private constructor(
    private val luminance: IntArray,
    private val red: IntArray,
    private val green: IntArray,
    private val blue: IntArray,
) {
    fun binsFor(channel: CurveChannel): IntArray = when (channel) {
        CurveChannel.MASTER -> luminance
        CurveChannel.RED -> red
        CurveChannel.GREEN -> green
        CurveChannel.BLUE -> blue
    }

    companion object {
        private const val BIN_COUNT = 256
        private const val MAX_SAMPLE_EDGE = 512

        fun fromBitmap(bitmap: Bitmap): ImageHistogram {
            check(!bitmap.isRecycled) { "Cannot calculate a histogram from a recycled bitmap" }
            require(bitmap.width > 0 && bitmap.height > 0) {
                "Histogram source bitmap must have non-zero dimensions"
            }

            val scale = minOf(
                1f,
                MAX_SAMPLE_EDGE.toFloat() / maxOf(bitmap.width, bitmap.height),
            )
            val sampleWidth = (bitmap.width * scale).roundToInt().coerceAtLeast(1)
            val sampleHeight = (bitmap.height * scale).roundToInt().coerceAtLeast(1)
            val scaledBitmap = if (sampleWidth != bitmap.width || sampleHeight != bitmap.height) {
                Bitmap.createScaledBitmap(bitmap, sampleWidth, sampleHeight, true)
            } else {
                bitmap
            }
            val readableBitmap = if (scaledBitmap.config == Bitmap.Config.HARDWARE) {
                checkNotNull(scaledBitmap.copy(Bitmap.Config.ARGB_8888, false)) {
                    "Unable to create a software bitmap for histogram calculation"
                }
            } else {
                scaledBitmap
            }

            try {
                val pixels = IntArray(readableBitmap.width * readableBitmap.height)
                readableBitmap.getPixels(
                    pixels,
                    0,
                    readableBitmap.width,
                    0,
                    0,
                    readableBitmap.width,
                    readableBitmap.height,
                )

                val luminance = IntArray(BIN_COUNT)
                val red = IntArray(BIN_COUNT)
                val green = IntArray(BIN_COUNT)
                val blue = IntArray(BIN_COUNT)

                for (pixel in pixels) {
                    val alpha = pixel ushr 24
                    if (alpha == 0) continue

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

                return ImageHistogram(
                    luminance = luminance,
                    red = red,
                    green = green,
                    blue = blue,
                )
            } finally {
                if (readableBitmap !== scaledBitmap && readableBitmap !== bitmap) {
                    readableBitmap.recycle()
                }
                if (scaledBitmap !== bitmap) {
                    scaledBitmap.recycle()
                }
            }
        }
    }
}
