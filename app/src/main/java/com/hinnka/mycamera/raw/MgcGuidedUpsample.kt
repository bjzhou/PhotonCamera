package com.hinnka.mycamera.raw

import android.opengl.GLES30
import java.nio.ByteBuffer
import java.nio.ByteOrder
import kotlin.math.sqrt

/**
 * MGC V25 guided finish on the GPU ([GlesMgcGuidedUpsampleShaders]).
 *
 * [prepare] keeps the full-resolution guide and the box-downsampled guide, and renders the
 * low-resolution linear colour ([cameraTexture]) that the colour pipeline processes at
 * [lowWidth] x [lowHeight] into [profileTexture]. [render] then reconstructs and sharpens the
 * full-resolution result from that low-resolution output. The prepared inputs live until [render]
 * or [releaseBuffers]; the source textures must hold finite values.
 */
internal class MgcGuidedUpsample {
    private var fullWidth = 0
    private var fullHeight = 0
    private var paddedWidth = 0
    private var paddedHeight = 0
    private var log2Scale = 0
    var lowWidth = 0; private set
    var lowHeight = 0; private set
    var cameraTexture = 0; private set
    var profileTexture = 0; private set
    var profileFramebuffer = 0; private set
    private var guideTexture = 0
    private var lowGuideTexture = 0
    val isPrepared get() = guideTexture != 0
    val globalWidth get() = lowWidth shl log2Scale
    val globalHeight get() = lowHeight shl log2Scale
    private val quad = RawFullscreenQuad()
    private val programs = HashMap<String, Int>()
    private var sqrtLutTexture = 0

    fun prepare(texture: Int, width: Int, height: Int, gains: FloatArray,
                resolution: MgcFinishResolution) {
        require(resolution.needsGuidedUpsample && width > 0 && height > 0 && texture != 0)
        releaseBuffers()
        val whiteBalance = normalizedRgbWhiteBalance(gains)
        log2Scale = resolution.log2Downsample
        fullWidth = width; fullHeight = height
        paddedWidth = (width + 127) and -128
        paddedHeight = (height + 15) and -16
        lowWidth = paddedWidth shr log2Scale
        lowHeight = paddedHeight shr log2Scale
        val framebuffers = IntArray(3)
        try {
            guideTexture = MgcGlesSurfaces.texture(GLES30.GL_R16I, paddedWidth, paddedHeight, "MGC guide")
            lowGuideTexture = MgcGlesSurfaces.texture(GLES30.GL_R16I, lowWidth, lowHeight, "MGC low guide")
            cameraTexture = MgcGlesSurfaces.texture(GLES30.GL_RGBA16F, lowWidth, lowHeight,
                "MGC low colour", GLES30.GL_LINEAR)
            profileTexture = MgcGlesSurfaces.texture(GLES30.GL_RGBA16F, lowWidth, lowHeight,
                "MGC low profile", GLES30.GL_LINEAR)
            profileFramebuffer = MgcGlesSurfaces.framebuffer("MGC low profile", profileTexture)
            val lut = sqrtLut()
            val sourceSetup: (Int) -> Unit = { program ->
                bindTexture(program, "uSource", 0, texture)
                bindTexture(program, "uSqrtLut", 1, lut)
                GLES30.glUniform2i(location(program, "uSourceMax"), width - 1, height - 1)
                GLES30.glUniform1fv(location(program, "uWhiteBalance"), 3, whiteBalance, 0)
                GLES30.glUniform1ui(location(program, "uFloatFence"), 0)
                GLES30.glUniform1i(location(program, "uLog2Scale"), log2Scale)
            }
            framebuffers[0] = MgcGlesSurfaces.framebuffer("MGC guide", guideTexture)
            draw("guide", framebuffers[0], paddedWidth, paddedHeight, sourceSetup)
            framebuffers[1] = MgcGlesSurfaces.framebuffer("MGC low guide", lowGuideTexture)
            draw("lowGuide", framebuffers[1], lowWidth, lowHeight, sourceSetup)
            framebuffers[2] = MgcGlesSurfaces.framebuffer("MGC low colour", cameraTexture)
            draw("lowColor", framebuffers[2], lowWidth, lowHeight, sourceSetup)
            finishPasses("prepare")
        } catch (error: Throwable) {
            releaseBuffers()
            throw error
        } finally {
            MgcGlesSurfaces.deleteFramebuffers(*framebuffers)
        }
    }

    /** Filmic reconstructs highlights in full-resolution engine RGB before tone mapping.
     * Preserve that color stage, while retaining the independent camera-domain guides. */
    fun downsampleReconstructedColor(texture: Int) {
        check(isPrepared)
        val program = programs.getOrPut("filmicColor") {
            quad.createProgram(BOX_COLOR, "GuidedFilmicColor").also { check(it != 0) }
        }
        GLES30.glUseProgram(program)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, profileFramebuffer)
        GLES30.glViewport(0, 0, lowWidth, lowHeight)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uInput"), 0)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uScale"), 1 shl log2Scale)
        quad.bindIdentityTextureMatrix(program)
        quad.draw(program)
        check(GLES30.glGetError() == GLES30.GL_NO_ERROR)
    }

    /** Reconstructs [width] x [height] into the RGBA16F [target] from the low-resolution [source]. */
    fun render(source: Int, target: Int, width: Int, height: Int, attenuation: Float, curves: FloatArray) {
        check(isPrepared && width == fullWidth && height == fullHeight)
        require(attenuation.isFinite() && attenuation >= 0f && source != 0 && target != 0)
        val padding = GlesMgcGuidedUpsampleShaders.GUIDED_PADDING
        val level1Padding = 2 * GlesMgcGuidedUpsampleShaders.LEVEL1_PADDING
        val level2Padding = 2 * GlesMgcGuidedUpsampleShaders.LEVEL2_PADDING
        val scale = 1 shl log2Scale
        val cellStep = 32768 / scale
        fun cellOf(x: Int) = ((2 * x + 1) * cellStep - 65536) shr 17
        val cellX0 = cellOf(-padding)
        val cellY0 = cellOf(-padding)
        val cellColumns = cellOf(width - 1 + padding) + 1 - cellX0 + 1
        val cellRows = cellOf(height - 1 + padding) + 1 - cellY0 + 1
        val guidedWidth = width + 2 * padding
        val guidedHeight = height + 2 * padding
        val paddedOutputHeight = (height + 1) and -2
        val kernel = GlesMgcSharpen.KernelUniforms(curves, width, paddedOutputHeight, attenuation)
        val textures = IntArray(8)
        val framebuffers = IntArray(7)
        try {
            val lowYuv = MgcGlesSurfaces.texture(GLES30.GL_RGBA16I, lowWidth, lowHeight, "MGC low YUV")
                .also { textures[0] = it }
            val cell0 = MgcGlesSurfaces.texture(GLES30.GL_RGBA32UI, cellColumns, cellRows, "MGC cells 0")
                .also { textures[1] = it }
            val cell1 = MgcGlesSurfaces.texture(GLES30.GL_RGBA32UI, cellColumns, cellRows, "MGC cells 1")
                .also { textures[2] = it }
            val row0 = MgcGlesSurfaces.texture(GLES30.GL_RGBA32UI, guidedWidth, cellRows, "MGC rows 0")
                .also { textures[3] = it }
            val row1 = MgcGlesSurfaces.texture(GLES30.GL_RGBA32UI, guidedWidth, cellRows, "MGC rows 1")
                .also { textures[4] = it }
            val guided = MgcGlesSurfaces.texture(GLES30.GL_R16I, guidedWidth, guidedHeight, "MGC guided luma")
                .also { textures[5] = it }
            val level1 = MgcGlesSurfaces.texture(GLES30.GL_R16I, width + level1Padding,
                height + level1Padding, "MGC guided level1").also { textures[6] = it }
            val level2 = MgcGlesSurfaces.texture(GLES30.GL_R16I, width + level2Padding,
                height + level2Padding, "MGC guided level2").also { textures[7] = it }
            framebuffers[0] = MgcGlesSurfaces.framebuffer("MGC low YUV", lowYuv)
            draw("lowYuv", framebuffers[0], lowWidth, lowHeight) { program ->
                bindTexture(program, "uSource", 0, source)
                GLES30.glUniform1ui(location(program, "uFloatFence"), 0)
            }
            framebuffers[1] = MgcGlesSurfaces.framebuffer("MGC cells", cell0, cell1)
            draw("cellFit", framebuffers[1], cellColumns, cellRows) { program ->
                bindTexture(program, "uLowGuide", 0, lowGuideTexture)
                bindTexture(program, "uLowYuv", 1, lowYuv)
                GLES30.glUniform2i(location(program, "uLowMax"), lowWidth - 1, lowHeight - 1)
                GLES30.glUniform2i(location(program, "uCellOrigin"), cellX0, cellY0)
                GLES30.glUniform1ui(location(program, "uFloatFence"), 0)
            }
            framebuffers[2] = MgcGlesSurfaces.framebuffer("MGC rows", row0, row1)
            draw("horizontal", framebuffers[2], guidedWidth, cellRows) { program ->
                bindTexture(program, "uCell0", 0, cell0)
                bindTexture(program, "uCell1", 1, cell1)
                GLES30.glUniform2i(location(program, "uCellOrigin"), cellX0, cellY0)
                GLES30.glUniform1i(location(program, "uCellStep"), cellStep)
                GLES30.glUniform1ui(location(program, "uFloatFence"), 0)
            }
            framebuffers[3] = MgcGlesSurfaces.framebuffer("MGC guided luma", guided)
            draw("guidedY", framebuffers[3], guidedWidth, guidedHeight) { program ->
                bindTexture(program, "uRow0", 0, row0)
                bindTexture(program, "uRow1", 1, row1)
                bindTexture(program, "uGuide", 2, guideTexture)
                GLES30.glUniform2i(location(program, "uGuideMax"), paddedWidth - 1, paddedHeight - 1)
                GLES30.glUniform1i(location(program, "uCellOriginY"), cellY0)
                GLES30.glUniform1i(location(program, "uCellStep"), cellStep)
                GLES30.glUniform1ui(location(program, "uFloatFence"), 0)
            }
            framebuffers[4] = MgcGlesSurfaces.framebuffer("MGC guided level1", level1)
            draw("level1", framebuffers[4], width + level1Padding, height + level1Padding) { program ->
                bindTexture(program, "uLuma", 0, guided)
            }
            framebuffers[5] = MgcGlesSurfaces.framebuffer("MGC guided level2", level2)
            draw("level2", framebuffers[5], width + level2Padding, height + level2Padding) { program ->
                bindTexture(program, "uLevel1", 0, level1)
            }
            framebuffers[6] = MgcGlesSurfaces.framebuffer("MGC guided output", target)
            draw("output", framebuffers[6], width, height) { program ->
                bindTexture(program, "uLuma", 0, guided)
                bindTexture(program, "uLevel1", 1, level1)
                bindTexture(program, "uLevel2", 2, level2)
                bindTexture(program, "uLowYuv", 3, lowYuv)
                GLES30.glUniform2i(location(program, "uLowMax"), lowWidth - 1, lowHeight - 1)
                GLES30.glUniform1i(location(program, "uCellStep"), cellStep)
                GLES30.glUniform1iv(location(program, "uKnots"), kernel.knots.size, kernel.knots, 0)
                GLES30.glUniform1iv(location(program, "uSlopes"), kernel.slopes.size, kernel.slopes, 0)
                GLES30.glUniform1iv(location(program, "uIntercepts"), kernel.intercepts.size, kernel.intercepts, 0)
                GLES30.glUniform2i(location(program, "uCenter"), width shr 1, paddedOutputHeight shr 1)
                GLES30.glUniform1f(location(program, "uInverseMaxRadius2"), kernel.inverseMaxRadius2)
                GLES30.glUniform1fv(location(program, "uCorner"), 3, RELATIVE_CORNER_ACUTANCE_CORRECTION, 0)
                GLES30.glUniform1f(location(program, "uLowerScale"), kernel.lowerScale)
                GLES30.glUniform1f(location(program, "uUpperScale"), kernel.upperScale)
                GLES30.glUniform1ui(location(program, "uFloatFence"), 0)
            }
            finishPasses("render")
        } finally {
            MgcGlesSurfaces.deleteFramebuffers(*framebuffers)
            MgcGlesSurfaces.deleteTextures(*textures)
            releaseBuffers()
        }
    }

    private fun draw(pass: String, framebuffer: Int, width: Int, height: Int, setup: (Int) -> Unit) {
        val program = program(pass)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebuffer)
        GLES30.glViewport(0, 0, width, height)
        GLES30.glUseProgram(program)
        quad.bindIdentityTextureMatrix(program)
        setup(program)
        quad.draw(program)
    }

    private fun finishPasses(stage: String) {
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        for (unit in 3 downTo 0) {
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + unit)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        }
        val error = GLES30.glGetError()
        check(error == GLES30.GL_NO_ERROR) { "MGC guided $stage passes failed: 0x${Integer.toHexString(error)}" }
    }

    private fun program(pass: String): Int = programs.getOrPut(pass) {
        val source = with(GlesMgcGuidedUpsampleShaders) {
            when (pass) {
                "guide" -> guideShader
                "lowGuide" -> lowGuideShader
                "lowColor" -> lowColorShader
                "lowYuv" -> lowYuvShader
                "cellFit" -> cellFitShader
                "horizontal" -> horizontalShader
                "guidedY" -> guidedYShader
                "level1" -> level1Shader
                "level2" -> level2Shader
                "output" -> outputShader
                else -> error("Unknown MGC guided pass $pass")
            }
        }
        quad.createProgram(source, "MgcGuided_$pass").also { check(it != 0) { "Failed to link MGC guided $pass" } }
    }

    private fun location(program: Int, name: String) = GLES30.glGetUniformLocation(program, name)

    private fun bindTexture(program: Int, name: String, unit: Int, texture: Int) {
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + unit)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
        GLES30.glUniform1i(location(program, name), unit)
    }

    /** SqrtGuide(g) for g in [0, 32767] at texel (g and 255, g shr 8). */
    private fun sqrtLut(): Int {
        if (sqrtLutTexture != 0) return sqrtLutTexture
        val values = ByteBuffer.allocateDirect(32768 * 2).order(ByteOrder.nativeOrder())
        // JVM float sqrt is correctly rounded; for g >= 1 the AOT's `s < 1 ? rne(s)` never applies
        // and g = 0 gives 0, so this equals fcvtzs(sqrt(g) * 128) of the original.
        for (g in 0 until 32768) values.putShort((sqrt(g.toFloat()) * 128f).toInt().toShort())
        values.position(0)
        val texture = MgcGlesSurfaces.texture(GLES30.GL_R16I, 256, 128, "MGC sqrt guide LUT")
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 2)
        GLES30.glTexSubImage2D(GLES30.GL_TEXTURE_2D, 0, 0, 0, 256, 128,
            GLES30.GL_RED_INTEGER, GLES30.GL_SHORT, values)
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 4)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        val error = GLES30.glGetError()
        if (error != GLES30.GL_NO_ERROR) {
            MgcGlesSurfaces.deleteTextures(texture)
            error("MGC sqrt guide LUT upload failed: 0x${Integer.toHexString(error)}")
        }
        sqrtLutTexture = texture
        return texture
    }

    /** Drops the prepared guides and low-resolution textures; programs and the LUT are kept. */
    fun releaseBuffers() {
        MgcGlesSurfaces.deleteFramebuffers(profileFramebuffer)
        MgcGlesSurfaces.deleteTextures(cameraTexture, profileTexture, guideTexture, lowGuideTexture)
        profileFramebuffer = 0; cameraTexture = 0; profileTexture = 0
        guideTexture = 0; lowGuideTexture = 0
        fullWidth = 0; fullHeight = 0; paddedWidth = 0; paddedHeight = 0
        lowWidth = 0; lowHeight = 0; log2Scale = 0
    }

    fun release() {
        releaseBuffers()
        programs.values.forEach { GLES30.glDeleteProgram(it) }
        programs.clear()
        MgcGlesSurfaces.deleteTextures(sqrtLutTexture)
        sqrtLutTexture = 0
    }

    private companion object {
        // FinishRaw's relative corner acutance correction; the original call site passes zeros.
        val RELATIVE_CORNER_ACUTANCE_CORRECTION = floatArrayOf(0f, 0f, 0f)
        val BOX_COLOR = """
            #version 300 es
            precision highp float;
            precision highp int;
            uniform highp sampler2D uInput;
            uniform int uScale;
            out vec4 fragColor;
            void main() {
                ivec2 p = ivec2(gl_FragCoord.xy) * uScale;
                ivec2 hi = textureSize(uInput, 0) - 1;
                vec4 sum = vec4(0.0);
                for (int y = 0; y < uScale; ++y)
                    for (int x = 0; x < uScale; ++x)
                        sum += texelFetch(uInput, min(p + ivec2(x, y), hi), 0);
                fragColor = sum / float(uScale * uScale);
            }
        """.trimIndent()
    }
}

/**
 * The guide's linear YUV boundary applies channel gains normalized to the green mean; the
 * low colour pass removes them again after YUV -> RGB.
 */
private fun normalizedRgbWhiteBalance(gains: FloatArray): FloatArray {
    fun safeGain(index: Int, fallback: Float): Float {
        val value = gains.getOrElse(index) { fallback }
        return value.takeIf { it.isFinite() && it > 0f } ?: fallback
    }
    val greenEven = safeGain(1, 1f)
    val greenOdd = safeGain(2, greenEven)
    val green = (0.5f * (greenEven + greenOdd))
        .takeIf { it.isFinite() && it > 0f }
        ?: 1f
    return floatArrayOf(
        (safeGain(0, green) / green).coerceIn(1e-3f, 64f),
        1f,
        (safeGain(3, green) / green).coerceIn(1e-3f, 64f),
    )
}
