package com.hinnka.mycamera.raw

/**
 * The MGC tuning coordinates a merged capture was rendered with. A merged DNG carries the merge
 * output noise model, so re-measuring SNR from it yields the merged SNR; the sharpen curve is
 * indexed by the reference frame's SNR and the denoise curve by the merge output SNR, which only
 * the capture knows. Persisted in gallery metadata and restored for every later render.
 */
data class RawMgcTuningSnr(
    val sharpen: Float?,
    val denoise: Float?,
) {
    companion object {
        private const val SHARPEN_PROPERTY = "mgcSharpenTuningSnr"
        private const val DENOISE_PROPERTY = "mgcDenoiseTuningSnr"

        fun write(
            properties: Map<String, String>,
            sharpen: Float?,
            denoise: Float?,
        ): Map<String, String> = properties.toMutableMap().apply {
            remove(SHARPEN_PROPERTY)
            remove(DENOISE_PROPERTY)
            sharpen?.takeIf { it.isFinite() && it > 0f }?.let { put(SHARPEN_PROPERTY, it.toString()) }
            denoise?.takeIf { it.isFinite() && it > 0f }?.let { put(DENOISE_PROPERTY, it.toString()) }
        }

        fun read(properties: Map<String, String>): RawMgcTuningSnr? {
            fun value(key: String) = properties[key]?.toFloatOrNull()?.takeIf { it.isFinite() && it > 0f }
            val sharpen = value(SHARPEN_PROPERTY)
            val denoise = value(DENOISE_PROPERTY)
            return if (sharpen == null && denoise == null) null else RawMgcTuningSnr(sharpen, denoise)
        }
    }
}
