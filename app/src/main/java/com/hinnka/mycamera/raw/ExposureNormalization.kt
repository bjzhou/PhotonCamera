package com.hinnka.mycamera.raw

import kotlin.math.pow

/**
 * RAW-domain exposure normalization inspired by RawTherapee's white-point /
 * scale-mul logic. The goal is to keep camera-WB-applied renders from looking
 * arbitrarily dark when there is no histogram-matched tone curve available.
 */
object ExposureNormalization {
    private const val TAG = "ExposureNormalization"

    fun compute(metadata: RawMetadata): Float {
        var gain = 1f
        if (metadata.baselineExposure.isFinite() && metadata.baselineExposure != 0f) {
            gain *= 2.0f.pow(metadata.baselineExposure)
        }
        return gain.coerceIn(1f, 8f)
    }
}
