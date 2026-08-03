package com.hinnka.mycamera.processor

import android.graphics.Bitmap
import android.graphics.Color
import androidx.test.ext.junit.runners.AndroidJUnit4
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(AndroidJUnit4::class)
class OglBokehProcessorShaderTest {
    @Test
    fun productionBokehShadersCompileAndLinkOnDevice() {
        val processor = OglBokehProcessor()
        try {
            assertEquals(1922 to 2560, invokePrivate(processor, "resolveBokehRenderSize", 4098, 5458))
            invokePrivate(processor, "initEGL", 32, 32)
            invokePrivate(processor, "initGL")

            assertTrue(readPrivateInt(processor, "compactHighlightProgramId") != 0)
            assertTrue(readPrivateInt(processor, "bokehProgramId") != 0)
            assertTrue(readPrivateInt(processor, "bokehCompositeProgramId") != 0)
            assertTrue(readPrivateInt(processor, "jbuUpsampleProgramId") != 0)
            assertTrue(readPrivateInt(processor, "depthSharpenProgramId") != 0)
        } finally {
            invokePrivate(processor, "releaseGL")
        }
    }

    @Test
    fun productionBokehPipelineRendersThroughFullResolutionComposite() {
        val input = Bitmap.createBitmap(64, 48, Bitmap.Config.ARGB_8888).apply {
            eraseColor(Color.rgb(96, 128, 160))
        }
        val depth = Bitmap.createBitmap(16, 16, Bitmap.Config.ARGB_8888).apply {
            eraseColor(Color.rgb(128, 128, 128))
        }
        val result = try {
            OglBokehProcessor().applyBokeh(
                originalImage = input,
                lowResDepthMap = depth,
                focusX = 0.5f,
                focusY = 0.5f,
                aperture = 1.4f,
            )
        } finally {
            input.recycle()
            depth.recycle()
        }

        assertNotNull(result)
        assertEquals(64, result?.width)
        assertEquals(48, result?.height)
        result?.recycle()
    }

    @Test
    fun compactPointLightExpandsIntoAVisibleCircularDisc() {
        val width = 512
        val height = 384
        val background = Color.rgb(28, 50, 24)
        val input = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888).apply {
            eraseColor(background)
            val lightX = 130
            val lightY = 96
            for (y in lightY - 2..lightY + 2) {
                for (x in lightX - 2..lightX + 2) {
                    if ((x - lightX) * (x - lightX) + (y - lightY) * (y - lightY) <= 4) {
                        setPixel(x, y, Color.rgb(210, 225, 160))
                    }
                }
            }
        }
        val depth = Bitmap.createBitmap(128, 96, Bitmap.Config.ARGB_8888).apply {
            eraseColor(Color.rgb(32, 32, 32))
            for (y in 42..54) {
                for (x in 58..70) {
                    setPixel(x, y, Color.rgb(224, 224, 224))
                }
            }
        }

        val inputBrightBounds = brightBounds(input, background, 24)
        val result = try {
            OglBokehProcessor().applyBokeh(
                originalImage = input,
                lowResDepthMap = depth,
                focusX = 0.5f,
                focusY = 0.5f,
                aperture = 1.2f,
            )
        } finally {
            depth.recycle()
        }

        assertNotNull(result)
        val output = checkNotNull(result)
        try {
            val outputBrightBounds = brightBounds(output, background, 24)
            assertTrue(
                "point-light footprint must expand beyond the source",
                outputBrightBounds.count >= inputBrightBounds.count * 2,
            )
            assertTrue(
                "expanded footprint must have visible width",
                outputBrightBounds.width >= inputBrightBounds.width + 4,
            )
            assertTrue(
                "expanded footprint must have visible height",
                outputBrightBounds.height >= inputBrightBounds.height + 4,
            )
            val aspect = outputBrightBounds.width.toFloat() / outputBrightBounds.height
            assertTrue(
                "expanded footprint must remain circular: aspect=$aspect",
                aspect in 0.72f..1.38f,
            )
        } finally {
            input.recycle()
            output.recycle()
        }
    }

    @Test
    fun backgroundBokehDiscDoesNotCoverNearForeground() {
        val width = 384
        val height = 288
        val background = Color.rgb(28, 50, 24)
        val lightX = 120
        val lightY = 90
        val occluderX = 125
        val occluderY = 90
        val input = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888).apply {
            eraseColor(background)
            for (y in lightY - 2..lightY + 2) {
                for (x in lightX - 2..lightX + 2) {
                    if ((x - lightX) * (x - lightX) + (y - lightY) * (y - lightY) <= 4) {
                        setPixel(x, y, Color.rgb(235, 240, 190))
                    }
                }
            }
        }
        val depth = Bitmap.createBitmap(96, 72, Bitmap.Config.ARGB_8888).apply {
            eraseColor(Color.rgb(28, 28, 28))
            for (y in 31..41) {
                for (x in 43..53) {
                    setPixel(x, y, Color.rgb(224, 224, 224))
                }
            }
            val depthOccluderX = occluderX * width.coerceAtMost(96) / width
            val depthOccluderY = occluderY * height.coerceAtMost(72) / height
            for (y in depthOccluderY - 1..depthOccluderY + 1) {
                for (x in depthOccluderX - 1..depthOccluderX + 1) {
                    setPixel(x, y, Color.rgb(224, 224, 224))
                }
            }
        }

        val result = try {
            OglBokehProcessor().applyBokeh(
                originalImage = input,
                lowResDepthMap = depth,
                focusX = 0.5f,
                focusY = 0.5f,
                aperture = 1.2f,
            )
        } finally {
            input.recycle()
            depth.recycle()
        }

        assertNotNull(result)
        val output = checkNotNull(result)
        try {
            assertTrue(
                "near foreground must occlude the background light disc",
                luma(output.getPixel(occluderX, occluderY)) <= luma(background) + 12,
            )
        } finally {
            output.recycle()
        }
    }

    private data class BrightBounds(
        val count: Int,
        val minX: Int,
        val minY: Int,
        val maxX: Int,
        val maxY: Int,
    ) {
        val width: Int get() = maxX - minX + 1
        val height: Int get() = maxY - minY + 1
    }

    private fun brightBounds(bitmap: Bitmap, background: Int, threshold: Int): BrightBounds {
        val backgroundLuma = luma(background)
        var count = 0
        var minX = bitmap.width
        var minY = bitmap.height
        var maxX = -1
        var maxY = -1
        for (y in 0 until bitmap.height) {
            for (x in 0 until bitmap.width) {
                if (luma(bitmap.getPixel(x, y)) >= backgroundLuma + threshold) {
                    count++
                    minX = minOf(minX, x)
                    minY = minOf(minY, y)
                    maxX = maxOf(maxX, x)
                    maxY = maxOf(maxY, y)
                }
            }
        }
        assertTrue("expected at least one bright pixel", count > 0)
        return BrightBounds(count, minX, minY, maxX, maxY)
    }

    private fun luma(color: Int): Int {
        return (
            Color.red(color) * 54 +
                Color.green(color) * 183 +
                Color.blue(color) * 19
            ) / 256
    }

    private fun invokePrivate(target: Any, methodName: String, vararg args: Any): Any? {
        return target.javaClass.declaredMethods.first {
            it.name == methodName && it.parameterCount == args.size
        }.run {
            isAccessible = true
            invoke(target, *args)
        }
    }

    private fun readPrivateInt(target: Any, fieldName: String): Int {
        return target.javaClass.getDeclaredField(fieldName).run {
            isAccessible = true
            getInt(target)
        }
    }
}
