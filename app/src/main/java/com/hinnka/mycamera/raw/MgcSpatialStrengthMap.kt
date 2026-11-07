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

    /**
     * V25 SpatialMerge::Finish keeps the AOT's complete RAW/4 cells in place and
     * initializes strength outside that region to Q8 identity (256). The extra
     * partial cell needed by our full-resolution denoiser is storage coverage,
     * not a change of image scale.
     */
    fun withIdentityBorder(fullWidth: Int, fullHeight: Int): MgcSpatialStrengthMap {
        require(width == fullWidth / 4 && height == fullHeight / 4)
        val coveredWidth = (fullWidth + 3) / 4
        val coveredHeight = (fullHeight + 3) / 4
        if (width == coveredWidth && height == coveredHeight) return this
        val covered = identityForFullResolution(fullWidth, fullHeight)
        for (y in 0 until height) {
            q8.copyInto(covered.q8, y * coveredWidth, y * width, (y + 1) * width)
        }
        return covered
    }

    companion object {
        /** Q8 identity multiplier used by MGC before a Spatial model is available. */
        private const val IDENTITY_Q8 = 256

        fun identityForFullResolution(
            fullWidth: Int,
            fullHeight: Int,
        ): MgcSpatialStrengthMap {
            require(fullWidth > 0 && fullHeight > 0)
            val strengthWidth = (fullWidth + 3) / 4
            val strengthHeight = (fullHeight + 3) / 4
            return MgcSpatialStrengthMap(
                width = strengthWidth,
                height = strengthHeight,
                q8 = ShortArray(strengthWidth * strengthHeight) {
                    IDENTITY_Q8.toShort()
                },
            )
        }
    }
}
