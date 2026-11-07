package com.hinnka.mycamera.raw

import android.opengl.GLES30
import android.opengl.GLES31
import com.hinnka.mycamera.processor.GlesComputeWorkGroup

/** Generates the shared synthetic Bayer noise field directly in the calibration RAW texture. */
internal class DemosaicNoiseAtlasGenerator {
    private var program = 0

    fun initialize(): Boolean = getOrCreateProgram() != 0

    fun generate(
        targetTextureId: Int,
        cfaPattern: Int,
        calculationWb: FloatArray,
        inputRead: FloatArray,
        inputShot: FloatArray,
        referenceSignals: FloatArray,
        readOnlySlot: Int,
        sampleSize: Int,
    ): Boolean {
        require(targetTextureId != 0)
        require(calculationWb.size == 3)
        require(inputRead.size == 3)
        require(inputShot.size == 3)
        require(referenceSignals.size == SAMPLE_COUNT)
        require(readOnlySlot in referenceSignals.indices)
        require(sampleSize > 0)

        val activeProgram = getOrCreateProgram()
        if (activeProgram == 0) return false

        GLES31.glUseProgram(activeProgram)
        GLES31.glBindImageTexture(
            0,
            targetTextureId,
            0,
            false,
            0,
            GLES31.GL_WRITE_ONLY,
            GLES30.GL_RGBA16UI,
        )
        try {
            GLES31.glUniform1i(
                GLES31.glGetUniformLocation(activeProgram, "uCfaPattern"),
                cfaPattern,
            )
            GLES31.glUniform3fv(
                GLES31.glGetUniformLocation(activeProgram, "uCalculationWb"),
                1,
                calculationWb,
                0,
            )
            GLES31.glUniform3fv(
                GLES31.glGetUniformLocation(activeProgram, "uInputRead"),
                1,
                inputRead,
                0,
            )
            GLES31.glUniform3fv(
                GLES31.glGetUniformLocation(activeProgram, "uInputShot"),
                1,
                inputShot,
                0,
            )
            GLES31.glUniform4fv(
                GLES31.glGetUniformLocation(activeProgram, "uReferenceSignals"),
                1,
                referenceSignals,
                0,
            )
            GLES31.glUniform1i(
                GLES31.glGetUniformLocation(activeProgram, "uReadOnlySlot"),
                readOnlySlot,
            )
            GLES31.glUniform1i(
                GLES31.glGetUniformLocation(activeProgram, "uSampleSize"),
                sampleSize,
            )
            GLES31.glDispatchCompute(
                GlesComputeWorkGroup.imageGroupCount((sampleSize + 1) / 2),
                GlesComputeWorkGroup.imageGroupCount(sampleSize),
                1,
            )
            GLES31.glMemoryBarrier(
                GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT or
                    GLES31.GL_TEXTURE_FETCH_BARRIER_BIT,
            )
            val error = GLES31.glGetError()
            check(error == GLES31.GL_NO_ERROR) {
                "Synthetic demosaic noise atlas generation failed with GL error " +
                    "0x${error.toString(16)}"
            }
            return true
        } finally {
            GLES31.glBindImageTexture(
                0,
                0,
                0,
                false,
                0,
                GLES31.GL_WRITE_ONLY,
                GLES30.GL_RGBA16UI,
            )
            GLES31.glUseProgram(0)
        }
    }

    fun release() {
        if (program != 0) {
            GLES31.glDeleteProgram(program)
            program = 0
        }
    }

    private fun getOrCreateProgram(): Int {
        if (program == 0) {
            program = RawGlesProgram.compileCompute(COMPUTE_SHADER, "DemosaicNoiseAtlas")
        }
        return program
    }

    private companion object {
        private const val SAMPLE_COUNT = 4

        private val COMPUTE_SHADER = """
            #version 310 es
            precision highp float;
            precision highp int;
            precision highp uimage2D;

            layout(local_size_x = 8, local_size_y = 8) in;
            layout(rgba16ui, binding = 0) writeonly uniform highp uimage2D uOutput;

            uniform int uCfaPattern;
            uniform vec3 uCalculationWb;
            uniform vec3 uInputRead;
            uniform vec3 uInputShot;
            uniform vec4 uReferenceSignals;
            uniform int uReadOnlySlot;
            uniform int uSampleSize;

            uint hashBits(uint value) {
                value ^= value >> 16;
                value *= 0x7feb352du;
                value ^= value >> 15;
                value *= 0x846ca68bu;
                value ^= value >> 16;
                return value;
            }

            float uniformOpen01(uint value) {
                return (float(hashBits(value) & 0x007fffffu) + 0.5) / 8388608.0;
            }

            vec2 standardNormalPair(ivec2 pairPosition) {
                int pairsPerRow = (uSampleSize + 1) / 2;
                uint pairIndex = uint(pairPosition.y * pairsPerRow + pairPosition.x);
                float first = uniformOpen01(pairIndex * 2u + 0x68bc21ebu);
                float second = uniformOpen01(pairIndex * 2u + 0x02e5be93u);
                float radius = sqrt(-2.0 * log(first));
                float angle = 6.283185307179586 * second;
                return radius * vec2(cos(angle), sin(angle));
            }

            int expandedBlockSize(int cfaPattern) {
                if (cfaPattern >= 8 && cfaPattern <= 11) return 4;
                if (cfaPattern >= 4 && cfaPattern <= 7) return 2;
                return 1;
            }

            int baseBayerPattern(int cfaPattern) {
                if (cfaPattern >= 8 && cfaPattern <= 11) return cfaPattern - 8;
                if (cfaPattern >= 4 && cfaPattern <= 7) return cfaPattern - 4;
                return clamp(cfaPattern, 0, 3);
            }

            int bayerChannelIndex(int cfaPattern, int xParity, int yParity) {
                if (cfaPattern == 1) {
                    if (yParity == 0 && xParity == 0) return 1;
                    if (yParity == 0 && xParity == 1) return 0;
                    if (yParity == 1 && xParity == 0) return 3;
                    return 2;
                }
                if (cfaPattern == 2) {
                    if (yParity == 0 && xParity == 0) return 2;
                    if (yParity == 0 && xParity == 1) return 3;
                    if (yParity == 1 && xParity == 0) return 0;
                    return 1;
                }
                if (cfaPattern == 3) {
                    if (yParity == 0 && xParity == 0) return 3;
                    if (yParity == 0 && xParity == 1) return 2;
                    if (yParity == 1 && xParity == 0) return 1;
                    return 0;
                }
                if (yParity == 0 && xParity == 0) return 0;
                if (yParity == 0 && xParity == 1) return 1;
                if (yParity == 1 && xParity == 0) return 2;
                return 3;
            }

            int rgbChannelForPixel(ivec2 position) {
                int blockSize = expandedBlockSize(uCfaPattern);
                int bayerChannel = bayerChannelIndex(
                    baseBayerPattern(uCfaPattern),
                    (position.x / blockSize) & 1,
                    (position.y / blockSize) & 1
                );
                if (bayerChannel == 0) return 0;
                if (bayerChannel == 3) return 2;
                return 1;
            }

            void writeSamples(ivec2 position, float gaussian) {
                int channel = rgbChannelForPixel(position);
                float wb = max(uCalculationWb[channel], 1e-6);
                vec4 rawSignals = uReferenceSignals / wb;
                vec4 variances =
                    vec4(uInputRead[channel]) + uInputShot[channel] * rawSignals;
                variances[uReadOnlySlot] = uInputRead[channel];
                vec4 noisy = clamp(
                    rawSignals + sqrt(max(variances, vec4(0.0))) * gaussian,
                    0.0,
                    1.0
                );
                for (int slot = 0; slot < 4; ++slot) {
                    uint quantized = uint(floor(noisy[slot] * 65535.0 + 0.5));
                    imageStore(
                        uOutput,
                        position + ivec2(slot * uSampleSize, 0),
                        uvec4(quantized, 0u, 0u, 1u)
                    );
                }
            }

            void main() {
                ivec2 pairPosition = ivec2(gl_GlobalInvocationID.xy);
                ivec2 firstPosition = ivec2(pairPosition.x * 2, pairPosition.y);
                if (any(greaterThanEqual(firstPosition, ivec2(uSampleSize)))) return;

                vec2 gaussian = standardNormalPair(pairPosition);
                writeSamples(firstPosition, gaussian.x);
                ivec2 secondPosition = firstPosition + ivec2(1, 0);
                if (secondPosition.x < uSampleSize) {
                    writeSamples(secondPosition, gaussian.y);
                }
            }
        """.trimIndent()
    }
}
