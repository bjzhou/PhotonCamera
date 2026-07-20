package com.hinnka.mycamera.camera

object MultiFrameConfig {
    const val MIN_FRAME_COUNT = 2
    const val MAX_FRAME_COUNT = 20
    const val DEFAULT_FRAME_COUNT = 6
    const val SHORT_FRAME_COUNT = 1
    const val SHORT_FRAME_EXPOSURE_DIVISOR = 3.0

    fun normalizeFrameCount(frameCount: Int): Int {
        return frameCount.coerceIn(MIN_FRAME_COUNT, MAX_FRAME_COUNT)
    }

    fun normalFrameCount(totalFrameCount: Int): Int {
        return normalizeFrameCount(totalFrameCount) - SHORT_FRAME_COUNT
    }

    fun captureFrameCount(totalFrameCount: Int): Int {
        return normalFrameCount(totalFrameCount) + SHORT_FRAME_COUNT
    }
}
