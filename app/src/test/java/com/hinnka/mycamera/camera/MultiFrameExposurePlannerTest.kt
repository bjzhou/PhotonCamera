package com.hinnka.mycamera.camera

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class MultiFrameExposurePlannerTest {
    @Test
    fun longExposureUsesIsoAfterTenMillisecondShutterCap() {
        val plan = MultiFrameExposurePlanner.planLongExposure(
            baseIso = 100,
            baseExposureTimeNs = 3_000_000L,
            isoLower = 50,
            isoUpper = 6400,
            exposureTimeLowerNs = 100_000L,
            exposureTimeUpperNs = 1_000_000_000L,
        )

        assertTrue(plan.exposureTimeNs <= MultiFrameConfig.LONG_FRAME_MAX_EXPOSURE_TIME_NS)
        assertEquals(170, plan.sensitivityIso)
        assertEquals(MultiFrameConfig.LONG_FRAME_EXPOSURE_EV, plan.plannedDeltaEv, 0.01)
        assertFalse(plan.isoUpperLimited)
        assertTrue(plan.shutterUpperLimited)
    }

    @Test
    fun isoLimitProducesAnHonestActualExposureDelta() {
        val plan = MultiFrameExposurePlanner.planLongExposure(
            baseIso = 800,
            baseExposureTimeNs = 5_000_000L,
            isoLower = 50,
            isoUpper = 1600,
            exposureTimeLowerNs = 100_000L,
            exposureTimeUpperNs = 1_000_000_000L,
        )

        assertEquals(10_000_000L, plan.exposureTimeNs)
        assertEquals(1600, plan.sensitivityIso)
        assertEquals(2.0, plan.plannedDeltaEv, 1e-6)
        assertTrue(plan.isoUpperLimited)
        assertTrue(plan.shutterUpperLimited)
    }

    @Test
    fun normalFrameSlowerThanOneHundredthBecomesTheShutterLimit() {
        val plan = MultiFrameExposurePlanner.planLongExposure(
            baseIso = 400,
            baseExposureTimeNs = 20_000_000L,
            isoLower = 50,
            isoUpper = 800,
            exposureTimeLowerNs = 100_000L,
            exposureTimeUpperNs = 1_000_000_000L,
        )

        assertEquals(20_000_000L, plan.exposureTimeUpperLimitNs)
        assertEquals(20_000_000L, plan.exposureTimeNs)
        assertEquals(800, plan.sensitivityIso)
        assertEquals(1.0, plan.plannedDeltaEv, 1e-6)
        assertFalse(plan.upperLimitsProduceLowerExposureThanBase)
    }

    @Test
    fun exhaustedAnalogIsoAndShutterLimitsCanFallBelowTheNormalFrame() {
        val plan = MultiFrameExposurePlanner.planLongExposure(
            baseIso = 1600,
            baseExposureTimeNs = 20_000_000L,
            isoLower = 50,
            isoUpper = 800,
            exposureTimeLowerNs = 100_000L,
            exposureTimeUpperNs = 1_000_000_000L,
        )

        val baseExposureProduct = 1600.0 * 20_000_000.0
        assertEquals(plan.exposureTimeUpperLimitNs, plan.exposureTimeNs)
        assertEquals(800, plan.sensitivityIso)
        assertTrue(plan.plannedExposureProduct < baseExposureProduct)
        assertTrue(plan.isoUpperLimited)
        assertTrue(plan.shutterUpperLimited)
        assertTrue(plan.upperLimitsProduceLowerExposureThanBase)
    }
}
