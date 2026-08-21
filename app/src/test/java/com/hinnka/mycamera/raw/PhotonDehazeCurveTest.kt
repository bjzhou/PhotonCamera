package com.hinnka.mycamera.raw

import com.hinnka.mycamera.processor.PhotonDehazeTuning
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class PhotonDehazeCurveTest {
    @Test
    fun zeroStrengthsProduceIdentityCurve() {
        val histogram = PhotonDehazeHistogram()
        repeat(4096) { histogram.addLinearRgb(0.2f, 0.4f, 0.6f) }

        val curve = requireNotNull(
            histogram.estimateCurve(
                PhotonDehazeTuning(
                    enabled = true,
                    strength = 0f,
                    dynamicHighlightStrength = 0f,
                ),
            ),
        )

        assertEquals(0f, curve.hazePointLow, 0f)
        assertEquals(0f, curve.hazePointHigh, 0f)
        assertEquals(1f, curve.highlightScale, 0f)
        assertEquals(0.37f, curve.mappedLuminance(0.37f), 1e-6f)
    }

    @Test
    fun dehazeCurveIsFiniteContinuousAndMonotonic() {
        val histogram = PhotonDehazeHistogram()
        repeat(10000) { index ->
            val value = index.toFloat() / 9999f
            histogram.addLinearRgb(value * 0.8f, value, value * 0.6f)
        }
        val curve = requireNotNull(
            histogram.estimateCurve(
                PhotonDehazeTuning(
                    enabled = true,
                    strength = 1f,
                    dynamicHighlightStrength = 1f,
                ),
            ),
        )

        var previous = curve.mappedLuminance(0f)
        for (index in 1..1000) {
            val mapped = curve.mappedLuminance(index / 1000f)
            assertTrue(mapped.isFinite())
            assertTrue("curve regressed at $index", mapped + 1e-6f >= previous)
            previous = mapped
        }
        val below = curve.mappedLuminance((curve.hazePointHigh - 1e-5f).coerceAtLeast(0f))
        val above = curve.mappedLuminance((curve.hazePointHigh + 1e-5f).coerceAtMost(1f))
        assertTrue(kotlin.math.abs(above - below) < 1e-3f)
    }

    @Test
    fun dynamicHighlightControlDoesNotChangeDetectedSceneScale() {
        fun estimate(dynamicStrength: Float): PhotonDehazeCurveParameters {
            val histogram = PhotonDehazeHistogram()
            repeat(2048) { histogram.addLinearRgb(0.3f, 0.4f, 0.5f) }
            return requireNotNull(
                histogram.estimateCurve(
                    PhotonDehazeTuning(
                        enabled = true,
                        strength = 1f,
                        dynamicHighlightStrength = dynamicStrength,
                    ),
                ),
            )
        }

        val disabled = estimate(0f)
        val enabled = estimate(1f)
        assertEquals(enabled.detectedHighlightScale, disabled.detectedHighlightScale, 0f)
        assertEquals(1f, disabled.highlightScale, 0f)
        assertEquals(enabled.detectedHighlightScale, enabled.highlightScale, 0f)
    }

    @Test
    fun shaderUsesBoxLowFrequencyAndSharedRgbGain() {
        val downsample = PhotonDehazePipeline.DOWNSAMPLE_FRAGMENT_SHADER
        val apply = PhotonDehazePipeline.APPLY_FRAGMENT_SHADER

        assertTrue(downsample.contains("sourceBase = outputPosition * 8"))
        assertTrue(downsample.contains("texelFetch(uLinearRgb"))
        assertTrue(apply.contains("(rgb.r + rgb.g + rgb.b) * (1.0 / 3.0)"))
        assertTrue(apply.contains("rgb * gain"))
        assertTrue(!apply.contains("pow("))
    }
}
