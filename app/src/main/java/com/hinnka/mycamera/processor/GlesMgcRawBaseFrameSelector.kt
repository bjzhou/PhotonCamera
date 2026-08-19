package com.hinnka.mycamera.processor

import android.graphics.ImageFormat
import android.opengl.EGL14
import android.opengl.EGLConfig
import android.opengl.EGLContext
import android.opengl.EGLDisplay
import android.opengl.EGLSurface
import android.opengl.GLES30
import android.opengl.GLES31
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.util.Locale

internal data class GlesMgcRawSharpnessMeasurement(
    val sqrGradientSum: Double,
    val noiseCorrectionTerm: Double,
    val saturatedPixelsFraction: Double,
    val sharpnessScore: Double,
    val sampleCount: Int,
)

internal data class GlesMgcRawBaseFrameSelection(
    val referenceIndex: Int,
    val candidateIndices: IntArray,
    val prunedLatestIndex: Int?,
    val measurements: Map<Int, GlesMgcRawSharpnessMeasurement>,
)

/**
 * GPU implementation of MGC 9.6.080 V24's RAW-content base-frame objective.
 *
 * `MeasureSharpnessRaw` at libgcastartup.so+0x33bb2dc produces squared-gradient,
 * noise-correction and saturation terms. Its no-motion path at +0x33bbfe4 selects the upper
 * confidence score `sqr_gradient_sum - 0.95 * noise_correction_term`. MGC's ZSL selector at
 * +0x33b7418 prunes the oldest of eight candidates; Photon's forward burst has the opposite time
 * direction, so it prunes the latest candidate and retains earlier-frame priority. No gyro term is
 * supplied. Every per-pixel operation and reduction runs in GLES; Kotlin reads one vec4 per frame.
 */
internal class GlesMgcRawBaseFrameSelector(
    private val width: Int,
    private val height: Int,
    private val cfaPattern: Int,
    canonicalBlackLevel: FloatArray,
    private val whiteLevel: Int,
    private val noiseProfileSelection: RawNoiseProfileSelection,
    private val useCurrentGlContext: Boolean,
) {
    private val canonicalBlackLevel = FloatArray(4) { channel ->
        canonicalBlackLevel.getOrElse(channel) { canonicalBlackLevel.firstOrNull() ?: 0f }
            .takeIf { it.isFinite() } ?: 0f
    }
    private val programs = mutableListOf<Int>()
    private val textures = mutableListOf<Int>()
    private val buffers = mutableListOf<Int>()
    private val uniformLocations = HashMap<Pair<Int, String>, Int>()
    private var eglDisplay: EGLDisplay = EGL14.EGL_NO_DISPLAY
    private var eglContext: EGLContext = EGL14.EGL_NO_CONTEXT
    private var eglSurface: EGLSurface = EGL14.EGL_NO_SURFACE
    private var ownsEglContext = false
    private var maxShaderStorageBlockBytes = 0L

    fun select(frames: List<RawStackFrame>): GlesMgcRawBaseFrameSelection? {
        val normalIndices = frames.indices.filter { frames[it].role == RawBurstFrameRole.NORMAL }
        if (normalIndices.isEmpty()) return null
        if (normalIndices.size == 1) {
            return GlesMgcRawBaseFrameSelection(
                referenceIndex = normalIndices.single(),
                candidateIndices = normalIndices.toIntArray(),
                prunedLatestIndex = null,
                measurements = emptyMap(),
            )
        }
        if (width < 8 || height < 8 || cfaPattern !in 0..3 || whiteLevel <= 0) {
            PLog.e(
                TAG,
                "Invalid GPU RAW selector configuration size=${width}x$height " +
                    "cfa=$cfaPattern white=$whiteLevel",
            )
            return null
        }

        return try {
            if (useCurrentGlContext) attachCurrentEgl() else initEgl()
            ensureGles31()
            val measurements = measureFrames(frames, normalIndices)
            val selection = selectFromMeasurements(
                normalIndices = normalIndices.toIntArray(),
                timestampsNs = LongArray(frames.size) { frames[it].sensorTimestampNs },
                measurements = measurements,
            ) ?: return null
            logSelection(frames, normalIndices, selection)
            selection
        } catch (error: RuntimeException) {
            PLog.e(TAG, "MGC GLES RAW base-frame selection failed", error)
            null
        } finally {
            release()
        }
    }

    private fun measureFrames(
        frames: List<RawStackFrame>,
        normalIndices: List<Int>,
    ): Map<Int, GlesMgcRawSharpnessMeasurement> {
        val measureProgram = linkComputeProgram(
            GlesMgcRawBaseFrameShaders.MEASURE,
            "MGC RAW sharpness measurement",
        )
        val reduceProgram = linkComputeProgram(
            GlesMgcRawBaseFrameShaders.REDUCE,
            "MGC RAW sharpness reduction",
        )
        val planeWidth = width / 2
        val planeHeight = height / 2
        // MeasureSharpnessRaw walks every usable green site in its PixelRect. The RAW Image is
        // this pipeline's current raw view, so use its complete Bayer-block rectangle and leave
        // one horizontal block at each edge for the two diagonal-green neighbours.
        val cropLeft = 1
        val cropTop = 0
        val sampleAreaWidth = planeWidth - 2
        val sampleAreaHeight = planeHeight
        check(sampleAreaWidth > 0 && sampleAreaHeight > 0) {
            "MGC RAW sharpness crop is empty for ${width}x$height"
        }
        val sampleGridWidth = sampleAreaWidth
        val sampleGridHeight = sampleAreaHeight
        val groupCountX = GlesComputeWorkGroup.imageGroupCount(sampleGridWidth)
        val groupCountY = GlesComputeWorkGroup.imageGroupCount(sampleGridHeight)
        val groupMetricsPerFrame = Math.multiplyExact(groupCountX, groupCountY)
        check(groupMetricsPerFrame > 0)

        val metricStrideBytes = 4 * Float.SIZE_BYTES
        val partialBufferBytes = Math.multiplyExact(
            groupMetricsPerFrame,
            metricStrideBytes,
        )
        val resultBufferBytes = Math.multiplyExact(normalIndices.size, metricStrideBytes)
        check(partialBufferBytes.toLong() <= maxShaderStorageBlockBytes) {
            "MGC RAW sharpness SSBO requires $partialBufferBytes bytes, " +
                "device limit=$maxShaderStorageBlockBytes"
        }
        val partialBuffer = createBuffer(partialBufferBytes, "sharpness partial A")
        val scratchBuffer = createBuffer(partialBufferBytes, "sharpness partial B")
        val resultBuffer = createBuffer(resultBufferBytes, "sharpness result")
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        val rawTextures = IntArray(minOf(RAW_TEXTURE_RING_SIZE, normalIndices.size)) {
            createRawTexture()
        }
        val rawTextureFences = LongArray(rawTextures.size)

        val baseCamera2Model = normalIndices.firstNotNullOfOrNull { index ->
            frames[index].channelNoiseProfile
                ?.let(RawNoiseModel::fromCamera2NoiseProfile)
                ?.takeIf { it.hasValidCamera2Profile }
        } ?: RawNoiseModel.EMPTY
        try {
            normalIndices.forEachIndexed { measurementIndex, frameIndex ->
                val ringIndex = measurementIndex % rawTextures.size
                retireRawTextureFence(
                    fences = rawTextureFences,
                    ringIndex = ringIndex,
                    label = "reuse RAW selector texture $ringIndex",
                )
                val frame = frames[frameIndex]
                val rawTexture = rawTextures[ringIndex]
                uploadRaw(frame, rawTexture, "base candidate ${frame.frameNumber}")
                val blackLevel = canonicalBlackLevelForFrame(frame)
                val noiseModel = RawNoiseModelResolver.resolve(
                    selection = noiseProfileSelection,
                    sensitivity = frame.sensitivityIso,
                    perFrameCamera2Profile = frame.channelNoiseProfile,
                    baseFrameCamera2Model = baseCamera2Model,
                )
                check(noiseModel.source != RawNoiseModelSource.UNAVAILABLE) {
                    "Noise model is unavailable for base candidate ${frame.frameNumber}"
                }
                val greenPhases = greenPhases()
                val firstChannel = canonicalChannelAtPhase(greenPhases[0])
                val secondChannel = canonicalChannelAtPhase(greenPhases[1])
                val shotNoise = noiseModel.model.normalizedShotNoiseForShader(cfaPattern)
                val readNoise = noiseModel.model.normalizedReadNoiseForShader(cfaPattern)

                GLES31.glUseProgram(measureProgram)
                GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
                GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, rawTexture)
                GLES31.glUniform1i(uniformLocation(measureProgram, "uRaw"), 0)
                GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, partialBuffer)
                GLES31.glUniform2i(
                    uniformLocation(measureProgram, "uCropOrigin"),
                    cropLeft,
                    cropTop,
                )
                GLES31.glUniform2i(
                    uniformLocation(measureProgram, "uSampleGridSize"),
                    sampleGridWidth,
                    sampleGridHeight,
                )
                GLES31.glUniform1i(uniformLocation(measureProgram, "uGroupCountX"), groupCountX)
                GLES31.glUniform1i(
                    uniformLocation(measureProgram, "uOutputOffset"),
                    0,
                )
                GLES31.glUniform4i(
                    uniformLocation(measureProgram, "uGreenPhases"),
                    greenPhases[0] and 1,
                    greenPhases[0] ushr 1,
                    greenPhases[1] and 1,
                    greenPhases[1] ushr 1,
                )
                GLES31.glUniform2f(
                    uniformLocation(measureProgram, "uGreenBlack"),
                    blackLevel[firstChannel],
                    blackLevel[secondChannel],
                )
                GLES31.glUniform1ui(
                    uniformLocation(measureProgram, "uWhiteLevel"),
                    whiteLevel,
                )
                GLES31.glUniform4f(
                    uniformLocation(measureProgram, "uGreenNoise"),
                    shotNoise[firstChannel],
                    readNoise[firstChannel],
                    shotNoise[secondChannel],
                    readNoise[secondChannel],
                )
                GLES31.glDispatchCompute(groupCountX, groupCountY, 1)
                GlesGpuScheduler.memoryBarrier()
                GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)

                reduceFrameMetrics(
                    program = reduceProgram,
                    frameSlot = measurementIndex,
                    groupMetricsPerFrame = groupMetricsPerFrame,
                    partialBuffer = partialBuffer,
                    scratchBuffer = scratchBuffer,
                    resultBuffer = resultBuffer,
                )
                GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, 0)
                GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 1, 0)
                GLES31.glUseProgram(0)
                checkGlError("submit MGC RAW sharpness frame ${frame.frameNumber}")
                rawTextureFences[ringIndex] = GLES30.glFenceSync(
                    GLES30.GL_SYNC_GPU_COMMANDS_COMPLETE,
                    0,
                ).also { sync ->
                    check(sync != 0L) {
                        "Unable to create RAW selector texture fence for frame ${frame.frameNumber}"
                    }
                }
            }
            GLES30.glFlush()
            rawTextureFences.indices.forEach { ringIndex ->
                retireRawTextureFence(
                    fences = rawTextureFences,
                    ringIndex = ringIndex,
                    label = "complete RAW selector texture $ringIndex",
                )
            }
            GLES31.glMemoryBarrier(
                GLES31.GL_SHADER_STORAGE_BARRIER_BIT or
                    GLES31.GL_BUFFER_UPDATE_BARRIER_BIT,
            )
            return mapMeasurements(
                buffer = resultBuffer,
                byteCount = resultBufferBytes,
                normalIndices = normalIndices,
                totalSampleCount = Math.multiplyExact(sampleGridWidth, sampleGridHeight),
            )
        } finally {
            rawTextureFences.forEach { sync ->
                if (sync != 0L) GLES30.glDeleteSync(sync)
            }
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
            GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, 0)
            GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 1, 0)
            GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
            GLES31.glUseProgram(0)
        }
    }

    private fun reduceFrameMetrics(
        program: Int,
        frameSlot: Int,
        groupMetricsPerFrame: Int,
        partialBuffer: Int,
        scratchBuffer: Int,
        resultBuffer: Int,
    ) {
        var inputBuffer = partialBuffer
        var inputOffset = 0
        var inputCount = groupMetricsPerFrame
        while (true) {
            val outputCount = GlesComputeWorkGroup.linearGroupCount(inputCount)
            val finalReduction = outputCount == 1
            val outputBuffer = if (finalReduction) {
                resultBuffer
            } else if (inputBuffer == partialBuffer) {
                scratchBuffer
            } else {
                partialBuffer
            }
            val outputOffset = if (finalReduction) {
                frameSlot
            } else {
                0
            }
            GLES31.glUseProgram(program)
            GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, inputBuffer)
            GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 1, outputBuffer)
            GLES31.glUniform1i(uniformLocation(program, "uInputOffset"), inputOffset)
            GLES31.glUniform1i(uniformLocation(program, "uOutputOffset"), outputOffset)
            GLES31.glUniform1i(uniformLocation(program, "uInputCount"), inputCount)
            GLES31.glDispatchCompute(outputCount, 1, 1)
            GlesGpuScheduler.memoryBarrier()
            if (finalReduction) return
            inputBuffer = outputBuffer
            inputOffset = outputOffset
            inputCount = outputCount
        }
    }

    private fun mapMeasurements(
        buffer: Int,
        byteCount: Int,
        normalIndices: List<Int>,
        totalSampleCount: Int,
    ): Map<Int, GlesMgcRawSharpnessMeasurement> {
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, buffer)
        var mapped = false
        try {
            val result = GLES31.glMapBufferRange(
                GLES31.GL_SHADER_STORAGE_BUFFER,
                0,
                byteCount,
                GLES31.GL_MAP_READ_BIT,
            ) as? ByteBuffer ?: error("Unable to map MGC RAW sharpness results")
            mapped = true
            result.order(ByteOrder.nativeOrder())
            return buildMap {
                normalIndices.forEachIndexed { measurementIndex, frameIndex ->
                    val offset = measurementIndex * 4 * Float.SIZE_BYTES
                    val sqrGradientSum = result.getFloat(offset).toDouble()
                    val noiseCorrectionTerm = result.getFloat(offset + Float.SIZE_BYTES).toDouble()
                    val saturatedCount = result.getFloat(offset + 2 * Float.SIZE_BYTES).toDouble()
                    val visitedCount = result.getFloat(offset + 3 * Float.SIZE_BYTES).toDouble()
                    if (
                        sqrGradientSum.isFinite() && noiseCorrectionTerm.isFinite() &&
                        saturatedCount.isFinite() && visitedCount.isFinite() && visitedCount > 0.0
                    ) {
                        put(
                            frameIndex,
                            GlesMgcRawSharpnessMeasurement(
                                sqrGradientSum = sqrGradientSum,
                                noiseCorrectionTerm = noiseCorrectionTerm,
                                saturatedPixelsFraction =
                                    (saturatedCount / totalSampleCount.toDouble())
                                        .coerceIn(0.0, 1.0),
                                sharpnessScore = sharpnessScore(
                                    sqrGradientSum = sqrGradientSum,
                                    noiseCorrectionTerm = noiseCorrectionTerm,
                                    sampleCount = visitedCount,
                                ),
                                sampleCount = visitedCount.toInt(),
                            ),
                        )
                    }
                }
            }
        } finally {
            if (mapped) {
                check(GLES31.glUnmapBuffer(GLES31.GL_SHADER_STORAGE_BUFFER)) {
                    "MGC RAW sharpness result buffer contents became invalid"
                }
            }
            GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
            checkGlError("read MGC RAW sharpness results")
        }
    }

    private fun uploadRaw(frame: RawStackFrame, texture: Int, label: String) {
        val image = frame.image
        require(image.format == ImageFormat.RAW_SENSOR) {
            "$label format=${image.format}, expected RAW_SENSOR"
        }
        require(image.width == width && image.height == height) {
            "$label size=${image.width}x${image.height}, expected=${width}x$height"
        }
        val plane = image.planes.firstOrNull() ?: error("$label has no RAW plane")
        require(plane.pixelStride == RAW_BYTES_PER_PIXEL) {
            "$label pixelStride=${plane.pixelStride}, expected=$RAW_BYTES_PER_PIXEL"
        }
        require(
            plane.rowStride >= width * RAW_BYTES_PER_PIXEL &&
                plane.rowStride % RAW_BYTES_PER_PIXEL == 0
        ) {
            "$label invalid rowStride=${plane.rowStride}"
        }
        val source = plane.buffer.duplicate().order(ByteOrder.nativeOrder())
        val requiredEnd = source.position().toLong() +
            (height - 1L) * plane.rowStride.toLong() +
            width.toLong() * RAW_BYTES_PER_PIXEL
        require(requiredEnd <= source.limit().toLong()) {
            "$label RAW plane limit=${source.limit()} required=$requiredEnd"
        }
        GLES30.glBindBuffer(GLES30.GL_PIXEL_UNPACK_BUFFER, 0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 1)
        GLES30.glPixelStorei(
            GLES30.GL_UNPACK_ROW_LENGTH,
            plane.rowStride / RAW_BYTES_PER_PIXEL,
        )
        try {
            GLES30.glTexSubImage2D(
                GLES30.GL_TEXTURE_2D,
                0,
                0,
                0,
                width,
                height,
                GLES30.GL_RED_INTEGER,
                GLES30.GL_UNSIGNED_SHORT,
                source,
            )
        } finally {
            GLES30.glPixelStorei(GLES30.GL_UNPACK_ROW_LENGTH, 0)
            GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 4)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        }
        checkGlError("upload $label")
    }

    private fun retireRawTextureFence(
        fences: LongArray,
        ringIndex: Int,
        label: String,
    ) {
        val sync = fences[ringIndex]
        if (sync == 0L) return
        try {
            GlesGpuCompletion.awaitSync(sync, label)
        } finally {
            GLES30.glDeleteSync(sync)
            fences[ringIndex] = 0L
        }
    }

    private fun createRawTexture(): Int {
        val ids = IntArray(1)
        GLES30.glGenTextures(1, ids, 0)
        val texture = ids[0]
        check(texture != 0) { "MGC RAW selector glGenTextures returned 0" }
        textures += texture
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_NEAREST)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_NEAREST)
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_WRAP_S,
            GLES30.GL_CLAMP_TO_EDGE,
        )
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_WRAP_T,
            GLES30.GL_CLAMP_TO_EDGE,
        )
        GLES30.glTexStorage2D(GLES30.GL_TEXTURE_2D, 1, GLES30.GL_R16UI, width, height)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        checkGlError("allocate MGC RAW selector texture")
        return texture
    }

    private fun createBuffer(byteCount: Int, label: String): Int {
        val ids = IntArray(1)
        GLES31.glGenBuffers(1, ids, 0)
        val buffer = ids[0]
        check(buffer != 0) { "$label glGenBuffers returned 0" }
        buffers += buffer
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, buffer)
        GLES31.glBufferData(
            GLES31.GL_SHADER_STORAGE_BUFFER,
            byteCount,
            null,
            GLES31.GL_STREAM_READ,
        )
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
        checkGlError("allocate $label")
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

    private fun canonicalBlackLevelForFrame(frame: RawStackFrame): FloatArray {
        val positional = frame.dynamicBlackLevelByCfaPosition
            ?.takeIf { values ->
                values.size >= 4 && (0 until 4).all { index ->
                    values[index].isFinite() && values[index] >= 0f && values[index] < whiteLevel
                }
            }
            ?: return canonicalBlackLevel.copyOf()
        return FloatArray(4).also { canonical ->
            for (phase in 0 until 4) {
                canonical[canonicalChannelAtPhase(phase)] = positional[phase]
            }
        }
    }

    private fun greenPhases(): IntArray = (0 until 4)
        .filter { canonicalChannelAtPhase(it) in 1..2 }
        .toIntArray()
        .also { check(it.size == 2) { "Invalid Bayer green phases for cfa=$cfaPattern" } }

    private fun canonicalChannelAtPhase(phase: Int): Int {
        val phaseToCanonical = when (cfaPattern.mod(4)) {
            1 -> intArrayOf(1, 0, 3, 2)
            2 -> intArrayOf(2, 3, 0, 1)
            3 -> intArrayOf(3, 2, 1, 0)
            else -> intArrayOf(0, 1, 2, 3)
        }
        return phaseToCanonical[phase.coerceIn(0, 3)]
    }

    private fun logSelection(
        frames: List<RawStackFrame>,
        normalIndices: List<Int>,
        selection: GlesMgcRawBaseFrameSelection,
    ) {
        val measurementLog = normalIndices.joinToString(prefix = "[", postfix = "]") { index ->
            val measurement = selection.measurements[index]
            if (measurement == null) {
                "${frames[index].frameNumber}:invalid"
            } else {
                "${frames[index].frameNumber}:" +
                    "grad=${format(measurement.sqrGradientSum)}," +
                    "noise=${format(measurement.noiseCorrectionTerm)}," +
                    "sat=${format(measurement.saturatedPixelsFraction)}," +
                    "score=${format(measurement.sharpnessScore)}"
            }
        }
        PLog.i(
            TAG,
            "MGC GLES RAW sharpness measurements $measurementLog candidates=" +
                selection.candidateIndices.joinToString(prefix = "[", postfix = "]") {
                    frames[it].frameNumber.toString()
                } +
                " prunedLatest=" +
                (selection.prunedLatestIndex?.let { frames[it].frameNumber } ?: "none") +
                " reference=${frames[selection.referenceIndex].frameNumber}",
        )
    }

    private fun ensureGles31() {
        val version = GLES30.glGetString(GLES30.GL_VERSION).orEmpty()
        check(version.contains("OpenGL ES 3.1") || version.contains("OpenGL ES 3.2")) {
            "MGC RAW base selection requires GLES 3.1, got: $version"
        }
        val maxInvocations = IntArray(1)
        val maxGroupSize = IntArray(3)
        val maxBindings = IntArray(1)
        val maxTextureSize = IntArray(1)
        val maxBlockSize = LongArray(1)
        GLES31.glGetIntegerv(
            GLES31.GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS,
            maxInvocations,
            0,
        )
        for (axis in 0 until 3) {
            GLES31.glGetIntegeri_v(
                GLES31.GL_MAX_COMPUTE_WORK_GROUP_SIZE,
                axis,
                maxGroupSize,
                axis,
            )
        }
        GLES31.glGetIntegerv(GLES31.GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS, maxBindings, 0)
        GLES30.glGetIntegerv(GLES30.GL_MAX_TEXTURE_SIZE, maxTextureSize, 0)
        GLES30.glGetInteger64v(GLES31.GL_MAX_SHADER_STORAGE_BLOCK_SIZE, maxBlockSize, 0)
        checkGlError("query MGC RAW selector capabilities")
        check(
            maxInvocations[0] >= GlesComputeWorkGroup.BASELINE_MAX_INVOCATIONS &&
                maxGroupSize[0] >= GlesComputeWorkGroup.BASELINE_MAX_SIZE_X &&
                maxGroupSize[1] >= GlesComputeWorkGroup.IMAGE_TILE_SIZE &&
                maxBindings[0] >= 2 &&
                maxTextureSize[0] >= maxOf(width, height) && maxBlockSize[0] > 0L
        ) {
            "Insufficient GLES 3.1 capability invocations=${maxInvocations[0]} " +
                "group=${maxGroupSize.contentToString()} ssboBindings=${maxBindings[0]} " +
                "textureSize=${maxTextureSize[0]} " +
                "ssboBlock=${maxBlockSize[0]}"
        }
        maxShaderStorageBlockBytes = maxBlockSize[0]
        PLog.i(
            TAG,
            "MGC RAW selector GL vendor=${GLES30.glGetString(GLES30.GL_VENDOR).orEmpty()} " +
                "renderer=${GLES30.glGetString(GLES30.GL_RENDERER).orEmpty()} " +
                "version=$version invocations=${maxInvocations[0]} " +
                "group=${maxGroupSize.contentToString()} ssboBindings=${maxBindings[0]} " +
                "ssboBlock=$maxShaderStorageBlockBytes",
        )
    }

    private fun initEgl() {
        ownsEglContext = true
        eglDisplay = EGL14.eglGetDisplay(EGL14.EGL_DEFAULT_DISPLAY)
        check(eglDisplay != EGL14.EGL_NO_DISPLAY) { "MGC selector eglGetDisplay failed" }
        val version = IntArray(2)
        check(EGL14.eglInitialize(eglDisplay, version, 0, version, 1)) {
            "MGC selector eglInitialize failed: ${EGL14.eglGetError()}"
        }
        val config = chooseConfig(EGL_OPENGL_ES3_BIT_KHR)
            ?: chooseConfig(EGL14.EGL_OPENGL_ES2_BIT)
            ?: error("No EGL config for MGC RAW selector")
        eglContext = GlesGpuScheduler.createBackgroundContext(eglDisplay, config, TAG)
        check(eglContext != EGL14.EGL_NO_CONTEXT) {
            "MGC selector eglCreateContext failed: ${EGL14.eglGetError()}"
        }
        eglSurface = EGL14.eglCreatePbufferSurface(
            eglDisplay,
            config,
            intArrayOf(
                EGL14.EGL_WIDTH,
                1,
                EGL14.EGL_HEIGHT,
                1,
                EGL14.EGL_NONE,
            ),
            0,
        )
        check(eglSurface != EGL14.EGL_NO_SURFACE) {
            "MGC selector eglCreatePbufferSurface failed: ${EGL14.eglGetError()}"
        }
        check(EGL14.eglMakeCurrent(eglDisplay, eglSurface, eglSurface, eglContext)) {
            "MGC selector eglMakeCurrent failed: ${EGL14.eglGetError()}"
        }
    }

    private fun attachCurrentEgl() {
        eglDisplay = EGL14.eglGetCurrentDisplay()
        eglContext = EGL14.eglGetCurrentContext()
        eglSurface = EGL14.eglGetCurrentSurface(EGL14.EGL_DRAW)
        ownsEglContext = false
        check(eglDisplay != EGL14.EGL_NO_DISPLAY) { "No current EGL display for RAW selector" }
        check(eglContext != EGL14.EGL_NO_CONTEXT) { "No current EGL context for RAW selector" }
        check(eglSurface != EGL14.EGL_NO_SURFACE) { "No current EGL surface for RAW selector" }
    }

    private fun chooseConfig(renderableType: Int): EGLConfig? {
        val attributes = intArrayOf(
            EGL14.EGL_RED_SIZE,
            8,
            EGL14.EGL_GREEN_SIZE,
            8,
            EGL14.EGL_BLUE_SIZE,
            8,
            EGL14.EGL_ALPHA_SIZE,
            8,
            EGL14.EGL_RENDERABLE_TYPE,
            renderableType,
            EGL14.EGL_SURFACE_TYPE,
            EGL14.EGL_PBUFFER_BIT,
            EGL14.EGL_NONE,
        )
        val configurations = arrayOfNulls<EGLConfig>(1)
        val count = IntArray(1)
        return if (
            EGL14.eglChooseConfig(
                eglDisplay,
                attributes,
                0,
                configurations,
                0,
                configurations.size,
                count,
                0,
            ) && count[0] > 0
        ) {
            configurations[0]
        } else {
            null
        }
    }

    private fun uniformLocation(program: Int, name: String): Int =
        uniformLocations.getOrPut(program to name) {
            GLES31.glGetUniformLocation(program, name).also { location ->
                check(location >= 0) { "MGC RAW selector uniform $name is unavailable" }
            }
        }

    private fun checkGlError(label: String) {
        var error = GLES30.glGetError()
        if (error == GLES30.GL_NO_ERROR) return
        val firstError = error
        while (error != GLES30.GL_NO_ERROR) error = GLES30.glGetError()
        error("$label GL error: 0x${firstError.toString(16)}")
    }

    private fun release() {
        if (eglDisplay != EGL14.EGL_NO_DISPLAY) {
            val hasCurrentContext = EGL14.eglGetCurrentContext() != EGL14.EGL_NO_CONTEXT
            if (hasCurrentContext) {
                GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
                GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
                GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, 0)
                GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 1, 0)
                GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
                GLES31.glUseProgram(0)
                programs.forEach { program -> GLES31.glDeleteProgram(program) }
                if (textures.isNotEmpty()) {
                    GLES30.glDeleteTextures(textures.size, textures.toIntArray(), 0)
                }
                if (buffers.isNotEmpty()) {
                    GLES31.glDeleteBuffers(buffers.size, buffers.toIntArray(), 0)
                }
            }
            if (ownsEglContext) {
                EGL14.eglMakeCurrent(
                    eglDisplay,
                    EGL14.EGL_NO_SURFACE,
                    EGL14.EGL_NO_SURFACE,
                    EGL14.EGL_NO_CONTEXT,
                )
                if (eglSurface != EGL14.EGL_NO_SURFACE) {
                    EGL14.eglDestroySurface(eglDisplay, eglSurface)
                }
                if (eglContext != EGL14.EGL_NO_CONTEXT) {
                    EGL14.eglDestroyContext(eglDisplay, eglContext)
                }
                EGL14.eglTerminate(eglDisplay)
            }
        }
        programs.clear()
        textures.clear()
        buffers.clear()
        uniformLocations.clear()
        eglDisplay = EGL14.EGL_NO_DISPLAY
        eglContext = EGL14.EGL_NO_CONTEXT
        eglSurface = EGL14.EGL_NO_SURFACE
        ownsEglContext = false
    }

    private fun format(value: Double): String = String.format(Locale.US, "%.6g", value)

    companion object {
        private const val TAG = "GlesMgcRawBaseFrameSelector"
        private const val EGL_OPENGL_ES3_BIT_KHR = 0x00000040
        private const val RAW_BYTES_PER_PIXEL = 2
        private const val RAW_TEXTURE_RING_SIZE = 2
        private const val PRUNE_LATEST_AT_CANDIDATE_COUNT = 8
        private const val NO_MOTION_NOISE_CORRECTION_SCALE = 0.95

        internal fun selectFromMeasurements(
            normalIndices: IntArray,
            timestampsNs: LongArray,
            measurements: Map<Int, GlesMgcRawSharpnessMeasurement>,
        ): GlesMgcRawBaseFrameSelection? {
            if (normalIndices.isEmpty()) return null
            val chronologicalIndices = normalIndices.sortedWith(
                compareBy<Int> { timestampsNs.getOrElse(it) { Long.MAX_VALUE } }
                    .thenBy { it },
            )
            val prunedLatestIndex = if (
                chronologicalIndices.size >= PRUNE_LATEST_AT_CANDIDATE_COUNT
            ) {
                chronologicalIndices.last()
            } else {
                null
            }
            val candidateIndices = chronologicalIndices
                .filter { it != prunedLatestIndex }
                .toIntArray()
            var referenceIndex = -1
            var bestScore = Double.NEGATIVE_INFINITY
            candidateIndices.forEach { index ->
                val score = measurements[index]?.sharpnessScore ?: return@forEach
                if (score.isFinite() && score > bestScore) {
                    bestScore = score
                    referenceIndex = index
                }
            }
            if (referenceIndex < 0) return null
            return GlesMgcRawBaseFrameSelection(
                referenceIndex = referenceIndex,
                candidateIndices = candidateIndices,
                prunedLatestIndex = prunedLatestIndex,
                measurements = measurements,
            )
        }

        internal fun sharpnessScore(
            sqrGradientSum: Double,
            noiseCorrectionTerm: Double,
            sampleCount: Double,
        ): Double =
            (sqrGradientSum - NO_MOTION_NOISE_CORRECTION_SCALE * noiseCorrectionTerm) /
                sampleCount
    }
}
