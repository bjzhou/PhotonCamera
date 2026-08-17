package com.hinnka.mycamera.processor

import org.junit.Assert.assertEquals
import org.junit.Test

class MgcSabreRejectionTuningTest {
    @Test
    fun flowVariationThresholdUsesOriginalGuideWidthNormalization() {
        assertEquals(
            1e-4f,
            MgcSabreRejectionTuning.flowVariationThreshold(2016),
            0f,
        )
        assertEquals(
            2016f / 2040f * 1e-4f,
            MgcSabreRejectionTuning.flowVariationThreshold(2040),
            0f,
        )
    }
}
