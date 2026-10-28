package com.hinnka.mycamera.raw.denoise

import android.opengl.GLES30
import android.opengl.GLES31
import com.hinnka.mycamera.processor.GlesComputeWorkGroup
import com.hinnka.mycamera.raw.RawGlesProgram
import java.nio.ByteBuffer
import java.nio.ByteOrder

/**
 * GLES orchestration of the Photon denoiser (docs/photon-multiscale-denoise.md §4.3, §10).
 *
 * Analyze builds G_1..G_N (G_0 is computed from the input on the fly); synthesis runs the fused
 * Band → Pilot → Final dispatch per level from coarse to fine, and level 0 writes camera RGB with
 * the LSC gains restored. Only the Gaussian levels and two adjacent denoised levels are held
 * (§10.2). A [PassSink] receives every pass output for parity checks; it adds a parity dispatch
 * per level that emits the fused pass's band, base, noise and pilot tiles.
 */
internal class PhotonMultiScaleDenoiser {
    /** Receives pass outputs while their textures are alive (debug parity, §12.4). */
    fun interface PassSink {
        fun onPass(name: String, textureId: Int, width: Int, height: Int, float32: Boolean)
    }

    private var analyzeProgram = 0
    private var synthesizeProgram = 0
    private var synthesizeDebugProgram = 0

    fun initialize(debug: Boolean = false): Boolean {
        if (analyzeProgram == 0) analyzeProgram = RawGlesProgram.compileCompute(PhotonDenoiseShaders.ANALYZE, "PhotonDenoiseAnalyze")
        if (synthesizeProgram == 0) {
            synthesizeProgram = RawGlesProgram.compileCompute(PhotonDenoiseShaders.synthesize(false), "PhotonDenoiseSynthesize")
        }
        if (debug && synthesizeDebugProgram == 0) {
            synthesizeDebugProgram =
                RawGlesProgram.compileCompute(PhotonDenoiseShaders.synthesize(true), "PhotonDenoiseSynthesizeDebug")
        }
        return analyzeProgram != 0 && synthesizeProgram != 0 && (!debug || synthesizeDebugProgram != 0)
    }

    fun release() {
        intArrayOf(analyzeProgram, synthesizeProgram, synthesizeDebugProgram).forEach {
            if (it != 0) GLES31.glDeleteProgram(it)
        }
        analyzeProgram = 0
        synthesizeProgram = 0
        synthesizeDebugProgram = 0
    }

    /**
     * Denoises [inputTexture] (RGBA16F camera RGB, [width] × [height]) and returns a new RGBA16F
     * texture owned by the caller, or null when the programs are unavailable.
     */
    fun denoise(inputTexture: Int, width: Int, height: Int, params: PhotonDenoiseParams, sink: PassSink? = null): Int? {
        if (!initialize(debug = sink != null)) return null
        val sizes = ArrayList<IntArray>(params.levels + 1)
        sizes += intArrayOf(width, height)
        repeat(params.levels) { val s = sizes.last(); sizes += intArrayOf((s[0] + 1) / 2, (s[1] + 1) / 2) }
        val owned = ArrayList<Int>()
        fun texture(size: IntArray, format: Int) = createTexture(size[0], size[1], format).also(owned::add)
        val lscTexture = params.lensShading?.let { createLscTexture(it).also(owned::add) } ?: 0
        val output = createTexture(width, height, GLES30.GL_RGBA16F)
        try {
            val gaussians = IntArray(params.levels + 1)
            for (level in 0 until params.levels) {
                val coarse = sizes[level + 1]
                gaussians[level + 1] = texture(coarse, GLES30.GL_RGBA16F)
                GLES31.glUseProgram(analyzeProgram)
                bindCommon(analyzeProgram, inputTexture, lscTexture, params)
                bindSampler(analyzeProgram, "uFine", UNIT_FINE, if (level == 0) inputTexture else gaussians[level])
                uniform1i(analyzeProgram, "uFineIsInput", if (level == 0) 1 else 0)
                uniform2i(analyzeProgram, "uFineSize", sizes[level])
                uniform2i(analyzeProgram, "uCoarseSize", coarse)
                bindImage(0, gaussians[level + 1], GLES30.GL_RGBA16F)
                dispatch(coarse)
                sink?.onPass("G${level + 1}", gaussians[level + 1], coarse[0], coarse[1], false)
            }

            var denoisedCoarse = gaussians[params.levels]
            for (level in params.levels - 1 downTo 0) {
                val size = sizes[level]
                val lumaEnabled = level < params.lumaLevels && params.lumaStrength > 0f
                if (sink != null) {
                    // Parity variant: the same fused computation, emitting its band, base, noise
                    // and pilot tiles instead of the result.
                    val band = texture(size, GLES30.GL_RGBA16F)
                    val base = texture(size, GLES30.GL_RGBA16F)
                    val noise = texture(size, GLES30.GL_RGBA32F)
                    val pilot = if (lumaEnabled) texture(size, GLES30.GL_RGBA16F) else band
                    GLES31.glUseProgram(synthesizeDebugProgram)
                    bindSynthesize(synthesizeDebugProgram, inputTexture, lscTexture, gaussians, denoisedCoarse,
                        sizes, level, lumaEnabled, params)
                    bindImage(0, band, GLES30.GL_RGBA16F)
                    bindImage(1, base, GLES30.GL_RGBA16F)
                    bindImage(2, noise, GLES30.GL_RGBA32F)
                    bindImage(3, pilot, GLES30.GL_RGBA16F)
                    dispatch(size)
                    sink.onPass("band$level", band, size[0], size[1], false)
                    sink.onPass("base$level", base, size[0], size[1], false)
                    sink.onPass("noise$level", noise, size[0], size[1], true)
                    if (lumaEnabled) sink.onPass("pilot$level", pilot, size[0], size[1], false)
                    listOf(band, base, noise, pilot).distinct().forEach { scratch ->
                        GLES30.glDeleteTextures(1, intArrayOf(scratch), 0)
                        owned.remove(scratch)
                    }
                }

                val result = if (level == 0) output else texture(size, GLES30.GL_RGBA16F)
                GLES31.glUseProgram(synthesizeProgram)
                bindSynthesize(synthesizeProgram, inputTexture, lscTexture, gaussians, denoisedCoarse,
                    sizes, level, lumaEnabled, params)
                bindImage(0, result, GLES30.GL_RGBA16F)
                dispatch(size)
                sink?.onPass(if (level == 0) "output" else "denoised$level", result, size[0], size[1], false)

                if (denoisedCoarse != gaussians[params.levels]) {
                    GLES30.glDeleteTextures(1, intArrayOf(denoisedCoarse), 0)
                    owned.remove(denoisedCoarse)
                }
                denoisedCoarse = result
            }
            RawGlesProgram.logErrors("PhotonMultiScaleDenoiser")
            return output
        } catch (error: Throwable) {
            GLES30.glDeleteTextures(1, intArrayOf(output), 0)
            throw error
        } finally {
            if (owned.isNotEmpty()) GLES30.glDeleteTextures(owned.size, owned.toIntArray(), 0)
            GLES31.glUseProgram(0)
        }
    }

    private fun bindCommon(program: Int, inputTexture: Int, lscTexture: Int, params: PhotonDenoiseParams) {
        bindSampler(program, "uInput", UNIT_INPUT, inputTexture)
        uniform1f(program, "uScale", params.scale)
        uniform3f(program, "uWb", params.whiteBalance)
        val lsc = params.lensShading
        uniform1i(program, "uLscMode", when {
            lsc == null -> 0
            lsc.dngGrid == null -> 1
            else -> 2
        })
        bindSampler(program, "uLscMap", UNIT_LSC, if (lscTexture != 0) lscTexture else inputTexture)
        GLES31.glUniform2i(location(program, "uLscSize"), lsc?.width ?: 1, lsc?.height ?: 1)
        GLES31.glUniform1fv(location(program, "uLscGrid"), 8, lsc?.dngGrid ?: FloatArray(8), 0)
        GLES31.glUniform2i(location(program, "uOrigin"), params.originX, params.originY)
        GLES31.glUniform2i(location(program, "uFullSize"), params.fullWidth, params.fullHeight)
    }

    private fun bindSynthesize(
        program: Int,
        inputTexture: Int,
        lscTexture: Int,
        gaussians: IntArray,
        denoisedCoarse: Int,
        sizes: List<IntArray>,
        level: Int,
        lumaEnabled: Boolean,
        params: PhotonDenoiseParams,
    ) {
        bindCommon(program, inputTexture, lscTexture, params)
        bindSampler(program, "uFine", UNIT_FINE, if (level == 0) inputTexture else gaussians[level])
        bindSampler(program, "uNoisyCoarse", UNIT_NOISY_COARSE, gaussians[level + 1])
        bindSampler(program, "uDenoisedCoarse", UNIT_DENOISED_COARSE, denoisedCoarse)
        uniform1i(program, "uFineIsInput", if (level == 0) 1 else 0)
        uniform2i(program, "uSize", sizes[level])
        uniform2i(program, "uCoarseSize", sizes[level + 1])
        uniform1i(program, "uLevel", level)
        uniform3f(program, "uRead", params.read)
        uniform3f(program, "uShot", params.shot)
        uniform1f(program, "uMergeRead", params.mergeRead)
        uniform1f(program, "uMergeShot", params.mergeShot)
        uniform3f(program, "uResidual", params.residual[level])
        GLES31.glUniform1fv(location(program, "uKappaLuma"), 4, params.kappaLuma[level], 0)
        GLES31.glUniform1fv(location(program, "uKappaChroma"), 4, params.kappaChroma[level], 0)
        uniform1f(program, "uOutlier", params.outlier[level])
        uniform1f(program, "uAlpha", params.lumaAlpha(level))
        uniform1i(program, "uLumaEnabled", if (lumaEnabled) 1 else 0)
        uniform1f(program, "uGrain", params.lumaGrain(level))
        val chromaEnabled = params.chromaStrength > 0f
        uniform1i(program, "uChromaEnabled", if (chromaEnabled) 1 else 0)
        uniform1f(program, "uChromaStrength", minOf(params.chromaStrength, 1f))
        val thresholdScale = params.chromaThresholdScale()
        GLES31.glUniform2f(location(program, "uGateLuma"),
            params.gateLuma[0] * thresholdScale, params.gateLuma[1] * thresholdScale)
        GLES31.glUniform2f(location(program, "uGateChroma"),
            params.gateChroma[0] * thresholdScale, params.gateChroma[1] * thresholdScale)
        uniform1i(program, "uBilateral", if (chromaEnabled && level >= params.levels - params.bilateralLevels) 1 else 0)
        uniform1f(program, "uBilateralLuma", params.bilateralLuma)
        uniform1f(program, "uBilateralChroma", params.bilateralChroma * thresholdScale)
        uniform1i(program, "uWriteOutput", if (level == 0) 1 else 0)
    }

    private fun createTexture(width: Int, height: Int, format: Int): Int {
        val ids = IntArray(1)
        GLES30.glGenTextures(1, ids, 0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, ids[0])
        GLES30.glTexStorage2D(GLES30.GL_TEXTURE_2D, 1, format, width, height)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_NEAREST)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_NEAREST)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        return ids[0]
    }

    private fun createLscTexture(lsc: PhotonLensShading): Int {
        val texture = createTexture(lsc.width, lsc.height, GLES30.GL_RGBA32F)
        val data = ByteBuffer.allocateDirect(lsc.width * lsc.height * 4 * Float.SIZE_BYTES).order(ByteOrder.nativeOrder())
        data.asFloatBuffer().put(lsc.gains, 0, lsc.width * lsc.height * 4)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 4)
        GLES30.glTexSubImage2D(GLES30.GL_TEXTURE_2D, 0, 0, 0, lsc.width, lsc.height, GLES30.GL_RGBA, GLES30.GL_FLOAT, data)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        return texture
    }

    private fun dispatch(size: IntArray) {
        GLES31.glDispatchCompute(
            GlesComputeWorkGroup.imageGroupCount(size[0]),
            GlesComputeWorkGroup.imageGroupCount(size[1]),
            1,
        )
        GLES31.glMemoryBarrier(
            GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT or GLES31.GL_TEXTURE_FETCH_BARRIER_BIT or
                GLES31.GL_FRAMEBUFFER_BARRIER_BIT,
        )
    }

    private fun bindImage(unit: Int, texture: Int, format: Int) {
        GLES31.glBindImageTexture(unit, texture, 0, false, 0, GLES31.GL_WRITE_ONLY, format)
    }

    private fun bindSampler(program: Int, name: String, unit: Int, texture: Int) {
        GLES31.glActiveTexture(GLES31.GL_TEXTURE0 + unit)
        GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, texture)
        GLES31.glUniform1i(location(program, name), unit)
    }

    private fun location(program: Int, name: String) = GLES31.glGetUniformLocation(program, name)
    private fun uniform1i(program: Int, name: String, value: Int) = GLES31.glUniform1i(location(program, name), value)
    private fun uniform1f(program: Int, name: String, value: Float) = GLES31.glUniform1f(location(program, name), value)
    private fun uniform2i(program: Int, name: String, size: IntArray) =
        GLES31.glUniform2i(location(program, name), size[0], size[1])
    private fun uniform3f(program: Int, name: String, v: FloatArray) =
        GLES31.glUniform3f(location(program, name), v[0], v[1], v[2])

    private companion object {
        const val UNIT_INPUT = 0
        const val UNIT_LSC = 1
        const val UNIT_FINE = 2
        const val UNIT_NOISY_COARSE = 3
        const val UNIT_DENOISED_COARSE = 4
    }
}
