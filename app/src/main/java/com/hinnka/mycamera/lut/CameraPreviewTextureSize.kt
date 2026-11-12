package com.hinnka.mycamera.lut

import android.util.Size

/** Fits the complete source into the preview budget without upscaling or changing orientation. */
internal fun cameraPreviewTextureSize(width: Int, height: Int): Size {
    require(width > 0 && height > 0)
    val longEdge = maxOf(width, height)
    val shortEdge = minOf(width, height)
    if (longEdge <= 1920 && shortEdge <= 1080) return Size(width, height)
    val outputLong: Int
    val outputShort: Int
    if (longEdge.toLong() * 1080 > shortEdge.toLong() * 1920) {
        outputLong = 1920
        outputShort = (shortEdge.toLong() * 1920 / longEdge).toInt().coerceAtLeast(1)
    } else {
        outputShort = 1080
        outputLong = (longEdge.toLong() * 1080 / shortEdge).toInt().coerceAtLeast(1)
    }
    return if (width >= height) Size(outputLong, outputShort) else Size(outputShort, outputLong)
}
