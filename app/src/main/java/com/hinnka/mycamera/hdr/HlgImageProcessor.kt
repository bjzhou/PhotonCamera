package com.hinnka.mycamera.hdr

import android.graphics.Bitmap
import android.graphics.Color
import android.graphics.ColorSpace
import android.util.Half
import com.hinnka.mycamera.gallery.PhotoMetadata
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer
import java.nio.ByteOrder
import kotlin.math.exp
import kotlin.math.max
import kotlin.math.pow
import kotlin.system.measureTimeMillis

class HlgImageProcessor {

    fun isHlgCapture(metadata: PhotoMetadata): Boolean {
        return metadata.dynamicRangeProfile == "HLG10"
    }

    fun createSourceFromCompressedArgb(
        buffer: ByteBuffer,
        width: Int,
        height: Int,
        confidence: Float = 0.7f,
    ): GainmapSourceSet {
        buffer.rewind()

        val encodedBitmap = Bitmap.createBitmap(
            width,
            height,
            Bitmap.Config.RGBA_F16,
            true,
            ColorSpace.get(ColorSpace.Named.BT2020_HLG)
        )
        val copyElapsed = measureTimeMillis {
            encodedBitmap.copyPixelsFromBuffer(buffer)
        }

        val hdrReference = Bitmap.createBitmap(
            width,
            height,
            Bitmap.Config.RGBA_F16,
            true,
            ColorSpace.get(ColorSpace.Named.BT2020)
        )
        val sdrBase = Bitmap.createBitmap(
            width,
            height,
            Bitmap.Config.ARGB_8888
        )

        val pixels = IntArray(width * height)
        val hdrBuffer = ByteBuffer.allocateDirect(width * height * 8).order(ByteOrder.nativeOrder())
        val transformElapsed = measureTimeMillis {
            for (y in 0 until height) {
                for (x in 0 until width) {
                    val c = encodedBitmap.getColor(x, y)
                    val linearBt2020 = floatArrayOf(
                        hlgToLinear(c.red()),
                        hlgToLinear(c.green()),
                        hlgToLinear(c.blue())
                    )
                    hdrBuffer.putShort(Half.toHalf(linearBt2020[0].coerceAtLeast(0f)))
                    hdrBuffer.putShort(Half.toHalf(linearBt2020[1].coerceAtLeast(0f)))
                    hdrBuffer.putShort(Half.toHalf(linearBt2020[2].coerceAtLeast(0f)))
                    hdrBuffer.putShort(Half.toHalf(1.0f))

                    val sdrSrgb = bt2020LinearToSdrSrgb(linearBt2020)
                    pixels[y * width + x] = Color.argb(
                        255,
                        (sdrSrgb[0].coerceIn(0f, 1f) * 255.0f).toInt(),
                        (sdrSrgb[1].coerceIn(0f, 1f) * 255.0f).toInt(),
                        (sdrSrgb[2].coerceIn(0f, 1f) * 255.0f).toInt(),
                    )
                }
            }
        }
        val outputElapsed = measureTimeMillis {
            sdrBase.setPixels(pixels, 0, width, 0, 0, width, height)
            hdrBuffer.rewind()
            hdrReference.copyPixelsFromBuffer(hdrBuffer)
        }

        encodedBitmap.recycle()
        PLog.d(
            TAG,
            "createSourceFromCompressedArgb took ${copyElapsed + transformElapsed + outputElapsed}ms " +
                    "(copy=${copyElapsed}ms, transform=${transformElapsed}ms, output=${outputElapsed}ms, size=${width}x${height})"
        )

        return GainmapSourceSet(
            sdrBase = sdrBase,
            hdrReference = HdrBuffer(
                bitmap = hdrReference,
                description = "hlg_bt2020_linear"
            ),
            sourceKind = SourceKind.HLG_CAPTURE,
            confidence = confidence
        )
    }

    fun createHdrReferenceFromRawSidecar(
        buffer: ByteBuffer,
        width: Int,
        height: Int,
    ): Bitmap {
        buffer.rewind()
        return Bitmap.createBitmap(
            width,
            height,
            Bitmap.Config.RGBA_F16,
            true,
            ColorSpace.get(ColorSpace.Named.EXTENDED_SRGB)
        ).also {
            it.copyPixelsFromBuffer(buffer)
        }
    }

    private fun hlgToLinear(value: Float): Float {
        val v = value.coerceIn(0f, 1f)
        return if (v <= 0.5f) {
            (v * v) / 3.0f
        } else {
            ((exp(((v - HLG_C) / HLG_A).toDouble()) + HLG_B) / 12.0).toFloat()
        }
    }

    private fun bt2020LinearToSdrSrgb(bt2020: FloatArray): FloatArray {
        val r = 1.6605f * bt2020[0] - 0.5876f * bt2020[1] - 0.0728f * bt2020[2]
        val g = -0.1246f * bt2020[0] + 1.1329f * bt2020[1] - 0.0083f * bt2020[2]
        val b = -0.0182f * bt2020[0] - 0.1006f * bt2020[1] + 1.1187f * bt2020[2]

        val toneMapped = floatArrayOf(
            toneMap(max(0f, r)),
            toneMap(max(0f, g)),
            toneMap(max(0f, b))
        )
        return floatArrayOf(
            linearToSrgb(toneMapped[0]),
            linearToSrgb(toneMapped[1]),
            linearToSrgb(toneMapped[2]),
        )
    }

    private fun toneMap(value: Float): Float {
        val exposureAdjusted = value * SDR_EXPOSURE_SCALE
        return exposureAdjusted / (1.0f + exposureAdjusted)
    }

    private fun linearToSrgb(value: Float): Float {
        return if (value <= 0.0031308f) {
            value * 12.92f
        } else {
            1.055f * value.pow(1.0f / 2.4f) - 0.055f
        }
    }

    companion object {
        private const val TAG = "HlgImageProcessor"
        private const val HLG_A = 0.17883277f
        private const val HLG_B = 0.28466892f
        private const val HLG_C = 0.55991073f
        private const val SDR_EXPOSURE_SCALE = 1.65f
    }
}
