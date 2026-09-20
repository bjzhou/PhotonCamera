package com.hinnka.mycamera.raw

import com.hinnka.mycamera.camera.MultiFrameConfig

/**
 * Professional-mode output magnification algorithm.
 *
 * MGC V25's finish upsamplers are two mutually exclusive implementations: `LancetUpsample`
 * (Lanczos) and `RaisrUpsample` (RAISR). RAISR's per-shift 5x5 filtering only accepts integer
 * scale factors of 2x/3x/4x and its stage rejects a resample rate below 2.0, so within Photon's
 * 1x..2x output scale range it is only reachable at exactly 2x. Selecting RAISR therefore pins
 * the output scale; Lanczos-3 keeps the whole continuous range.
 */
enum class RawOutputUpscaleMode {
    LANCZOS3,
    MGC_RAISR;

    val isMgcRaisr: Boolean
        get() = this == MGC_RAISR

    /** Scale this mode is pinned to, or null when the caller keeps its own scale. */
    val pinnedOutputScale: Float?
        get() = if (this == MGC_RAISR) RAISR_REQUIRED_OUTPUT_SCALE else null

    /** Effective output scale for this algorithm. */
    fun resolveOutputScale(requestedScale: Float): Float =
        pinnedOutputScale ?: MultiFrameConfig.normalizeOutputScale(requestedScale)

    /** RAISR replaces the Lanczos resample only when its pinned scale is actually reached. */
    fun usesRaisr(requestedScale: Float): Boolean =
        this == MGC_RAISR &&
            MultiFrameConfig.normalizeOutputScale(requestedScale) == RAISR_REQUIRED_OUTPUT_SCALE

    companion object {
        val DEFAULT: RawOutputUpscaleMode = LANCZOS3

        /** `RaisrUpsample` requires `resample_rate >= 2.0`; the output scale ceiling is 2x. */
        const val RAISR_REQUIRED_OUTPUT_SCALE = 2f

        fun fromName(name: String?): RawOutputUpscaleMode =
            entries.firstOrNull { it.name == name } ?: DEFAULT
    }
}
