package com.hinnka.mycamera.raw

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class PhotonDehazeCurveTest {
    @Test
    fun identityCurveLeavesTheCompleteRangeUnchanged() {
        for (index in 0..1000) {
            val input = index / 1000f
            assertEquals(input, mapped(input, PhotonDehazeCurveParameters.IDENTITY), 0f)
        }
    }

    @Test
    fun dehazeCurveIsFiniteContinuousAndMonotonic() {
        val curve = testCurve()
        var previous = mapped(0f, curve)
        for (index in 1..1000) {
            val output = mapped(index / 1000f, curve)
            assertTrue(output.isFinite())
            assertTrue("curve regressed at $index", output + 1e-6f >= previous)
            previous = output
        }
        val joinInput = curve.hazePointHigh / curve.highlightScale
        val below = mapped((joinInput - 1e-5f).coerceAtLeast(0f), curve)
        val above = mapped((joinInput + 1e-5f).coerceAtMost(1f), curve)
        assertTrue(kotlin.math.abs(above - below) < 1e-3f)
    }

    @Test
    fun nativeCurveContractRoundTripsAndRejectsInvalidPayloads() {
        val original = testCurve()
        val restored = requireNotNull(
            PhotonDehazeCurveParameters.fromNativeArray(original.toNativeArray()),
        )
        for (index in 0..100) {
            val input = index / 100f
            assertEquals(mapped(input, original), mapped(input, restored), 0f)
        }
        assertNull(PhotonDehazeCurveParameters.fromNativeArray(FloatArray(7)))
        assertNull(
            PhotonDehazeCurveParameters.fromNativeArray(
                original.toNativeArray().also { it[2] = Float.NaN },
            ),
        )
    }

    private fun testCurve(): PhotonDehazeCurveParameters {
        val hazePointLow = 0.04f
        val hazePointHigh = 0.08f
        val interval = hazePointHigh - hazePointLow
        val quadratic = 1f /
            (interval * interval + 2f * (1f - hazePointHigh) * interval)
        val shoulder = interval * interval * quadratic
        return PhotonDehazeCurveParameters(
            hazePointLow = hazePointLow,
            hazePointHigh = hazePointHigh,
            highlightScale = 1.2f,
            quadraticCoefficient = quadratic,
            linearSlope = (1f - shoulder) / (1f - hazePointHigh),
            shoulderValue = shoulder,
            detectedHighlightScale = 1.2f,
            sampledPixelCount = 256 * 192,
        )
    }

    private fun mapped(input: Float, curve: PhotonDehazeCurveParameters): Float {
        val scaled = (input.coerceIn(0f, 1f) * curve.highlightScale).coerceAtMost(1f)
        return if (scaled < curve.hazePointHigh) {
            val distance = (scaled - curve.hazePointLow).coerceAtLeast(0f)
            distance * distance * curve.quadraticCoefficient
        } else {
            curve.shoulderValue +
                (scaled - curve.hazePointHigh) * curve.linearSlope
        }.coerceIn(0f, 1f)
    }
}
