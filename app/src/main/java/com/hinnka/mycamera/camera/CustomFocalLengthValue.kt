package com.hinnka.mycamera.camera

import java.util.Locale
import kotlin.math.abs
import kotlin.math.roundToInt

/**
 * Encodes custom zoom stops while preserving the existing Float preference type.
 *
 * Positive values are 35mm-equivalent focal lengths in millimeters.
 * Negative values are exact zoom ratios, e.g. -2f means 2x.
 */
object CustomFocalLengthValue {
    private const val FOCAL_LENGTH_TOLERANCE = 0.5f
    private const val ZOOM_RATIO_TOLERANCE = 0.01f

    fun parseInput(input: String): Float? {
        val normalized = input.trim().replace(" ", "")
        if (normalized.isEmpty()) return null
        return if (normalized.endsWith("x", ignoreCase = true)) {
            val ratio = normalized.dropLast(1).toFloatOrNull() ?: return null
            if (ratio > 0f) -ratio else null
        } else {
            val focalLength = normalized.toFloatOrNull() ?: return null
            if (focalLength > 0f) focalLength else null
        }
    }

    fun parsePersisted(value: String): Float? {
        return parseInput(value) ?: value.toFloatOrNull()?.takeIf { it != 0f }
    }

    fun serialize(value: Float): String {
        return if (isZoomRatio(value)) {
            "${formatNumber(zoomRatio(value))}x"
        } else {
            formatNumber(value)
        }
    }

    fun displayText(value: Float): String {
        return if (isZoomRatio(value)) {
            "${formatNumber(zoomRatio(value))}x"
        } else {
            "${value.roundToInt()}mm"
        }
    }

    fun isZoomRatio(value: Float): Boolean = value < 0f

    fun zoomRatio(value: Float): Float = abs(value)

    fun matches(a: Float, b: Float): Boolean {
        return when {
            a == 0f || b == 0f -> a == b
            isZoomRatio(a) && isZoomRatio(b) -> abs(zoomRatio(a) - zoomRatio(b)) < ZOOM_RATIO_TOLERANCE
            !isZoomRatio(a) && !isZoomRatio(b) -> abs(a - b) < FOCAL_LENGTH_TOLERANCE
            else -> false
        }
    }

    fun toZoomRatio(
        value: Float,
        mainCamera: CameraInfo?,
        ratioBaseCamera: CameraInfo? = mainCamera
    ): Float? {
        if (value == 0f) return null
        if (isZoomRatio(value)) {
            val baseZoom = ratioBaseCamera?.displayIntrinsicZoomRatio?.takeIf { it > 0f } ?: 1f
            return baseZoom * zoomRatio(value)
        }
        val baseFocalLength = mainCamera?.focalLength35mmEquivalent ?: return null
        if (baseFocalLength <= 0f) return null
        return value / baseFocalLength
    }

    fun sortKey(value: Float, mainCamera: CameraInfo? = null): Float {
        return toZoomRatio(value, mainCamera, mainCamera) ?: if (isZoomRatio(value)) zoomRatio(value) else value
    }

    private fun formatNumber(value: Float): String {
        val roundedInt = value.roundToInt()
        return if (abs(value - roundedInt) < 0.05f) {
            roundedInt.toString()
        } else {
            String.format(Locale.US, "%.1f", value)
        }
    }
}
