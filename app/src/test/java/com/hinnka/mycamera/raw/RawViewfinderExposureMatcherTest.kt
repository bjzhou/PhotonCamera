package com.hinnka.mycamera.raw

import org.junit.Assert.assertEquals
import org.junit.Test

class RawViewfinderExposureMatcherTest {
    @Test
    fun adobeGoogleCaptureAddsBaselineExposureOffset() {
        assertEquals(
            0.7f,
            RawViewfinderExposureMatcher.firstCaptureDngBaselineExposureOffsetEv(
                rawRenderingEngine = RawRenderingEngine.AdobeCurve,
                profileToneMapMode = RawProfileToneMapMode.GooglePixel,
            ),
            0f,
        )
    }

    @Test
    fun adobePhotonCaptureAddsBaselineExposureOffset() {
        assertEquals(
            0.7f,
            RawViewfinderExposureMatcher.firstCaptureDngBaselineExposureOffsetEv(
                rawRenderingEngine = RawRenderingEngine.AdobeCurve,
                profileToneMapMode = RawProfileToneMapMode.Photon,
            ),
            0f,
        )
    }

    @Test
    fun adobeDefaultCurveDoesNotAddBaselineExposureOffset() {
        assertEquals(
            0f,
            RawViewfinderExposureMatcher.firstCaptureDngBaselineExposureOffsetEv(
                rawRenderingEngine = RawRenderingEngine.AdobeCurve,
                profileToneMapMode = RawProfileToneMapMode.Default,
            ),
            0f,
        )
    }

    @Test
    fun nonAdobeHdrProfileDoesNotAddBaselineExposureOffset() {
        assertEquals(
            0f,
            RawViewfinderExposureMatcher.firstCaptureDngBaselineExposureOffsetEv(
                rawRenderingEngine = RawRenderingEngine.AgX,
                profileToneMapMode = RawProfileToneMapMode.Photon,
            ),
            0f,
        )
    }
}
