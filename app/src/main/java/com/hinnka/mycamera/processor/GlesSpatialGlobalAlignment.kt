package com.hinnka.mycamera.processor

import android.opengl.GLES30
import android.opengl.GLES31
import com.hinnka.mycamera.utils.PLog

/**
 * GPU-only reduction of a flow grid to the robust global translation used by alignment.
 *
 * The output is a 1x1 RGBA32F texture: x/y are the selected displacement, z is peak support,
 * and w is 1 when the histogram peak was selected (0 means the clamped-bin mean was selected).
 */
internal class GlesSpatialGlobalAlignment(private val cpuCompatibleMean: Boolean = false) {
    private var histogramProgram = 0
    private var clearProgram = 0
    private var reduceProgram = 0
    private var histogramBuffer = 0
    private var outputTexture = 0
    private var initialized = false
    private var clearBinCount = -1
    private var histogramAlignment = -1
    private var histogramSize = -1
    private var histogramBinSide = -1
    private var reducePixelCount = -1
    private var reduceCpuCompatibleMean = -1

    fun init() {
        if (initialized) return
        checkLimits()
        GlesComputeWorkGroup.requireBaselineCompatible(CLEAR_SHADER, "Spatial global alignment clear")
        GlesComputeWorkGroup.requireBaselineCompatible(HISTOGRAM_SHADER, "Spatial global alignment histogram")
        GlesComputeWorkGroup.requireBaselineCompatible(REDUCE_SHADER, "Spatial global alignment reduction")
        try {
            clearProgram = linkCompute(CLEAR_SHADER, "Spatial global alignment clear")
            histogramProgram = linkCompute(HISTOGRAM_SHADER, "Spatial global alignment histogram")
            reduceProgram = linkCompute(REDUCE_SHADER, "Spatial global alignment reduction")
            clearBinCount = GLES31.glGetUniformLocation(clearProgram, "uBinCount")
            histogramAlignment = GLES31.glGetUniformLocation(histogramProgram, "uAlignment")
            histogramSize = GLES31.glGetUniformLocation(histogramProgram, "uSize")
            histogramBinSide = GLES31.glGetUniformLocation(histogramProgram, "uBinSide")
            reducePixelCount = GLES31.glGetUniformLocation(reduceProgram, "uPixelCount")
            reduceCpuCompatibleMean = GLES31.glGetUniformLocation(reduceProgram, "uCpuCompatibleMean")
            val ids = IntArray(1)
            GLES30.glGenBuffers(1, ids, 0)
            histogramBuffer = ids[0]
            GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, histogramBuffer)
            GLES31.glBufferData(
                GLES31.GL_SHADER_STORAGE_BUFFER,
                BIN_COUNT * 3 * Int.SIZE_BYTES,
                null,
                GLES30.GL_DYNAMIC_DRAW,
            )
            GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)

            GLES30.glGenTextures(1, ids, 0)
            outputTexture = ids[0]
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, outputTexture)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_NEAREST)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_NEAREST)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glTexStorage2D(GLES30.GL_TEXTURE_2D, 1, GLES30.GL_RGBA32F, 1, 1)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
            checkGl("Spatial global alignment allocation RGBA32F write-only / SSBO binding=0")
            initialized = true
        } catch (error: Throwable) {
            release()
            throw error
        }
    }

    /** Runs the reduction and returns the persistent 1x1 candidate texture. */
    fun estimate(alignmentTexture: Int, width: Int, height: Int): Int {
        init()
        require(alignmentTexture != 0 && width > 0 && height > 0)
        val pixelCount = Math.multiplyExact(width, height)
        require(pixelCount <= Int.MAX_VALUE / MAX_ABS_BIN) {
            "Spatial global alignment grid is too large for signed histogram sums"
        }

        // The preceding frame sampled outputTexture and the preceding reduction read the SSBO.
        // Complete those reads before reusing either resource for shader writes.
        GLES31.glMemoryBarrier(
            GLES31.GL_SHADER_STORAGE_BARRIER_BIT or GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT,
        )
        GLES31.glUseProgram(clearProgram)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, histogramBuffer)
        GLES31.glUniform1i(clearBinCount, BIN_COUNT)
        GLES31.glDispatchCompute(
            GlesComputeWorkGroup.imageGroupCount(BIN_SIDE),
            GlesComputeWorkGroup.imageGroupCount(BIN_SIDE),
            1,
        )
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)

        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, alignmentTexture)
        GLES31.glUseProgram(histogramProgram)
        GLES31.glUniform1i(histogramAlignment, 0)
        GLES31.glUniform2i(histogramSize, width, height)
        GLES31.glUniform1i(histogramBinSide, BIN_SIDE)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, histogramBuffer)
        GLES31.glDispatchCompute(
            GlesComputeWorkGroup.imageGroupCount(width),
            GlesComputeWorkGroup.imageGroupCount(height),
            1,
        )
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)

        GLES31.glUseProgram(reduceProgram)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, histogramBuffer)
        GLES31.glBindImageTexture(0, outputTexture, 0, false, 0, GLES31.GL_WRITE_ONLY, GLES30.GL_RGBA32F)
        GLES31.glUniform1i(reducePixelCount, pixelCount)
        GLES31.glUniform1i(reduceCpuCompatibleMean, if (cpuCompatibleMean) 1 else 0)
        GLES31.glDispatchCompute(1, 1, 1)
        GLES31.glMemoryBarrier(
            GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT or
                GLES31.GL_TEXTURE_FETCH_BARRIER_BIT,
        )
        GLES31.glBindImageTexture(0, 0, 0, false, 0, GLES31.GL_WRITE_ONLY, GLES30.GL_RGBA32F)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, 0)
        GLES31.glUseProgram(0)
        checkGl("Spatial global alignment estimate")
        return outputTexture
    }

    fun release() {
        if (histogramProgram != 0) GLES31.glDeleteProgram(histogramProgram)
        if (clearProgram != 0) GLES31.glDeleteProgram(clearProgram)
        if (reduceProgram != 0) GLES31.glDeleteProgram(reduceProgram)
        if (histogramBuffer != 0) GLES31.glDeleteBuffers(1, intArrayOf(histogramBuffer), 0)
        if (outputTexture != 0) GLES31.glDeleteTextures(1, intArrayOf(outputTexture), 0)
        histogramProgram = 0
        clearProgram = 0
        reduceProgram = 0
        histogramBuffer = 0
        outputTexture = 0
        initialized = false
        clearBinCount = -1
        histogramAlignment = -1
        histogramSize = -1
        histogramBinSide = -1
        reducePixelCount = -1
        reduceCpuCompatibleMean = -1
    }

    private fun checkLimits() {
        val value = IntArray(1)
        val group = IntArray(3)
        val version = GLES30.glGetString(GLES30.GL_VERSION).orEmpty()
        GLES31.glGetIntegeri_v(GLES31.GL_MAX_COMPUTE_WORK_GROUP_SIZE, 0, group, 0)
        GLES31.glGetIntegeri_v(GLES31.GL_MAX_COMPUTE_WORK_GROUP_SIZE, 1, group, 1)
        GLES31.glGetIntegeri_v(GLES31.GL_MAX_COMPUTE_WORK_GROUP_SIZE, 2, group, 2)
        GLES30.glGetIntegerv(GLES31.GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS, value, 0)
        val ssboBindings = value[0]
        require(value[0] >= 1) { "Spatial global alignment requires one SSBO binding" }
        GLES30.glGetIntegerv(GLES31.GL_MAX_IMAGE_UNITS, value, 0)
        val imageUnits = value[0]
        require(value[0] >= 1) { "Spatial global alignment requires one image unit" }
        GLES30.glGetIntegerv(GLES31.GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS, value, 0)
        val invocations = value[0]
        require(value[0] >= GlesComputeWorkGroup.LINEAR_SIZE &&
            group[0] >= GlesComputeWorkGroup.LINEAR_SIZE &&
            group[1] >= GlesComputeWorkGroup.IMAGE_TILE_SIZE)
        val maxBlock = LongArray(1)
        GLES30.glGetInteger64v(GLES31.GL_MAX_SHADER_STORAGE_BLOCK_SIZE, maxBlock, 0)
        require(maxBlock[0] >= BIN_COUNT.toLong() * 3L * Int.SIZE_BYTES)
        PLog.i(
            TAG,
            "Spatial global alignment GL vendor=${GLES30.glGetString(GLES30.GL_VENDOR).orEmpty()} " +
                "renderer=${GLES30.glGetString(GLES30.GL_RENDERER).orEmpty()} version=$version " +
                "group=${group.contentToString()} invocations=$invocations " +
                "ssboBindings=$ssboBindings imageUnits=$imageUnits ssboBlock=${maxBlock[0]}",
        )
    }

    private fun linkCompute(source: String, name: String): Int {
        require(source.startsWith("#version 310 es")) { "$name shader must start with #version" }
        val shader = GLES31.glCreateShader(GLES31.GL_COMPUTE_SHADER)
        GLES31.glShaderSource(shader, source)
        GLES31.glCompileShader(shader)
        val status = IntArray(1)
        GLES31.glGetShaderiv(shader, GLES31.GL_COMPILE_STATUS, status, 0)
        if (status[0] == 0) {
            val log = GLES31.glGetShaderInfoLog(shader)
            GLES31.glDeleteShader(shader)
            error("$name compile failed: $log")
        }
        val program = GLES31.glCreateProgram()
        GLES31.glAttachShader(program, shader)
        GLES31.glLinkProgram(program)
        GLES31.glDeleteShader(shader)
        GLES31.glGetProgramiv(program, GLES31.GL_LINK_STATUS, status, 0)
        if (status[0] == 0) {
            val log = GLES31.glGetProgramInfoLog(program)
            GLES31.glDeleteProgram(program)
            error("$name link failed: $log")
        }
        return program
    }

    private fun checkGl(label: String) {
        val error = GLES30.glGetError()
        check(error == GLES30.GL_NO_ERROR) { "$label GL error: 0x${error.toString(16)}" }
    }

    companion object {
        private const val TAG = "GlesSpatialGlobalAlignment"
        private const val BIN_SIDE = 129
        private const val BIN_COUNT = BIN_SIDE * BIN_SIDE
        private const val MAX_ABS_BIN = 64

        private val CLEAR_SHADER = """#version 310 es
layout(local_size_x = 8, local_size_y = 8, local_size_z = 1) in;
layout(std430, binding = 0) buffer Histogram { int values[]; };
uniform int uBinCount;
void main() {
    ivec2 p = ivec2(gl_GlobalInvocationID.xy);
    if (p.x >= 129 || p.y >= 129) return;
    int i = p.y * 129 + p.x;
    values[i] = 0;
    values[uBinCount + i] = 0;
    values[2 * uBinCount + i] = 0;
}
"""

        private val HISTOGRAM_SHADER = """#version 310 es
precision highp float;
precision highp int;
precision highp sampler2D;
layout(local_size_x = 8, local_size_y = 8, local_size_z = 1) in;
layout(std430, binding = 0) buffer Histogram { int values[]; };
uniform highp sampler2D uAlignment;
uniform ivec2 uSize;
uniform int uBinSide;
int roundAway(float v) {
    v = clamp(v, -64.0, 64.0);
    float magnitude = abs(v);
    float integral = floor(magnitude);
    int rounded = int(integral) + (magnitude - integral >= 0.5 ? 1 : 0);
    return v < 0.0 ? -rounded : rounded;
}
void main() {
    ivec2 p = ivec2(gl_GlobalInvocationID.xy);
    if (p.x >= uSize.x || p.y >= uSize.y) return;
    vec2 flow = texelFetch(uAlignment, p, 0).xy;
    int x = clamp(roundAway(flow.x), -64, 64);
    int y = clamp(roundAway(flow.y), -64, 64);
    int i = (y + 64) * uBinSide + x + 64;
    atomicAdd(values[i], 1);
    atomicAdd(values[uBinSide * uBinSide + i], x);
    atomicAdd(values[2 * uBinSide * uBinSide + i], y);
}
"""

        private val REDUCE_SHADER = """#version 310 es
precision highp float;
precision highp int;
layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
layout(std430, binding = 0) readonly buffer Histogram { int values[]; };
layout(rgba32f, binding = 0) writeonly uniform highp image2D uOutput;
uniform int uPixelCount;
uniform int uCpuCompatibleMean;
shared int support[128];
shared int bin[128];
shared int sumX[128];
shared int sumY[128];
// A mean is used only when every bin has fewer than 10 votes. Consequently count <=
// 9*129*129 and abs(sum) <= 9*129*(1+...+64): both CPU Float conversions are exact.
// Generate the normalized significand with integer long division and round ties to even,
// matching JVM Float division without relying on a driver's approximate float reciprocal.
float cpuRoundedMean(int total, int count) {
    if (total == 0) return 0.0;
    uint numerator = uint(abs(total));
    uint divisor = uint(count);
    int exponent = findMSB(numerator) - findMSB(divisor);
    if (exponent >= 0) {
        if (numerator < (divisor << uint(exponent))) --exponent;
    } else {
        if ((numerator << uint(-exponent)) < divisor) --exponent;
    }
    if (exponent >= 0) divisor <<= uint(exponent);
    else numerator <<= uint(-exponent);
    uint remainder = numerator - divisor;
    uint significand = 0x800000u;
    for (int bit = 22; bit >= 0; --bit) {
        remainder <<= 1u;
        if (remainder >= divisor) {
            remainder -= divisor;
            significand |= 1u << uint(bit);
        }
    }
    uint twiceRemainder = remainder << 1u;
    if (twiceRemainder > divisor ||
        (twiceRemainder == divisor && (significand & 1u) != 0u)) ++significand;
    uint magnitude = (uint(exponent + 127) << 23u) + (significand - 0x800000u);
    return uintBitsToFloat(magnitude | (total < 0 ? 0x80000000u : 0u));
}
void main() {
    uint lane = gl_LocalInvocationID.x;
    int bestSupport = -1;
    int bestBin = 0;
    int totalX = 0;
    int totalY = 0;
    for (int i = int(lane); i < 16641; i += 128) {
        int s = values[i];
        totalX += values[16641 + i];
        totalY += values[33282 + i];
        if (s > bestSupport) { bestSupport = s; bestBin = i; }
    }
    support[lane] = bestSupport;
    bin[lane] = bestBin;
    sumX[lane] = totalX;
    sumY[lane] = totalY;
    barrier();
    for (uint stride = 64u; stride > 0u; stride >>= 1u) {
        if (lane < stride) {
            totalX = sumX[lane] + sumX[lane + stride];
            totalY = sumY[lane] + sumY[lane + stride];
            sumX[lane] = totalX;
            sumY[lane] = totalY;
            if (support[lane + stride] > support[lane] ||
                (support[lane + stride] == support[lane] && bin[lane + stride] < bin[lane])) {
                support[lane] = support[lane + stride];
                bin[lane] = bin[lane + stride];
            }
        }
        barrier();
    }
    if (lane == 0u) {
        int peak = support[0];
        bool usePeak = peak >= 10;
        float meanX = 0.0;
        float meanY = 0.0;
        if (!usePeak) {
            meanX = uCpuCompatibleMean != 0 ? cpuRoundedMean(sumX[0], uPixelCount) : float(sumX[0]) / float(uPixelCount);
            meanY = uCpuCompatibleMean != 0 ? cpuRoundedMean(sumY[0], uPixelCount) : float(sumY[0]) / float(uPixelCount);
        }
        float peakX = float((bin[0] % 129) - 64);
        float peakY = float((bin[0] / 129) - 64);
        imageStore(uOutput, ivec2(0), vec4(usePeak ? peakX : meanX, usePeak ? peakY : meanY, float(peak), usePeak ? 1.0 : 0.0));
    }
}
"""
    }
}
