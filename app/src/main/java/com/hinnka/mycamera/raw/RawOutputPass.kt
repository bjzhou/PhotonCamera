package com.hinnka.mycamera.raw

import android.graphics.Rect
import android.opengl.GLES30
import android.opengl.Matrix
import com.hinnka.mycamera.processor.GlesLanczosResampling
import com.hinnka.mycamera.utils.PLog

/** Crops/rotates finalized color; optional Lanczos-3 scaling runs after GuidedUpsample/sharpen. */
internal class RawOutputPass(
    private val quad: RawFullscreenQuad,
) {
    data class Input(
        val textureId: Int,
        val sourceWidth: Int,
        val sourceHeight: Int,
        val rotation: Int,
        val bounds: Rect,
        val targetFramebufferId: Int,
        val targetTextureId: Int,
        val targetWidth: Int = bounds.width(),
        val targetHeight: Int = bounds.height(),
        /** When present, [textureId] contains HDR ratios applied to this finalized sRGB base. */
        val hdrSdrBaseTextureId: Int? = null,
        val geometry: RawOutputGeometry? = null,
        val outputRegion: RawTileRect? = null,
        val sourceOriginX: Int = 0,
        val sourceOriginY: Int = 0,
    )

    data class Output(val textureId: Int, val width: Int, val height: Int)

    private var program = 0

    fun initialize(): Boolean = getOrCreateProgram() != 0

    fun render(input: Input): Output? {
        val activeProgram = getOrCreateProgram()
        if (activeProgram == 0) {
            PLog.e(TAG, "Unable to create RAW output program")
            return null
        }
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, input.targetFramebufferId)
        GLES30.glViewport(0, 0, input.targetWidth, input.targetHeight)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
        GLES30.glUseProgram(activeProgram)

        val isSwapped = input.rotation == 90 || input.rotation == 270
        val cropWidth = if (isSwapped) input.bounds.height().toFloat() else input.bounds.width().toFloat()
        val cropHeight = if (isSwapped) input.bounds.width().toFloat() else input.bounds.height().toFloat()
        val cropCenterX = if (isSwapped) {
            input.bounds.top + input.bounds.height() / 2f
        } else {
            input.bounds.centerX().toFloat()
        }
        val cropCenterY = if (isSwapped) {
            input.bounds.left + input.bounds.width() / 2f
        } else {
            input.bounds.centerY().toFloat()
        }
        val textureMatrix = FloatArray(16)
        Matrix.setIdentityM(textureMatrix, 0)
        Matrix.translateM(
            textureMatrix,
            0,
            cropCenterX / input.sourceWidth,
            cropCenterY / input.sourceHeight,
            0f,
        )
        Matrix.scaleM(
            textureMatrix,
            0,
            cropWidth / input.sourceWidth,
            cropHeight / input.sourceHeight,
            1f,
        )
        Matrix.rotateM(textureMatrix, 0, -input.rotation.toFloat(), 0f, 0f, 1f)
        Matrix.translateM(textureMatrix, 0, -0.5f, -0.5f, 0f)
        val samplingMatrix = input.geometry?.textureMatrix(
            input.sourceWidth, input.sourceHeight, input.sourceOriginX, input.sourceOriginY,
            input.outputRegion ?: input.geometry.fullRegion,
        ) ?: textureMatrix
        GLES30.glUniformMatrix4fv(
            GLES30.glGetUniformLocation(activeProgram, "uTexMatrix"),
            1,
            false,
            samplingMatrix,
            0,
        )
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, input.textureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(activeProgram, "uTexture"), 0)
        bindHdrBase(activeProgram, input.hdrSdrBaseTextureId, input.textureId)
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(activeProgram, "uResample"),
            if (input.geometry?.resample == true) 1 else 0,
        )
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(activeProgram, "uNativeGrid"),
            if (input.geometry != null && !input.geometry.resample) 1 else 0,
        )
        quad.draw(activeProgram)
        RawGlesProgram.logErrors("RawOutputPass.render")
        return Output(input.targetTextureId, input.targetWidth, input.targetHeight)
    }

    fun copy(
        textureId: Int,
        targetFramebufferId: Int,
        targetTextureId: Int,
        width: Int,
        height: Int,
    ): Output? {
        val activeProgram = getOrCreateProgram()
        if (activeProgram == 0) return null
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, targetFramebufferId)
        GLES30.glViewport(0, 0, width, height)
        GLES30.glUseProgram(activeProgram)
        quad.bindIdentityTextureMatrix(activeProgram)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, textureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(activeProgram, "uTexture"), 0)
        bindHdrBase(activeProgram, null, textureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(activeProgram, "uResample"), 0)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(activeProgram, "uNativeGrid"), 1)
        quad.draw(activeProgram)
        RawGlesProgram.logErrors("RawOutputPass.copy")
        return Output(targetTextureId, width, height)
    }

    private fun bindHdrBase(program: Int, sdrBaseTextureId: Int?, sourceTextureId: Int) {
        require(sdrBaseTextureId == null || sdrBaseTextureId != 0)
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(program, "uApplyHdrGain"),
            if (sdrBaseTextureId != null) 1 else 0,
        )
        GLES30.glActiveTexture(GLES30.GL_TEXTURE1)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, sdrBaseTextureId ?: sourceTextureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uSdrBase"), 1)
    }

    fun release() {
        if (program != 0) {
            GLES30.glDeleteProgram(program)
            program = 0
        }
    }

    private fun getOrCreateProgram(): Int {
        if (program == 0) program = quad.createProgram(FRAGMENT_SHADER, "rawOutput")
        return program
    }

    companion object {
        private const val TAG = "RawOutputPass"

        val FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;
            precision highp int;
            precision highp sampler2D;

            in vec2 vTexCoord;
            out vec4 fragColor;

            uniform sampler2D uTexture;
            uniform sampler2D uSdrBase;
            uniform int uApplyHdrGain;
            uniform int uResample;
            uniform int uNativeGrid;

            vec3 lanczosSource(ivec2 p) {
                ivec2 size = textureSize(uTexture, 0);
                p = clamp(p, ivec2(0), size - ivec2(1));
                if (uApplyHdrGain != 0) return texelFetch(uSdrBase, p, 0).rgb;
                return texelFetch(uTexture, p, 0).rgb;
            }

            ${GlesLanczosResampling.sampleRgb.prependIndent("            ")}

            vec3 srgbToLinear(vec3 color) {
                return mix(
                    color / 12.92,
                    pow((color + 0.055) / 1.055, vec3(2.4)),
                    step(vec3(0.04045), color)
                );
            }

            void main() {
                vec4 source = texture(uTexture, vTexCoord);
                vec3 sdr = uApplyHdrGain != 0 ? texture(uSdrBase, vTexCoord).rgb : source.rgb;
                if (uNativeGrid != 0) {
                    // A 1x rotated crop is an exact pixel copy, with no bilinear filtering.
                    ivec2 p = clamp(ivec2(vTexCoord * vec2(textureSize(uTexture, 0))),
                        ivec2(0), textureSize(uTexture, 0) - ivec2(1));
                    source = texelFetch(uTexture, p, 0);
                    sdr = uApplyHdrGain != 0 ? texelFetch(uSdrBase, p, 0).rgb : source.rgb;
                }
                float hdrGain = source.r;
                if (uResample != 0) {
                    sdr = clamp(sampleLanczosRgb(
                        vTexCoord * vec2(textureSize(uTexture, 0)) - vec2(0.5)
                    ), 0.0, 1.0);
                    source = vec4(sdr, 1.0);
                }
                if (uApplyHdrGain != 0) {
                    // Use exactly the same reconstructed SDR as the display branch. The smooth
                    // HDR ratio stays bilinear; sharpening/Lanczos must not ring that gain field.
                    source = vec4(srgbToLinear(sdr) * hdrGain, 1.0);
                }
                fragColor = source;
            }
        """.trimIndent()
    }
}
