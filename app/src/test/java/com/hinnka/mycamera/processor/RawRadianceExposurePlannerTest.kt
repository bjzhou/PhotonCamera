package com.hinnka.mycamera.processor

import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

class RawRadianceExposurePlannerTest {
    @Test
    fun taggedShortFrameIsExcludedEvenWhenExposureMetadataMatchesNormalFrames() {
        val plan = RawRadianceExposurePlanner.plan(
            exposureProducts = listOf(300.0, 300.0, 300.0),
            frameRoles = listOf(
                RawBurstFrameRole.NORMAL,
                RawBurstFrameRole.NORMAL,
                RawBurstFrameRole.HIGHLIGHT_SHORT,
            ),
        )

        assertArrayEquals(intArrayOf(0, 1), plan.normalIndices)
        assertEquals(2, plan.shortIndex)
        assertArrayEquals(IntArray(0), plan.excludedIndices)
    }

    @Test
    fun acceptsOneThirdExposureAfterNormalFrameCluster() {
        val plan = RawRadianceExposurePlanner.plan(
            listOf(100.0, 101.0, 99.0, 100.5, 33.333, 100.0),
        )

        assertEquals(100.0, plan.baseExposureProduct!!, 1e-6)
        assertArrayEquals(intArrayOf(0, 1, 2, 3, 5), plan.normalIndices)
        assertEquals(4, plan.shortIndex)
        assertArrayEquals(IntArray(0), plan.excludedIndices)
        assertArrayEquals(intArrayOf(0, 1, 2, 3, 5, 4), plan.acceptedIndices)
    }

    @Test
    fun rejectsExposureOutliersThatAreNotThePlannedShortFrame() {
        val plan = RawRadianceExposurePlanner.plan(
            listOf(100.0, 100.0, 33.0, 250.0, 100.0),
        )

        assertArrayEquals(intArrayOf(0, 1, 4), plan.normalIndices)
        assertEquals(2, plan.shortIndex)
        assertArrayEquals(intArrayOf(3), plan.excludedIndices)
    }

    @Test
    fun preservesSameExposureBurstsWithoutInventingShortFrame() {
        val plan = RawRadianceExposurePlanner.plan(listOf(100.0, 101.0, 99.0))

        assertArrayEquals(intArrayOf(0, 1, 2), plan.normalIndices)
        assertNull(plan.shortIndex)
        assertArrayEquals(IntArray(0), plan.excludedIndices)
    }

    @Test
    fun taggedLongFramesArePlannedFromActualExposureWithoutEnteringNormalCluster() {
        val plan = RawRadianceExposurePlanner.plan(
            exposureProducts = listOf(100.0, 101.0, 33.0, 420.0, 250.0),
            frameRoles = listOf(
                RawBurstFrameRole.NORMAL,
                RawBurstFrameRole.NORMAL,
                RawBurstFrameRole.HIGHLIGHT_SHORT,
                RawBurstFrameRole.SHADOW_LONG,
                RawBurstFrameRole.SHADOW_LONG,
            ),
        )

        assertEquals(101.0, plan.baseExposureProduct!!, 1e-6)
        assertArrayEquals(intArrayOf(0, 1), plan.normalIndices)
        assertEquals(2, plan.shortIndex)
        assertArrayEquals(intArrayOf(3, 4), plan.longIndices)
        assertArrayEquals(IntArray(0), plan.excludedIndices)
        assertArrayEquals(intArrayOf(0, 1, 2, 3, 4), plan.acceptedIndices)
    }

    @Test
    fun taggedLongFrameRemainsLongWhenIsoLimitMakesExposureMatchNormal() {
        val plan = RawRadianceExposurePlanner.plan(
            exposureProducts = listOf(100.0, 100.0, 33.0, 100.0),
            frameRoles = listOf(
                RawBurstFrameRole.NORMAL,
                RawBurstFrameRole.NORMAL,
                RawBurstFrameRole.HIGHLIGHT_SHORT,
                RawBurstFrameRole.SHADOW_LONG,
            ),
        )

        assertArrayEquals(intArrayOf(0, 1), plan.normalIndices)
        assertArrayEquals(intArrayOf(3), plan.longIndices)
        assertArrayEquals(IntArray(0), plan.excludedIndices)
    }

    @Test
    fun hdrDisabledTreatsEveryFrameAsSameExposureWithoutAuxiliaryResources() {
        val plan = RawRadianceExposurePlanner.plan(
            exposureProducts = listOf(100.0, 33.0, 420.0),
            frameRoles = listOf(
                RawBurstFrameRole.NORMAL,
                RawBurstFrameRole.HIGHLIGHT_SHORT,
                RawBurstFrameRole.SHADOW_LONG,
            ),
            enableHdrFusion = false,
        )

        assertArrayEquals(intArrayOf(0, 1, 2), plan.normalIndices)
        assertNull(plan.shortIndex)
        assertArrayEquals(IntArray(0), plan.longIndices)
        assertArrayEquals(IntArray(0), plan.excludedIndices)
    }
}
