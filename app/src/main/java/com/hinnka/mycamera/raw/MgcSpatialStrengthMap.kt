package com.hinnka.mycamera.raw

/**
 * Process-local Q8 variance multiplier produced by MGC Spatial.
 *
 * It is consumed by the default pre-DNG denoise pass and is deliberately not
 * serialized into DNG metadata.
 */
class MgcSpatialStrengthMap(
    val width: Int,
    val height: Int,
    val q8: ShortArray,
) {
    init {
        require(width > 0 && height > 0)
        require(q8.size == width * height)
    }

    override fun equals(other: Any?): Boolean =
        other is MgcSpatialStrengthMap &&
            width == other.width &&
            height == other.height &&
            q8.contentEquals(other.q8)

    override fun hashCode(): Int {
        var result = width
        result = 31 * result + height
        result = 31 * result + q8.contentHashCode()
        return result
    }
}
