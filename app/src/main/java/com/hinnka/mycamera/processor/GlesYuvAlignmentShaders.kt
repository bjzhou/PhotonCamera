package com.hinnka.mycamera.processor

/** YUV alignment trades Fixed14 warp rounding for hardware filtering and sparse fine-level fits. */
internal object GlesYuvAlignmentShaders {
    /**
     * Reference products and target products must use the same sample lattice and count.
     * Keep every sample at the two coarse levels; fit 32x32 tiles on a 16x16 lattice.
     * The current RG16F pyramid splits Fixed14 values into exact coarse/remainder pairs,
     * reconstructed after filtering, so Hessian scale and regularization
     * remain identical to Spatial. Integer pyramids still drive candidate selection/rejection.
     */
    val blockLucasKanade = """
        #version 300 es
        precision highp float;
        precision highp int;
        precision highp isampler2D;
        precision highp sampler2D;
        uniform highp isampler2D uReference;
        uniform highp sampler2D uCurrent;
        uniform highp sampler2D uProducts0;
        uniform highp sampler2D uProducts1;
        uniform highp sampler2D uInitialAlignment;
        uniform ivec2 uImageSize;
        uniform ivec2 uGridSize;
        uniform int uTileStride;
        uniform int uTileSize;
        uniform int uNormalize;
        uniform int uHasInitialAlignment;
        out vec4 oAlignment;

        float referenceAt(ivec2 p) {
            return float(texelFetch(uReference,
                clamp(p, ivec2(0), uImageSize - 1), 0).r);
        }
        vec2 gradientAt(ivec2 p) {
            return clamp(vec2(
                referenceAt(p + ivec2(1, 0)) - referenceAt(p - ivec2(1, 0)),
                referenceAt(p + ivec2(0, 1)) - referenceAt(p - ivec2(0, 1))
            ), vec2(-32768.0), vec2(32767.0));
        }
        void main() {
            ivec2 tile = ivec2(gl_FragCoord.xy);
            vec3 initialAlignment = uHasInitialAlignment != 0
                ? texelFetch(uInitialAlignment, clamp(tile, ivec2(0), uGridSize - 1), 0).xyz
                : vec3(0.0);
            vec2 flow = initialAlignment.xy;
            ivec2 origin = (tile + ivec2(1)) * uTileStride;
            int sampleStep = uTileSize >= 32 ? 2 : 1;
            float count = float((uTileSize / sampleStep) * (uTileSize / sampleStep));
            vec2 inverseSize = 1.0 / vec2(uImageSize);
            vec2 target = vec2(0.0);
            vec2 gradientSum = vec2(0.0);
            float currentSum = 0.0;
            for (int y = 0; y < 64; y += sampleStep) {
                if (y >= uTileSize) break;
                for (int x = 0; x < 64; x += sampleStep) {
                    if (x >= uTileSize) break;
                    ivec2 p = origin + ivec2(x, y);
                    // +0.5 maps integer image positions to texel centers. CLAMP_TO_EDGE
                    // preserves the integer warp's border behavior for fractional flow.
                    vec2 encoded = textureLod(uCurrent,
                        (vec2(p) + flow + 0.5) * inverseSize, 0.0).rg;
                    float current = dot(encoded, vec2(16.0, 1.0));
                    vec2 gradient = gradientAt(p);
                    target += current * gradient;
                    if (uNormalize != 0) {
                        currentSum += current;
                        gradientSum += gradient;
                    }
                }
            }
            // sum((current - mean) * gradient), with no second image traversal.
            if (uNormalize != 0) target -= (currentSum / count) * gradientSum;
            vec4 products0 = texelFetch(uProducts0, tile, 0);
            float products1 = texelFetch(uProducts1, tile, 0).r;
            vec2 b = 0.5 * target / count - vec2(products0.w, products1);
            float inverseDeterminant = 1.0 / (
                1.0 + products0.x * products0.y - products0.z * products0.z
            );
            vec2 delta = inverseDeterminant * vec2(
                products0.z * b.y - products0.y * b.x,
                products0.z * b.x - products0.x * b.y
            );
            flow += clamp(delta, vec2(-1.0), vec2(1.0));
            oAlignment = vec4(flow, initialAlignment.z, 0.0);
        }
    """.trimIndent()
}
