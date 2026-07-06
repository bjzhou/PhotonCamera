package com.hinnka.mycamera.raw

/**
 * OpenGL ES 3.1 compute port of darktable's denoiseprofile NLM path.
 *
 * The pipeline mirrors darktable process_nlmeans_cl with a mobile fused accumulator:
 * precondition_v2 -> init -> repeated local-tile accu -> finish_v2.
 */
object DenoiseProfileShaders {
    const val SEARCH_RADIUS = 5
    const val PATCH_RADIUS = 1
    const val IMAGE_LOCAL_X = 16
    const val IMAGE_LOCAL_Y = 16
    private const val FUSED_TILE_X = IMAGE_LOCAL_X + SEARCH_RADIUS + 2 * PATCH_RADIUS
    private const val FUSED_TILE_Y = IMAGE_LOCAL_Y + SEARCH_RADIUS + 2 * PATCH_RADIUS

    private const val COMMON = """
        precision highp float;
        precision highp int;

        vec4 readPixel(sampler2D image, ivec2 coord, ivec2 size) {
            ivec2 c = clamp(coord, ivec2(0), size - ivec2(1));
            return texelFetch(image, c, 0);
        }

        vec4 dtPow(vec4 a, vec4 b) {
            return pow(a, b);
        }

        float fastMexp2(float x) {
            const float i1 = float(0x3f800000u);
            const float i2 = float(0x3f000000u);
            float k0 = i1 + x * (i2 - i1);
            uint bits = (k0 >= float(0x800000u)) ? uint(k0) : 0u;
            return uintBitsToFloat(bits);
        }

        float ddirac(ivec2 q) {
            return (q.x != 0 || q.y != 0) ? 1.0 : 0.0;
        }

        int pixelIndex(ivec2 coord, ivec2 size) {
            return coord.y * size.x + coord.x;
        }
    """

    val PRECONDITION_V2 = """
        #version 310 es
        $COMMON
        layout(local_size_x = $IMAGE_LOCAL_X, local_size_y = $IMAGE_LOCAL_Y) in;
        layout(binding = 0) uniform highp sampler2D uInput;
        layout(rgba16f, binding = 1) writeonly uniform highp image2D uOutput;

        uniform ivec2 uImageSize;
        uniform vec4 uA;
        uniform vec4 uP;
        uniform vec4 uB;
        uniform vec4 uWb;

        void main() {
            ivec2 coord = ivec2(gl_GlobalInvocationID.xy);
            if (coord.x >= uImageSize.x || coord.y >= uImageSize.y) return;

            vec4 pixel = readPixel(uInput, coord, uImageSize);
            float alpha = pixel.a;
            vec4 t = max(
                2.0 * dtPow(max(vec4(0.0), pixel / uWb + uB), 1.0 - uP / 2.0) /
                ((-uP + 2.0) * sqrt(uA)),
                vec4(0.0)
            );
            t.a = alpha;
            imageStore(uOutput, coord, t);
        }
    """.trimIndent()

    val INIT = """
        #version 310 es
        $COMMON
        layout(local_size_x = $IMAGE_LOCAL_X, local_size_y = $IMAGE_LOCAL_Y) in;
        layout(std430, binding = 0) buffer AccuBuffer { vec4 u2[]; };

        uniform ivec2 uImageSize;

        void main() {
            ivec2 coord = ivec2(gl_GlobalInvocationID.xy);
            if (coord.x >= uImageSize.x || coord.y >= uImageSize.y) return;

            u2[pixelIndex(coord, uImageSize)] = vec4(0.0);
        }
    """.trimIndent()

    val FUSED_ACCU = """
        #version 310 es
        $COMMON
        layout(local_size_x = $IMAGE_LOCAL_X, local_size_y = $IMAGE_LOCAL_Y) in;
        layout(binding = 0) uniform highp sampler2D uInput;
        layout(std430, binding = 0) buffer AccuBuffer { vec4 u2[]; };

        shared float sDistance[$FUSED_TILE_X * $FUSED_TILE_Y];

        uniform ivec2 uImageSize;
        uniform ivec2 uQ;
        uniform float uNorm;
        uniform float uCentralPixelWeight;

        float pixelDistance(ivec2 coord, ivec2 q) {
            ivec2 shifted = coord + q;
            bool inBounds = shifted.x >= 0 && shifted.x < uImageSize.x &&
                shifted.y >= 0 && shifted.y < uImageSize.y;
            if (!inBounds) return 0.0;

            vec4 p1 = readPixel(uInput, coord, uImageSize);
            vec4 p2 = readPixel(uInput, shifted, uImageSize);
            vec4 tmp = (p1 - p2) * (p1 - p2);
            return tmp.x + tmp.y + tmp.z;
        }

        float tileDistance(ivec2 imageCoord, ivec2 groupOrigin, ivec2 tileMin, int tileWidth) {
            ivec2 tileCoord = imageCoord - groupOrigin - tileMin;
            return sDistance[tileCoord.y * tileWidth + tileCoord.x];
        }

        float patchWeight(ivec2 center, ivec2 groupOrigin, ivec2 tileMin, int tileWidth) {
            float distacc = 0.0;
            for (int pj = -$PATCH_RADIUS; pj <= $PATCH_RADIUS; pj++) {
                for (int pi = -$PATCH_RADIUS; pi <= $PATCH_RADIUS; pi++) {
                    ivec2 patchCoord = clamp(
                        center + ivec2(pi, pj),
                        ivec2(0),
                        uImageSize - ivec2(1)
                    );
                    distacc += tileDistance(patchCoord, groupOrigin, tileMin, tileWidth);
                }
            }

            float patchPixels = float((2 * $PATCH_RADIUS + 1) * (2 * $PATCH_RADIUS + 1));
            distacc += tileDistance(center, groupOrigin, tileMin, tileWidth) *
                patchPixels * uCentralPixelWeight;
            distacc /= 1.0 + uCentralPixelWeight;
            return fastMexp2(max(0.0, distacc * uNorm - 2.0));
        }

        void main() {
            ivec2 groupOrigin = ivec2(gl_WorkGroupID.xy) *
                ivec2($IMAGE_LOCAL_X, $IMAGE_LOCAL_Y);
            ivec2 tileMin = min(ivec2(-$PATCH_RADIUS), -uQ - ivec2($PATCH_RADIUS));
            ivec2 tileMax = max(ivec2($PATCH_RADIUS), -uQ + ivec2($PATCH_RADIUS));
            int tileWidth = $IMAGE_LOCAL_X + tileMax.x - tileMin.x;
            int tileHeight = $IMAGE_LOCAL_Y + tileMax.y - tileMin.y;
            int tilePixels = tileWidth * tileHeight;
            int localIndex = int(gl_LocalInvocationID.y) * $IMAGE_LOCAL_X +
                int(gl_LocalInvocationID.x);
            int localCount = $IMAGE_LOCAL_X * $IMAGE_LOCAL_Y;

            for (int i = localIndex; i < tilePixels; i += localCount) {
                int tileX = i - (i / tileWidth) * tileWidth;
                int tileY = i / tileWidth;
                ivec2 imageCoord = groupOrigin + ivec2(tileX, tileY) + tileMin;
                imageCoord = clamp(imageCoord, ivec2(0), uImageSize - ivec2(1));
                sDistance[i] = pixelDistance(imageCoord, uQ);
            }

            memoryBarrierShared();
            barrier();

            ivec2 coord = ivec2(gl_GlobalInvocationID.xy);
            if (coord.x >= uImageSize.x || coord.y >= uImageSize.y) return;

            ivec2 plusCoord = coord + uQ;
            ivec2 minusCoord = coord - uQ;
            bool plusInBounds = plusCoord.x >= 0 && plusCoord.x < uImageSize.x &&
                plusCoord.y >= 0 && plusCoord.y < uImageSize.y;
            bool minusInBounds = minusCoord.x >= 0 && minusCoord.x < uImageSize.x &&
                minusCoord.y >= 0 && minusCoord.y < uImageSize.y;

            float weight = plusInBounds ? patchWeight(coord, groupOrigin, tileMin, tileWidth) : 0.0;
            float weightMinus = (minusInBounds && ddirac(uQ) > 0.0)
                ? patchWeight(minusCoord, groupOrigin, tileMin, tileWidth)
                : 0.0;

            vec4 u1Pq = plusInBounds ? readPixel(uInput, plusCoord, uImageSize) : vec4(0.0);
            vec4 u1Mq = minusInBounds ? readPixel(uInput, minusCoord, uImageSize) : vec4(0.0);
            vec4 accu = weight * u1Pq + weightMinus * u1Mq;
            accu.a = weight + weightMinus;

            int idx = pixelIndex(coord, uImageSize);
            u2[idx] = u2[idx] + accu;
        }
    """.trimIndent()

    val FINISH_V2 = """
        #version 310 es
        $COMMON
        layout(local_size_x = $IMAGE_LOCAL_X, local_size_y = $IMAGE_LOCAL_Y) in;
        layout(binding = 0) uniform highp sampler2D uInput;
        layout(std430, binding = 0) readonly buffer AccuBuffer { vec4 u2[]; };
        layout(rgba16f, binding = 1) writeonly uniform highp image2D uOutput;

        uniform ivec2 uImageSize;
        uniform vec4 uA;
        uniform vec4 uP;
        uniform vec4 uB;
        uniform float uBias;
        uniform vec4 uWb;

        void main() {
            ivec2 coord = ivec2(gl_GlobalInvocationID.xy);
            if (coord.x >= uImageSize.x || coord.y >= uImageSize.y) return;

            int idx = pixelIndex(coord, uImageSize);
            vec4 accu = u2[idx];
            float alpha = readPixel(uInput, coord, uImageSize).a;
            vec4 px = accu.a > 0.0 ? accu / accu.a : vec4(0.0);

            vec4 delta = px * px + vec4(uBias);
            vec4 denominator = 4.0 / (sqrt(uA) * (2.0 - uP));
            vec4 z1 = (px + sqrt(max(vec4(0.0), delta))) / denominator;
            px = max(dtPow(z1, 1.0 / (1.0 - uP / 2.0)) - uB, vec4(0.0));
            px *= uWb;
            px.a = alpha;
            imageStore(uOutput, coord, px);
        }
    """.trimIndent()
}
