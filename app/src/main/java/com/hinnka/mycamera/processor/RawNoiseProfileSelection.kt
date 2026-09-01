package com.hinnka.mycamera.processor

sealed interface RawNoiseProfileSelection {
    val id: String

    data class Calibrated(
        val profile: CalibratedRawNoiseProfile,
        override val id: String = profile.id,
    ) : RawNoiseProfileSelection

    data class Camera2(
        /** Calibrated model used only when no usable Camera2 sensor model is available. */
        val fallbackProfile: CalibratedRawNoiseProfile,
    ) : RawNoiseProfileSelection {
        override val id: String = SYSTEM_CAMERA2_ID
    }

    companion object {
        const val SYSTEM_CAMERA2_ID = "system_camera2"
    }
}
