package com.hinnka.mycamera.raw

import android.graphics.Rect
import android.opengl.GLES30
import android.opengl.GLES31
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer
import java.nio.ByteOrder
import kotlin.math.pow

/**
 * Computes dense RAW PGTM statistics on the current GLES context.
 *
 * One 16x16 workgroup owns one PGTM cell. Samples are converted to profile
 * RGB and sorted in shared memory on the GPU. The CPU receives only cell
 * percentiles, a compact scene-wide EV histogram, and two sums per cell.
 */
internal class GlesRawProfileGainTableMapBuilder {
    private var statsProgram = 0

    fun initialize(): Boolean {
        if (statsProgram != 0) return true
        statsProgram = compileComputeProgram(PGTM_STATS_COMPUTE_SHADER)
        return statsProgram != 0
    }

    fun release() {
        if (statsProgram != 0) {
            GLES31.glDeleteProgram(statsProgram)
            statsProgram = 0
        }
    }

    fun build(
        rawTextureId: Int,
        width: Int,
        height: Int,
        metadata: RawMetadata,
        samplesPerPixel: Int,
        statsBounds: Rect?,
        profileToneMapMode: RawProfileToneMapMode,
    ): DngProfileGainTableMap? {
        if (statsProgram == 0 || rawTextureId == 0 || width <= 0 || height <= 0) return null
        if (profileToneMapMode != RawProfileToneMapMode.Photon &&
            profileToneMapMode != RawProfileToneMapMode.GooglePixel
        ) {
            return null
        }
        val grid = DngHdrProfileGainTableGenerator.gridSizeFor(width, height)
        val gridWidth = grid.getOrElse(0) { 0 }
        val gridHeight = grid.getOrElse(1) { 0 }
        if (gridWidth <= 0 || gridHeight <= 0) return null

        val safeBounds = sanitizeStatsBounds(statsBounds, width, height) ?: return null
        val cellCount = gridWidth * gridHeight
        val cellStatsWordCount = cellCount * DngHdrProfileGainTableGenerator.CELL_STATS_FLOAT_STRIDE
        val cellSumsOffset = cellStatsWordCount
        val globalHistogramOffset = cellSumsOffset + cellCount * CELL_SUM_FLOAT_STRIDE
        val globalCountersOffset = globalHistogramOffset + GLOBAL_HISTOGRAM_BIN_COUNT
        val totalWordCount = globalCountersOffset + GLOBAL_COUNTER_COUNT
        val totalBytes = totalWordCount * Int.SIZE_BYTES
        val buffers = IntArray(1)
        GLES31.glGenBuffers(1, buffers, 0)
        val bufferId = buffers[0]
        if (bufferId == 0) return null

        val totalStartNs = System.nanoTime()
        return try {
            GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, bufferId)
            val zeroData = ByteBuffer.allocateDirect(totalBytes).order(ByteOrder.nativeOrder())
            GLES31.glBufferData(
                GLES31.GL_SHADER_STORAGE_BUFFER,
                totalBytes,
                zeroData,
                GLES31.GL_DYNAMIC_READ
            )
            GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, BUFFER_BINDING, bufferId)
            GLES31.glUseProgram(statsProgram)
            GLES31.glActiveTexture(GLES31.GL_TEXTURE0)
            GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, rawTextureId)
            GLES31.glUniform1i(uniform("uRawTexture"), 0)
            GLES31.glUniform2i(uniform("uImageSize"), width, height)
            GLES31.glUniform4i(
                uniform("uStatsBounds"),
                safeBounds.left,
                safeBounds.top,
                safeBounds.right,
                safeBounds.bottom
            )
            GLES31.glUniform2i(uniform("uGridSize"), gridWidth, gridHeight)
            GLES31.glUniform1i(uniform("uSamplesPerPixel"), samplesPerPixel.coerceAtLeast(1))
            GLES31.glUniform1i(uniform("uCfaPattern"), metadata.cfaPattern)
            GLES31.glUniform4fv(uniform("uBlackLevel"), 1, safeBlackLevel(metadata), 0)
            GLES31.glUniform1f(uniform("uWhiteLevel"), metadata.whiteLevel.coerceAtLeast(1f))
            GLES31.glUniform1f(
                uniform("uBaselineExposureGain"),
                2.0f.pow(DngBaselineExposure.sanitize(metadata.baselineExposure).coerceIn(0f, 8f))
            )
            GLES31.glUniformMatrix3fv(
                uniform("uColorCorrectionMatrix"),
                1,
                false,
                transposeMatrix3x3(metadata.colorCorrectionMatrix),
                0
            )
            GLES31.glUniform1i(uniform("uCellSumsOffset"), cellSumsOffset)
            GLES31.glUniform1i(uniform("uGlobalHistogramOffset"), globalHistogramOffset)
            GLES31.glUniform1i(uniform("uGlobalCountersOffset"), globalCountersOffset)

            val dispatchStartNs = System.nanoTime()
            GLES31.glDispatchCompute(gridWidth, gridHeight, 1)
            GLES31.glMemoryBarrier(
                GLES31.GL_SHADER_STORAGE_BARRIER_BIT or GLES31.GL_BUFFER_UPDATE_BARRIER_BIT
            )
            checkGlError("dispatch")

            GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, bufferId)
            val mapped = GLES31.glMapBufferRange(
                GLES31.GL_SHADER_STORAGE_BUFFER,
                0,
                totalBytes,
                GLES31.GL_MAP_READ_BIT
            ) as? ByteBuffer ?: error("GPU RAW PGTM stats buffer map failed")
            val words = try {
                IntArray(totalWordCount).also { values ->
                    mapped.order(ByteOrder.nativeOrder()).asIntBuffer().get(values)
                }
            } finally {
                GLES31.glUnmapBuffer(GLES31.GL_SHADER_STORAGE_BUFFER)
            }
            val statsReadyNs = System.nanoTime()

            val packedCellStats = FloatArray(cellStatsWordCount) { index ->
                Float.fromBits(words[index])
            }
            val sampleCount = words[globalCountersOffset + COUNTER_SAMPLE_COUNT]
                .coerceIn(0, cellCount * SAMPLE_COUNT_PER_CELL)
            val zeroCount = words[globalCountersOffset + COUNTER_ZERO_COUNT]
                .coerceIn(0, sampleCount)
            val highlightCount = words[globalCountersOffset + COUNTER_HIGHLIGHT_COUNT]
                .coerceIn(0, sampleCount)
            val maxInput = Float.fromBits(words[globalCountersOffset + COUNTER_MAX_INPUT_BITS])
            var linearSum = 0.0
            var logSum = 0.0
            for (cellIndex in 0 until cellCount) {
                val offset = cellSumsOffset + cellIndex * CELL_SUM_FLOAT_STRIDE
                linearSum += Float.fromBits(words[offset]).toDouble()
                logSum += Float.fromBits(words[offset + 1]).toDouble()
            }
            val globalHistogram = IntArray(GLOBAL_HISTOGRAM_BIN_COUNT) { index ->
                words[globalHistogramOffset + index].coerceAtLeast(0)
            }
            val globalStats = DngPgtmGlobalStats.fromLogHistogram(
                logHistogram = globalHistogram,
                histogramMinEv = GLOBAL_HISTOGRAM_MIN_EV,
                histogramMaxEv = GLOBAL_HISTOGRAM_MAX_EV,
                sampleCount = sampleCount,
                zeroCount = zeroCount,
                highlightCount = highlightCount,
                maxInput = maxInput,
                linearSum = linearSum,
                logSum = logSum
            )
            val diagnosticBand = DngPgtmDiagnostic.activeBandForSource("$TAG GPU RAW")
            val baselineExposureEv = DngBaselineExposure.sanitize(metadata.baselineExposure)
            val map = when (profileToneMapMode) {
                RawProfileToneMapMode.Photon -> DngPhotonProfileGainTableGenerator.forCellStats(
                    width = width,
                    height = height,
                    baselineExposureEv = baselineExposureEv,
                    packedCellStats = packedCellStats,
                    globalStats = globalStats ?: error("GPU RAW PGTM global stats are empty"),
                    diagnosticBand = diagnosticBand,
                    statsSource = "gpu-log-histogram-$GLOBAL_HISTOGRAM_BIN_COUNT"
                )

                RawProfileToneMapMode.GooglePixel -> DngHdrProfileGainTableGenerator.forCellStats(
                    width = width,
                    height = height,
                    baselineExposureEv = baselineExposureEv,
                    packedCellStats = packedCellStats,
                    diagnosticBand = diagnosticBand
                )

                RawProfileToneMapMode.Default,
                RawProfileToneMapMode.OppoMaster -> null
            }
            val completeNs = System.nanoTime()
            PLog.d(
                TAG,
                "GPU RAW PGTM built: mode=$profileToneMapMode grid=${gridWidth}x${gridHeight} " +
                    "samples=$sampleCount readbackBytes=$totalBytes " +
                    "gpuAndReadbackMs=${(statsReadyNs - dispatchStartNs) / 1_000_000.0} " +
                    "curveMs=${(completeNs - statsReadyNs) / 1_000_000.0} " +
                    "totalMs=${(completeNs - totalStartNs) / 1_000_000.0}"
            )
            map
        } catch (error: Exception) {
            PLog.w(TAG, "GPU RAW PGTM generation failed", error)
            null
        } finally {
            GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, BUFFER_BINDING, 0)
            GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
            GLES31.glUseProgram(0)
            GLES31.glDeleteBuffers(1, buffers, 0)
        }
    }

    private fun uniform(name: String): Int = GLES31.glGetUniformLocation(statsProgram, name)

    private fun sanitizeStatsBounds(statsBounds: Rect?, width: Int, height: Int): Rect? {
        val imageBounds = Rect(0, 0, width, height)
        if (statsBounds == null) return imageBounds
        if (statsBounds.isEmpty) return null
        return Rect(statsBounds).takeIf {
            it.intersect(imageBounds) && it.width() >= 2 && it.height() >= 2
        }
    }

    private fun safeBlackLevel(metadata: RawMetadata): FloatArray {
        val fallback = metadata.blackLevel.firstOrNull() ?: 0f
        return FloatArray(4) { index -> metadata.blackLevel.getOrElse(index) { fallback } }
    }

    private fun transposeMatrix3x3(matrix: FloatArray): FloatArray {
        if (matrix.size < 9) {
            return floatArrayOf(1f, 0f, 0f, 0f, 1f, 0f, 0f, 0f, 1f)
        }
        return floatArrayOf(
            matrix[0], matrix[3], matrix[6],
            matrix[1], matrix[4], matrix[7],
            matrix[2], matrix[5], matrix[8]
        )
    }

    private fun compileComputeProgram(source: String): Int {
        val shader = GLES31.glCreateShader(GLES31.GL_COMPUTE_SHADER)
        GLES31.glShaderSource(shader, source)
        GLES31.glCompileShader(shader)
        val compiled = IntArray(1)
        GLES31.glGetShaderiv(shader, GLES31.GL_COMPILE_STATUS, compiled, 0)
        if (compiled[0] == 0) {
            PLog.e(TAG, "GPU RAW PGTM shader compilation failed: ${GLES31.glGetShaderInfoLog(shader)}")
            GLES31.glDeleteShader(shader)
            return 0
        }
        val program = GLES31.glCreateProgram()
        GLES31.glAttachShader(program, shader)
        GLES31.glLinkProgram(program)
        GLES31.glDeleteShader(shader)
        val linked = IntArray(1)
        GLES31.glGetProgramiv(program, GLES31.GL_LINK_STATUS, linked, 0)
        if (linked[0] == 0) {
            PLog.e(TAG, "GPU RAW PGTM program linking failed: ${GLES31.glGetProgramInfoLog(program)}")
            GLES31.glDeleteProgram(program)
            return 0
        }
        return program
    }

    private fun checkGlError(stage: String) {
        val error = GLES31.glGetError()
        if (error != GLES31.GL_NO_ERROR) error("GPU RAW PGTM $stage failed: glError=$error")
    }

    private companion object {
        private const val TAG = "GlesRawPgtmBuilder"
        private const val BUFFER_BINDING = 7
        private const val SAMPLE_GRID = 16
        private const val SAMPLE_COUNT_PER_CELL = SAMPLE_GRID * SAMPLE_GRID
        private const val CELL_SUM_FLOAT_STRIDE = 2
        private const val GLOBAL_HISTOGRAM_BIN_COUNT = 2048
        private const val GLOBAL_HISTOGRAM_MIN_EV = -16f
        private const val GLOBAL_HISTOGRAM_MAX_EV = 8f
        private const val GLOBAL_COUNTER_COUNT = 4
        private const val COUNTER_SAMPLE_COUNT = 0
        private const val COUNTER_ZERO_COUNT = 1
        private const val COUNTER_HIGHLIGHT_COUNT = 2
        private const val COUNTER_MAX_INPUT_BITS = 3

        private val PGTM_STATS_COMPUTE_SHADER = """
            #version 310 es
            precision highp float;
            precision highp int;
            precision highp usampler2D;
            layout(local_size_x = 16, local_size_y = 16) in;

            uniform highp usampler2D uRawTexture;
            uniform ivec2 uImageSize;
            uniform ivec4 uStatsBounds;
            uniform ivec2 uGridSize;
            uniform int uSamplesPerPixel;
            uniform int uCfaPattern;
            uniform vec4 uBlackLevel;
            uniform float uWhiteLevel;
            uniform float uBaselineExposureGain;
            uniform mat3 uColorCorrectionMatrix;
            uniform int uCellSumsOffset;
            uniform int uGlobalHistogramOffset;
            uniform int uGlobalCountersOffset;

            layout(std430, binding = $BUFFER_BINDING) buffer PgtmData {
                uint data[];
            };

            const int SAMPLE_GRID = 16;
            const int SAMPLE_COUNT = 256;
            const int STATS_STRIDE = 8;
            const int CELL_SUM_STRIDE = 2;
            const int GLOBAL_HISTOGRAM_BINS = 2048;
            const float GLOBAL_HISTOGRAM_MIN_EV = -16.0;
            const float GLOBAL_HISTOGRAM_MAX_EV = 8.0;
            const float INV_LOG_2 = 1.4426950408889634;
            const int COUNTER_SAMPLE_COUNT = 0;
            const int COUNTER_ZERO_COUNT = 1;
            const int COUNTER_HIGHLIGHT_COUNT = 2;
            const int COUNTER_MAX_INPUT_BITS = 3;

            shared float inputSamples[SAMPLE_COUNT];

            int baseBayerPattern() {
                return uCfaPattern >= 8 ? uCfaPattern - 8 :
                    (uCfaPattern >= 4 ? uCfaPattern - 4 : uCfaPattern);
            }

            int cfaBlockSize() {
                return uCfaPattern >= 8 ? 4 : (uCfaPattern >= 4 ? 2 : 1);
            }

            int channelIndexAt(ivec2 p) {
                int blockSize = cfaBlockSize();
                int xp = (p.x / blockSize) & 1;
                int yp = (p.y / blockSize) & 1;
                int pattern = baseBayerPattern();
                if (pattern == 1) {
                    if (yp == 0 && xp == 0) return 1;
                    if (yp == 0 && xp == 1) return 0;
                    if (yp == 1 && xp == 0) return 3;
                    return 2;
                }
                if (pattern == 2) {
                    if (yp == 0 && xp == 0) return 2;
                    if (yp == 0 && xp == 1) return 3;
                    if (yp == 1 && xp == 0) return 0;
                    return 1;
                }
                if (pattern == 3) {
                    if (yp == 0 && xp == 0) return 3;
                    if (yp == 0 && xp == 1) return 2;
                    if (yp == 1 && xp == 0) return 1;
                    return 0;
                }
                if (yp == 0 && xp == 0) return 0;
                if (yp == 0 && xp == 1) return 1;
                if (yp == 1 && xp == 0) return 2;
                return 3;
            }

            float normalizeRaw(uint raw, int channel) {
                float black = uBlackLevel[clamp(channel, 0, 3)];
                return clamp((float(raw) - black) / max(uWhiteLevel - black, 1.0), 0.0, 1.0);
            }

            vec3 cameraRgbAt(ivec2 base) {
                if (uSamplesPerPixel >= 3) {
                    ivec2 p = clamp(base, ivec2(0), uImageSize - ivec2(1));
                    uvec3 raw = texelFetch(uRawTexture, p, 0).rgb;
                    return vec3(
                        normalizeRaw(raw.r, 0),
                        normalizeRaw(raw.g, 1),
                        normalizeRaw(raw.b, 2)
                    );
                }
                vec3 sums = vec3(0.0);
                vec3 counts = vec3(0.0);
                for (int y = 0; y <= 1; ++y) {
                    for (int x = 0; x <= 1; ++x) {
                        ivec2 p = clamp(base + ivec2(x, y), ivec2(0), uImageSize - ivec2(1));
                        int channel = channelIndexAt(p);
                        float value = normalizeRaw(texelFetch(uRawTexture, p, 0).r, channel);
                        if (channel == 0) {
                            sums.r += value;
                            counts.r += 1.0;
                        } else if (channel == 3) {
                            sums.b += value;
                            counts.b += 1.0;
                        } else {
                            sums.g += value;
                            counts.g += 1.0;
                        }
                    }
                }
                float fallback = (sums.r + sums.g + sums.b) /
                    max(counts.r + counts.g + counts.b, 1.0);
                return vec3(
                    counts.r > 0.0 ? sums.r / counts.r : fallback,
                    counts.g > 0.0 ? sums.g / counts.g : fallback,
                    counts.b > 0.0 ? sums.b / counts.b : fallback
                );
            }

            float pgtmInputAt(ivec2 base) {
                vec3 profileRgb = uColorCorrectionMatrix * cameraRgbAt(base) *
                    uBaselineExposureGain;
                float minChannel = min(profileRgb.r, min(profileRgb.g, profileRgb.b));
                float maxChannel = max(profileRgb.r, max(profileRgb.g, profileRgb.b));
                float value =
                    0.1495 * profileRgb.r +
                    0.2935 * profileRgb.g +
                    0.0570 * profileRgb.b +
                    0.1250 * minChannel +
                    0.3750 * maxChannel;
                return isnan(value) || isinf(value) ? 0.0 : max(value, 0.0);
            }

            void main() {
                ivec2 cell = ivec2(gl_WorkGroupID.xy);
                if (cell.x >= uGridSize.x || cell.y >= uGridSize.y) return;
                ivec2 localId = ivec2(gl_LocalInvocationID.xy);
                int localIndex = localId.y * SAMPLE_GRID + localId.x;
                int cellIndex = cell.y * uGridSize.x + cell.x;

                ivec2 statsMin = clamp(uStatsBounds.xy, ivec2(0), uImageSize - ivec2(1));
                ivec2 statsMax = clamp(uStatsBounds.zw, statsMin + ivec2(1), uImageSize);
                ivec2 statsSize = max(statsMax - statsMin, ivec2(2));
                int startX = statsMin.x + (cell.x * statsSize.x) / uGridSize.x;
                int endX = statsMin.x + ((cell.x + 1) * statsSize.x + uGridSize.x - 1) /
                    uGridSize.x;
                int startY = statsMin.y + (cell.y * statsSize.y) / uGridSize.y;
                int endY = statsMin.y + ((cell.y + 1) * statsSize.y + uGridSize.y - 1) /
                    uGridSize.y;
                startX += startX & 1;
                startY += startY & 1;
                endX = min(statsMax.x, endX - (endX & 1));
                endY = min(statsMax.y, endY - (endY & 1));

                if (endX - startX < 2 || endY - startY < 2) {
                    if (localIndex == 0) {
                        int offset = cellIndex * STATS_STRIDE;
                        for (int i = 0; i < STATS_STRIDE; ++i) data[offset + i] = 0u;
                        int sumOffset = uCellSumsOffset + cellIndex * CELL_SUM_STRIDE;
                        data[sumOffset] = floatBitsToUint(0.0);
                        data[sumOffset + 1] = floatBitsToUint(0.0);
                    }
                    return;
                }

                int cellWidth = max(endX - startX, 2);
                int cellHeight = max(endY - startY, 2);
                int x = startX + ((localId.x * 2 + 1) * cellWidth) / (SAMPLE_GRID * 2);
                int y = startY + ((localId.y * 2 + 1) * cellHeight) / (SAMPLE_GRID * 2);
                x = clamp(x - (x & 1), startX, max(startX, endX - 2));
                y = clamp(y - (y & 1), startY, max(startY, endY - 2));
                float inputValue = pgtmInputAt(ivec2(x, y));
                inputSamples[localIndex] = inputValue;

                atomicAdd(data[uGlobalCountersOffset + COUNTER_SAMPLE_COUNT], 1u);
                if (inputValue <= 0.0) {
                    atomicAdd(data[uGlobalCountersOffset + COUNTER_ZERO_COUNT], 1u);
                } else {
                    float ev = clamp(
                        log(inputValue) * INV_LOG_2,
                        GLOBAL_HISTOGRAM_MIN_EV,
                        GLOBAL_HISTOGRAM_MAX_EV - 1e-5
                    );
                    int bin = clamp(
                        int(floor(
                            (ev - GLOBAL_HISTOGRAM_MIN_EV) /
                            (GLOBAL_HISTOGRAM_MAX_EV - GLOBAL_HISTOGRAM_MIN_EV) *
                            float(GLOBAL_HISTOGRAM_BINS)
                        )),
                        0,
                        GLOBAL_HISTOGRAM_BINS - 1
                    );
                    atomicAdd(data[uGlobalHistogramOffset + bin], 1u);
                }
                if (inputValue >= 0.92) {
                    atomicAdd(data[uGlobalCountersOffset + COUNTER_HIGHLIGHT_COUNT], 1u);
                }
                atomicMax(
                    data[uGlobalCountersOffset + COUNTER_MAX_INPUT_BITS],
                    floatBitsToUint(inputValue)
                );
                barrier();

                for (uint sequence = 2u; sequence <= 256u; sequence <<= 1u) {
                    for (uint distance = sequence >> 1u; distance > 0u; distance >>= 1u) {
                        uint index = uint(localIndex);
                        uint peer = index ^ distance;
                        if (peer > index) {
                            float own = inputSamples[index];
                            float other = inputSamples[peer];
                            bool ascending = (index & sequence) == 0u;
                            if ((ascending && own > other) || (!ascending && own < other)) {
                                inputSamples[index] = other;
                                inputSamples[peer] = own;
                            }
                        }
                        barrier();
                    }
                }

                if (localIndex != 0) return;
                float linearSum = 0.0;
                float logSum = 0.0;
                int highlightCount = 0;
                for (int i = 0; i < SAMPLE_COUNT; ++i) {
                    float value = inputSamples[i];
                    linearSum += value;
                    logSum += log(max(value, 1e-6));
                    if (value >= 0.92) highlightCount += 1;
                }
                int offset = cellIndex * STATS_STRIDE;
                data[offset + 0] = floatBitsToUint(inputSamples[25]);
                data[offset + 1] = floatBitsToUint(inputSamples[127]);
                data[offset + 2] = floatBitsToUint(inputSamples[230]);
                data[offset + 3] = floatBitsToUint(inputSamples[250]);
                data[offset + 4] = floatBitsToUint(float(highlightCount) / float(SAMPLE_COUNT));
                data[offset + 5] = floatBitsToUint(float(SAMPLE_COUNT));
                data[offset + 6] = floatBitsToUint(inputSamples[254]);
                data[offset + 7] = floatBitsToUint(inputSamples[255]);
                int sumOffset = uCellSumsOffset + cellIndex * CELL_SUM_STRIDE;
                data[sumOffset] = floatBitsToUint(linearSum);
                data[sumOffset + 1] = floatBitsToUint(logSum);
            }
        """.trimIndent()
    }
}
