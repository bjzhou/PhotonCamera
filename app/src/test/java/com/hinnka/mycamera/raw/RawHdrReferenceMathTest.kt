package com.hinnka.mycamera.raw

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class RawHdrReferenceMathTest {
    @Test
    fun leavesMidtonesUnchanged() {
        assertEquals(0.5f, RawHdrReferenceMath.expandedSceneLuma(0.5f), 0.0001f)
    }

    @Test
    fun givesOrdinaryHighlightsGentleLift() {
        val highlight = RawHdrReferenceMath.expandedSceneLuma(0.6f)

        assertTrue(highlight > 0.66f)
        assertTrue(highlight < 0.72f)
    }

    @Test
    fun keepsNearWhiteHighlightSeparation() {
        val lower = RawHdrReferenceMath.expandedSceneLuma(0.98f)
        val white = RawHdrReferenceMath.expandedSceneLuma(1.0f)

        assertTrue(white > lower)
        assertTrue(white - lower > 0.04f)
    }

    @Test
    fun broadHighlightsStillGetVisibleLift() {
        assertTrue(RawHdrReferenceMath.expandedSceneLuma(0.85f) > 1.35f)
    }

    @Test
    fun keepsBrightCloudTonesOrdered() {
        val lower = RawHdrReferenceMath.expandedSceneLuma(0.72f)
        val middle = RawHdrReferenceMath.expandedSceneLuma(0.85f)
        val upper = RawHdrReferenceMath.expandedSceneLuma(0.98f)

        assertTrue(middle > lower)
        assertTrue(upper > middle)
    }

    @Test
    fun capsDiffuseWhiteAtReferenceHeadroom() {
        assertEquals(
            RawHdrReferenceMath.WHITE_POINT_SCENE_LUMA,
            RawHdrReferenceMath.expandedSceneLuma(1.0f),
            0.0001f
        )
    }
}
