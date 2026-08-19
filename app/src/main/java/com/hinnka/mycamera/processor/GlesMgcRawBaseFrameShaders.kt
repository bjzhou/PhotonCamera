package com.hinnka.mycamera.processor

/** GLES 3.1 kernels for MGC RAW base-frame sharpness measurement and reduction. */
internal object GlesMgcRawBaseFrameShaders {
    val MEASURE = """
        #version 310 es
        precision highp float;
        precision highp int;

        layout(local_size_x = 8, local_size_y = 8, local_size_z = 1) in;
        uniform highp usampler2D uRaw;
        layout(std430, binding = 0) writeonly buffer GroupMetrics {
            vec4 values[];
        } uOutput;

        uniform ivec2 uCropOrigin;
        uniform ivec2 uSampleGridSize;
        uniform int uGroupCountX;
        uniform int uOutputOffset;
        // xy is the center green phase; zw is its diagonal green phase.
        uniform ivec4 uGreenPhases;
        uniform vec2 uGreenBlack;
        uniform uint uWhiteLevel;
        // (center shot, center read, diagonal shot, diagonal read).
        uniform vec4 uGreenNoise;

        shared vec4 sMetrics[64];

        bool greenSignal(
            ivec2 blockPosition,
            ivec2 phase,
            float blackLevel,
            out float signal
        ) {
            ivec2 rawOrigin = blockPosition * 2;
            uint rawValue = texelFetch(uRaw, rawOrigin + phase, 0).r;
            if (rawValue >= uWhiteLevel) {
                signal = 0.0;
                return false;
            }
            float range = float(uWhiteLevel) - blackLevel;
            signal = clamp(
                (float(rawValue) - blackLevel) / range,
                0.0,
                1.0
            );
            return true;
        }

        float greenNoiseVariance(float signal, vec2 noiseModel) {
            return max(noiseModel.x * signal + noiseModel.y, 0.0);
        }

        void main() {
            ivec2 sampleIndex = ivec2(gl_GlobalInvocationID.xy);
            vec4 metric = vec4(0.0);
            if (all(lessThan(sampleIndex, uSampleGridSize))) {
                ivec2 position = uCropOrigin + sampleIndex;
                float center;
                float diagonalLeft;
                float diagonalRight;
                int diagonalLeftBlockOffset =
                    uGreenPhases.x < uGreenPhases.z ? -1 : 0;
                int diagonalRightBlockOffset = diagonalLeftBlockOffset + 1;
                bool centerValid = greenSignal(
                    position,
                    uGreenPhases.xy,
                    uGreenBlack.x,
                    center
                );
                bool diagonalLeftValid = greenSignal(
                    position + ivec2(diagonalLeftBlockOffset, 0),
                    uGreenPhases.zw,
                    uGreenBlack.y,
                    diagonalLeft
                );
                bool diagonalRightValid = greenSignal(
                    position + ivec2(diagonalRightBlockOffset, 0),
                    uGreenPhases.zw,
                    uGreenBlack.y,
                    diagonalRight
                );
                if (!centerValid || !diagonalLeftValid || !diagonalRightValid) {
                    metric.z = 1.0;
                } else {
                    // MeasureSharpnessRaw uses the two diagonal green differences on the
                    // Bayer lattice: (g_down_left - g_center, g_down_right - g_center).
                    vec2 gradient = vec2(
                        diagonalLeft - center,
                        diagonalRight - center
                    );
                    metric.x = dot(gradient, gradient);
                    metric.y =
                        greenNoiseVariance(diagonalLeft, uGreenNoise.zw) +
                        greenNoiseVariance(diagonalRight, uGreenNoise.zw) +
                        2.0 * greenNoiseVariance(center, uGreenNoise.xy);
                    metric.w = 1.0;
                }
            }

            uint lane = gl_LocalInvocationIndex;
            sMetrics[lane] = metric;
            barrier();
            for (uint stride = 32u; stride > 0u; stride >>= 1u) {
                if (lane < stride) {
                    sMetrics[lane] += sMetrics[lane + stride];
                }
                barrier();
            }
            if (lane == 0u) {
                int groupIndex = int(gl_WorkGroupID.y) * uGroupCountX +
                    int(gl_WorkGroupID.x);
                uOutput.values[uOutputOffset + groupIndex] = sMetrics[0];
            }
        }
    """.trimIndent()

    val REDUCE = """
        #version 310 es
        precision highp float;
        precision highp int;

        layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
        layout(std430, binding = 0) readonly buffer InputMetrics {
            vec4 values[];
        } uInput;
        layout(std430, binding = 1) writeonly buffer OutputMetrics {
            vec4 values[];
        } uOutput;

        uniform int uInputOffset;
        uniform int uOutputOffset;
        uniform int uInputCount;

        shared vec4 sMetrics[128];

        void main() {
            uint lane = gl_LocalInvocationID.x;
            int inputIndex = int(gl_GlobalInvocationID.x);
            vec4 metric = vec4(0.0);
            if (inputIndex < uInputCount) {
                // Keep the readonly SSBO value local before using it, per the Mali contract.
                vec4 inputMetric = uInput.values[uInputOffset + inputIndex];
                metric = inputMetric;
            }
            sMetrics[lane] = metric;
            barrier();
            for (uint stride = 64u; stride > 0u; stride >>= 1u) {
                if (lane < stride) {
                    sMetrics[lane] += sMetrics[lane + stride];
                }
                barrier();
            }
            if (lane == 0u) {
                uOutput.values[uOutputOffset + int(gl_WorkGroupID.x)] = sMetrics[0];
            }
        }
    """.trimIndent()
}
