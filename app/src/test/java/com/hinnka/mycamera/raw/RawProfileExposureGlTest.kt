package com.hinnka.mycamera.raw

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import kotlin.math.pow

class RawProfileExposureGlTest {
    @Test
    fun baselineExposureAtOrAboveTwoDisablesDefaultBlackRender() {
        val belowThreshold = RawProfileExposureGl.compute(
            profileExposureCompensation = 0f,
            dngBaselineExposure = 1.999f,
            defaultBlackRender = DcpDefaultBlackRender.Auto,
            useRamp = true,
        )
        val atThreshold = RawProfileExposureGl.compute(
            profileExposureCompensation = 0f,
            dngBaselineExposure = 2f,
            defaultBlackRender = DcpDefaultBlackRender.Auto,
            useRamp = true,
        )

        assertTrue(belowThreshold.rampBlack > 0f)
        assertEquals(0f, atThreshold.rampBlack, 0f)
        assertEquals(
            DcpDefaultBlackRender.None,
            RawProfileExposureGl.resolveDefaultBlackRender(2f, DcpDefaultBlackRender.Auto),
        )
    }

    @Test
    fun largeBaselineExposureNormalizationStaysLinearWhenAutoBlackWasRequested() {
        val baselineExposureEv = 6.588512f
        val baselineGain = 2.0f.pow(baselineExposureEv)
        val sceneInput = 0.5500106f
        val profileGain = 0.75050706f
        val preRampValue = sceneInput * profileGain / baselineGain

        val ramp = RawProfileExposureGl.compute(
            profileExposureCompensation = 0f,
            dngBaselineExposure = baselineExposureEv,
            defaultBlackRender = DcpDefaultBlackRender.Auto,
            useRamp = true,
        )

        assertEquals(0f, ramp.rampBlack, 0f)
        assertEquals(
            sceneInput * profileGain,
            preRampValue * ramp.rampSlope,
            1e-5f,
        )
    }

}
