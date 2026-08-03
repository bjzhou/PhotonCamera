package com.hinnka.mycamera.processor

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class RawStackSuperResolutionPhaseTrackerTest {
    @Test
    fun identicalPhaseHasNoNovelty() {
        val tracker = tracker()

        assertEquals(0f, tracker.noveltyWeight(2f, -2f), 1e-5f)
        assertEquals(1, tracker.occupiedBinCount)
    }

    @Test
    fun complementaryBayerPhasesFillFourBins() {
        val tracker = tracker()
        val phases = listOf(1f to 0f, 0f to 1f, 1f to 1f)

        phases.forEach { (x, y) ->
            assertTrue(tracker.noveltyWeight(x, y) > 0.99f)
            tracker.record(x, y)
        }

        assertEquals(4, tracker.occupiedBinCount)
        assertEquals(1f, tracker.coverage, 1e-5f)
        assertEquals(listOf(1, 1, 1, 1), tracker.phaseBinCounts)
    }

    @Test
    fun wrappingUsesSameCfaPhase() {
        val tracker = tracker()
        tracker.record(1f, 0f)

        assertEquals(0f, tracker.noveltyWeight(-1f, 2f), 1e-5f)
    }

    @Test
    fun reportsOnlyBinsThatHaveActuallyBeenAccumulated() {
        val tracker = tracker()

        assertTrue(tracker.isUnoccupiedBin(1f, 0f))
        tracker.record(1f, 0f)
        assertTrue(!tracker.isUnoccupiedBin(1f, 0f))
        assertEquals(2, tracker.occupiedBinCount)
    }

    private fun tracker() = RawStackSuperResolutionPhaseTracker(
        cfaPeriod = 2,
        outputScale = 2f,
        noveltyStartPx = 0.1f,
        noveltyFullPx = 0.45f,
    )
}
