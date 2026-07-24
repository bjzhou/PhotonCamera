package com.hinnka.mycamera.gallery

import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.graphics.Color
import android.graphics.ColorSpace
import android.graphics.Gainmap
import com.hinnka.mycamera.camera.CaptureInfo
import com.hinnka.mycamera.hdr.GainmapResult
import com.hinnka.mycamera.hdr.SourceKind
import androidx.exifinterface.media.ExifInterface
import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.filters.SdkSuppress
import androidx.test.platform.app.InstrumentationRegistry
import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import java.io.File
import java.nio.ByteBuffer

@RunWith(AndroidJUnit4::class)
class Jpeg444ExportEncoderTest {

    @Test
    fun writeProducesDecodableJpegWith444Sampling() {
        val context = InstrumentationRegistry.getInstrumentation().targetContext
        val outputFile = File(context.cacheDir, "jpeg444_encoder_test.jpg")
        val bitmap = Bitmap.createBitmap(
            16,
            12,
            Bitmap.Config.ARGB_8888,
            false,
            ColorSpace.get(ColorSpace.Named.DISPLAY_P3),
        )

        try {
            for (y in 0 until bitmap.height) {
                for (x in 0 until bitmap.width) {
                    bitmap.setPixel(
                        x,
                        y,
                        Color.rgb(
                            x * 255 / (bitmap.width - 1),
                            y * 255 / (bitmap.height - 1),
                            (x + y) * 255 / (bitmap.width + bitmap.height - 2),
                        )
                    )
                }
            }

            assertTrue(Jpeg444ExportEncoder.write(bitmap, outputFile, quality = 95))
            ExifInterface(outputFile).apply {
                setAttribute(ExifInterface.TAG_SOFTWARE, "Jpeg444ExportEncoderTest")
                saveAttributes()
            }

            val decoded = BitmapFactory.decodeFile(outputFile.absolutePath)
            assertNotNull(decoded)
            decoded?.recycle()
            val jpeg = outputFile.readBytes()
            assertEquals(listOf(0x11, 0x11, 0x11), readSamplingFactors(jpeg))
            assertTrue(jpeg.containsSubsequence("ICC_PROFILE\u0000".toByteArray(Charsets.US_ASCII)))
        } finally {
            bitmap.recycle()
            outputFile.delete()
        }
    }

    @Test
    @SdkSuppress(minSdkVersion = 34)
    fun writePackagesGainmapAndMetadataAsJpegRWith444Base() {
        val context = InstrumentationRegistry.getInstrumentation().targetContext
        val outputFile = File(context.cacheDir, "jpeg444_ultrahdr_encoder_test.jpg")
        val base = Bitmap.createBitmap(16, 12, Bitmap.Config.ARGB_8888)
        val gainmapContents = Bitmap.createBitmap(4, 3, Bitmap.Config.ALPHA_8)

        try {
            base.eraseColor(Color.rgb(96, 128, 160))
            gainmapContents.copyPixelsFromBuffer(
                ByteBuffer.wrap(
                    byteArrayOf(
                        0, 24, 48, 72,
                        48, 72, 96, 120,
                        96, 120, 127, 127,
                    )
                )
            )
            val expectedRatioMin = floatArrayOf(1f, 1f, 1f)
            val expectedRatioMax = floatArrayOf(4f, 4f, 4f)
            val gainmap = Gainmap(gainmapContents).apply {
                setRatioMin(1f, 1f, 1f)
                setRatioMax(4f, 4f, 4f)
                setGamma(1f, 1f, 1f)
                setEpsilonSdr(0f, 0f, 0f)
                setEpsilonHdr(0f, 0f, 0f)
                minDisplayRatioForHdrTransition = 1f
                displayRatioForFullHdr = 4f
            }

            assertTrue(
                Jpeg444ExportEncoder.write(
                    bitmap = base,
                    outputFile = outputFile,
                    quality = 95,
                    gainmapResult = GainmapResult(
                        gainmap = gainmap,
                        sourceKind = SourceKind.SDR_BITMAP,
                    ),
                    captureInfo = CaptureInfo(
                        iso = 200,
                        imageWidth = base.width,
                        imageHeight = base.height,
                    ),
                )
            )
            assertTrue(Jpeg444ExportEncoder.isJpegR(outputFile))

            val decoded = BitmapFactory.decodeFile(outputFile.absolutePath)
            assertNotNull(decoded)
            assertTrue(decoded.hasGainmap())
            decoded.gainmap?.let { decodedGainmap ->
                assertArrayEquals(expectedRatioMin, decodedGainmap.ratioMin, METADATA_TOLERANCE)
                assertArrayEquals(expectedRatioMax, decodedGainmap.ratioMax, METADATA_TOLERANCE)
            }
            decoded.recycle()

            assertEquals(
                "200",
                ExifInterface(outputFile).getAttribute(
                    ExifInterface.TAG_PHOTOGRAPHIC_SENSITIVITY
                )
            )
            assertEquals(
                listOf(0x11, 0x11, 0x11),
                readSamplingFactors(outputFile.readBytes())
            )
        } finally {
            base.recycle()
            gainmapContents.recycle()
            outputFile.delete()
        }
    }

    private fun readSamplingFactors(jpeg: ByteArray): List<Int> {
        require(jpeg.size >= 4)
        require(jpeg[0] == 0xFF.toByte() && jpeg[1] == 0xD8.toByte())

        var offset = 2
        while (offset + 3 < jpeg.size) {
            while (offset < jpeg.size && jpeg[offset] == 0xFF.toByte()) {
                offset++
            }
            if (offset >= jpeg.size) break

            val marker = jpeg[offset].toInt() and 0xFF
            offset++
            if (marker == 0xD9 || marker == 0xDA) break
            if (marker in 0xD0..0xD7 || marker == 0x01) continue
            require(offset + 1 < jpeg.size)

            val segmentLength =
                ((jpeg[offset].toInt() and 0xFF) shl 8) or (jpeg[offset + 1].toInt() and 0xFF)
            require(segmentLength >= 2 && offset + segmentLength <= jpeg.size)

            if (marker in SOF_MARKERS) {
                val componentCount = jpeg[offset + 7].toInt() and 0xFF
                require(segmentLength >= 8 + componentCount * 3)
                return List(componentCount) { index ->
                    jpeg[offset + 9 + index * 3].toInt() and 0xFF
                }
            }
            offset += segmentLength
        }

        error("JPEG SOF marker not found")
    }

    private fun ByteArray.containsSubsequence(expected: ByteArray): Boolean {
        if (expected.isEmpty() || expected.size > size) return false
        return (0..size - expected.size).any { offset ->
            expected.indices.all { index -> this[offset + index] == expected[index] }
        }
    }

    companion object {
        private const val METADATA_TOLERANCE = 0.001f
        private val SOF_MARKERS = setOf(
            0xC0, 0xC1, 0xC2, 0xC3,
            0xC5, 0xC6, 0xC7,
            0xC9, 0xCA, 0xCB,
            0xCD, 0xCE, 0xCF,
        )
    }
}
