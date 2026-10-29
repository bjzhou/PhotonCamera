package com.hinnka.mycamera.raw.denoise

import android.opengl.GLES30
import android.opengl.GLES31
import android.util.Half
import com.hinnka.mycamera.raw.RawDenoiseHistory
import com.hinnka.mycamera.raw.RawDenoisePipeline
import com.hinnka.mycamera.raw.RawGlesProgram
import com.hinnka.mycamera.raw.RawMergeVarianceMap
import java.nio.ByteBuffer
import java.nio.ByteOrder

/**
 * §2.2 merge variance ratios (docs/photon-multiscale-denoise.md).
 *
 * Every frame is described by its camera-RGB read / shot coefficients already scaled to the
 * reference exposure; the reference frame's coefficients are the profile the denoiser reads from
 * the metadata. A frame's weight at a pixel is its global weight times its acceptance there, read
 * from the same weight texture the merge shader multiplies in. The per-pixel sums are accumulated
 * on the GPU on the RAW/4 grid of the [imageWidth] × [imageHeight] frame and reduced to the
 * RAW/32 map by averaging the ratios of 8 × 8 cells. The nominal scalars assume every frame is
 * accepted everywhere. A merge output multiplied by `outputScale` scales read variance by its
 * square and the shot coefficient by itself.
 *
 * Must be created, fed and finished on the GL thread of the merge.
 */
internal class PhotonMergeNoise(
    private val pipeline: RawDenoisePipeline,
    referenceRead: FloatArray,
    referenceShot: FloatArray,
    imageWidth: Int,
    imageHeight: Int,
) {
    private val referenceRead = referenceRead.sum()
    private val referenceShot = referenceShot.sum()
    private var weightSum = 0.0
    private var readSum = 0.0
    private var shotSum = 0.0

    private val gridWidth = (imageWidth + GRID_STEP - 1) / GRID_STEP
    private val gridHeight = (imageHeight + GRID_STEP - 1) / GRID_STEP
    private val mapWidth = (gridWidth + MAP_CELLS - 1) / MAP_CELLS
    private val mapHeight = (gridHeight + MAP_CELLS - 1) / MAP_CELLS
    private var accumulateProgram = 0
    private var reduceProgram = 0
    private val buffers = IntArray(2)
    private var frames = 0

    init {
        require(imageWidth > 0 && imageHeight > 0)
        accumulateProgram = RawGlesProgram.compileCompute(ACCUMULATE, "PhotonMergeNoiseAccumulate")
        reduceProgram = RawGlesProgram.compileCompute(REDUCE, "PhotonMergeNoiseReduce")
        check(accumulateProgram != 0 && reduceProgram != 0) { "Photon merge noise programs are unavailable" }
        GLES31.glGenBuffers(2, buffers, 0)
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, buffers[0])
        GLES31.glBufferData(GLES31.GL_SHADER_STORAGE_BUFFER, gridWidth * gridHeight * 16, null, GLES31.GL_DYNAMIC_COPY)
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, buffers[1])
        GLES31.glBufferData(GLES31.GL_SHADER_STORAGE_BUFFER, mapWidth * mapHeight * 8, null, GLES31.GL_STREAM_READ)
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
    }

    /**
     * [acceptance]: the frame's weight texture as the merge samples it (R channel in [0, 1]);
     * 0 for a frame merged without one (weight 1 everywhere).
     */
    fun add(weight: Float, read: FloatArray, shot: FloatArray, acceptance: Int) {
        require(weight.isFinite() && weight > 0f) { "Merge frame weight must be positive, got $weight" }
        val readRatio = ratio(read.sum(), referenceRead)
        val shotRatio = ratio(shot.sum(), referenceShot)
        val w = weight.toDouble()
        weightSum += w
        readSum += w * w * readRatio
        shotSum += w * w * shotRatio

        GLES31.glUseProgram(accumulateProgram)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, buffers[0])
        GLES31.glActiveTexture(GLES31.GL_TEXTURE0)
        GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, acceptance)
        GLES31.glUniform1i(location(accumulateProgram, "uAcceptance"), 0)
        GLES31.glUniform1i(location(accumulateProgram, "uHasAcceptance"), if (acceptance != 0) 1 else 0)
        GLES31.glUniform2i(location(accumulateProgram, "uGrid"), gridWidth, gridHeight)
        GLES31.glUniform3f(location(accumulateProgram, "uFrame"), weight, readRatio.toFloat(), shotRatio.toFloat())
        GLES31.glUniform1i(location(accumulateProgram, "uFirst"), if (frames == 0) 1 else 0)
        dispatch(gridWidth, gridHeight)
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
        GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, 0)
        GLES31.glUseProgram(0)
        frames++
    }

    /** Reduces the sums to the RAW/32 map, reads it back (a few hundred KB) and releases the GPU state. */
    /** [referenceSignal]: the reference frame's mean green signal (MGC EstimateSnr's mean). */
    fun history(referenceSignal: Float, outputScale: Float = 1f): RawDenoiseHistory {
        check(frames > 0) { "No merge frame was added" }
        val readScale = outputScale * outputScale
        val norm = weightSum * weightSum
        try {
            GLES31.glUseProgram(reduceProgram)
            GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, buffers[0])
            GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 1, buffers[1])
            GLES31.glUniform2i(location(reduceProgram, "uGrid"), gridWidth, gridHeight)
            GLES31.glUniform2i(location(reduceProgram, "uMap"), mapWidth, mapHeight)
            GLES31.glUniform2f(location(reduceProgram, "uScale"), readScale, outputScale)
            dispatch(mapWidth, mapHeight)
            GLES31.glMemoryBarrier(GLES31.GL_BUFFER_UPDATE_BARRIER_BIT)
            GLES31.glUseProgram(0)
            val values = readMap()
            return RawDenoiseHistory(
                pipeline = pipeline,
                mergeRead = (readScale * readSum / norm).toFloat(),
                mergeShot = (outputScale * shotSum / norm).toFloat(),
                mergeMap = RawMergeVarianceMap(mapWidth, mapHeight, values),
                signal = referenceSignal * outputScale,
            )
        } finally {
            release()
        }
    }

    fun release() {
        if (accumulateProgram != 0) GLES31.glDeleteProgram(accumulateProgram)
        if (reduceProgram != 0) GLES31.glDeleteProgram(reduceProgram)
        accumulateProgram = 0
        reduceProgram = 0
        if (buffers[0] != 0) GLES31.glDeleteBuffers(2, buffers, 0)
        buffers.fill(0)
    }

    /** Values are rounded to float16, the persisted precision, so later passes see the same map. */
    private fun readMap(): FloatArray {
        val count = mapWidth * mapHeight * 2
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, buffers[1])
        try {
            val mapped = GLES31.glMapBufferRange(GLES31.GL_SHADER_STORAGE_BUFFER, 0, count * 4, GLES31.GL_MAP_READ_BIT)
                as? ByteBuffer ?: error("Photon merge variance map readback failed")
            val floats = mapped.order(ByteOrder.nativeOrder()).asFloatBuffer()
            return FloatArray(count) { Half.toFloat(Half.toHalf(floats.get(it))) }
        } finally {
            GLES31.glUnmapBuffer(GLES31.GL_SHADER_STORAGE_BUFFER)
            GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
        }
    }

    private fun dispatch(width: Int, height: Int) {
        GLES31.glDispatchCompute((width + LOCAL - 1) / LOCAL, (height + LOCAL - 1) / LOCAL, 1)
    }

    private fun location(program: Int, name: String) = GLES31.glGetUniformLocation(program, name)

    private fun ratio(value: Float, reference: Float): Double =
        if (reference > 0f) value.toDouble() / reference else 1.0

    private companion object {
        const val GRID_STEP = 4
        const val MAP_CELLS = 8
        const val LOCAL = 8

        // Per RAW/4 cell: (Σ w, Σ w² ρ_r, Σ w² ρ_s), w = global weight × acceptance.
        val ACCUMULATE = """
            #version 310 es
            precision highp float;
            precision highp int;
            precision highp sampler2D;
            layout(local_size_x = $LOCAL, local_size_y = $LOCAL) in;
            layout(std430, binding = 0) buffer Sums { vec4 sums[]; };
            uniform sampler2D uAcceptance;
            uniform int uHasAcceptance;
            uniform ivec2 uGrid;
            uniform vec3 uFrame;           // global weight, ρ_r, ρ_s
            uniform int uFirst;

            void main() {
                ivec2 c = ivec2(gl_GlobalInvocationID.xy);
                if (any(greaterThanEqual(c, uGrid))) return;
                float a = uHasAcceptance == 1
                    ? clamp(texture(uAcceptance, (vec2(c) + 0.5) / vec2(uGrid)).r, 0.0, 1.0)
                    : 1.0;
                float w = uFrame.x * a;
                vec4 v = vec4(w, w * w * uFrame.y, w * w * uFrame.z, 0.0);
                int i = c.y * uGrid.x + c.x;
                sums[i] = uFirst == 1 ? v : sums[i] + v;
            }
        """.trimIndent()

        // Per RAW/32 cell: mean over its RAW/4 cells of (e² Σw²ρ_r, e Σw²ρ_s) / (Σw)².
        val REDUCE = """
            #version 310 es
            precision highp float;
            precision highp int;
            layout(local_size_x = $LOCAL, local_size_y = $LOCAL) in;
            layout(std430, binding = 0) readonly buffer Sums { vec4 sums[]; };
            layout(std430, binding = 1) writeonly buffer Map { vec2 ratios[]; };
            uniform ivec2 uGrid;
            uniform ivec2 uMap;
            uniform vec2 uScale;           // e², e

            void main() {
                ivec2 m = ivec2(gl_GlobalInvocationID.xy);
                if (any(greaterThanEqual(m, uMap))) return;
                vec2 total = vec2(0.0);
                float count = 0.0;
                for (int j = 0; j < $MAP_CELLS; ++j) {
                    for (int i = 0; i < $MAP_CELLS; ++i) {
                        ivec2 c = m * $MAP_CELLS + ivec2(i, j);
                        if (any(greaterThanEqual(c, uGrid))) continue;
                        vec4 s = sums[c.y * uGrid.x + c.x];
                        // No frame weight at all: the merge keeps the reference frame there.
                        total += s.x > 0.0 ? s.yz / (s.x * s.x) : vec2(1.0);
                        count += 1.0;
                    }
                }
                ratios[m.y * uMap.x + m.x] = uScale * total / count;
            }
        """.trimIndent()
    }
}
