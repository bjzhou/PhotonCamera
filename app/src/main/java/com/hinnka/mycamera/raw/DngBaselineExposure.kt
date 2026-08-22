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
     * [sourceBaselineEv] restores source-domain normalization such as a multi-frame stack that
     * was normalized to its ultra-short frame. Scene exposure inference deliberately meters the
     * same pixels without applying that source baseline, so its result is already the complete
     * BaselineExposure for those pixels. Combining the two would apply the normalization twice.
     */
    fun resolveCaptureBaseline(sourceBaselineEv: Float, sceneBaselineEv: Float?): Float {
        val estimated = sceneBaselineEv?.takeIf(Float::isFinite)
        return sanitize(estimated ?: sourceBaselineEv)
    }
}
