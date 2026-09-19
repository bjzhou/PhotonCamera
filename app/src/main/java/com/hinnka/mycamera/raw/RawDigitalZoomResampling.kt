package com.hinnka.mycamera.raw

import android.util.Size
import com.hinnka.mycamera.camera.RawBlackBorderCrop

/** Capture-time output policy, retained with the photo for every later RAW render. */
object RawDigitalZoomResampling {
    private const val ENABLED = "rawDigitalZoomResamplingEnabled"
    private const val WIDTH = "rawPhysicalOutputWidth"
    private const val HEIGHT = "rawPhysicalOutputHeight"

    fun captureProperties(enabled: Boolean): Map<String, String> =
        mapOf(ENABLED to enabled.toString())

    /** Resolve before the zoom crop removes the physical lens's native image dimensions. */
    fun resolveCaptureProperties(
        properties: Map<String, String>,
        crop: RawPhysicalCrop,
        blackBorderCrop: RawBlackBorderCrop,
    ): Map<String, String> {
        val cleared = properties - WIDTH - HEIGHT
        if (properties[ENABLED] != "true") return cleared
        val width = crop.activeSourceBounds.width() and -2
        val height = crop.activeSourceBounds.height() and -2
        if (crop.width == width && crop.height == height) return cleared

        // Use the same black-border policy as a capture at the physical focal length.
        // Aspect ratio and orientation are applied later, together with the output scale.
        val bounds = RawDefaultCropOverride.resolveRawBlackBorderDefaultCrop(
            width = width,
            height = height,
            rawBlackBorderCrop = blackBorderCrop,
            metadataDefaultCrop = null,
        )
        return cleared + mapOf(
            WIDTH to (bounds?.width() ?: width).toString(),
            HEIGHT to (bounds?.height() ?: height).toString(),
        )
    }

    fun readPhysicalSize(properties: Map<String, String>): Size? {
        if (properties[ENABLED] != "true") return null
        val width = properties[WIDTH]?.toIntOrNull()?.takeIf { it > 0 } ?: return null
        val height = properties[HEIGHT]?.toIntOrNull()?.takeIf { it > 0 } ?: return null
        return Size(width, height)
    }
}
