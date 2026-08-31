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

    @Test
    fun sanitizesBaseCurveReversalsBeforeGpuSampling() {
        val base = sampledCurve { x -> x }
        base[512] = base[511] - 0.2f
        base[700] = Float.NaN

        val sanitized = RawHdrReferenceMath.sanitizeCurve(base)

        for (index in 1 until sanitized.size) {
            assertTrue(sanitized[index] >= sanitized[index - 1])
        }
    }

    @Test
    fun keepsPgtmThroughTheShoulderThenUsesItsLocalGainForLinearHighlights() {
        val shoulder = RawHdrReferenceMath.PGTM_LINEAR_EXTENSION_START
        val pgtmGain = { input: Float -> 1.35f - 0.8f * input }
        val anchorGain = pgtmGain(shoulder)

        assertEquals(
            pgtmGain(shoulder * 0.75f),
            RawHdrReferenceMath.pgtmHighlightGain(
                shoulder * 0.75f,
                sampleGain = pgtmGain,
            ),
            0.000001f,
        )
        assertEquals(
            anchorGain,
            RawHdrReferenceMath.pgtmHighlightGain(0.75f, sampleGain = pgtmGain),
            0.000001f,
        )
        assertEquals(
            anchorGain,
            RawHdrReferenceMath.pgtmHighlightGain(1f, sampleGain = pgtmGain),
            0.000001f,
        )

        // Recovery starts immediately above the shoulder instead of waiting for near-white.
        val moderateHighlight = shoulder + (1f - shoulder) * 0.1f
        val compressedModerate = moderateHighlight * pgtmGain(moderateHighlight)
        val extendedModerate = moderateHighlight *
            RawHdrReferenceMath.pgtmHighlightGain(
                moderateHighlight,
                sampleGain = pgtmGain,
            )
        assertTrue(extendedModerate > compressedModerate)

        val epsilon = 0.00001f
        val atJoin = shoulder * anchorGain
        val rightOfJoin = (shoulder + epsilon) *
            RawHdrReferenceMath.pgtmHighlightGain(
                shoulder + epsilon,
                sampleGain = pgtmGain,
            )
        assertEquals(atJoin, rightOfJoin, 0.00002f)

        var previous = atJoin
        repeat(128) { index ->
            val input = shoulder + (1f - shoulder) * (index + 1f) / 128f
            val output = input * RawHdrReferenceMath.pgtmHighlightGain(
                input,
                sampleGain = pgtmGain,
            )
            assertTrue(output >= previous)
            previous = output
        }
    }

    @Test
    fun recoversPgtmAttenuationWhenTableGainRisesTowardWhite() {
        val shoulder = RawHdrReferenceMath.PGTM_LINEAR_EXTENSION_START
        val pgtmGain = { input: Float -> 0.45f + 0.4f * input }
        val shoulderGain = pgtmGain(shoulder)

        assertEquals(
            shoulderGain,
            RawHdrReferenceMath.pgtmHighlightGain(shoulder, sampleGain = pgtmGain),
            0.000001f,
        )

        val moderateHighlight = shoulder + (1f - shoulder) * 0.25f
        val originalOutput = moderateHighlight * pgtmGain(moderateHighlight)
        val recoveredOutput = moderateHighlight * RawHdrReferenceMath.pgtmHighlightGain(
            moderateHighlight,
            sampleGain = pgtmGain,
        )
        assertTrue(recoveredOutput > originalOutput)
        assertEquals(
            1f,
            RawHdrReferenceMath.pgtmHighlightGain(1f, sampleGain = pgtmGain),
            0.000001f,
        )
        assertEquals(
            1f,
            RawHdrReferenceMath.pgtmHighlightGain(1.25f, sampleGain = pgtmGain),
            0.000001f,
        )
    }

    @Test
    fun neverDropsBelowAPgtmWhiteBoost() {
        val pgtmGain = { input: Float -> 0.8f + 0.4f * input }

        assertEquals(
            pgtmGain(1f),
            RawHdrReferenceMath.pgtmHighlightGain(1f, sampleGain = pgtmGain),
            0.000001f,
        )
        assertEquals(
            pgtmGain(1f),
            RawHdrReferenceMath.pgtmHighlightGain(1.5f, sampleGain = pgtmGain),
            0.000001f,
        )
    }

    @Test
    fun hdrShaderUsesMappedSdrAndLinearHighlightPgtmCoordinatesWithoutOldEarlyExit() {
        val shader = RawEngineTonePass.hdrReferenceFragmentShaderFor(
            RawRenderingEngine.AdobeCurve,
        )

        assertTrue(shader.contains("applyProfileGainTableMap(profileColor)"))
        assertTrue(shader.contains("applyProfileGainTableMapWithLinearHighlights("))
        assertTrue(shader.contains("max(\n                    applyHdrExtendedCurve(hdrToneInput),"))
        assertTrue(!shader.contains("if (toneInput <= uHdrCurveJoinInput)"))
    }

    private fun sampledCurve(transform: (Float) -> Float): FloatArray {
        return FloatArray(RawHdrReferenceMath.BASE_CURVE_SAMPLE_COUNT) { index ->
            transform(index.toFloat() / (RawHdrReferenceMath.BASE_CURVE_SAMPLE_COUNT - 1))
        }
    }
}
