package com.hinnka.mycamera.raw

import org.junit.Assert.*
import org.junit.Test

class MgcFinishResolutionTest {
    @Test
    fun originalAutomaticPolicyChangesAtTwoTimesOutput() {
        for ((output, factor) in listOf(4000 to 4, 5200 to 4, 6000 to 4, 7998 to 4,
                                       8000 to 2, 12000 to 2, 16000 to 2)) {
            val resolution = MgcFinishResolution.resolve(4000, 3000, output, output * 3 / 4)
            assertEquals(factor, resolution.downsampleFactor)
            assertEquals(factor * 2, resolution.processingPeriod)
            assertTrue(resolution.needsGuidedUpsample)
        }
    }

    @Test
    fun largerAxisAndExplicitOriginalOverridesDetermineTheLevel() {
        assertEquals(2, MgcFinishResolution.resolve(4000, 3000, 4000, 6000).downsampleFactor)
        assertEquals(4, MgcFinishResolution.resolve(4000, 3000, 8000, 6000,
            scaleOverride = 1f).downsampleFactor)
        assertEquals(2, MgcFinishResolution.resolve(4000, 3000, 4000, 3000,
            scaleOverride = 2f).downsampleFactor)
        val direct = MgcFinishResolution.resolve(4000, 3000, 4000, 3000, levelOverride = 0)
        assertFalse(direct.needsGuidedUpsample)
        assertEquals(1, direct.downsampleFactor)
    }

    @Test
    fun rotationAndTilesUseTheSameWholeImageDecision() {
        val bounds = RawTileRect(12, 20, 4012, 3020)
        for (rotation in listOf(0, 90, 180, 270)) {
            assertEquals(4, RawOutputGeometry(bounds, rotation, 1f).mgcFinishResolution.downsampleFactor)
            assertEquals(2, RawOutputGeometry(bounds, rotation, 2f).mgcFinishResolution.downsampleFactor)
        }
    }
}
