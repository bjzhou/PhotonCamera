package com.hinnka.mycamera.camera

object MultiFrameConfig {
    const val MIN_FRAME_COUNT = 2
    const val MAX_FRAME_COUNT = 20
    const val DEFAULT_FRAME_COUNT = 6

    fun normalizeFrameCount(frameCount: Int): Int {
        return frameCount.coerceIn(MIN_FRAME_COUNT, MAX_FRAME_COUNT)
    }
}
