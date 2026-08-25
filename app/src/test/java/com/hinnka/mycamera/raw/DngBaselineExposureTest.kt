package com.hinnka.mycamera.raw

import org.junit.Assert.assertEquals
import org.junit.Test

class DngBaselineExposureTest {
    @Test
    fun libRawMissingSentinelUsesDngSdkDefaultExposure() {
        assertEquals(0f, DngBaselineExposure.sanitize(-999f), 0f)
        assertEquals(1f, DngBaselineExposure.exactGain(-999f), 0f)
    }

    @Test
    fun parsedBaselineExposureKeepsEvValue() {
        assertEquals(-1.25f, DngBaselineExposure.sanitize(-1.25f), 0f)
        assertEquals(0.4204482f, DngBaselineExposure.exactGain(-1.25f), 0.000001f)
    }

    @Test
    fun legacyExposureOffsetIsAddedToSourceNormalizationBaseline() {
        val ultraShortNormalizationEv = kotlin.math.log2(3f)
        val legacyExposureOffsetEv = 1.600188f

        assertEquals(
            ultraShortNormalizationEv + legacyExposureOffsetEv,
            DngBaselineExposure.resolveCaptureBaseline(
                sourceBaselineEv = ultraShortNormalizationEv,
                legacyExposureOffsetEv = legacyExposureOffsetEv,
            ),
            0f,
        )
    }

    @Test
    fun sourceNormalizationBaselineIsRetainedWithoutSceneEstimate() {
        val ultraShortNormalizationEv = kotlin.math.log2(3f)

        assertEquals(
            ultraShortNormalizationEv,
            DngBaselineExposure.resolveCaptureBaseline(
                sourceBaselineEv = ultraShortNormalizationEv,
                legacyExposureOffsetEv = null,
            ),
            0f,
        )
    }
}
