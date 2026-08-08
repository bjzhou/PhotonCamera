package com.hinnka.mycamera.processor

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class MgcSpatialRgbTilePlannerTest {
    @Test
    fun planCoversOutputExactlyOnce() {
        val tiles = MgcSpatialRgbTilePlanner.plan(
            outputWidth = 8160,
            outputHeight = 6128,
        )

        assertEquals(
            8160L * 6128L,
            tiles.sumOf { it.outputCore.width.toLong() * it.outputCore.height },
        )
        assertEquals(MgcSpatialRgbRect(0, 0, 1024, 1024), tiles.first().outputCore)
        assertEquals(MgcSpatialRgbRect(7168, 6144 - 1024, 8160, 6128), tiles.last().outputCore)
    }

    @Test
    fun twoTimesOutputMapsToHalfSizedRawRegion() {
        val tile = MgcSpatialRgbTile(
            index = 0,
            outputCore = MgcSpatialRgbRect(2048, 1024, 3072, 2048),
        )

        val source = MgcSpatialRgbTilePlanner.sourceRegion(
            tile = tile,
            rawWidth = 4080,
            rawHeight = 3064,
            outputWidth = 8160,
            outputHeight = 6128,
            flowBounds = MgcSpatialRgbFlowBounds.Zero,
        )

        assertEquals(MgcSpatialRgbRect(1023, 511, 1537, 1025), source)
    }

    @Test
    fun sourceRegionIncludesQuadFlowAndRawKernel() {
        val tile = MgcSpatialRgbTile(
            index = 0,
            outputCore = MgcSpatialRgbRect(1024, 1024, 2048, 2048),
        )

        val source = MgcSpatialRgbTilePlanner.sourceRegion(
            tile = tile,
            rawWidth = 4096,
            rawHeight = 3072,
            outputWidth = 8192,
            outputHeight = 6144,
            flowBounds = MgcSpatialRgbFlowBounds(-2.25f, -1.5f, 3.5f, 4.25f),
        )

        assertEquals(MgcSpatialRgbRect(506, 508, 1032, 1034), source)
        assertTrue(source.width > tile.outputCore.width / 2)
        assertTrue(source.height > tile.outputCore.height / 2)
    }

    @Test
    fun edgeSourceRegionIsClampedToSensor() {
        val tile = MgcSpatialRgbTile(
            index = 0,
            outputCore = MgcSpatialRgbRect(0, 0, 1024, 1024),
        )

        val source = MgcSpatialRgbTilePlanner.sourceRegion(
            tile = tile,
            rawWidth = 4080,
            rawHeight = 3064,
            outputWidth = 8160,
            outputHeight = 6128,
            flowBounds = MgcSpatialRgbFlowBounds(-20f, -20f, 1f, 1f),
        )

        assertEquals(0, source.left)
        assertEquals(0, source.top)
        assertTrue(source.right <= 4080)
        assertTrue(source.bottom <= 3064)
    }
}
