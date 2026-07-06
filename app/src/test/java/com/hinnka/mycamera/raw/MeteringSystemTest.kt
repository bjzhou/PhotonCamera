package com.hinnka.mycamera.raw

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import kotlin.math.pow
import kotlin.math.roundToInt

class MeteringSystemTest {
    @Test
    fun neutralThumbnailKeepsAutoHighlightsNeutral() {
        val pixels = grayscalePixels(width = 64, height = 64, linearLuma = 0.18f)

        val stats = MeteringSystem.analyzeSrgbThumbnail(64, 64, pixels)
            ?: error("Expected metering stats")

        assertEquals(0f, stats.highlightCompression.amount, 0.0001f)
        assertEquals(0f, stats.highlightCompression.autoHighlightsAdjustment, 0.0001f)
    }

    @Test
    fun tinySpecularHighlightDoesNotDominateAutoHighlights() {
        val width = 64
        val height = 64
        val pixels = grayscalePixels(width, height, linearLuma = 0.18f)
        pixels[(height / 2) * width + width / 2] = grayscaleArgb(0.99f)

        val stats = MeteringSystem.analyzeSrgbThumbnail(width, height, pixels)
            ?: error("Expected metering stats")

        assertTrue(stats.highlightCompression.amount < 0.01f)
        assertEquals(0f, stats.highlightCompression.autoHighlightsAdjustment, 0.0001f)
    }

    @Test
    fun broadCompressedHighlightsProduceNegativeAutoHighlights() {
        val width = 64
        val height = 64
        val pixels = grayscalePixels(width, height, linearLuma = 0.18f)
        for (y in 16 until 48) {
            for (x in 16 until 48) {
                pixels[y * width + x] = grayscaleArgb(0.98f)
            }
        }

        val stats = MeteringSystem.analyzeSrgbThumbnail(width, height, pixels)
            ?: error("Expected metering stats")

        assertTrue(stats.highlightCompression.amount > 0.18f)
        assertTrue(stats.highlightCompression.strength > 0.85f)
        assertTrue(stats.highlightCompression.reductionThreshold > 0.90f)
        assertTrue(stats.highlightCompression.autoHighlightsAdjustment < -0.60f)
    }

    private fun grayscalePixels(width: Int, height: Int, linearLuma: Float): IntArray {
        return IntArray(width * height) { grayscaleArgb(linearLuma) }
    }

    private fun grayscaleArgb(linearLuma: Float): Int {
        val byte = linearToSrgbByte(linearLuma)
        return (0xff shl 24) or (byte shl 16) or (byte shl 8) or byte
    }

    private fun linearToSrgbByte(linear: Float): Int {
        val clamped = linear.coerceIn(0f, 1f)
        val srgb = if (clamped <= 0.0031308f) {
            clamped * 12.92f
        } else {
            1.055f * clamped.pow(1f / 2.4f) - 0.055f
        }
        return (srgb * 255f).roundToInt().coerceIn(0, 255)
    }
}
