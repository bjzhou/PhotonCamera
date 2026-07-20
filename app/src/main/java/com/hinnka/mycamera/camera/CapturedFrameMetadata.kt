package com.hinnka.mycamera.camera

enum class MultiFrameCaptureRole {
    BASE,
    SHORT,
}

data class CapturedFrameMetadata(
    val sensorTimestampNs: Long,
    val frameNumber: Long,
    val exposureTimeNs: Long,
    val sensitivityIso: Int,
    val exposureProduct: Double,
    val focusDistanceDiopters: Float,
    val lensState: Int?,
    val rollingShutterSkewNs: Long?,
    val gyroWindow: GyroExposureWindow?,
    val multiFrameCaptureRole: MultiFrameCaptureRole? = null,
)
