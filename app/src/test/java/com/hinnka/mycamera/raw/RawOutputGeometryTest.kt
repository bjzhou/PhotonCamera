package com.hinnka.mycamera.raw

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class RawOutputGeometryTest {
    @Test
    fun fractionalScalingKeepsTileSamplesOnTheFullImageGrid() {
        val crop = RawTileRect(7, 11, 4986, 3478)
        for (rotation in listOf(0, 90, 180, 270)) {
            for (scale in listOf(1f, 1.3f, 1.5f, 2f)) {
                val geometry = RawOutputGeometry(crop, rotation, scale)
                val tiles = RawTilePlanner.plan(
                    5003, 3501, crop, rotation, 2048, 115, 2, 4,
                )
                val fullMatrix = geometry.textureMatrix(5003, 3501, 0, 0, geometry.fullRegion)
                val regions = tiles.map { geometry.scaleRegion(it.outputCore) }
                assertEquals(geometry.width.toLong() * geometry.height,
                    regions.sumOf { it.width.toLong() * it.height })
                for ((index, tile) in tiles.withIndex()) {
                    val region = regions[index]
                    val work = tile.sourceWorking
                    val matrix = geometry.textureMatrix(
                        work.width, work.height, work.left, work.top, region,
                    )
                    // Compare pixel centers at every corner and the center of every tile.
                    for (x in listOf(0, region.width / 2, region.width - 1)) {
                        for (y in listOf(0, region.height / 2, region.height - 1)) {
                            val u = (x + 0.5) / region.width
                            val v = (y + 0.5) / region.height
                            val gu = (region.left + x + 0.5) / geometry.width
                            val gv = (region.top + y + 0.5) / geometry.height
                            val sx = (matrix[0] * u + matrix[4] * v + matrix[12]) * work.width + work.left
                            val sy = (matrix[1] * u + matrix[5] * v + matrix[13]) * work.height + work.top
                            assertEquals((fullMatrix[0] * gu + fullMatrix[4] * gv + fullMatrix[12]) * 5003, sx, 0.001)
                            assertEquals((fullMatrix[1] * gu + fullMatrix[5] * gv + fullMatrix[13]) * 3501, sy, 0.001)
                            assertTrue(sx >= work.left && sx <= work.right)
                            assertTrue(sy >= work.top && sy <= work.bottom)
                        }
                    }
                }
            }
        }
    }

    @Test
    fun rotationMapsFirstPixelToTheCorrectSensorCornerWithoutHalfPixelShift() {
        val crop = RawTileRect(7, 11, 108, 84)
        val expected = listOf(7.5 to 11.5, 7.5 to 83.5, 107.5 to 83.5, 107.5 to 11.5)
        for ((index, rotation) in listOf(0, 90, 180, 270).withIndex()) {
            val geometry = RawOutputGeometry(crop, rotation, 1f)
            val matrix = geometry.textureMatrix(113, 91, 0, 0, geometry.fullRegion)
            val u = 0.5 / geometry.width
            val v = 0.5 / geometry.height
            assertEquals(expected[index].first,
                (matrix[0] * u + matrix[4] * v + matrix[12]) * 113, 0.00001)
            assertEquals(expected[index].second,
                (matrix[1] * u + matrix[5] * v + matrix[13]) * 91, 0.00001)
        }
    }

    @Test
    fun oldDngDoesNotScaleAgainAndNewScaleSurvivesMetadataRoundTrip() {
        assertEquals(1f, RawOutputScaling.read(emptyMap()), 0f)
        val properties = RawOutputScaling.write(mapOf("existing" to "value"), 1.5f)
        assertEquals("value", properties["existing"])
        assertEquals(1.5f, RawOutputScaling.read(properties.toMap()), 0f)
        assertEquals(1f, RawOutputScaling.read(mapOf("rawDisplayOutputScale" to "NaN")), 0f)
    }
}
