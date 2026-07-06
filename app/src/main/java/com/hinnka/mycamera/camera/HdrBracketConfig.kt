package com.hinnka.mycamera.camera

internal object HdrBracketConfig {
    const val RAW_SIDE_EV = 3f
    const val YUV_SIDE_EV = 2f
    const val RAW_REFERENCE_FRAME_COUNT = 3

    fun rawReferenceFrameCount(): Int {
        return RAW_REFERENCE_FRAME_COUNT
    }
}
