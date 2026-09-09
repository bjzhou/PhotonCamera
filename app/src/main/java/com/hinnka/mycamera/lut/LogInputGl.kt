package com.hinnka.mycamera.lut

import android.opengl.GLES30
import com.hinnka.mycamera.color.TransferCurve
import com.hinnka.mycamera.raw.ACR3Curve
import java.nio.ByteBuffer
import java.nio.ByteOrder

/** Shared photo/video preparation of display-linear RGB for Log encoding, in the input gamut. */
internal class LogInputGl {
    private var textureId = 0

    fun bind(samplerLocation: Int, textureUnit: Int) {
        if (samplerLocation < 0) return

        GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + textureUnit)
        if (textureId == 0) {
            val maxTextureSize = IntArray(1)
            GLES30.glGetIntegerv(GLES30.GL_MAX_TEXTURE_SIZE, maxTextureSize, 0)
            val size = minOf(TABLE_SIZE, maxTextureSize[0])
            check(size >= 2) { "Invalid GL_MAX_TEXTURE_SIZE for inverse ACR3: ${maxTextureSize[0]}" }
            val samples = ByteBuffer.allocateDirect(size * Float.SIZE_BYTES)
                .order(ByteOrder.nativeOrder())
                .asFloatBuffer()
            for (index in 0 until size) {
                samples.put(ACR3Curve.inputForOutput(index.toFloat() / (size - 1)))
            }
            samples.flip()

            val textures = IntArray(1)
            GLES30.glGenTextures(1, textures, 0)
            textureId = textures[0]
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, textureId)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_NEAREST)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_NEAREST)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glTexStorage2D(GLES30.GL_TEXTURE_2D, 1, GLES30.GL_R32F, size, 1)
            GLES30.glTexSubImage2D(
                GLES30.GL_TEXTURE_2D, 0, 0, 0, size, 1,
                GLES30.GL_RED, GLES30.GL_FLOAT, samples,
            )
            GlUtils.checkGlError("Upload inverse ACR3 texture")
        } else {
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, textureId)
        }
        GLES30.glUniform1i(samplerLocation, textureUnit)
    }

    fun release() {
        if (textureId != 0) GLES30.glDeleteTextures(1, intArrayOf(textureId), 0)
        reset()
    }

    /** Forget handles after the owning EGL context has been lost. */
    fun reset() {
        textureId = 0
    }

    companion object {
        private const val TABLE_SIZE = 4096

        // Interpolate explicitly: R32F filtering is not a GLES 3.0 core guarantee.
        val GLSL = """
            uniform highp sampler2D uInverseAcr3Texture;

            float inverseAcr3(float value) {
                int lastIndex = textureSize(uInverseAcr3Texture, 0).x - 1;
                float position = clamp(value, 0.0, 1.0) * float(lastIndex);
                int lowerIndex = int(floor(position));
                int upperIndex = min(lowerIndex + 1, lastIndex);
                float lower = texelFetch(uInverseAcr3Texture, ivec2(lowerIndex, 0), 0).r;
                float upper = texelFetch(uInverseAcr3Texture, ivec2(upperIndex, 0), 0).r;
                return mix(lower, upper, position - float(lowerIndex));
            }

            vec3 prepareLogLinearInput(vec3 color) {
                return vec3(
                    inverseAcr3(color.r),
                    inverseAcr3(color.g),
                    inverseAcr3(color.b)
                ) * exp2(1.24);
            }

            vec3 prepareLutLinearInput(vec3 color, int curveType) {
                if (${TransferCurve.entries.filter { it.isLog }.joinToString(" || ") { "curveType == ${it.shaderId}" }}) {
                    return prepareLogLinearInput(color);
                }
                return color;
            }
        """.trimIndent()
    }
}
