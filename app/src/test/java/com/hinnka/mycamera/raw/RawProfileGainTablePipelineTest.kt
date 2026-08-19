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
}
