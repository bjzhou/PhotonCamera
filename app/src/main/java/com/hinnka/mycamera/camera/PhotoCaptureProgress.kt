package com.hinnka.mycamera.camera

/** Sensor capture only; image delivery, merging and saving are not part of this progress. */
data class PhotoCaptureProgress(
    val captureId: Long,
    val startedElapsedNs: Long,
    val estimatedDurationNs: Long,
) {
    fun fractionAt(elapsedRealtimeNs: Long): Float {
        val elapsedNs = (elapsedRealtimeNs - startedElapsedNs).coerceAtLeast(0L)
        return (elapsedNs.toDouble() / estimatedDurationNs.coerceAtLeast(1L))
            .coerceIn(0.0, 1.0).toFloat()
    }
}
