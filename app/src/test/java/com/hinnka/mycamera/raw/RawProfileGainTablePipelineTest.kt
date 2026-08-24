package com.hinnka.mycamera.raw

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class RawProfileGainTablePipelineTest {
    @Test
    fun everyEngineAppliesProfileGainBeforeExposurePreparation() {
        RawRenderingEngine.entries.forEach { engine ->
            val shader = RawEngineTonePass.fragmentShaderFor(engine)
            val gain = shader.lastIndexOf("profileColor = applyProfileGainTableMap(profileColor);")
            val exposure = shader.lastIndexOf("prepareProfileGainInput(profileColor)")
            val tone = shader.lastIndexOf("applyEngineTone(color)")

            assertTrue("$engine PGTM stage is missing", gain >= 0)
            assertTrue("$engine exposure must follow PGTM", exposure > gain)
            assertTrue("$engine tone mapping must follow exposure", tone > exposure)
            assertTrue(shader.contains("weighted * uProfileGainBaselineGain"))
        }
    }

    @Test
    fun hdrReferenceUsesTheSameProfileAndEnginePreparationAsSdr() {
        RawRenderingEngine.entries.forEach { engine ->
            val shader = RawEngineTonePass.hdrReferenceFragmentShaderFor(engine)
            val gain = shader.lastIndexOf("profileColor = applyProfileGainTableMap(profileColor);")
            val exposure = shader.lastIndexOf("prepareEngineInput(profileColor)")
            val curve = shader.lastIndexOf("applyHdrExtendedCurve(toneInput)")

            assertTrue("$engine HDR PGTM stage is missing", gain >= 0)
            assertTrue("$engine HDR exposure must follow PGTM", exposure > gain)
            assertTrue("$engine HDR curve must follow exposure", curve > exposure)
            assertTrue(shader.contains("uniform sampler2D uHdrSdrLinearTexture"))
            assertTrue(shader.contains("uniform sampler2D uHdrBaseCurveTexture"))
            assertTrue(shader.contains("uHdrCurveQuadratic * distance * distance"))
            assertTrue(shader.contains("uHdrCurveWhiteSlope * (value - HDR_SCENE_WHITE)"))
            assertTrue(!shader.contains("uHdrCompressionStart"))
        }
    }

    @Test
    fun hdrBaseCurveAnalyzerUsesTheSelectedEngineToneFunction() {
        RawRenderingEngine.entries.forEach { engine ->
            val shader = RawEngineTonePass.hdrBaseCurveFragmentShaderFor(engine)

            assertTrue("$engine base curve does not use its tone function", shader.contains(
                "vec3 engineOutput = applyEngineTone(vec3(inputValue));",
            ))
            assertTrue(shader.contains("float response = max(dot(linearSrgb, HDR_LUMA), 0.0);"))
        }
    }

    @Test
    fun hncsHdrBaseCurveUsesTheSameGammaDecodeAsItsSdrOutputPass() {
        val shader = RawEngineTonePass.hdrBaseCurveFragmentShaderFor(
            RawRenderingEngine.HncsCcm,
        )

        assertTrue(shader.contains("pow(max(engineOutput, vec3(0.0)), vec3(2.2))"))
    }

    @Test
    fun filmicHighlightReconstructionUsesTheSamePreExposureOrder() {
        val shader = DarktableFilmicHighlightReconstructionShaders.MASK_FRAGMENT_SHADER
        val gain = shader.indexOf("color = applyProfileGainTableMap(color);")
        val exposure = shader.indexOf("color * uProfileExposureLinearGain")

        assertTrue("Filmic PGTM stage is missing", gain >= 0)
        assertTrue("Filmic exposure must follow PGTM", exposure > gain)
        assertTrue(shader.contains("weighted * uProfileGainBaselineGain"))
    }

    @Test
    fun generatedMapWeightsPrecompensateTotalBaselineExposure() {
        val plan = DngPhotonProfileGainTableGenerator.plan(
            grid = PhotonPgtmGrid(
                mapPointsH = 2,
                mapPointsV = 2,
                mapSpacingH = 0.5,
                mapSpacingV = 0.5,
            ),
            pointCount = 257,
            baselineExposureEv = 2f,
            diagnosticBand = null,
        )

        DngPhotonProfileGainTableGenerator.LOCAL_LAPLACIAN_INPUT_WEIGHTS
            .forEachIndexed { index, weight ->
                assertEquals(weight / 4f, plan.mapInputWeights[index], 1e-7f)
            }
    }

    @Test
    fun hdrNetGridCancelsBaselineAndPrecompensatesAcr3() {
        val plan = checkNotNull(
            DngPhotonProfileGainTableGenerator.hdrNetPlan(
                sourceWidth = 4000,
                sourceHeight = 3000,
                baselineExposureEv = 2f,
                hdrRatio = 1f,
            ),
        )
        val coefficients = FloatArray(
            DngPhotonProfileGainTableGenerator.HDRNET_OUTPUT_FLOAT_COUNT,
        ) { index ->
            if (index % DngPhotonProfileGainTableGenerator.HDRNET_COEFFICIENT_COUNT == 0) {
                1f
            } else {
                0f
            }
        }
        val map = checkNotNull(
            DngPhotonProfileGainTableGenerator.mapFromHdrNetCoefficients(
                plan,
                coefficients,
            ),
        )

        assertEquals(DngPhotonProfileGainTableGenerator.HDRNET_GRID_WIDTH, map.mapPointsH)
        assertEquals(DngPhotonProfileGainTableGenerator.HDRNET_GRID_HEIGHT, map.mapPointsV)
        assertEquals(257, map.mapPointsN)
        map.gains.forEachIndexed { index, gain ->
            val point = index % map.mapPointsN
            val evaluatedPoint = if (point == 0) 1 else point
            val sourceLuma = evaluatedPoint.toFloat() / map.mapPointsN
            val expectedGain = ACR3Curve.inputForOutput(sourceLuma) / (4f * sourceLuma)
            assertEquals(expectedGain, gain, 1e-6f)
        }
        DngPhotonProfileGainTableGenerator.HDRNET_LUMA_WEIGHTS
            .forEachIndexed { index, weight ->
                assertEquals(weight / 4f, map.mapInputWeights[index], 1e-7f)
        }
    }

    @Test
    fun hdrNetDoesNotNormalizeAwayNetworkExposure() {
        val plan = checkNotNull(
            DngPhotonProfileGainTableGenerator.hdrNetPlan(
                sourceWidth = 4000,
                sourceHeight = 3000,
                baselineExposureEv = 0f,
                hdrRatio = 4f,
            ),
        )
        val coefficients = FloatArray(
            DngPhotonProfileGainTableGenerator.HDRNET_OUTPUT_FLOAT_COUNT,
        ) { index ->
            if (index % DngPhotonProfileGainTableGenerator.HDRNET_COEFFICIENT_COUNT == 0) {
                1f
            } else {
                0f
            }
        }
        val map = checkNotNull(
            DngPhotonProfileGainTableGenerator.mapFromHdrNetCoefficients(plan, coefficients),
        )

        map.gains.forEachIndexed { index, gain ->
            val point = index % map.mapPointsN
            val evaluatedPoint = if (point == 0) 1 else point
            val sourceLuma = evaluatedPoint.toFloat() / map.mapPointsN
            val expectedGain = ACR3Curve.inputForOutput(4f * sourceLuma) / sourceLuma
            assertEquals(expectedGain, gain, 1e-6f)
        }
    }

    @Test
    fun hdrNetBaselineCompensationPreservesLocalToneShape() {
        val plan = checkNotNull(
            DngPhotonProfileGainTableGenerator.hdrNetPlan(
                sourceWidth = 4000,
                sourceHeight = 3000,
                baselineExposureEv = 0f,
                hdrRatio = 1f,
            ),
        )
        val coefficients = FloatArray(
            DngPhotonProfileGainTableGenerator.HDRNET_OUTPUT_FLOAT_COUNT,
        ) { index ->
            if (index % DngPhotonProfileGainTableGenerator.HDRNET_COEFFICIENT_COUNT == 0) {
                1f
            } else {
                0.018f
            }
        }
        val map = checkNotNull(
            DngPhotonProfileGainTableGenerator.mapFromHdrNetCoefficients(plan, coefficients),
        )
        val cellOffset = 0
        val shadowGain = map.gains[cellOffset + 10]
        val middleGrayGain = map.gains[cellOffset + 46]
        val highlightGain = map.gains[cellOffset + 200]

        assertTrue(shadowGain > middleGrayGain)
        assertTrue(highlightGain < middleGrayGain)
    }

    @Test
    fun hdrNetGuideUsesExtractedMgcPiecewiseLinearCurve() {
        assertEquals(0.03659388f, DngPhotonProfileGainTableGenerator.hdrNetGuide(0f), 1e-7f)
        assertEquals(0.22524668f, DngPhotonProfileGainTableGenerator.hdrNetGuide(0.1f), 1e-7f)
        assertEquals(0.51307976f, DngPhotonProfileGainTableGenerator.hdrNetGuide(1f), 1e-7f)
    }
}
