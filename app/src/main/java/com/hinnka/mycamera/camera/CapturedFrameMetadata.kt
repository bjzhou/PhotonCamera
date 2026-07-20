package com.hinnka.mycamera.camera

enum class MultiFrameCaptureRole {
    BASE,
    SHORT,
    LONG,
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
    val channelNoiseProfile: FloatArray? = null,
    val multiFrameCaptureRole: MultiFrameCaptureRole? = null,
)
