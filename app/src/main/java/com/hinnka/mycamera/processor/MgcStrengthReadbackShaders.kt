package com.hinnka.mycamera.processor

/** Pack passes used for asynchronous diagnostic readback. */
internal object MgcStrengthReadbackShaders {
    val FLOAT32 = """
        #version 310 es
        layout(local_size_x = 128) in;
        precision highp float;
        precision highp int;
        uniform highp sampler2D uSource;
        uniform ivec2 uPlaneSize;
        uniform int uPlaneCount;
        uniform int uAtlasColumns;
        layout(std430, binding = 0) writeonly buffer OutputValues {
            float values[];
        };

        ivec2 atlasPosition(int index) {
            int planeArea = uPlaneSize.x * uPlaneSize.y;
            int plane = index / planeArea;
            int localIndex = index - plane * planeArea;
            ivec2 local = ivec2(localIndex % uPlaneSize.x, localIndex / uPlaneSize.x);
            ivec2 tile = ivec2(plane % uAtlasColumns, plane / uAtlasColumns);
            return tile * uPlaneSize + local;
        }

        void main() {
            int index = int(
                gl_GlobalInvocationID.x +
                gl_GlobalInvocationID.y * gl_NumWorkGroups.x * gl_WorkGroupSize.x
            );
            int count = uPlaneSize.x * uPlaneSize.y * uPlaneCount;
            if (index >= count) return;
            values[index] = texelFetch(uSource, atlasPosition(index), 0).r;
        }
    """.trimIndent()

    val UNORM8 = """
        #version 310 es
        layout(local_size_x = 128) in;
        precision highp float;
        precision highp int;
        uniform highp sampler2D uSource;
        uniform ivec2 uPlaneSize;
        uniform int uPlaneCount;
        uniform int uAtlasColumns;
        layout(std430, binding = 0) writeonly buffer OutputWords {
            uint words[];
        };

        ivec2 atlasPosition(int index) {
            int planeArea = uPlaneSize.x * uPlaneSize.y;
            int plane = index / planeArea;
            int localIndex = index - plane * planeArea;
            ivec2 local = ivec2(localIndex % uPlaneSize.x, localIndex / uPlaneSize.x);
            ivec2 tile = ivec2(plane % uAtlasColumns, plane / uAtlasColumns);
            return tile * uPlaneSize + local;
        }

        void main() {
            int wordIndex = int(
                gl_GlobalInvocationID.x +
                gl_GlobalInvocationID.y * gl_NumWorkGroups.x * gl_WorkGroupSize.x
            );
            int byteCount = uPlaneSize.x * uPlaneSize.y * uPlaneCount;
            int first = wordIndex * 4;
            if (first >= byteCount) return;
            uint packed = 0u;
            for (int lane = 0; lane < 4; ++lane) {
                int index = first + lane;
                if (index >= byteCount) break;
                uint value = uint(round(clamp(
                    texelFetch(uSource, atlasPosition(index), 0).r,
                    0.0,
                    1.0
                ) * 255.0));
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
        uniform ivec2 uPlaneSize;
        uniform int uPlaneCount;
        uniform int uAtlasColumns;
        layout(std430, binding = 0) writeonly buffer OutputWords {
            uint words[];
        };

        ivec2 atlasPosition(int index) {
            int planeArea = uPlaneSize.x * uPlaneSize.y;
            int plane = index / planeArea;
            int localIndex = index - plane * planeArea;
            ivec2 local = ivec2(localIndex % uPlaneSize.x, localIndex / uPlaneSize.x);
            ivec2 tile = ivec2(plane % uAtlasColumns, plane / uAtlasColumns);
            return tile * uPlaneSize + local;
        }

        void main() {
            int wordIndex = int(
                gl_GlobalInvocationID.x +
                gl_GlobalInvocationID.y * gl_NumWorkGroups.x * gl_WorkGroupSize.x
            );
            int valueCount = uPlaneSize.x * uPlaneSize.y * uPlaneCount;
            int first = wordIndex * 2;
            if (first >= valueCount) return;
            uint packed = 0u;
            for (int lane = 0; lane < 2; ++lane) {
                int index = first + lane;
                if (index >= valueCount) break;
                uint bits = uint(texelFetch(uSource, atlasPosition(index), 0).r) & 0xffffu;
                packed |= bits << uint(lane * 16);
            }
            words[wordIndex] = packed;
        }
    """.trimIndent()
}
