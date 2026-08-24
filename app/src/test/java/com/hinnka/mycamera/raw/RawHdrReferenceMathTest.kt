package com.hinnka.mycamera.raw

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import kotlin.math.exp

class RawHdrReferenceMathTest {
    @Test
    fun followsSelectedBaseCurveThroughTheJoin() {
        val base = sampledCurve { x -> x * x * (3f - 2f * x) }
        val extension = RawHdrReferenceMath.solve(base)

        val belowJoin = extension.joinInput * 0.8f
        assertEquals(
            RawHdrReferenceMath.sampleCurve(base, belowJoin),
            extension.evaluate(belowJoin, base),
            0.000001f,
        )
        assertEquals(
            RawHdrReferenceMath.sampleCurve(base, extension.joinInput),
            extension.evaluate(extension.joinInput, base),
            0.000001f,
        )
    }

    @Test
    fun leavesTheShoulderWithContinuousValueAndSlope() {
        val base = sampledCurve { x -> (1f - exp(-3.2f * x)) / (1f - exp(-3.2f)) }
        val extension = RawHdrReferenceMath.solve(base)
        val epsilon = 0.0001f
        val leftValue = extension.evaluate(extension.joinInput - epsilon, base)
        val joinValue = extension.evaluate(extension.joinInput, base)
        val rightValue = extension.evaluate(extension.joinInput + epsilon, base)
        val leftSlope = (joinValue - leftValue) / epsilon
        val rightSlope = (rightValue - joinValue) / epsilon

        assertEquals(leftSlope, rightSlope, 0.03f)
        assertTrue(extension.joinInput >= RawHdrReferenceMath.SEARCH_START)
        assertTrue(extension.joinInput < RawHdrReferenceMath.SCENE_WHITE)
    }

    @Test
    fun reachesHalfStopAboveTheSelectedEngineWhite() {
        val baseWhite = 0.82f
        val base = sampledCurve { x -> baseWhite * x }
        val extension = RawHdrReferenceMath.solve(base)

        assertEquals(
            baseWhite * RawHdrReferenceMath.HDR_WHITE_MULTIPLIER,
            extension.evaluate(RawHdrReferenceMath.SCENE_WHITE, base),
            0.00001f,
        )
    }

    @Test
    fun overrangeContinuesWithTheWhitePointTangent() {
        val base = sampledCurve { x -> x }
        val extension = RawHdrReferenceMath.solve(base)
        val white = extension.evaluate(1f, base)
        val overrange = extension.evaluate(1.4f, base)

        assertEquals(
            white + extension.whiteSlope * 0.4f,
            overrange,
            0.00001f,
        )
    }

    @Test
    fun sanitizesNonFiniteBaseSamplesWithoutBreakingTheCurve() {
        val base = sampledCurve { x -> x }
        base[200] = Float.NaN
        base[700] = Float.POSITIVE_INFINITY
        val extension = RawHdrReferenceMath.solve(base)

        assertTrue(extension.joinInput.isFinite())
        assertTrue(extension.whiteOutput.isFinite())
        assertTrue(extension.evaluate(2f, base).isFinite())
    }

    private fun sampledCurve(transform: (Float) -> Float): FloatArray {
        return FloatArray(RawHdrReferenceMath.BASE_CURVE_SAMPLE_COUNT) { index ->
            transform(index.toFloat() / (RawHdrReferenceMath.BASE_CURVE_SAMPLE_COUNT - 1))
        }
    }
}
