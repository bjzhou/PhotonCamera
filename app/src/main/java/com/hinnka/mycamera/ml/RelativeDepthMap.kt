package com.hinnka.mycamera.ml

import android.graphics.Bitmap

/**
 * Normalized relative disparity produced by the monocular depth model.
 *
 * Values remain floating point until the bokeh renderer. Larger/smaller polarity
 * is resolved separately because imported models do not share one convention.
 */
data class RelativeDepthMap(
    val width: Int,
    val height: Int,
    val values: FloatArray,
) {
    init {
        require(width > 0 && height > 0) { "Depth dimensions must be positive" }
        require(values.size.toLong() == width.toLong() * height.toLong()) {
            "Depth data size does not match dimensions"
        }
    }

    companion object {
        /** Reads the red channel of a legacy 8-bit depth bitmap. */
        fun fromBitmap(bitmap: Bitmap): RelativeDepthMap {
            val pixels = IntArray(bitmap.width * bitmap.height)
            bitmap.getPixels(pixels, 0, bitmap.width, 0, 0, bitmap.width, bitmap.height)
            val values = FloatArray(pixels.size)
            for (index in pixels.indices) {
                values[index] = ((pixels[index] shr 16) and 0xff) / 255.0f
            }
            return RelativeDepthMap(bitmap.width, bitmap.height, values)
        }
    }
}
