package com.hinnka.mycamera.processor

/** MGC V25 DetectRaw16Max2HotPixelsHalide, with one output lane per sensor sample. */
internal object GlesMgcRawHotPixelShaders {
    val detectMax2 = """
        #version 310 es
        precision highp int;
        precision highp usampler2D;
        precision highp uimage2D;

        layout(local_size_x = ${GlesComputeWorkGroup.IMAGE_TILE_SIZE}, local_size_y = ${GlesComputeWorkGroup.IMAGE_TILE_SIZE}) in;
        uniform highp usampler2D uRawTexture;
        layout(rgba8ui, binding = 0) writeonly uniform highp uimage2D uHotPixelMask;
        uniform ivec2 uImageSize;
        uniform uint uWhiteLevel;
        uniform uvec4 uPhaseBlack;
        uniform uvec4 uPhaseGainQ8;
        uniform uvec4 uPhaseThresholdOffsetQ8;
        const uint THRESHOLD_SCALE_Q8 = 640u;
        const ivec2 NEIGHBORS[12] = ivec2[12](
            ivec2(-1, -1), ivec2( 0, -1), ivec2( 1, -1),
            ivec2(-1,  0),               ivec2( 1,  0),
            ivec2(-1,  1), ivec2( 0,  1), ivec2( 1,  1),
            ivec2(-2,  0), ivec2( 2,  0), ivec2( 0, -2), ivec2(0, 2)
        );

        int phaseAt(ivec2 p) {
            return (p.x & 1) + 2 * (p.y & 1);
        }

        uint signalAt(ivec2 p) {
            if (any(lessThan(p, ivec2(0))) || any(greaterThanEqual(p, uImageSize))) {
                return 0u;
            }
            uint raw = texelFetch(uRawTexture, p, 0).r;
            int phase = phaseAt(p);
            uint black = uPhaseBlack[phase];
            uint signal = max(raw, black) - black;
            return min((signal * uPhaseGainQ8[phase]) >> 8, uWhiteLevel);
        }

        bool isHotPixel(ivec2 p) {
            uint largest = 0u;
            uint secondLargest = 0u;
            for (int i = 0; i < 12; ++i) {
                uint neighbor = signalAt(p + NEIGHBORS[i]);
                secondLargest = max(secondLargest, min(largest, neighbor));
                largest = max(largest, neighbor);
            }
            uint threshold = secondLargest * THRESHOLD_SCALE_Q8 +
                uPhaseThresholdOffsetQ8[phaseAt(p)];
            return (signalAt(p) << 8) > threshold;
        }

        void main() {
            ivec2 packedCoord = ivec2(gl_GlobalInvocationID.xy);
            if (packedCoord.x >= (uImageSize.x + 3) / 4 || packedCoord.y >= uImageSize.y) return;
            uvec4 mask = uvec4(0u);
            for (int lane = 0; lane < 4; ++lane) {
                ivec2 p = ivec2(packedCoord.x * 4 + lane, packedCoord.y);
                if (p.x < uImageSize.x && isHotPixel(p)) {
                    mask[lane] = 255u;
                }
            }
            imageStore(uHotPixelMask, packedCoord, mask);
        }
    """.trimIndent()
}
