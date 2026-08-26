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
