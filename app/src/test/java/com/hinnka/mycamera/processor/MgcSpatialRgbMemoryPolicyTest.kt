package com.hinnka.mycamera.processor

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class MgcSpatialRgbMemoryPolicyTest {
    @Test
    fun allPlansOverAdvisoryStillSelectsSmallestRunnablePlan() {
        val advisory = 640L * 1024L * 1024L
        val projected = listOf(
            2_826_960_896L,
            1_900_000_000L,
            1_350_000_000L,
        )

        assertEquals(
            2,
            MgcSpatialRgbMemoryPolicy.selectAdvisoryPlanIndex(projected, advisory),
        )
    }

    @Test
    fun firstPlanWithinAdvisoryKeepsCandidatePriority() {
        val mib = 1024L * 1024L

        assertEquals(
            1,
            MgcSpatialRgbMemoryPolicy.selectAdvisoryPlanIndex(
                projectedBytes = listOf(900L * mib, 600L * mib, 400L * mib),
                advisoryBytes = 640L * mib,
            ),
        )
    }

    @Test
    fun twoTimesSpatialOutputKeepsOnlyThreeFullSizeIirSurfaces() {
        val workingSet = MgcSpatialRgbMemoryPolicy.iirWorkingSetBytes(8192, 6144)

        assertEquals(1_207_959_552L, workingSet)
        assertTrue(workingSet > 640L * 1024L * 1024L)
    }
}
