package com.hinnka.mycamera.processor

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class RawSuperResolutionStripePlannerTest {
    @Test
    fun stationaryTwoXStripeUploadsOnlyCorrespondingRawBand() {
        val band = RawSuperResolutionStripePlanner.sourceRowBand(
            outputRowOffset = 512,
            outputRowCount = 256,
            outputScale = 2f,
            minFlowYPlanePx = 0f,
            maxFlowYPlanePx = 0f,
            cfaPeriod = 2,
            rawHeight = 3000,
        )

        assertEquals(242, band.firstRow)
        assertEquals(397, band.endExclusive)
        assertEquals(155, band.rowCount)
    }

    @Test
    fun flowExtremaExpandBandInBothDirections() {
        val stationary = RawSuperResolutionStripePlanner.sourceRowBand(512, 256, 2f, 0f, 0f, 2, 3000)
        val moving = RawSuperResolutionStripePlanner.sourceRowBand(512, 256, 2f, -6f, 8f, 2, 3000)

        assertTrue(moving.firstRow < stationary.firstRow)
        assertTrue(moving.endExclusive > stationary.endExclusive)
    }

    @Test
    fun firstAndLastStripeClampToSensorBounds() {
        val first = RawSuperResolutionStripePlanner.sourceRowBand(0, 256, 2f, -10f, 2f, 8, 1000)
        val last = RawSuperResolutionStripePlanner.sourceRowBand(1792, 208, 2f, -2f, 10f, 8, 1000)

        assertEquals(0, first.firstRow)
        assertEquals(0, last.firstRow % 8)
        assertEquals(1000, last.endExclusive)
    }
}
