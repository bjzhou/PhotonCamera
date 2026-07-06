package com.hinnka.mycamera.lut.creator

import android.graphics.Bitmap
import androidx.core.graphics.scale

object AiImagePreprocessor {
    private const val MAX_EDGE = 1024

    fun prepareForImageToImage(bitmap: Bitmap): Bitmap {
        val squareBitmap = cropBitmapToSquare(bitmap)
        if (squareBitmap.width <= MAX_EDGE && squareBitmap.height <= MAX_EDGE) {
            return squareBitmap
        }

        return squareBitmap.scale(MAX_EDGE, MAX_EDGE)
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
