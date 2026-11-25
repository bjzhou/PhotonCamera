package com.hinnka.mycamera.raw

import android.opengl.GLES30
import com.hinnka.mycamera.processor.GlesGraphicsShaderSources
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.FloatBuffer
import java.nio.ShortBuffer

/**
 * Unified GPU runner for MGC 9.6.080 V24 full-resolution denoise:
 * - Pecan luma pyramid (`GlesMgcLumaDenoiseShaders`, single-channel `R16I`)
 * - Chroma pyramid + optional low-frequency chroma branch & chroma median filter
 *   (`GlesMgcChromaDenoiseShaders`, `RGBA16I`)
 *
 * Follows GCam ProcessRaw's exact stage ordering:
 * 1. `rgbToYuv` (shared `initYuv`, `R16I` for luma-only, otherwise `RGBA16I`) and
 *    `strengthMap` (shared `strengthTex`, `RGBA16UI`).
 * 2. Optional Pecan luma pyramid on `initYuv.r` with pre-MeasureMoire `strengthTex`, writing level 0
 *    either to `R16I` (luma-only) or `RGBA16I` `[denoisedY, initCb, initCr, 0]` (luma+chroma).
 * 3. Optional MeasureMoire reads the original `initYuv.r` and writes a separate strength map for chroma.
 * 4. Optional full-resolution and low-frequency chroma pyramids on `[denoisedY (or initY), Cb, Cr]`.
 * 5. Single-pass `applyDenoiseDelta` adding luma and/or chroma deltas back onto linear `RGBA16F`.
 *
 * Passes submit in order on the current context and share one framebuffer. Temporary textures
 * are retired at their last consumer. The last chroma pass can write into the original YUV
 * allocation once reconstruction has finished reading it.
 */
internal class GlesMgcDenoise {
    private val programs = HashMap<String, Int>()
    private val uniformLocations = HashMap<Int, MutableMap<String, Int>>()
    private val validatedTargets = HashSet<Int>()
    private var renderFramebuffer = 0
    private var attachedTexture = 0
    private var placeholderU16Texture = 0
    private var placeholderF32Texture = 0
    private var placeholderI16Texture = 0

    fun render(
        source: Int,
        target: Int,
        width: Int,
        height: Int,
        globalOriginX: Int,
        globalOriginY: Int,
        fullWidth: Int,
        fullHeight: Int,
        config: MgcFullResolutionDenoise.GpuDenoiseConfig,
        bitmapStrengthTexture: Int = 0,
    ) {
        val lumaConfig = config.luma
        val chromaConfig = config.chroma
        require(lumaConfig != null || chromaConfig != null) {
            "GlesMgcDenoise requires at least luma or chroma config"
        }
        require(width > 0 && height > 0 && source != 0 && target != 0 && source != target)
        require(config.whiteBalance.size == 3 && config.whiteBalance.all { it.isFinite() && it > 0f })

        val wholeImage = globalOriginX == 0 && globalOriginY == 0 &&
            width == fullWidth && height == fullHeight
        require(bitmapStrengthTexture == 0 ||
            (wholeImage && config.spatialStrengthQ8 == null && config.lensShadingMap == null)
        )
        val lowFreqLog2 = chromaConfig?.lowFrequencyLog2 ?: 0
        val runLowFreq = lowFreqLog2 in 1..2 && wholeImage
        val paddedW = roundUp(width, 128)
        val paddedH = roundUp(height, 16)
        val strengthW = paddedW / 4
        val strengthH = paddedH / 4
        val halo = maxOf(
            if (lumaConfig != null) GlesMgcLumaDenoiseShaders.RECON_HALO else 0,
            if (chromaConfig != null) GlesMgcChromaDenoiseShaders.RECON_HALO else 0,
            if (config.measureMoireEnabled) GlesMgcMeasureMoireShaders.SCORE_HALO else 0,
        )
        val limits = IntArray(1)
        GLES30.glGetIntegerv(GLES30.GL_MAX_TEXTURE_SIZE, limits, 0)
        require(maxOf(paddedW, paddedH) + 2 * halo <= limits[0]) {
            "MGC denoise padded extent ${paddedW}x$paddedH with $halo-pixel halo exceeds GL_MAX_TEXTURE_SIZE=${limits[0]}"
        }

        val lumaParams = lumaConfig?.let {
            MgcLumaNoiseModel.buildPyramidParams(
                noise = it.q14Noise,
                responseOffset = config.responseOffset,
                responseCosineOffset = config.responseCosineOffset,
                strength = it.strength,
                outlierDistance = it.outlierDistance,
                revertFactor = it.revertFactor,
            )
        }
        val chromaFullParams = chromaConfig?.let {
            MgcChromaNoiseModel.buildPyramidParams(
                noise = it.q14Noise,
                responseOffset = config.responseOffset,
                responseCosineOffset = config.responseCosineOffset,
                strength = it.strength,
                outlierThreshold = it.outlierThreshold,
            )
        }
        val chromaLowParams = chromaConfig?.takeIf { runLowFreq }?.let {
            val lowNoise = MgcChromaNoiseModel.boxDownsample(it.q14Noise, lowFreqLog2)
            MgcChromaNoiseModel.buildPyramidParams(
                noise = lowNoise,
                responseOffset = config.responseOffset,
                responseCosineOffset = config.responseCosineOffset,
                strength = it.strength,
                outlierThreshold = it.outlierThreshold,
            )
        }

        val scratch = ScratchTextures()
        try {
            GLES30.glBindBuffer(GLES30.GL_PIXEL_UNPACK_BUFFER, 0)
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            GLES30.glDisable(GLES30.GL_BLEND)
            ensurePlaceholders()
            // 1. Convert source RGBA16F -> padded Q14 S16 Y or YUV.
            val yuvFormat = if (chromaConfig != null) GLES30.GL_RGBA16I else GLES30.GL_R16I
            val initYuv = scratch.allocate(yuvFormat, paddedW, paddedH, "MGC denoise init YUV")
            draw("rgbToYuv", initYuv, paddedW, paddedH) { p ->
                bindTexture(p, "uSource", 0, source)
                GLES30.glUniform2i(loc(p, "uSourceMax"), width - 1, height - 1)
                GLES30.glUniform3fv(loc(p, "uWhiteBalance"), 1, config.whiteBalance, 0)
            }

            // 2. Build 3-channel Q8 strength map (RGBA16UI, strengthW x strengthH)
            var strengthTex = scratch.allocate(GLES30.GL_RGBA16UI, strengthW, strengthH, "MGC denoise strength")
            if (bitmapStrengthTexture != 0) {
                draw("bitmapStrengthMap", strengthTex, strengthW, strengthH) { p ->
                    bindTexture(p, "uBitmapStrength", 0, bitmapStrengthTexture)
                    GLES30.glUniform2i(loc(p, "uLogicalMax"), (width - 1) / 4, (height - 1) / 4)
                }
            } else {
                val baseTex = if (config.spatialStrengthQ8 != null &&
                    config.spatialStrengthWidth > 0 && config.spatialStrengthHeight > 0
                ) {
                    scratch.allocate(
                        GLES30.GL_R16UI, config.spatialStrengthWidth, config.spatialStrengthHeight,
                        "MGC denoise base strength",
                    ).also {
                        uploadR16ui(it, config.spatialStrengthWidth, config.spatialStrengthHeight, config.spatialStrengthQ8)
                    }
                } else 0
                val lscTex = if (config.lensShadingMap != null &&
                    config.lensWidth > 0 && config.lensHeight > 0
                ) {
                    scratch.allocate(
                        GLES30.GL_RGBA32F, config.lensWidth, config.lensHeight, "MGC denoise LSC",
                    ).also {
                        uploadRgba32f(it, config.lensWidth, config.lensHeight, config.lensShadingMap)
                    }
                } else 0
                val fullStrengthW = roundUp(fullWidth, 128) / 4
                val fullStrengthH = roundUp(fullHeight, 16) / 4
                val sampleRateX = if (fullStrengthW > 1 && config.lensWidth > 0) {
                    (config.lensWidth - 1).toFloat() / (fullStrengthW - 1).toFloat()
                } else 1f
                val sampleRateY = if (fullStrengthH > 1 && config.lensHeight > 0) {
                    (config.lensHeight - 1).toFloat() / (fullStrengthH - 1).toFloat()
                } else 1f
                draw("strengthMap", strengthTex, strengthW, strengthH) { p ->
                    bindTexture(p, "uBaseStrength", 0, if (baseTex != 0) baseTex else placeholderU16Texture)
                    bindTexture(p, "uLensShading", 1, if (lscTex != 0) lscTex else placeholderF32Texture)
                    GLES30.glUniform1i(loc(p, "uHasBaseStrength"), if (baseTex != 0) 1 else 0)
                    GLES30.glUniform1i(loc(p, "uHasLensShading"), if (lscTex != 0) 1 else 0)
                    GLES30.glUniform2i(loc(p, "uLocalMax"), width - 1, height - 1)
                    GLES30.glUniform2i(loc(p, "uGlobalOrigin"), globalOriginX, globalOriginY)
                    GLES30.glUniform2i(
                        loc(p, "uBaseMax"),
                        maxOf(config.spatialStrengthWidth - 1, 0),
                        maxOf(config.spatialStrengthHeight - 1, 0),
                    )
                    GLES30.glUniform2i(loc(p, "uStrengthOrigin"), globalOriginX / 4, globalOriginY / 4)
                    GLES30.glUniform2i(
                        loc(p, "uLensMax"),
                        maxOf(config.lensWidth - 1, 0),
                        maxOf(config.lensHeight - 1, 0),
                    )
                    GLES30.glUniform2f(loc(p, "uSampleRate"), sampleRateX, sampleRateY)
                }
                scratch.discard(baseTex)
                scratch.discard(lscTex)
            }

            // 3. Optional Pecan 4-level luma pyramid (uses pre-MeasureMoire strengthTex).
            // When chroma is also enabled, level 0 writes RGBA16I [denoisedY, initCb, initCr, 0]
            // so ChromaDenoise sees clean Pecan luma directly with zero extra merge pass.
            var lumaOutTex = 0
            if (lumaParams != null) {
                lumaOutTex = scratch.allocate(yuvFormat, paddedW, paddedH, "MGC luma denoised")
                runLumaPyramid(
                    scratch = scratch,
                    inputTex = initYuv,
                    outputTex = lumaOutTex,
                    width = paddedW,
                    height = paddedH,
                    strengthTex = strengthTex,
                    strengthW = strengthW,
                    strengthH = strengthH,
                    params = lumaParams,
                )
            }

            // 4. Optional chroma denoise (+ MeasureMoire on raw initYuv.r, + low-frequency branch)
            var finalYuvTex = lumaOutTex
            var lowCorrection = placeholderI16Texture
            var lowW = 1
            var lowH = 1
            if (chromaConfig != null && chromaFullParams != null) {
                if (config.measureMoireEnabled) {
                    val moireStrength = scratch.allocate(
                        GLES30.GL_RGBA16UI, strengthW, strengthH, "MGC MeasureMoire strength",
                    )
                    runMeasureMoire(scratch, initYuv, strengthTex, moireStrength, paddedW, paddedH)
                    scratch.discard(strengthTex)
                    strengthTex = moireStrength
                }

                val chromaInputTex = if (lumaOutTex != 0) lumaOutTex else initYuv
                runChromaPyramid(
                    scratch = scratch,
                    inputTex = chromaInputTex,
                    outputTex = initYuv,
                    width = paddedW,
                    height = paddedH,
                    strengthTex = strengthTex,
                    strengthW = strengthW,
                    strengthH = strengthH,
                    log2StrengthDecimation = 2,
                    params = chromaFullParams,
                )
                finalYuvTex = initYuv
                scratch.discard(lumaOutTex)

                if (chromaLowParams != null) {
                    lowW = paddedW shr lowFreqLog2
                    lowH = paddedH shr lowFreqLog2
                    // Only this branch needs extra padding to halve the low-resolution grid three times.
                    val lowPaddedW = roundUp(lowW, 8)
                    val lowPaddedH = roundUp(lowH, 8)
                    val lowInput = scratch.allocate(GLES30.GL_RGBA16I, lowPaddedW, lowPaddedH, "MGC chroma low input")
                    draw("boxDownsample", lowInput, lowPaddedW, lowPaddedH) { p ->
                        bindTexture(p, "uInput", 0, finalYuvTex)
                        GLES30.glUniform2i(loc(p, "uInputMax"), lowW - 1, lowH - 1)
                        GLES30.glUniform1i(loc(p, "uLog2Factor"), lowFreqLog2)
                    }
                    var medianTex = 0
                    if (chromaConfig.chromaMedianFilterType in 1..2) {
                        medianTex = scratch.allocate(
                            GLES30.GL_RGBA16I, lowPaddedW, lowPaddedH, "MGC chroma low median",
                        )
                        draw("chromaMedian", medianTex, lowPaddedW, lowPaddedH) { p ->
                            bindTexture(p, "uInput", 0, lowInput)
                            GLES30.glUniform2i(loc(p, "uMax"), lowW - 1, lowH - 1)
                            GLES30.glUniform1i(loc(p, "uFilterType"), chromaConfig.chromaMedianFilterType)
                        }
                    }
                    lowCorrection = scratch.allocate(GLES30.GL_RG32I, lowPaddedW, lowPaddedH, "MGC chroma low correction")
                    runChromaPyramid(
                        scratch = scratch,
                        inputTex = if (medianTex != 0) medianTex else lowInput,
                        outputTex = lowCorrection,
                        lowBaseline = lowInput,
                        width = lowPaddedW,
                        height = lowPaddedH,
                        strengthTex = strengthTex,
                        strengthW = strengthW,
                        strengthH = strengthH,
                        log2StrengthDecimation = 2 - lowFreqLog2,
                        params = chromaLowParams,
                    )
                    scratch.discard(medianTex)
                    scratch.discard(lowInput)
                }
            } else {
                scratch.discard(initYuv)
            }
            scratch.discard(strengthTex)

            // 5. Apply luma and/or chroma delta (+ low-frequency chroma correction) onto source RGBA16F
            val invWb = floatArrayOf(
                1f / config.whiteBalance[0],
                1f / config.whiteBalance[1],
                1f / config.whiteBalance[2],
            )
            draw("applyDenoiseDelta", target, width, height) { p ->
                bindTexture(p, "uSource", 0, source)
                bindTexture(p, "uFinalYuv", 1, finalYuvTex)
                bindTexture(p, "uLowCorrection", 2, lowCorrection)
                GLES30.glUniform3fv(loc(p, "uWhiteBalance"), 1, config.whiteBalance, 0)
                GLES30.glUniform1i(loc(p, "uApplyLuma"), if (lumaConfig != null) 1 else 0)
                GLES30.glUniform1i(loc(p, "uApplyChroma"), if (chromaConfig != null) 1 else 0)
                GLES30.glUniform1i(loc(p, "uApplyLowFreq"), if (runLowFreq) 1 else 0)
                GLES30.glUniform2i(loc(p, "uLowMax"), lowW - 1, lowH - 1)
                GLES30.glUniform1f(loc(p, "uLowFactor"), (1 shl lowFreqLog2).toFloat())
                GLES30.glUniform3fv(loc(p, "uInvWhiteBalance"), 1, invWb, 0)
            }

            checkGlError("passes")
        } finally {
            resetBindings()
            scratch.close()
        }
    }

    private fun runMeasureMoire(
        scratch: ScratchTextures,
        yuv: Int,
        strength: Int,
        destination: Int,
        width: Int,
        height: Int,
    ) {
        val scoreW = width + 2 * GlesMgcMeasureMoireShaders.SCORE_HALO
        val scoreH = height + 2 * GlesMgcMeasureMoireShaders.SCORE_HALO
        val halfW = width / 2 + 2 * GlesMgcMeasureMoireShaders.HALF_HALO
        val halfH = height / 2 + 2 * GlesMgcMeasureMoireShaders.HALF_HALO

        val blur = scratch.allocate(GLES30.GL_RG16I, width, scoreH, "MGC MeasureMoire blur")
        draw("moireBlurVertical", blur, width, scoreH) { p ->
            bindTexture(p, "uYuv", 0, yuv)
            GLES30.glUniform1i(loc(p, "uMaxY"), height - 1)
        }
        val score = scratch.allocate(GLES30.GL_R8UI, scoreW, scoreH, "MGC MeasureMoire score")
        draw("moireScore", score, scoreW, scoreH) { p ->
            bindTexture(p, "uYuv", 0, yuv)
            bindTexture(p, "uBlurred", 1, blur)
            GLES30.glUniform2i(loc(p, "uImageMax"), width - 1, height - 1)
        }
        scratch.discard(blur)
        val half = scratch.allocate(GLES30.GL_R8UI, halfW, halfH, "MGC MeasureMoire half score")
        draw("moireHalveScore", half, halfW, halfH) { p ->
            bindTexture(p, "uScore", 0, score)
        }
        scratch.discard(score)
        draw("moireUpdateStrength", destination, width / 4, height / 4) { p ->
            bindTexture(p, "uScore", 0, half)
            bindTexture(p, "uStrength", 1, strength)
        }
        scratch.discard(half)
    }

    private fun runLumaPyramid(
        scratch: ScratchTextures,
        inputTex: Int,
        outputTex: Int,
        width: Int,
        height: Int,
        strengthTex: Int,
        strengthW: Int,
        strengthH: Int,
        params: MgcLumaNoiseModel.PyramidParams,
    ) {
        val w = IntArray(4)
        val h = IntArray(4)
        w[0] = width
        h[0] = height
        for (level in 1..3) {
            w[level] = roundUp(w[level - 1] / 2, 128)
            h[level] = roundUp(h[level - 1] / 2, 16)
        }

        val reconHalo = GlesMgcLumaDenoiseShaders.RECON_HALO
        val blf0Halo = GlesMgcLumaDenoiseShaders.BLF0_HALO
        // The vertical scratch is dead after the final horizontal downsample.
        val recon = scratch.allocate(
            GLES30.GL_R16I, width + 2 * reconHalo, height + 2 * reconHalo, "MGC luma recon",
        )
        val inTex = IntArray(4)
        inTex[0] = inputTex
        for (level in 1..3) {
            draw("lumaDownsampleV", recon, w[level - 1], h[level]) { p ->
                bindTexture(p, "uInput", 0, inTex[level - 1])
                GLES30.glUniform2i(loc(p, "uInputMax"), w[level - 1] - 1, h[level - 1] - 1)
            }
            val downsampled = scratch.allocate(GLES30.GL_R16I, w[level], h[level], "MGC luma in$level")
            draw("lumaDownsampleH", downsampled, w[level], h[level]) { p ->
                bindTexture(p, "uInput", 0, recon)
                GLES30.glUniform2i(loc(p, "uInputMax"), w[level - 1] - 1, h[level] - 1)
            }
            inTex[level] = downsampled
        }

        val blf0 = scratch.allocate(
            GLES30.GL_R16I, width + 2 * blf0Halo, height + 2 * blf0Halo, "MGC luma blf0",
        )
        var previousOutput = 0
        for (level in 3 downTo 0) {
            val lw = w[level]
            val lh = h[level]
            val shift = 2 - level
            val isLast = level == 0
            val lp = params[level]
            val lowPass = if (isLast) {
                scratch.allocate(GLES30.GL_R16I, w[1] + 2, h[1] + 2, "MGC luma low pass").also {
                    draw("lumaLowPass", it, w[1] + 2, h[1] + 2) { p ->
                        bindTexture(p, "uPrevDenoised", 0, previousOutput)
                        GLES30.glUniform2i(loc(p, "uCoarseMax"), w[1] - 1, h[1] - 1)
                    }
                }
            } else 0

            val coarsest = level == 3
            val reconInput = if (coarsest) inTex[level] else recon
            val reconOffset = if (coarsest) 0 else -reconHalo
            if (!coarsest) {
                draw("lumaReconstruct", recon, lw + 2 * reconHalo, lh + 2 * reconHalo) { p ->
                    bindTexture(p, "uInput", 0, inTex[level])
                    bindTexture(p, "uPrevInput", 1, inTex[level + 1])
                    bindTexture(p, "uPrevDenoised", 2, previousOutput)
                    bindTexture(p, "uLowPass", 3, if (isLast) lowPass else placeholderI16Texture)
                    GLES30.glUniform2i(loc(p, "uInputMax"), lw - 1, lh - 1)
                    GLES30.glUniform2i(loc(p, "uCoarseMax"), w[level + 1] - 1, h[level + 1] - 1)
                    GLES30.glUniform1i(loc(p, "uIsLastLevel"), if (isLast) 1 else 0)
                }
                scratch.discard(inTex[level + 1])
                scratch.discard(previousOutput)
            }
            draw("lumaBlf", blf0, lw + 2 * blf0Halo, lh + 2 * blf0Halo) { p ->
                bindLumaBlfUniforms(
                    program = p,
                    srcTex = reconInput,
                    lumaRefTex = inTex[level],
                    strengthTex = strengthTex,
                    hasLumaRef = isLast,
                    srcOrigin = reconOffset,
                    lumaMaxX = lw - 1,
                    lumaMaxY = lh - 1,
                    strengthW = strengthW,
                    strengthH = strengthH,
                    strengthShift = shift,
                    coeffs = lp.branch0,
                )
                GLES30.glUniform2i(loc(p, "uDstOrigin"), -blf0Halo, -blf0Halo)
                GLES30.glUniform2i(loc(p, "uSrcMax"), lw - 1, lh - 1)
                GLES30.glUniform1i(loc(p, "uClampSrc"), if (coarsest) 1 else 0)
                GLES30.glUniform1i(loc(p, "uStep"), 2)
            }

            val destination = if (isLast) outputTex else {
                scratch.allocate(GLES30.GL_R16I, lw, lh, "MGC luma out$level")
            }
            draw("lumaBlfRevert", destination, lw, lh) { p ->
                bindLumaBlfUniforms(
                    program = p,
                    srcTex = blf0,
                    lumaRefTex = inTex[level],
                    strengthTex = strengthTex,
                    hasLumaRef = isLast,
                    srcOrigin = -blf0Halo,
                    lumaMaxX = lw - 1,
                    lumaMaxY = lh - 1,
                    strengthW = strengthW,
                    strengthH = strengthH,
                    strengthShift = shift,
                    coeffs = lp.branch1,
                )
                bindTexture(p, "uInput", 3, inTex[level])
                bindTexture(p, "uRecon", 4, reconInput)
                bindTexture(p, "uLowPass", 5, if (isLast) lowPass else placeholderI16Texture)
                GLES30.glUniform2i(loc(p, "uReconOrigin"), reconOffset, reconOffset)
                GLES30.glUniform2i(loc(p, "uCoarseMax"), w[1] - 1, h[1] - 1)
                GLES30.glUniform1i(loc(p, "uIsLastLevel"), if (isLast) 1 else 0)
                GLES30.glUniform1ui(loc(p, "uRevQ8"), lp.revQ8)
                GLES30.glUniform3ui(loc(p, "uRevLut"), lp.revLut0, lp.revLut1, lp.revLut2)
            }
            previousOutput = destination
            scratch.discard(lowPass)
        }
        scratch.discard(recon)
        scratch.discard(blf0)
    }

    private fun runChromaPyramid(
        scratch: ScratchTextures,
        inputTex: Int,
        outputTex: Int,
        width: Int,
        height: Int,
        strengthTex: Int,
        strengthW: Int,
        strengthH: Int,
        log2StrengthDecimation: Int,
        params: MgcChromaNoiseModel.PyramidParams,
        lowBaseline: Int = 0,
    ) {
        val w = IntArray(4) { level -> width shr level }
        val h = IntArray(4) { level -> height shr level }
        val inTex = IntArray(4)
        inTex[0] = inputTex
        for (level in 1..3) {
            val downsampled = scratch.allocate(GLES30.GL_RGBA16I, w[level], h[level], "MGC chroma in$level")
            draw("chromaDownsample", downsampled, w[level], h[level]) { p ->
                bindTexture(p, "uInput", 0, inTex[level - 1])
                GLES30.glUniform2i(loc(p, "uInputMax"), w[level - 1] - 1, h[level - 1] - 1)
            }
            inTex[level] = downsampled
        }

        val reconHalo = GlesMgcChromaDenoiseShaders.RECON_HALO
        val blf0Halo = GlesMgcChromaDenoiseShaders.BLF0_HALO
        val recon = scratch.allocate(
            GLES30.GL_RGBA16I, width + 2 * reconHalo, height + 2 * reconHalo, "MGC chroma recon",
        )
        val blf0 = scratch.allocate(
            GLES30.GL_RGBA16I, width + 2 * blf0Halo, height + 2 * blf0Halo, "MGC chroma blf0",
        )

        var coarseCorrection = 0
        for (level in 3 downTo 0) {
            val lw = w[level]
            val lh = h[level]
            val shift = log2StrengthDecimation - level
            val coarsest = level == 3
            if (!coarsest) {
                draw("chromaReconstruct", recon, lw + 2 * reconHalo, lh + 2 * reconHalo) { p ->
                    bindTexture(p, "uInput", 0, inTex[level])
                    bindTexture(p, "uCorrection", 1, coarseCorrection)
                    GLES30.glUniform2i(loc(p, "uInputMax"), lw - 1, lh - 1)
                    GLES30.glUniform2i(loc(p, "uCoarseMax"), w[level + 1] - 1, h[level + 1] - 1)
                }
                scratch.discard(coarseCorrection)
            }

            draw("chromaBlf", blf0, lw + 2 * blf0Halo, lh + 2 * blf0Halo) { p ->
                bindChromaBlfUniforms(
                    program = p,
                    srcTex = if (coarsest) inTex[level] else recon,
                    strengthTex = strengthTex,
                    srcOrigin = if (coarsest) 0 else -reconHalo,
                    dstOrigin = -blf0Halo,
                    srcMaxX = lw - 1,
                    srcMaxY = lh - 1,
                    clampSrc = coarsest,
                    strengthW = strengthW,
                    strengthH = strengthH,
                    strengthShift = shift,
                    step = 2,
                    coeffs = params[level, 0],
                )
                bindTexture(p, "uReference", 2, placeholderI16Texture)
                GLES30.glUniform1i(loc(p, "uOutputMode"), 0)
            }

            val destination: Int
            val reference: Int
            val outputMode: Int
            if (level > 0) {
                destination = scratch.allocate(GLES30.GL_RG16I, lw, lh, "MGC chroma correction$level")
                reference = inTex[level]
                outputMode = 1
            } else {
                destination = outputTex
                reference = if (lowBaseline == 0) placeholderI16Texture else lowBaseline
                outputMode = if (lowBaseline == 0) 0 else 2
            }
            draw("chromaBlf", destination, lw, lh) { p ->
                bindChromaBlfUniforms(
                    program = p,
                    srcTex = blf0,
                    strengthTex = strengthTex,
                    srcOrigin = -blf0Halo,
                    dstOrigin = 0,
                    srcMaxX = lw + 2 * blf0Halo - 1,
                    srcMaxY = lh + 2 * blf0Halo - 1,
                    clampSrc = false,
                    strengthW = strengthW,
                    strengthH = strengthH,
                    strengthShift = shift,
                    step = 1,
                    coeffs = params[level, 1],
                )
                bindTexture(p, "uReference", 2, reference)
                GLES30.glUniform1i(loc(p, "uOutputMode"), outputMode)
            }
            coarseCorrection = destination
            if (level > 0) scratch.discard(inTex[level])
        }
        scratch.discard(recon)
        scratch.discard(blf0)
    }

    private fun bindLumaBlfUniforms(
        program: Int,
        srcTex: Int,
        lumaRefTex: Int,
        strengthTex: Int,
        hasLumaRef: Boolean,
        srcOrigin: Int,
        lumaMaxX: Int,
        lumaMaxY: Int,
        strengthW: Int,
        strengthH: Int,
        strengthShift: Int,
        coeffs: MgcLumaNoiseModel.BranchCoeffs,
    ) {
        bindTexture(program, "uSrc", 0, srcTex)
        bindTexture(program, "uLumaRef", 1, lumaRefTex)
        bindTexture(program, "uStrength", 2, strengthTex)
        GLES30.glUniform1i(loc(program, "uHasLumaRef"), if (hasLumaRef) 1 else 0)
        GLES30.glUniform2i(loc(program, "uSrcOrigin"), srcOrigin, srcOrigin)
        GLES30.glUniform2i(loc(program, "uLumaMax"), lumaMaxX, lumaMaxY)
        GLES30.glUniform2i(loc(program, "uStrengthMax"), strengthW - 1, strengthH - 1)
        GLES30.glUniform1i(loc(program, "uStrengthShift"), strengthShift)
        GLES30.glUniform1i(loc(program, "uReadCoeff"), coeffs.readCoeff)
        GLES30.glUniform1i(loc(program, "uShotCoeff"), coeffs.shotCoeff)
        GLES30.glUniform1i(loc(program, "uQuadCoeff"), coeffs.quadCoeff)
        GLES30.glUniform1ui(loc(program, "uOutlierQ4"), coeffs.outlierQ4)
    }

    private fun bindChromaBlfUniforms(
        program: Int,
        srcTex: Int,
        strengthTex: Int,
        srcOrigin: Int,
        dstOrigin: Int,
        srcMaxX: Int,
        srcMaxY: Int,
        clampSrc: Boolean,
        strengthW: Int,
        strengthH: Int,
        strengthShift: Int,
        step: Int,
        coeffs: MgcChromaNoiseModel.BranchCoeffs,
    ) {
        bindTexture(program, "uSrc", 0, srcTex)
        bindTexture(program, "uStrength", 1, strengthTex)
        GLES30.glUniform2i(loc(program, "uSrcOrigin"), srcOrigin, srcOrigin)
        GLES30.glUniform2i(loc(program, "uDstOrigin"), dstOrigin, dstOrigin)
        GLES30.glUniform2i(loc(program, "uSrcMax"), srcMaxX, srcMaxY)
        GLES30.glUniform1i(loc(program, "uClampSrc"), if (clampSrc) 1 else 0)
        GLES30.glUniform2i(loc(program, "uStrengthMax"), strengthW - 1, strengthH - 1)
        GLES30.glUniform1i(loc(program, "uStrengthShift"), strengthShift)
        GLES30.glUniform1i(loc(program, "uStep"), step)
        GLES30.glUniform1i(loc(program, "uReadCoeff"), coeffs.readCoeff)
        GLES30.glUniform1i(loc(program, "uShotCoeff"), coeffs.shotCoeff)
        GLES30.glUniform1i(loc(program, "uQuadCoeff"), coeffs.quadCoeff)
        GLES30.glUniform2ui(loc(program, "uScaleUV"), coeffs.scaleU, coeffs.scaleV)
        GLES30.glUniform1ui(loc(program, "uOutlierThreshold"), coeffs.outlierThreshold)
    }

    private fun draw(pass: String, target: Int, width: Int, height: Int, setup: (Int) -> Unit) {
        val program = program(pass)
        if (renderFramebuffer == 0) {
            val names = IntArray(1)
            GLES30.glGenFramebuffers(1, names, 0)
            renderFramebuffer = names[0]
            check(renderFramebuffer != 0) { "Could not allocate MGC denoise framebuffer" }
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, renderFramebuffer)
            GLES30.glDrawBuffers(1, intArrayOf(GLES30.GL_COLOR_ATTACHMENT0), 0)
        } else {
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, renderFramebuffer)
        }
        if (attachedTexture != target) attachTarget(target)
        if (validatedTargets.add(target)) {
            val status = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER)
            check(status == GLES30.GL_FRAMEBUFFER_COMPLETE) {
                "MGC denoise $pass framebuffer incomplete: 0x${status.toString(16)}"
            }
        }
        GLES30.glViewport(0, 0, width, height)
        GLES30.glUseProgram(program)
        setup(program)
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
    }

    private fun attachTarget(texture: Int) {
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0, GLES30.GL_TEXTURE_2D, texture, 0,
        )
        attachedTexture = texture
    }

    private inner class ScratchTextures {
        private val textures = LinkedHashSet<Int>()

        fun allocate(format: Int, width: Int, height: Int, label: String): Int =
            MgcGlesSurfaces.texture(format, width, height, label).also { textures += it }

        fun discard(texture: Int) {
            if (texture == 0) return
            check(textures.remove(texture)) { "MGC denoise scratch texture $texture is not owned" }
            if (attachedTexture == texture) attachTarget(0)
            validatedTargets.remove(texture)
            MgcGlesSurfaces.deleteTextures(texture)
        }

        fun close() {
            MgcGlesSurfaces.deleteTextures(*textures.toIntArray())
        }
    }

    private fun program(pass: String): Int = programs.getOrPut(pass) {
        val source = when (pass) {
            "rgbToYuv" -> GlesMgcChromaDenoiseShaders.rgbToYuvShader
            "strengthMap" -> GlesMgcChromaDenoiseShaders.strengthMapShader
            "bitmapStrengthMap" -> GlesMgcBitmapStrengthMapShader.fragment
            "moireBlurVertical" -> GlesMgcMeasureMoireShaders.blurVerticalShader
            "moireScore" -> GlesMgcMeasureMoireShaders.scoreShader
            "moireHalveScore" -> GlesMgcMeasureMoireShaders.halveScoreShader
            "moireUpdateStrength" -> GlesMgcMeasureMoireShaders.updateStrengthShader
            "lumaDownsampleV" -> GlesMgcLumaDenoiseShaders.downsampleVShader
            "lumaDownsampleH" -> GlesMgcLumaDenoiseShaders.downsampleHShader
            "lumaLowPass" -> GlesMgcLumaDenoiseShaders.lowPassShader
            "lumaReconstruct" -> GlesMgcLumaDenoiseShaders.reconstructShader
            "lumaBlf" -> GlesMgcLumaDenoiseShaders.blfShader
            "lumaBlfRevert" -> GlesMgcLumaDenoiseShaders.blfRevertOutputShader
            "chromaDownsample" -> GlesMgcChromaDenoiseShaders.downsampleShader
            "chromaReconstruct" -> GlesMgcChromaDenoiseShaders.reconstructShader
            "chromaBlf" -> GlesMgcChromaDenoiseShaders.blfShader
            "boxDownsample" -> GlesMgcChromaDenoiseShaders.boxDownsampleShader
            "chromaMedian" -> GlesMgcChromaDenoiseShaders.chromaMedianShader
            "applyDenoiseDelta" -> GlesMgcChromaDenoiseShaders.applyDenoiseDeltaShader
            else -> error("Unknown MGC denoise pass: $pass")
        }
        RawGlesProgram.linkFragment(
            GlesGraphicsShaderSources.fullscreenVertexFor(source), source, "MgcDenoise_$pass",
        ).also {
            check(it != 0) { "Failed to link MgcDenoise_$pass" }
        }
    }

    private fun ensurePlaceholders() {
        if (placeholderU16Texture != 0) return
        try {
            placeholderU16Texture = MgcGlesSurfaces.texture(GLES30.GL_R16UI, 1, 1, "MGC denoise ph u16")
            placeholderF32Texture = MgcGlesSurfaces.texture(GLES30.GL_RGBA32F, 1, 1, "MGC denoise ph f32")
            placeholderI16Texture = MgcGlesSurfaces.texture(GLES30.GL_RGBA16I, 1, 1, "MGC denoise ph i16")
            uploadR16ui(placeholderU16Texture, 1, 1, shortArrayOf(256))
            uploadRgba32f(placeholderF32Texture, 1, 1, floatArrayOf(1f, 1f, 1f, 1f))
            val zeroI16 = ByteBuffer.allocateDirect(8).order(ByteOrder.nativeOrder())
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, placeholderI16Texture)
            GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 2)
            GLES30.glTexSubImage2D(
                GLES30.GL_TEXTURE_2D, 0, 0, 0, 1, 1,
                GLES30.GL_RGBA_INTEGER, GLES30.GL_SHORT, zeroI16,
            )
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
            checkGlError("placeholder upload")
        } catch (error: Exception) {
            release()
            throw error
        }
    }

    private fun uploadR16ui(texture: Int, width: Int, height: Int, values: ShortArray) {
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 2)
        GLES30.glTexSubImage2D(
            GLES30.GL_TEXTURE_2D, 0, 0, 0, width, height,
            GLES30.GL_RED_INTEGER, GLES30.GL_UNSIGNED_SHORT, ShortBuffer.wrap(values),
        )
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
    }

    private fun uploadRgba32f(texture: Int, width: Int, height: Int, values: FloatArray) {
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
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

    private fun loc(program: Int, name: String): Int =
        uniformLocations.getOrPut(program) { HashMap() }
            .getOrPut(name) { GLES30.glGetUniformLocation(program, name) }

    private fun resetBindings() {
        if (attachedTexture != 0) attachTarget(0)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        validatedTargets.clear()
        GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 4)
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 4)
        for (unit in 5 downTo 0) {
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + unit)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        }
    }

    private fun checkGlError(stage: String) {
        val error = GLES30.glGetError()
        check(error == GLES30.GL_NO_ERROR) {
            "MGC denoise $stage failed: 0x${Integer.toHexString(error)}"
        }
    }

    fun release() {
        programs.values.forEach { if (it != 0) GLES30.glDeleteProgram(it) }
        programs.clear()
        uniformLocations.clear()
        validatedTargets.clear()
        MgcGlesSurfaces.deleteFramebuffers(renderFramebuffer)
        renderFramebuffer = 0
        attachedTexture = 0
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
