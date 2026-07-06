package com.hinnka.mycamera.raw

import android.graphics.Rect
import com.hinnka.mycamera.camera.RawBlackBorderCrop
import kotlin.math.max

internal object RawDefaultCropOverride {
    fun resolveRawBlackBorderDefaultCrop(
        width: Int,
        height: Int,
        rotation: Int,
        rawBlackBorderCrop: RawBlackBorderCrop,
        metadataDefaultCrop: Rect?
    ): Rect? {
        if (!rawBlackBorderCrop.hasCrop) return null
        val baseMargins = sanitizeCropWithinImage(metadataDefaultCrop, width, height)
            ?.let {
                CropMargins(
                    left = it.left,
                    top = it.top,
                    right = width - it.right,
                    bottom = height - it.bottom
                )
            }
            ?: CropMargins(left = 0, top = 0, right = 0, bottom = 0)
        val sourceMargins = rawBlackBorderCrop.toSourceMargins(
            outputReferenceRotationForCrop(rotation)
        )
        val maxHorizontalCrop = (width - 2).coerceAtLeast(0)
        val maxVerticalCrop = (height - 2).coerceAtLeast(0)
        val left = max(baseMargins.left, sourceMargins.left)
            .coerceAtLeast(0)
            .coerceAtMost(maxHorizontalCrop)
        val right = max(baseMargins.right, sourceMargins.right)
            .coerceAtLeast(0)
            .coerceAtMost(maxHorizontalCrop - left)
        val top = max(baseMargins.top, sourceMargins.top)
            .coerceAtLeast(0)
            .coerceAtMost(maxVerticalCrop)
        val bottom = max(baseMargins.bottom, sourceMargins.bottom)
            .coerceAtLeast(0)
            .coerceAtMost(maxVerticalCrop - top)
        val crop = Rect(left, top, width - right, height - bottom)
        return crop.takeIf { !it.isEmpty && !it.isFullImage(width, height) }
    }

    fun sanitizeCropWithinImage(crop: Rect?, width: Int, height: Int): Rect? {
        if (crop == null || crop.isEmpty) return null
        return if (
            crop.left >= 0 &&
            crop.top >= 0 &&
            crop.right <= width &&
            crop.bottom <= height
        ) {
            Rect(crop)
        } else {
            null
        }
    }

    private data class CropMargins(
        val left: Int,
        val top: Int,
        val right: Int,
        val bottom: Int
    )

    private fun RawBlackBorderCrop.toSourceMargins(rotation: Int): CropMargins {
        val normalizedRotation = ((rotation % 360) + 360) % 360
        return when (normalizedRotation) {
            90 -> CropMargins(
                left = topPx,
                top = rightPx,
                right = bottomPx,
                bottom = leftPx
            )

            180 -> CropMargins(
                left = rightPx,
                top = bottomPx,
                right = leftPx,
                bottom = topPx
            )

            270 -> CropMargins(
                left = bottomPx,
                top = leftPx,
                right = topPx,
                bottom = rightPx
            )

            else -> CropMargins(
                left = leftPx,
                top = topPx,
                right = rightPx,
                bottom = bottomPx
            )
        }
    }

    private fun outputReferenceRotationForCrop(rotation: Int): Int {
        // Lens crop values are configured in portrait output space; landscape output rotates that frame.
        return when (((rotation % 360) + 360) % 360) {
            0 -> 90
            180 -> 270
            else -> rotation
        }
    }

    private fun Rect.isFullImage(width: Int, height: Int): Boolean {
        return left == 0 && top == 0 && right == width && bottom == height
    }
}
