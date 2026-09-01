package com.hinnka.mycamera.raw

/**
 * The mutually exclusive capture/development modes for adaptive RAW exposure handling.
 *
 * All modes preserve capture-time viewfinder brightness through BaselineExposure. [PHOTON_HDR]
 * runs ML AE plus HDRNet and spatially matches the HDRNet result to the complete viewfinder.
 * [LEGACY_AUTO_EXPOSURE] also generates the historical Local Laplacian profile gain table. [OFF]
 * applies no HDR mapping and constrains its scalar viewfinder match with a RAW highlight guard.
 */
enum class RawAdaptiveExposureMode(val persistedValue: String) {
    OFF("OFF"),
    PHOTON_HDR("PHOTON_HDR"),
    LEGACY_AUTO_EXPOSURE("LEGACY_AUTO_EXPOSURE");

    val usesPhotonHdr: Boolean
        get() = this == PHOTON_HDR

    val usesLegacyAutoExposure: Boolean
        get() = this == LEGACY_AUTO_EXPOSURE

    companion object {
        fun resolve(
            usePhotonHdr: Boolean,
            useLegacyAutoExposure: Boolean,
        ): RawAdaptiveExposureMode {
            // Photon HDR wins when reading historical states in which both independent switches
            // were enabled. Every new write persists one mutually exclusive mode.
            return when {
                usePhotonHdr -> PHOTON_HDR
                useLegacyAutoExposure -> LEGACY_AUTO_EXPOSURE
                else -> OFF
            }
        }

        fun fromPersistedValue(
            value: String?,
            usePhotonHdr: Boolean,
            useLegacyAutoExposure: Boolean,
        ): RawAdaptiveExposureMode {
            return entries.firstOrNull { it.persistedValue.equals(value, ignoreCase = true) }
                ?: when {
                    usePhotonHdr -> PHOTON_HDR
                    value.equals("VIEWFINDER_MATCH", ignoreCase = true) -> LEGACY_AUTO_EXPOSURE
                    value.equals("DYNAMIC_SCENE_ESTIMATION", ignoreCase = true) ->
                        LEGACY_AUTO_EXPOSURE
                    useLegacyAutoExposure -> LEGACY_AUTO_EXPOSURE
                    else -> OFF
                }
        }
    }
}
