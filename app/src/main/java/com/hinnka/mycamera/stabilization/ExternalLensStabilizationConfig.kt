package com.hinnka.mycamera.stabilization

const val MIN_EXTERNAL_LENS_MAGNIFICATION = 1f

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
        return if (normalizedCameraId.isEmpty() ||
            !magnification.isFinite() || magnification <= MIN_EXTERNAL_LENS_MAGNIFICATION
        ) {
            Disabled
        } else {
            ExternalLensStabilizationConfig(
                physicalCameraId = normalizedCameraId,
                magnification = magnification,
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
