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
