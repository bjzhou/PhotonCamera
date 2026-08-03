package com.hinnka.mycamera.utils

import androidx.test.ext.junit.runners.AndroidJUnit4
import java.nio.ByteBuffer
import java.nio.ByteOrder
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(AndroidJUnit4::class)
class DirectBufferPixelPackerTest {
    @Test
    fun rgba16TileIsPackedIntoRgb16DestinationWithoutTouchingOtherPixels() {
        val sourceWidth = 3
        val sourceHeight = 2
        val destinationWidth = 5
        val destinationHeight = 4
        val source = ByteBuffer.allocateDirect(sourceWidth * sourceHeight * 4 * 2)
            .order(ByteOrder.nativeOrder())
        val sourceSamples = source.asShortBuffer()
        repeat(sourceWidth * sourceHeight) { pixel ->
            sourceSamples.put(pixel * 4, (pixel * 10 + 1).toShort())
            sourceSamples.put(pixel * 4 + 1, (pixel * 10 + 2).toShort())
            sourceSamples.put(pixel * 4 + 2, (pixel * 10 + 3).toShort())
            sourceSamples.put(pixel * 4 + 3, (pixel * 10 + 4).toShort())
        }
        val untouched = 0x7ff0.toShort()
        val destination = ByteBuffer.allocateDirect(destinationWidth * destinationHeight * 3 * 2)
            .order(ByteOrder.nativeOrder())
        val destinationSamples = destination.asShortBuffer()
        repeat(destinationSamples.capacity()) { destinationSamples.put(it, untouched) }

        assertTrue(
            DirectBufferPixelPacker.unpackRgba16TileToRgb16(
                source = source,
                sourceWidth = sourceWidth,
                sourceHeight = sourceHeight,
                destination = destination,
                destinationWidth = destinationWidth,
                destinationHeight = destinationHeight,
                destinationLeft = 1,
                destinationTop = 1,
            )
        )

        for (y in 0 until destinationHeight) {
            for (x in 0 until destinationWidth) {
                val destinationPixel = (y * destinationWidth + x) * 3
                if (x in 1..3 && y in 1..2) {
                    val sourcePixel = ((y - 1) * sourceWidth + x - 1) * 10
                    assertEquals((sourcePixel + 1).toShort(), destinationSamples[destinationPixel])
                    assertEquals((sourcePixel + 2).toShort(), destinationSamples[destinationPixel + 1])
                    assertEquals((sourcePixel + 3).toShort(), destinationSamples[destinationPixel + 2])
                } else {
                    assertEquals(untouched, destinationSamples[destinationPixel])
                    assertEquals(untouched, destinationSamples[destinationPixel + 1])
                    assertEquals(untouched, destinationSamples[destinationPixel + 2])
                }
            }
        }
    }
}
