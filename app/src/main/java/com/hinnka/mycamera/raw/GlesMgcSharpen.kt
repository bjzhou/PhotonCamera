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
        val uniforms = KernelUniforms(curves, attenuation)
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
        GLES30.glUniform2i(GLES30.glGetUniformLocation(program, "uImageMax"), width - 1, height - 1)
        uniforms.bind(program)
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
            lumaTexture = MgcGlesSurfaces.texture(GLES30.GL_R32F, width, height, "MGC sharpen luma")
            level1Texture = MgcGlesSurfaces.texture(GLES30.GL_R32F, width + level1Padding,
                height + level1Padding, "MGC sharpen level1")
            level2Texture = MgcGlesSurfaces.texture(GLES30.GL_R32F, width + level2Padding,
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
     * The band curves and overshoot scales of the kernel. Curves use [MgcSharpenCurveBuilder]'s
     * [point, frequency, coordinate] layout on the encoded [0, 1] scale: per band five strictly
     * increasing knots and their responses. Each of the four segments becomes its start knot,
     * the response there and its slope.
     */
    class KernelUniforms(curves: FloatArray, attenuation: Float) {
        private val knots = FloatArray(12)
        private val values = FloatArray(12)
        private val slopes = FloatArray(12)
        private val lowerScale = 1f - attenuation
        private val upperScale = 1f + attenuation

        init {
            require(curves.size == 30)
            for (band in 0..2) {
                for (k in 0..3) {
                    val x0 = curves[5 * band + k]
                    val x1 = curves[5 * band + k + 1]
                    val y0 = curves[15 + 5 * band + k]
                    val y1 = curves[15 + 5 * band + k + 1]
                    require(x1 > x0) { "Sharpen knots must increase: band=$band segment=$k" }
                    knots[band * 4 + k] = x0
                    values[band * 4 + k] = y0
                    slopes[band * 4 + k] = (y1 - y0) / (x1 - x0)
                }
            }
        }

        /** Sets the [GlesMgcSharpenShaders.kernel] uniforms of the current [program]. */
        fun bind(program: Int) {
            fun location(name: String) = GLES30.glGetUniformLocation(program, name)
            GLES30.glUniform1fv(location("uKnots"), knots.size, knots, 0)
            GLES30.glUniform1fv(location("uValues"), values.size, values, 0)
            GLES30.glUniform1fv(location("uSlopes"), slopes.size, slopes, 0)
            GLES30.glUniform1f(location("uLowerScale"), lowerScale)
            GLES30.glUniform1f(location("uUpperScale"), upperScale)
        }
    }
}
