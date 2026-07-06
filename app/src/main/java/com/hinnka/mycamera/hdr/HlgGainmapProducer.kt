package com.hinnka.mycamera.hdr

import android.graphics.Bitmap
import android.graphics.Gainmap
import android.os.Build
import java.nio.ByteBuffer

class HlgGainmapProducer : GainmapProducer {

    override suspend fun build(source: GainmapSourceSet, strength: Float): GainmapResult? {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.UPSIDE_DOWN_CAKE) return null
        if (source.sourceKind != SourceKind.HLG_CAPTURE) return null

        val hdrReference = source.hdrReference?.bitmap ?: return null
        val sdrBase = source.sdrBase
        if (sdrBase.width <= 0 || sdrBase.height <= 0) return null

        val alignedHdr = if (hdrReference.width != sdrBase.width || hdrReference.height != sdrBase.height) {
            Bitmap.createScaledBitmap(hdrReference, sdrBase.width, sdrBase.height, true)
        } else {
            hdrReference
        }

        val fullHdrRatio = source.displayHdrSdrRatio.takeIf { it > 1f } ?: DEFAULT_FULL_HDR_RATIO
        val gainmapBitmap = createGainmapBitmap(sdrBase, alignedHdr, fullHdrRatio, strength) ?: return null
        val gainmap = Gainmap(gainmapBitmap).apply {
            setRatioMin(MIN_GAIN_RATIO, MIN_GAIN_RATIO, MIN_GAIN_RATIO)
            setRatioMax(MAX_GAIN_RATIO, MAX_GAIN_RATIO, MAX_GAIN_RATIO)
            setGamma(1.0f, 1.0f, 1.0f)
            setEpsilonSdr(EPSILON, EPSILON, EPSILON)
            setEpsilonHdr(EPSILON, EPSILON, EPSILON)
            setMinDisplayRatioForHdrTransition(1.0f)
            setDisplayRatioForFullHdr(fullHdrRatio)
        }

        return GainmapResult(
            gainmap = gainmap,
            sourceKind = source.sourceKind,
            confidence = source.confidence
        )
    }

    private fun createGainmapBitmap(
        sdrBase: Bitmap,
        hdrReference: Bitmap,
        fullHdrRatio: Float,
        strength: Float
    ): Bitmap? {
        val displayMapper = HlgDisplayMapper(fullHdrRatio)
        val width = (sdrBase.width / DOWNSAMPLE).coerceAtLeast(1)
        val height = (sdrBase.height / DOWNSAMPLE).coerceAtLeast(1)
        val contents = Bitmap.createBitmap(width, height, Bitmap.Config.ALPHA_8)
        val pixels = ByteArray(width * height)

        var index = 0
        for (y in 0 until height) {
            val srcY = ((y + 0.5f) * sdrBase.height / height).toInt().coerceIn(0, sdrBase.height - 1)
            for (x in 0 until width) {
                val srcX = ((x + 0.5f) * sdrBase.width / width).toInt().coerceIn(0, sdrBase.width - 1)

                val sdrSample = ProgressiveGainmapMath.sampleSdr(sdrBase, srcX, srcY)
                val hdrSceneLuma = sampleHdrLuma(hdrReference, srcX, srcY)
                val hdrDisplayLuma = displayMapper.mapSceneLinearToDisplayLuma(hdrSceneLuma)

                val toneRatio = ProgressiveGainmapMath.progressiveToneRatio(
                    sample = sdrSample,
                    fullHdrRatio = fullHdrRatio,
                    maxGainRatio = MAX_GAIN_RATIO
                )
                val referenceRatio = (hdrDisplayLuma / (sdrSample.luma + EPSILON))
                    .coerceIn(MIN_GAIN_RATIO, MAX_GAIN_RATIO)
                val referenceWeight = ProgressiveGainmapMath.referenceBlendWeight(
                    sample = sdrSample,
                    hdrSceneLuma = hdrSceneLuma,
                    hdrDisplayLuma = hdrDisplayLuma
                )
                val targetRatio = ProgressiveGainmapMath.mergeReferenceRatio(
                    toneRatio = toneRatio,
                    referenceRatio = referenceRatio,
                    referenceWeight = referenceWeight
                )
                    .coerceIn(MIN_GAIN_RATIO, MAX_GAIN_RATIO)
                    .let {
                        HdrGainmapStrength.applyToRatio(it, MIN_GAIN_RATIO, MAX_GAIN_RATIO, strength)
                    }
                val encoded = ProgressiveGainmapMath.encodeRatio(targetRatio, MIN_GAIN_RATIO, MAX_GAIN_RATIO)

                pixels[index++] = encoded.toByte()
            }
        }

        val blurred = ProgressiveGainmapMath.blurGainmap(pixels, width, height, BLUR_RADIUS)
        contents.copyPixelsFromBuffer(ByteBuffer.wrap(blurred))
        return contents
    }

    private fun sampleHdrLuma(bitmap: Bitmap, x: Int, y: Int): Float {
        val c = bitmap.getColor(x, y)
        return (0.2627f * c.red() + 0.6780f * c.green() + 0.0593f * c.blue()).coerceAtLeast(0f)
    }

    companion object {
        private const val DOWNSAMPLE = 4
        private const val MIN_GAIN_RATIO = 1.0f
        private const val MAX_GAIN_RATIO = 3.5f
        private const val EPSILON = 1e-4f
        private const val BLUR_RADIUS = 3
        private const val DEFAULT_FULL_HDR_RATIO = 1.45f
    }
}
