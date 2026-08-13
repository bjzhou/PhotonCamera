package com.hinnka.mycamera.gallery

import android.graphics.RectF
import kotlin.math.abs
import kotlin.math.ceil
import kotlin.math.cos
import kotlin.math.max
import kotlin.math.min
import kotlin.math.sin

/**
 * Geometry helpers for non-destructive edits applied after the source image has
 * been decoded into its normal display orientation.
 */
object PostEditGeometry {
    const val MAX_STRAIGHTEN_DEGREES = 45f

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

    fun normalizeStraightenDegrees(degrees: Float): Float {
        if (!degrees.isFinite()) return 0f
        val clamped = degrees.coerceIn(-MAX_STRAIGHTEN_DEGREES, MAX_STRAIGHTEN_DEGREES)
        return if (abs(clamped) < 0.001f) 0f else clamped
    }

    /** Dimensions of the expanded bitmap after right-angle rotation and straightening. */
    fun editedDimensions(
        width: Int,
        height: Int,
        rotationDegrees: Int,
        straightenDegrees: Float
    ): Pair<Int, Int> {
        val (rotatedWidth, rotatedHeight) = rotatedDimensions(width, height, rotationDegrees)
        return straightenedDimensions(rotatedWidth, rotatedHeight, straightenDegrees)
    }

    fun straightenedDimensions(
        width: Int,
        height: Int,
        straightenDegrees: Float
    ): Pair<Int, Int> {
        if (width <= 0 || height <= 0) return width to height
        val angle = Math.toRadians(normalizeStraightenDegrees(straightenDegrees).toDouble())
        if (abs(angle) < STRAIGHTEN_EPSILON) return width to height
        val cosine = abs(cos(angle))
        val sine = abs(sin(angle))
        return ceil(width * cosine + height * sine).toInt().coerceAtLeast(1) to
            ceil(width * sine + height * cosine).toInt().coerceAtLeast(1)
    }

    /**
     * Largest centered axis-aligned rectangle that contains no transparent corner pixels after
     * straightening. Coordinates are normalized against the expanded rotated bitmap.
     */
    fun straightenSafeCropRect(
        width: Int,
        height: Int,
        straightenDegrees: Float
    ): RectF {
        val bounds = straightenSafeNormalizedBounds(width, height, straightenDegrees)
        return RectF(bounds.left, bounds.top, bounds.right, bounds.bottom)
    }

    /**
     * Largest centered crop of [pixelAspect] that contains no transparent corner pixels after
     * straightening. Unlike fitting an aspect inside [straightenSafeCropRect], this solves the
     * rotated-edge constraints directly, so the requested aspect is preserved without leaving an
     * unnecessary gap around the crop.
     */
    fun straightenSafeCropRectForAspect(
        width: Int,
        height: Int,
        straightenDegrees: Float,
        pixelAspect: Float
    ): RectF {
        val bounds = straightenSafeNormalizedBoundsForAspect(
            width = width,
            height = height,
            straightenDegrees = straightenDegrees,
            pixelAspect = pixelAspect
        )
        return RectF(bounds.left, bounds.top, bounds.right, bounds.bottom)
    }

    internal fun straightenSafeNormalizedBounds(
        width: Int,
        height: Int,
        straightenDegrees: Float
    ): NormalizedBounds {
        if (width <= 0 || height <= 0) return FULL_BOUNDS
        val angle = abs(Math.toRadians(normalizeStraightenDegrees(straightenDegrees).toDouble()))
        if (angle < STRAIGHTEN_EPSILON) return FULL_BOUNDS

        val sourceWidth = width.toDouble()
        val sourceHeight = height.toDouble()
        val cosine = abs(cos(angle))
        val sine = abs(sin(angle))
        val outputWidth = sourceWidth * cosine + sourceHeight * sine
        val outputHeight = sourceWidth * sine + sourceHeight * cosine
        val (innerWidth, innerHeight) = largestInnerRect(sourceWidth, sourceHeight, sine, cosine)
        val safeWidth = (innerWidth - SAFE_CROP_INSET_PX * 2.0).coerceAtLeast(1.0)
        val safeHeight = (innerHeight - SAFE_CROP_INSET_PX * 2.0).coerceAtLeast(1.0)

        val normalizedWidth = (safeWidth / outputWidth).coerceIn(0.0, 1.0).toFloat()
        val normalizedHeight = (safeHeight / outputHeight).coerceIn(0.0, 1.0).toFloat()
        val left = (1f - normalizedWidth) / 2f
        val top = (1f - normalizedHeight) / 2f
        return NormalizedBounds(left, top, left + normalizedWidth, top + normalizedHeight)
    }

    internal fun straightenSafeNormalizedBoundsForAspect(
        width: Int,
        height: Int,
        straightenDegrees: Float,
        pixelAspect: Float
    ): NormalizedBounds {
        if (width <= 0 || height <= 0 || !pixelAspect.isFinite() || pixelAspect <= 0f) {
            return straightenSafeNormalizedBounds(width, height, straightenDegrees)
        }

        val angle = abs(Math.toRadians(normalizeStraightenDegrees(straightenDegrees).toDouble()))
        val cosine = abs(cos(angle))
        val sine = abs(sin(angle))
        val (outputWidth, outputHeight) = expandedDimensions(width, height, straightenDegrees)
        val sourceInset = if (angle < STRAIGHTEN_EPSILON) 0.0 else SAFE_CROP_INSET_PX * 2.0
        val availableSourceWidth = (width - sourceInset).coerceAtLeast(1.0)
        val availableSourceHeight = (height - sourceInset).coerceAtLeast(1.0)
        val aspect = pixelAspect.toDouble()

        // Inverse-rotating an axis-aligned crop corner gives these two source-bound constraints:
        //   cosine * cropWidth + sine * cropHeight <= sourceWidth
        //   sine * cropWidth + cosine * cropHeight <= sourceHeight
        val cropHeight = min(
            availableSourceWidth / (cosine * aspect + sine),
            availableSourceHeight / (sine * aspect + cosine)
        ).coerceAtLeast(1.0)
        val cropWidth = (cropHeight * aspect).coerceAtLeast(1.0)
        val normalizedWidth = (cropWidth / outputWidth).coerceIn(0.0, 1.0).toFloat()
        val normalizedHeight = (cropHeight / outputHeight).coerceIn(0.0, 1.0).toFloat()
        val left = (1f - normalizedWidth) / 2f
        val top = (1f - normalizedHeight) / 2f
        return NormalizedBounds(left, top, left + normalizedWidth, top + normalizedHeight)
    }

    /**
     * Preserves crop center, pixel aspect and relative area while the straightening angle changes,
     * then fits the result inside the new no-black-corner region.
     */
    fun remapCropRectForStraighten(
        rect: RectF?,
        width: Int,
        height: Int,
        oldDegrees: Float,
        newDegrees: Float
    ): RectF {
        val bounds = remapNormalizedCropBoundsForStraighten(
            rect = rect?.let { NormalizedBounds(it.left, it.top, it.right, it.bottom) },
            width = width,
            height = height,
            oldDegrees = oldDegrees,
            newDegrees = newDegrees
        )
        return RectF(bounds.left, bounds.top, bounds.right, bounds.bottom)
    }

    internal fun remapNormalizedCropBoundsForStraighten(
        rect: NormalizedBounds?,
        width: Int,
        height: Int,
        oldDegrees: Float,
        newDegrees: Float
    ): NormalizedBounds {
        if (width <= 0 || height <= 0) return rect ?: FULL_BOUNDS

        val oldOutput = expandedDimensions(width, height, oldDegrees)
        val newOutput = expandedDimensions(width, height, newDegrees)
        val normalizedRect = rect?.let {
            NormalizedBounds(
                left = min(it.left, it.right).coerceIn(0f, 1f),
                top = min(it.top, it.bottom).coerceIn(0f, 1f),
                right = max(it.left, it.right).coerceIn(0f, 1f),
                bottom = max(it.top, it.bottom).coerceIn(0f, 1f)
            )
        }?.takeIf { it.width > STRAIGHTEN_EPSILON && it.height > STRAIGHTEN_EPSILON }

        val pixelAspect = normalizedRect?.let {
            (it.width * oldOutput.first / (it.height * oldOutput.second))
                .coerceAtLeast(STRAIGHTEN_EPSILON)
        } ?: (width.toDouble() / height).coerceAtLeast(STRAIGHTEN_EPSILON)
        val oldBounds = straightenSafeNormalizedBoundsForAspect(
            width,
            height,
            oldDegrees,
            pixelAspect.toFloat()
        )
        val newBounds = straightenSafeNormalizedBoundsForAspect(
            width,
            height,
            newDegrees,
            pixelAspect.toFloat()
        )
        val crop = normalizedRect?.let {
            NormalizedBounds(
                left = it.left.coerceIn(oldBounds.left, oldBounds.right),
                top = it.top.coerceIn(oldBounds.top, oldBounds.bottom),
                right = it.right.coerceIn(oldBounds.left, oldBounds.right),
                bottom = it.bottom.coerceIn(oldBounds.top, oldBounds.bottom)
            )
        }?.takeIf { it.width > STRAIGHTEN_EPSILON && it.height > STRAIGHTEN_EPSILON }
            ?: oldBounds

        val oldSafePixelWidth = oldBounds.width * oldOutput.first
        val oldSafePixelHeight = oldBounds.height * oldOutput.second
        val cropPixelWidth = crop.width * oldOutput.first
        val cropPixelHeight = crop.height * oldOutput.second
        val cropScale = min(
            cropPixelWidth / oldSafePixelWidth,
            cropPixelHeight / oldSafePixelHeight
        ).coerceIn(0.0, 1.0)

        val centerFractionX = ((crop.centerX - oldBounds.left) / oldBounds.width)
            .coerceIn(0.0, 1.0)
        val centerFractionY = ((crop.centerY - oldBounds.top) / oldBounds.height)
            .coerceIn(0.0, 1.0)
        val newSafePixelWidth = newBounds.width * newOutput.first
        val newSafePixelHeight = newBounds.height * newOutput.second
        val cropWidth = newSafePixelWidth * cropScale
        val cropHeight = newSafePixelHeight * cropScale

        val availableWidth = (newBounds.right - newBounds.left).coerceAtLeast(0f)
        val availableHeight = (newBounds.bottom - newBounds.top).coerceAtLeast(0f)
        val normalizedWidth = (cropWidth / newOutput.first).toFloat()
            .coerceIn(0f, availableWidth)
        val normalizedHeight = (cropHeight / newOutput.second).toFloat()
            .coerceIn(0f, availableHeight)
        val desiredCenterX = newBounds.left + centerFractionX.toFloat() * newBounds.width.toFloat()
        val desiredCenterY = newBounds.top + centerFractionY.toFloat() * newBounds.height.toFloat()
        // Float subtraction can make the computed maximum a few ULPs smaller than the minimum
        // even after normalizedWidth was clamped to the available width. Clamp in two ordered
        // steps and explicitly cap the far edge so no empty ClosedFloatingPointRange is created.
        val maxLeft = max(newBounds.left, newBounds.right - normalizedWidth)
        val maxTop = max(newBounds.top, newBounds.bottom - normalizedHeight)
        val left = (desiredCenterX - normalizedWidth / 2f)
            .coerceAtLeast(newBounds.left)
            .coerceAtMost(maxLeft)
        val top = (desiredCenterY - normalizedHeight / 2f)
            .coerceAtLeast(newBounds.top)
            .coerceAtMost(maxTop)
        return NormalizedBounds(
            left = left,
            top = top,
            right = min(newBounds.right, left + normalizedWidth),
            bottom = min(newBounds.bottom, top + normalizedHeight)
        )
    }

    fun rotationAfterClockwiseTurn(
        rotationDegrees: Int,
        mirrorHorizontal: Boolean
    ): Int {
        val delta = if (mirrorHorizontal) -90 else 90
        return normalizeRotation(rotationDegrees + delta)
    }

    /** Maps an expanded straightened-bitmap point back to the pre-straighten bitmap. */
    fun mapStraightenedPointToSource(
        x: Float,
        y: Float,
        width: Int,
        height: Int,
        straightenDegrees: Float
    ): Pair<Float, Float> {
        if (width <= 0 || height <= 0) return x to y
        val angle = Math.toRadians(normalizeStraightenDegrees(straightenDegrees).toDouble())
        if (abs(angle) < STRAIGHTEN_EPSILON) return x.coerceIn(0f, 1f) to y.coerceIn(0f, 1f)

        val cosine = cos(angle)
        val sine = sin(angle)
        val (outputWidth, outputHeight) = expandedDimensions(width, height, straightenDegrees)
        val rotatedX = x * outputWidth - outputWidth / 2.0
        val rotatedY = y * outputHeight - outputHeight / 2.0
        val sourceX = cosine * rotatedX + sine * rotatedY
        val sourceY = -sine * rotatedX + cosine * rotatedY
        return ((sourceX + width / 2.0) / width).toFloat().coerceIn(0f, 1f) to
            ((sourceY + height / 2.0) / height).toFloat().coerceIn(0f, 1f)
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

    private fun expandedDimensions(width: Int, height: Int, degrees: Float): Pair<Double, Double> {
        val angle = Math.toRadians(normalizeStraightenDegrees(degrees).toDouble())
        val cosine = abs(cos(angle))
        val sine = abs(sin(angle))
        return (width * cosine + height * sine) to (width * sine + height * cosine)
    }

    private fun largestInnerRect(
        width: Double,
        height: Double,
        sine: Double,
        cosine: Double
    ): Pair<Double, Double> {
        val widthIsLonger = width >= height
        val longSide = max(width, height)
        val shortSide = min(width, height)
        if (shortSide <= 2.0 * sine * cosine * longSide || abs(sine - cosine) < STRAIGHTEN_EPSILON) {
            val halfShortSide = 0.5 * shortSide
            return if (widthIsLonger) {
                (halfShortSide / sine) to (halfShortSide / cosine)
            } else {
                (halfShortSide / cosine) to (halfShortSide / sine)
            }
        }

        val cosineDoubleAngle = cosine * cosine - sine * sine
        return ((width * cosine - height * sine) / cosineDoubleAngle) to
            ((height * cosine - width * sine) / cosineDoubleAngle)
    }

    private val NormalizedBounds.width: Double
        get() = (right - left).toDouble()

    private val NormalizedBounds.height: Double
        get() = (bottom - top).toDouble()

    private val NormalizedBounds.centerX: Double
        get() = (left + right).toDouble() / 2.0

    private val NormalizedBounds.centerY: Double
        get() = (top + bottom).toDouble() / 2.0

    private val FULL_BOUNDS = NormalizedBounds(0f, 0f, 1f, 1f)
    private const val SAFE_CROP_INSET_PX = 2.0
    private const val STRAIGHTEN_EPSILON = 1e-7
}
