package com.hinnka.mycamera.processor

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class RadianceTilePlannerTest {
    @Test
    fun twelveMegapixelFrameUsesTwelveNonOverlappingCores() {
        val tiles = RadianceTilePlanner.plan(
            rawWidth = 4096,
            rawHeight = 3072,
            outputWidth = 6144,
            outputHeight = 4608,
            coreSizeRawPx = 1024,
            outputSpatialRadiusPx = 2,
            cfaPeriod = 2,
        )

        assertEquals(12, tiles.size)
        assertEquals(RadianceTileRect(0, 0, 1024, 1024), tiles.first().rawCore)
        assertEquals(RadianceTileRect(0, 0, 1536, 1536), tiles.first().outputCore)
        assertEquals(RadianceTileRect(3072, 2048, 4096, 3072), tiles.last().rawCore)
        assertEquals(RadianceTileRect(4608, 3072, 6144, 4608), tiles.last().outputCore)
        assertEquals(4096L * 3072L, tiles.sumOf { it.rawCore.width.toLong() * it.rawCore.height })
        assertEquals(6144L * 4608L, tiles.sumOf { it.outputCore.width.toLong() * it.outputCore.height })
    }

    @Test
    fun edgeTilesCoverNonPowerOfTwoSensorWithoutGaps() {
        val tiles = RadianceTilePlanner.plan(
            rawWidth = 4032,
            rawHeight = 3024,
            outputWidth = 6048,
            outputHeight = 4536,
            coreSizeRawPx = 1024,
            outputSpatialRadiusPx = 2,
            cfaPeriod = 2,
        )

        assertEquals(12, tiles.size)
        assertEquals(960, tiles[3].rawCore.width)
        assertEquals(976, tiles[8].rawCore.height)
        assertEquals(4032L * 3024L, tiles.sumOf { it.rawCore.width.toLong() * it.rawCore.height })
        assertEquals(6048L * 4536L, tiles.sumOf { it.outputCore.width.toLong() * it.outputCore.height })
    }

    @Test
    fun sourceRegionPreservesCfaPhaseAndContainsFlowHalo() {
        val tile = RadianceTilePlanner.plan(
            rawWidth = 4096,
            rawHeight = 3072,
            outputWidth = 6144,
            outputHeight = 4608,
            coreSizeRawPx = 1024,
            outputSpatialRadiusPx = 2,
            cfaPeriod = 4,
        )[5]
        val source = RadianceTilePlanner.sourceRegion(
            tile = tile,
            rawWidth = 4096,
            rawHeight = 3072,
            outputWidth = 6144,
            outputHeight = 4608,
            flowBounds = RadianceFlowBounds(-12f, 9f, -7f, 11f),
            cfaPeriod = 4,
            reconstructionHaloRawPx = 20,
            radianceSampleRadiusRawPx = 1,
        )

        assertEquals(0, source.left % 4)
        assertEquals(0, source.top % 4)
        assertEquals(0, source.right % 4)
        assertEquals(0, source.bottom % 4)
        assertTrue(source.left < tile.rawCore.left - 20)
        assertTrue(source.top < tile.rawCore.top - 10)
        assertTrue(source.right > tile.rawCore.right + 15)
        assertTrue(source.bottom > tile.rawCore.bottom + 20)
    }
}
