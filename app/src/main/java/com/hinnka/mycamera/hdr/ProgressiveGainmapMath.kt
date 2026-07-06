package com.hinnka.mycamera.hdr

import android.graphics.Bitmap
import kotlin.math.ln
import kotlin.math.max
import kotlin.math.min
import kotlin.math.pow

object ProgressiveGainmapMath {
    data class SdrSample(
        val luma: Float,
        val maxChannel: Float,
        val saturation: Float
    )

    fun sampleSdr(bitmap: Bitmap, x: Int, y: Int): SdrSample {
        val c = bitmap.getColor(x, y)
        val r = srgbToLinear(c.red())
        val g = srgbToLinear(c.green())
        val b = srgbToLinear(c.blue())
        val luma = (0.2126f * r + 0.7152f * g + 0.0722f * b).coerceAtLeast(0f)
        val maxChannel = max(r, max(g, b))
        val minChannel = min(r, min(g, b))
        val saturation = if (maxChannel <= EPSILON) {
            0f
        } else {
            ((maxChannel - minChannel) / maxChannel).coerceIn(0f, 1f)
        }
        return SdrSample(luma, maxChannel, saturation)
    }

    fun progressiveToneRatio(sample: SdrSample, fullHdrRatio: Float, maxGainRatio: Float): Float {
        val displayHeadroom = fullHdrRatio.coerceIn(1.1f, maxGainRatio)
        val tonalPosition = (sample.luma * 0.72f + sample.maxChannel * 0.28f).coerceAtLeast(0f)
        val globalRamp = smoothstep(0.02f, 0.96f, tonalPosition).pow(TONE_POWER)
        val shoulderRamp = smoothstep(0.34f, 1.0f, sample.maxChannel).pow(SHOULDER_POWER)
        val chromaPenalty = 1.0f - sample.saturation * SATURATION_PENALTY

        val lift = (BASE_SCENE_LIFT + GLOBAL_SCENE_LIFT * globalRamp + SHOULDER_SCENE_LIFT * shoulderRamp) *
            chromaPenalty

        return (1.0f + (displayHeadroom - 1.0f) * lift)
            .coerceIn(1.0f, maxGainRatio)
    }

    fun referenceBlendWeight(sample: SdrSample, hdrSceneLuma: Float, hdrDisplayLuma: Float): Float {
        val tonalPosition = (sample.luma * 0.70f + sample.maxChannel * 0.30f).coerceAtLeast(0f)
        val tonalWeight = smoothstep(0.05f, 0.98f, tonalPosition)
        val hdrWeight = smoothstep(0.65f, 2.0f, hdrSceneLuma)
        val deltaWeight = smoothstep(0.01f, 0.28f, hdrDisplayLuma - sample.luma)
        return (tonalWeight * (0.35f * hdrWeight + 0.65f * deltaWeight)).coerceIn(0f, 1f)
    }

    fun mergeReferenceRatio(toneRatio: Float, referenceRatio: Float, referenceWeight: Float): Float {
        val extraRatio = (referenceRatio - toneRatio).coerceAtLeast(0f)
        return toneRatio + extraRatio * referenceWeight * REFERENCE_EXTRA_SCALE
    }

    fun encodeRatio(ratio: Float, minGainRatio: Float, maxGainRatio: Float): Int {
        val logRatioSpan = ln(maxGainRatio / minGainRatio)
        return ((ln(ratio.coerceIn(minGainRatio, maxGainRatio) / minGainRatio) / logRatioSpan) * 255.0f)
            .toInt()
            .coerceIn(0, 255)
    }

    fun blurGainmap(pixels: ByteArray, width: Int, height: Int, radius: Int): ByteArray {
        val temp = ByteArray(width * height)
        for (y in 0 until height) {
            for (x in 0 until width) {
                var sum = 0
                for (dx in -radius..radius) {
                    sum += pixels[y * width + (x + dx).coerceIn(0, width - 1)].toInt() and 0xFF
                }
                temp[y * width + x] = (sum / (2 * radius + 1)).toByte()
            }
        }
        val result = ByteArray(width * height)
        for (y in 0 until height) {
            for (x in 0 until width) {
                var sum = 0
                for (dy in -radius..radius) {
                    sum += temp[(y + dy).coerceIn(0, height - 1) * width + x].toInt() and 0xFF
                }
                result[y * width + x] = (sum / (2 * radius + 1)).toByte()
            }
        }
        return result
    }

    fun smoothstep(edge0: Float, edge1: Float, x: Float): Float {
        if (edge0 == edge1) return if (x >= edge1) 1.0f else 0.0f
        val t = ((x - edge0) / (edge1 - edge0)).coerceIn(0.0f, 1.0f)
        return t * t * (3.0f - 2.0f * t)
    }

    fun srgbToLinear(value: Float): Float {
        return if (value <= 0.04045f) {
            value / 12.92f
        } else {
            ((value + 0.055f) / 1.055f).pow(2.4f)
        }
    }

    private const val EPSILON = 1e-4f
    private const val BASE_SCENE_LIFT = 0.035f
    private const val GLOBAL_SCENE_LIFT = 0.4f
    private const val SHOULDER_SCENE_LIFT = 0.34f
    private const val TONE_POWER = 0.82f
    private const val SHOULDER_POWER = 1.35f
    private const val REFERENCE_EXTRA_SCALE = 0.82f
    private const val SATURATION_PENALTY = 0.10f
}
