package com.hinnka.mycamera.processor

import android.graphics.Rect
import android.opengl.GLES30
import android.opengl.GLES31
import com.hinnka.mycamera.raw.RawClassicAeSplitAlgorithm
import com.hinnka.mycamera.raw.RawSceneClassicAeMeteringFrame
import com.hinnka.mycamera.raw.RawSceneExposureMath
import com.hinnka.mycamera.raw.RawSceneFastMomentsMeteringFrame
import com.hinnka.mycamera.raw.RawSceneAERawStats
import java.nio.ByteBuffer
import java.nio.ByteOrder

internal data class GlesRawAEStatsResult(
    val stats: RawSceneAERawStats,
    val submitMs: Long,
    val gpuWaitMs: Long,
    val mapMs: Long,
)

/**
 * Builds all selected-base AE statistics on the active GLES context.
 *
 * Exactly one compute pass reads the RAW texture. It emits a 16x16 block surface containing both
 * Fast Moments maxima and camera-RGB means. The 64x64 metering and 40-wide Classic-AE passes read
 * only that compact surface; no full-resolution intermediate or second RAW traversal exists.
 */
internal class GlesRawAEStats(
    private val width: Int,
    private val height: Int,
    private val cfaPattern: Int,
    blackLevel: FloatArray,
    private val whiteLevel: Int,
    private val maxShaderStorageBlockBytes: Long,
) {
    private data class FastReadback(
        val channelMax: FloatArray,
        val clippedCfaSamples: Long,
    )

    private val blackLevel = FloatArray(4) { channel ->
        blackLevel.getOrElse(channel) { 0f }
    }
    private val programs = mutableListOf<Int>()
    private val buffers = mutableListOf<Int>()
    private val uniformLocations = HashMap<Pair<Int, String>, Int>()

    fun build(rawTexture: Int): GlesRawAEStatsResult {
        require(rawTexture != 0)
        require(width > 0 && height > 0 && cfaPattern in 0..3 && whiteLevel > 0)
        require(blackLevel.all(Float::isFinite))
        val buildStartNs = System.nanoTime()
        val sourceBounds = Rect(0, 0, width, height)
        val downsample = RawSceneExposureMath.FAST_MOMENTS_RAW_STATS_DOWNSAMPLE
        check(downsample > 0 && downsample % 2 == 0) {
            "Fast Moments downsample must preserve complete Bayer periods: $downsample"
        }
        val statsWidth = (width + downsample - 1) / downsample
        val statsHeight = (height + downsample - 1) / downsample
        val statsPixelCount = Math.multiplyExact(statsWidth, statsHeight)
        val fastBufferBytes = checkedBufferBytes(
            statsPixelCount,
            STATS_CELL_BYTES,
            "Fast Moments block surface",
        )
        val fastBuffer = createBuffer(
            fastBufferBytes,
            GLES30.GL_DYNAMIC_DRAW,
            "Fast Moments block surface",
        )

        val canBuildMetering = width >= RawSceneExposureMath.INPUT_WIDTH * 4 &&
            height >= RawSceneExposureMath.INPUT_HEIGHT * 4
        val meteringPixelCount = RawSceneExposureMath.INPUT_WIDTH *
            RawSceneExposureMath.INPUT_HEIGHT
        val meteringBuffer = if (canBuildMetering) {
            createBuffer(
                checkedBufferBytes(meteringPixelCount, VEC4_BYTES, "base metering"),
                GLES30.GL_STREAM_READ,
                "base metering",
            )
        } else {
            0
        }
        val classicOutputSize = if (canBuildMetering) {
            RawClassicAeSplitAlgorithm.outputSize(sourceBounds, cfaPattern)
        } else {
            null
        }
        val classicPixelCount = classicOutputSize?.let {
            Math.multiplyExact(it.width, it.height)
        } ?: 0
        val classicBuffer = if (classicPixelCount > 0) {
            createBuffer(
                checkedBufferBytes(classicPixelCount, CLASSIC_CELL_BYTES, "Classic split"),
                GLES30.GL_STREAM_READ,
                "Classic split",
            )
        } else {
            0
        }

        return try {
            val fastProgram = linkComputeProgram(
                GlesRawAEStatsShaders.FAST_MOMENTS,
                "Fast Moments selected-base block reduction",
            )
            val baseMeteringProgram = if (canBuildMetering) {
                linkComputeProgram(
                    GlesRawAEStatsShaders.BASE_METERING,
                    "Fast Moments selected-base metering",
                )
            } else {
                0
            }
            val classicSplitProgram = if (classicOutputSize != null) {
                linkComputeProgram(
                    GlesRawAEStatsShaders.CLASSIC_SPLIT,
                    "Classic AE selected-base split",
                )
            } else {
                0
            }

            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, rawTexture)
            GLES31.glUseProgram(fastProgram)
            GLES31.glUniform1i(uniformLocation(fastProgram, "uRaw"), 0)
            GLES31.glUniform2i(uniformLocation(fastProgram, "uSourceSize"), width, height)
            GLES31.glUniform2i(
                uniformLocation(fastProgram, "uOutputSize"),
                statsWidth,
                statsHeight,
            )
            GLES31.glUniform1i(uniformLocation(fastProgram, "uDownsample"), downsample)
            GLES31.glUniform1i(uniformLocation(fastProgram, "uCfaPattern"), cfaPattern)
            GLES31.glUniform4fv(uniformLocation(fastProgram, "uBlackLevel"), 1, blackLevel, 0)
            GLES31.glUniform1f(uniformLocation(fastProgram, "uWhiteLevel"), whiteLevel.toFloat())
            GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, fastBuffer)
            GLES31.glDispatchCompute(
                GlesComputeWorkGroup.imageGroupCount(statsWidth),
                GlesComputeWorkGroup.imageGroupCount(statsHeight),
                1,
            )
            GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)

            if (baseMeteringProgram != 0) {
                GLES31.glUseProgram(baseMeteringProgram)
                GLES31.glUniform2i(
                    uniformLocation(baseMeteringProgram, "uInputSize"),
                    statsWidth,
                    statsHeight,
                )
                GLES31.glUniform2i(
                    uniformLocation(baseMeteringProgram, "uOutputSize"),
                    RawSceneExposureMath.INPUT_WIDTH,
                    RawSceneExposureMath.INPUT_HEIGHT,
                )
                GLES31.glUniform4fv(
                    uniformLocation(baseMeteringProgram, "uBlackLevel"),
                    1,
                    blackLevel,
                    0,
                )
                GLES31.glUniform1f(
                    uniformLocation(baseMeteringProgram, "uWhiteLevel"),
                    whiteLevel.toFloat(),
                )
                GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, fastBuffer)
                GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 1, meteringBuffer)
                GLES31.glDispatchCompute(
                    GlesComputeWorkGroup.imageGroupCount(RawSceneExposureMath.INPUT_WIDTH),
                    GlesComputeWorkGroup.imageGroupCount(RawSceneExposureMath.INPUT_HEIGHT),
                    1,
                )
            }

            if (classicSplitProgram != 0 && classicOutputSize != null) {
                GLES31.glUseProgram(classicSplitProgram)
                GLES31.glUniform2i(
                    uniformLocation(classicSplitProgram, "uInputSize"),
                    statsWidth,
                    statsHeight,
                )
                GLES31.glUniform2i(
                    uniformLocation(classicSplitProgram, "uOutputSize"),
                    classicOutputSize.width,
                    classicOutputSize.height,
                )
                GLES31.glUniform4fv(
                    uniformLocation(classicSplitProgram, "uBlackLevel"),
                    1,
                    blackLevel,
                    0,
                )
                GLES31.glUniform1f(
                    uniformLocation(classicSplitProgram, "uWhiteLevel"),
                    whiteLevel.toFloat(),
                )
                GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, fastBuffer)
                GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 1, classicBuffer)
                GLES31.glDispatchCompute(
                    GlesComputeWorkGroup.imageGroupCount(classicOutputSize.width),
                    GlesComputeWorkGroup.imageGroupCount(classicOutputSize.height),
                    1,
                )
            }

            GLES31.glMemoryBarrier(
                GLES31.GL_SHADER_STORAGE_BARRIER_BIT or
                    GLES31.GL_BUFFER_UPDATE_BARRIER_BIT,
            )
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
            GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, 0)
            GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 1, 0)
            GLES31.glUseProgram(0)
            checkGlError("submit selected-base GPU statistics")
            val submitMs = elapsedMs(buildStartNs)
            val gpuWaitMs = GlesGpuCompletion.awaitSubmittedWork(
                "selected-base GPU statistics",
                ::checkGlError,
            )

            val mapStartNs = System.nanoTime()
            val fastReadback = mapBuffer(
                fastBuffer,
                fastBufferBytes,
                "Fast Moments block surface",
            ) { mapped -> readFastStats(mapped, statsPixelCount) }
            val baseSensorRgb = if (meteringBuffer != 0) {
                mapBuffer(
                    meteringBuffer,
                    meteringPixelCount * VEC4_BYTES,
                    "base metering",
                ) { mapped -> readBaseFrameSensorRgb(mapped, meteringPixelCount) }
            } else {
                null
            }
            val classicAe = if (classicBuffer != 0 && classicOutputSize != null) {
                mapBuffer(
                    classicBuffer,
                    classicPixelCount * CLASSIC_CELL_BYTES,
                    "Classic split",
                ) { mapped ->
                    readClassicAeMeteringFrame(
                        mapped = mapped,
                        width = classicOutputSize.width,
                        height = classicOutputSize.height,
                        clippedCfaSamples = fastReadback.clippedCfaSamples,
                        cfaSampleCount = RawClassicAeSplitAlgorithm.cfaSampleCount(
                            sourceBounds,
                            cfaPattern,
                        ),
                    )
                }
            } else {
                null
            }
            val mapMs = elapsedMs(mapStartNs)
            val stats = RawSceneAERawStats(
                width = statsWidth,
                height = statsHeight,
                sourceWidth = width,
                sourceHeight = height,
                channelMax = fastReadback.channelMax,
                sensorNormalized = true,
                sourceBounds = floatArrayOf(0f, 0f, 1f, 1f),
                sourceRotationDegrees = 0,
                baseFrameMetering = baseSensorRgb?.let { sensorRgb ->
                    RawSceneFastMomentsMeteringFrame(
                        sensorRgb = sensorRgb,
                        classicAe = classicAe,
                    )
                },
            )
            GlesRawAEStatsResult(
                stats = stats,
                submitMs = submitMs,
                gpuWaitMs = gpuWaitMs,
                mapMs = mapMs,
            )
        } finally {
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
            GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, 0)
            GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 1, 0)
            GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
            GLES31.glUseProgram(0)
            programs.forEach { GLES31.glDeleteProgram(it) }
            if (buffers.isNotEmpty()) {
                GLES31.glDeleteBuffers(buffers.size, buffers.toIntArray(), 0)
            }
            programs.clear()
            buffers.clear()
            uniformLocations.clear()
        }
    }

    private fun readFastStats(mapped: ByteBuffer, pixelCount: Int): FastReadback {
        val channelMax = FloatArray(pixelCount * 4)
        var clippedCfaSamples = 0L
        for (pixel in 0 until pixelCount) {
            val inputOffset = pixel * STATS_CELL_BYTES
            val outputOffset = pixel * 4
            for (channel in 0..3) {
                channelMax[outputOffset + channel] = mapped.getFloat(
                    inputOffset + channel * Float.SIZE_BYTES,
                )
            }
            clippedCfaSamples += mapped.getFloat(inputOffset + 7 * Float.SIZE_BYTES)
                .toLong()
        }
        check(channelMax.all { it.isFinite() && it >= 0f })
        return FastReadback(channelMax, clippedCfaSamples)
    }

    private fun readBaseFrameSensorRgb(mapped: ByteBuffer, pixelCount: Int): FloatArray =
        FloatArray(pixelCount * 3).also { output ->
            for (pixel in 0 until pixelCount) {
                val inputOffset = pixel * VEC4_BYTES
                val outputOffset = pixel * 3
                for (channel in 0..2) {
                    output[outputOffset + channel] = mapped.getFloat(
                        inputOffset + channel * Float.SIZE_BYTES,
                    )
                }
            }
            check(output.all { it.isFinite() && it >= 0f })
        }

    private fun readClassicAeMeteringFrame(
        mapped: ByteBuffer,
        width: Int,
        height: Int,
        clippedCfaSamples: Long,
        cfaSampleCount: Int,
    ): RawSceneClassicAeMeteringFrame {
        val pixelCount = Math.multiplyExact(width, height)
        val brightRgb = FloatArray(pixelCount * 3)
        val darkRgb = FloatArray(pixelCount * 3)
        val brightMask = ByteArray(pixelCount)
        for (pixel in 0 until pixelCount) {
            val inputOffset = pixel * CLASSIC_CELL_BYTES
            val outputOffset = pixel * 3
            for (channel in 0..2) {
                brightRgb[outputOffset + channel] = mapped.getFloat(
                    inputOffset + channel * Float.SIZE_BYTES,
                )
                darkRgb[outputOffset + channel] = mapped.getFloat(
                    inputOffset + VEC4_BYTES + channel * Float.SIZE_BYTES,
                )
            }
            val maskCode = mapped.getFloat(inputOffset + 3 * Float.SIZE_BYTES)
                .toInt()
                .coerceIn(0, 255)
            brightMask[pixel] = maskCode.toByte()
        }
        check(brightRgb.all(Float::isFinite) && darkRgb.all(Float::isFinite))
        return RawSceneClassicAeMeteringFrame(
            width = width,
            height = height,
            brightRgb = brightRgb,
            darkRgb = darkRgb,
            brightMask = brightMask,
            clippedFraction = if (cfaSampleCount > 0) {
                (clippedCfaSamples.toDouble() / cfaSampleCount.toDouble())
                    .coerceIn(0.0, 1.0)
                    .toFloat()
            } else {
                0f
            },
        )
    }

    private inline fun <T> mapBuffer(
        buffer: Int,
        byteCount: Int,
        label: String,
        consume: (ByteBuffer) -> T,
    ): T {
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, buffer)
        var mapped = false
        try {
            val bytes = GLES31.glMapBufferRange(
                GLES31.GL_SHADER_STORAGE_BUFFER,
                0,
                byteCount,
                GLES31.GL_MAP_READ_BIT,
            ) as? ByteBuffer ?: error("Unable to map $label SSBO")
            mapped = true
            bytes.order(ByteOrder.nativeOrder())
            return consume(bytes)
        } finally {
            if (mapped) {
                check(GLES31.glUnmapBuffer(GLES31.GL_SHADER_STORAGE_BUFFER)) {
                    "$label SSBO contents became invalid"
                }
            }
            GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
            checkGlError("map $label SSBO")
        }
    }

    private fun checkedBufferBytes(elementCount: Int, stride: Int, label: String): Int {
        val bytes = Math.multiplyExact(elementCount, stride)
        check(bytes.toLong() <= maxShaderStorageBlockBytes) {
            "$label SSBO requires $bytes bytes, device limit=$maxShaderStorageBlockBytes"
        }
        return bytes
    }

    private fun createBuffer(byteCount: Int, usage: Int, label: String): Int {
        check(byteCount > 0 && byteCount.toLong() <= maxShaderStorageBlockBytes)
        val ids = IntArray(1)
        GLES31.glGenBuffers(1, ids, 0)
        val buffer = ids[0]
        check(buffer != 0) { "$label glGenBuffers returned 0" }
        buffers += buffer
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, buffer)
        GLES31.glBufferData(GLES31.GL_SHADER_STORAGE_BUFFER, byteCount, null, usage)
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
        checkGlError("allocate $label SSBO")
        return buffer
    }

    private fun linkComputeProgram(source: String, name: String): Int {
        GlesComputeWorkGroup.requireBaselineCompatible(source, name)
        val shader = GLES31.glCreateShader(GLES31.GL_COMPUTE_SHADER)
        GLES31.glShaderSource(shader, source)
        GLES31.glCompileShader(shader)
        val compileStatus = IntArray(1)
        GLES31.glGetShaderiv(shader, GLES31.GL_COMPILE_STATUS, compileStatus, 0)
        if (compileStatus[0] == 0) {
            val log = GLES31.glGetShaderInfoLog(shader)
            GLES31.glDeleteShader(shader)
            error("$name compile failed: $log")
        }
        val program = GLES31.glCreateProgram()
        GLES31.glAttachShader(program, shader)
        GLES31.glLinkProgram(program)
        GLES31.glDeleteShader(shader)
        val linkStatus = IntArray(1)
        GLES31.glGetProgramiv(program, GLES31.GL_LINK_STATUS, linkStatus, 0)
        if (linkStatus[0] == 0) {
            val log = GLES31.glGetProgramInfoLog(program)
            GLES31.glDeleteProgram(program)
            error("$name link failed: $log")
        }
        programs += program
        return program
    }

    private fun uniformLocation(program: Int, name: String): Int =
        uniformLocations.getOrPut(program to name) {
            GLES31.glGetUniformLocation(program, name).also { location ->
                check(location >= 0) { "GPU statistics uniform $name is unavailable" }
            }
        }

    private fun checkGlError(label: String) {
        var error = GLES30.glGetError()
        if (error == GLES30.GL_NO_ERROR) return
        val firstError = error
        while (error != GLES30.GL_NO_ERROR) error = GLES30.glGetError()
        error("$label GL error: 0x${firstError.toString(16)}")
    }

    private fun elapsedMs(startNs: Long): Long =
        (System.nanoTime() - startNs) / 1_000_000L

    private companion object {
        const val VEC4_BYTES = 4 * Float.SIZE_BYTES
        const val STATS_CELL_BYTES = 2 * VEC4_BYTES
        const val CLASSIC_CELL_BYTES = 2 * VEC4_BYTES
    }
}
