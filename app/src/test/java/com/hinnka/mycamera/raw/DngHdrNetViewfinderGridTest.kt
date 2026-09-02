package com.hinnka.mycamera.raw

import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
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
            DngPhotonProfileGainTableGenerator.hdrNetDisplayLinearLumaGrid(
                plan = neutralBaselinePlan,
                coefficients = coefficients,
                modelInput = modelInput,
                outputRotation = 0,
            ) to DngPhotonProfileGainTableGenerator.hdrNetDisplayLinearLumaGrid(
                plan = brightBaselinePlan,
                coefficients = coefficients,
                modelInput = modelInput,
                outputRotation = 270,
            )
        } catch (error: UnsatisfiedLinkError) {
            assumeNoException("Android HDRNet JNI is unavailable on this host", error)
            return
        }
        val neutralGrid = checkNotNull(grids.first)
        val brightBaselineGrid = checkNotNull(grids.second)

        assertEquals(
            DngPhotonProfileGainTableGenerator.HDRNET_MATCH_GRID_WIDTH *
                DngPhotonProfileGainTableGenerator.HDRNET_MATCH_GRID_HEIGHT,
            neutralGrid.size,
        )
        neutralGrid.forEach { assertEquals(0.249999f, it, 2e-6f) }
        assertArrayEquals(neutralGrid, brightBaselineGrid, 2e-6f)
    }
}
