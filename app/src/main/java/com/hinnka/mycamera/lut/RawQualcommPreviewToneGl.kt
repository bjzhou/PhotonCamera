package com.hinnka.mycamera.lut

import android.opengl.GLES30
import com.hinnka.mycamera.raw.QcomGamma15OutputCurve
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.FloatBuffer

/** Binds the shared CamX IPE Gamma15 transfer for the ADRC output pass. */
internal class RawQualcommPreviewToneGl {
    private class GammaUpload(val samples: FloatBuffer, val height: Int, val lastIndex: Int)

    private val gammaUpload by lazy {
        val curve = QcomGamma15OutputCurve.samples()
        val height = (curve.size + GAMMA_WIDTH - 1) / GAMMA_WIDTH
        val samples = ByteBuffer.allocateDirect(GAMMA_WIDTH * height * Float.SIZE_BYTES)
            .order(ByteOrder.nativeOrder()).asFloatBuffer()
        samples.put(curve).rewind()
        GammaUpload(samples, height, curve.lastIndex)
    }
    private var gammaTexture = 0

    fun bindGamma(program: Int, unit: Int): Boolean {
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + unit)
        val gamma = gammaUpload
        if (gammaTexture == 0) {
            prepareTextureUpload()
            gammaTexture = createTexture(GLES30.GL_TEXTURE_2D, GLES30.GL_NEAREST)
            if (gammaTexture == 0) return false
            GLES30.glTexStorage2D(GLES30.GL_TEXTURE_2D, 1, GLES30.GL_R32F, GAMMA_WIDTH, gamma.height)
            GLES30.glTexSubImage2D(
                GLES30.GL_TEXTURE_2D, 0, 0, 0, GAMMA_WIDTH, gamma.height,
                GLES30.GL_RED, GLES30.GL_FLOAT, gamma.samples,
            )
            if (!checkUpload("Gamma15")) {
                release()
                return false
            }
        }
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, gammaTexture)
        GLES30.glBindSampler(unit, 0)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uQualcommGamma"), unit)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uQualcommGammaLastIndex"), gamma.lastIndex)
        return true
    }

    fun reset() {
        gammaTexture = 0
    }

    fun release() {
        if (gammaTexture != 0) GLES30.glDeleteTextures(1, intArrayOf(gammaTexture), 0)
        reset()
    }

    companion object {
        private const val TAG = "RawQualcommPreview"
        private const val GAMMA_WIDTH = 1024

        private fun prepareTextureUpload() {
            GLES30.glBindBuffer(GLES30.GL_PIXEL_UNPACK_BUFFER, 0)
            GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 4)
            GLES30.glPixelStorei(GLES30.GL_UNPACK_ROW_LENGTH, 0)
            GLES30.glPixelStorei(GLES30.GL_UNPACK_IMAGE_HEIGHT, 0)
            GLES30.glPixelStorei(GLES30.GL_UNPACK_SKIP_PIXELS, 0)
            GLES30.glPixelStorei(GLES30.GL_UNPACK_SKIP_ROWS, 0)
            GLES30.glPixelStorei(GLES30.GL_UNPACK_SKIP_IMAGES, 0)
        }

        private fun createTexture(target: Int, filter: Int): Int {
            val ids = IntArray(1)
            GLES30.glGenTextures(1, ids, 0)
            val texture = ids[0]
            if (texture == 0) return 0
            GLES30.glBindTexture(target, texture)
            GLES30.glTexParameteri(target, GLES30.GL_TEXTURE_MIN_FILTER, filter)
            GLES30.glTexParameteri(target, GLES30.GL_TEXTURE_MAG_FILTER, filter)
            GLES30.glTexParameteri(target, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glTexParameteri(target, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
            return texture
        }

        private fun checkUpload(label: String): Boolean {
            val error = GLES30.glGetError()
            if (error == GLES30.GL_NO_ERROR) return true
            PLog.e(TAG, "$label upload failed GL=$error")
            return false
        }

        val GAMMA_GLSL = """
            uniform highp sampler2D uQualcommGamma;
            uniform highp int uQualcommGammaLastIndex;

            float gammaTexel(int index) {
                return texelFetch(uQualcommGamma, ivec2(index % $GAMMA_WIDTH, index / $GAMMA_WIDTH), 0).r;
            }

            float applyQualcommGamma(float luminance) {
                float position = clamp(luminance, 0.0, 1.0) * float(uQualcommGammaLastIndex);
                int lower = int(position);
                int upper = min(lower + 1, uQualcommGammaLastIndex);
                // Match the capture curve's linear extension above its last knot.
                return mix(gammaTexel(lower), gammaTexel(upper), position - float(lower))
                    + max(luminance - 1.0, 0.0);
            }
        """.trimIndent()
    }
}
