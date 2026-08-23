package com.hinnka.mycamera.processor

/**
 * Fixed-point input scaling used by MGC's RAW alignment pyramid.
 *
 * V25 MergeRaw loads `StaticMetadata.white_level` at 0x34d9704 and passes it as the second
 * argument of BuildAlignPyramidForBurst at 0x34d9718. The callee at 0x38c9800..0x38c9824
 * computes `frame_gain * 16384 / (white_level + 1)`. This is the capture's real sensor white
 * level, not a fixed tuning parameter.
 */
internal object MgcAlignmentInputScale {
    const val S16_DOMAIN_SCALE = 16384f

    fun compute(frameGain: Float, staticMetadataWhiteLevel: Float): Float {
        require(frameGain.isFinite() && frameGain > 0f)
        require(staticMetadataWhiteLevel.isFinite() && staticMetadataWhiteLevel >= 0f)
        return frameGain * S16_DOMAIN_SCALE / (staticMetadataWhiteLevel + 1f)
    }
}
