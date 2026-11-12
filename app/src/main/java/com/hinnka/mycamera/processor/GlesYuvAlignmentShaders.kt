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
            float residualSum = 0.0;
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
                    float residual = current - referenceAt(p);
                    vec2 gradient = gradientAt(p);
                    target += residual * gradient;
                    if (uNormalize != 0) {
                        residualSum += residual;
                        gradientSum += gradient;
                    }
                }
            }
            // Center the residual itself, avoiding subtraction of large intensity products.
            if (uNormalize != 0) target -= (residualSum / count) * gradientSum;
            vec4 products0 = texelFetch(uProducts0, tile, 0);
            vec2 b = 0.5 * target / count;
            // The shared reference pass materializes det(H) in alpha before adding +1.
            float inverseDeterminant = 1.0 / (1.0 + products0.w);
            vec2 delta = inverseDeterminant * vec2(
                products0.z * b.y - products0.y * b.x,
                products0.z * b.x - products0.x * b.y
            );
            flow += clamp(delta, vec2(-1.0), vec2(1.0));
            oAlignment = vec4(flow, initialAlignment.z, 0.0);
        }
    """.trimIndent()

    /**
     * One cooperative group solves one tile using exactly the fragment path's sample lattice.
     * The filtered current pyramid produces fractional residuals, so both the residual mean
     * and gradient products stay Float32. Tree reduction changes addition order, not the warp,
     * sample count, residual centering or determinant regularization.
     *
     * The host dispatches one group per grid cell, binds a distinct immutable RGBA32F image,
     * and makes image writes visible to the next sampler/framebuffer consumer before reuse.
     */
    val blockLucasKanadeCompute = """
        #version 310 es
        precision highp float;
        precision highp int;
        precision highp isampler2D;
        precision highp sampler2D;
        layout(local_size_x = ${GlesComputeWorkGroup.LINEAR_SIZE}, local_size_y = 1, local_size_z = 1) in;
        layout(rgba32f, binding = 0) writeonly uniform highp image2D uOutput;
        uniform highp isampler2D uReference;
        uniform highp sampler2D uCurrent;
        uniform highp sampler2D uProducts0;
        uniform highp sampler2D uInitialAlignment;
        uniform ivec2 uImageSize;
        uniform ivec2 uGridSize;
        uniform int uTileStride;
        uniform int uTileSize;
        uniform int uNormalize;
        uniform int uHasInitialAlignment;
        shared vec4 sProducts[${GlesComputeWorkGroup.LINEAR_SIZE}];
        shared float sResidual[${GlesComputeWorkGroup.LINEAR_SIZE}];

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
            ivec2 tile = ivec2(gl_WorkGroupID.xy);
            int lane = int(gl_LocalInvocationIndex);
            vec3 initialAlignment = uHasInitialAlignment != 0
                ? texelFetch(uInitialAlignment, clamp(tile, ivec2(0), uGridSize - 1), 0).xyz
                : vec3(0.0);
            vec2 flow = initialAlignment.xy;
            ivec2 origin = (tile + ivec2(1)) * uTileStride;
            int sampleStep = uTileSize >= 32 ? 2 : 1;
            int sampleSide = uTileSize / sampleStep;
            int sampleCount = sampleSide * sampleSide;
            vec2 inverseSize = 1.0 / vec2(uImageSize);
            vec2 target = vec2(0.0);
            vec2 gradientSum = vec2(0.0);
            float residualSum = 0.0;
            for (int i = lane; i < sampleCount; i += ${GlesComputeWorkGroup.LINEAR_SIZE}) {
                ivec2 p = origin + ivec2(i % sampleSide, i / sampleSide) * sampleStep;
                vec2 encoded = textureLod(uCurrent,
                    (vec2(p) + flow + 0.5) * inverseSize, 0.0).rg;
                float residual = dot(encoded, vec2(16.0, 1.0)) - referenceAt(p);
                vec2 gradient = gradientAt(p);
                target += residual * gradient;
                if (uNormalize != 0) {
                    residualSum += residual;
                    gradientSum += gradient;
                }
            }
            // Tiles with fewer samples than lanes still initialize all shared elements.
            // Every lane reaches every barrier, including the unnormalized finest level.
            sProducts[lane] = vec4(target, gradientSum);
            sResidual[lane] = residualSum;
            memoryBarrierShared();
            barrier();
            for (int stride = ${GlesComputeWorkGroup.LINEAR_SIZE / 2}; stride > 0; stride >>= 1) {
                if (lane < stride) {
                    sProducts[lane] += sProducts[lane + stride];
                    sResidual[lane] += sResidual[lane + stride];
                }
                memoryBarrierShared();
                barrier();
            }
            if (lane == 0) {
                float count = float(sampleCount);
                target = sProducts[0].xy;
                if (uNormalize != 0) target -= (sResidual[0] / count) * sProducts[0].zw;
                vec4 products0 = texelFetch(uProducts0, tile, 0);
                vec2 b = 0.5 * target / count;
                float inverseDeterminant = 1.0 / (1.0 + products0.w);
                vec2 delta = inverseDeterminant * vec2(
                    products0.z * b.y - products0.y * b.x,
                    products0.z * b.x - products0.x * b.y
                );
                flow += clamp(delta, vec2(-1.0), vec2(1.0));
                imageStore(uOutput, tile, vec4(flow, initialAlignment.z, 0.0));
            }
        }
    """.trimIndent()
}
