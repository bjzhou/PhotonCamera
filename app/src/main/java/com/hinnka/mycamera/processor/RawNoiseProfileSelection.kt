package com.hinnka.mycamera.processor

sealed interface RawNoiseProfileSelection {
    val id: String

    data class Calibrated(
        val profile: CalibratedRawNoiseProfile,
        override val id: String = profile.id,
    ) : RawNoiseProfileSelection

    data object Camera2 : RawNoiseProfileSelection {
        override val id: String = SYSTEM_CAMERA2_ID
    }

    companion object {
        const val SYSTEM_CAMERA2_ID = "system_camera2"
    }
}
