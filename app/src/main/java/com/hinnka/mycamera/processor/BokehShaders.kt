package com.hinnka.mycamera.processor

/**
 * Shaders of the Lens Blur renderer ([OglBokehProcessor]); the algorithm and
 * its evidence are in docs/lrmobile-lens-blur-evidence.md. Every source starts
 * with `#version` at its first byte (Mali requirement); fragment passes are
 * GLSL ES 3.00 to pair with the 3.00 fullscreen vertex shader, compute passes
 * are 3.10.
 */
internal object BokehShaders {
    // Coverage stays bilinear; depth belongs to a surface. Interpolating the
    // complement disparity across opposite sides of focus creates a false
    // in-focus line. Fetch its owning texel without blending those surfaces.
    internal val BOKEH_LAYER_SAMPLING = """
        vec4 sampleBokehLayers(vec2 uv) {
            vec4 layers = texture(uDepthTexture, uv);
            ivec2 size = textureSize(uDepthTexture, 0);
            ivec2 pixel = clamp(ivec2(uv * vec2(size)), ivec2(0), size - 1);
            layers.gb = texelFetch(uDepthTexture, pixel, 0).gb;
            return layers;
        }
    """.trimIndent().prependIndent("        ")

    /** Bounded, perceptually spaced RGB of every depth guide (guided filter, JBU, colour models). */
    private val GUIDE_SPACE = """
        uniform int uLinearInput;

        vec3 guideSpace(vec3 color) {
            vec3 linear = uLinearInput != 0 ? max(color, vec3(0.0))
                : pow(clamp(color, 0.0, 1.0), vec3(2.2));
            return sqrt(linear / (1.0 + dot(linear, vec3(0.2126, 0.7152, 0.0722))));
        }
    """.trimIndent().prependIndent("        ")

    /** Largest layer median radius; bounds the compiled tile's shared memory. */
    const val LAYER_MEDIAN_MAX_RADIUS = 10

    /**
     * `masking_ai::fast_guided_filter` (He & Sun 2015, colour guide, subsampling 2):
     * per half-resolution pixel the horizontal box sums of the moments
     * {count, I, p, I*p, I*I^T} of the guide I and the depth p. 14 floats each.
     */
    val GUIDED_MOMENTS_COMPUTE_SHADER = """#version 310 es
        precision highp float;
        precision highp int;
        precision highp sampler2D;
        layout(local_size_x = 8, local_size_y = 8) in;

        layout(std430, binding = 0) writeonly buffer Moments { float moments[]; };
        uniform sampler2D uInputTexture;
        uniform sampler2D uDepthTexture;
        uniform ivec2 uSize;
        uniform float uGuideLod;
        uniform int uRadius;

        $GUIDE_SPACE

        void main() {
            ivec2 pixel = ivec2(gl_GlobalInvocationID.xy);
            if (pixel.x >= uSize.x || pixel.y >= uSize.y) return;
            float count = 0.0;
            vec3 guide = vec3(0.0);
            float depth = 0.0;
            vec3 guideDepth = vec3(0.0);
            vec3 diagonal = vec3(0.0);  // rr, gg, bb
            vec3 crossTerm = vec3(0.0); // rg, rb, gb
            for (int dx = -uRadius; dx <= uRadius; dx++) {
                int x = pixel.x + dx;
                if (x < 0 || x >= uSize.x) continue;
                vec2 uv = (vec2(float(x), float(pixel.y)) + 0.5) / vec2(uSize);
                vec3 i = guideSpace(textureLod(uInputTexture, uv, uGuideLod).rgb);
                float p = textureLod(uDepthTexture, uv, 0.0).r;
                count += 1.0;
                guide += i;
                depth += p;
                guideDepth += i * p;
                diagonal += i * i;
                crossTerm += vec3(i.r * i.g, i.r * i.b, i.g * i.b);
            }
            int base = (pixel.y * uSize.x + pixel.x) * 14;
            moments[base] = count;
            moments[base + 1] = guide.r;
            moments[base + 2] = guide.g;
            moments[base + 3] = guide.b;
            moments[base + 4] = depth;
            moments[base + 5] = guideDepth.r;
            moments[base + 6] = guideDepth.g;
            moments[base + 7] = guideDepth.b;
            moments[base + 8] = diagonal.r;
            moments[base + 9] = diagonal.g;
            moments[base + 10] = diagonal.b;
            moments[base + 11] = crossTerm.r;
            moments[base + 12] = crossTerm.g;
            moments[base + 13] = crossTerm.b;
        }
    """.trimIndent()

    /**
     * Vertical box sums of the moments and the guided-filter solve
     * a = (Sigma + eps U)^-1 cov(I, p), b = mean(p) - a . mean(I).
     * Out: vec4(a, b) per half-resolution pixel.
     */
    val GUIDED_SOLVE_COMPUTE_SHADER = """#version 310 es
        precision highp float;
        precision highp int;
        layout(local_size_x = 8, local_size_y = 8) in;

        layout(std430, binding = 0) readonly buffer Moments { float moments[]; };
        layout(std430, binding = 1) writeonly buffer Coefficients { vec4 coefficients[]; };
        uniform ivec2 uSize;
        uniform int uRadius;
        uniform float uEpsilon;

        void main() {
            ivec2 pixel = ivec2(gl_GlobalInvocationID.xy);
            if (pixel.x >= uSize.x || pixel.y >= uSize.y) return;
            float sums[14];
            for (int k = 0; k < 14; k++) sums[k] = 0.0;
            for (int dy = -uRadius; dy <= uRadius; dy++) {
                int y = pixel.y + dy;
                if (y < 0 || y >= uSize.y) continue;
                int base = (y * uSize.x + pixel.x) * 14;
                for (int k = 0; k < 14; k++) {
                    float value = moments[base + k];
                    sums[k] += value;
                }
            }
            float inverseCount = 1.0 / sums[0];
            vec3 meanGuide = vec3(sums[1], sums[2], sums[3]) * inverseCount;
            float meanDepth = sums[4] * inverseCount;
            vec3 covariance = vec3(sums[5], sums[6], sums[7]) * inverseCount - meanGuide * meanDepth;
            vec3 diagonal = vec3(sums[8], sums[9], sums[10]) * inverseCount - meanGuide * meanGuide;
            float rg = sums[11] * inverseCount - meanGuide.r * meanGuide.g;
            float rb = sums[12] * inverseCount - meanGuide.r * meanGuide.b;
            float gb = sums[13] * inverseCount - meanGuide.g * meanGuide.b;
            mat3 sigma = mat3(
                diagonal.r + uEpsilon, rg, rb,
                rg, diagonal.g + uEpsilon, gb,
                rb, gb, diagonal.b + uEpsilon
            );
            vec3 a = inverse(sigma) * covariance;
            coefficients[pixel.y * uSize.x + pixel.x] = vec4(a, meanDepth - dot(a, meanGuide));
        }
    """.trimIndent()

    /** One direction of the box mean of the guided-filter coefficients, normalized by the in-image count. */
    val GUIDED_MEAN_COMPUTE_SHADER = """#version 310 es
        precision highp float;
        precision highp int;
        layout(local_size_x = 8, local_size_y = 8) in;

        layout(std430, binding = 0) readonly buffer Source { vec4 source[]; };
        layout(std430, binding = 1) writeonly buffer Target { vec4 target[]; };
        uniform ivec2 uSize;
        uniform int uRadius;
        uniform ivec2 uDirection;

        void main() {
            ivec2 pixel = ivec2(gl_GlobalInvocationID.xy);
            if (pixel.x >= uSize.x || pixel.y >= uSize.y) return;
            vec4 sum = vec4(0.0);
            float count = 0.0;
            for (int i = -uRadius; i <= uRadius; i++) {
                ivec2 p = pixel + uDirection * i;
                if (p.x < 0 || p.y < 0 || p.x >= uSize.x || p.y >= uSize.y) continue;
                vec4 value = source[p.y * uSize.x + p.x];
                sum += value;
                count += 1.0;
            }
            target[pixel.y * uSize.x + pixel.x] = sum / count;
        }
    """.trimIndent()

    /**
     * Working-resolution output q = mean(a) . I + mean(b) of the guided filter.
     * I is the guide after `cv::GaussianBlur(3x3, sigma 0.5)`; the coefficients
     * are bilinearly upsampled from the half-resolution grid.
     */
    val GUIDED_APPLY_COMPUTE_SHADER = """#version 310 es
        precision highp float;
        precision highp int;
        precision highp sampler2D;
        layout(local_size_x = 8, local_size_y = 8) in;

        layout(std430, binding = 0) readonly buffer Coefficients { vec4 coefficients[]; };
        layout(rgba16f, binding = 0) writeonly uniform highp image2D uDepthImage;
        uniform sampler2D uInputTexture;
        uniform ivec2 uSize;
        uniform ivec2 uHalfSize;
        uniform float uGuideLod;

        $GUIDE_SPACE

        vec4 fetchCoefficients(ivec2 p) {
            ivec2 c = clamp(p, ivec2(0), uHalfSize - 1);
            vec4 value = coefficients[c.y * uHalfSize.x + c.x];
            return value;
        }

        void main() {
            ivec2 pixel = ivec2(gl_GlobalInvocationID.xy);
            if (pixel.x >= uSize.x || pixel.y >= uSize.y) return;
            vec2 texel = 1.0 / vec2(uSize);
            vec2 uv = (vec2(pixel) + 0.5) * texel;
            const float SIDE = 0.1353352832; // exp(-1 / (2 * 0.5^2))
            vec3 guide = vec3(0.0);
            float weightSum = 0.0;
            for (int y = -1; y <= 1; y++) {
                for (int x = -1; x <= 1; x++) {
                    float w = (x == 0 ? 1.0 : SIDE) * (y == 0 ? 1.0 : SIDE);
                    vec2 sampleUv = clamp(uv + vec2(float(x), float(y)) * texel, vec2(0.0), vec2(1.0));
                    guide += w * guideSpace(textureLod(uInputTexture, sampleUv, uGuideLod).rgb);
                    weightSum += w;
                }
            }
            guide /= weightSum;
            vec2 position = uv * vec2(uHalfSize) - 0.5;
            ivec2 base = ivec2(floor(position));
            vec2 f = position - vec2(base);
            vec4 top = mix(fetchCoefficients(base), fetchCoefficients(base + ivec2(1, 0)), f.x);
            vec4 bottom = mix(fetchCoefficients(base + ivec2(0, 1)), fetchCoefficients(base + ivec2(1, 1)), f.x);
            vec4 coefficient = mix(top, bottom, f.y);
            float depth = clamp(dot(coefficient.rgb, guide) + coefficient.a, 0.0, 1.0);
            imageStore(uDepthImage, pixel, vec4(depth, 0.0, 0.0, 1.0));
        }
    """.trimIndent()

    /**
     * U2NetP 显著性 mask（或焦点不在主体时的深度焦平面 mask）经 RGB 引导上采样，
     * 并分别重建 M / 1-M 的深度。借鉴 Kim et al., CVPR 2022 的分层契约；深度细化使用同层归一化卷积。
     * RGBA16F 契约：R=合成视差，G=主体视差，B=非主体视差，A=主体覆盖率。
     * 非主体的焦前/焦后样本分开归一化，避免平均后凭空生成焦平面。
     * 层内部保留 guided filter 后的基础深度（`depth_estimation_planar` 的腐蚀 + 羽化合成），
     * 主体层不比基础深度更远（`cv::max` of the disparity）。
     */
    val JBU_UPSAMPLE_FRAGMENT_SHADER = """#version 300 es
        precision highp float;
        precision highp sampler2D;
        in vec2 vTexCoord;
        out vec4 fragColor;

        uniform sampler2D uLowResDepth;
        uniform sampler2D uSubjectMask;
        uniform sampler2D uLayerInterior; // R = subject interior, G = background interior, mask grid
        uniform sampler2D uHighResGuide;
        uniform vec2 uMaskTexelSize;
        uniform vec4 uMaskBounds; // original-image origin.xy and extent.zw
        uniform float uFocusDepth;

        const float SIGMA_S = 1.05;
        const float SIGMA_R = 0.22;

        $GUIDE_SPACE

        void main() {
            vec3 guideColor = guideSpace(texture(uHighResGuide, vTexCoord).rgb);

            float baseDepth = texture(uLowResDepth, vTexCoord).r;
            
            ivec2 lowResSize = textureSize(uSubjectMask, 0);
            vec2 imageMaskTexel = uMaskTexelSize * uMaskBounds.zw;
            vec2 pos = (vTexCoord - uMaskBounds.xy) / imageMaskTexel - 0.5;
            ivec2 p0 = ivec2(floor(pos));
            vec2 f = fract(pos);
            
            float totalWeight = 0.0;
            float totalMask = 0.0;
            vec3 layerDepth = vec3(0.0);
            vec3 layerWeight = vec3(0.0);

            for (int y = -1; y <= 2; y++) {
                for (int x = -1; x <= 2; x++) {
                    ivec2 sampleIndex = p0 + ivec2(x, y);
                    // Extend the local grid over the image with zero mask support.
                    // Outside the crop, depth and guide still need valid samples.
                    vec2 sampleCoord = uMaskBounds.xy + (vec2(sampleIndex) + 0.5) * imageMaskTexel;
                    if (any(lessThan(sampleCoord, vec2(0.0))) ||
                        any(greaterThan(sampleCoord, vec2(1.0)))) {
                        continue;
                    }

                    // Mask and depth models have independent output grids but
                    // share original-image UVs; never use mask indices for depth.
                    float d = texture(uLowResDepth, sampleCoord).r;
                    vec3 c = guideSpace(textureGrad(
                        uHighResGuide,
                        sampleCoord,
                        vec2(imageMaskTexel.x, 0.0),
                        vec2(0.0, imageMaskTexel.y)
                    ).rgb);

                    vec2 delta = vec2(float(x), float(y)) - f;
                    float wS = exp(
                        -dot(delta, delta) / (2.0 * SIGMA_S * SIGMA_S)
                    );
                    float dC = distance(guideColor, c);
                    // A positive range kernel keeps normalized convolution defined
                    // even for HDR highlights far from the local guide colors.
                    float wC = 1.0 / (1.0 + dC * dC / (SIGMA_R * SIGMA_R));
                    wC *= wC;

                    float w = wS * wC;
                    float m = 0.0;
                    if (all(greaterThanEqual(sampleIndex, ivec2(0))) &&
                        all(lessThan(sampleIndex, lowResSize))) {
                        m = texelFetch(uSubjectMask, sampleIndex, 0).r;
                    }
                    float subjectWeight = m * m * m * m;
                    float otherWeight = (1.0 - m) * (1.0 - m);
                    otherWeight *= otherWeight;
                    vec3 membership = vec3(subjectWeight,
                        d < uFocusDepth ? otherWeight : 0.0,
                        d >= uFocusDepth ? otherWeight : 0.0);
                    layerDepth += d * w * membership;
                    layerWeight += w * membership;
                    totalMask += m * w;
                    totalWeight += w;
                }
            }

            float mask = totalMask / totalWeight;
            float subjectDepth = layerWeight.x > 0.0
                ? layerDepth.x / layerWeight.x : baseDepth;
            bool nearLayer = layerWeight.z > layerWeight.y;
            float otherWeight = nearLayer ? layerWeight.z : layerWeight.y;
            float otherDepth = otherWeight > 0.0
                ? (nearLayer ? layerDepth.z : layerDepth.y) / otherWeight : baseDepth;

            vec2 interiorUv = (vTexCoord - uMaskBounds.xy) / uMaskBounds.zw;
            vec2 interior = all(greaterThanEqual(interiorUv, vec2(0.0))) &&
                all(lessThanEqual(interiorUv, vec2(1.0)))
                ? texture(uLayerInterior, interiorUv).rg : vec2(0.0, 1.0);
            subjectDepth = max(mix(subjectDepth, baseDepth, interior.r), baseDepth);
            otherDepth = mix(otherDepth, baseDepth, interior.g);
            fragColor = vec4(mix(otherDepth, subjectDepth, mask), subjectDepth, otherDepth, mask);
        }
    """.trimIndent()

    /** RGB 局部双颜色模型细化软 mask；仅在轮廓带内以同层可靠样本补全深度。 */
    val DEPTH_REFINE_FRAGMENT_SHADER = """#version 300 es
        precision highp float;
        precision highp sampler2D;
        in vec2 vTexCoord;
        out vec4 fragColor;

        uniform sampler2D uDepthTexture;
        uniform sampler2D uHighResGuide;
        uniform vec2 uRefineStep;
        uniform float uFocusDepth;

        $BOKEH_LAYER_SAMPLING
        $GUIDE_SPACE

        void main() {
            vec4 center = sampleBokehLayers(vTexCoord);
            vec3 color = guideSpace(texture(uHighResGuide, vTexCoord).rgb);
            vec2 depthSum = vec2(0.0);
            vec2 depthWeight = vec2(0.0);
            vec2 modelWeight = vec2(0.0);
            vec3 subjectColor = vec3(0.0);
            vec3 otherColor = vec3(0.0);
            vec2 colorSquared = vec2(0.0);
            for (int y = -2; y <= 2; y++) {
                for (int x = -2; x <= 2; x++) {
                    vec2 uv = clamp(vTexCoord + vec2(float(x), float(y)) * uRefineStep, 0.0, 1.0);
                    vec4 layer = sampleBokehLayers(uv);
                    vec3 guide = guideSpace(texture(uHighResGuide, uv).rgb);
                    float spatialWeight = exp(-float(x * x + y * y) * 0.38);
                    // Uncertain boundary pixels must not define either color model.
                    vec2 reliable = vec2(smoothstep(0.65, 0.95, layer.a),
                        1.0 - smoothstep(0.05, 0.35, layer.a)) * spatialWeight;
                    modelWeight += reliable;
                    subjectColor += guide * reliable.x;
                    otherColor += guide * reliable.y;
                    colorSquared += dot(guide, guide) * reliable;
                    vec2 delta = layer.gb - center.gb;
                    vec2 weights = reliable / (vec2(1.0) + delta * delta / (0.06 * 0.06));
                    if ((layer.b - uFocusDepth) * (center.b - uFocusDepth) < 0.0) {
                        weights.y = 0.0;
                    }
                    depthSum += layer.gb * weights;
                    depthWeight += weights;
                }
            }
            float mask = center.a;
            vec2 depths = center.gb;
            if (min(modelWeight.x, modelWeight.y) > 0.01) {
                subjectColor /= modelWeight.x;
                otherColor /= modelWeight.y;
                vec2 variance = max(colorSquared / modelWeight
                    - vec2(dot(subjectColor, subjectColor), dot(otherColor, otherColor)), 0.0);
                vec3 axis = subjectColor - otherColor;
                float separation = dot(axis, axis);
                float matte = clamp(dot(color - otherColor, axis) / max(separation, 0.0001), 0.0, 1.0);
                vec3 residual = color - mix(otherColor, subjectColor, matte);
                float confidence = separation / (separation + variance.x + variance.y + 0.005);
                confidence *= 1.0 / (1.0 + dot(residual, residual) / 0.01);
                mask = mix(mask, matte, confidence);
                if (depthWeight.x > 0.0) depths.x = depthSum.x / depthWeight.x;
                if (depthWeight.y > 0.0) depths.y = depthSum.y / depthWeight.y;
            }
            fragColor = vec4(mix(depths.y, depths.x, mask), depths, mask);
        }
    """.trimIndent()

    /**
     * `cr_stage_refine_depth` (`RefWeightedMedianFilter`) on the subject (G)
     * and non-subject (B) layers. A sample votes with weight 1 when all eight
     * neighbours of its layer lie within 0.01, otherwise 1e-5, times the range
     * Gaussian exp(-dBin^2 / 2 sigma^2) of 256 bins around the centre. The
     * weighted median bin is the first bin whose cumulative vote exceeds half
     * the total, found by two radix-16 histogram passes over the window; its
     * value is the weighted mean of the samples inside that bin, so float
     * layers do not terrace to 8 bits.
     * R is recomposed from the filtered layers; A is unchanged.
     *
     * The window radius is compiled in, sizing the tile to the window. Each
     * tile sample carries both layers' bins and flatness votes, so the three
     * window passes per layer only read shared memory. The radix counters are
     * per invocation, lane-minor in shared memory; shared memory stays within
     * the GLES 3.1 minimum of 16 KiB at [LAYER_MEDIAN_MAX_RADIUS].
     */
    fun layerMedianComputeShader(radius: Int): String {
        require(radius in 1..LAYER_MEDIAN_MAX_RADIUS) { "Layer median radius $radius out of range" }
        return """#version 310 es
        precision highp float;
        precision highp int;
        precision highp sampler2D;
        layout(local_size_x = 8, local_size_y = 8) in;

        const int RADIUS = $radius;
        const int TILE = 8 + 2 * RADIUS;
        const int LANES = 64;
        const int RADIX = 16;
        // Per tile sample: G, B depth and bins / flatness (bits 0-7 G bin, 8-15 B bin, 16 G flat, 17 B flat).
        shared vec2 tileDepth[TILE * TILE];
        shared uint tileMeta[TILE * TILE];
        shared float rangeWeight[256];
        // Radix counters of each invocation at [digit * LANES + lane].
        shared float radixWeight[RADIX * LANES];

        layout(rgba16f, binding = 0) writeonly uniform highp image2D uLayerImage;
        uniform sampler2D uDepthTexture;
        uniform float uRangeSigmaBins;
        uniform float uFlatThreshold;
        uniform float uEdgeWeight;

        int depthBin(float value) {
            return int(clamp(value, 0.0, 1.0) * 255.0);
        }

        int sampleBin(uint meta, int layer) {
            return int((meta >> uint(8 * layer)) & 255u);
        }

        float sampleWeight(uint meta, int layer, int bin, int centerBin) {
            float vote = ((meta >> uint(16 + layer)) & 1u) != 0u ? 1.0 : uEdgeWeight;
            return vote * rangeWeight[abs(bin - centerBin)];
        }

        float weightedMedian(int layer, ivec2 local, int lane, float center) {
            int centerBin = depthBin(center);

            // Coarse digit: bins >> 4.
            for (int d = 0; d < RADIX; d++) radixWeight[d * LANES + lane] = 0.0;
            for (int y = -RADIUS; y <= RADIUS; y++) {
                int row = (local.y + y) * TILE + local.x;
                for (int x = -RADIUS; x <= RADIUS; x++) {
                    uint meta = tileMeta[row + x];
                    int b = sampleBin(meta, layer);
                    radixWeight[(b >> 4) * LANES + lane] += sampleWeight(meta, layer, b, centerBin);
                }
            }
            float total = 0.0;
            for (int d = 0; d < RADIX; d++) total += radixWeight[d * LANES + lane];
            float halfTotal = 0.5 * total;
            // `below` ends as the vote of all bins under the coarse digit.
            int coarse = RADIX - 1;
            float below = 0.0;
            for (int d = 0; d < RADIX - 1; d++) {
                float next = below + radixWeight[d * LANES + lane];
                if (next > halfTotal) { coarse = d; break; }
                below = next;
            }

            // Fine digit inside the coarse bin.
            for (int d = 0; d < RADIX; d++) radixWeight[d * LANES + lane] = 0.0;
            for (int y = -RADIUS; y <= RADIUS; y++) {
                int row = (local.y + y) * TILE + local.x;
                for (int x = -RADIUS; x <= RADIUS; x++) {
                    uint meta = tileMeta[row + x];
                    int b = sampleBin(meta, layer);
                    if ((b >> 4) == coarse) {
                        radixWeight[(b & 15) * LANES + lane] += sampleWeight(meta, layer, b, centerBin);
                    }
                }
            }
            // No bin reaching half the vote leaves the last bin, as bisection does.
            int fine = RADIX - 1;
            for (int d = 0; d < RADIX - 1; d++) {
                below += radixWeight[d * LANES + lane];
                if (below > halfTotal) { fine = d; break; }
            }
            int medianBin = coarse * RADIX + fine;

            float binWeight = 0.0;
            float binValue = 0.0;
            for (int y = -RADIUS; y <= RADIUS; y++) {
                int row = (local.y + y) * TILE + local.x;
                for (int x = -RADIUS; x <= RADIUS; x++) {
                    uint meta = tileMeta[row + x];
                    int b = sampleBin(meta, layer);
                    if (b == medianBin) {
                        float w = sampleWeight(meta, layer, b, centerBin);
                        binWeight += w;
                        binValue += w * tileDepth[row + x][layer];
                    }
                }
            }
            return binWeight > 0.0 ? binValue / binWeight : float(medianBin) / 255.0;
        }

        void main() {
            ivec2 size = textureSize(uDepthTexture, 0);
            ivec2 origin = ivec2(gl_WorkGroupID.xy) * 8 - RADIUS;
            int lane = int(gl_LocalInvocationIndex);
            for (int i = lane; i < TILE * TILE; i += LANES) {
                ivec2 pixel = clamp(origin + ivec2(i % TILE, i / TILE), ivec2(0), size - 1);
                vec2 layers = texelFetch(uDepthTexture, pixel, 0).gb;
                bvec2 isFlat = bvec2(true);
                for (int y = -1; y <= 1; y++) {
                    for (int x = -1; x <= 1; x++) {
                        vec2 neighbour = texelFetch(uDepthTexture, clamp(pixel + ivec2(x, y), ivec2(0), size - 1), 0).gb;
                        isFlat = bvec2(isFlat.x && abs(neighbour.x - layers.x) <= uFlatThreshold,
                            isFlat.y && abs(neighbour.y - layers.y) <= uFlatThreshold);
                    }
                }
                tileDepth[i] = layers;
                tileMeta[i] = uint(depthBin(layers.x)) | (uint(depthBin(layers.y)) << 8) |
                    (isFlat.x ? 65536u : 0u) | (isFlat.y ? 131072u : 0u);
            }
            for (int i = lane; i < 256; i += LANES) {
                rangeWeight[i] = exp(-float(i * i) / (2.0 * uRangeSigmaBins * uRangeSigmaBins));
            }
            barrier();

            ivec2 pixel = ivec2(gl_GlobalInvocationID.xy);
            if (pixel.x >= size.x || pixel.y >= size.y) return;
            ivec2 local = ivec2(gl_LocalInvocationID.xy) + RADIUS;
            vec4 center = texelFetch(uDepthTexture, pixel, 0);
            float subjectDepth = weightedMedian(0, local, lane, center.g);
            float otherDepth = weightedMedian(1, local, lane, center.b);
            imageStore(uLayerImage, pixel, vec4(mix(otherDepth, subjectDepth, center.a), subjectDepth, otherDepth, center.a));
        }
    """.trimIndent()
    }

    /**
     * Fixed-point scale of the integer gradient-field accumulators. PSFs sum
     * to one, so a pixel's delta stays within an impulse's +-radiance limit
     * (16 * 2^24 < 2^31) while large-radius increments of ~1e-5 survive.
     */
    const val DELTA_FIXED_SCALE = 16777216.0f

    /** Source radiance limit that keeps the fixed-point gradient sums inside int32. */
    const val MAX_SCATTER_RADIANCE = 16.0f

    const val HISTOGRAM_BINS = 301

    private val LINEAR_FUNCTIONS = """
        uniform int uLinearInput;

        vec3 toLinear(vec3 color) {
            return uLinearInput != 0 ? max(color, vec3(0.0))
                : pow(clamp(color, 0.0, 1.0), vec3(2.2));
        }

        float luminance(vec3 linear) {
            return dot(linear, vec3(0.2126, 0.7152, 0.0722));
        }
    """.trimIndent().prependIndent("        ")

    /** `ComputeDefocusValuesForDepthParams` + the per-pixel CoC of `sub_2F35938` (§3). */
    internal val LENS_COC_FUNCTIONS = """
        uniform vec4 uFocalRange; // r0 r1 r2 r3 over Lens Blur depth (nearer is smaller)
        uniform float uBlurAmount;

        float lensDefocus(float depth) {
            if (depth < uFocalRange.y) {
                if (uFocalRange.y == uFocalRange.x) return -1.0;
                return -min(1.0, (uFocalRange.y - depth) / (uFocalRange.y - uFocalRange.x));
            }
            if (depth > uFocalRange.z) {
                if (uFocalRange.z == uFocalRange.w) return 1.0;
                return min(1.0, (depth - uFocalRange.z) / (uFocalRange.w - uFocalRange.z));
            }
            return 0.0;
        }

        // Signed, normalized circle of confusion: radius = |coc| * maxRadius.
        float lensCoc(float disparity) {
            float depth = 1.0 - clamp(disparity, 0.0, 1.0);
            float value = uBlurAmount * lensDefocus(depth);
            return depth >= uFocalRange.y ? clamp(value, 0.0, 1.0) : clamp(value, -1.0, 0.0);
        }
    """.trimIndent().prependIndent("        ")

    /**
     * Radial transmission of the previous gather's aperture (`apertureWeight`),
     * by style: 1 = swirl (soft feathered disc with a restrained shoulder),
     * 2 = soap-bubble background (center-weighted). rho is the warped pupil
     * radius relative to the CoC; the transmission is zero beyond the extent.
     */
    private val APERTURE_TRANSMISSION = """
        float apertureExtent(int style) {
            return style == 1 ? 1.0 : 1.05;
        }

        float apertureTransmission(int style, float rho) {
            if (style == 1) {
                float support = 1.0 - smoothstep(0.64, 1.0, rho);
                float radialTransmission = mix(
                    0.62,
                    0.42,
                    smoothstep(0.0, 0.82, rho)
                );
                float shoulder = smoothstep(0.48, 0.72, rho)
                    * (1.0 - smoothstep(0.76, 1.0, rho));
                return support * (radialTransmission + shoulder * 0.075);
            }
            float softEdge = 1.0 - smoothstep(0.70, 1.05, rho);
            float radialEnergy = exp(-rho * rho * 1.55);
            float centerWeightedTransmission = mix(
                0.16,
                1.0,
                radialEnergy
            );
            return softEdge * centerWeightedTransmission;
        }
    """.trimIndent().prependIndent("        ")

    /** `cr_trunc_tent` evaluation exactly as `cr_stage_lens_blur::Splat` performs it. */
    private val TENT_FUNCTION = """
        float lensTent(vec4 tent, float radius) {
            if (radius >= tent.y && radius <= tent.z) return 1.0;
            if (radius <= tent.x) return tent.x == tent.y ? 1.0 : 0.0;
            if (radius >= tent.w) return tent.z == tent.w ? 1.0 : 0.0;
            if (radius < tent.y) return (radius - tent.x) / (tent.y - tent.x);
            return 1.0 - (radius - tent.z) / (tent.w - tent.z);
        }
    """.trimIndent().prependIndent("        ")

    /**
     * Per-domain CoC of both depth layers. Lens Blur's layered mode scatters
     * each surface with its matte as weight instead of a mixed depth, so a
     * matte-edge pixel is in focus with weight a and background with 1 - a.
     * Out: R = subject CoC, G = non-subject CoC, B = subject coverage a,
     * A = far-side spread source min(max(coc, 0), cap) of the pixel.
     */
    val COC_FRAGMENT_SHADER = """#version 300 es
        precision highp float;
        precision highp sampler2D;
        in vec2 vTexCoord;
        out vec4 fragColor;

        uniform sampler2D uDepthTexture;
        uniform float uSpreadCap; // 10 px / maxRadius

        $BOKEH_LAYER_SAMPLING
        $LENS_COC_FUNCTIONS

        void main() {
            vec4 layers = sampleBokehLayers(vTexCoord);
            float subjectCoc = lensCoc(layers.g);
            float otherCoc = lensCoc(layers.b);
            float coverage = clamp(layers.a, 0.0, 1.0);
            float spread = coverage * min(max(subjectCoc, 0.0), uSpreadCap)
                + (1.0 - coverage) * min(max(otherCoc, 0.0), uSpreadCap);
            fragColor = vec4(subjectCoc, otherCoc, coverage, spread);
        }
    """.trimIndent()

    /**
     * Separable `GaussianBlur` of the far-side spread (half width ceil(r),
     * sigma = (2r + 1) / 3). The vertical pass applies coc = max(coc, spread)
     * to the far side of both layers.
     */
    val COC_SPREAD_FRAGMENT_SHADER = """#version 300 es
        precision highp float;
        precision highp int;
        precision highp sampler2D;
        out vec4 fragColor;

        uniform sampler2D uCocTexture;
        uniform float uRadius;
        uniform ivec2 uDirection;
        uniform int uFinalize;

        void main() {
            ivec2 size = textureSize(uCocTexture, 0);
            ivec2 pixel = ivec2(gl_FragCoord.xy);
            vec4 center = texelFetch(uCocTexture, pixel, 0);
            int taps = int(ceil(uRadius));
            float sigma = (2.0 * uRadius + 1.0) / 3.0;
            float denominator = -1.0 / (2.0 * sigma * sigma);
            float sum = 0.0;
            float weightSum = 0.0;
            for (int i = -taps; i <= taps; i++) {
                ivec2 p = clamp(pixel + uDirection * i, ivec2(0), size - 1);
                float w = exp(float(i * i) * denominator);
                sum += texelFetch(uCocTexture, p, 0).a * w;
                weightSum += w;
            }
            float spread = sum / weightSum;
            if (uFinalize != 0) {
                vec2 coc = vec2(
                    center.r >= 0.0 ? max(center.r, spread) : center.r,
                    center.g >= 0.0 ? max(center.g, spread) : center.g
                );
                fragColor = vec4(coc, center.b, spread);
            } else {
                fragColor = vec4(center.rgb, spread);
            }
        }
    """.trimIndent()

    /** Highlight guide source: clipped scene-linear luminance at the guide resolution. */
    val GUIDE_LUMINANCE_FRAGMENT_SHADER = """#version 300 es
        precision highp float;
        precision highp sampler2D;
        in vec2 vTexCoord;
        out vec4 fragColor;

        uniform sampler2D uInputTexture;
        uniform float uSourceLod;

        $LINEAR_FUNCTIONS

        void main() {
            vec3 linear = clamp(toLinear(textureLod(uInputTexture, vTexCoord, uSourceLod).rgb), 0.0, 1.0);
            fragColor = vec4(luminance(linear), 0.0, 0.0, 1.0);
        }
    """.trimIndent()

    /** `cr_stage_highlight_guide` gradient mask: 5x5 LoG response of I = Y / max(Y). Out: R = g, G = I. */
    val GUIDE_GRADIENT_FRAGMENT_SHADER = """#version 300 es
        precision highp float;
        precision highp int;
        precision highp sampler2D;
        out vec4 fragColor;

        uniform sampler2D uLuminanceTexture;
        uniform float uInverseMax;

        const float KERNEL[25] = float[25](
            1.0,  2.0,   2.0,  2.0, 1.0,
            2.0,  0.0,  -4.0,  0.0, 2.0,
            2.0, -4.0, -12.0, -4.0, 2.0,
            2.0,  0.0,  -4.0,  0.0, 2.0,
            1.0,  2.0,   2.0,  2.0, 1.0
        );

        void main() {
            ivec2 size = textureSize(uLuminanceTexture, 0);
            ivec2 pixel = ivec2(gl_FragCoord.xy);
            float response = 0.0;
            for (int y = 0; y < 5; y++) {
                for (int x = 0; x < 5; x++) {
                    ivec2 p = clamp(pixel + ivec2(x - 2, y - 2), ivec2(0), size - 1);
                    response += KERNEL[y * 5 + x] * texelFetch(uLuminanceTexture, p, 0).r * uInverseMax;
                }
            }
            float mask = 1.0 - clamp((1.0 - abs(response * 0.2)) * 5.0, 0.0, 1.0);
            float intensity = texelFetch(uLuminanceTexture, pixel, 0).r * uInverseMax;
            fragColor = vec4(mask, intensity, 0.0, 1.0);
        }
    """.trimIndent()

    /** 7x7 disc dilation of the gradient mask and the tanh-weighted highlight guide. */
    val GUIDE_COMBINE_FRAGMENT_SHADER = """#version 300 es
        precision highp float;
        precision highp int;
        precision highp sampler2D;
        out vec4 fragColor;

        uniform sampler2D uGradientTexture;

        const int DISC[49] = int[49](
            0, 0, 0, 1, 0, 0, 0,
            0, 1, 1, 1, 1, 1, 0,
            1, 1, 1, 1, 1, 1, 1,
            1, 1, 1, 1, 1, 1, 1,
            1, 1, 1, 1, 1, 1, 1,
            0, 1, 1, 1, 1, 1, 0,
            0, 0, 0, 1, 0, 0, 0
        );

        void main() {
            ivec2 size = textureSize(uGradientTexture, 0);
            ivec2 pixel = ivec2(gl_FragCoord.xy);
            float dilated = 0.0;
            for (int y = 0; y < 7; y++) {
                for (int x = 0; x < 7; x++) {
                    if (DISC[y * 7 + x] == 0) continue;
                    ivec2 p = clamp(pixel + ivec2(x - 3, y - 3), ivec2(0), size - 1);
                    dilated = max(dilated, texelFetch(uGradientTexture, p, 0).r);
                }
            }
            float intensity = texelFetch(uGradientTexture, pixel, 0).g;
            float t = tanh(4.0 * clamp(intensity - 0.55, 0.0, 1.0));
            fragColor = vec4(intensity * (0.2 + t * (0.4 + 0.8 * dilated)), 0.0, 0.0, 1.0);
        }
    """.trimIndent()

    /** Maximum of a non-negative R channel via the monotonic float bit pattern. */
    val MAX_COMPUTE_SHADER = """#version 310 es
        precision highp float;
        precision highp int;
        precision highp sampler2D;
        layout(local_size_x = 8, local_size_y = 8) in;

        layout(std430, binding = 0) buffer Result { uint maxBits; };
        uniform sampler2D uTexture;

        void main() {
            ivec2 size = textureSize(uTexture, 0);
            ivec2 pixel = ivec2(gl_GlobalInvocationID.xy);
            if (pixel.x >= size.x || pixel.y >= size.y) return;
            atomicMax(maxBits, floatBitsToUint(max(texelFetch(uTexture, pixel, 0).r, 0.0)));
        }
    """.trimIndent()

    /** Near / far radius histograms (floor and ceil bins) of every weighted layer, as `sub_2F35938` builds them. */
    val HISTOGRAM_COMPUTE_SHADER = """#version 310 es
        precision highp float;
        precision highp int;
        precision highp sampler2D;
        layout(local_size_x = 8, local_size_y = 8) in;

        layout(std430, binding = 0) buffer Histogram { uint bins[]; };
        uniform sampler2D uCocTexture;
        uniform float uMaxRadius;

        void main() {
            ivec2 size = textureSize(uCocTexture, 0);
            ivec2 pixel = ivec2(gl_GlobalInvocationID.xy);
            if (pixel.x >= size.x || pixel.y >= size.y) return;
            vec4 cocs = texelFetch(uCocTexture, pixel, 0);
            for (int layer = 0; layer < 2; layer++) {
                float layerWeight = layer == 0 ? cocs.b : 1.0 - cocs.b;
                if (layerWeight <= 0.0) continue;
                float coc = layer == 0 ? cocs.r : cocs.g;
                float radius = min(abs(coc) * uMaxRadius, float($HISTOGRAM_BINS - 1));
                int side = coc < 0.0 ? 0 : $HISTOGRAM_BINS;
                atomicAdd(bins[side + int(floor(radius))], 1u);
                atomicAdd(bins[side + int(ceil(radius))], 1u);
            }
        }
    """.trimIndent()

    /**
     * `cr_stage_lens_blur::Splat` for one band, one domain and one strip:
     * both depth layers of every source scatter their PSF gradient field
     * `(dy, dx, delta)` scaled by matte x band x domain weight and
     * highlight-boosted radiance into int32 fixed
     * point accumulators (R, G, B, W per pixel). Cat-eye vignetting clips
     * each entry to the displaced disc like the Cateye scatter kernel.
     *
     * uStyle 1 (swirl) and 2 (soap bubble) replace the bank by the previous
     * renderer's aperture ([BokehStyleShaders]): its radial transmission under
     * the field-dependent pupil warp of the source, as nested ellipses. Style 2
     * also replaces the non-subject source by its background in proportion to
     * its bubble-source membership, the energy the soap bubbles re-emit.
     */
    val SCATTER_COMPUTE_SHADER = """#version 310 es
        precision highp float;
        precision highp int;
        precision highp sampler2D;
        layout(local_size_x = 8, local_size_y = 8) in;

        layout(std430, binding = 0) buffer Deltas { int deltas[]; };
        layout(std430, binding = 1) readonly buffer PsfBank { int psf[]; };

        uniform sampler2D uCocTexture;
        uniform sampler2D uInputTexture;
        uniform sampler2D uGuideTexture;
        uniform ivec2 uDomainSize;
        uniform int uSourceRow;
        uniform ivec2 uStripRows;
        uniform int uNearField;
        uniform vec4 uBandTent;
        uniform vec4 uDomainTent;
        uniform float uMaxRadius;
        uniform float uDomainScale;
        uniform float uRadiusScale;
        uniform float uColorLod;
        uniform float uGuideScale;
        uniform float uHighlightsBoost;
        uniform float uBoostRadius;
        uniform float uCatEyeAmount;
        uniform float uCatEyeScale;
        uniform int uStyle;
        uniform vec3 uPupilWarp; // radial scale, tangential scale, shear at full field
        uniform sampler2D uBubbleSourceTexture;
        uniform sampler2D uLayerColorTexture;
        uniform float uSourceLod;
        uniform float uBubbleBackgroundLod;

        $LINEAR_FUNCTIONS
        $TENT_FUNCTION
        $APERTURE_TRANSMISSION

        const int MAX_PUPIL_RINGS = 16;
        // Ring spacing in domain pixels; finer steps are below the anti-aliased run.
        const float PUPIL_RING_SPACING = 1.5;
        // Below this domain radius the warped pupil is a point; the bank renders it.
        const float MIN_PUPIL_RADIUS = 1.0;

        float lstar(float y) {
            float l = y > 0.00885645167904 ? 116.0 * pow(y, 1.0 / 3.0) - 16.0 : 903.296296296 * y;
            return l * 0.01;
        }

        int roundAway(float value) {
            return int(sign(value) * floor(abs(value) + 0.5));
        }

        void addDelta(int rowBase, int column, vec4 value) {
            if (column >= uDomainSize.x) return;
            int base = (rowBase + max(column, 0)) * 4;
            ivec4 q = ivec4(round(value * $DELTA_FIXED_SCALE));
            // Adding zero is a no-op; dark sources and faint ring edges skip the atomics.
            if (q.r != 0) atomicAdd(deltas[base], q.r);
            if (q.g != 0) atomicAdd(deltas[base + 1], q.g);
            if (q.b != 0) atomicAdd(deltas[base + 2], q.b);
            if (q.a != 0) atomicAdd(deltas[base + 3], q.a);
        }

        // Exact coverage of [start, end] (pixel centers at integers) along one row.
        void emitRun(int rowBase, int x, float start, float end, vec4 value) {
            float a = float(x) + start + 0.5;
            float b = float(x) + end + 0.5;
            int ia = int(floor(a));
            int ib = int(floor(b));
            float fa = a - float(ia);
            float fb = b - float(ib);
            if (ia == ib) {
                addDelta(rowBase, ia, value * (b - a));
                addDelta(rowBase, ia + 1, -value * (b - a));
            } else {
                addDelta(rowBase, ia, value * (1.0 - fa));
                addDelta(rowBase, ia + 1, value * fa);
                addDelta(rowBase, ib, -value * (1.0 - fb));
                addDelta(rowBase, ib + 1, -value * fb);
            }
        }

        // Pixel offset of pupil coordinates (tangential, radial) of a source at
        // uv. Inverse of `biotarAperturePosition` of the previous gather:
        // p = (t / ts, (r + shear * t) / rs).
        mat2 pupilWarp(vec2 uv) {
            float aspect = float(uDomainSize.x) / float(uDomainSize.y);
            vec2 field = (uv * 2.0 - 1.0) * vec2(aspect, 1.0);
            float fieldRadius = length(field);
            vec2 radial = fieldRadius > 0.0001 ? field / fieldRadius : vec2(0.0, 1.0);
            vec2 tangential = vec2(-radial.y, radial.x);
            float fieldStrength = smoothstep(0.12, 1.15, fieldRadius);
            float radialScale = mix(1.0, uPupilWarp.x, fieldStrength);
            float tangentialScale = mix(1.0, uPupilWarp.y, fieldStrength);
            float shear = uPupilWarp.z * fieldStrength;
            return mat2(tangentialScale * (tangential - radial * shear), radial * radialScale);
        }

        // The aperture transmission as nested ellipses rho <= rho_k under the
        // pupil map, normalized by their discrete row coverage so the weight
        // sums to one like a bank PSF.
        void scatterPupil(int x, int y, float domainRadius, vec3 color, float weight) {
            vec2 uv = (vec2(x, y) + 0.5) / vec2(uDomainSize);
            mat2 pupil = pupilWarp(uv) * domainRadius;
            float extent = apertureExtent(uStyle);
            float semiAxis = max(length(pupil[0]), length(pupil[1]));
            int ringCount = clamp(int(ceil(semiAxis * extent / PUPIL_RING_SPACING)), 2, MAX_PUPIL_RINGS);
            float ringStep = extent / float(ringCount);
            float radii[MAX_PUPIL_RINGS];
            float heights[MAX_PUPIL_RINGS];
            float next = 0.0;
            for (int k = ringCount - 1; k >= 0; k--) {
                float level = 0.5 * (
                    apertureTransmission(uStyle, (float(k) + 0.25) * ringStep)
                    + apertureTransmission(uStyle, (float(k) + 0.75) * ringStep));
                radii[k] = float(k + 1) * ringStep;
                heights[k] = level - next;
                next = level;
            }

            mat2 inverseMap = inverse(pupil);
            float a = dot(inverseMap[0], inverseMap[0]);
            float ab = dot(inverseMap[0], inverseMap[1]);
            float d = dot(inverseMap[1], inverseMap[1]);
            int rowExtent = int(ceil(extent * length(vec2(pupil[0].y, pupil[1].y))));
            float total = 0.0;
            for (int dy = -rowExtent; dy <= rowExtent; dy++) {
                float fy = float(dy);
                for (int k = 0; k < ringCount; k++) {
                    float discriminant = fy * fy * (ab * ab - a * d) + a * radii[k] * radii[k];
                    if (discriminant > 0.0) total += heights[k] * (2.0 * sqrt(discriminant) / a);
                }
            }
            if (total <= 1e-8) return;
            vec4 target = vec4(color, 1.0) * (weight / total);

            int rowFirst = max(-rowExtent, uStripRows.x - y);
            int rowLast = min(rowExtent, uStripRows.y - 1 - y);
            for (int dy = rowFirst; dy <= rowLast; dy++) {
                int rowBase = (y + dy - uStripRows.x) * uDomainSize.x;
                float fy = float(dy);
                float b = fy * ab;
                for (int k = 0; k < ringCount; k++) {
                    float discriminant = fy * fy * (ab * ab - a * d) + a * radii[k] * radii[k];
                    if (discriminant <= 0.0) continue;
                    float root = sqrt(discriminant);
                    emitRun(rowBase, x, (-b - root) / a, (-b + root) / a, target * heights[k]);
                }
            }
        }

        // `removeBubbleSource` of the previous gather: the soap bubbles re-emit
        // this energy, so the scatter keeps only the neighborhood background.
        vec3 removeBubbleSource(vec3 linear, vec2 uv) {
            float membership = textureLod(uBubbleSourceTexture, uv, uSourceLod).a;
            if (membership <= 0.0) return linear;
            vec4 background = textureLod(uLayerColorTexture, uv, max(uBubbleBackgroundLod, uSourceLod));
            if (background.a < 0.001) return linear;
            return mix(linear, background.rgb / background.a, clamp(membership, 0.0, 1.0));
        }

        void scatterLayer(int x, int y, float coc, float layerWeight, vec3 baseColor, float guide) {
            if ((coc < 0.0) != (uNearField != 0)) return;
            float radius = abs(coc) * uMaxRadius;
            float weight = layerWeight * lensTent(uBandTent, radius) * lensTent(uDomainTent, radius);
            if (weight <= 0.0) return;

            float domainRadius = radius * uDomainScale;
            int psfCount = psf[0];
            int maxIntegerRadius = psf[1];
            int integerRadius = int(floor(domainRadius));
            int index = psfCount - 1;
            if (integerRadius <= maxIntegerRadius) {
                int first = psf[3 + 2 * integerRadius];
                int count = psf[4 + 2 * integerRadius];
                index = min(first + int(floor(fract(domainRadius) * float(count) + 0.5)), psfCount - 1);
            }
            int header = psf[2] + 3 * index;
            int halfSize = psf[header];
            int rowTable = psf[header + 1];
            int entryBase = psf[header + 2];

            float low = 0.4 + 0.45 * (1.0 - uHighlightsBoost);
            float boostRamp = clamp((radius - 0.5 * uBoostRadius) / (0.5 * uBoostRadius), 0.0, 1.0);
            vec3 color = baseColor * (1.0 + 5.0 * uHighlightsBoost * smoothstep(low, 1.0, guide) * boostRamp);
            color = min(color, vec3($MAX_SCATTER_RADIANCE));
            if (uStyle != 0 && domainRadius >= MIN_PUPIL_RADIUS) {
                scatterPupil(x, y, domainRadius, color, weight);
                return;
            }

            int rowFirst = max(-halfSize, uStripRows.x - y);
            int rowLast = min(halfSize, uStripRows.y - 1 - y);
            float catEye = uCatEyeAmount * clamp((radius / uRadiusScale - 4.0) * 0.25, 0.0, 1.0);
            vec2 clipCenter = vec2(0.0);
            float clipRadiusSquared = 0.0;
            if (catEye > 0.0) {
                vec2 field = clamp(vec2(x, y) / vec2(uDomainSize), 0.0, 1.0) * 2.0 - 1.0;
                float fieldSquared = dot(field, field);
                float clipRadius = domainRadius * uCatEyeScale;
                float displacement = clipRadius * catEye * min(fieldSquared, 1.0);
                clipCenter = field * (displacement / (fieldSquared + 1e-12));
                clipRadiusSquared = clipRadius * clipRadius;
                rowFirst = max(rowFirst, roundAway(clipCenter.y - clipRadius));
                rowLast = min(rowLast, roundAway(clipCenter.y + clipRadius));
            }

            float fixedWeight = weight * $DELTA_FIXED_SCALE;
            for (int dy = rowFirst; dy <= rowLast; dy++) {
                int start = psf[rowTable + dy + halfSize];
                int end = psf[rowTable + dy + halfSize + 1];
                int rowBase = (y + dy - uStripRows.x) * uDomainSize.x;
                for (int e = start; e < end; e++) {
                    int packedOffset = psf[entryBase + 2 * e];
                    float delta = intBitsToFloat(psf[entryBase + 2 * e + 1]);
                    int dx = (packedOffset << 16) >> 16;
                    if (catEye > 0.0) {
                        float ry = float(dy) - clipCenter.y;
                        float rx = float(dx) - clipCenter.x;
                        if (ry * ry + rx * rx > clipRadiusSquared) {
                            float chord = sqrt(max(clipRadiusSquared - ry * ry, 0.0));
                            dx = roundAway(rx >= 0.0 ? clipCenter.x + chord : clipCenter.x - chord);
                        }
                    }
                    int column = x + dx;
                    if (column >= uDomainSize.x) continue;
                    int base = (rowBase + max(column, 0)) * 4;
                    float q = delta * fixedWeight;
                    ivec4 quantized = ivec4(round(vec4(q * color, q)));
                    if (quantized.r != 0) atomicAdd(deltas[base], quantized.r);
                    if (quantized.g != 0) atomicAdd(deltas[base + 1], quantized.g);
                    if (quantized.b != 0) atomicAdd(deltas[base + 2], quantized.b);
                    if (quantized.a != 0) atomicAdd(deltas[base + 3], quantized.a);
                }
            }
        }

        void main() {
            int x = int(gl_GlobalInvocationID.x);
            int y = uSourceRow + int(gl_GlobalInvocationID.y);
            if (x >= uDomainSize.x || y >= uDomainSize.y) return;
            vec4 cocs = texelFetch(uCocTexture, ivec2(x, y), 0);
            vec2 uv = (vec2(x, y) + 0.5) / vec2(uDomainSize);
            vec3 color = toLinear(textureLod(uInputTexture, uv, uColorLod).rgb);
            float guide = min(lstar(clamp(luminance(color), 0.0, 1.0)),
                textureLod(uGuideTexture, uv, 0.0).r * uGuideScale);
            // Layered depth: each surface is scattered with its matte as weight.
            scatterLayer(x, y, cocs.r, cocs.b, color, guide);
            if (uStyle == 2) {
                vec3 background = removeBubbleSource(color, uv);
                if (background != color) {
                    guide = min(lstar(clamp(luminance(background), 0.0, 1.0)),
                        textureLod(uGuideTexture, uv, 0.0).r * uGuideScale);
                    color = background;
                }
            }
            scatterLayer(x, y, cocs.g, 1.0 - cocs.b, color, guide);
        }
    """.trimIndent()

    /**
     * `Integrate`: row prefix sums of the gradient field; the weight channel
     * is clamped at zero on every step. The deltas are cleared for the next
     * scatter. uAccumulate adds into the target instead of overwriting it.
     */
    val INTEGRATE_COMPUTE_SHADER = """#version 310 es
        precision highp float;
        precision highp int;
        layout(local_size_x = 128) in;

        layout(std430, binding = 0) buffer Deltas { int deltas[]; };
        layout(std430, binding = 1) buffer Target { vec4 target[]; };

        uniform int uWidth;
        uniform int uRows;
        uniform int uAccumulate;

        void main() {
            int row = int(gl_GlobalInvocationID.x);
            if (row >= uRows) return;
            vec4 sum = vec4(0.0);
            for (int x = 0; x < uWidth; x++) {
                int index = row * uWidth + x;
                int base = index * 4;
                ivec4 delta = ivec4(deltas[base], deltas[base + 1], deltas[base + 2], deltas[base + 3]);
                deltas[base] = 0;
                deltas[base + 1] = 0;
                deltas[base + 2] = 0;
                deltas[base + 3] = 0;
                sum += vec4(delta) / $DELTA_FIXED_SCALE;
                sum.w = max(sum.w, 0.0);
                if (uAccumulate != 0) {
                    vec4 current = target[index];
                    target[index] = current + sum;
                } else {
                    target[index] = sum;
                }
            }
        }
    """.trimIndent()

    /** `ResampleToImageDomain` of the half-resolution domain + `AdditiveBlend` into the band. */
    val UPSAMPLE_ADD_COMPUTE_SHADER = """#version 310 es
        precision highp float;
        precision highp int;
        layout(local_size_x = 8, local_size_y = 8) in;

        layout(std430, binding = 0) readonly buffer Source { vec4 source[]; };
        layout(std430, binding = 1) buffer Band { vec4 band[]; };

        uniform int uWidth;
        uniform int uStripRow;
        uniform int uStripRows;
        uniform int uSourceWidth;
        uniform int uSourceRow;
        uniform int uSourceRows;

        vec4 fetchSource(int x, int y) {
            int cx = clamp(x, 0, uSourceWidth - 1);
            int cy = clamp(y, uSourceRow, uSourceRow + uSourceRows - 1) - uSourceRow;
            vec4 value = source[cy * uSourceWidth + cx];
            return value;
        }

        void main() {
            int x = int(gl_GlobalInvocationID.x);
            int row = int(gl_GlobalInvocationID.y);
            if (x >= uWidth || row >= uStripRows) return;
            vec2 position = (vec2(x, uStripRow + row) + 0.5) * 0.5 - 0.5;
            ivec2 base = ivec2(floor(position));
            vec2 f = position - vec2(base);
            vec4 top = mix(fetchSource(base.x, base.y), fetchSource(base.x + 1, base.y), f.x);
            vec4 bottom = mix(fetchSource(base.x, base.y + 1), fetchSource(base.x + 1, base.y + 1), f.x);
            int index = row * uWidth + x;
            vec4 current = band[index];
            band[index] = current + mix(top, bottom, f.y);
        }
    """.trimIndent()

    /**
     * `AlphaBlendRev`: front-to-back over of one band, alpha = min(1, W * gain),
     * colour normalized by max(W * gain, 1) and, for display-referred output,
     * by its largest channel. The band accumulator is cleared.
     */
    val ALPHA_BLEND_COMPUTE_SHADER = """#version 310 es
        precision highp float;
        precision highp int;
        layout(local_size_x = 8, local_size_y = 8) in;

        layout(std430, binding = 0) buffer Band { vec4 band[]; };
        layout(std430, binding = 1) buffer Scene { vec4 scene[]; };

        uniform int uWidth;
        uniform int uRows;
        uniform float uGain;
        uniform int uLinearInput;

        void main() {
            int x = int(gl_GlobalInvocationID.x);
            int row = int(gl_GlobalInvocationID.y);
            if (x >= uWidth || row >= uRows) return;
            int index = row * uWidth + x;
            vec4 layer = band[index];
            band[index] = vec4(0.0);
            float alpha = layer.w * uGain;
            vec3 color = layer.rgb * uGain / max(alpha, 1.0);
            if (uLinearInput == 0) color /= max(1.0, max(color.r, max(color.g, color.b)));
            vec4 current = scene[index];
            current.rgb += color * (1.0 - current.a);
            current.a += min(alpha, 1.0) * (1.0 - current.a);
            scene[index] = current;
        }
    """.trimIndent()

    /** Writes the strip's near / far composites to their images and clears them for the next strip. */
    val STORE_COMPUTE_SHADER = """#version 310 es
        precision highp float;
        precision highp int;
        layout(local_size_x = 8, local_size_y = 8) in;

        layout(std430, binding = 0) buffer Near { vec4 nearScene[]; };
        layout(std430, binding = 1) buffer Far { vec4 farScene[]; };
        layout(rgba16f, binding = 0) writeonly uniform highp image2D uNearImage;
        layout(rgba16f, binding = 1) writeonly uniform highp image2D uFarImage;

        uniform int uWidth;
        uniform int uStripRow;
        uniform int uRows;

        void main() {
            int x = int(gl_GlobalInvocationID.x);
            int row = int(gl_GlobalInvocationID.y);
            if (x >= uWidth || row >= uRows) return;
            int index = row * uWidth + x;
            vec4 nearValue = nearScene[index];
            vec4 farValue = farScene[index];
            imageStore(uNearImage, ivec2(x, uStripRow + row), nearValue);
            imageStore(uFarImage, ivec2(x, uStripRow + row), farValue);
            nearScene[index] = vec4(0.0);
            farScene[index] = vec4(0.0);
        }
    """.trimIndent()

    /** Clears an SSBO of 32-bit words. */
    val CLEAR_COMPUTE_SHADER = """#version 310 es
        precision highp int;
        layout(local_size_x = 128) in;

        layout(std430, binding = 0) writeonly buffer Words { uint words[]; };
        uniform int uCount;

        void main() {
            int index = int(gl_GlobalInvocationID.x);
            if (index < uCount) words[index] = 0u;
        }
    """.trimIndent()

    /**
     * Full-resolution output. `AlphaNormalizeScene` of near-over-far; the
     * in-focus fraction of the far field takes the original pixels, which the
     * working resolution cannot carry.
     */
    val COMPOSITE_FRAGMENT_SHADER = """#version 300 es
        precision highp float;
        precision highp sampler2D;
        in vec2 vTexCoord;
        out vec4 fragColor;

        uniform sampler2D uOriginalTexture;
        uniform sampler2D uCocTexture;
        uniform sampler2D uNearTexture;
        uniform sampler2D uFarTexture;
        uniform float uMaxRadiusFull;
        uniform float uWorkingPixel;
        // Swirl highlight / soap-bubble layer of the previous renderer.
        uniform sampler2D uHighlightTexture;
        uniform int uHighlights;

        $LINEAR_FUNCTIONS

        void main() {
            vec4 original = texture(uOriginalTexture, vTexCoord);
            vec3 originalLinear = toLinear(original.rgb);
            vec4 nearScene = texture(uNearTexture, vTexCoord);
            vec4 farScene = texture(uFarTexture, vTexCoord);
            float sharp = 0.0;
            if (uWorkingPixel > 1.0) {
                vec4 cocs = texture(uCocTexture, vTexCoord);
                vec2 radius = abs(cocs.rg) * uMaxRadiusFull;
                vec2 layerSharp = vec2(1.0) - smoothstep(vec2(0.5 * uWorkingPixel), vec2(1.5 * uWorkingPixel), radius);
                sharp = mix(layerSharp.y, layerSharp.x, cocs.b);
            }
            vec3 farColor = farScene.a > 0.0 ? farScene.rgb / farScene.a : vec3(0.0);
            vec3 focal = mix(farColor, originalLinear, sharp);
            float coverage = nearScene.a + (1.0 - nearScene.a) * farScene.a;
            vec3 linear = (nearScene.rgb + (1.0 - nearScene.a) * farScene.a * focal) / (coverage + 0.000001);
            vec3 encoded = uLinearInput != 0 ? linear
                : pow(clamp(linear, 0.0, 1.0), vec3(1.0 / 2.2));
            if (uHighlights != 0) {
                // The previous composite: the layer, cut by subject coverage,
                // enters with the defocus mix of the non-subject surface;
                // HDR adds radiance, SDR screens the bounded opacity.
                vec4 cocs = texture(uCocTexture, vTexCoord);
                float subject = clamp(cocs.b, 0.0, 1.0);
                float defocusMix = (1.0 - subject) * smoothstep(0.2, 1.2, abs(cocs.g) * uMaxRadiusFull);
                vec3 highlight = texture(uHighlightTexture, vTexCoord).rgb * ((1.0 - subject) * defocusMix);
                encoded = uLinearInput != 0 ? encoded + highlight
                    : encoded + (vec3(1.0) - encoded) * clamp(highlight, 0.0, 1.0);
            }
            fragColor = vec4(encoded, original.a);
        }
    """.trimIndent()
}
