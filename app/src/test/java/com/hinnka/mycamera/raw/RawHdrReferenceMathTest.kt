package com.hinnka.mycamera.raw

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import kotlin.math.exp
import kotlin.math.pow

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
    fun pgtmRecoveryDoesNotDependOnShortExposureLookupScaleOrGamma() {
        val sceneGain = { input: Float -> 1f / (1f + input) }
        for (gamma in listOf(0.5f, 1f, 2f)) {
            for (scale in listOf(0.01f, 0.1f, 1f)) {
                val tableGain = { coordinate: Float ->
                    sceneGain(coordinate.pow(1f / gamma) / scale)
                }
                for (input in listOf(0.18f, 0.4f, 0.8f, 1f, 1.5f)) {
                    val expected = RawHdrReferenceMath.pgtmHighlightGain(input, sampleGain = sceneGain)
                    val actual = RawHdrReferenceMath.pgtmHighlightGain(
                        input, gamma = gamma, tableInputScale = scale, sampleGain = tableGain,
                    )
                    assertEquals("input=$input scale=$scale gamma=$gamma", expected, actual, 0.00001f)
                    if (input > RawHdrReferenceMath.PGTM_LINEAR_EXTENSION_START) {
                        assertTrue(actual > sceneGain(input))
                    }
                }
            }
        }
    }

    @Test
    fun hdrNetReferenceUsesCapturedLongExposureAndPostExposureExactlyOnce() {
        // Capture metadata of the reported 113739a8 photo. BaselineExposure is zero although
        // HDRNet's scene reference is brighter than sensor-linear RGB by this measured gain.
        val shortGain = 1.29072f
        val ratio = 1.4641135f
        val postEv = -0.19447541f
        val sceneGain = requireNotNull(RawHdrReferenceMath.hdrNetSceneExposureGain(ratio, shortGain, postEv))
        assertEquals(1.651444f, sceneGain, 0.00001f)
        val compressedGain = { _: Float -> 0.6f }
        for (renderGain in listOf(1f, 3f)) {
            val input = 1f // White in the captured long-exposure reference.
            val source = input / sceneGain
            val pgtmGain = RawHdrReferenceMath.pgtmHighlightGain(
                input,
                tableInputScale = shortGain / sceneGain,
                recoveryWhiteGain = sceneGain / renderGain,
                sampleGain = { compressedGain(it) / renderGain },
            )
            assertEquals(1f, source * pgtmGain * renderGain, 0.00001f)
        }
        val belowShoulder = RawHdrReferenceMath.PGTM_LINEAR_EXTENSION_START * 0.8f
        assertEquals(
            0.6f,
            RawHdrReferenceMath.pgtmHighlightGain(
                belowShoulder,
                tableInputScale = shortGain / sceneGain,
                recoveryWhiteGain = sceneGain,
                sampleGain = compressedGain,
            ),
            0.00001f,
        )
    }

    @Test
    fun missingCaptureExposureDoesNotInventAnHdrNetReference() {
        assertEquals(null, RawHdrReferenceMath.hdrNetSceneExposureGain(2f, null, 0f))
        assertEquals(null, RawHdrReferenceMath.hdrNetSceneExposureGain(Float.NaN, 1f, 0f))
        assertEquals(null, RawHdrReferenceMath.hdrNetSceneExposureGain(2f, 1f, Float.NaN))
        assertEquals(2f, RawHdrReferenceMath.hdrNetSceneExposureGain(2f, 1f, null)!!, 0f)
    }

    @Test
    fun convexBaseCurveExtendsOrdinaryHighlightsWithoutANearWhiteJoin() {
        val base = sampledCurve { x -> x.pow(2.2f) }
        val extension = RawHdrReferenceMath.solve(base)
        assertTrue(extension.extendsBaseCurve)
        assertTrue(extension.joinInput < 0.31f)
        assertTrue(extension.evaluate(0.8f, base) > RawHdrReferenceMath.sampleCurve(base, 0.8f))
        assertEquals(RawHdrReferenceMath.HDR_WHITE_MULTIPLIER, extension.evaluate(1f, base), 0.00001f)

        val epsilon = 0.0001f
        val atJoin = extension.evaluate(extension.joinInput, base)
        val leftSlope = (atJoin - extension.evaluate(extension.joinInput - epsilon, base)) / epsilon
        val rightSlope = (extension.evaluate(extension.joinInput + epsilon, base) - atJoin) / epsilon
        assertEquals(leftSlope, rightSlope, 0.01f)
        val whiteLeftSlope = (extension.evaluate(1f, base) - extension.evaluate(1f - epsilon, base)) / epsilon
        assertEquals(whiteLeftSlope, extension.whiteSlope, 0.01f)
        var previous = 0f
        repeat(2049) { index ->
            val x = index / 1024f
            val output = extension.evaluate(x, base)
            assertTrue(output >= previous)
            assertTrue(output >= RawHdrReferenceMath.sampleCurve(base, x))
            previous = output
        }
    }

    @Test
    fun halfFloatQuantizationDoesNotInventAShoulderOnAConvexCurve() {
        for (gamma in listOf(1f, 1.8f, 2.2f, 2.4f)) {
            val base = sampledCurve { x ->
                val value = x.pow(gamma)
                val step = maxOf(Math.ulp(value) * 8192f, 1f / 16_777_216f)
                kotlin.math.round(value / step) * step
            }
            val extension = RawHdrReferenceMath.solve(base)
            assertTrue("gamma=$gamma join=${extension.joinInput}", extension.extendsBaseCurve)
            assertTrue(extension.joinInput < 0.31f)
            assertTrue(extension.evaluate(0.6f, base) > RawHdrReferenceMath.sampleCurve(base, 0.6f))
        }
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
