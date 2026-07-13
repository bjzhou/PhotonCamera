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

    @Test
    fun fullFrameHistogramIncludesPixelsOutsideCenterRegion() {
        val width = 32
        val height = 32
        val pixels = IntArray(width * height) { displayGrayscaleArgb(255) }
        for (y in 8 until 24) {
            for (x in 8 until 24) {
                pixels[y * width + x] = displayGrayscaleArgb(0)
            }
        }

        val histogram = MeteringSystem.analyzeFullFrameSrgbHistogram(width, height, pixels)
            ?: error("Expected full-frame histogram")

        assertEquals(width * height, histogram.sampleCount)
        assertEquals(16 * 16, histogram.binCounts[0])
        assertEquals(width * height - 16 * 16, histogram.binCounts[255])
    }

    @Test
    fun histogramAverageEvGainTracksOneStopDisplayLumaChange() {
        val width = 32
        val height = 32
        val reference = MeteringSystem.analyzeFullFrameSrgbHistogram(
            width,
            height,
            IntArray(width * height) { displayGrayscaleArgb(128) }
        ) ?: error("Expected reference histogram")
        val rendered = MeteringSystem.analyzeFullFrameSrgbHistogram(
            width,
            height,
            IntArray(width * height) { displayGrayscaleArgb(64) }
        ) ?: error("Expected rendered histogram")

        val gain = MeteringSystem.histogramAverageEvGain(reference, rendered)
            ?: error("Expected EV gain")

        assertEquals(1f, gain, 0.02f)
    }

    @Test
    fun histogramAverageEvGainAveragesMixedSceneInEvDomain() {
        val width = 32
        val height = 32
        val referencePixels = IntArray(width * height) { index ->
            displayGrayscaleArgb(if (index < width * height / 2) 64 else 128)
        }
        val renderedPixels = IntArray(width * height) { index ->
            displayGrayscaleArgb(if (index < width * height / 2) 32 else 64)
        }
        val reference = MeteringSystem.analyzeFullFrameSrgbHistogram(
            width,
            height,
            referencePixels
        ) ?: error("Expected reference histogram")
        val rendered = MeteringSystem.analyzeFullFrameSrgbHistogram(
            width,
            height,
            renderedPixels
        ) ?: error("Expected rendered histogram")

        val gain = MeteringSystem.histogramAverageEvGain(reference, rendered)
            ?: error("Expected EV gain")

        assertEquals(1f, gain, 0.03f)
    }

    private fun grayscalePixels(width: Int, height: Int, linearLuma: Float): IntArray {
        return IntArray(width * height) { grayscaleArgb(linearLuma) }
    }

    private fun displayGrayscaleArgb(value: Int): Int {
        val byte = value.coerceIn(0, 255)
        return (0xff shl 24) or (byte shl 16) or (byte shl 8) or byte
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
