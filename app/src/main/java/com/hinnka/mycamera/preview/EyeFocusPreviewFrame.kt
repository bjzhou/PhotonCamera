package com.hinnka.mycamera.preview

import android.graphics.Bitmap

data class EyeFocusPreviewFrame(
    val bitmap: Bitmap,
    val sampleStartedAtNanos: Long,
    val captureDurationNanos: Long,
)

data class EyeFocusProcessingTiming(
    val captureDurationNanos: Long,
    val processingDurationNanos: Long,
    val endToEndDurationNanos: Long,
)

/** Face-region soft mask derived from one validated face-detection bounding box. */
data class PortraitMaskSnapshot(
    val width: Int,
    val height: Int,
    val confidence: FloatArray,
    val sampleElapsedRealtimeNanos: Long,
    val cameraId: String? = null,
    val sensorOrientationDegrees: Int = 0,
    val isFrontFacing: Boolean = false,
) {
    init {
        require(width > 0 && height > 0)
        require(confidence.size == width * height)
        require(confidence.all { it.isFinite() && it in 0f..1f })
        require(sampleElapsedRealtimeNanos > 0L)
    }
}
