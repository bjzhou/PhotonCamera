package com.hinnka.mycamera.lut

import android.graphics.RectF
import android.opengl.GLES31
import com.hinnka.mycamera.raw.DngPhotonProfileGainTableGenerator
import com.hinnka.mycamera.raw.RawGlesProgram
import com.hinnka.mycamera.utils.PLog

/** Reduces the current RAW preview into the HDR AEC and TMC12 statistics on the render context. */
internal class RawAdrcPreviewStatsGl {
    private data class CollectUniforms(
        val source: Int,
        val sourceSize: Int,
        val baselineGain: Int,
        val linearSrgbGreen: Int,
        val boxedSource: Int,
        val faceCount: Int,
        val faces: Int,
    )

    private var initialized = false
    private var clearProgram = 0
    private var collectProgram = 0
    private var reduceProgram = 0
    private var collectUniforms: CollectUniforms? = null
    private var histogramBuffer = 0
    private var tileBuffer = 0
    private val faceCoordinates = FloatArray(MAX_FACES * 4)

    /** Unscaled profile RGB box means, in the source texture orientation. */
    var profileTexture = 0
        private set

    /**
     * std430: (RAW geometric luma, RAW mean luma, RAW log-luma deviation in EV, baseline-adjusted PGTM peak),
     * (p05, p50, p95, p99.2) in the baseline-adjusted PGTM domain, then CamX BHist counts.
     */
    var statisticsBuffer = 0
        private set

    fun prepare(
        sourceTexture: Int,
        width: Int,
        height: Int,
        baselineGain: Float,
        profileToLinearSrgb: FloatArray,
        faceRects: List<RectF> = emptyList(),
    ): Boolean = prepare(sourceTexture, width, height, baselineGain, profileToLinearSrgb, faceRects, boxedSource = false)

    /** A capture applies crop, warp and color correction while box-reducing, storing the peak in alpha. */
    fun prepareCapture(
        sourceTexture: Int,
        baselineGain: Float,
        profileToLinearSrgb: FloatArray,
        faceRects: List<RectF> = emptyList(),
    ): Boolean = prepare(sourceTexture, WIDTH, HEIGHT, baselineGain, profileToLinearSrgb, faceRects, boxedSource = true)

    private fun prepare(
        sourceTexture: Int,
        width: Int,
        height: Int,
        baselineGain: Float,
        profileToLinearSrgb: FloatArray,
        faceRects: List<RectF>,
        boxedSource: Boolean,
    ): Boolean {
        if (sourceTexture == 0 || width <= 0 || height <= 0 || baselineGain <= 0f ||
            !baselineGain.isFinite() || profileToLinearSrgb.size != 9 || !initialize()
        ) return false
        val uniforms = checkNotNull(collectUniforms)

        // The previous frame's consumers may still be sampling scratch images on the GPU.
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT or GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
        GLES31.glUseProgram(clearProgram)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, histogramBuffer)
        GLES31.glDispatchCompute(HIST_BUFFER_UINTS / REDUCE_GROUP_SIZE, 1, 1)
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)

        GLES31.glUseProgram(collectProgram)
        GLES31.glActiveTexture(GLES31.GL_TEXTURE0)
        GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, sourceTexture)
        GLES31.glBindSampler(0, 0)
        GLES31.glUniform1i(uniforms.source, 0)
        GLES31.glUniform2i(uniforms.sourceSize, width, height)
        GLES31.glUniform1f(uniforms.baselineGain, baselineGain)
        GLES31.glUniform3fv(uniforms.linearSrgbGreen, 1, profileToLinearSrgb, 3)
        GLES31.glUniform1i(uniforms.boxedSource, if (boxedSource) 1 else 0)
        var faceCount = 0
        for (rect in faceRects) {
            if (faceCount == MAX_FACES) break
            if (!(rect.left >= 0f && rect.top >= 0f && rect.right <= 1f && rect.bottom <= 1f &&
                    rect.right > rect.left && rect.bottom > rect.top)
            ) continue
            val offset = faceCount++ * 4
            faceCoordinates[offset] = rect.left
            faceCoordinates[offset + 1] = rect.top
            faceCoordinates[offset + 2] = rect.right
            faceCoordinates[offset + 3] = rect.bottom
        }
        GLES31.glUniform1i(uniforms.faceCount, faceCount)
        if (faceCount != 0) GLES31.glUniform4fv(uniforms.faces, faceCount, faceCoordinates, 0)
        GLES31.glBindImageTexture(0, profileTexture, 0, false, 0, GLES31.GL_WRITE_ONLY, GLES31.GL_RGBA16F)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 1, tileBuffer)
        GLES31.glDispatchCompute(GROUPS_X, GROUPS_Y, 1)
        GLES31.glMemoryBarrier(
            GLES31.GL_SHADER_STORAGE_BARRIER_BIT or GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT or
                GLES31.GL_TEXTURE_FETCH_BARRIER_BIT,
        )

        GLES31.glUseProgram(reduceProgram)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 2, statisticsBuffer)
        GLES31.glDispatchCompute(1, 1, 1)
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)

        GLES31.glBindImageTexture(0, 0, 0, false, 0, GLES31.GL_WRITE_ONLY, GLES31.GL_RGBA16F)
        GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, 0)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, 0)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 1, 0)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 2, 0)
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
        return checkGl("statistics dispatch")
    }

    private fun initialize(): Boolean {
        if (initialized) return statisticsBuffer != 0
        initialized = true
        val limit = IntArray(1)
        GLES31.glGetIntegerv(GLES31.GL_MAJOR_VERSION, limit, 0)
        val major = limit[0]
        GLES31.glGetIntegerv(GLES31.GL_MINOR_VERSION, limit, 0)
        if (major < 3 || (major == 3 && limit[0] < 1)) return false
        GLES31.glGetIntegerv(GLES31.GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS, limit, 0)
        if (limit[0] < 3) return false
        GLES31.glGetIntegerv(GLES31.GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS, limit, 0)
        if (limit[0] < 3) return false
        val maxBlockSize = LongArray(1)
        GLES31.glGetInteger64v(GLES31.GL_MAX_SHADER_STORAGE_BLOCK_SIZE, maxBlockSize, 0)
        if (maxBlockSize[0] < HIST_BUFFER_UINTS * Int.SIZE_BYTES) return false
        GLES31.glGetIntegerv(GLES31.GL_MAX_IMAGE_UNITS, limit, 0)
        if (limit[0] < 1) return false
        GLES31.glGetIntegerv(GLES31.GL_MAX_COMPUTE_IMAGE_UNIFORMS, limit, 0)
        if (limit[0] < 1) return false
        GLES31.glGetIntegerv(GLES31.GL_MAX_TEXTURE_SIZE, limit, 0)
        if (limit[0] < maxOf(WIDTH, HEIGHT)) return false

        clearProgram = RawGlesProgram.compileCompute(CLEAR_SHADER, "ADRC histogram clear")
        collectProgram = RawGlesProgram.compileCompute(COLLECT_SHADER, "ADRC RAW statistics")
        reduceProgram = RawGlesProgram.compileCompute(REDUCE_SHADER, "ADRC statistics reduction")
        if (clearProgram == 0 || collectProgram == 0 || reduceProgram == 0) {
            release()
            initialized = true
            return false
        }
        collectUniforms = CollectUniforms(
            GLES31.glGetUniformLocation(collectProgram, "uSource"),
            GLES31.glGetUniformLocation(collectProgram, "uSourceSize"),
            GLES31.glGetUniformLocation(collectProgram, "uBaselineGain"),
            GLES31.glGetUniformLocation(collectProgram, "uLinearSrgbGreen"),
            GLES31.glGetUniformLocation(collectProgram, "uBoxedSource"),
            GLES31.glGetUniformLocation(collectProgram, "uFaceCount"),
            GLES31.glGetUniformLocation(collectProgram, "uFaces[0]"),
        )

        val buffers = IntArray(3)
        GLES31.glGenBuffers(buffers.size, buffers, 0)
        histogramBuffer = buffers[0]
        tileBuffer = buffers[1]
        statisticsBuffer = buffers[2]
        allocateBuffer(histogramBuffer, HIST_BUFFER_UINTS * Int.SIZE_BYTES)
        allocateBuffer(tileBuffer, GROUPS_X * GROUPS_Y * 8 * Float.SIZE_BYTES)
        allocateBuffer(statisticsBuffer, (8 + HIST_BINS) * Float.SIZE_BYTES)
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)

        val texture = IntArray(1)
        GLES31.glGenTextures(1, texture, 0)
        profileTexture = texture[0]
        GLES31.glActiveTexture(GLES31.GL_TEXTURE0)
        GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, profileTexture)
        GLES31.glTexStorage2D(GLES31.GL_TEXTURE_2D, 1, GLES31.GL_RGBA16F, WIDTH, HEIGHT)
        GLES31.glTexParameteri(GLES31.GL_TEXTURE_2D, GLES31.GL_TEXTURE_MIN_FILTER, GLES31.GL_LINEAR)
        GLES31.glTexParameteri(GLES31.GL_TEXTURE_2D, GLES31.GL_TEXTURE_MAG_FILTER, GLES31.GL_LINEAR)
        GLES31.glTexParameteri(GLES31.GL_TEXTURE_2D, GLES31.GL_TEXTURE_WRAP_S, GLES31.GL_CLAMP_TO_EDGE)
        GLES31.glTexParameteri(GLES31.GL_TEXTURE_2D, GLES31.GL_TEXTURE_WRAP_T, GLES31.GL_CLAMP_TO_EDGE)
        GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, 0)
        val allocationSucceeded = checkGl("statistics allocation")
        if (allocationSucceeded && profileTexture != 0 && buffers.all { it != 0 }) return true
        release()
        initialized = true
        return false
    }

    private fun allocateBuffer(id: Int, bytes: Int) {
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, id)
        GLES31.glBufferData(GLES31.GL_SHADER_STORAGE_BUFFER, bytes, null, GLES31.GL_DYNAMIC_COPY)
    }

    private fun checkGl(operation: String): Boolean {
        val error = GLES31.glGetError()
        if (error == GLES31.GL_NO_ERROR) return true
        PLog.e("RawAdrcPreviewStats", "$operation failed GL=0x${error.toString(16)}")
        return false
    }

    fun reset() {
        initialized = false
        clearProgram = 0
        collectProgram = 0
        reduceProgram = 0
        collectUniforms = null
        histogramBuffer = 0
        tileBuffer = 0
        profileTexture = 0
        statisticsBuffer = 0
    }

    fun release() {
        if (clearProgram != 0) GLES31.glDeleteProgram(clearProgram)
        if (collectProgram != 0) GLES31.glDeleteProgram(collectProgram)
        if (reduceProgram != 0) GLES31.glDeleteProgram(reduceProgram)
        GLES31.glDeleteBuffers(3, intArrayOf(histogramBuffer, tileBuffer, statisticsBuffer), 0)
        if (profileTexture != 0) GLES31.glDeleteTextures(1, intArrayOf(profileTexture), 0)
        reset()
    }

    companion object {
        const val WIDTH = 256
        const val HEIGHT = 192
        const val HIST_BINS = 1024

        private const val COLLECT_SIDE = 8
        private const val COLLECT_GROUP_SIZE = COLLECT_SIDE * COLLECT_SIDE
        private const val GROUPS_X = WIDTH / COLLECT_SIDE
        private const val GROUPS_Y = HEIGHT / COLLECT_SIDE
        private const val REDUCE_GROUP_SIZE = 128
        private const val HIST_SHARDS = 8
        private const val HISTOGRAM_UINTS = HIST_SHARDS * HIST_BINS
        private const val HIST_BUFFER_UINTS = 2 * HISTOGRAM_UINTS
        private const val QUANTILE_MIN_EV = -14.0f
        private const val QUANTILE_EV_SPAN = 46.0f
        private const val MAX_FACES = 32

        private val CLEAR_SHADER = """
            #version 310 es
            precision highp int;
            layout(local_size_x = $REDUCE_GROUP_SIZE) in;
            layout(std430, binding = 0) buffer Counts { uint counts[]; };
            void main() {
                counts[gl_GlobalInvocationID.x] = 0u;
            }
        """.trimIndent()

        private val COLLECT_SHADER = DngPhotonProfileGainTableGenerator.PXL_PROFILE_GAIN_TABLE_INPUT_WEIGHTS.let { weights ->
            """
            #version 310 es
            precision highp float;
            precision highp int;
            precision highp sampler2D;
            precision highp image2D;

            layout(local_size_x = $COLLECT_SIDE, local_size_y = $COLLECT_SIDE) in;
            layout(rgba16f, binding = 0) writeonly uniform image2D uProfile;
            layout(std430, binding = 0) buffer Counts { uint counts[]; };
            layout(std430, binding = 1) writeonly buffer Tiles { vec4 tiles[]; };

            uniform sampler2D uSource;
            uniform ivec2 uSourceSize;
            uniform float uBaselineGain;
            uniform vec3 uLinearSrgbGreen;
            uniform bool uBoxedSource;
            uniform int uFaceCount;
            uniform vec4 uFaces[$MAX_FACES];

            shared vec4 tileMoments[$COLLECT_GROUP_SIZE];
            shared float tilePeaks[$COLLECT_GROUP_SIZE];

            float faceWeightAt(vec2 uv) {
                float weight = 0.0;
                for (int i = 0; i < uFaceCount; ++i) {
                    vec4 rect = uFaces[i];
                    if (all(greaterThanEqual(uv, rect.xy)) && all(lessThanEqual(uv, rect.zw))) {
                        float dist = 2.0 * length((rect.xy + rect.zw) * 0.5 - 0.5);
                        weight = max(weight, 0.95 - 0.90 * smoothstep(0.15, 0.95, dist));
                    }
                }
                return weight;
            }

            float pgtmIntensity(vec3 rgb) {
                return dot(rgb, vec3(${weights[0]}, ${weights[1]}, ${weights[2]}))
                    + min(rgb.r, min(rgb.g, rgb.b)) * ${weights[3]}
                    + max(rgb.r, max(rgb.g, rgb.b)) * ${weights[4]};
            }

            float mergePeak(float a, float b) {
                return min(a, b) < 0.0 ? -1.0 : max(a, b);
            }

            int bayerHistogramBin(float green) {
                int code = int(round(clamp(green, 0.0, 1.0) * 16383.0));
                if (code < 2048) return code / 4;
                if (code < 4096) return 512 + (code - 2048) / 16;
                return 640 + (code - 4096) / 32;
            }

            void main() {
                const ivec2 profileSize = ivec2($WIDTH, $HEIGHT);
                ivec2 cell = ivec2(gl_GlobalInvocationID.xy);
                float peak = 0.0;
                vec3 profileRgb;
                if (uBoxedSource) {
                    vec4 sampleValue = texelFetch(uSource, cell, 0);
                    peak = sampleValue.a;
                    profileRgb = peak < 0.0 ? vec3(0.0) : sampleValue.rgb;
                } else {
                    ivec2 start = cell * uSourceSize / profileSize;
                    ivec2 end = max((cell + 1) * uSourceSize / profileSize, start + 1);
                    vec3 sum = vec3(0.0);
                    for (int y = start.y; y < end.y; ++y) {
                        for (int x = start.x; x < end.x; ++x) {
                            vec3 rgb = max(texelFetch(uSource, ivec2(x, y), 0).rgb, vec3(0.0));
                            sum += rgb;
                            peak = max(peak, pgtmIntensity(rgb));
                        }
                    }
                    ivec2 extent = end - start;
                    profileRgb = sum / float(extent.x * extent.y);
                }
                imageStore(uProfile, cell, vec4(profileRgb, 1.0));

                vec3 meteringRgb = profileRgb * uBaselineGain;
                // Fit and runtime meter the captured signal before the renderer's exposure adjustment.
                float luma = dot(profileRgb, vec3(0.2126, 0.7152, 0.0722));
                float intensity = pgtmIntensity(meteringRgb);
                vec2 uv = (vec2(cell) + 0.5) / vec2(profileSize);
                vec2 center = uv - 0.5;
                float faceWeight = faceWeightAt(uv);
                float weight = 0.45 + 0.55 * exp(-dot(center, center) / (2.0 * 0.36 * 0.36)) + 3.0 * faceWeight;
                float logLuma = log2(luma + 0.0001);
                uint lane = gl_LocalInvocationIndex;
                tileMoments[lane] = weight * vec4(logLuma, 1.0, luma, logLuma * logLuma);
                tilePeaks[lane] = peak;

                int tile = int(gl_WorkGroupID.y) * $GROUPS_X + int(gl_WorkGroupID.x);
                int shardOffset = (tile % $HIST_SHARDS) * $HIST_BINS;
                // Camera2's RAW preview does not expose the ISP Bayer GR BHist. Calibrated
                // linear green supplies its samples using the CamX 14-bit bin boundaries.
                int bin = bayerHistogramBin(dot(meteringRgb, uLinearSrgbGreen));
                atomicAdd(counts[shardOffset + bin], 1u);

                // Still metering measures PGTM intensity and carries highlights
                // above the normalized sensor range, so use its own distribution.
                float key = log2(max(intensity, exp2($QUANTILE_MIN_EV)));
                int intensityBin = clamp(int((key - $QUANTILE_MIN_EV) * (float($HIST_BINS) / $QUANTILE_EV_SPAN)),
                    0, $HIST_BINS - 1);
                atomicAdd(counts[$HISTOGRAM_UINTS + shardOffset + intensityBin], 1u);

                barrier();
                for (uint stepSize = ${COLLECT_GROUP_SIZE / 2}u; stepSize > 0u; stepSize >>= 1u) {
                    if (lane < stepSize) {
                        tileMoments[lane] += tileMoments[lane + stepSize];
                        tilePeaks[lane] = mergePeak(tilePeaks[lane], tilePeaks[lane + stepSize]);
                    }
                    barrier();
                }
                if (lane == 0u) {
                    tiles[2 * tile] = tileMoments[0];
                    tiles[2 * tile + 1] = vec4(tilePeaks[0] * uBaselineGain, 0.0, 0.0, 0.0);
                }
            }
            """.trimIndent()
        }

        private val REDUCE_SHADER = """
            #version 310 es
            precision highp float;
            precision highp int;
            layout(local_size_x = $REDUCE_GROUP_SIZE) in;
            layout(std430, binding = 0) readonly buffer Counts { uint counts[]; };
            layout(std430, binding = 1) readonly buffer Tiles { vec4 tiles[]; };
            layout(std430, binding = 2) writeonly buffer Statistics {
                vec4 metering;
                vec4 exposurePercentiles;
                float rawHist[$HIST_BINS];
            };

            shared vec4 moments[$REDUCE_GROUP_SIZE];
            shared float peaks[$REDUCE_GROUP_SIZE];
            shared uint distribution[$HIST_BINS];
            shared uint countsByBlock[$REDUCE_GROUP_SIZE];
            shared float percentiles[4];
            const int BINS_PER_LANE = $HIST_BINS / $REDUCE_GROUP_SIZE;
            const int SAMPLE_COUNT = $WIDTH * $HEIGHT;

            float mergePeak(float a, float b) {
                return min(a, b) < 0.0 ? -1.0 : max(a, b);
            }

            float valueAtRank(uint rank) {
                uint cumulative = 0u;
                for (int block = 0; block < $REDUCE_GROUP_SIZE; ++block) {
                    uint blockEnd = cumulative + countsByBlock[block];
                    if (rank >= blockEnd) {
                        cumulative = blockEnd;
                        continue;
                    }
                    int base = block * BINS_PER_LANE;
                    for (int i = base; i < base + BINS_PER_LANE; ++i) {
                        uint count = distribution[i];
                        uint binEnd = cumulative + count;
                        if (rank < binEnd) {
                            float offset = (float(rank - cumulative) + 0.5) / float(count);
                            float ev = $QUANTILE_MIN_EV + (float(i) + offset) * ($QUANTILE_EV_SPAN / float($HIST_BINS));
                            return exp2(ev);
                        }
                        cumulative = binEnd;
                    }
                }
                return 0.0;
            }

            float percentile(float fraction) {
                float rank = fraction * float(SAMPLE_COUNT - 1);
                uint lowerRank = uint(rank);
                float lower = valueAtRank(lowerRank);
                float upper = valueAtRank(lowerRank + 1u);
                return max(mix(lower, upper, fract(rank)), 0.0001);
            }

            void main() {
                int lane = int(gl_LocalInvocationIndex);
                int base = lane * BINS_PER_LANE;
                uint blockTotal = 0u;
                for (int i = base; i < base + BINS_PER_LANE; ++i) {
                    uint count = 0u;
                    uint intensityCount = 0u;
                    for (int shard = 0; shard < $HIST_SHARDS; ++shard) {
                        int index = shard * $HIST_BINS + i;
                        count += counts[index];
                        intensityCount += counts[$HISTOGRAM_UINTS + index];
                    }
                    rawHist[i] = float(count);
                    distribution[i] = intensityCount;
                    blockTotal += intensityCount;
                }
                countsByBlock[lane] = blockTotal;

                vec4 sum = vec4(0.0);
                float peak = 0.0;
                for (int tile = lane; tile < ${GROUPS_X * GROUPS_Y}; tile += $REDUCE_GROUP_SIZE) {
                    sum += tiles[2 * tile];
                    peak = mergePeak(peak, tiles[2 * tile + 1].x);
                }
                moments[lane] = sum;
                peaks[lane] = peak;
                barrier();

                if (lane < 4) {
                    const float fractions[4] = float[4](0.05, 0.50, 0.95, 0.992);
                    percentiles[lane] = percentile(fractions[lane]);
                }
                for (int stepSize = ${REDUCE_GROUP_SIZE / 2}; stepSize > 0; stepSize >>= 1) {
                    if (lane < stepSize) {
                        moments[lane] += moments[lane + stepSize];
                        peaks[lane] = mergePeak(peaks[lane], peaks[lane + stepSize]);
                    }
                    barrier();
                }
                if (lane == 0) {
                    vec4 total = moments[0];
                    float logMean = total.x / total.y;
                    float deviation = sqrt(max(total.w / total.y - logMean * logMean, 0.0));
                    metering = vec4(exp2(logMean), total.z / total.y, deviation, peaks[0]);
                    exposurePercentiles = vec4(percentiles[0], percentiles[1], percentiles[2], percentiles[3]);
                }
            }
        """.trimIndent()
    }
}
