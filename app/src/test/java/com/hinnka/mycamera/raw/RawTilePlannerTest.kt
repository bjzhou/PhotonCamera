package com.hinnka.mycamera.raw

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class RawTilePlannerTest {
    @Test
    fun hundredMegapixelOutputUsesDisjointBoundedCores() {
        val bounds = RawTileRect(0, 0, 11_648, 8_736)
        val tiles = RawTilePlanner.plan(
            sourceWidth = bounds.width,
            sourceHeight = bounds.height,
            outputSourceBounds = bounds,
            rotation = 0,
            coreEdgePx = 2_048,
            supportPx = 112,
            cfaPeriod = 2,
        )

        assertEquals(30, tiles.size)
        assertEquals(
            bounds.width.toLong() * bounds.height,
            tiles.sumOf { it.outputCore.width.toLong() * it.outputCore.height },
        )
        assertTrue(tiles.all { it.sourceWorking.width <= 2_274 })
        assertTrue(tiles.all { it.sourceWorking.height <= 2_274 })
        assertTrue(tiles.all { it.sourceWorking.contains(it.sourceCore) })
    }

    @Test
    fun allRotationsMapOutputBackToTheSameSourceCrop() {
        val sourceWidth = 43
        val sourceHeight = 34
        val sourceBounds = RawTileRect(1, 2, 41, 32)
        for (rotation in listOf(0, 90, 180, 270)) {
            val tiles = RawTilePlanner.plan(
                sourceWidth = sourceWidth,
                sourceHeight = sourceHeight,
                outputSourceBounds = sourceBounds,
                rotation = rotation,
                coreEdgePx = 16,
                supportPx = 4,
                cfaPeriod = 2,
            )

            assertEquals(
                sourceBounds.width.toLong() * sourceBounds.height,
                tiles.sumOf { it.sourceCore.width.toLong() * it.sourceCore.height },
            )
            assertEquals(sourceBounds.left, tiles.minOf { it.sourceCore.left })
            assertEquals(sourceBounds.top, tiles.minOf { it.sourceCore.top })
            assertEquals(sourceBounds.right, tiles.maxOf { it.sourceCore.right })
            assertEquals(sourceBounds.bottom, tiles.maxOf { it.sourceCore.bottom })
            val coverage = IntArray(sourceWidth * sourceHeight)
            for (tile in tiles) {
                for (y in tile.sourceCore.top until tile.sourceCore.bottom) {
                    for (x in tile.sourceCore.left until tile.sourceCore.right) {
                        coverage[y * sourceWidth + x]++
                    }
                }
            }
            for (y in 0 until sourceHeight) {
                for (x in 0 until sourceWidth) {
                    val expected = if (
                        x in sourceBounds.left until sourceBounds.right &&
                        y in sourceBounds.top until sourceBounds.bottom
                    ) 1 else 0
                    assertEquals(
                        "rotation=$rotation pixel=[$x,$y]",
                        expected,
                        coverage[y * sourceWidth + x],
                    )
                }
            }
        }
    }

    @Test
    fun workingOriginsPreserveEightByEightCfaPhaseAndReuseDimensions() {
        val tiles = RawTilePlanner.plan(
            sourceWidth = 11_649,
            sourceHeight = 8_737,
            outputSourceBounds = RawTileRect(17, 31, 11_601, 8_701),
            rotation = 270,
            coreEdgePx = 2_048,
            supportPx = 112,
            cfaPeriod = 8,
        )

        assertTrue(tiles.all { it.sourceWorking.left % 8 == 0 })
        assertTrue(tiles.all { it.sourceWorking.top % 8 == 0 })
        assertEquals(1, tiles.map { it.sourceWorking.width }.distinct().size)
        assertEquals(1, tiles.map { it.sourceWorking.height }.distinct().size)
        assertTrue(tiles.all { it.sourceWorking.contains(it.sourceCore) })
        for (tile in tiles) {
            assertTrue(
                tile.sourceCore.left - tile.sourceWorking.left >=
                    minOf(112, tile.sourceCore.left),
            )
            assertTrue(
                tile.sourceWorking.right - tile.sourceCore.right >=
                    minOf(112, 11_649 - tile.sourceCore.right),
            )
            assertTrue(
                tile.sourceCore.top - tile.sourceWorking.top >=
                    minOf(112, tile.sourceCore.top),
            )
            assertTrue(
                tile.sourceWorking.bottom - tile.sourceCore.bottom >=
                    minOf(112, 8_737 - tile.sourceCore.bottom),
            )
        }
    }

    @Test
    fun phocusThresholdUsesEffectiveCropPixels() {
        assertTrue(!RawTilePlanner.shouldTile(3_000, 3_000))
        assertTrue(RawTilePlanner.shouldTile(3_001, 3_000))
    }

    @Test
    fun fourKCoreKeepsSingleCroppedTileBoundedToItsActualSourceCore() {
        val tiles = RawTilePlanner.plan(
            sourceWidth = 4_080,
            sourceHeight = 3_064,
            outputSourceBounds = RawTileRect(675, 507, 3_404, 2_556),
            rotation = 90,
            coreEdgePx = 4_096,
            supportPx = 112,
            cfaPeriod = 2,
        )

        assertEquals(1, tiles.size)
        assertEquals(RawTileRect(0, 0, 2_049, 2_729), tiles.single().outputCore)
        assertEquals(2_954, tiles.single().sourceWorking.width)
        assertEquals(2_274, tiles.single().sourceWorking.height)
    }
}
