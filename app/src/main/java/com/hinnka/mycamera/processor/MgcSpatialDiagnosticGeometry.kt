package com.hinnka.mycamera.processor

internal data class MgcSpatialDiagnosticGeometry(
    val imageWidth: Int,
    val imageHeight: Int,
    val alignmentWidth: Int,
    val alignmentHeight: Int,
    val rejectionWidth: Int,
    val rejectionHeight: Int,
    val fixed16Width: Int,
    val fixed16Height: Int,
    val fixed16SampleCount: Long,
)

/** Exact host geometry required by the lifted Bayer/RGB Spatial noise-model AOT kernels. */
internal fun mgcSpatialDiagnosticGeometry(
    outputMode: MgcSpatialOutputMode,
    imageWidth: Int,
    imageHeight: Int,
): MgcSpatialDiagnosticGeometry {
    require(imageWidth >= 4 && imageHeight >= 4)
    val isBayer = outputMode == MgcSpatialOutputMode.BAYER
    val alignmentTileSize = if (isBayer) 8 else 16
    val fixed16Width = if (isBayer) {
        ceilDiv(imageWidth, 16) * 8
    } else {
        ceilDiv(imageWidth, 16) * 16
    }
    val fixed16Height = if (isBayer) {
        ceilDiv(imageHeight, 16) * 8
    } else {
        ceilDiv(imageHeight, 16) * 16
    }
    val fixed16Channels = if (isBayer) 4L else 3L
    return MgcSpatialDiagnosticGeometry(
        imageWidth = imageWidth,
        imageHeight = imageHeight,
        alignmentWidth = ceilDiv(imageWidth, alignmentTileSize),
        alignmentHeight = ceilDiv(imageHeight, alignmentTileSize),
        // V25 PrepareAccumulation requires RAW.width()/4 by RAW.height()/4.
        // Only the signal allocation is padded to complete AOT tiles. Rounding the
        // acceptance domain up makes the RGB atlas read past every source slice.
        rejectionWidth = imageWidth / 4,
        rejectionHeight = imageHeight / 4,
        fixed16Width = fixed16Width,
        fixed16Height = fixed16Height,
        fixed16SampleCount = fixed16Width.toLong() * fixed16Height * fixed16Channels,
    )
}

private fun ceilDiv(value: Int, divisor: Int): Int =
    (value + divisor - 1) / divisor
