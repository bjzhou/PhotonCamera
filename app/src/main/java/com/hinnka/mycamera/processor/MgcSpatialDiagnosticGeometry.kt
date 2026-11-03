package com.hinnka.mycamera.processor

internal data class MgcSpatialDiagnosticGeometry(
    val imageWidth: Int,
    val imageHeight: Int,
    val alignmentWidth: Int,
    val alignmentHeight: Int,
    val rejectionWidth: Int,
    val rejectionHeight: Int,
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
    )
}

private fun ceilDiv(value: Int, divisor: Int): Int =
    (value + divisor - 1) / divisor
