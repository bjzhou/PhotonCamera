package com.hinnka.mycamera.raw

import android.opengl.GLES30
import android.opengl.GLES31
import com.hinnka.mycamera.processor.GlesComputeWorkGroup
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer
import java.nio.ByteOrder
import kotlin.math.sqrt

/** Samples the live HDRNet tone function into the DNG serialization grid. */
internal class RawHdrNetPgtmExportGl {
    data class Result(val map: DngProfileGainTableMap, val plan: HdrNetProfileGainTablePlan, val textureId: Int)

    private var layoutProgram = 0
    private var tableProgram = 0
    private var layoutBuffer = 0
    private var tableBuffer = 0
    private var tableCapacity = 0
    private var blockBytes = 0
    private var maxTextureSize = 0

    fun bake(
        renderer: RawHdrNetGl,
        prepared: RawHdrNetGl.Prepared,
        rendererBaselineExposureEv: Float,
        samplingArea: PhotonPgtmSamplingArea,
    ): Result? {
        if (!initialize() || prepared.profileStatsTexture == 0 || maxTextureSize < CELL_COUNT) return null
        val plan = resolveLayout(prepared, rendererBaselineExposureEv, samplingArea) ?: return null
        val pointCount = plan.pointCount
        val gainCount = CELL_COUNT * pointCount
        val byteCount = gainCount * Float.SIZE_BYTES
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, tableBuffer)
        if (tableCapacity < byteCount) {
            GLES31.glBufferData(GLES31.GL_SHADER_STORAGE_BUFFER, byteCount, null, GLES30.GL_STREAM_READ)
            if (!checkGl("allocate DNG gain buffer")) return null
            tableCapacity = byteCount
        }
        val texture = allocateTexture(pointCount)
        if (texture == 0) return null
        var transferred = false
        try {
            GLES31.glUseProgram(tableProgram)
            renderer.bindTone(tableProgram, prepared, 0, 1, 2)
            bindTexture(tableProgram, "uModelInput", 3, prepared.modelInputTexture)
            val range = GLES31.glGetUniformLocation(tableProgram, "uOutputRange")
            GLES31.glUniform1i(GLES31.glGetUniformLocation(tableProgram, "uPointCount"), pointCount)
            GLES31.glUniform1f(
                GLES31.glGetUniformLocation(tableProgram, "uShortIntensityRootStep"),
                1f / pointCount / sqrt(plan.mapInputRangeScale),
            )
            GLES31.glUniform1f(
                GLES31.glGetUniformLocation(tableProgram, "uRendererBaselineGain"), plan.rendererBaselineGain,
            )
            GLES31.glBindImageTexture(0, texture, 0, false, 0, GLES31.GL_WRITE_ONLY, GLES30.GL_R32F)
            var first = 0
            while (first < gainCount) {
                val count = minOf(gainCount - first, blockBytes / Float.SIZE_BYTES)
                GLES31.glBindBufferRange(
                    GLES31.GL_SHADER_STORAGE_BUFFER, 0, tableBuffer,
                    first * Float.SIZE_BYTES, count * Float.SIZE_BYTES,
                )
                GLES31.glUniform2i(range, first, count)
                val groups = GlesComputeWorkGroup.linearGroupCount(count)
                val columns = minOf(groups, 4096)
                GLES31.glDispatchCompute(columns, GlesComputeWorkGroup.groupCount(groups, columns), 1)
                first += count
            }
            GLES31.glMemoryBarrier(
                GLES31.GL_BUFFER_UPDATE_BARRIER_BIT or GLES31.GL_TEXTURE_FETCH_BARRIER_BIT,
            )
            if (!checkGl("bake DNG gain image and storage buffer")) return null
            // DNG serialization needs the completed tag. No frame pixels or model tensors are mapped.
            val gains = readBuffer(tableBuffer, gainCount) ?: return null
            if (gains.any { !it.isFinite() || it <= 0f }) return null
            val map = DngProfileGainTableMap(
                mapPointsV = plan.grid.mapPointsV,
                mapPointsH = plan.grid.mapPointsH,
                mapSpacingV = plan.grid.mapSpacingV,
                mapSpacingH = plan.grid.mapSpacingH,
                mapOriginV = plan.grid.mapOriginV,
                mapOriginH = plan.grid.mapOriginH,
                mapPointsN = pointCount,
                mapInputWeights = plan.mapInputWeights,
                gamma = plan.gamma,
                gains = gains,
                sourceTag = DngProfileGainTableMap.TAG_PROFILE_GAIN_TABLE_MAP2,
            )
            transferred = true
            return Result(map, plan, texture)
        } finally {
            GLES31.glBindImageTexture(0, 0, 0, false, 0, GLES31.GL_WRITE_ONLY, GLES30.GL_R32F)
            GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, 0)
            if (!transferred) GLES30.glDeleteTextures(1, intArrayOf(texture), 0)
        }
    }

    private fun resolveLayout(
        prepared: RawHdrNetGl.Prepared,
        rendererBaselineExposureEv: Float,
        samplingArea: PhotonPgtmSamplingArea,
    ): HdrNetProfileGainTablePlan? {
        GLES31.glUseProgram(layoutProgram)
        bindTexture(layoutProgram, "uProfileStats", 0, prepared.profileStatsTexture)
        bindTexture(layoutProgram, "uExposure", 1, prepared.exposureTexture)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, layoutBuffer)
        GLES31.glDispatchCompute(1, 1, 1)
        GLES31.glMemoryBarrier(GLES31.GL_BUFFER_UPDATE_BARRIER_BIT)
        if (!checkGl("reduce DNG gain layout")) return null
        val layout = readBuffer(layoutBuffer, 4) ?: return null
        return DngPhotonProfileGainTableGenerator.hdrNetPlan(
            rendererBaselineExposureEv = rendererBaselineExposureEv,
            hdrRatio = layout[1],
            sourceToShortGain = layout[0],
            samplingArea = samplingArea,
            maximumShortIntensity = layout[2],
            maximumTablePoints = maxTextureSize,
        )
    }

    private fun initialize(): Boolean {
        if (layoutProgram != 0 && tableProgram != 0 && layoutBuffer != 0 && tableBuffer != 0) return true
        val limit = IntArray(1)
        GLES31.glGetIntegerv(GLES31.GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS, limit, 0)
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
        if (blockBytes < 4 * Float.SIZE_BYTES) return false
        layoutProgram = RawGlesProgram.compileCompute(LAYOUT_SHADER, "DNG_HDRNET_LAYOUT")
        tableProgram = RawGlesProgram.compileCompute(TABLE_SHADER, "DNG_HDRNET_EXPORT")
        val names = IntArray(2)
        GLES31.glGenBuffers(names.size, names, 0)
        layoutBuffer = names[0]
        tableBuffer = names[1]
        if (layoutProgram == 0 || tableProgram == 0 || layoutBuffer == 0 || tableBuffer == 0) {
            release()
            return false
        }
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, layoutBuffer)
        GLES31.glBufferData(GLES31.GL_SHADER_STORAGE_BUFFER, 4 * Float.SIZE_BYTES, null, GLES30.GL_STREAM_READ)
        if (checkGl("allocate DNG layout buffer")) return true
        release()
        return false
    }

    private fun allocateTexture(pointCount: Int): Int {
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
        if (checkGl("allocate R32F DNG gain texture")) return texture
        GLES30.glDeleteTextures(1, names, 0)
        return 0
    }

    private fun readBuffer(buffer: Int, count: Int): FloatArray? {
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, buffer)
        val mapped = GLES31.glMapBufferRange(
            GLES31.GL_SHADER_STORAGE_BUFFER, 0, count * Float.SIZE_BYTES, GLES31.GL_MAP_READ_BIT,
        ) ?: return null
        var unmapped: Boolean
        val result = try {
            val data = mapped as? ByteBuffer ?: return null
            FloatArray(count).also { data.order(ByteOrder.nativeOrder()).asFloatBuffer().get(it) }
        } finally {
            unmapped = GLES31.glUnmapBuffer(GLES31.GL_SHADER_STORAGE_BUFFER)
        }
        return result.takeIf { unmapped }
    }

    fun release() {
        if (layoutProgram != 0) GLES31.glDeleteProgram(layoutProgram)
        if (tableProgram != 0) GLES31.glDeleteProgram(tableProgram)
        GLES31.glDeleteBuffers(2, intArrayOf(layoutBuffer, tableBuffer), 0)
        layoutProgram = 0
        tableProgram = 0
        layoutBuffer = 0
        tableBuffer = 0
        tableCapacity = 0
    }

    companion object {
        private const val TAG = "RawHdrNetPgtmExport"
        private const val LANES = GlesComputeWorkGroup.LINEAR_SIZE
        private const val GRID_WIDTH = DngPhotonProfileGainTableGenerator.HDRNET_PGTM_GRID_WIDTH
        private const val GRID_HEIGHT = DngPhotonProfileGainTableGenerator.HDRNET_PGTM_GRID_HEIGHT
        private const val CELL_COUNT = GRID_WIDTH * GRID_HEIGHT
        private const val MODEL_WIDTH = DngPhotonProfileGainTableGenerator.HDRNET_INPUT_WIDTH
        private const val MODEL_HEIGHT = DngPhotonProfileGainTableGenerator.HDRNET_INPUT_HEIGHT

        private fun bindTexture(program: Int, name: String, unit: Int, texture: Int) {
            GLES31.glActiveTexture(GLES31.GL_TEXTURE0 + unit)
            GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, texture)
            GLES31.glBindSampler(unit, 0)
            GLES31.glUniform1i(GLES31.glGetUniformLocation(program, name), unit)
        }

        private fun checkGl(operation: String): Boolean {
            val error = GLES31.glGetError()
            if (error == GLES31.GL_NO_ERROR) return true
            val renderer = GLES31.glGetString(GLES31.GL_RENDERER)
            val version = GLES31.glGetString(GLES31.GL_VERSION)
            PLog.e(TAG, "$operation failed GL=$error, renderer=$renderer, version=$version")
            return false
        }

        private val LAYOUT_SHADER = """
            #version 310 es
            precision highp float;
            precision highp int;
            precision highp sampler2D;
            layout(local_size_x = $LANES) in;
            layout(std430, binding = 0) writeonly buffer DngHdrNetLayout { vec4 layoutValues; };
            uniform sampler2D uProfileStats;
            uniform sampler2D uExposure;
            shared float maximums[$LANES];
            shared uint invalids[$LANES];

            void main() {
                uint lane = gl_LocalInvocationID.x;
                float maximum = 0.0;
                uint invalid = 0u;
                for (uint i = lane; i < uint($MODEL_WIDTH * $MODEL_HEIGHT); i += ${LANES}u) {
                    float value = texelFetch(uProfileStats, ivec2(int(i) % $MODEL_WIDTH, int(i) / $MODEL_WIDTH), 0).a;
                    invalid |= (value < 0.0 || isnan(value) || isinf(value)) ? 1u : 0u;
                    maximum = max(maximum, value);
                }
                maximums[lane] = maximum;
                invalids[lane] = invalid;
                barrier();
                for (uint offset = ${LANES}u / 2u; offset > 0u; offset >>= 1u) {
                    if (lane < offset) {
                        maximums[lane] = max(maximums[lane], maximums[lane + offset]);
                        invalids[lane] |= invalids[lane + offset];
                    }
                    barrier();
                }
                if (lane == 0u) {
                    vec2 exposure = texelFetch(uExposure, ivec2(0), 0).rg;
                    layoutValues = vec4(exposure, invalids[0] == 0u ? maximums[0] * exposure.x : -1.0, 0.0);
                }
            }
        """.trimIndent()

        private val TABLE_SHADER = """
            #version 310 es
            precision highp float;
            precision highp int;
            precision highp sampler2D;
            layout(local_size_x = $LANES) in;
            layout(std430, binding = 0) writeonly buffer DngGainTable { float table[]; };
            layout(r32f, binding = 0) writeonly uniform highp image2D uGainImage;
            uniform sampler2D uModelInput;
            uniform int uPointCount;
            uniform float uShortIntensityRootStep;
            uniform float uRendererBaselineGain;
            uniform ivec2 uOutputRange;

            ${RawHdrNetGl.TONE_GLSL}

            float tableIntensity(vec3 rgb) {
                const vec3 weights = vec3(0.1495, 0.2935, 0.057);
                return dot(rgb, weights) + 0.125 * min(rgb.r, min(rgb.g, rgb.b)) +
                       0.375 * max(rgb.r, max(rgb.g, rgb.b));
            }

            void main() {
                uint group = gl_WorkGroupID.y * gl_NumWorkGroups.x + gl_WorkGroupID.x;
                int localIndex = int(group * ${LANES}u + gl_LocalInvocationID.x);
                if (localIndex >= uOutputRange.y) return;
                int index = uOutputRange.x + localIndex;
                int cell = index / uPointCount;
                int knot = index % uPointCount;
                ivec2 grid = ivec2(cell % $GRID_WIDTH, cell / $GRID_WIDTH);
                vec2 uv = (vec2(grid) + 0.5) / vec2($GRID_WIDTH, $GRID_HEIGHT);
                // Invert DNG's square-root index. Knot zero uses the finite gain at knot one.
                float root = float(max(1, knot)) * uShortIntensityRootStep;
                float intensity = root * root;
                vec2 exposure = hdrNetExposure();
                // Each DNG spatial cell represents a fixed chromaticity from the short input.
                // The 256 x 192 to 64 x 48 grid centers are midway between these four texels.
                ivec2 origin = grid * 4 + 1;
                vec3 cellRgb = (texelFetch(uModelInput, origin, 0).rgb +
                    texelFetch(uModelInput, origin + ivec2(1, 0), 0).rgb +
                    texelFetch(uModelInput, origin + ivec2(0, 1), 0).rgb +
                    texelFetch(uModelInput, origin + ivec2(1, 1), 0).rgb) * 0.25;
                float cellIntensity = tableIntensity(cellRgb);
                vec3 shortRgb = (cellIntensity <= 1.0e-6 || dot(cellRgb, HDRNET_LUMA) <= 1.0e-6) ?
                    vec3(intensity) : cellRgb * (intensity / cellIntensity);
                float target = hdrNetTargetLuma(shortRgb, uv, exposure.y);
                float inputLuma = dot(shortRgb, HDRNET_LUMA) * uRendererBaselineGain / exposure.x;
                float gain = clamp(target / inputLuma, 1.0 / 4096.0, 4096.0);
                table[localIndex] = gain;
                imageStore(uGainImage, ivec2(knot, cell), vec4(gain, 0.0, 0.0, 0.0));
            }
        """.trimIndent()
    }
}
