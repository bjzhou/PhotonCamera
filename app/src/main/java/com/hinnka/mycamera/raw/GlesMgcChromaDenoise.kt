package com.hinnka.mycamera.raw

import android.opengl.GLES30
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.FloatBuffer
import java.nio.ShortBuffer

/**
 * Runs MGC V24 `ChromaDenoisePyramidCompleteS16` (plus optional low-frequency chroma branch and
 * chroma median filter) entirely on the GPU via [GlesMgcChromaDenoiseShaders].
 *
 * All working textures are allocated for the duration of a [render] call and deleted in `finally`,
 * matching [MgcGuidedUpsample]. Shader programs are compiled lazily and kept until [release].
 */
internal class GlesMgcChromaDenoise {
    private val quad = RawFullscreenQuad()
    private val programs = HashMap<String, Int>()
    private var placeholderU16Texture = 0
    private var placeholderF32Texture = 0
    private var placeholderI16Texture = 0

    /**
     * Full-resolution (and optional low-frequency) chroma denoise from RGBA16F [source] into
     * RGBA16F [target] (`source` and `target` must be distinct textures).
     *
     * Strength map priority:
     * 1. [precomputedStrengthRgba16ui]: packed `[strengthHeight][strengthWidth][4]` uint16 Q8
     *    (channels 0..2 = strength, strength*gain, strength*gain^2, e.g. from MeasureMoire).
     * 2. Otherwise built on GPU from [spatialStrengthQ8] (1-channel full-image Q8 map) and
     *    [lensShadingMap] (`[lensHeight][lensWidth][4]` float gains).
     */
    fun render(
        source: Int,
        target: Int,
        width: Int,
        height: Int,
        globalOriginX: Int,
        globalOriginY: Int,
        fullWidth: Int,
        fullHeight: Int,
        whiteBalance: FloatArray,
        q14Noise: MgcChromaNoiseModel.Q14ChromaNoise,
        responseOffset: Float,
        responseCosineOffset: Float,
        chromaStrength: FloatArray,
        chromaOutlier: FloatArray,
        lowFrequencyLog2: Int,
        chromaMedianFilterType: Int,
        spatialStrengthQ8: ShortArray? = null,
        spatialStrengthWidth: Int = 0,
        spatialStrengthHeight: Int = 0,
        lensShadingMap: FloatArray? = null,
        lensWidth: Int = 0,
        lensHeight: Int = 0,
        precomputedStrengthRgba16ui: ByteBuffer? = null,
        precomputedStrengthWidth: Int = 0,
        precomputedStrengthHeight: Int = 0,
        measureMoireCallback: ((yPlaneS16: ByteBuffer, strengthRgba32ui: ByteBuffer, strengthOutRgba16ui: ByteBuffer, paddedW: Int, paddedH: Int, sw: Int, sh: Int) -> Boolean)? = null,
    ) {
        require(width > 0 && height > 0 && source != 0 && target != 0 && source != target)
        require(whiteBalance.size == 3 && whiteBalance.all { it.isFinite() && it > 0f })

        val wholeImage = globalOriginX == 0 && globalOriginY == 0 &&
            width == fullWidth && height == fullHeight
        val runLowFreq = lowFrequencyLog2 in 1..2 && wholeImage
        val alignW = if (runLowFreq) 128 shl lowFrequencyLog2 else 128
        val alignH = if (runLowFreq) 16 shl lowFrequencyLog2 else 16
        val paddedW = roundUp(width, alignW)
        val paddedH = roundUp(height, alignH)
        val strengthW = if (precomputedStrengthRgba16ui != null && precomputedStrengthWidth > 0) {
            precomputedStrengthWidth
        } else {
            paddedW / 4
        }
        val strengthH = if (precomputedStrengthRgba16ui != null && precomputedStrengthHeight > 0) {
            precomputedStrengthHeight
        } else {
            paddedH / 4
        }

        val fullParams = MgcChromaNoiseModel.buildPyramidParams(
            noise = q14Noise,
            responseOffset = responseOffset,
            responseCosineOffset = responseCosineOffset,
            strength = chromaStrength,
            outlierThreshold = chromaOutlier,
        )
        val lowParams = if (runLowFreq) {
            val lowNoise = MgcChromaNoiseModel.boxDownsample(q14Noise, lowFrequencyLog2)
            MgcChromaNoiseModel.buildPyramidParams(
                noise = lowNoise,
                responseOffset = responseOffset,
                responseCosineOffset = responseCosineOffset,
                strength = chromaStrength,
                outlierThreshold = chromaOutlier,
            )
        } else null

        ensurePlaceholders()
        val textures = ArrayList<Int>(16)
        val framebuffers = ArrayList<Int>(16)
        fun allocTex(format: Int, w: Int, h: Int, label: String): Int =
            MgcGlesSurfaces.texture(format, w, h, label).also { textures += it }
        fun allocFbo(label: String, tex: Int): Int =
            MgcGlesSurfaces.framebuffer(label, tex).also { framebuffers += it }

        try {
            // 1. Convert source RGBA16F -> padded Q14 S16 YUV (RGBA16I)
            val initYuv = allocTex(GLES30.GL_RGBA16I, paddedW, paddedH, "MGC chroma init YUV")
            val initYuvFbo = allocFbo("MGC chroma init YUV", initYuv)
            draw("rgbToYuv", initYuvFbo, paddedW, paddedH) { p ->
                bindTexture(p, "uSource", 0, source)
                GLES30.glUniform2i(loc(p, "uSourceMax"), width - 1, height - 1)
                GLES30.glUniform3fv(loc(p, "uWhiteBalance"), 1, whiteBalance, 0)
            }

            // 2. Prepare 3-channel Q8 strength map (RGBA16UI, strengthW x strengthH)
            val strengthTex = allocTex(GLES30.GL_RGBA16UI, strengthW, strengthH, "MGC chroma strength")
            if (precomputedStrengthRgba16ui != null) {
                uploadRgba16ui(strengthTex, strengthW, strengthH, precomputedStrengthRgba16ui)
            } else {
                val strengthFbo = allocFbo("MGC chroma strength", strengthTex)
                val baseTex = if (spatialStrengthQ8 != null && spatialStrengthWidth > 0 && spatialStrengthHeight > 0) {
                    allocTex(GLES30.GL_R16UI, spatialStrengthWidth, spatialStrengthHeight, "MGC chroma base strength").also {
                        uploadR16ui(it, spatialStrengthWidth, spatialStrengthHeight, spatialStrengthQ8)
                    }
                } else 0
                val lscTex = if (lensShadingMap != null && lensWidth > 0 && lensHeight > 0) {
                    allocTex(GLES30.GL_RGBA32F, lensWidth, lensHeight, "MGC chroma LSC").also {
                        uploadRgba32f(it, lensWidth, lensHeight, lensShadingMap)
                    }
                } else 0
                val fullStrengthW = roundUp(fullWidth, 128) / 4
                val fullStrengthH = roundUp(fullHeight, 16) / 4
                val sampleRateX = if (fullStrengthW > 1 && lensWidth > 0) {
                    (lensWidth - 1).toFloat() / (fullStrengthW - 1).toFloat()
                } else 1f
                val sampleRateY = if (fullStrengthH > 1 && lensHeight > 0) {
                    (lensHeight - 1).toFloat() / (fullStrengthH - 1).toFloat()
                } else 1f
                draw("strengthMap", strengthFbo, strengthW, strengthH) { p ->
                    bindTexture(p, "uBaseStrength", 0, if (baseTex != 0) baseTex else placeholderU16Texture)
                    bindTexture(p, "uLensShading", 1, if (lscTex != 0) lscTex else placeholderF32Texture)
                    GLES30.glUniform1i(loc(p, "uHasBaseStrength"), if (baseTex != 0) 1 else 0)
                    GLES30.glUniform1i(loc(p, "uHasLensShading"), if (lscTex != 0) 1 else 0)
                    GLES30.glUniform2i(loc(p, "uLocalMax"), width - 1, height - 1)
                    GLES30.glUniform2i(loc(p, "uGlobalOrigin"), globalOriginX, globalOriginY)
                    GLES30.glUniform2i(loc(p, "uBaseMax"), maxOf(spatialStrengthWidth - 1, 0), maxOf(spatialStrengthHeight - 1, 0))
                    GLES30.glUniform2i(loc(p, "uStrengthOrigin"), globalOriginX / 4, globalOriginY / 4)
                    GLES30.glUniform2i(loc(p, "uLensMax"), maxOf(lensWidth - 1, 0), maxOf(lensHeight - 1, 0))
                    GLES30.glUniform2f(loc(p, "uSampleRate"), sampleRateX, sampleRateY)
                }

                // Optional CPU MeasureMoire when running GPU-only (luma disabled, standard Bayer 1x)
                if (measureMoireCallback != null) {
                    val packedW = paddedW / 8
                    val packTex = allocTex(GLES30.GL_RGBA32I, packedW, paddedH, "MGC chroma pack Y")
                    val packFbo = allocFbo("MGC chroma pack Y", packTex)
                    draw("packY", packFbo, packedW, paddedH) { p ->
                        bindTexture(p, "uYuv", 0, initYuv)
                    }
                    val yBuf = ByteBuffer.allocateDirect(paddedW * paddedH * 2)
                        .order(ByteOrder.nativeOrder())
                    GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, packFbo)
                    GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 4)
                    GLES30.glReadPixels(0, 0, packedW, paddedH, GLES30.GL_RGBA_INTEGER, GLES30.GL_INT, yBuf)
                    val sInBuf = ByteBuffer.allocateDirect(strengthW * strengthH * 4 * 4)
                        .order(ByteOrder.nativeOrder())
                    GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, strengthFbo)
                    GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 4)
                    // GLES 3.0 guarantees GL_RGBA_INTEGER + GL_UNSIGNED_INT for unsigned integer FBO readback.
                    GLES30.glReadPixels(0, 0, strengthW, strengthH, GLES30.GL_RGBA_INTEGER, GLES30.GL_UNSIGNED_INT, sInBuf)
                    GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
                    val sOutBuf = ByteBuffer.allocateDirect(strengthW * strengthH * 4 * 2)
                        .order(ByteOrder.nativeOrder())
                    yBuf.rewind()
                    sInBuf.rewind()
                    sOutBuf.clear()
                    if (measureMoireCallback(yBuf, sInBuf, sOutBuf, paddedW, paddedH, strengthW, strengthH)) {
                        sOutBuf.rewind()
                        uploadRgba16ui(strengthTex, strengthW, strengthH, sOutBuf)
                    }
                }
            }

            // 3. Full-resolution 4-level chroma denoise pyramid (decimation = 2)
            val denoisedYuv = allocTex(GLES30.GL_RGBA16I, paddedW, paddedH, "MGC chroma denoised YUV")
            val denoisedYuvFbo = allocFbo("MGC chroma denoised YUV", denoisedYuv)
            runPyramid(
                inputTex = initYuv,
                outputFbo = denoisedYuvFbo,
                width = paddedW,
                height = paddedH,
                strengthTex = strengthTex,
                strengthW = strengthW,
                strengthH = strengthH,
                log2StrengthDecimation = 2,
                params = fullParams,
                allocTex = ::allocTex,
                allocFbo = ::allocFbo,
            )

            // 4. Optional low-frequency chroma branch (BoxDownsample -> optional Median -> Pyramid)
            var lowInputTex = placeholderI16Texture
            var lowOutputTex = placeholderI16Texture
            var lowW = 1
            var lowH = 1
            if (runLowFreq && lowParams != null) {
                lowW = paddedW shr lowFrequencyLog2
                lowH = paddedH shr lowFrequencyLog2
                lowInputTex = allocTex(GLES30.GL_RGBA16I, lowW, lowH, "MGC chroma low input")
                val lowInputFbo = allocFbo("MGC chroma low input", lowInputTex)
                draw("boxDownsample", lowInputFbo, lowW, lowH) { p ->
                    bindTexture(p, "uInput", 0, denoisedYuv)
                    GLES30.glUniform1i(loc(p, "uLog2Factor"), lowFrequencyLog2)
                }
                val lowDenoiseInput = if (chromaMedianFilterType in 1..2) {
                    val medTex = allocTex(GLES30.GL_RGBA16I, lowW, lowH, "MGC chroma low median")
                    val medFbo = allocFbo("MGC chroma low median", medTex)
                    draw("chromaMedian", medFbo, lowW, lowH) { p ->
                        bindTexture(p, "uInput", 0, lowInputTex)
                        GLES30.glUniform2i(loc(p, "uMax"), lowW - 1, lowH - 1)
                        GLES30.glUniform1i(loc(p, "uFilterType"), chromaMedianFilterType)
                    }
                    medTex
                } else {
                    lowInputTex
                }
                lowOutputTex = allocTex(GLES30.GL_RGBA16I, lowW, lowH, "MGC chroma low output")
                val lowOutputFbo = allocFbo("MGC chroma low output", lowOutputTex)
                runPyramid(
                    inputTex = lowDenoiseInput,
                    outputFbo = lowOutputFbo,
                    width = lowW,
                    height = lowH,
                    strengthTex = strengthTex,
                    strengthW = strengthW,
                    strengthH = strengthH,
                    log2StrengthDecimation = 2 - lowFrequencyLog2,
                    params = lowParams,
                    allocTex = ::allocTex,
                    allocFbo = ::allocFbo,
                )
            }

            // 5. Apply chroma delta (+ upsampled low-frequency correction) back onto source RGBA16F
            val targetFbo = allocFbo("MGC chroma target", target)
            val invWb = floatArrayOf(1f / whiteBalance[0], 1f / whiteBalance[1], 1f / whiteBalance[2])
            draw("applyChromaDelta", targetFbo, width, height) { p ->
                bindTexture(p, "uSource", 0, source)
                bindTexture(p, "uInitYuv", 1, initYuv)
                bindTexture(p, "uDenoisedYuv", 2, denoisedYuv)
                bindTexture(p, "uLowInput", 3, lowInputTex)
                bindTexture(p, "uLowOutput", 4, lowOutputTex)
                GLES30.glUniform1i(loc(p, "uApplyLowFreq"), if (runLowFreq) 1 else 0)
                GLES30.glUniform2i(loc(p, "uLowMax"), lowW - 1, lowH - 1)
                GLES30.glUniform1f(loc(p, "uLowFactor"), (1 shl lowFrequencyLog2).toFloat())
                GLES30.glUniform3fv(loc(p, "uInvWhiteBalance"), 1, invWb, 0)
            }

            finishPasses()
        } finally {
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
            MgcGlesSurfaces.deleteFramebuffers(*framebuffers.toIntArray())
            MgcGlesSurfaces.deleteTextures(*textures.toIntArray())
        }
    }

    private fun runPyramid(
        inputTex: Int,
        outputFbo: Int,
        width: Int,
        height: Int,
        strengthTex: Int,
        strengthW: Int,
        strengthH: Int,
        log2StrengthDecimation: Int,
        params: MgcChromaNoiseModel.PyramidParams,
        allocTex: (Int, Int, Int, String) -> Int,
        allocFbo: (String, Int) -> Int,
    ) {
        val w = IntArray(4) { level -> width shr level }
        val h = IntArray(4) { level -> height shr level }
        val inTex = IntArray(4)
        inTex[0] = inputTex
        for (level in 1..3) {
            val t = allocTex(GLES30.GL_RGBA16I, w[level], h[level], "MGC chroma in$level")
            val fbo = allocFbo("MGC chroma in$level", t)
            draw("downsample", fbo, w[level], h[level]) { p ->
                bindTexture(p, "uInput", 0, inTex[level - 1])
                GLES30.glUniform2i(loc(p, "uInputMax"), w[level - 1] - 1, h[level - 1] - 1)
            }
            inTex[level] = t
        }

        // Reuse two scratch textures across all 4 levels via viewport sizing.
        val reconHalo = GlesMgcChromaDenoiseShaders.RECON_HALO
        val blf0Halo = GlesMgcChromaDenoiseShaders.BLF0_HALO
        val reconTex = allocTex(GLES30.GL_RGBA16I, width + 2 * reconHalo, height + 2 * reconHalo, "MGC chroma recon")
        val reconFbo = allocFbo("MGC chroma recon", reconTex)
        val blf0Tex = allocTex(GLES30.GL_RGBA16I, width + 2 * blf0Halo, height + 2 * blf0Halo, "MGC chroma blf0")
        val blf0Fbo = allocFbo("MGC chroma blf0", blf0Tex)

        val outTex = IntArray(4)
        for (level in 3 downTo 0) {
            val lw = w[level]
            val lh = h[level]
            val shift = log2StrengthDecimation - level

            val blf0SrcTex: Int
            val blf0SrcOriginX: Int
            val blf0SrcOriginY: Int
            val blf0ClampSrc: Int
            if (level == 3) {
                // Level 3 has prev_output == downsampled == in3, so reconstructed == clamped in3.
                blf0SrcTex = inTex[3]
                blf0SrcOriginX = 0
                blf0SrcOriginY = 0
                blf0ClampSrc = 1
            } else {
                val rw = lw + 2 * reconHalo
                val rh = lh + 2 * reconHalo
                draw("reconstruct", reconFbo, rw, rh) { p ->
                    bindTexture(p, "uInput", 0, inTex[level])
                    bindTexture(p, "uDownsampled", 1, inTex[level + 1])
                    bindTexture(p, "uPrevOutput", 2, outTex[level + 1])
                    GLES30.glUniform2i(loc(p, "uInputMax"), lw - 1, lh - 1)
                    GLES30.glUniform2i(loc(p, "uCoarseMax"), w[level + 1] - 1, h[level + 1] - 1)
                }
                blf0SrcTex = reconTex
                blf0SrcOriginX = -reconHalo
                blf0SrcOriginY = -reconHalo
                blf0ClampSrc = 0
            }

            // Branch 0 (step = 2) -> blf0Tex over [-1, lw] x [-1, lh]
            val b0 = params[level, 0]
            draw("blf", blf0Fbo, lw + 2 * blf0Halo, lh + 2 * blf0Halo) { p ->
                bindBlfUniforms(
                    program = p,
                    srcTex = blf0SrcTex,
                    strengthTex = strengthTex,
                    srcOriginX = blf0SrcOriginX,
                    srcOriginY = blf0SrcOriginY,
                    dstOriginX = -blf0Halo,
                    dstOriginY = -blf0Halo,
                    srcMaxX = lw - 1,
                    srcMaxY = lh - 1,
                    clampSrc = blf0ClampSrc,
                    strengthW = strengthW,
                    strengthH = strengthH,
                    strengthShift = shift,
                    step = 2,
                    coeffs = b0,
                )
            }

            // Branch 1 (step = 1) -> level output over [0, lw-1] x [0, lh-1]
            val dstFbo = if (level == 0) {
                outputFbo
            } else {
                val t = allocTex(GLES30.GL_RGBA16I, lw, lh, "MGC chroma out$level")
                outTex[level] = t
                allocFbo("MGC chroma out$level", t)
            }
            val b1 = params[level, 1]
            draw("blf", dstFbo, lw, lh) { p ->
                bindBlfUniforms(
                    program = p,
                    srcTex = blf0Tex,
                    strengthTex = strengthTex,
                    srcOriginX = -blf0Halo,
                    srcOriginY = -blf0Halo,
                    dstOriginX = 0,
                    dstOriginY = 0,
                    srcMaxX = lw + 2 * blf0Halo - 1,
                    srcMaxY = lh + 2 * blf0Halo - 1,
                    clampSrc = 0,
                    strengthW = strengthW,
                    strengthH = strengthH,
                    strengthShift = shift,
                    step = 1,
                    coeffs = b1,
                )
            }
        }
    }

    private fun bindBlfUniforms(
        program: Int,
        srcTex: Int,
        strengthTex: Int,
        srcOriginX: Int,
        srcOriginY: Int,
        dstOriginX: Int,
        dstOriginY: Int,
        srcMaxX: Int,
        srcMaxY: Int,
        clampSrc: Int,
        strengthW: Int,
        strengthH: Int,
        strengthShift: Int,
        step: Int,
        coeffs: MgcChromaNoiseModel.BranchCoeffs,
    ) {
        bindTexture(program, "uSrc", 0, srcTex)
        bindTexture(program, "uStrength", 1, strengthTex)
        GLES30.glUniform2i(loc(program, "uSrcOrigin"), srcOriginX, srcOriginY)
        GLES30.glUniform2i(loc(program, "uDstOrigin"), dstOriginX, dstOriginY)
        GLES30.glUniform2i(loc(program, "uSrcMax"), srcMaxX, srcMaxY)
        GLES30.glUniform1i(loc(program, "uClampSrc"), clampSrc)
        GLES30.glUniform2i(loc(program, "uStrengthMax"), strengthW - 1, strengthH - 1)
        GLES30.glUniform1i(loc(program, "uStrengthShift"), strengthShift)
        GLES30.glUniform1i(loc(program, "uStep"), step)
        GLES30.glUniform1i(loc(program, "uReadCoeff"), coeffs.readCoeff)
        GLES30.glUniform1i(loc(program, "uShotCoeff"), coeffs.shotCoeff)
        GLES30.glUniform1i(loc(program, "uQuadCoeff"), coeffs.quadCoeff)
        GLES30.glUniform2ui(loc(program, "uScaleUV"), coeffs.scaleU, coeffs.scaleV)
        GLES30.glUniform1ui(loc(program, "uOutlierThreshold"), coeffs.outlierThreshold)
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

    private fun program(pass: String): Int = programs.getOrPut(pass) {
        val source = when (pass) {
            "rgbToYuv" -> GlesMgcChromaDenoiseShaders.rgbToYuvShader
            "strengthMap" -> GlesMgcChromaDenoiseShaders.strengthMapShader
            "packY" -> GlesMgcChromaDenoiseShaders.packYShader
            "downsample" -> GlesMgcChromaDenoiseShaders.downsampleShader
            "reconstruct" -> GlesMgcChromaDenoiseShaders.reconstructShader
            "blf" -> GlesMgcChromaDenoiseShaders.blfShader
            "boxDownsample" -> GlesMgcChromaDenoiseShaders.boxDownsampleShader
            "chromaMedian" -> GlesMgcChromaDenoiseShaders.chromaMedianShader
            "applyChromaDelta" -> GlesMgcChromaDenoiseShaders.applyChromaDeltaShader
            else -> error("Unknown MGC chroma denoise pass: $pass")
        }
        quad.createProgram(source, "MgcChroma_$pass").also {
            check(it != 0) { "Failed to link MgcChroma_$pass" }
        }
    }

    private fun ensurePlaceholders() {
        if (placeholderU16Texture != 0) return
        placeholderU16Texture = MgcGlesSurfaces.texture(GLES30.GL_R16UI, 1, 1, "MGC chroma ph u16")
        placeholderF32Texture = MgcGlesSurfaces.texture(GLES30.GL_RGBA32F, 1, 1, "MGC chroma ph f32")
        placeholderI16Texture = MgcGlesSurfaces.texture(GLES30.GL_RGBA16I, 1, 1, "MGC chroma ph i16")
        uploadR16ui(placeholderU16Texture, 1, 1, shortArrayOf(256))
        uploadRgba32f(placeholderF32Texture, 1, 1, floatArrayOf(1f, 1f, 1f, 1f))
        val zeroI16 = ByteBuffer.allocateDirect(8).order(ByteOrder.nativeOrder())
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, placeholderI16Texture)
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 2)
        GLES30.glTexSubImage2D(GLES30.GL_TEXTURE_2D, 0, 0, 0, 1, 1, GLES30.GL_RGBA_INTEGER, GLES30.GL_SHORT, zeroI16)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
    }

    private fun uploadR16ui(texture: Int, width: Int, height: Int, values: ShortArray) {
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 2)
        GLES30.glTexSubImage2D(
            GLES30.GL_TEXTURE_2D, 0, 0, 0, width, height,
            GLES30.GL_RED_INTEGER, GLES30.GL_UNSIGNED_SHORT, ShortBuffer.wrap(values),
        )
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
    }

    private fun uploadRgba16ui(texture: Int, width: Int, height: Int, buffer: ByteBuffer) {
        buffer.rewind()
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 2)
        GLES30.glTexSubImage2D(
            GLES30.GL_TEXTURE_2D, 0, 0, 0, width, height,
            GLES30.GL_RGBA_INTEGER, GLES30.GL_UNSIGNED_SHORT, buffer,
        )
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
    }

    private fun uploadRgba32f(texture: Int, width: Int, height: Int, values: FloatArray) {
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 4)
        GLES30.glTexSubImage2D(
            GLES30.GL_TEXTURE_2D, 0, 0, 0, width, height,
            GLES30.GL_RGBA, GLES30.GL_FLOAT, FloatBuffer.wrap(values),
        )
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
    }

    private fun bindTexture(program: Int, name: String, unit: Int, texture: Int) {
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + unit)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
        GLES30.glUniform1i(loc(program, name), unit)
    }

    private fun loc(program: Int, name: String) = GLES30.glGetUniformLocation(program, name)

    private fun finishPasses() {
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 4)
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 4)
        for (unit in 4 downTo 0) {
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + unit)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        }
        val error = GLES30.glGetError()
        check(error == GLES30.GL_NO_ERROR) {
            "MGC chroma denoise GLES passes failed: 0x${Integer.toHexString(error)}"
        }
    }

    fun release() {
        programs.values.forEach { if (it != 0) GLES30.glDeleteProgram(it) }
        programs.clear()
        MgcGlesSurfaces.deleteTextures(placeholderU16Texture, placeholderF32Texture, placeholderI16Texture)
        placeholderU16Texture = 0
        placeholderF32Texture = 0
        placeholderI16Texture = 0
    }

    companion object {
        private fun roundUp(value: Int, multiple: Int): Int =
            ((value + multiple - 1) / multiple) * multiple
    }
}
