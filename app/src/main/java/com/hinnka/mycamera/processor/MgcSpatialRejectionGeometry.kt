package com.hinnka.mycamera.processor

/** Texture domains used by MGC Spatial's rejection pipeline. */
internal data class MgcSpatialRejectionGeometry(
    val bayerQuadWidth: Int,
    val bayerQuadHeight: Int,
    val guideWidth: Int,
    val guideHeight: Int,
    val rejectionWidth: Int,
    val rejectionHeight: Int,
    val mergeWeightWidth: Int,
    val mergeWeightHeight: Int,
    val filterWidth: Int,
    val filterHeight: Int,
)

/**
 * Recovered V25 contract:
 *
 * - GuideImage and GenerateRejectionTexture have identical RAW/4 extents.
 * - DilateMask and Downsample2x produce an exact half-sized RAW/8 merge-weight domain.
 * - Downsample4xAndFilterRejectionMap works on a further 4x-decimated filter domain.
 */
internal fun mgcSpatialRejectionGeometry(
    imageWidth: Int,
    imageHeight: Int,
    filterDownsample: Int,
): MgcSpatialRejectionGeometry {
    require(imageWidth > 0 && imageHeight > 0)
    require(filterDownsample > 0)
    val guideWidth = ceilDiv(imageWidth, 4)
    val guideHeight = ceilDiv(imageHeight, 4)
    val mergeWeightWidth = guideWidth / 2
    val mergeWeightHeight = guideHeight / 2
    require(mergeWeightWidth > 0 && mergeWeightHeight > 0)
    return MgcSpatialRejectionGeometry(
        bayerQuadWidth = ceilDiv(imageWidth, 2),
        bayerQuadHeight = ceilDiv(imageHeight, 2),
        guideWidth = guideWidth,
        guideHeight = guideHeight,
        rejectionWidth = guideWidth,
        rejectionHeight = guideHeight,
        mergeWeightWidth = mergeWeightWidth,
        mergeWeightHeight = mergeWeightHeight,
        filterWidth = ceilDiv(mergeWeightWidth, filterDownsample),
        filterHeight = ceilDiv(mergeWeightHeight, filterDownsample),
    )
}

private fun ceilDiv(value: Int, divisor: Int): Int =
    (value + divisor - 1) / divisor
