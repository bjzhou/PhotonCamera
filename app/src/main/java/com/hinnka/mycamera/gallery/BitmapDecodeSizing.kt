package com.hinnka.mycamera.gallery

import kotlin.math.floor
import kotlin.math.sqrt

internal data class BitmapDecodeTarget(
    val width: Int,
    val height: Int,
)

/**
 * Resolves a decode size without upscaling while honoring both a dimension limit and a
 * conservative decoded-byte budget. The byte budget is evaluated before allocation so a bitmap
 * that is safe to keep in memory is also safe to hand to a recording Canvas.
 */
internal fun calculateBitmapDecodeTarget(
    sourceWidth: Int,
    sourceHeight: Int,
    maxEdge: Int? = null,
    maxByteCount: Long? = null,
    assumedBytesPerPixel: Int,
): BitmapDecodeTarget {
    require(sourceWidth > 0 && sourceHeight > 0) {
        "Source dimensions must be positive: ${sourceWidth}x$sourceHeight"
    }
    require(maxEdge == null || maxEdge > 0) { "maxEdge must be positive" }
    require(assumedBytesPerPixel > 0) { "assumedBytesPerPixel must be positive" }
    require(maxByteCount == null || maxByteCount >= assumedBytesPerPixel.toLong()) {
        "maxByteCount must fit at least one pixel"
    }

    var scale = 1.0
    maxEdge?.let { edge ->
        val sourceLongEdge = maxOf(sourceWidth, sourceHeight)
        if (sourceLongEdge > edge) {
            scale = edge.toDouble() / sourceLongEdge.toDouble()
        }
    }

    maxByteCount?.let { byteBudget ->
        val projectedByteCount = sourceWidth.toDouble() * sourceHeight.toDouble() *
            scale * scale * assumedBytesPerPixel.toDouble()
        if (projectedByteCount > byteBudget.toDouble()) {
            scale *= sqrt(byteBudget.toDouble() / projectedByteCount)
        }
    }

    if (scale >= 1.0) {
        return BitmapDecodeTarget(sourceWidth, sourceHeight)
    }

    var targetWidth = floor(sourceWidth * scale).toInt().coerceAtLeast(1)
    var targetHeight = floor(sourceHeight * scale).toInt().coerceAtLeast(1)

    // Floating-point rounding should already keep this under budget. Retain an integer guard so
    // future changes cannot round a target back above the Canvas-safe allocation size.
    if (maxByteCount != null) {
        while (
            targetWidth.toLong() * targetHeight.toLong() > maxByteCount / assumedBytesPerPixel &&
            (targetWidth > 1 || targetHeight > 1)
        ) {
            if (targetWidth >= targetHeight && targetWidth > 1) {
                targetWidth--
            } else if (targetHeight > 1) {
                targetHeight--
            }
        }
    }

    return BitmapDecodeTarget(targetWidth, targetHeight)
}
