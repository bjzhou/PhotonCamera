package com.hinnka.mycamera.processor

import android.graphics.ColorSpace
import android.graphics.ImageFormat
import android.opengl.GLES30
import androidx.test.ext.junit.runners.AndroidJUnit4
import org.junit.Assert.assertEquals
import org.junit.Test
import org.junit.runner.RunWith
import java.nio.ByteBuffer
import java.nio.ByteOrder

@RunWith(AndroidJUnit4::class)
class GlesYuvStackerShaderTest {
    @Test
    fun clippedHighlightsUseRecoverableShortExposure() {
        withStacker { stacker ->
            val weights = renderNormalizedWeights(
                stacker = stacker,
                colors = listOf(
                    floatArrayOf(1f, 1f, 1f, 1f),
                    floatArrayOf(1f, 1f, 1f, 1f),
                    floatArrayOf(0.75f, 0.25f, 0.25f, 1f),
                ),
            )

            assertEquals(0, weights[0])
            assertEquals(0, weights[1])
            assertEquals(255, weights[2])
        }
    }

    @Test
    fun fullyClippedBracketFallsBackToZeroEvReference() {
        withStacker { stacker ->
            val weights = renderNormalizedWeights(
                stacker = stacker,
                colors = List(3) { floatArrayOf(1f, 1f, 1f, 1f) },
            )

            assertEquals(255, weights[0])
            assertEquals(0, weights[1])
            assertEquals(0, weights[2])
        }
    }

    private fun withStacker(block: (GlesYuvStacker) -> Unit) {
        val stacker = GlesYuvStacker(
            width = 4,
            height = 4,
            outputWidth = 4,
            outputHeight = 4,
            rotation = 0,
            colorSpace = ColorSpace.get(ColorSpace.Named.SRGB),
            inputFormat = ImageFormat.YUV_420_888,
        )
        try {
            invokePrivate(stacker, "initEgl")
            invokePrivate(stacker, "ensureGles31")
            invokePrivate(stacker, "initPrograms")
            invokePrivate(stacker, "initHdrPrograms")
            block(stacker)
        } finally {
            invokePrivate(stacker, "release")
        }
    }

    private fun renderNormalizedWeights(
        stacker: GlesYuvStacker,
        colors: List<FloatArray>,
    ): IntArray {
        val imageTextures = colors.map(::createRgbaTexture)
        val rawTargets = List(3) { createMertensTarget(stacker, halfFloat = true) }
        val normalizedTarget = createMertensTarget(stacker, halfFloat = false)
        try {
            rawTargets.forEachIndexed { index, target ->
                invokePrivate(
                    stacker,
                    "renderMertensWeight",
                    imageTextures[index],
                    imageTextures[0],
                    target,
                    1f,
                    false,
                )
            }
            invokePrivate(stacker, "renderMertensNormalizeWeights", rawTargets, normalizedTarget)

            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, readPrivateInt(normalizedTarget, "framebufferId"))
            val pixel = ByteBuffer.allocateDirect(4)
            GLES30.glReadPixels(0, 0, 1, 1, GLES30.GL_RGBA, GLES30.GL_UNSIGNED_BYTE, pixel)
            return IntArray(3) { index -> pixel.get(index).toInt() and 0xff }
        } finally {
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
            rawTargets.forEach(::releaseTarget)
            releaseTarget(normalizedTarget)
            GLES30.glDeleteTextures(imageTextures.size, imageTextures.toIntArray(), 0)
        }
    }

    private fun createRgbaTexture(color: FloatArray): Int {
        val ids = IntArray(1)
        GLES30.glGenTextures(1, ids, 0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, ids[0])
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_NEAREST)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_NEAREST)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        val pixels = ByteBuffer.allocateDirect(color.size * Float.SIZE_BYTES)
            .order(ByteOrder.nativeOrder())
            .asFloatBuffer()
            .apply {
                put(color)
                position(0)
            }
        GLES30.glTexImage2D(
            GLES30.GL_TEXTURE_2D,
            0,
            GLES30.GL_RGBA16F,
            1,
            1,
            0,
            GLES30.GL_RGBA,
            GLES30.GL_FLOAT,
            pixels,
        )
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        return ids[0]
    }

    private fun createMertensTarget(stacker: GlesYuvStacker, halfFloat: Boolean): Any {
        return requireNotNull(invokePrivate(stacker, "createMertensRenderTarget", 1, 1, halfFloat))
    }

    private fun releaseTarget(target: Any) {
        target.javaClass.getDeclaredMethod("release").run {
            isAccessible = true
            invoke(target)
        }
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
