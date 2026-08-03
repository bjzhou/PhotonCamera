package com.hinnka.mycamera.raw

object RawHdrReferenceMath {
    const val ACR3_BLEND_START = 0.09f
    const val LINEAR_GAIN_START = 0.18f

    fun exposureEv(
        baselineExposureEv: Float,
        rawExposureCompensationEv: Float,
    ): Float {
        val baselineEv = DngBaselineExposure.sanitize(baselineExposureEv)
        val userEv = rawExposureCompensationEv.takeIf(Float::isFinite) ?: 0f
        return baselineEv + userEv
    }

    fun exposureGain(
        baselineExposureEv: Float,
        rawExposureCompensationEv: Float,
    ): Float = DngBaselineExposure.exactGain(
        exposureEv(
            baselineExposureEv = baselineExposureEv,
            rawExposureCompensationEv = rawExposureCompensationEv,
        )
    )

    fun toneValue(value: Float, curve: FloatArray = ACR3Curve.samples()): Float {
        val safeValue = value.coerceAtLeast(0f)
        val curveAtAnchor = sampleCurve(curve, LINEAR_GAIN_START)
        val linearGain = curveAtAnchor / LINEAR_GAIN_START
        val linearValue = safeValue * linearGain
        if (safeValue <= ACR3_BLEND_START) return sampleCurve(curve, safeValue)
        if (safeValue >= LINEAR_GAIN_START) return linearValue

        val blend = smoothstep(ACR3_BLEND_START, LINEAR_GAIN_START, safeValue)
        val curveValue = sampleCurve(curve, safeValue)
        return curveValue + (linearValue - curveValue) * blend
    }

    private fun sampleCurve(curve: FloatArray, value: Float): Float {
        require(curve.isNotEmpty()) { "Curve must not be empty" }
        if (curve.size == 1) return curve[0]

        val position = value.coerceIn(0f, 1f) * (curve.size - 1)
        val lowerIndex = position.toInt().coerceAtMost(curve.lastIndex - 1)
        val fraction = position - lowerIndex
        return curve[lowerIndex] + (curve[lowerIndex + 1] - curve[lowerIndex]) * fraction
    }

    private fun smoothstep(edge0: Float, edge1: Float, value: Float): Float {
        val t = ((value - edge0) / (edge1 - edge0)).coerceIn(0f, 1f)
        return t * t * (3f - 2f * t)
    }
}
