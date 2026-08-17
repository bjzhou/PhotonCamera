package com.hinnka.mycamera.processor

/** Fixed-point input scaling used by MGC's RAW alignment pyramid. */
internal object MgcAlignmentInputScale {
    const val S16_DOMAIN_SCALE = 16384f

    fun compute(frameGain: Float, whiteLevel: Float): Float {
        require(frameGain.isFinite() && frameGain > 0f)
        require(whiteLevel.isFinite() && whiteLevel >= 0f)
        return frameGain * S16_DOMAIN_SCALE / (whiteLevel + 1f)
    }
}
