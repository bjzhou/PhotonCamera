package com.hinnka.mycamera.raw

/**
 * The mutually exclusive capture/development modes for adaptive RAW exposure handling.
 *
 * [QUALCOMM_ADRC] is the default mode: it runs pure scene-linear Qualcomm ADRC/TMC12 curve solving
 * plus multi-scale Guided Filter LTM directly into a standard DNG ProfileGainTableMap2.
 * [PHOTON_HDR] (displayed as HDRNet) runs ML AE metering plus HDRNet into a ProfileGainTableMap2.
 * [OFF] disables adaptive exposure and local tone mapping.
 */
enum class RawAdaptiveExposureMode(val persistedValue: String) {
    QUALCOMM_ADRC("QUALCOMM_ADRC"),
    PHOTON_HDR("PHOTON_HDR"),
    OFF("OFF");

    val usesQualcommAdrc: Boolean
        get() = this == QUALCOMM_ADRC

    val usesPhotonHdr: Boolean
        get() = this == PHOTON_HDR

    val generatesProfileGainTableMap: Boolean
        get() = usesQualcommAdrc || usesPhotonHdr

    companion object {
        val DEFAULT: RawAdaptiveExposureMode = QUALCOMM_ADRC

        fun resolve(
            usePhotonHdr: Boolean,
            useQualcommAdrc: Boolean = false,
        ): RawAdaptiveExposureMode {
            return when {
                useQualcommAdrc -> QUALCOMM_ADRC
                usePhotonHdr -> PHOTON_HDR
                else -> OFF
            }
        }

        fun fromPersistedValue(
            value: String?,
            fallback: RawAdaptiveExposureMode = DEFAULT,
        ): RawAdaptiveExposureMode {
            if (value == null) return fallback
            return when {
                value.equals(QUALCOMM_ADRC.persistedValue, ignoreCase = true) -> QUALCOMM_ADRC
                value.equals(PHOTON_HDR.persistedValue, ignoreCase = true) ||
                    value.equals("HDRNET", ignoreCase = true) ||
                    value.equals("HDR_NET", ignoreCase = true) -> PHOTON_HDR
                value.equals(OFF.persistedValue, ignoreCase = true) -> OFF
                else -> fallback
            }
        }
    }
}
