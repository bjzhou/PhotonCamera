package com.hinnka.mycamera.raw

import android.opengl.GLES30
import android.opengl.GLES31
import com.hinnka.mycamera.processor.GlesComputeWorkGroup
import com.hinnka.mycamera.processor.PhotonDehazeTuning
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer
import java.nio.ByteOrder

/**
 * GPU-resident low-frequency dehaze pipeline.
 *
 * The histogram, curve, and full-resolution application are separate compute programs so mobile
 * drivers do not compile one large dynamically-branched shader. Pixel and curve data remain on GPU.
 */
internal class PhotonDehazePipeline {
    data class Output(val textureId: Int)

    private var histogramProgram = 0
    private var curveProgram = 0
    private var applyProgram = 0
    private var histogramBufferId = 0
    private var curveBufferId = 0
    private var capabilitiesValidated = false

    private var histogramSourceLocation = -1
    private var histogramSourceSizeLocation = -1
    private var histogramLowSizeLocation = -1
    private var curveStrengthLocation = -1
    private var curveDynamicHighlightStrengthLocation = -1
    private var applySourceLocation = -1
    private var applySourceSizeLocation = -1

    private val zeroHistogramData = ByteBuffer
        .allocateDirect(HISTOGRAM_BUFFER_BYTES)
        .order(ByteOrder.nativeOrder())

    fun initialize(): Boolean {
        if (!capabilitiesValidated) {
            if (!validateCapabilities()) return false
            capabilitiesValidated = true
        }
        if (programsReady()) {
            ensureStorageBuffers()
            return histogramBufferId != 0 && curveBufferId != 0
        }

        val startedAtNs = System.nanoTime()
        if (histogramProgram == 0) {
            histogramProgram = RawGlesProgram.compileCompute(
                HISTOGRAM_COMPUTE_SHADER,
                "photonDehazeHistogram",
            )
        }
        if (curveProgram == 0) {
            curveProgram = RawGlesProgram.compileCompute(
                CURVE_COMPUTE_SHADER,
                "photonDehazeCurve",
            )
        }
        if (applyProgram == 0) {
            applyProgram = RawGlesProgram.compileCompute(
                APPLY_COMPUTE_SHADER,
                "photonDehazeApply",
            )
        }
        if (!programsReady()) return false

        histogramSourceLocation = GLES31.glGetUniformLocation(histogramProgram, "uLinearRgb")
        histogramSourceSizeLocation = GLES31.glGetUniformLocation(histogramProgram, "uSourceSize")
        histogramLowSizeLocation =
            GLES31.glGetUniformLocation(histogramProgram, "uLowFrequencySize")
        curveStrengthLocation = GLES31.glGetUniformLocation(curveProgram, "uStrength")
        curveDynamicHighlightStrengthLocation =
            GLES31.glGetUniformLocation(curveProgram, "uDynamicHighlightStrength")
        applySourceLocation = GLES31.glGetUniformLocation(applyProgram, "uLinearRgb")
        applySourceSizeLocation = GLES31.glGetUniformLocation(applyProgram, "uSourceSize")
        check(
            histogramSourceLocation >= 0 && histogramSourceSizeLocation >= 0 &&
                histogramLowSizeLocation >= 0 && curveStrengthLocation >= 0 &&
                curveDynamicHighlightStrengthLocation >= 0 && applySourceLocation >= 0 &&
                applySourceSizeLocation >= 0,
        ) { "Photon dehaze compute uniforms are incomplete" }

        ensureStorageBuffers()
        PLog.d(
            TAG,
            "Photon dehaze programs initialized histogramChars=${HISTOGRAM_COMPUTE_SHADER.length} " +
                "curveChars=${CURVE_COMPUTE_SHADER.length} applyChars=${APPLY_COMPUTE_SHADER.length} " +
                "tookMs=${(System.nanoTime() - startedAtNs) / 1_000_000L}",
        )
        return histogramBufferId != 0 && curveBufferId != 0
    }

    fun render(
        sourceTextureId: Int,
        targetTextureId: Int,
        width: Int,
        height: Int,
        tuning: PhotonDehazeTuning,
    ): Output? {
        val startedAtNs = System.nanoTime()
        val normalizedTuning = tuning.normalized()
        require(normalizedTuning.isActive) { "Photon dehaze render requested while disabled" }
        require(sourceTextureId != 0 && targetTextureId != 0) {
            "Photon dehaze requires valid source and destination textures"
        }
        require(sourceTextureId != targetTextureId) {
            "Photon dehaze requires a linear RGB ping-pong destination"
        }
        require(width > 0 && height > 0) { "Invalid Photon dehaze dimensions" }
        if (!initialize()) return null

        val lowWidth = (width + DOWNSAMPLE_FACTOR - 1) / DOWNSAMPLE_FACTOR
        val lowHeight = (height + DOWNSAMPLE_FACTOR - 1) / DOWNSAMPLE_FACTOR
        resetHistogram()
        GLES31.glActiveTexture(GLES31.GL_TEXTURE0)
        GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, sourceTextureId)

        // LinearRcd writes through a framebuffer; histogram consumes that texture by sampler.
        GLES31.glMemoryBarrier(
            GLES31.GL_FRAMEBUFFER_BARRIER_BIT or GLES31.GL_TEXTURE_FETCH_BARRIER_BIT,
        )
        GLES31.glUseProgram(histogramProgram)
        GLES31.glUniform1i(histogramSourceLocation, 0)
        GLES31.glUniform2i(histogramSourceSizeLocation, width, height)
        GLES31.glUniform2i(histogramLowSizeLocation, lowWidth, lowHeight)
        GLES31.glBindBufferBase(
            GLES31.GL_SHADER_STORAGE_BUFFER,
            HISTOGRAM_BUFFER_BINDING,
            histogramBufferId,
        )
        GLES31.glDispatchCompute(
            GlesComputeWorkGroup.groupCount(lowWidth, HISTOGRAM_SAMPLES_PER_GROUP),
            lowHeight,
            1,
        )
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)

        GLES31.glUseProgram(curveProgram)
        GLES31.glUniform1f(curveStrengthLocation, normalizedTuning.strength)
        GLES31.glUniform1f(
            curveDynamicHighlightStrengthLocation,
            normalizedTuning.dynamicHighlightStrength,
        )
        GLES31.glBindBufferBase(
            GLES31.GL_SHADER_STORAGE_BUFFER,
            HISTOGRAM_BUFFER_BINDING,
            histogramBufferId,
        )
        GLES31.glBindBufferBase(
            GLES31.GL_SHADER_STORAGE_BUFFER,
            CURVE_BUFFER_BINDING,
            curveBufferId,
        )
        GLES31.glDispatchCompute(1, 1, 1)
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)

        GLES31.glUseProgram(applyProgram)
        GLES31.glUniform1i(applySourceLocation, 0)
        GLES31.glUniform2i(applySourceSizeLocation, width, height)
        GLES31.glBindBufferBase(
            GLES31.GL_SHADER_STORAGE_BUFFER,
            APPLY_CURVE_BUFFER_BINDING,
            curveBufferId,
        )
        GLES31.glBindImageTexture(
            OUTPUT_IMAGE_BINDING,
            targetTextureId,
            0,
            false,
            0,
            GLES31.GL_WRITE_ONLY,
            GLES30.GL_RGBA16F,
        )
        GLES31.glDispatchCompute(
            GlesComputeWorkGroup.linearGroupCount(width),
            height,
            1,
        )
        GLES31.glMemoryBarrier(
            GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT or
                GLES31.GL_TEXTURE_FETCH_BARRIER_BIT or
                GLES31.GL_FRAMEBUFFER_BARRIER_BIT,
        )

        unbindPipelineResources()
        requireNoGlError("GPU-resident histogram/curve/apply")
        PLog.i(
            TAG,
            "Photon dehaze submitted size=${width}x$height low=${lowWidth}x$lowHeight " +
                "maxSamples=${lowWidth * lowHeight} path=GPU_COMPUTE_BATCHED_HISTOGRAM " +
                "curveScanBins=${HAZE_HISTOGRAM_SIZE + HIGHLIGHT_HISTOGRAM_SIZE} " +
                "cpuReadback=false strength=${normalizedTuning.strength} " +
                "dynamicHighlightStrength=${normalizedTuning.dynamicHighlightStrength} " +
                "submitMs=${(System.nanoTime() - startedAtNs) / 1_000_000L}",
        )
        return Output(targetTextureId)
    }

    fun release() {
        if (histogramProgram != 0) GLES31.glDeleteProgram(histogramProgram)
        if (curveProgram != 0) GLES31.glDeleteProgram(curveProgram)
        if (applyProgram != 0) GLES31.glDeleteProgram(applyProgram)
        histogramProgram = 0
        curveProgram = 0
        applyProgram = 0
        val buffers = intArrayOf(histogramBufferId, curveBufferId).filter { it != 0 }.toIntArray()
        if (buffers.isNotEmpty()) GLES31.glDeleteBuffers(buffers.size, buffers, 0)
        histogramBufferId = 0
        curveBufferId = 0
        histogramSourceLocation = -1
        histogramSourceSizeLocation = -1
        histogramLowSizeLocation = -1
        curveStrengthLocation = -1
        curveDynamicHighlightStrengthLocation = -1
        applySourceLocation = -1
        applySourceSizeLocation = -1
        capabilitiesValidated = false
    }

    private fun programsReady(): Boolean =
        histogramProgram != 0 && curveProgram != 0 && applyProgram != 0

    private fun ensureStorageBuffers() {
        if (histogramBufferId != 0 && curveBufferId != 0) return
        val buffers = IntArray(2)
        GLES31.glGenBuffers(2, buffers, 0)
        histogramBufferId = buffers[0]
        curveBufferId = buffers[1]
        check(histogramBufferId != 0 && curveBufferId != 0) {
            "Unable to allocate Photon dehaze storage buffers"
        }

        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, histogramBufferId)
        zeroHistogramData.clear()
        GLES31.glBufferData(
            GLES31.GL_SHADER_STORAGE_BUFFER,
            HISTOGRAM_BUFFER_BYTES,
            zeroHistogramData,
            GLES31.GL_DYNAMIC_DRAW,
        )
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, curveBufferId)
        GLES31.glBufferData(
            GLES31.GL_SHADER_STORAGE_BUFFER,
            CURVE_BUFFER_BYTES,
            null,
            GLES31.GL_DYNAMIC_DRAW,
        )
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
        requireNoGlError("storage buffer allocation")
    }

    private fun resetHistogram() {
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, histogramBufferId)
        zeroHistogramData.clear()
        GLES31.glBufferSubData(
            GLES31.GL_SHADER_STORAGE_BUFFER,
            0,
            HISTOGRAM_BUFFER_BYTES,
            zeroHistogramData,
        )
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
        GLES31.glMemoryBarrier(
            GLES31.GL_BUFFER_UPDATE_BARRIER_BIT or GLES31.GL_SHADER_STORAGE_BARRIER_BIT,
        )
    }

    private fun unbindPipelineResources() {
        GLES31.glBindImageTexture(
            OUTPUT_IMAGE_BINDING,
            0,
            0,
            false,
            0,
            GLES31.GL_WRITE_ONLY,
            GLES30.GL_RGBA16F,
        )
        GLES31.glBindBufferBase(
            GLES31.GL_SHADER_STORAGE_BUFFER,
            HISTOGRAM_BUFFER_BINDING,
            0,
        )
        GLES31.glBindBufferBase(
            GLES31.GL_SHADER_STORAGE_BUFFER,
            CURVE_BUFFER_BINDING,
            0,
        )
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
        GLES31.glActiveTexture(GLES31.GL_TEXTURE0)
        GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, 0)
    }

    private fun validateCapabilities(): Boolean {
        val maxSsboBindings = queryInt(GLES31.GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS)
        val maxComputeSsboBlocks = queryInt(GLES31.GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS)
        val maxSsboBlockSize = queryInt(GLES31.GL_MAX_SHADER_STORAGE_BLOCK_SIZE)
        val maxComputeImages = queryInt(GLES31.GL_MAX_COMPUTE_IMAGE_UNIFORMS)
        val maxSharedBytes = queryInt(GLES31.GL_MAX_COMPUTE_SHARED_MEMORY_SIZE)
        val valid = maxSsboBindings >= 2 &&
            maxComputeSsboBlocks >= 2 &&
            maxSsboBlockSize >= HISTOGRAM_BUFFER_BYTES &&
            maxComputeImages >= 1 &&
            maxSharedBytes >= SHARED_HISTOGRAM_BYTES
        if (!valid) {
            PLog.e(
                TAG,
                "Photon dehaze GPU capabilities insufficient: ssboBindings=$maxSsboBindings " +
                    "computeSsboBlocks=$maxComputeSsboBlocks ssboBlockBytes=$maxSsboBlockSize " +
                    "computeImages=$maxComputeImages sharedBytes=$maxSharedBytes " +
                    "requiredHistogramBytes=$HISTOGRAM_BUFFER_BYTES " +
                    "requiredSharedBytes=$SHARED_HISTOGRAM_BYTES",
            )
        }
        return valid
    }

    private fun queryInt(parameter: Int): Int {
        val value = IntArray(1)
        GLES31.glGetIntegerv(parameter, value, 0)
        return value[0]
    }

    private fun requireNoGlError(operation: String) {
        val errors = buildList {
            var error = GLES31.glGetError()
            while (error != GLES31.GL_NO_ERROR) {
                add("0x${error.toString(16)}")
                error = GLES31.glGetError()
            }
        }
        check(errors.isEmpty()) { "Photon dehaze $operation failed: ${errors.joinToString()}" }
    }

    companion object {
        private const val TAG = "PhotonDehazePipeline"
        const val DOWNSAMPLE_FACTOR = 8
        private const val HAZE_HISTOGRAM_SIZE = 877
        private const val HIGHLIGHT_HISTOGRAM_SIZE = 5251
        private const val HISTOGRAM_ELEMENT_COUNT =
            HAZE_HISTOGRAM_SIZE + HIGHLIGHT_HISTOGRAM_SIZE + 1
        private const val HISTOGRAM_BUFFER_BYTES = HISTOGRAM_ELEMENT_COUNT * Int.SIZE_BYTES
        private const val CURVE_VALUE_COUNT = 8
        private const val CURVE_BUFFER_BYTES = CURVE_VALUE_COUNT * Float.SIZE_BYTES
        private const val HISTOGRAM_SAMPLES_PER_GROUP = 8
        private const val SOURCE_PIXELS_PER_SAMPLE = DOWNSAMPLE_FACTOR * DOWNSAMPLE_FACTOR
        private const val SHARED_HISTOGRAM_BYTES =
            HISTOGRAM_SAMPLES_PER_GROUP * SOURCE_PIXELS_PER_SAMPLE * 4 * Float.SIZE_BYTES +
                HISTOGRAM_SAMPLES_PER_GROUP * 3 * Int.SIZE_BYTES
        private const val HISTOGRAM_BUFFER_BINDING = 0
        private const val CURVE_BUFFER_BINDING = 1
        private const val APPLY_CURVE_BUFFER_BINDING = 0
        private const val OUTPUT_IMAGE_BINDING = 0

        val HISTOGRAM_COMPUTE_SHADER = """
            #version 310 es
            precision highp float;
            precision highp int;
            precision highp sampler2D;

            layout(local_size_x = 128, local_size_y = 1) in;
            uniform sampler2D uLinearRgb;
            uniform ivec2 uSourceSize;
            uniform ivec2 uLowFrequencySize;

            layout(std430, binding = 0) buffer HistogramBuffer {
                uint hazeHistogram[$HAZE_HISTOGRAM_SIZE];
                uint highlightHistogram[$HIGHLIGHT_HISTOGRAM_SIZE];
                uint sampleCount;
            } histogram;

            shared vec4 sharedLinearRgb[512];
            shared uint sharedHazeBins[8];
            shared uint sharedHighlightBins[8];
            shared uint sharedValidSamples[8];
            const float SIGNAL_MAX = 4095.0;

            int quantize12(float value) {
                return int(floor(clamp(value, 0.0, 1.0) * SIGNAL_MAX + 0.5));
            }

            void main() {
                uint lane = gl_LocalInvocationID.x;
                uint sampleIndex = lane / 16u;
                uint sampleLane = lane - sampleIndex * 16u;
                ivec2 lowPosition = ivec2(
                    gl_WorkGroupID.x * 8u + sampleIndex,
                    gl_WorkGroupID.y
                );
                bool lowSampleValid = all(lessThan(lowPosition, uLowFrequencySize));
                for (uint loadIndex = 0u; loadIndex < 4u; ++loadIndex) {
                    uint pixelIndex = sampleLane + loadIndex * 16u;
                    ivec2 localPixel = ivec2(pixelIndex % 8u, pixelIndex / 8u);
                    ivec2 sourcePosition = lowPosition * 8 + localPixel;
                    bool sourceValid = lowSampleValid &&
                        all(lessThan(sourcePosition, uSourceSize));
                    uint sharedIndex = sampleIndex * 64u + pixelIndex;
                    sharedLinearRgb[sharedIndex] = sourceValid
                        ? vec4(texelFetch(uLinearRgb, sourcePosition, 0).rgb, 1.0)
                        : vec4(0.0);
                }
                barrier();
                if (sampleLane == 0u) {
                    vec4 sum = vec4(0.0);
                    uint sharedBase = sampleIndex * 64u;
                    for (uint index = 0u; index < 64u; ++index) {
                        sum += sharedLinearRgb[sharedBase + index];
                    }
                    vec3 rgb = sum.w > 0.0 ? sum.rgb / sum.w : vec3(0.0);
                    bool valid = sum.w > 0.0 && !any(isnan(rgb)) && !any(isinf(rgb));
                    sharedValidSamples[sampleIndex] = valid ? 1u : 0u;
                    if (valid) {
                        int r = quantize12(rgb.r);
                        int g = quantize12(rgb.g);
                        int b = quantize12(rgb.b);
                        int minimum = min(r, min(g, b));
                        int maximum = max(r, max(g, b));
                        sharedHazeBins[sampleIndex] = uint(
                            clamp(r + g + b, 0, $HAZE_HISTOGRAM_SIZE - 1)
                        );
                        sharedHighlightBins[sampleIndex] = uint(clamp(
                            maximum + (maximum - minimum) / 8,
                            0,
                            $HIGHLIGHT_HISTOGRAM_SIZE - 1
                        ));
                    }
                }
                barrier();
                if (lane != 0u) return;

                uint validCount = 0u;
                for (uint index = 0u; index < 8u; ++index) {
                    validCount += sharedValidSamples[index];
                    if (sharedValidSamples[index] == 0u) continue;

                    uint hazeBin = sharedHazeBins[index];
                    bool firstHaze = true;
                    for (uint previous = 0u; previous < index; ++previous) {
                        if (sharedValidSamples[previous] != 0u &&
                            sharedHazeBins[previous] == hazeBin) firstHaze = false;
                    }
                    if (firstHaze) {
                        uint count = 1u;
                        for (uint next = index + 1u; next < 8u; ++next) {
                            if (sharedValidSamples[next] != 0u &&
                                sharedHazeBins[next] == hazeBin) count += 1u;
                        }
                        atomicAdd(histogram.hazeHistogram[hazeBin], count);
                    }

                    uint highlightBin = sharedHighlightBins[index];
                    bool firstHighlight = true;
                    for (uint previous = 0u; previous < index; ++previous) {
                        if (sharedValidSamples[previous] != 0u &&
                            sharedHighlightBins[previous] == highlightBin) firstHighlight = false;
                    }
                    if (firstHighlight) {
                        uint count = 1u;
                        for (uint next = index + 1u; next < 8u; ++next) {
                            if (sharedValidSamples[next] != 0u &&
                                sharedHighlightBins[next] == highlightBin) count += 1u;
                        }
                        atomicAdd(histogram.highlightHistogram[highlightBin], count);
                    }
                }
                atomicAdd(histogram.sampleCount, validCount);
            }
        """.trimIndent()

        val CURVE_COMPUTE_SHADER = """
            #version 310 es
            precision highp float;
            precision highp int;

            layout(local_size_x = 128, local_size_y = 1) in;
            uniform float uStrength;
            uniform float uDynamicHighlightStrength;

            layout(std430, binding = 0) readonly buffer HistogramBuffer {
                uint hazeHistogram[$HAZE_HISTOGRAM_SIZE];
                uint highlightHistogram[$HIGHLIGHT_HISTOGRAM_SIZE];
                uint sampleCount;
            } histogram;
            layout(std430, binding = 1) buffer CurveBuffer {
                float values[$CURVE_VALUE_COUNT];
            } curve;

            const float SIGNAL_MAX = 4095.0;
            const float HAZE_QUANTILE = 0.001;
            const float HAZE_QUANTILE_LOW = 0.1;
            const float HAZE_QUANTILE_HIGH = 1.9;
            const float HAZE_LEVEL_LIMIT = 172.0;
            const float HAZE_POINT_LOW_SCALE = 0.6;
            const float HAZE_POINT_HIGH_SCALE = 1.2;
            const float HAZE_DAMPING = 0.98;
            const float HIGHLIGHT_QUANTILE = 0.993;
            const float HIGHLIGHT_TARGET = 0.88;
            const float HIGHLIGHT_WINDOW_MIN = 0.01;
            const float HIGHLIGHT_WINDOW_MAX = 0.05;
            const float HIGHLIGHT_SCALE_MIN = 0.78;
            const float HIGHLIGHT_SCALE_MAX = 1.7;
            const float MIN_HIGHLIGHT_LEVEL = 1e-6;
            const float MIN_CURVE_INTERVAL = 1e-6;

            float interpolateQuantile(int index, float target, uint previous, uint cumulative) {
                if (index == 0) return 0.0;
                if (cumulative <= previous) return float(index);
                float fraction = clamp(
                    (target - float(previous)) / (float(cumulative) - float(previous)),
                    0.0,
                    1.0
                );
                return float(index) - 1.0 + fraction;
            }

            void main() {
                if (gl_GlobalInvocationID.x != 0u) return;
                uint total = histogram.sampleCount;
                if (total == 0u) {
                    curve.values[0] = 0.0;
                    curve.values[1] = 0.0;
                    curve.values[2] = 1.0;
                    curve.values[3] = 0.0;
                    curve.values[4] = 1.0;
                    curve.values[5] = 0.0;
                    curve.values[6] = 1.0;
                    curve.values[7] = 0.0;
                    return;
                }

                float distanceFromWhite = 1.0 - HIGHLIGHT_QUANTILE;
                float adaptiveWindowMix = clamp(distanceFromWhite * 5.0, 0.0, 1.0);
                float maximumHalfWindow = HIGHLIGHT_WINDOW_MIN +
                    (HIGHLIGHT_WINDOW_MAX - HIGHLIGHT_WINDOW_MIN) * adaptiveWindowMix;
                float halfWindow = min(distanceFromWhite, maximumHalfWindow);
                int nextHighlight = 0;
                uint highlightCumulative = 0u;
                float highlightSum = 0.0;
                float highlightTarget =
                    (HIGHLIGHT_QUANTILE - halfWindow) * float(total);
                for (int index = 0;
                    index < $HIGHLIGHT_HISTOGRAM_SIZE && nextHighlight < 5;
                    ++index
                ) {
                    uint previous = highlightCumulative;
                    uint binCount = histogram.highlightHistogram[index];
                    highlightCumulative += binCount;
                    while (nextHighlight < 5 &&
                        float(highlightCumulative) >= highlightTarget
                    ) {
                        highlightSum += interpolateQuantile(
                            index,
                            highlightTarget,
                            previous,
                            highlightCumulative
                        ) / SIGNAL_MAX;
                        nextHighlight += 1;
                        if (nextHighlight < 5) {
                            float position = float(nextHighlight) / 4.0;
                            highlightTarget = (
                                (HIGHLIGHT_QUANTILE - halfWindow) +
                                    2.0 * halfWindow * position
                            ) * float(total);
                        }
                    }
                }
                while (nextHighlight < 5) {
                    highlightSum += float($HIGHLIGHT_HISTOGRAM_SIZE - 1) / SIGNAL_MAX;
                    nextHighlight += 1;
                }
                float meanHighlight = highlightSum / 5.0;
                float rawScale = meanHighlight > MIN_HIGHLIGHT_LEVEL
                    ? HIGHLIGHT_TARGET / meanHighlight
                    : HIGHLIGHT_SCALE_MAX;
                float detectedHighlightScale = clamp(
                    rawScale,
                    HIGHLIGHT_SCALE_MIN,
                    HIGHLIGHT_SCALE_MAX
                );
                float highlightScale = 1.0 +
                    (detectedHighlightScale - 1.0) * uDynamicHighlightStrength;

                int nextHaze = 0;
                uint hazeCumulative = 0u;
                float hazeSum = 0.0;
                float hazeTarget = HAZE_QUANTILE * HAZE_QUANTILE_LOW * float(total);
                for (int index = 0; index < $HAZE_HISTOGRAM_SIZE && nextHaze < 20; ++index) {
                    uint previous = hazeCumulative;
                    uint binCount = histogram.hazeHistogram[index];
                    hazeCumulative += binCount;
                    while (nextHaze < 20 && float(hazeCumulative) >= hazeTarget) {
                        float summedRgbBin = interpolateQuantile(
                            index,
                            hazeTarget,
                            previous,
                            hazeCumulative
                        );
                        hazeSum += min(summedRgbBin / 3.0, HAZE_LEVEL_LIMIT);
                        nextHaze += 1;
                        if (nextHaze < 20) {
                            float position = float(nextHaze) / 19.0;
                            float multiplier = HAZE_QUANTILE_LOW +
                                (HAZE_QUANTILE_HIGH - HAZE_QUANTILE_LOW) * position;
                            hazeTarget = HAZE_QUANTILE * multiplier * float(total);
                        }
                    }
                }
                while (nextHaze < 20) {
                    hazeSum += min(
                        float($HAZE_HISTOGRAM_SIZE - 1) / 3.0,
                        HAZE_LEVEL_LIMIT
                    );
                    nextHaze += 1;
                }
                float hazeLevel = hazeSum / 20.0;
                float hazeBase = highlightScale * hazeLevel * HAZE_DAMPING * uStrength;
                float hazePointLow = clamp(
                    HAZE_POINT_LOW_SCALE * hazeBase / SIGNAL_MAX,
                    0.0,
                    1.0
                );
                float hazePointHigh = clamp(
                    HAZE_POINT_HIGH_SCALE * hazeBase / SIGNAL_MAX,
                    hazePointLow,
                    1.0
                );
                float interval = hazePointHigh - hazePointLow;
                float quadraticCoefficient;
                float shoulderValue;
                float linearSlope;
                if (interval > MIN_CURVE_INTERVAL) {
                    quadraticCoefficient = 1.0 /
                        (interval * interval + 2.0 * (1.0 - hazePointHigh) * interval);
                    shoulderValue = interval * interval * quadraticCoefficient;
                    linearSlope = hazePointHigh < 1.0
                        ? (1.0 - shoulderValue) / (1.0 - hazePointHigh)
                        : 0.0;
                } else {
                    quadraticCoefficient = 0.0;
                    shoulderValue = 0.0;
                    linearSlope = 1.0;
                }
                curve.values[0] = hazePointLow;
                curve.values[1] = hazePointHigh;
                curve.values[2] = highlightScale;
                curve.values[3] = quadraticCoefficient;
                curve.values[4] = linearSlope;
                curve.values[5] = shoulderValue;
                curve.values[6] = detectedHighlightScale;
                curve.values[7] = float(total);
            }
        """.trimIndent()

        val APPLY_COMPUTE_SHADER = """
            #version 310 es
            precision highp float;
            precision highp int;
            precision highp sampler2D;
            precision highp image2D;

            layout(local_size_x = 128, local_size_y = 1) in;
            uniform sampler2D uLinearRgb;
            uniform ivec2 uSourceSize;
            layout(rgba16f, binding = 0) writeonly uniform highp image2D uOutput;
            layout(std430, binding = 0) readonly buffer CurveBuffer {
                float values[$CURVE_VALUE_COUNT];
            } curve;

            void main() {
                ivec2 position = ivec2(
                    gl_WorkGroupID.x * 128u + gl_LocalInvocationID.x,
                    gl_WorkGroupID.y
                );
                if (any(greaterThanEqual(position, uSourceSize))) return;
                vec3 rgb = clamp(texelFetch(uLinearRgb, position, 0).rgb, vec3(0.0), vec3(1.0));
                float hazePointLow = curve.values[0];
                float hazePointHigh = curve.values[1];
                float highlightScale = curve.values[2];
                float quadraticCoefficient = curve.values[3];
                float linearSlope = curve.values[4];
                float shoulderValue = curve.values[5];
                float luminance = (rgb.r + rgb.g + rgb.b) * (1.0 / 3.0);
                float scaled = min(luminance * highlightScale, 1.0);
                float mapped;
                if (scaled < hazePointHigh) {
                    float distance = max(scaled - hazePointLow, 0.0);
                    mapped = distance * distance * quadraticCoefficient;
                } else {
                    mapped = shoulderValue + (scaled - hazePointHigh) * linearSlope;
                }
                float gain = clamp(mapped, 0.0, 1.0) / max(luminance, 1e-6);
                imageStore(
                    uOutput,
                    position,
                    vec4(clamp(rgb * gain, vec3(0.0), vec3(1.0)), 1.0)
                );
            }
        """.trimIndent()
    }
}
