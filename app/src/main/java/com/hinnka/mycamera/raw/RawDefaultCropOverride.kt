package com.hinnka.mycamera.raw

import android.graphics.Rect
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.camera.RawBlackBorderCrop
import com.hinnka.mycamera.utils.BitmapUtils
import kotlin.math.abs
import kotlin.math.max

internal object RawDefaultCropOverride {
    private const val DEFAULT_CROP_ASPECT_TOLERANCE = 0.005f

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

    /**
     * Resolves the source rectangle used by RAW rendering, exposure metering and PGTM statistics.
     *
     * Capture-time profile generation must use this same calculation as later RAW reconstruction.
     * Otherwise a shared PGTM can be trained over black-border pixels even though the renderer
     * crops them from the image.
     */
    fun resolveOutputSourceBounds(
        width: Int,
        height: Int,
        aspectRatio: AspectRatio?,
        userCrop: Rect?,
        metadataDefaultCrop: Rect?,
    ): Rect {
        val safeMetadataCrop = sanitizeCropWithinImage(metadataDefaultCrop, width, height)
        if (safeMetadataCrop == null) {
            return BitmapUtils.calculateProcessedRect(
                width = width,
                height = height,
                aspectRatio = aspectRatio,
                cropRegion = userCrop,
                rotation = 0,
            )
        }

        val safeUserCrop = sanitizeUserCrop(userCrop, width, height)
        val userCropInsideMetadata = safeUserCrop
            ?.takeUnless { it.isFullImage(width, height) }
            ?.let { user ->
                Rect(safeMetadataCrop).takeIf { it.intersect(user) && !it.isEmpty }
            }
        val baseCrop = userCropInsideMetadata ?: safeMetadataCrop
        val sourceIsLandscape = baseCrop.width() >= baseCrop.height()
        return if (
            aspectRatio != null &&
            !baseCrop.hasEquivalentAspect(aspectRatio, sourceIsLandscape)
        ) {
            cropSourceBoundsToAspect(baseCrop, aspectRatio, sourceIsLandscape)
        } else {
            Rect(baseCrop)
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

    private fun cropSourceBoundsToAspect(
        bounds: Rect,
        aspectRatio: AspectRatio,
        sourceIsLandscape: Boolean,
    ): Rect {
        val targetRatio = aspectRatio.getValue(sourceIsLandscape)
        val sourceRatio = bounds.width().toFloat() / bounds.height().toFloat()
        val cropWidth: Int
        val cropHeight: Int
        if (sourceRatio > targetRatio) {
            cropHeight = bounds.height()
            cropWidth = alignDownToEven((cropHeight * targetRatio).toInt())
        } else {
            cropWidth = bounds.width()
            cropHeight = alignDownToEven((cropWidth / targetRatio).toInt())
        }
        val left = bounds.left + (bounds.width() - cropWidth).coerceAtLeast(0) / 2
        val top = bounds.top + (bounds.height() - cropHeight).coerceAtLeast(0) / 2
        return Rect(left, top, left + cropWidth, top + cropHeight)
    }

    private fun Rect.hasEquivalentAspect(
        aspectRatio: AspectRatio,
        sourceIsLandscape: Boolean,
    ): Boolean {
        if (width() <= 0 || height() <= 0) return false
        val targetRatio = aspectRatio.getValue(sourceIsLandscape)
        val sourceRatio = width().toFloat() / height().toFloat()
        return abs(sourceRatio - targetRatio) / targetRatio <= DEFAULT_CROP_ASPECT_TOLERANCE
    }

    private fun sanitizeUserCrop(crop: Rect?, width: Int, height: Int): Rect? {
        if (crop == null || crop.isEmpty) return null
        val currentIsLandscape = width >= height
        val cropIsLandscape = crop.width() >= crop.height()
        val alignedCrop = if (cropIsLandscape != currentIsLandscape) {
            Rect(crop.top, crop.left, crop.bottom, crop.right)
        } else {
            Rect(crop)
        }
        val imageBounds = Rect(0, 0, width, height)
        return alignedCrop.takeIf {
            it.intersect(imageBounds) && !it.isEmpty
        }
    }

    private fun alignDownToEven(value: Int): Int {
        return if (value <= 1) value else value and 1.inv()
    }

    private fun Rect.isFullImage(width: Int, height: Int): Boolean {
        return left == 0 && top == 0 && right == width && bottom == height
    }
}
