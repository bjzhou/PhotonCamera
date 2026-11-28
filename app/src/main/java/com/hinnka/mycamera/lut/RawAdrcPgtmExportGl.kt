package com.hinnka.mycamera.lut

import android.opengl.GLES30
import android.opengl.GLES31
import com.hinnka.mycamera.processor.GlesComputeWorkGroup
import com.hinnka.mycamera.raw.DngQualcommAdrcPgtm
import com.hinnka.mycamera.raw.RawGlesProgram
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer
import java.nio.ByteOrder

/** Materializes the current GPU ADRC response in the DNG gain table's spatial and intensity grid. */
internal class RawAdrcPgtmExportGl {
    /** The caller owns [textureId] after a successful bake. */
    data class Result(val gains: FloatArray, val diagnostics: FloatArray, val textureId: Int)

    private val gamma = RawQualcommPreviewToneGl()
    private var program = 0
    private var outputBuffer = 0
    private var capacity = 0
    private var blockBytes = 0
    private var headerBytes = 0
    private var maxTextureSize = 0
    private var pointCountLocation = -1
    private var stepLocation = -1
    private var rangeLocation = -1

    fun bake(
        toneTexture: Int,
        guideTexture: Int,
        baselineGain: Float,
        pointCount: Int,
        rangeScale: Float,
    ): Result? {
        if (toneTexture == 0 || guideTexture == 0 || pointCount !in 2..DngQualcommAdrcPgtm.MAX_TABLE_POINTS ||
            !baselineGain.isFinite() || baselineGain <= 0f || !rangeScale.isFinite() || rangeScale <= 0f
        ) return null

        val intensityStep = baselineGain / pointCount / rangeScale
        if (!intensityStep.isFinite() || intensityStep <= 0f ||
            !(intensityStep * (pointCount - 1)).isFinite() || !initialize()
        ) return null
        if (pointCount > maxTextureSize || CELL_COUNT > maxTextureSize) {
            PLog.e(TAG, "Gain texture ${pointCount}x$CELL_COUNT exceeds GL_MAX_TEXTURE_SIZE=$maxTextureSize")
            return null
        }

        val gainCount = CELL_COUNT * pointCount
        val gainBytes = gainCount * Float.SIZE_BYTES
        if (headerBytes > Int.MAX_VALUE - gainBytes || !ensureOutputBuffer(headerBytes + gainBytes)) return null
        val texture = allocateGainTexture(pointCount)
        if (texture == 0) return null
        var transferred = false
        try {
            GLES31.glUseProgram(program)
            RawAdrcPreviewLtmGl.bindInput(program, 0, "uTone", toneTexture)
            RawAdrcPreviewLtmGl.bindInput(program, 1, "uGuide", guideTexture)
            if (!gamma.bindGamma(program, 2)) return null
            GLES31.glUniform1i(pointCountLocation, pointCount)
            GLES31.glUniform1f(stepLocation, intensityStep)
            GLES31.glBindImageTexture(0, texture, 0, false, 0, GLES31.GL_WRITE_ONLY, GLES30.GL_R32F)
            dispatch(gainCount)
            GLES31.glMemoryBarrier(
                GLES31.GL_SHADER_STORAGE_BARRIER_BIT or GLES31.GL_BUFFER_UPDATE_BARRIER_BIT or
                    GLES31.GL_TEXTURE_FETCH_BARRIER_BIT or GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT,
            )
            if (!checkGl("bake R32F gain image and storage buffer")) return null
            return readResult(gainCount, texture)?.also { transferred = true }
        } finally {
            GLES31.glBindImageTexture(0, 0, 0, false, 0, GLES31.GL_WRITE_ONLY, GLES30.GL_R32F)
            GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, 0)
            if (!transferred) GLES30.glDeleteTextures(1, intArrayOf(texture), 0)
        }
    }

    private fun dispatch(gainCount: Int) {
        // Bind aligned ranges of one allocation so large tables need only one CPU map.
        var first = 0
        while (first < gainCount) {
            val header = if (first == 0) headerBytes else 0
            val count = minOf(gainCount - first, (blockBytes - header) / Float.SIZE_BYTES)
            val offset = if (first == 0) 0 else headerBytes + first * Float.SIZE_BYTES
            GLES31.glBindBufferRange(
                GLES31.GL_SHADER_STORAGE_BUFFER, 0, outputBuffer, offset, header + count * Float.SIZE_BYTES,
            )
            GLES31.glUniform3i(rangeLocation, first, count, header / Float.SIZE_BYTES)
            val groups = GlesComputeWorkGroup.linearGroupCount(count)
            val columns = minOf(groups, 4096)
            GLES31.glDispatchCompute(columns, GlesComputeWorkGroup.groupCount(groups, columns), 1)
            first += count
        }
    }

    private fun readResult(gainCount: Int, texture: Int): Result? {
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, outputBuffer)
        val mapped = GLES31.glMapBufferRange(
            GLES31.GL_SHADER_STORAGE_BUFFER, 0, headerBytes + gainCount * Float.SIZE_BYTES,
            GLES31.GL_MAP_READ_BIT,
        ) ?: run {
            checkGl("map generated DNG gain table")
            return null
        }
        var unmapped: Boolean
        val result = try {
            val bytes = mapped as? ByteBuffer ?: return null
            val data = bytes.order(ByteOrder.nativeOrder()).asFloatBuffer()
            val diagnostics = FloatArray(DIAGNOSTIC_COUNT).also { data.get(it) }
            data.position(headerBytes / Float.SIZE_BYTES)
            val gains = FloatArray(gainCount).also { data.get(it) }
            Result(gains, diagnostics, texture)
        } finally {
            unmapped = GLES31.glUnmapBuffer(GLES31.GL_SHADER_STORAGE_BUFFER)
        }
        if (!unmapped) PLog.e(TAG, "Unmapping generated DNG gain table failed")
        return result.takeIf { unmapped }
    }

    private fun initialize(): Boolean {
        if (program != 0) return true
        val limit = IntArray(1)
        GLES31.glGetIntegerv(GLES31.GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS, limit, 0)
        if (limit[0] < 1) return false
        GLES31.glGetIntegerv(GLES31.GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS, limit, 0)
        if (limit[0] < 1) return false
        GLES31.glGetIntegerv(GLES31.GL_MAX_IMAGE_UNITS, limit, 0)
        if (limit[0] < 1) return false
        GLES31.glGetIntegerv(GLES31.GL_MAX_COMPUTE_IMAGE_UNIFORMS, limit, 0)
        if (limit[0] < 1) return false
        GLES31.glGetIntegerv(GLES31.GL_MAX_TEXTURE_SIZE, limit, 0)
        maxTextureSize = limit[0]

        GLES31.glGetIntegerv(GLES31.GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT, limit, 0)
        val alignment = maxOf(Float.SIZE_BYTES, limit[0])
        val size = LongArray(1)
        GLES31.glGetInteger64v(GLES31.GL_MAX_SHADER_STORAGE_BLOCK_SIZE, size, 0)
        blockBytes = size[0].coerceAtMost(Int.MAX_VALUE.toLong()).toInt() / alignment * alignment
        headerBytes = DIAGNOSTIC_COUNT * Float.SIZE_BYTES
        headerBytes = GlesComputeWorkGroup.groupCount(headerBytes, alignment) * alignment
        if (blockBytes <= headerBytes) return false

        program = RawGlesProgram.compileCompute(SHADER, TAG)
        if (program == 0) return false
        RawAdrcPreviewLtmGl.bindKnots(program)
        pointCountLocation = GLES31.glGetUniformLocation(program, "uPointCount")
        stepLocation = GLES31.glGetUniformLocation(program, "uIntensityStep")
        rangeLocation = GLES31.glGetUniformLocation(program, "uOutputRange")
        return true
    }

    private fun ensureOutputBuffer(byteCount: Int): Boolean {
        if (outputBuffer == 0) {
            val buffer = IntArray(1)
            GLES31.glGenBuffers(1, buffer, 0)
            outputBuffer = buffer[0]
            if (outputBuffer == 0) return false
        }
        if (capacity >= byteCount) return true
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, outputBuffer)
        GLES31.glBufferData(GLES31.GL_SHADER_STORAGE_BUFFER, byteCount, null, GLES30.GL_STREAM_READ)
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
        if (!checkGl("allocate SSBO for generated DNG gain table")) return false
        capacity = byteCount
        return true
    }

    private fun allocateGainTexture(pointCount: Int): Int {
        val names = IntArray(1)
        GLES30.glGenTextures(1, names, 0)
        val texture = names[0]
        if (texture == 0) return 0
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
        GLES30.glTexStorage2D(GLES30.GL_TEXTURE_2D, 1, GLES30.GL_R32F, pointCount, CELL_COUNT)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_NEAREST)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_NEAREST)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        if (checkGl("allocate R32F gain image")) return texture
        GLES30.glDeleteTextures(1, names, 0)
        return 0
    }

    fun reset() {
        gamma.reset()
        program = 0
        outputBuffer = 0
        capacity = 0
    }

    fun release() {
        gamma.release()
        if (program != 0) GLES31.glDeleteProgram(program)
        if (outputBuffer != 0) GLES31.glDeleteBuffers(1, intArrayOf(outputBuffer), 0)
        reset()
    }

    companion object {
        const val GRID_WIDTH = DngQualcommAdrcPgtm.GRID_WIDTH
        const val GRID_HEIGHT = DngQualcommAdrcPgtm.GRID_HEIGHT
        private const val CELL_COUNT = GRID_WIDTH * GRID_HEIGHT
        private const val DIAGNOSTIC_COUNT = 8
        private const val TAG = "RawAdrcPgtmExport"
        private const val LANES = GlesComputeWorkGroup.LINEAR_SIZE

        private fun checkGl(operation: String): Boolean {
            val error = GLES31.glGetError()
            if (error == GLES31.GL_NO_ERROR) return true
            val renderer = GLES31.glGetString(GLES31.GL_RENDERER)
            val version = GLES31.glGetString(GLES31.GL_VERSION)
            PLog.e(TAG, "$operation failed GL=$error, renderer=$renderer, version=$version")
            return false
        }

        private val SHADER = """
            #version 310 es
            precision highp float;
            precision highp int;
            layout(local_size_x = $LANES) in;
            layout(std430, binding = 0) writeonly buffer DngGainTable { float table[]; };
            layout(r32f, binding = 0) writeonly uniform highp image2D uGainImage;
            uniform int uPointCount;
            uniform float uIntensityStep;
            uniform ivec3 uOutputRange;

            ${RawAdrcPreviewLtmGl.TONE_MAPPING_GLSL}

            void main() {
                uint group = gl_WorkGroupID.y * gl_NumWorkGroups.x + gl_WorkGroupID.x;
                int localIndex = int(group * ${LANES}u + gl_LocalInvocationID.x);
                if (uOutputRange.z != 0 && localIndex < $DIAGNOSTIC_COUNT) {
                    table[localIndex] = texelFetch(uTone, ivec2(localIndex, 0), 0).a;
                }
                if (localIndex >= uOutputRange.y) return;

                int index = uOutputRange.x + localIndex;
                int cell = index / uPointCount;
                int knot = index % uPointCount;
                ivec2 grid = ivec2(cell % $GRID_WIDTH, cell / $GRID_WIDTH);
                vec2 uv = (vec2(grid) + 0.5) / vec2($GRID_WIDTH, $GRID_HEIGHT);
                // DNG indexes at N * coordinate and copies knot 1 into knot 0.
                float intensity = float(max(1, knot)) * uIntensityStep;
                float maximum = texelFetch(uTone, ivec2(0), 0).b;
                float gain = adrcOutputGain(intensity, uv, maximum);
                table[localIndex + uOutputRange.z] = gain;
                imageStore(uGainImage, ivec2(knot, cell), vec4(gain, 0.0, 0.0, 0.0));
            }
        """.trimIndent()
    }
}
