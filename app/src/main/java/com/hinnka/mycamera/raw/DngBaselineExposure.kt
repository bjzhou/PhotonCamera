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
}
