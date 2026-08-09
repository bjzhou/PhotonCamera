package com.hinnka.mycamera.processor

import kotlin.math.log2

internal data class MgcSpatialOutputExposure(
    val normalizationScale: Float,
    val baselineExposureEv: Float?,
) {
    val shotNoiseScale: Float
        get() = normalizationScale

    val readNoiseVarianceScale: Float
        get() = normalizationScale * normalizationScale

    companion object {
        val Reference = MgcSpatialOutputExposure(
            normalizationScale = 1f,
            baselineExposureEv = null,
        )

        fun forAcceptedUltrashort(exposureRatio: Float?): MgcSpatialOutputExposure {
            if (exposureRatio == null) return Reference
            require(exposureRatio.isFinite() && exposureRatio > 1f) {
                "Accepted ultrashort exposure ratio must be finite and > 1, got $exposureRatio"
            }
            return MgcSpatialOutputExposure(
                normalizationScale = 1f / exposureRatio,
                baselineExposureEv = log2(exposureRatio),
            )
        }
    }
}
