package com.hinnka.mycamera.processor

/** Small GLES 3.1 pack passes used to avoid driver-synchronous framebuffer readback submission. */
internal object MgcStrengthReadbackShaders {
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
