package com.hinnka.mycamera.stabilization

const val MIN_EXTERNAL_LENS_MAGNIFICATION = 1f
const val MAX_EXTERNAL_LENS_MAGNIFICATION = 4f

/** Optical calibration applied only while a teleconverter covers [physicalCameraId]. */
data class ExternalLensStabilizationConfig(
    val physicalCameraId: String = "",
    val magnification: Float = MIN_EXTERNAL_LENS_MAGNIFICATION,
) {
    val isEnabled: Boolean
        get() = physicalCameraId.isNotBlank() &&
            magnification.isFinite() && magnification > MIN_EXTERNAL_LENS_MAGNIFICATION

    fun normalized(): ExternalLensStabilizationConfig {
        val normalizedCameraId = physicalCameraId.trim()
        val normalizedMagnification = if (magnification.isFinite()) {
            magnification.coerceIn(
                MIN_EXTERNAL_LENS_MAGNIFICATION,
                MAX_EXTERNAL_LENS_MAGNIFICATION,
            )
        } else {
            MIN_EXTERNAL_LENS_MAGNIFICATION
        }
        return if (normalizedCameraId.isEmpty() ||
            normalizedMagnification <= MIN_EXTERNAL_LENS_MAGNIFICATION
        ) {
            Disabled
        } else {
            ExternalLensStabilizationConfig(
                physicalCameraId = normalizedCameraId,
                magnification = normalizedMagnification,
            )
        }
    }

    fun magnificationFor(cameraId: String?): Float = if (
        isEnabled && cameraId == physicalCameraId
    ) {
        magnification
    } else {
        MIN_EXTERNAL_LENS_MAGNIFICATION
    }

    companion object {
        val Disabled = ExternalLensStabilizationConfig()
    }
}
