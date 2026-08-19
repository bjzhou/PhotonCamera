package com.hinnka.mycamera.raw

import android.opengl.GLES30
import java.nio.ByteBuffer
import java.nio.ByteOrder

/** Shared one-dimensional curve texture used by Adobe tone and HDR reference passes. */
internal class RawCurveTextureResources {
    private var textureId = 0

    fun bind(program: Int, curve: FloatArray, textureUnit: Int = 1) {
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + textureUnit)
        ensureTexture(curve)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, textureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uCurveTexture"), textureUnit)
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(program, "uCurveSize"),
            curve.size.toFloat(),
        )
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uCurveEnabled"), 1)
        RawGlesProgram.logErrors("RawCurveTextureResources.bind")
    }

    fun release() {
        if (textureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(textureId), 0)
            textureId = 0
        }
    }

    private fun ensureTexture(curve: FloatArray) {
        if (textureId == 0) {
            textureId = IntArray(1).also { GLES30.glGenTextures(1, it, 0) }[0]
        }
        val buffer = ByteBuffer.allocateDirect(curve.size * Float.SIZE_BYTES)
            .order(ByteOrder.nativeOrder())
            .asFloatBuffer()
            .apply {
                put(curve)
                position(0)
            }
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, textureId)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexImage2D(
            GLES30.GL_TEXTURE_2D,
            0,
            GLES30.GL_R16F,
            curve.size,
            1,
            0,
            GLES30.GL_RED,
            GLES30.GL_FLOAT,
            buffer,
        )
    }
}
