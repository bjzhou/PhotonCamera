package com.hinnka.mycamera.raw

import android.opengl.GLES30
import android.opengl.GLES31
import com.hinnka.mycamera.utils.PLog
import kotlin.math.ln
import kotlin.math.min

/**
 * Fast Local Laplacian tone manipulation for scene-linear RGB.
 *
 * The implementation follows Paris, Hasinoff, and Kautz (SIGGRAPH 2011) for the HDR log-intensity
 * remapping and Aubry et al. (TOG 2014) for the sampled-reference acceleration. The input intensity
 * Gaussian pyramid and every remapped Laplacian pyramid use the authors' Burt-Adelson five-tap
 * kernel [0.05 0.25 0.4 0.25 0.05] with reweighted valid-image boundaries. Output Laplacian
 * coefficients are linearly interpolated along the sampled reference-intensity axis before the
 * pyramid is collapsed.
 *
 * The paper's robust 100:1 mapping is made exposure-covariant for this pre-exposure HDR stage by
 * replacing display white (1.0) with the input's robust 99.5th-percentile intensity. Thus a global
 * input exposure scale produces the same global output scale, while the rendering engine remains
 * responsible for display clipping and gamma.
 */
internal class GlesLocalLaplacianToneMapper {
    private data class Size(val width: Int, val height: Int)

    private data class Target(
        val width: Int,
        val height: Int,
        val textureId: Int,
        val framebufferId: Int,
    ) {
        fun release() {
            if (textureId != 0) {
                GLES30.glDeleteTextures(1, intArrayOf(textureId), 0)
            }
            if (framebufferId != 0) {
                GLES30.glDeleteFramebuffers(1, intArrayOf(framebufferId), 0)
            }
        }
    }

    private var logIntensityProgram = 0
    private var minMaxDownProgram = 0
    private var scalarDownProgram = 0
    private var remapProgram = 0
    private var laplacianInterpolateProgram = 0
    private var scalarCopyProgram = 0
    private var reconstructProgram = 0
    private var colorRestoreProgram = 0
    private var histogramClearProgram = 0
    private var histogramProgram = 0
    private var percentileProgram = 0

    fun process(
        sourceTextureId: Int,
        width: Int,
        height: Int,
    ): Int {
        require(sourceTextureId != 0)
        require(width > 0 && height > 0)

        val sizes = pyramidSizes(width, height)
        val inputGaussian = ArrayList<Target>(sizes.size)
        val outputLaplacian = ArrayList<Target>(sizes.size)
        var minMax: Target? = null
        var reconstruction: Target? = null
        var inputPercentiles: Target? = null
        var filteredPercentiles: Target? = null
        var histogramBufferId = 0
        var output: Target? = null

        return try {
            ensurePrograms()
            validateTextureSize(width, height)
            prepareFixedFunctionState()

            inputGaussian += createRenderedTarget(width, height, GLES30.GL_R16F) {
                renderLogIntensity(sourceTextureId, it)
            }
            for (level in 1 until sizes.size) {
                val size = sizes[level]
                inputGaussian += createRenderedTarget(
                    size.width,
                    size.height,
                    GLES30.GL_R16F,
                ) {
                    renderScalarDown(inputGaussian[level - 1], it)
                }
            }

            minMax = buildMinMax(inputGaussian.first())
            histogramBufferId = createHistogramBuffer()
            inputPercentiles = createTarget(1, 1, GLES30.GL_RGBA32F)
            renderPercentiles(
                logIntensity = inputGaussian.first(),
                histogramBufferId = histogramBufferId,
                target = requireNotNull(inputPercentiles),
            )

            sizes.forEach { size ->
                outputLaplacian += createTarget(
                    size.width,
                    size.height,
                    GLES30.GL_RGBA16F,
                ).also(::clearTarget)
            }

            for (referenceIndex in 0 until REFERENCE_SAMPLE_COUNT) {
                var current: Target? = createRenderedTarget(width, height, GLES30.GL_R16F) {
                    renderRemap(
                        logIntensity = inputGaussian.first(),
                        minMax = requireNotNull(minMax),
                        target = it,
                        referenceIndex = referenceIndex,
                    )
                }
                try {
                    for (level in 0 until sizes.lastIndex) {
                        val nextSize = sizes[level + 1]
                        var next: Target? = createTarget(
                            nextSize.width,
                            nextSize.height,
                            GLES30.GL_R16F,
                        )
                        try {
                            renderScalarDown(requireNotNull(current), requireNotNull(next))
                            setAdditiveBlend(true)
                            renderLaplacianInterpolate(
                                base = requireNotNull(current),
                                next = requireNotNull(next),
                                inputGaussian = inputGaussian[level],
                                minMax = requireNotNull(minMax),
                                target = outputLaplacian[level],
                                referenceIndex = referenceIndex,
                            )
                            setAdditiveBlend(false)

                            requireNotNull(current).release()
                            current = next
                            next = null
                        } finally {
                            next?.release()
                        }
                    }
                } finally {
                    setAdditiveBlend(false)
                    current?.release()
                }
            }

            // The 2011 algorithm leaves the coarsest residual unchanged.
            renderScalarCopy(inputGaussian.last(), outputLaplacian.last())

            requireNotNull(minMax).release()
            minMax = null
            inputGaussian.forEach(Target::release)
            inputGaussian.clear()

            reconstruction = outputLaplacian.removeAt(outputLaplacian.lastIndex)
            for (level in outputLaplacian.lastIndex downTo 0) {
                val base = outputLaplacian.removeAt(level)
                val next = requireNotNull(reconstruction)
                var target: Target? = null
                try {
                    target = createRenderedTarget(
                        base.width,
                        base.height,
                        GLES30.GL_RGBA16F,
                    ) {
                        renderReconstruct(base, next, it)
                    }
                    next.release()
                    reconstruction = target
                    target = null
                } finally {
                    base.release()
                    target?.release()
                }
            }

            filteredPercentiles = createTarget(1, 1, GLES30.GL_RGBA32F)
            renderPercentiles(
                logIntensity = requireNotNull(reconstruction),
                histogramBufferId = histogramBufferId,
                target = requireNotNull(filteredPercentiles),
            )
            GLES31.glDeleteBuffers(1, intArrayOf(histogramBufferId), 0)
            histogramBufferId = 0

            output = createTarget(width, height, GLES30.GL_RGBA16F)
            renderColorRestore(
                sourceTextureId = sourceTextureId,
                filteredLogIntensity = requireNotNull(reconstruction),
                inputPercentiles = requireNotNull(inputPercentiles),
                filteredPercentiles = requireNotNull(filteredPercentiles),
                target = requireNotNull(output),
            )
            requireNotNull(reconstruction).release()
            reconstruction = null
            requireNotNull(inputPercentiles).release()
            inputPercentiles = null
            requireNotNull(filteredPercentiles).release()
            filteredPercentiles = null

            val outputTextureId = requireNotNull(output).textureId
            GLES30.glDeleteFramebuffers(1, intArrayOf(requireNotNull(output).framebufferId), 0)
            output = null
            PLog.i(
                TAG,
                "Photon HDR Local Laplacian processed ${width}x$height " +
                    "levels=${sizes.size} references=$REFERENCE_SAMPLE_COUNT " +
                    "sigmaR=$SIGMA_R alpha=$DETAIL_ALPHA beta=$EDGE_BETA " +
                    "kernel=[0.05,0.25,0.4,0.25,0.05] domain=naturalLogIntensity " +
                    "range=100:1 exposureAnchor=inputP99.5 output=sceneLinearHdr",
            )
            outputTextureId
        } catch (error: Exception) {
            PLog.e(TAG, "Photon HDR Local Laplacian failed", error)
            0
        } finally {
            setAdditiveBlend(false)
            minMax?.release()
            reconstruction?.release()
            inputPercentiles?.release()
            filteredPercentiles?.release()
            if (histogramBufferId != 0) {
                GLES31.glDeleteBuffers(1, intArrayOf(histogramBufferId), 0)
            }
            output?.release()
            inputGaussian.forEach(Target::release)
            outputLaplacian.forEach(Target::release)
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
            for (unit in 0..3) {
                GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + unit)
                GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
            }
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, 0)
            GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
            GLES31.glBindImageTexture(
                0,
                0,
                0,
                false,
                0,
                GLES31.GL_WRITE_ONLY,
                GLES30.GL_RGBA32F,
            )
            GLES30.glUseProgram(0)
            GLES30.glDepthMask(true)
            GLES30.glColorMask(true, true, true, true)
        }
    }

    fun releaseTexture(textureId: Int) {
        if (textureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(textureId), 0)
        }
    }

    fun release() {
        intArrayOf(
            logIntensityProgram,
            minMaxDownProgram,
            scalarDownProgram,
            remapProgram,
            laplacianInterpolateProgram,
            scalarCopyProgram,
            reconstructProgram,
            colorRestoreProgram,
            histogramClearProgram,
            histogramProgram,
            percentileProgram,
        ).forEach { program ->
            if (program != 0) GLES30.glDeleteProgram(program)
        }
        logIntensityProgram = 0
        minMaxDownProgram = 0
        scalarDownProgram = 0
        remapProgram = 0
        laplacianInterpolateProgram = 0
        scalarCopyProgram = 0
        reconstructProgram = 0
        colorRestoreProgram = 0
        histogramClearProgram = 0
        histogramProgram = 0
        percentileProgram = 0
    }

    private fun ensurePrograms() {
        val programs = intArrayOf(
            logIntensityProgram,
            minMaxDownProgram,
            scalarDownProgram,
            remapProgram,
            laplacianInterpolateProgram,
            scalarCopyProgram,
            reconstructProgram,
            colorRestoreProgram,
            histogramClearProgram,
            histogramProgram,
            percentileProgram,
        )
        if (programs.all { it != 0 }) return

        release()
        try {
            logIntensityProgram = linkProgram(LOG_INTENSITY_FRAGMENT, "local_laplacian_log")
            minMaxDownProgram = linkProgram(MIN_MAX_DOWN_FRAGMENT, "local_laplacian_minmax")
            scalarDownProgram = linkProgram(SCALAR_DOWN_FRAGMENT, "local_laplacian_down")
            remapProgram = linkProgram(REMAP_FRAGMENT, "local_laplacian_remap")
            laplacianInterpolateProgram = linkProgram(
                LAPLACIAN_INTERPOLATE_FRAGMENT,
                "local_laplacian_interpolate",
            )
            scalarCopyProgram = linkProgram(SCALAR_COPY_FRAGMENT, "local_laplacian_copy")
            reconstructProgram = linkProgram(RECONSTRUCT_FRAGMENT, "local_laplacian_reconstruct")
            colorRestoreProgram = linkProgram(COLOR_RESTORE_FRAGMENT, "local_laplacian_color")
            histogramClearProgram = linkComputeProgram(
                HISTOGRAM_CLEAR_COMPUTE,
                "local_laplacian_histogram_clear",
            )
            histogramProgram = linkComputeProgram(
                HISTOGRAM_COMPUTE,
                "local_laplacian_histogram",
            )
            percentileProgram = linkComputeProgram(
                PERCENTILE_COMPUTE,
                "local_laplacian_percentiles",
            )
        } catch (error: Exception) {
            release()
            throw error
        }
    }

    private fun buildMinMax(logIntensity: Target): Target {
        var source = logIntensity
        var ownedSource: Target? = null
        var sourceContainsRange = false
        return try {
            do {
                val target = createRenderedTarget(
                    ((source.width + 1) / 2).coerceAtLeast(1),
                    ((source.height + 1) / 2).coerceAtLeast(1),
                    GLES30.GL_RGBA16F,
                ) {
                    renderMinMaxDown(source, it, sourceContainsRange)
                }
                ownedSource?.release()
                ownedSource = target
                source = target
                sourceContainsRange = true
            } while (source.width > 1 || source.height > 1)
            requireNotNull(ownedSource).also { ownedSource = null }
        } finally {
            ownedSource?.release()
        }
    }

    private fun renderLogIntensity(sourceTextureId: Int, target: Target) {
        beginPass(logIntensityProgram, target, clear = true)
        bindTexture(logIntensityProgram, "uSource", 0, sourceTextureId)
        drawPass("Local Laplacian log intensity")
    }

    private fun renderMinMaxDown(
        source: Target,
        target: Target,
        sourceContainsRange: Boolean,
    ) {
        beginPass(minMaxDownProgram, target, clear = true)
        bindTexture(minMaxDownProgram, "uInput", 0, source.textureId)
        uniform2i(minMaxDownProgram, "uSourceSize", source.width, source.height)
        uniform1i(minMaxDownProgram, "uSourceContainsRange", if (sourceContainsRange) 1 else 0)
        drawPass("Local Laplacian min/max down")
    }

    private fun renderScalarDown(source: Target, target: Target) {
        beginPass(scalarDownProgram, target, clear = true)
        bindTexture(scalarDownProgram, "uInput", 0, source.textureId)
        uniform2i(scalarDownProgram, "uSourceSize", source.width, source.height)
        drawPass("Local Laplacian scalar down")
    }

    private fun renderRemap(
        logIntensity: Target,
        minMax: Target,
        target: Target,
        referenceIndex: Int,
    ) {
        beginPass(remapProgram, target, clear = true)
        bindTexture(remapProgram, "uLogIntensity", 0, logIntensity.textureId)
        bindTexture(remapProgram, "uMinMax", 1, minMax.textureId)
        uniform1i(remapProgram, "uReferenceIndex", referenceIndex)
        drawPass("Local Laplacian remap")
    }

    private fun renderLaplacianInterpolate(
        base: Target,
        next: Target,
        inputGaussian: Target,
        minMax: Target,
        target: Target,
        referenceIndex: Int,
    ) {
        beginPass(laplacianInterpolateProgram, target, clear = false)
        bindTexture(laplacianInterpolateProgram, "uBase", 0, base.textureId)
        bindTexture(laplacianInterpolateProgram, "uNext", 1, next.textureId)
        bindTexture(laplacianInterpolateProgram, "uInputGaussian", 2, inputGaussian.textureId)
        bindTexture(laplacianInterpolateProgram, "uMinMax", 3, minMax.textureId)
        uniform2i(laplacianInterpolateProgram, "uNextSize", next.width, next.height)
        uniform1i(laplacianInterpolateProgram, "uReferenceIndex", referenceIndex)
        drawPass("Local Laplacian coefficient interpolation")
    }

    private fun renderScalarCopy(source: Target, target: Target) {
        beginPass(scalarCopyProgram, target, clear = true)
        bindTexture(scalarCopyProgram, "uInput", 0, source.textureId)
        drawPass("Local Laplacian residual copy")
    }

    private fun renderReconstruct(base: Target, next: Target, target: Target) {
        beginPass(reconstructProgram, target, clear = true)
        bindTexture(reconstructProgram, "uBase", 0, base.textureId)
        bindTexture(reconstructProgram, "uNext", 1, next.textureId)
        uniform2i(reconstructProgram, "uNextSize", next.width, next.height)
        drawPass("Local Laplacian reconstruct")
    }

    private fun renderColorRestore(
        sourceTextureId: Int,
        filteredLogIntensity: Target,
        inputPercentiles: Target,
        filteredPercentiles: Target,
        target: Target,
    ) {
        beginPass(colorRestoreProgram, target, clear = true)
        bindTexture(colorRestoreProgram, "uSource", 0, sourceTextureId)
        bindTexture(colorRestoreProgram, "uFilteredLogIntensity", 1, filteredLogIntensity.textureId)
        bindTexture(colorRestoreProgram, "uInputPercentiles", 2, inputPercentiles.textureId)
        bindTexture(colorRestoreProgram, "uFilteredPercentiles", 3, filteredPercentiles.textureId)
        drawPass("Local Laplacian color restore")
    }

    private fun createHistogramBuffer(): Int {
        val requiredBytes = HISTOGRAM_BIN_COUNT * Int.SIZE_BYTES
        val maximumBlockSize = IntArray(1)
        GLES30.glGetIntegerv(
            GLES31.GL_MAX_SHADER_STORAGE_BLOCK_SIZE,
            maximumBlockSize,
            0,
        )
        check(requiredBytes <= maximumBlockSize[0]) {
            "Local Laplacian histogram requires $requiredBytes SSBO bytes, " +
                "GL_MAX_SHADER_STORAGE_BLOCK_SIZE=${maximumBlockSize[0]}"
        }

        val buffers = IntArray(1)
        GLES31.glGenBuffers(1, buffers, 0)
        try {
            GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, buffers[0])
            GLES31.glBufferData(
                GLES31.GL_SHADER_STORAGE_BUFFER,
                requiredBytes,
                null,
                GLES31.GL_DYNAMIC_DRAW,
            )
            checkGlError("Local Laplacian histogram allocation")
            return buffers[0]
        } catch (error: Exception) {
            GLES31.glDeleteBuffers(1, buffers, 0)
            throw error
        } finally {
            GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
        }
    }

    private fun renderPercentiles(
        logIntensity: Target,
        histogramBufferId: Int,
        target: Target,
    ) {
        GLES31.glBindBufferBase(
            GLES31.GL_SHADER_STORAGE_BUFFER,
            0,
            histogramBufferId,
        )

        GLES31.glUseProgram(histogramClearProgram)
        GLES31.glDispatchCompute(
            (HISTOGRAM_BIN_COUNT + HISTOGRAM_CLEAR_WORK_GROUP_SIZE - 1) /
                HISTOGRAM_CLEAR_WORK_GROUP_SIZE,
            1,
            1,
        )
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
        checkGlError("Local Laplacian histogram clear")

        GLES31.glUseProgram(histogramProgram)
        bindTexture(histogramProgram, "uInput", 0, logIntensity.textureId)
        uniform2i(histogramProgram, "uInputSize", logIntensity.width, logIntensity.height)
        GLES31.glDispatchCompute(
            (logIntensity.width + HISTOGRAM_WORK_GROUP_EDGE - 1) /
                HISTOGRAM_WORK_GROUP_EDGE,
            (logIntensity.height + HISTOGRAM_WORK_GROUP_EDGE - 1) /
                HISTOGRAM_WORK_GROUP_EDGE,
            1,
        )
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
        checkGlError("Local Laplacian histogram")

        GLES31.glUseProgram(percentileProgram)
        uniform1i(percentileProgram, "uBinCount", HISTOGRAM_BIN_COUNT)
        GLES31.glBindImageTexture(
            0,
            target.textureId,
            0,
            false,
            0,
            GLES31.GL_WRITE_ONLY,
            GLES30.GL_RGBA32F,
        )
        GLES31.glDispatchCompute(1, 1, 1)
        GLES31.glMemoryBarrier(
            GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT or
                GLES31.GL_TEXTURE_FETCH_BARRIER_BIT or
                GLES31.GL_FRAMEBUFFER_BARRIER_BIT,
        )
        GLES31.glBindImageTexture(
            0,
            0,
            0,
            false,
            0,
            GLES31.GL_WRITE_ONLY,
            GLES30.GL_RGBA32F,
        )
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, 0)
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
        checkGlError("Local Laplacian percentile reduction")
    }

    private fun prepareFixedFunctionState() {
        GLES30.glDisable(GLES30.GL_DEPTH_TEST)
        GLES30.glDisable(GLES30.GL_STENCIL_TEST)
        GLES30.glDisable(GLES30.GL_CULL_FACE)
        GLES30.glDisable(GLES30.GL_SCISSOR_TEST)
        GLES30.glDepthMask(false)
        GLES30.glColorMask(true, true, true, true)
        GLES30.glClearColor(0f, 0f, 0f, 0f)
        setAdditiveBlend(false)
    }

    private fun beginPass(program: Int, target: Target, clear: Boolean) {
        GLES30.glUseProgram(program)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, target.framebufferId)
        GLES30.glViewport(0, 0, target.width, target.height)
        if (clear) GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
    }

    private fun drawPass(label: String) {
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        GLES31.glMemoryBarrier(
            GLES31.GL_FRAMEBUFFER_BARRIER_BIT or GLES31.GL_TEXTURE_FETCH_BARRIER_BIT,
        )
        checkGlError(label)
    }

    private fun bindTexture(program: Int, name: String, unit: Int, textureId: Int) {
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + unit)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, textureId)
        val location = GLES30.glGetUniformLocation(program, name)
        if (location >= 0) GLES30.glUniform1i(location, unit)
    }

    private fun uniform1i(program: Int, name: String, value: Int) {
        val location = GLES30.glGetUniformLocation(program, name)
        if (location >= 0) GLES30.glUniform1i(location, value)
    }

    private fun uniform2i(program: Int, name: String, x: Int, y: Int) {
        val location = GLES30.glGetUniformLocation(program, name)
        if (location >= 0) GLES30.glUniform2i(location, x, y)
    }

    private fun setAdditiveBlend(enabled: Boolean) {
        if (enabled) {
            GLES30.glEnable(GLES30.GL_BLEND)
            GLES30.glBlendEquation(GLES30.GL_FUNC_ADD)
            GLES30.glBlendFunc(GLES30.GL_ONE, GLES30.GL_ONE)
        } else {
            GLES30.glDisable(GLES30.GL_BLEND)
            GLES30.glBlendEquation(GLES30.GL_FUNC_ADD)
            GLES30.glBlendFunc(GLES30.GL_ONE, GLES30.GL_ZERO)
        }
    }

    private fun clearTarget(target: Target) {
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, target.framebufferId)
        GLES30.glViewport(0, 0, target.width, target.height)
        GLES30.glClearColor(0f, 0f, 0f, 0f)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        GLES31.glMemoryBarrier(
            GLES31.GL_FRAMEBUFFER_BARRIER_BIT or GLES31.GL_TEXTURE_FETCH_BARRIER_BIT,
        )
    }

    private fun createTarget(width: Int, height: Int, internalFormat: Int): Target {
        val textures = IntArray(1)
        GLES30.glGenTextures(1, textures, 0)
        val framebuffers = IntArray(1)
        GLES30.glGenFramebuffers(1, framebuffers, 0)
        try {
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, textures[0])
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_NEAREST)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_NEAREST)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glTexStorage2D(GLES30.GL_TEXTURE_2D, 1, internalFormat, width, height)

            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebuffers[0])
            GLES30.glFramebufferTexture2D(
                GLES30.GL_FRAMEBUFFER,
                GLES30.GL_COLOR_ATTACHMENT0,
                GLES30.GL_TEXTURE_2D,
                textures[0],
                0,
            )
            GLES30.glDrawBuffers(1, intArrayOf(GLES30.GL_COLOR_ATTACHMENT0), 0)
            val status = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER)
            check(status == GLES30.GL_FRAMEBUFFER_COMPLETE) {
                "Local Laplacian framebuffer incomplete: 0x${status.toString(16)} " +
                    "format=0x${internalFormat.toString(16)}"
            }
            checkGlError("Local Laplacian target allocation")
        } catch (error: Exception) {
            GLES30.glDeleteFramebuffers(1, framebuffers, 0)
            GLES30.glDeleteTextures(1, textures, 0)
            throw error
        } finally {
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        }
        return Target(width, height, textures[0], framebuffers[0])
    }

    private inline fun createRenderedTarget(
        width: Int,
        height: Int,
        internalFormat: Int,
        render: (Target) -> Unit,
    ): Target {
        val target = createTarget(width, height, internalFormat)
        return try {
            render(target)
            target
        } catch (error: Throwable) {
            target.release()
            throw error
        }
    }

    private fun validateTextureSize(width: Int, height: Int) {
        val maxTextureSize = IntArray(1)
        GLES30.glGetIntegerv(GLES30.GL_MAX_TEXTURE_SIZE, maxTextureSize, 0)
        check(width <= maxTextureSize[0] && height <= maxTextureSize[0]) {
            "Local Laplacian input ${width}x$height exceeds " +
                "GL_MAX_TEXTURE_SIZE=${maxTextureSize[0]}"
        }
    }

    private fun pyramidSizes(width: Int, height: Int): List<Size> {
        val sizes = ArrayList<Size>()
        var levelWidth = width
        var levelHeight = height
        sizes += Size(levelWidth, levelHeight)
        while (min(levelWidth, levelHeight) > 1) {
            levelWidth = ((levelWidth + 1) / 2).coerceAtLeast(1)
            levelHeight = ((levelHeight + 1) / 2).coerceAtLeast(1)
            sizes += Size(levelWidth, levelHeight)
        }
        return sizes
    }

    private fun linkProgram(fragmentSource: String, label: String): Int {
        val vertex = compileShader(GLES30.GL_VERTEX_SHADER, FULLSCREEN_VERTEX, "$label vertex")
        var fragment = 0
        var program = 0
        try {
            fragment = compileShader(GLES30.GL_FRAGMENT_SHADER, fragmentSource, "$label fragment")
            program = GLES30.glCreateProgram()
            GLES30.glAttachShader(program, vertex)
            GLES30.glAttachShader(program, fragment)
            GLES30.glLinkProgram(program)
            val linked = IntArray(1)
            GLES30.glGetProgramiv(program, GLES30.GL_LINK_STATUS, linked, 0)
            if (linked[0] == 0) {
                error("$label link failed: ${GLES30.glGetProgramInfoLog(program)}")
            }
            return program
        } catch (error: Exception) {
            if (program != 0) GLES30.glDeleteProgram(program)
            throw error
        } finally {
            GLES30.glDeleteShader(vertex)
            if (fragment != 0) GLES30.glDeleteShader(fragment)
        }
    }

    private fun linkComputeProgram(source: String, label: String): Int {
        val shader = compileShader(GLES31.GL_COMPUTE_SHADER, source, "$label compute")
        var program = 0
        try {
            program = GLES31.glCreateProgram()
            GLES31.glAttachShader(program, shader)
            GLES31.glLinkProgram(program)
            val linked = IntArray(1)
            GLES31.glGetProgramiv(program, GLES31.GL_LINK_STATUS, linked, 0)
            if (linked[0] == 0) {
                error("$label link failed: ${GLES31.glGetProgramInfoLog(program)}")
            }
            return program
        } catch (error: Exception) {
            if (program != 0) GLES31.glDeleteProgram(program)
            throw error
        } finally {
            GLES31.glDeleteShader(shader)
        }
    }

    private fun compileShader(type: Int, source: String, label: String): Int {
        val shader = GLES30.glCreateShader(type)
        GLES30.glShaderSource(shader, source)
        GLES30.glCompileShader(shader)
        val compiled = IntArray(1)
        GLES30.glGetShaderiv(shader, GLES30.GL_COMPILE_STATUS, compiled, 0)
        if (compiled[0] == 0) {
            val log = GLES30.glGetShaderInfoLog(shader)
            GLES30.glDeleteShader(shader)
            error("$label compile failed: $log")
        }
        return shader
    }

    private fun checkGlError(label: String) {
        val error = GLES30.glGetError()
        check(error == GLES30.GL_NO_ERROR) {
            "$label GL error 0x${error.toString(16)}"
        }
    }

    companion object {
        private const val TAG = "GlesLocalLaplacian"
        // The Fast LLF paper requires reference spacing to match the remap bandwidth. Across the
        // complete finite scene-linear R16F domain, 64 log-intensity references keep the spacing
        // below sigmaR=ln(2.5), including images containing exact zero.
        private const val REFERENCE_SAMPLE_COUNT = 64
        private val SIGMA_R = ln(2.5).toFloat()
        private const val DETAIL_ALPHA = 1f
        private const val EDGE_BETA = 0.7f
        private const val PAPER_EPSILON = 2.220446e-16f
        private const val DEGENERATE_RANGE_EPSILON = 1e-5f
        private const val HISTOGRAM_BIN_COUNT = 65_536
        private const val HISTOGRAM_CLEAR_WORK_GROUP_SIZE = 128
        private const val HISTOGRAM_WORK_GROUP_EDGE = 8
        private const val LOWER_PERCENTILE = 0.005f
        private const val UPPER_PERCENTILE = 0.995f
        private val OUTPUT_LOG_DYNAMIC_RANGE = ln(120.0).toFloat()

        private val FULLSCREEN_VERTEX = """
            #version 300 es
            precision highp float;
            out vec2 vTexCoord;
            void main() {
                vec2 positions[3] = vec2[3](
                    vec2(-1.0, -1.0),
                    vec2( 3.0, -1.0),
                    vec2(-1.0,  3.0)
                );
                vec2 texCoords[3] = vec2[3](
                    vec2(0.0, 0.0),
                    vec2(2.0, 0.0),
                    vec2(0.0, 2.0)
                );
                gl_Position = vec4(positions[gl_VertexID], 0.0, 1.0);
                vTexCoord = texCoords[gl_VertexID];
            }
        """.trimIndent()

        private val LOG_INTENSITY_FRAGMENT = """
            #version 300 es
            precision highp float;
            in vec2 vTexCoord;
            out float fragIntensity;
            uniform sampler2D uSource;
            const vec3 PAPER_INTENSITY_WEIGHTS = vec3(20.0, 40.0, 1.0) / 61.0;
            void main() {
                vec3 rgb = texture(uSource, vTexCoord).rgb;
                float intensity = dot(rgb, PAPER_INTENSITY_WEIGHTS);
                fragIntensity = log(intensity + ${PAPER_EPSILON});
            }
        """.trimIndent()

        private val MIN_MAX_DOWN_FRAGMENT = """
            #version 300 es
            precision highp float;
            precision highp int;
            in vec2 vTexCoord;
            out vec4 fragColor;
            uniform sampler2D uInput;
            uniform ivec2 uSourceSize;
            uniform bool uSourceContainsRange;
            void main() {
                ivec2 origin = ivec2(gl_FragCoord.xy) * 2;
                float minimumValue = 65504.0;
                float maximumValue = -65504.0;
                for (int y = 0; y < 2; y++) {
                    for (int x = 0; x < 2; x++) {
                        ivec2 p = origin + ivec2(x, y);
                        if (p.x >= uSourceSize.x || p.y >= uSourceSize.y) continue;
                        vec2 encoded = texelFetch(uInput, p, 0).rg;
                        float localMinimum = encoded.r;
                        float localMaximum = uSourceContainsRange ? encoded.g : encoded.r;
                        minimumValue = min(minimumValue, localMinimum);
                        maximumValue = max(maximumValue, localMaximum);
                    }
                }
                fragColor = vec4(minimumValue, maximumValue, 0.0, 1.0);
            }
        """.trimIndent()

        private val PYRAMID_COMMON = """
            float kernel5(int offset) {
                int a = offset < 0 ? -offset : offset;
                if (a == 0) return 0.4;
                if (a == 1) return 0.25;
                return 0.05;
            }

            float pyramidUpScalar(
                sampler2D inputTexture,
                ivec2 destination,
                ivec2 sourceSize
            ) {
                float sum = 0.0;
                float normalization = 0.0;
                for (int y = -2; y <= 2; y++) {
                    int syNumerator = destination.y - y;
                    int syAbs = syNumerator < 0 ? -syNumerator : syNumerator;
                    if (syAbs - (syAbs / 2) * 2 != 0) continue;
                    int sy = syNumerator / 2;
                    if (sy < 0 || sy >= sourceSize.y) continue;
                    float wy = kernel5(y);
                    for (int x = -2; x <= 2; x++) {
                        int sxNumerator = destination.x - x;
                        int sxAbs = sxNumerator < 0 ? -sxNumerator : sxNumerator;
                        if (sxAbs - (sxAbs / 2) * 2 != 0) continue;
                        int sx = sxNumerator / 2;
                        if (sx < 0 || sx >= sourceSize.x) continue;
                        float weight = kernel5(x) * wy;
                        sum += texelFetch(inputTexture, ivec2(sx, sy), 0).r * weight;
                        normalization += weight;
                    }
                }
                return sum / max(normalization, 1e-8);
            }
        """.trimIndent()

        private val SCALAR_DOWN_FRAGMENT = """
            #version 300 es
            precision highp float;
            precision highp int;
            in vec2 vTexCoord;
            out float fragValue;
            uniform sampler2D uInput;
            uniform ivec2 uSourceSize;
            $PYRAMID_COMMON
            void main() {
                ivec2 center = ivec2(gl_FragCoord.xy) * 2;
                float sum = 0.0;
                float normalization = 0.0;
                for (int y = -2; y <= 2; y++) {
                    int sy = center.y + y;
                    if (sy < 0 || sy >= uSourceSize.y) continue;
                    float wy = kernel5(y);
                    for (int x = -2; x <= 2; x++) {
                        int sx = center.x + x;
                        if (sx < 0 || sx >= uSourceSize.x) continue;
                        float weight = kernel5(x) * wy;
                        sum += texelFetch(uInput, ivec2(sx, sy), 0).r * weight;
                        normalization += weight;
                    }
                }
                fragValue = sum / max(normalization, 1e-8);
            }
        """.trimIndent()

        private val REFERENCE_COMMON = """
            uniform sampler2D uMinMax;
            uniform int uReferenceIndex;

            vec2 referenceAndStep() {
                vec2 range = texelFetch(uMinMax, ivec2(0), 0).rg;
                float stepSize = (range.y - range.x) / float(${REFERENCE_SAMPLE_COUNT - 1});
                float reference = range.x + float(uReferenceIndex) * stepSize;
                return vec2(reference, stepSize);
            }
        """.trimIndent()

        private val REMAP_FRAGMENT = """
            #version 300 es
            precision highp float;
            precision highp int;
            in vec2 vTexCoord;
            out float fragValue;
            uniform sampler2D uLogIntensity;
            $REFERENCE_COMMON
            void main() {
                float inputValue = texture(uLogIntensity, vTexCoord).r;
                vec2 referenceParameters = referenceAndStep();
                float reference = referenceParameters.x;
                float signedDelta = inputValue - reference;
                float magnitude = abs(signedDelta);
                float mappedMagnitude;
                if (magnitude <= ${SIGMA_R}) {
                    float normalizedDetail = magnitude / ${SIGMA_R};
                    mappedMagnitude = ${SIGMA_R} * pow(normalizedDetail, ${DETAIL_ALPHA});
                } else {
                    mappedMagnitude = ${SIGMA_R} +
                        ${EDGE_BETA} * (magnitude - ${SIGMA_R});
                }
                // Aubry et al.'s fast formulation pyramids r(I - reference), not
                // reference + r(I - reference). The omitted constant has zero Laplacian and
                // keeping it here needlessly destroys small coefficients in an R16F target.
                fragValue = sign(signedDelta) * mappedMagnitude;
            }
        """.trimIndent()

        private val LAPLACIAN_INTERPOLATE_FRAGMENT = """
            #version 300 es
            precision highp float;
            precision highp int;
            in vec2 vTexCoord;
            out vec4 fragColor;
            uniform sampler2D uBase;
            uniform sampler2D uNext;
            uniform sampler2D uInputGaussian;
            uniform ivec2 uNextSize;
            $REFERENCE_COMMON
            $PYRAMID_COMMON
            void main() {
                ivec2 coordinate = ivec2(gl_FragCoord.xy);
                float base = texelFetch(uBase, coordinate, 0).r;
                float expanded = pyramidUpScalar(uNext, coordinate, uNextSize);
                float laplacian = base - expanded;

                vec2 range = texelFetch(uMinMax, ivec2(0), 0).rg;
                vec2 referenceParameters = referenceAndStep();
                float reference = referenceParameters.x;
                float stepSize = referenceParameters.y;
                float gaussianValue = clamp(
                    texelFetch(uInputGaussian, coordinate, 0).r,
                    range.x,
                    range.y
                );
                float interpolationWeight;
                if (abs(stepSize) < ${DEGENERATE_RANGE_EPSILON}) {
                    interpolationWeight = uReferenceIndex == 0 ? 1.0 : 0.0;
                } else {
                    interpolationWeight = max(
                        1.0 - abs(gaussianValue - reference) / abs(stepSize),
                        0.0
                    );
                }
                fragColor = vec4(laplacian * interpolationWeight, 0.0, 0.0, 0.0);
            }
        """.trimIndent()

        private val SCALAR_COPY_FRAGMENT = """
            #version 300 es
            precision highp float;
            in vec2 vTexCoord;
            out vec4 fragColor;
            uniform sampler2D uInput;
            void main() {
                fragColor = vec4(texture(uInput, vTexCoord).r, 0.0, 0.0, 0.0);
            }
        """.trimIndent()

        private val RECONSTRUCT_FRAGMENT = """
            #version 300 es
            precision highp float;
            precision highp int;
            in vec2 vTexCoord;
            out vec4 fragColor;
            uniform sampler2D uBase;
            uniform sampler2D uNext;
            uniform ivec2 uNextSize;
            $PYRAMID_COMMON
            void main() {
                ivec2 coordinate = ivec2(gl_FragCoord.xy);
                float reconstructed = texelFetch(uBase, coordinate, 0).r +
                    pyramidUpScalar(uNext, coordinate, uNextSize);
                fragColor = vec4(reconstructed, 0.0, 0.0, 1.0);
            }
        """.trimIndent()

        private val HISTOGRAM_CLEAR_COMPUTE = """
            #version 310 es
            precision highp float;
            precision highp int;
            layout(local_size_x = ${HISTOGRAM_CLEAR_WORK_GROUP_SIZE}, local_size_y = 1,
                local_size_z = 1) in;
            layout(std430, binding = 0) buffer Histogram {
                uint bins[];
            } uHistogram;
            void main() {
                uint index = gl_GlobalInvocationID.x;
                if (index < uint(${HISTOGRAM_BIN_COUNT})) {
                    uHistogram.bins[index] = 0u;
                }
            }
        """.trimIndent()

        private val HISTOGRAM_COMPUTE = """
            #version 310 es
            precision highp float;
            precision highp int;
            layout(local_size_x = ${HISTOGRAM_WORK_GROUP_EDGE},
                local_size_y = ${HISTOGRAM_WORK_GROUP_EDGE}, local_size_z = 1) in;
            layout(std430, binding = 0) buffer Histogram {
                uint bins[];
            } uHistogram;
            uniform sampler2D uInput;
            uniform ivec2 uInputSize;
            void main() {
                ivec2 coordinate = ivec2(gl_GlobalInvocationID.xy);
                if (coordinate.x >= uInputSize.x || coordinate.y >= uInputSize.y) return;

                float value = texelFetch(uInput, coordinate, 0).r;
                if (isnan(value)) return;
                uint halfBits = packHalf2x16(vec2(value, 0.0)) & 0xffffu;
                uint orderedKey = (halfBits & 0x8000u) != 0u
                    ? (~halfBits) & 0xffffu
                    : halfBits ^ 0x8000u;
                atomicAdd(uHistogram.bins[orderedKey], 1u);
            }
        """.trimIndent()

        private val PERCENTILE_COMPUTE = """
            #version 310 es
            precision highp float;
            precision highp int;
            layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
            layout(std430, binding = 0) readonly buffer Histogram {
                uint bins[];
            } uHistogram;
            layout(rgba32f, binding = 0) writeonly uniform highp image2D uPercentiles;
            uniform int uBinCount;

            float linearIntensityFromOrderedKey(uint orderedKey) {
                uint halfBits = (orderedKey & 0x8000u) != 0u
                    ? orderedKey ^ 0x8000u
                    : (~orderedKey) & 0xffffu;
                float logIntensity = unpackHalf2x16(halfBits).x;
                return max(exp(logIntensity) - ${PAPER_EPSILON}, 0.0);
            }

            void main() {
                uint sampleCount = 0u;
                for (int binIndex = 0; binIndex < uBinCount; binIndex++) {
                    uint binCount = uHistogram.bins[binIndex];
                    sampleCount += binCount;
                }
                if (sampleCount == 0u) {
                    imageStore(uPercentiles, ivec2(0), vec4(0.0));
                    return;
                }

                float lowerPosition = clamp(
                    ${LOWER_PERCENTILE} * float(sampleCount) + 0.5,
                    1.0,
                    float(sampleCount)
                );
                float upperPosition = clamp(
                    ${UPPER_PERCENTILE} * float(sampleCount) + 0.5,
                    1.0,
                    float(sampleCount)
                );
                uint lowerRank0 = uint(floor(lowerPosition)) - 1u;
                uint lowerRank1 = uint(ceil(lowerPosition)) - 1u;
                uint upperRank0 = uint(floor(upperPosition)) - 1u;
                uint upperRank1 = uint(ceil(upperPosition)) - 1u;
                float lowerFraction = fract(lowerPosition);
                float upperFraction = fract(upperPosition);

                uint cumulative = 0u;
                uint lowerKey0 = 0u;
                uint lowerKey1 = 0u;
                uint upperKey0 = 0u;
                uint upperKey1 = 0u;
                bool lowerFound0 = false;
                bool lowerFound1 = false;
                bool upperFound0 = false;
                bool upperFound1 = false;
                for (int binIndex = 0; binIndex < uBinCount; binIndex++) {
                    uint binCount = uHistogram.bins[binIndex];
                    uint cumulativeEnd = cumulative + binCount;
                    if (!lowerFound0 && lowerRank0 < cumulativeEnd) {
                        lowerKey0 = uint(binIndex);
                        lowerFound0 = true;
                    }
                    if (!lowerFound1 && lowerRank1 < cumulativeEnd) {
                        lowerKey1 = uint(binIndex);
                        lowerFound1 = true;
                    }
                    if (!upperFound0 && upperRank0 < cumulativeEnd) {
                        upperKey0 = uint(binIndex);
                        upperFound0 = true;
                    }
                    if (!upperFound1 && upperRank1 < cumulativeEnd) {
                        upperKey1 = uint(binIndex);
                        upperFound1 = true;
                    }
                    cumulative = cumulativeEnd;
                    if (upperFound1) break;
                }

                float minimumClip = mix(
                    linearIntensityFromOrderedKey(lowerKey0),
                    linearIntensityFromOrderedKey(lowerKey1),
                    lowerFraction
                );
                float maximumClip = mix(
                    linearIntensityFromOrderedKey(upperKey0),
                    linearIntensityFromOrderedKey(upperKey1),
                    upperFraction
                );
                imageStore(
                    uPercentiles,
                    ivec2(0),
                    vec4(minimumClip, maximumClip, 0.0, 1.0)
                );
            }
        """.trimIndent()

        private val COLOR_RESTORE_FRAGMENT = """
            #version 300 es
            precision highp float;
            in vec2 vTexCoord;
            out vec4 fragColor;
            uniform sampler2D uSource;
            uniform sampler2D uFilteredLogIntensity;
            uniform sampler2D uInputPercentiles;
            uniform sampler2D uFilteredPercentiles;
            const vec3 PAPER_INTENSITY_WEIGHTS = vec3(20.0, 40.0, 1.0) / 61.0;
            void main() {
                vec3 rgb = texture(uSource, vTexCoord).rgb;
                float inputIntensity = dot(rgb, PAPER_INTENSITY_WEIGHTS);
                vec3 colorRatio = rgb / (inputIntensity + ${PAPER_EPSILON});
                float filteredLog = texture(uFilteredLogIntensity, vTexCoord).r;
                float filteredIntensity = max(
                    exp(filteredLog) - ${PAPER_EPSILON},
                    0.0
                );

                float inputMaximum = texelFetch(uInputPercentiles, ivec2(0), 0).g;
                vec2 filteredRange = texelFetch(
                    uFilteredPercentiles,
                    ivec2(0),
                    0
                ).rg;
                float mappedIntensity = 0.0;
                if (inputMaximum > 0.0 && filteredRange.y > 0.0) {
                    float exponent = 1.0;
                    if (filteredRange.x < filteredRange.y) {
                        exponent = filteredRange.x > 0.0
                            ? ${OUTPUT_LOG_DYNAMIC_RANGE} /
                                log(filteredRange.y / filteredRange.x)
                            : 0.0;
                    }
                    float normalizedIntensity = max(
                        filteredIntensity / filteredRange.y,
                        0.0
                    );
                    float normalizedOutput = exponent == 0.0
                        ? 1.0
                        : pow(normalizedIntensity, exponent);
                    mappedIntensity = inputMaximum * normalizedOutput;
                }
                fragColor = vec4(max(colorRatio * mappedIntensity, vec3(0.0)), 1.0);
            }
        """.trimIndent()
    }
}
