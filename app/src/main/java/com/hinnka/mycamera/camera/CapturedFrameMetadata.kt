package com.hinnka.mycamera.camera

import android.hardware.camera2.CaptureRequest

enum class MultiFrameCaptureRole {
    BASE,
    SHORT,
    LONG,
}

/**
 * Exposure carried by a RAW sensor sample.
 *
 * Camera2 post-RAW sensitivity boost belongs to the processed YUV/JPEG pipeline and must not be
 * included here. Keeping the definition in one place prevents RAW registration and radiance
 * normalization from silently drifting apart on devices that report a boost other than 100.
 */
internal object RawExposureMath {
    fun product(exposureTimeNs: Long, sensitivityIso: Int): Double {
        require(exposureTimeNs > 0L) { "RAW exposure time must be positive" }
        require(sensitivityIso > 0) { "RAW sensitivity must be positive" }
        return exposureTimeNs.toDouble() * sensitivityIso.toDouble()
    }

    fun productOrNull(exposureTimeNs: Long?, sensitivityIso: Int?): Double? {
        val exposure = exposureTimeNs?.takeIf { it > 0L } ?: return null
        val sensitivity = sensitivityIso?.takeIf { it > 0 } ?: return null
        return product(exposure, sensitivity)
    }

    fun requestedProductOrNull(request: CaptureRequest, fallback: Double? = null): Double? {
        // AE ignores the template's manual shutter and ISO fields even when AE is locked.
        if (request.get(CaptureRequest.CONTROL_AE_MODE) != CaptureRequest.CONTROL_AE_MODE_OFF) {
            return null
        }
        return productOrNull(
            request.get(CaptureRequest.SENSOR_EXPOSURE_TIME),
            request.get(CaptureRequest.SENSOR_SENSITIVITY),
        ) ?: fallback
    }
}

data class CapturedFrameMetadata(
    val sensorTimestampNs: Long,
    val frameNumber: Long,
    val exposureTimeNs: Long,
    val sensitivityIso: Int,
    /** Active physical camera's SENSOR_INFO_SENSITIVITY_RANGE lower bound. */
    val minimumSensitivityIso: Int = 0,
    /** Active physical camera's SENSOR_MAX_ANALOG_SENSITIVITY. */
    val maximumAnalogSensitivityIso: Int = 0,
    val exposureProduct: Double,
    val focusDistanceDiopters: Float,
    val lensState: Int?,
    val rollingShutterSkewNs: Long?,
    val gyroWindow: GyroExposureWindow?,
    val channelNoiseProfile: FloatArray? = null,
    val multiFrameCaptureRole: MultiFrameCaptureRole? = null,
    /** Manually requested RAW exposure in the same units as [exposureProduct], when available. */
    val desiredExposureProduct: Double? = null,
    /** Camera2 dynamic black levels in 2x2 CFA position order: (0,0), (1,0), (0,1), (1,1). */
    val dynamicBlackLevelByCfaPosition: FloatArray? = null,
)
