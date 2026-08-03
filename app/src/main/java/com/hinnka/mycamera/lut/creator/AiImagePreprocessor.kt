package com.hinnka.mycamera.lut.creator

import android.graphics.Bitmap
import androidx.core.graphics.scale

object AiImagePreprocessor {
    private const val VISION_MAX_EDGE = 1024
    private const val IMAGE_EDIT_MAX_EDGE = 1024

    fun prepareForVisionAnalysis(bitmap: Bitmap): Bitmap {
        if (bitmap.width <= VISION_MAX_EDGE && bitmap.height <= VISION_MAX_EDGE) {
            return bitmap
        }

        val scale = VISION_MAX_EDGE.toFloat() / maxOf(bitmap.width, bitmap.height)
        val width = (bitmap.width * scale).toInt().coerceAtLeast(1)
        val height = (bitmap.height * scale).toInt().coerceAtLeast(1)
        return bitmap.scale(width, height)
    }

    fun prepareForImageToImage(bitmap: Bitmap): Bitmap {
        val squareBitmap = cropBitmapToSquare(bitmap)
        if (squareBitmap.width <= IMAGE_EDIT_MAX_EDGE && squareBitmap.height <= IMAGE_EDIT_MAX_EDGE) {
            return squareBitmap
        }

        return squareBitmap.scale(IMAGE_EDIT_MAX_EDGE, IMAGE_EDIT_MAX_EDGE)
    }

    private fun cropBitmapToSquare(bitmap: Bitmap): Bitmap {
        if (bitmap.width == bitmap.height) {
            return bitmap
        }

        val size = minOf(bitmap.width, bitmap.height)
        val x = (bitmap.width - size) / 2
        val y = (bitmap.height - size) / 2
        return Bitmap.createBitmap(bitmap, x, y, size, size)
    }
}
