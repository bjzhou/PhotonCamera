package com.hinnka.mycamera.processor

import org.junit.Assert.assertEquals
import org.junit.Test

class MgcSabreRejectionTuningTest {
    @Test
    fun v25UsesOneResolutionScaledThresholdForBothMotionInputs() {
        val reference = MgcSabreRejectionTuning.flowVariationThresholds(2016)
        assertEquals(
            1e-4f,
            reference.unblockerReduction,
            0f,
        )
        assertEquals(
            1e-4f,
            reference.extraMotionRobustness,
            1e-12f,
        )

        val scaled = MgcSabreRejectionTuning.flowVariationThresholds(2040)
        val expectedBase = 2016f / 2040f * 1e-4f
        assertEquals(expectedBase, scaled.unblockerReduction, 0f)
        assertEquals(expectedBase, scaled.extraMotionRobustness, 0f)
    }
}
