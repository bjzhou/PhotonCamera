package com.hinnka.mycamera.raw

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class RawHdrReferenceMathTest {
    @Test
    fun usesOnlyBaselineExposure() {
        assertEquals(0f, RawHdrReferenceMath.exposureEv(0f), 0.0001f)
        assertEquals(-0.7f, RawHdrReferenceMath.exposureEv(-0.7f), 0.0001f)
    }

    @Test
    fun convertsBaselineExposureToExactLinearGain() {
        assertEquals(1f, RawHdrReferenceMath.exposureGain(0f), 0.0001f)
        assertEquals(Math.pow(2.0, -0.7).toFloat(), RawHdrReferenceMath.exposureGain(-0.7f), 0.0001f)
    }

    @Test
    fun sanitizesNonFiniteBaseline() {
        assertEquals(0f, RawHdrReferenceMath.exposureEv(Float.NaN), 0.0001f)
        assertEquals(0f, RawHdrReferenceMath.exposureEv(Float.POSITIVE_INFINITY), 0.0001f)
    }

    @Test
    fun usesCompleteAcr3CurveThroughBlendStart() {
        val curve = ACR3Curve.samples()
        assertEquals(sampleCurve(curve, 0.08f), RawHdrReferenceMath.toneValue(0.08f), 0.000001f)
        assertEquals(sampleCurve(curve, 0.09f), RawHdrReferenceMath.toneValue(0.09f), 0.000001f)
    }

    @Test
    fun smoothlyBlendsFromAcr3ToAnchoredLinearGain() {
        val curve = ACR3Curve.samples()
        val value = 0.135f
        val linearGain = sampleCurve(curve, RawHdrReferenceMath.LINEAR_GAIN_START) /
            RawHdrReferenceMath.LINEAR_GAIN_START
        val t = smoothstep(
            RawHdrReferenceMath.ACR3_BLEND_START,
            RawHdrReferenceMath.LINEAR_GAIN_START,
            value,
        )
        val expected = sampleCurve(curve, value) +
            (value * linearGain - sampleCurve(curve, value)) * t

        assertEquals(expected, RawHdrReferenceMath.toneValue(value), 0.000001f)
    }

    @Test
    fun keepsMidtonesAndOverrangeOnTheSameUnnormalizedLinearGain() {
        val curve = ACR3Curve.samples()
        val linearGain = sampleCurve(curve, RawHdrReferenceMath.LINEAR_GAIN_START) /
            RawHdrReferenceMath.LINEAR_GAIN_START

        assertTrue(linearGain > 1f)
        assertEquals(0.18f * linearGain, RawHdrReferenceMath.toneValue(0.18f), 0.000001f)
        assertEquals(0.75f * linearGain, RawHdrReferenceMath.toneValue(0.75f), 0.000001f)
        assertEquals(1.0f * linearGain, RawHdrReferenceMath.toneValue(1.0f), 0.000001f)
        assertEquals(2.5f * linearGain, RawHdrReferenceMath.toneValue(2.5f), 0.000001f)
    }

    private fun sampleCurve(curve: FloatArray, value: Float): Float {
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
