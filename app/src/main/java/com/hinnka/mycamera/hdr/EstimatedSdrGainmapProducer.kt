package com.hinnka.mycamera.hdr

import android.graphics.Bitmap
import android.graphics.Gainmap
import android.os.Build
import java.nio.ByteBuffer

class EstimatedSdrGainmapProducer : GainmapProducer {

    override suspend fun build(source: GainmapSourceSet, strength: Float): GainmapResult? {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.UPSIDE_DOWN_CAKE) return null
        if (source.sourceKind != SourceKind.SDR_BITMAP) return null

        val fullHdrRatio = (source.displayHdrSdrRatio.takeIf { it > 1f } ?: DEFAULT_FULL_HDR_RATIO)
            .coerceIn(MIN_FULL_HDR_RATIO, MAX_GAIN_RATIO)
        val gainmapBitmap = createGainmapBitmap(source.sdrBase, fullHdrRatio, strength) ?: return null
        val gainmap = Gainmap(gainmapBitmap).apply {
            setRatioMin(MIN_GAIN_RATIO, MIN_GAIN_RATIO, MIN_GAIN_RATIO)
            setRatioMax(MAX_GAIN_RATIO, MAX_GAIN_RATIO, MAX_GAIN_RATIO)
            setGamma(1.0f, 1.0f, 1.0f)
            setEpsilonSdr(EPSILON, EPSILON, EPSILON)
            setEpsilonHdr(EPSILON, EPSILON, EPSILON)
            setMinDisplayRatioForHdrTransition(1.02f)
            setDisplayRatioForFullHdr(fullHdrRatio)
        }

        return GainmapResult(
            gainmap = gainmap,
            sourceKind = source.sourceKind,
            confidence = source.confidence
        )
    }

    private fun createGainmapBitmap(sdrBase: Bitmap, fullHdrRatio: Float, strength: Float): Bitmap? {
        if (sdrBase.width <= 0 || sdrBase.height <= 0) return null

        val width = (sdrBase.width / DOWNSAMPLE).coerceAtLeast(1)
        val height = (sdrBase.height / DOWNSAMPLE).coerceAtLeast(1)
        val contents = Bitmap.createBitmap(width, height, Bitmap.Config.ALPHA_8)
        val pixels = ByteArray(width * height)

        var index = 0
        for (y in 0 until height) {
            val srcY = ((y + 0.5f) * sdrBase.height / height).toInt().coerceIn(0, sdrBase.height - 1)
            for (x in 0 until width) {
                val srcX = ((x + 0.5f) * sdrBase.width / width).toInt().coerceIn(0, sdrBase.width - 1)
                val color = sdrBase.getColor(srcX, srcY)
                val encodedSrgbLuma = EstimatedSdrGainmapMath.encodedSrgbLuma(
                    red = color.red(),
                    green = color.green(),
                    blue = color.blue(),
                )
                val ratio = EstimatedSdrGainmapMath.estimateGainRatio(
                    encodedSrgbLuma = encodedSrgbLuma,
                    fullHdrRatio = fullHdrRatio,
                    maxGainRatio = MAX_GAIN_RATIO
                ).let {
                    HdrGainmapStrength.applyToRatio(it, MIN_GAIN_RATIO, MAX_GAIN_RATIO, strength)
                }
                val encoded = EstimatedSdrGainmapMath.encodeRatio(ratio, MIN_GAIN_RATIO, MAX_GAIN_RATIO)
                pixels[index++] = encoded.toByte()
            }
        }

        contents.copyPixelsFromBuffer(ByteBuffer.wrap(pixels))
        return contents
    }

    companion object {
        private const val DOWNSAMPLE = 4
        private const val MIN_GAIN_RATIO = 1.0f
        private const val MAX_GAIN_RATIO = 4.0f
        private const val EPSILON = 1e-4f
        private const val MIN_FULL_HDR_RATIO = 1.02f
        private const val DEFAULT_FULL_HDR_RATIO = 1.8f
    }
}
