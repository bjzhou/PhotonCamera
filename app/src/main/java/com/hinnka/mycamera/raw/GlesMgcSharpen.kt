package com.hinnka.mycamera.raw

import android.opengl.GLES30

/**
 * Runs [GlesMgcSharpenShaders] (MGC V24 SharpenTo16Bit) from an encoded RGBA16F texture into an
 * RGBA16F target, entirely on the GPU. Scratch planes are kept across frames of equal size.
 */
internal class GlesMgcSharpen {
    private val quad = RawFullscreenQuad()
    private var lumaProgram = 0
    private var level1Program = 0
    private var level2Program = 0
    private var outputProgram = 0
    private var width = 0
    private var height = 0
    private var lumaTexture = 0
    private var level1Texture = 0
    private var level2Texture = 0
    private var lumaFramebuffer = 0
    private var level1Framebuffer = 0
    private var level2Framebuffer = 0
    private var outputFramebuffer = 0

    fun render(source: Int, target: Int, width: Int, height: Int, curves: FloatArray, attenuation: Float) {
        require(width > 0 && height > 0 && source != 0 && target != 0)
        require(attenuation.isFinite() && attenuation >= 0f)
        val uniforms = KernelUniforms(curves, width, height, attenuation)
        ensurePrograms()
        ensurePlanes(width, height)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, outputFramebuffer)
        GLES30.glFramebufferTexture2D(GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0,
            GLES30.GL_TEXTURE_2D, target, 0)
        check(GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER) == GLES30.GL_FRAMEBUFFER_COMPLETE) {
            "MGC sharpen target framebuffer is incomplete"
        }
        val level1Padding = GlesMgcSharpenShaders.LEVEL1_PADDING
        val level2Padding = GlesMgcSharpenShaders.LEVEL2_PADDING

        begin(lumaProgram, lumaFramebuffer, width, height)
        bindTexture(lumaProgram, "uSource", 0, source)
        GLES30.glUniform1ui(GLES30.glGetUniformLocation(lumaProgram, "uFloatFence"), 0)
        quad.draw(lumaProgram)

        begin(level1Program, level1Framebuffer, width + 2 * level1Padding, height + 2 * level1Padding)
        bindTexture(level1Program, "uLuma", 0, lumaTexture)
        GLES30.glUniform2i(GLES30.glGetUniformLocation(level1Program, "uImageMax"), width - 1, height - 1)
        quad.draw(level1Program)

        begin(level2Program, level2Framebuffer, width + 2 * level2Padding, height + 2 * level2Padding)
        bindTexture(level2Program, "uLevel1", 0, level1Texture)
        quad.draw(level2Program)

        val program = outputProgram
        begin(program, outputFramebuffer, width, height)
        bindTexture(program, "uSource", 0, source)
        bindTexture(program, "uLuma", 1, lumaTexture)
        bindTexture(program, "uLevel1", 2, level1Texture)
        bindTexture(program, "uLevel2", 3, level2Texture)
        fun location(name: String) = GLES30.glGetUniformLocation(program, name)
        GLES30.glUniform2i(location("uImageMax"), width - 1, height - 1)
        GLES30.glUniform1ui(location("uFloatFence"), 0)
        GLES30.glUniform1iv(location("uKnots"), uniforms.knots.size, uniforms.knots, 0)
        GLES30.glUniform1iv(location("uSlopes"), uniforms.slopes.size, uniforms.slopes, 0)
        GLES30.glUniform1iv(location("uIntercepts"), uniforms.intercepts.size, uniforms.intercepts, 0)
        GLES30.glUniform1i(location("uRadialValid"), if (uniforms.radialValid) 1 else 0)
        GLES30.glUniform2i(location("uCenter"), width shr 1, height shr 1)
        GLES30.glUniform1f(location("uInverseMaxRadius2"), uniforms.inverseMaxRadius2)
        GLES30.glUniform1fv(location("uCorner"), 3, RELATIVE_CORNER_ACUTANCE_CORRECTION, 0)
        GLES30.glUniform1f(location("uLowerScale"), uniforms.lowerScale)
        GLES30.glUniform1f(location("uUpperScale"), uniforms.upperScale)
        quad.draw(program)

        GLES30.glFramebufferTexture2D(GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0,
            GLES30.GL_TEXTURE_2D, 0, 0)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        for (unit in 3 downTo 0) {
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + unit)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        }
        val error = GLES30.glGetError()
        check(error == GLES30.GL_NO_ERROR) { "MGC sharpen GLES passes failed: 0x${Integer.toHexString(error)}" }
    }

    private fun begin(program: Int, framebuffer: Int, viewportWidth: Int, viewportHeight: Int) {
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebuffer)
        GLES30.glViewport(0, 0, viewportWidth, viewportHeight)
        GLES30.glUseProgram(program)
        quad.bindIdentityTextureMatrix(program)
    }

    private fun bindTexture(program: Int, name: String, unit: Int, texture: Int) {
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + unit)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, name), unit)
    }

    private fun ensurePrograms() {
        if (outputProgram != 0) return
        try {
            lumaProgram = link(GlesMgcSharpenShaders.lumaShader, "MgcSharpenLuma")
            level1Program = link(GlesMgcSharpenShaders.level1Shader, "MgcSharpenLevel1")
            level2Program = link(GlesMgcSharpenShaders.level2Shader, "MgcSharpenLevel2")
            outputProgram = link(GlesMgcSharpenShaders.outputShader, "MgcSharpenOutput")
        } catch (error: Throwable) {
            releasePrograms()
            throw error
        }
    }

    private fun link(source: String, name: String): Int =
        quad.createProgram(source, name).also { check(it != 0) { "Failed to link $name" } }

    private fun ensurePlanes(width: Int, height: Int) {
        if (width == this.width && height == this.height && lumaTexture != 0) return
        releaseBuffers()
        try {
            val level1Padding = 2 * GlesMgcSharpenShaders.LEVEL1_PADDING
            val level2Padding = 2 * GlesMgcSharpenShaders.LEVEL2_PADDING
            lumaTexture = MgcGlesSurfaces.texture(GLES30.GL_R16I, width, height, "MGC sharpen luma")
            level1Texture = MgcGlesSurfaces.texture(GLES30.GL_R16I, width + level1Padding,
                height + level1Padding, "MGC sharpen level1")
            level2Texture = MgcGlesSurfaces.texture(GLES30.GL_R16I, width + level2Padding,
                height + level2Padding, "MGC sharpen level2")
            lumaFramebuffer = MgcGlesSurfaces.framebuffer("MGC sharpen luma", lumaTexture)
            level1Framebuffer = MgcGlesSurfaces.framebuffer("MGC sharpen level1", level1Texture)
            level2Framebuffer = MgcGlesSurfaces.framebuffer("MGC sharpen level2", level2Texture)
            outputFramebuffer = IntArray(1).also { GLES30.glGenFramebuffers(1, it, 0) }[0]
            this.width = width
            this.height = height
        } catch (error: Throwable) {
            releaseBuffers()
            throw error
        }
    }

    fun releaseBuffers() {
        MgcGlesSurfaces.deleteFramebuffers(lumaFramebuffer, level1Framebuffer, level2Framebuffer, outputFramebuffer)
        MgcGlesSurfaces.deleteTextures(lumaTexture, level1Texture, level2Texture)
        lumaFramebuffer = 0; level1Framebuffer = 0; level2Framebuffer = 0; outputFramebuffer = 0
        lumaTexture = 0; level1Texture = 0; level2Texture = 0
        width = 0; height = 0
    }

    private fun releasePrograms() {
        for (program in intArrayOf(lumaProgram, level1Program, level2Program, outputProgram)) {
            if (program != 0) GLES30.glDeleteProgram(program)
        }
        lumaProgram = 0; level1Program = 0; level2Program = 0; outputProgram = 0
    }

    fun release() {
        releaseBuffers()
        releasePrograms()
    }

    /**
     * The AOT entry's curve preparation, in the same unfused binary32 order (JVM Float arithmetic
     * is never contracted): knots and y values become int16 U12 codes, then each of the four
     * segments gets a Q8 slope and an intercept. Curves use [MgcSharpenCurveBuilder]'s
     * [point, frequency, coordinate] layout. The corner term is normalised over
     * [cornerWidth] x [cornerHeight]: the image for SharpenTo16Bit, the two-row padded output for
     * GuidedUpsample.
     */
    class KernelUniforms(curves: FloatArray, cornerWidth: Int, cornerHeight: Int, attenuation: Float) {
        val knots = IntArray(9)
        val slopes = IntArray(12)
        val intercepts = IntArray(12)
        val radialValid: Boolean
        val inverseMaxRadius2: Float
        val lowerScale = 1f - attenuation
        val upperScale = attenuation + 1f

        init {
            require(curves.size == 30)
            for (band in 0..2) {
                val knot = IntArray(5) { toS16(curves[5 * band + it] * 4095f) }
                val y = IntArray(5) { toS16(curves[15 + 5 * band + it] * 4095f) }
                for (i in 1..3) knots[band * 3 + i - 1] = knot[i]
                for (k in 0..3) {
                    val dx = (knot[k + 1] - knot[k]).toShort().toInt().coerceAtLeast(1)
                    val dy = (y[k + 1] - y[k]).toShort().toInt()
                    val slope = dy.toFloat() / dx.toFloat()
                    val slopeX0 = slope * knot[k].toFloat()
                    val slopeQ8 = slope * 256f
                    val intercept = y[k].toFloat() - slopeX0
                    slopes[band * 4 + k] = toS16(slopeQ8)
                    intercepts[band * 4 + k] = toS16(intercept)
                }
            }
            val halfWidth = cornerWidth shr 1
            val halfHeight = cornerHeight shr 1
            val maxRadius2 = (halfWidth * halfWidth).toFloat() + (halfHeight * halfHeight).toFloat()
            radialValid = maxRadius2 > 0f
            inverseMaxRadius2 = if (radialValid) 1f / maxRadius2 else 0f
        }

        // Round half to even, clamp to int16 (NaN -> 0), truncate.
        private fun toS16(value: Float): Int {
            if (value.isNaN()) return 0
            return Math.rint(value.toDouble()).toFloat().coerceIn(-32768f, 32767f).toInt().toShort().toInt()
        }
    }

    private companion object {
        // FinishRaw's relative corner acutance correction; the original call site passes zeros.
        val RELATIVE_CORNER_ACUTANCE_CORRECTION = floatArrayOf(0f, 0f, 0f)
    }
}
