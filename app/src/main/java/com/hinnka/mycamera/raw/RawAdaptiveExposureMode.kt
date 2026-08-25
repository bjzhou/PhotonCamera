package com.hinnka.mycamera.raw

/**
 * The mutually exclusive capture/development modes for adaptive RAW exposure handling.
 *
 * [OFF] leaves both paths disabled. [PHOTON_HDR] generates an HDRNet ProfileGainTableMap and
 * preserves the source
 * BaselineExposure. [LEGACY_AUTO_EXPOSURE] matches the captured viewfinder preview and writes the
 * solved exposure into BaselineExposure.
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
