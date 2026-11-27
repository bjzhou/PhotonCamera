package com.hinnka.mycamera.raw

/** Versioned HDRNet ML AE recipe shared by gallery metadata and the embedded Photon XMP summary. */
internal object RawPhotonHdrMetadata {
    private const val PROPERTY = "photonHdrNetRatio"
    private const val CONTRACT_PROPERTY = "photonHdrNetRatioContract"
    private const val CURRENT_CONTRACT = "mgc_fast_moments_v25_portrait_mask_v1"
    private const val SHORT_GAIN_PROPERTY = "photonHdrNetSourceToShortGain"
    private const val SHORT_GAIN_CONTRACT_PROPERTY = "photonHdrNetSourceToShortGainContract"
    private const val CURRENT_SHORT_GAIN_CONTRACT = "mgc_fast_moments_v25_final_short_v1"

    fun read(properties: Map<String, String>): Float? = properties[PROPERTY]
        ?.toFloatOrNull()
        ?.takeIf { it.isFinite() && it >= 1f }

    fun readFinalShortGain(properties: Map<String, String>): Float? {
        if (properties[SHORT_GAIN_CONTRACT_PROPERTY] != CURRENT_SHORT_GAIN_CONTRACT) return null
        return properties[SHORT_GAIN_PROPERTY]
            ?.toFloatOrNull()
            ?.takeIf { it.isFinite() && it > 0f }
    }

    fun write(
        properties: Map<String, String>,
        hdrRatio: Float?,
        finalShortGain: Float? = null,
    ): Map<String, String> {
        val validRatio = hdrRatio?.takeIf { it.isFinite() && it >= 1f } ?: return properties
        val validShortGain = finalShortGain?.takeIf { it.isFinite() && it > 0f }
        var result = properties + mapOf(
            PROPERTY to validRatio.toString(),
            CONTRACT_PROPERTY to CURRENT_CONTRACT,
        )
        if (validShortGain != null) {
            result += mapOf(
                SHORT_GAIN_PROPERTY to validShortGain.toString(),
                SHORT_GAIN_CONTRACT_PROPERTY to CURRENT_SHORT_GAIN_CONTRACT,
            )
        }
        return result
    }

    /** Only called for an imported DNG containing a valid embedded Photon PGTM. */
    fun restoreFromSummary(
        properties: Map<String, String>,
        summary: String?,
    ): Map<String, String> {
        if (summary == null || summary.length > 256 * 1024 ||
            summary.lineSequence().firstOrNull()?.trim() != "PhotonCamera RAW AE SummaryText v1"
        ) return properties
        val fields = mutableMapOf<String, String>()
        for (line in summary.lineSequence()) {
            val separator = line.indexOf('=')
            if (separator <= 0) continue
            val key = line.substring(0, separator).trim()
            if (fields.put(key, line.substring(separator + 1).trim()) != null) return properties
        }
        val shortGain = (fields["hdrNetFinalShortGain"] ?: fields["finalShortGain"])
            ?.toFloatOrNull()?.takeIf { it.isFinite() && it > 0f } ?: return properties
        val ratio = (fields["hdrNetFinalHdrRatio"] ?: fields["finalHdrRatio"])
            ?.toFloatOrNull()?.takeIf { it.isFinite() && it >= 1f } ?: return properties
        return write(properties, ratio, shortGain)
    }
}
