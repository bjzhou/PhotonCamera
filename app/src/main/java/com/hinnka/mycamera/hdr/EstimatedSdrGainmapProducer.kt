package com.hinnka.mycamera.hdr

import android.graphics.Bitmap
import android.graphics.Gainmap
import android.os.Build
import java.nio.ByteBuffer
import kotlin.math.ln
import kotlin.math.max
import kotlin.math.min
import kotlin.math.pow

class EstimatedSdrGainmapProducer : GainmapProducer {

    override suspend fun build(source: GainmapSourceSet): GainmapResult? {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.UPSIDE_DOWN_CAKE) return null
        if (source.sourceKind != SourceKind.SDR_BITMAP) return null

        val gainmapBitmap = createGainmapBitmap(source.sdrBase) ?: return null
        val gainmap = Gainmap(gainmapBitmap).apply {
            setRatioMin(MIN_GAIN_RATIO, MIN_GAIN_RATIO, MIN_GAIN_RATIO)
            setRatioMax(MAX_GAIN_RATIO, MAX_GAIN_RATIO, MAX_GAIN_RATIO)
            setGamma(1.0f, 1.0f, 1.0f)
            setEpsilonSdr(EPSILON, EPSILON, EPSILON)
            setEpsilonHdr(EPSILON, EPSILON, EPSILON)
            setMinDisplayRatioForHdrTransition(1.02f)
            setDisplayRatioForFullHdr(1.8f)
        }

        return GainmapResult(
            payload = GainmapPayload(
                platformGainmap = gainmap,
                description = "estimated_sdr_highlight_gainmap"
            ),
            sourceKind = source.sourceKind,
            confidence = source.confidence
        )
    }

    private fun createGainmapBitmap(sdrBase: Bitmap): Bitmap? {
        if (sdrBase.width <= 0 || sdrBase.height <= 0) return null

        val width = (sdrBase.width / DOWNSAMPLE).coerceAtLeast(1)
        val height = (sdrBase.height / DOWNSAMPLE).coerceAtLeast(1)
        val contents = Bitmap.createBitmap(width, height, Bitmap.Config.ALPHA_8)
        val pixels = ByteArray(width * height)
        val logRatioSpan = ln(MAX_GAIN_RATIO / MIN_GAIN_RATIO)

        var index = 0
        for (y in 0 until height) {
            val srcY = ((y + 0.5f) * sdrBase.height / height).toInt().coerceIn(0, sdrBase.height - 1)
            for (x in 0 until width) {
                val srcX = ((x + 0.5f) * sdrBase.width / width).toInt().coerceIn(0, sdrBase.width - 1)
                val color = sdrBase.getColor(srcX, srcY)
                val r = srgbToLinear(color.red())
                val g = srgbToLinear(color.green())
                val b = srgbToLinear(color.blue())
                val luma = (0.2126f * r + 0.7152f * g + 0.0722f * b).coerceAtLeast(0f)
                val maxChannel = max(r, max(g, b))
                val minChannel = min(r, min(g, b))
                val saturation = if (maxChannel <= EPSILON) 0f else ((maxChannel - minChannel) / maxChannel).coerceIn(0f, 1f)

                val highlightMask = smoothstep(HIGHLIGHT_START, HIGHLIGHT_END, luma)
                val peakMask = smoothstep(PEAK_START, PEAK_END, maxChannel)
                val clipSuppression = 1.0f - smoothstep(CLIP_START, CLIP_END, maxChannel) * CLIP_PENALTY
                val chromaPenalty = 1.0f - saturation * SATURATION_PENALTY
                val weight = (highlightMask * clipSuppression * chromaPenalty).coerceIn(0f, 1f)
                val ratio = (1.0f +
                    weight * BASE_BOOST +
                    peakMask.pow(PEAK_POWER) * PEAK_BOOST).coerceIn(MIN_GAIN_RATIO, MAX_GAIN_RATIO)

                val encoded = ((ln(ratio / MIN_GAIN_RATIO) / logRatioSpan) * 255.0f)
                    .toInt()
                    .coerceIn(0, 255)
                pixels[index++] = encoded.toByte()
            }
        }

        contents.copyPixelsFromBuffer(ByteBuffer.wrap(pixels))
        return contents
    }

    private fun srgbToLinear(value: Float): Float {
        return if (value <= 0.04045f) {
            value / 12.92f
        } else {
            ((value + 0.055f) / 1.055f).pow(2.4f)
        }
    }

    private fun smoothstep(edge0: Float, edge1: Float, x: Float): Float {
        if (edge0 == edge1) return if (x >= edge1) 1.0f else 0.0f
        val t = ((x - edge0) / (edge1 - edge0)).coerceIn(0.0f, 1.0f)
        return t * t * (3.0f - 2.0f * t)
    }

    companion object {
        private const val DOWNSAMPLE = 4
        private const val MIN_GAIN_RATIO = 1.0f
        private const val MAX_GAIN_RATIO = 7.0f
        private const val EPSILON = 1e-4f
        private const val HIGHLIGHT_START = 0.6f
        private const val HIGHLIGHT_END = 0.95f
        private const val PEAK_START = 0.72f
        private const val PEAK_END = 1.0f
        private const val CLIP_START = 0.96f
        private const val CLIP_END = 1.0f
        private const val CLIP_PENALTY = 0.35f
        private const val SATURATION_PENALTY = 0.12f
        private const val BASE_BOOST = 0.55f
        private const val PEAK_POWER = 0.7f
        private const val PEAK_BOOST = 1.5f
    }
}
