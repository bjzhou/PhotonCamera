package com.hinnka.mycamera.camera

object MultiFrameConfig {
    const val MIN_FRAME_COUNT = 3
    const val MAX_FRAME_COUNT = 20
    const val DEFAULT_FRAME_COUNT = 6
    const val SHORT_FRAME_COUNT = 1
    const val SHORT_FRAME_EXPOSURE_DIVISOR = 3.0
    const val LONG_FRAME_COUNT_DIVISOR = 4
    const val MIN_LONG_FRAME_COUNT = 1
    const val LONG_FRAME_EXPOSURE_EV = 2.5
    const val LONG_FRAME_MAX_EXPOSURE_TIME_NS = 10_000_000L

    fun normalizeFrameCount(frameCount: Int): Int {
        return frameCount.coerceIn(MIN_FRAME_COUNT, MAX_FRAME_COUNT)
    }

    fun normalFrameCount(totalFrameCount: Int): Int {
        val normalizedFrameCount = normalizeFrameCount(totalFrameCount)
        return normalizedFrameCount - SHORT_FRAME_COUNT - longFrameCount(normalizedFrameCount)
    }

    fun longFrameCount(totalFrameCount: Int): Int {
        return (normalizeFrameCount(totalFrameCount) / LONG_FRAME_COUNT_DIVISOR)
            .coerceAtLeast(MIN_LONG_FRAME_COUNT)
    }

    fun captureFrameCount(totalFrameCount: Int): Int {
        val normalizedFrameCount = normalizeFrameCount(totalFrameCount)
        return normalFrameCount(normalizedFrameCount) +
            SHORT_FRAME_COUNT +
            longFrameCount(normalizedFrameCount)
    }
}
