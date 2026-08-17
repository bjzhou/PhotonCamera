package com.hinnka.mycamera.processor

import org.junit.Assert.assertEquals
import org.junit.Test

class MgcAlignmentInputScaleTest {
    @Test
    fun mapsNativeRawCodeRangeIntoMgcS16AlignmentDomain() {
        assertEquals(16f, MgcAlignmentInputScale.compute(1f, 1023f), 0f)
        assertEquals(4f, MgcAlignmentInputScale.compute(1f, 4095f), 0f)
        assertEquals(1f, MgcAlignmentInputScale.compute(1f, 16383f), 0f)
    }

    @Test
    fun preservesPerFrameExposureGain() {
        assertEquals(8f, MgcAlignmentInputScale.compute(0.5f, 1023f), 0f)
        assertEquals(32f, MgcAlignmentInputScale.compute(2f, 1023f), 0f)
    }
}
