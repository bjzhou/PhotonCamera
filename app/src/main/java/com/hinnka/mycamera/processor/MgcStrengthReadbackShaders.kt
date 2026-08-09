package com.hinnka.mycamera.processor

/** Pack passes used for asynchronous diagnostic readback. */
internal object MgcStrengthReadbackShaders {
    /** Exact RGB camera-domain signed-Q14 signal, packed after the isolated RGB merge pass. */
    val RGB_FIXED16_FRAGMENT = """
        #version 300 es
        precision highp float;
        precision highp int;
        uniform highp sampler2D uColorAndRWeight;
        uniform highp sampler2D uGbWeights;
        uniform int uChannel;
        uniform vec3 uCameraDomainScale;
        uniform ivec2 uSourceSize;
        layout(location = 0) out highp int oFixed16;

        void main() {
            ivec2 position = min(ivec2(gl_FragCoord.xy), uSourceSize - ivec2(1));
            vec4 colorAndR = texelFetch(uColorAndRWeight, position, 0);
            vec2 gbWeights = texelFetch(uGbWeights, position, 0).rg;
            vec3 semantic = colorAndR.rgb / max(
                vec3(colorAndR.a, gbWeights.x, gbWeights.y),
                vec3(1.0e-8)
            );
            vec3 rgb = vec3(
                semantic.r + semantic.g,
                semantic.r,
                semantic.r + semantic.b
            ) * uCameraDomainScale;
            oFixed16 = int(round(
                clamp(max(rgb[uChannel], 0.0) * 16384.0, 0.0, 32767.0)
            ));
        }
    """.trimIndent()

    val FLOAT32 = """
        #version 310 es
        layout(local_size_x = 128) in;
        precision highp float;
        precision highp int;
        uniform highp sampler2D uSource;
        uniform ivec2 uSize;
        layout(std430, binding = 0) writeonly buffer OutputValues {
            float values[];
        };

        void main() {
            int index = int(gl_GlobalInvocationID.x);
            int count = uSize.x * uSize.y;
            if (index >= count) return;
            ivec2 position = ivec2(index % uSize.x, index / uSize.x);
            values[index] = texelFetch(uSource, position, 0).r;
        }
    """.trimIndent()

    val UNORM8 = """
        #version 310 es
        layout(local_size_x = 128) in;
        precision highp float;
        precision highp int;
        uniform highp sampler2D uSource;
        uniform ivec2 uSize;
        layout(std430, binding = 0) writeonly buffer OutputWords {
            uint words[];
        };

        void main() {
            int wordIndex = int(gl_GlobalInvocationID.x);
            int byteCount = uSize.x * uSize.y;
            int first = wordIndex * 4;
            if (first >= byteCount) return;
            uint packed = 0u;
            for (int lane = 0; lane < 4; ++lane) {
                int index = first + lane;
                if (index >= byteCount) break;
                ivec2 position = ivec2(index % uSize.x, index / uSize.x);
                uint value = uint(round(clamp(texelFetch(uSource, position, 0).r, 0.0, 1.0) * 255.0));
                packed |= value << uint(lane * 8);
            }
            words[wordIndex] = packed;
        }
    """.trimIndent()

    val SINT16 = """
        #version 310 es
        layout(local_size_x = 128) in;
        precision highp float;
        precision highp int;
        uniform highp isampler2D uSource;
        uniform ivec2 uSize;
        layout(std430, binding = 0) writeonly buffer OutputWords {
            uint words[];
        };

        void main() {
            int wordIndex = int(gl_GlobalInvocationID.x);
            int valueCount = uSize.x * uSize.y;
            int first = wordIndex * 2;
            if (first >= valueCount) return;
            uint packed = 0u;
            for (int lane = 0; lane < 2; ++lane) {
                int index = first + lane;
                if (index >= valueCount) break;
                ivec2 position = ivec2(index % uSize.x, index / uSize.x);
                uint bits = uint(texelFetch(uSource, position, 0).r) & 0xffffu;
                packed |= bits << uint(lane * 16);
            }
            words[wordIndex] = packed;
        }
    """.trimIndent()
}
