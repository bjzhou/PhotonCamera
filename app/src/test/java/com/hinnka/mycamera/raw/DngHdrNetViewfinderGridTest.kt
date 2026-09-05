package com.hinnka.mycamera.raw

import com.hinnka.mycamera.processor.PhotonDehazeTuning
import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assume.assumeNoException
import org.junit.Test

class DngHdrNetViewfinderGridTest {
    @Test
    fun displayLinearGridMatchesClassicDomainAndIgnoresRendererBaseline() {
        val modelInput = FloatArray(
            DngPhotonProfileGainTableGenerator.HDRNET_INPUT_WIDTH *
                DngPhotonProfileGainTableGenerator.HDRNET_INPUT_HEIGHT * 4,
        )
        for (offset in modelInput.indices step 4) {
            modelInput[offset] = 0.25f
            modelInput[offset + 1] = 0.25f
            modelInput[offset + 2] = 0.25f
            modelInput[offset + 3] = 0.5f
        }
        val coefficients = FloatArray(
            DngPhotonProfileGainTableGenerator.HDRNET_OUTPUT_FLOAT_COUNT,
        )
        val neutralBaselinePlan = checkNotNull(
            DngPhotonProfileGainTableGenerator.hdrNetPlan(
                rendererBaselineExposureEv = 0f,
                hdrRatio = 2f,
                sourceToShortGain = 1f,
            ),
        )
        val brightBaselinePlan = checkNotNull(
            DngPhotonProfileGainTableGenerator.hdrNetPlan(
                rendererBaselineExposureEv = 3f,
                hdrRatio = 2f,
                sourceToShortGain = 1f,
            ),
        )

        val grids = try {
            DngPhotonProfileGainTableGenerator.evaluateHdrNetDehaze(
                plan = neutralBaselinePlan,
                coefficients = coefficients,
                modelInput = modelInput,
                outputRotation = 0,
                dehazeTuning = PhotonDehazeTuning.DISABLED,
            ) to DngPhotonProfileGainTableGenerator.evaluateHdrNetDehaze(
                plan = brightBaselinePlan,
                coefficients = coefficients,
                modelInput = modelInput,
                outputRotation = 270,
                dehazeTuning = PhotonDehazeTuning.DISABLED,
            )
        } catch (error: LinkageError) {
            assumeNoException("Android HDRNet JNI is unavailable on this host", error)
            return
        }
        val neutralEvaluation = checkNotNull(grids.first)
        val brightBaselineEvaluation = checkNotNull(grids.second)
        val neutralGrid = neutralEvaluation.displayLinearLumas
        val brightBaselineGrid = brightBaselineEvaluation.displayLinearLumas

        assertEquals(
            DngPhotonProfileGainTableGenerator.HDRNET_MATCH_GRID_WIDTH *
                DngPhotonProfileGainTableGenerator.HDRNET_MATCH_GRID_HEIGHT,
            neutralGrid.size,
        )
        neutralGrid.forEach { assertEquals(0.249999f, it, 2e-6f) }
        assertArrayEquals(neutralGrid, brightBaselineGrid, 2e-6f)
        assertEquals(
            DngPhotonProfileGainTableGenerator.HDRNET_INPUT_WIDTH,
            neutralEvaluation.sampleWidth,
        )
        assertEquals(
            DngPhotonProfileGainTableGenerator.HDRNET_INPUT_HEIGHT,
            neutralEvaluation.sampleHeight,
        )
        assertEquals(neutralEvaluation.sampleWidth, brightBaselineEvaluation.sampleHeight)
        assertEquals(neutralEvaluation.sampleHeight, brightBaselineEvaluation.sampleWidth)
        assertEquals(
            neutralEvaluation.sampleWidth * neutralEvaluation.sampleHeight * 3,
            neutralEvaluation.displayLinearRgb.size,
        )
        neutralEvaluation.displayLinearRgb.forEach { assertEquals(0.249999f, it, 2e-6f) }
        assertArrayEquals(
            neutralEvaluation.displayLinearRgb,
            brightBaselineEvaluation.displayLinearRgb,
            2e-6f,
        )
        assertEquals(0.249999f, neutralEvaluation.postDehazeP99Peak, 2e-6f)
        assertEquals(
            neutralEvaluation.postDehazeP99Peak,
            brightBaselineEvaluation.postDehazeP99Peak,
            2e-6f,
        )
    }

    @Test
    fun displayLinearRgbKeepsTopLeftRowOrderAcrossClockwiseRotations() {
        val width = DngPhotonProfileGainTableGenerator.HDRNET_INPUT_WIDTH
        val height = DngPhotonProfileGainTableGenerator.HDRNET_INPUT_HEIGHT
        val modelInput = FloatArray(width * height * 4)
        for (y in 0 until height) {
            for (x in 0 until width) {
                val offset = (y * width + x) * 4
                modelInput[offset] = 0.1f + 0.4f * x / (width - 1)
                modelInput[offset + 1] = 0.15f + 0.3f * y / (height - 1)
                modelInput[offset + 2] = 0.2f + 0.05f * ((x + y) % 7)
                modelInput[offset + 3] = 1f
            }
        }
        val coefficients = FloatArray(DngPhotonProfileGainTableGenerator.HDRNET_OUTPUT_FLOAT_COUNT)
        val plan = checkNotNull(
            DngPhotonProfileGainTableGenerator.hdrNetPlan(
                rendererBaselineExposureEv = 0f,
                hdrRatio = 2f,
                sourceToShortGain = 1f,
            ),
        )
        val rotations = listOf(0, 90, 180, 270)
        val evaluations = try {
            rotations.map { rotation ->
                checkNotNull(
                    DngPhotonProfileGainTableGenerator.evaluateHdrNetDehaze(
                        plan = plan,
                        coefficients = coefficients,
                        modelInput = modelInput,
                        outputRotation = rotation,
                        dehazeTuning = PhotonDehazeTuning.DISABLED,
                    ),
                )
            }
        } catch (error: LinkageError) {
            assumeNoException("Android HDRNet JNI is unavailable on this host", error)
            return
        }
        val sourceRgb = evaluations.first().displayLinearRgb
        for ((index, rotation) in rotations.withIndex()) {
            val evaluation = evaluations[index]
            val swapsAxes = rotation == 90 || rotation == 270
            val orientedWidth = if (swapsAxes) height else width
            val orientedHeight = if (swapsAxes) width else height
            assertEquals(orientedWidth, evaluation.sampleWidth)
            assertEquals(orientedHeight, evaluation.sampleHeight)
            val expectedRgb = FloatArray(orientedWidth * orientedHeight * 3)
            for (y in 0 until orientedHeight) {
                for (x in 0 until orientedWidth) {
                    val (sourceX, sourceY) = when (rotation) {
                        90 -> y to height - 1 - x
                        180 -> width - 1 - x to height - 1 - y
                        270 -> width - 1 - y to x
                        else -> x to y
                    }
                    val sourceOffset = (sourceY * width + sourceX) * 3
                    val outputOffset = (y * orientedWidth + x) * 3
                    for (channel in 0 until 3) {
                        expectedRgb[outputOffset + channel] = sourceRgb[sourceOffset + channel]
                    }
                }
            }
            assertArrayEquals(
                "Clockwise rotation $rotation",
                expectedRgb,
                evaluation.displayLinearRgb,
                2e-6f,
            )
        }
    }

    @Test
    fun postExposureMetadataRestoresOnlyTheRolloffContract() {
        val legacyProperties = mapOf(
            "photonHdrNetPostExposureEv" to "1.25",
            "photonHdrNetPostExposureEvContract" to "hdrnet_post_dehaze_viewfinder_v1",
        )
        assertNull(RawPhotonHdrMetadata.readPostExposureEv(legacyProperties))

        val properties = RawPhotonHdrMetadata.write(
            properties = legacyProperties,
            hdrRatio = 2f,
            finalShortGain = 0.5f,
            postExposureEv = 1.25f,
        )
        assertEquals(
            "hdrnet_post_dehaze_viewfinder_rolloff_v2",
            properties["photonHdrNetPostExposureEvContract"],
        )
        assertEquals(1.25f, checkNotNull(RawPhotonHdrMetadata.readPostExposureEv(properties)), 0f)
        assertEquals(2f, checkNotNull(RawPhotonHdrMetadata.read(properties)), 0f)
        assertEquals(0.5f, checkNotNull(RawPhotonHdrMetadata.readFinalShortGain(properties)), 0f)
    }
}
