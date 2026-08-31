package com.hinnka.mycamera.raw

import kotlin.math.pow

object DngBaselineExposure {
    private const val LIBRAW_MISSING_BASELINE_EXPOSURE = -999f

    fun sanitize(ev: Float): Float {
        return if (ev.isFinite() && ev > LIBRAW_MISSING_BASELINE_EXPOSURE) ev else 0f
    }

    fun exactGain(ev: Float): Float {
        return 2.0f.pow(sanitize(ev)).coerceIn(1e-6f, 65536f)
    }

    /**
     * Resolves ownership of the BaselineExposure written for a captured RAW.
     *
     * [sourceBaselineEv] preserves source-domain normalization such as a multi-frame stack that
     * was normalized to its ultra-short frame. The legacy viewfinder matcher returns the display
     * exposure offset relative to that source baseline for both classic AE and Photon HDR. Photon
     * HDR then uses the written total as its reproducible global-exposure anchor.
     */
    fun resolveCaptureBaseline(
        sourceBaselineEv: Float,
        legacyExposureOffsetEv: Float?,
    ): Float {
        val offset = legacyExposureOffsetEv?.takeIf(Float::isFinite) ?: 0f
        return sanitize(sourceBaselineEv + offset)
    }
}
