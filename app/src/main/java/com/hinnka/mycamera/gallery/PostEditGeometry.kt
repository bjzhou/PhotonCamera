package com.hinnka.mycamera.gallery

import android.graphics.RectF

/**
 * Geometry helpers for non-destructive edits applied after the source image has
 * been decoded into its normal display orientation.
 */
object PostEditGeometry {
    internal data class NormalizedBounds(
        val left: Float,
        val top: Float,
        val right: Float,
        val bottom: Float
    )

    fun normalizeRotation(degrees: Int): Int {
        val normalized = ((degrees % 360) + 360) % 360
        return (normalized / 90) * 90
    }

    fun rotatedDimensions(width: Int, height: Int, rotationDegrees: Int): Pair<Int, Int> {
        val normalizedRotation = normalizeRotation(rotationDegrees)
        return if (normalizedRotation == 90 || normalizedRotation == 270) {
            height to width
        } else {
            width to height
        }
    }

    fun rotationAfterClockwiseTurn(
        rotationDegrees: Int,
        mirrorHorizontal: Boolean
    ): Int {
        val delta = if (mirrorHorizontal) -90 else 90
        return normalizeRotation(rotationDegrees + delta)
    }

    /**
     * Maps a point selected in the rotated output back to the unrotated image
     * coordinates used by effects that run before post-edit geometry.
     */
    fun mapRotatedPointToSource(
        x: Float,
        y: Float,
        rotationDegrees: Int
    ): Pair<Float, Float> = mapEditedPointToSource(
        x = x,
        y = y,
        rotationDegrees = rotationDegrees,
        mirrorHorizontal = false
    )

    fun mapEditedPointToSource(
        x: Float,
        y: Float,
        rotationDegrees: Int,
        mirrorHorizontal: Boolean
    ): Pair<Float, Float> {
        val transformedX = if (mirrorHorizontal) 1f - x else x
        return when (normalizeRotation(rotationDegrees)) {
            90 -> y to (1f - transformedX)
            180 -> (1f - transformedX) to (1f - y)
            270 -> (1f - y) to transformedX
            else -> transformedX to y
        }
    }

    fun mirrorNormalizedRectHorizontally(rect: RectF): RectF {
        val mirrored = mirrorNormalizedBoundsHorizontally(
            left = rect.left,
            top = rect.top,
            right = rect.right,
            bottom = rect.bottom
        )
        return RectF(mirrored.left, mirrored.top, mirrored.right, mirrored.bottom)
    }

    internal fun mirrorNormalizedBoundsHorizontally(
        left: Float,
        top: Float,
        right: Float,
        bottom: Float
    ): NormalizedBounds {
        return NormalizedBounds(1f - right, top, 1f - left, bottom)
    }

    /**
     * Rotates a normalized crop rectangle with its image, preserving the same
     * selected pixels after a right-angle rotation.
     */
    fun rotateNormalizedRect(rect: RectF, clockwiseDegrees: Int): RectF {
        val rotated = rotateNormalizedBounds(
            left = rect.left,
            top = rect.top,
            right = rect.right,
            bottom = rect.bottom,
            clockwiseDegrees = clockwiseDegrees
        )
        return RectF(rotated.left, rotated.top, rotated.right, rotated.bottom)
    }

    internal fun rotateNormalizedBounds(
        left: Float,
        top: Float,
        right: Float,
        bottom: Float,
        clockwiseDegrees: Int
    ): NormalizedBounds {
        return when (normalizeRotation(clockwiseDegrees)) {
            90 -> NormalizedBounds(1f - bottom, left, 1f - top, right)
            180 -> NormalizedBounds(1f - right, 1f - bottom, 1f - left, 1f - top)
            270 -> NormalizedBounds(top, 1f - right, bottom, 1f - left)
            else -> NormalizedBounds(left, top, right, bottom)
        }
    }
}
