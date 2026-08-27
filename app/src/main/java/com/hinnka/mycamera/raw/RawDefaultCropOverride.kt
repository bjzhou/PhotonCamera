package com.hinnka.mycamera.raw

import android.graphics.Rect
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.camera.RawBlackBorderCrop
import com.hinnka.mycamera.utils.BitmapUtils
import kotlin.math.abs
import kotlin.math.ceil
import kotlin.math.floor
import kotlin.math.max

internal object RawDefaultCropOverride {
    private const val DEFAULT_CROP_ASPECT_TOLERANCE = 0.005f

    fun resolveRawBlackBorderDefaultCrop(
        width: Int,
        height: Int,
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
        val sourceMargins = CropMargins(
            left = rawBlackBorderCrop.leftPx,
            top = rawBlackBorderCrop.topPx,
            right = rawBlackBorderCrop.rightPx,
            bottom = rawBlackBorderCrop.bottomPx,
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
        val crop = alignToBayerPhase(
            crop = Rect(left, top, width - right, height - bottom),
            width = width,
            height = height,
        ) ?: return null
        return crop.takeIf { !it.isFullImage(width, height) }
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
            val calculated = BitmapUtils.calculateProcessedRect(
                width = width,
                height = height,
                aspectRatio = aspectRatio,
                cropRegion = userCrop,
                rotation = 0,
            )
            return alignToBayerPhase(calculated, width, height)
                ?: Rect(0, 0, width and -2, height and -2)
        }

        val safeUserCrop = sanitizeUserCrop(userCrop, width, height)
        val userCropInsideMetadata = safeUserCrop
            ?.takeUnless { it.isFullImage(width, height) }
            ?.let { user ->
                Rect(safeMetadataCrop).takeIf { it.intersect(user) && !it.isEmpty }
            }
        val baseCrop = userCropInsideMetadata ?: safeMetadataCrop
        val sourceIsLandscape = baseCrop.width() >= baseCrop.height()
        val resolved = if (
            aspectRatio != null &&
            !baseCrop.hasEquivalentAspect(aspectRatio, sourceIsLandscape)
        ) {
            cropSourceBoundsToAspect(baseCrop, aspectRatio, sourceIsLandscape)
        } else {
            Rect(baseCrop)
        }
        return alignToBayerPhase(resolved, width, height)
            ?: Rect(0, 0, width and -2, height and -2)
    }

    /**
     * Shrinks a RAW crop onto the original CFA lattice.
     *
     * The top-left coordinate stays on the same Bayer phase as the supplied phase origin and both
     * dimensions contain complete 2x2 CFA cells. The crop is only moved inwards, so pixels outside
     * the requested field of view can never leak into statistics. RAW_SENSOR is a 16-bit unpacked
     * plane; RAW10's four-pixel packing rule must not be imposed on this coordinate system.
     */
    fun alignToBayerPhase(
        crop: Rect?,
        width: Int,
        height: Int,
        phaseOriginX: Int = 0,
        phaseOriginY: Int = 0,
    ): Rect? {
        val safe = sanitizeCropWithinImage(crop, width, height) ?: return null
        val left = alignUpFromOrigin(safe.left, phaseOriginX, 2)
        val top = alignUpFromOrigin(safe.top, phaseOriginY, 2)
        val alignedWidth = alignDown(safe.right - left, 2)
        val alignedHeight = alignDown(safe.bottom - top, 2)
        if (alignedWidth < 2 || alignedHeight < 2) return null
        return Rect(left, top, left + alignedWidth, top + alignedHeight)
    }

    fun scaleToSize(
        crop: Rect,
        sourceWidth: Int,
        sourceHeight: Int,
        targetWidth: Int,
        targetHeight: Int,
    ): Rect? {
        if (sourceWidth <= 0 || sourceHeight <= 0 || targetWidth <= 0 || targetHeight <= 0) {
            return null
        }
        val scaled = Rect(
            floor(crop.left.toDouble() * targetWidth / sourceWidth).toInt(),
            floor(crop.top.toDouble() * targetHeight / sourceHeight).toInt(),
            ceil(crop.right.toDouble() * targetWidth / sourceWidth).toInt(),
            ceil(crop.bottom.toDouble() * targetHeight / sourceHeight).toInt(),
        )
        return alignToBayerPhase(scaled, targetWidth, targetHeight)
    }

    private data class CropMargins(
        val left: Int,
        val top: Int,
        val right: Int,
        val bottom: Int
    )

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

    private fun alignDownToEven(value: Int): Int = alignDown(value, 2)

    private fun alignDown(value: Int, alignment: Int): Int =
        if (value <= 0) 0 else value - value % alignment

    private fun alignUp(value: Int, alignment: Int): Int =
        if (value <= 0) 0 else value + (alignment - value % alignment) % alignment

    private fun alignUpFromOrigin(value: Int, origin: Int, alignment: Int): Int =
        origin + alignUp((value - origin).coerceAtLeast(0), alignment)

    private fun Rect.isFullImage(width: Int, height: Int): Boolean {
        return left == 0 && top == 0 && right == width && bottom == height
    }
}
