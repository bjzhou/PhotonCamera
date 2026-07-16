package com.hinnka.mycamera.raw

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import kotlin.math.pow

class RawProfileExposureGlTest {
    @Test
    fun profileGainToneMapKeepsLargeBaselineExposureNormalizationLinear() {
        val baselineExposureEv = 6.588512f
        val baselineGain = 2.0f.pow(baselineExposureEv)
        val sceneInput = 0.5500106f
        val profileGain = 0.75050706f
        val preRampValue = sceneInput * profileGain / baselineGain

        val profileGainToneMapRamp = RawProfileExposureGl.compute(
            profileExposureCompensation = 0f,
            dngBaselineExposure = baselineExposureEv,
            defaultBlackRender = DcpDefaultBlackRender.None,
            useRamp = true,
        )
        val autoBlackRamp = RawProfileExposureGl.compute(
            profileExposureCompensation = 0f,
            dngBaselineExposure = baselineExposureEv,
            defaultBlackRender = DcpDefaultBlackRender.Auto,
            useRamp = true,
        )

        assertEquals(0f, profileGainToneMapRamp.rampBlack, 0f)
        assertEquals(
            sceneInput * profileGain,
            preRampValue * profileGainToneMapRamp.rampSlope,
            1e-5f,
        )
        assertTrue(
            "preRampValue=$preRampValue autoBlack=${autoBlackRamp.rampBlack} " +
                "autoRadius=${autoBlackRamp.rampRadius}",
            preRampValue <= autoBlackRamp.rampBlack - autoBlackRamp.rampRadius,
        )
    }

}
