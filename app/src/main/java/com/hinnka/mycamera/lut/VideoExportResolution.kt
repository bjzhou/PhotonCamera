package com.hinnka.mycamera.lut

import kotlin.math.min
import kotlin.math.roundToInt

enum class VideoExportResolution(
    val longEdge: Int,
    val shortEdge: Int,
) {
    ORIGINAL(longEdge = 0, shortEdge = 0),
    UHD_8K(longEdge = 7680, shortEdge = 4320),
    UHD_4K(longEdge = 3840, shortEdge = 2160),
    FHD_1080P(longEdge = 1920, shortEdge = 1080),
    HD_720P(longEdge = 1280, shortEdge = 720),
}

enum class VideoExportSupport {
    SUPPORTED,
    MAY_FAIL,
    UNSUPPORTED,
    SOURCE_TOO_SMALL,
}

data class VideoExportOption(
    val resolution: VideoExportResolution,
    val outputWidth: Int,
    val outputHeight: Int,
    val targetVideoMime: String,
    val targetBitrate: Int?,
    val support: VideoExportSupport,
) {
    val isSelectable: Boolean
        get() = support == VideoExportSupport.SUPPORTED || support == VideoExportSupport.MAY_FAIL
}

internal data class VideoExportSize(
    val width: Int,
    val height: Int,
)

internal fun calculateVideoExportBitrate(
    sourceBitrate: Int?,
    sourceWidth: Int,
    sourceHeight: Int,
    outputWidth: Int,
    outputHeight: Int,
): Int? {
    if (sourceBitrate == null || sourceBitrate <= 0 ||
        sourceWidth <= 0 || sourceHeight <= 0 || outputWidth <= 0 || outputHeight <= 0
    ) {
        return null
    }
    val sourcePixels = sourceWidth.toLong() * sourceHeight.toLong()
    val outputPixels = outputWidth.toLong() * outputHeight.toLong()
    return (sourceBitrate.toDouble() * outputPixels.toDouble() / sourcePixels.toDouble())
        .roundToInt()
        .coerceAtLeast(1)
}

/**
 * Fits the source inside a standard video-resolution boundary without changing its aspect ratio.
 * Returns null when fulfilling the selected resolution would require upscaling the source.
 */
internal fun calculateVideoExportSize(
    sourceWidth: Int,
    sourceHeight: Int,
    resolution: VideoExportResolution,
): VideoExportSize? {
    if (sourceWidth <= 0 || sourceHeight <= 0) return null
    if (resolution == VideoExportResolution.ORIGINAL) {
        return VideoExportSize(sourceWidth, sourceHeight)
    }

    val isPortrait = sourceHeight > sourceWidth
    val maxWidth = if (isPortrait) resolution.shortEdge else resolution.longEdge
    val maxHeight = if (isPortrait) resolution.longEdge else resolution.shortEdge
    val scale = min(
        maxWidth.toDouble() / sourceWidth.toDouble(),
        maxHeight.toDouble() / sourceHeight.toDouble(),
    )
    if (scale > 1.000_001) return null

    return VideoExportSize(
        width = (sourceWidth * scale).roundToInt().coerceAtLeast(1),
        height = (sourceHeight * scale).roundToInt().coerceAtLeast(1),
    )
}
