package com.hinnka.mycamera.processor

/**
 * Sabre's structure-adaptive reconstruction for ISP YUV, in the incoming Y/Cb/Cr code-value domain.
 * No Bayer phase, camera white balance, RAW noise profile or square-root colour transform is used.
 * Chroma samples are centred on their 2x2 luma blocks, as in the existing YUV input contract.
 */
internal object GlesYuvSabreShaders {
    // Noise varies more slowly than image structure. Keep 128 robust samples per 64x64 native
    // region; covariance and rejection remain dense. This avoids a sort for every 32x32 region.
    const val NOISE_TILE_SIZE = 32
    private const val NOISE_SIGMA_STORAGE_SCALE = 256

    val prepareBlocks = """
        #version 300 es
        precision highp float;
        precision highp int;
        precision highp sampler2D;
        uniform sampler2D uLuma;
        uniform sampler2D uChroma;
        uniform ivec2 uInputSize;
        uniform ivec2 uChromaSize;
        out vec4 oBlock;
        void main() {
            ivec2 q = ivec2(gl_FragCoord.xy);
            float y = 0.0;
            for (int dy = 0; dy < 2; ++dy) {
                for (int dx = 0; dx < 2; ++dx) {
                    y += texelFetch(uLuma, min(2 * q + ivec2(dx, dy), uInputSize - 1), 0).r;
                }
            }
            oBlock = vec4(y * 0.25, texelFetch(uChroma, min(q, uChromaSize - 1), 0).rg, 0.0);
        }
    """.trimIndent()

    val guideAndAlignment = """
        #version 300 es
        precision highp float;
        precision highp int;
        precision highp sampler2D;
        uniform sampler2D uBlocks;
        uniform ivec2 uGuideSize;
        layout(location = 0) out vec4 oGuide;
        layout(location = 1) out highp int oGray;
        layout(location = 2) out vec2 oLinearGray;
        void main() {
            ivec2 p = ivec2(gl_FragCoord.xy);
            vec3 mean = vec3(0.0);
            float centerY = texelFetch(uBlocks, p, 0).r;
            float deltaSum = 0.0;
            float deltaSquareSum = 0.0;
            for (int y = -1; y <= 1; ++y) {
                for (int x = -1; x <= 1; ++x) {
                    vec3 v = texelFetch(uBlocks, clamp(p + ivec2(x, y), ivec2(0), uGuideSize - 1), 0).rgb;
                    mean += v * (x == 0 ? 0.5 : 0.25) * (y == 0 ? 0.5 : 0.25);
                    float delta = v.r - centerY;
                    deltaSum += delta;
                    deltaSquareSum += delta * delta;
                }
            }
            // Centre before accumulating moments: white P010 patches must not subtract
            // nearly equal order-one squares to recover a much smaller local variance.
            float variance = max(deltaSquareSum / 9.0 - (deltaSum / 9.0) * (deltaSum / 9.0), 0.0);
            oGuide = vec4(mean, variance * 1024.0);
            oGray = int(floor(clamp(mean.r, 0.0, 1.0) * 16383.0 + 0.5));
            float coarse = floor(float(oGray) / 16.0);
            oLinearGray = vec2(coarse, float(oGray) - 16.0 * coarse);
        }
    """.trimIndent()

    /**
     * Local robust high-frequency noise estimate, independently for native and guide samples.
     * Each group sorts 128 stratified checkerboard samples from a 32x32 guide cell. The separable second
     * difference [-.5,1,-.5] rejects affine ramps; its white-noise standard deviation is 1.5.
     * After the known guide [1,2,1]/4 filter, the residual/guide sigma ratio is 1/4. These are
     * effective local estimates: unknown ISP denoising correlations are not a RAW shot/read model.
     * Store standard deviations multiplied by 256, not variances: even the P010 guide quantization
     * floor then stays in the normal FP16 range. Consumers undo this encoding before arithmetic.
     * The two output images are ceil(guideSize/NOISE_TILE_SIZE), immutable RGBA16F, write-only.
     */
    val noiseEstimate = """
        #version 310 es
        precision highp float;
        precision highp int;
        precision highp sampler2D;
        layout(local_size_x = ${GlesComputeWorkGroup.LINEAR_SIZE}, local_size_y = 1, local_size_z = 1) in;
        layout(rgba16f, binding = 0) writeonly uniform highp image2D uNativeNoiseOutput;
        layout(rgba16f, binding = 1) writeonly uniform highp image2D uGuideNoiseOutput;
        uniform sampler2D uLuma;
        uniform sampler2D uChroma;
        uniform sampler2D uGuide;
        uniform ivec2 uInputSize;
        uniform ivec2 uGuideSize;
        uniform float uCodeStep;
        shared vec3 sNative[${GlesComputeWorkGroup.LINEAR_SIZE}];
        shared vec3 sGuide[${GlesComputeWorkGroup.LINEAR_SIZE}];

        void main() {
            int lane = int(gl_LocalInvocationIndex);
            ivec2 cell = ivec2(gl_WorkGroupID.xy);
            ivec2 begin = cell * $NOISE_TILE_SIZE;
            ivec2 extent = min(ivec2($NOISE_TILE_SIZE), uGuideSize - begin);
            // Spread the sample lattice over the actual tail cell instead of duplicating its edge.
            ivec2 lattice = ivec2(lane % 16, 2 * (lane / 16) + (lane % 2));
            ivec2 q = begin + min(lattice * extent / 16, extent - 1);
            // Guide residuals need its filter radius plus the residual radius. Avoid the
            // artificially quieter CLAMP_TO_EDGE border whenever the input has full support.
            ivec2 margin = min(ivec2(2), (uGuideSize - 1) / 2);
            q = clamp(q, margin, uGuideSize - 1 - margin);
            ivec2 p = clamp(2 * q + ivec2((lane / 16) % 2, lane % 2), ivec2(1), uInputSize - 2);
            vec3 nativeResidual = vec3(0.0);
            vec3 guideResidual = vec3(0.0);
            for (int y = -1; y <= 1; ++y) {
                for (int x = -1; x <= 1; ++x) {
                    float weight = (x == 0 ? 1.0 : -0.5) * (y == 0 ? 1.0 : -0.5);
                    ivec2 offset = ivec2(x, y);
                    nativeResidual += weight * vec3(
                        texelFetch(uLuma, p + offset, 0).r,
                        texelFetch(uChroma, q + offset, 0).rg);
                    guideResidual += weight * texelFetch(uGuide, q + offset, 0).rgb;
                }
            }
            sNative[lane] = abs(nativeResidual);
            sGuide[lane] = abs(guideResidual);
            memoryBarrierShared();
            barrier();
            // Each comparator has one writer. Every lane participates in every barrier.
            for (int size = 2; size <= ${GlesComputeWorkGroup.LINEAR_SIZE}; size *= 2) {
                for (int stride = size / 2; stride > 0; stride /= 2) {
                    int partner = lane ^ stride;
                    if (partner > lane) {
                        vec3 a = sNative[lane];
                        vec3 b = sNative[partner];
                        vec3 c = sGuide[lane];
                        vec3 d = sGuide[partner];
                        bool ascending = (lane & size) == 0;
                        sNative[lane] = ascending ? min(a, b) : max(a, b);
                        sNative[partner] = ascending ? max(a, b) : min(a, b);
                        sGuide[lane] = ascending ? min(c, d) : max(c, d);
                        sGuide[partner] = ascending ? max(c, d) : min(c, d);
                    }
                    memoryBarrierShared();
                    barrier();
                }
            }
            if (lane == 0) {
                const float inverseGaussianMad = 1.4826022185;
                vec3 nativeSigma = 0.5 * (sNative[63] + sNative[64]) * (inverseGaussianMad / 1.5);
                vec3 guideSigma = 0.5 * (sGuide[63] + sGuide[64]) * (inverseGaussianMad * 4.0);
                float quantizationSigma = uCodeStep * 0.2886751346;
                nativeSigma = max(nativeSigma, vec3(quantizationSigma));
                // 2x2 luma averaging halves sigma; the separable guide filter multiplies it by 3/8.
                guideSigma = max(guideSigma, quantizationSigma * vec3(0.1875, 0.375, 0.375));
                imageStore(uNativeNoiseOutput, cell, vec4(nativeSigma * float($NOISE_SIGMA_STORAGE_SCALE), 1.0));
                imageStore(uGuideNoiseOutput, cell, vec4(guideSigma * float($NOISE_SIGMA_STORAGE_SCALE), 1.0));
            }
        }
    """.trimIndent()

    /** Inverse covariance is in full-resolution pixel units; alpha is extra chroma variance. */
    val covariance = """
        #version 300 es
        precision highp float;
        precision highp int;
        precision highp sampler2D;
        uniform sampler2D uGuide;
        uniform sampler2D uNativeNoise;
        uniform sampler2D uGuideNoise;
        uniform ivec2 uGuideSize;
        out vec4 oCovariance;
        float yAt(ivec2 p) {
            return texelFetch(uGuide, clamp(p, ivec2(0), uGuideSize - 1), 0).r;
        }
        vec3 noiseAt(sampler2D noise, vec2 p) {
            return texture(noise, (p + 0.5) / (float($NOISE_TILE_SIZE) * vec2(textureSize(noise, 0)))).rgb / float($NOISE_SIGMA_STORAGE_SCALE);
        }
        void main() {
            ivec2 p = ivec2(gl_FragCoord.xy);
            vec3 tensor = vec3(0.0);
            for (int y = -1; y <= 1; ++y) {
                for (int x = -1; x <= 1; ++x) {
                    ivec2 q = p + ivec2(x, y);
                    // A central difference spans four full-resolution pixels.
                    vec2 gradient = 0.25 * vec2(yAt(q + ivec2(1, 0)) - yAt(q - ivec2(1, 0)),
                                                yAt(q + ivec2(0, 1)) - yAt(q - ivec2(0, 1)));
                    tensor += vec3(gradient * gradient, gradient.x * gradient.y);
                }
            }
            tensor /= 9.0;
            vec3 nativeSigma = noiseAt(uNativeNoise, vec2(p));
            float guideSigma = noiseAt(uGuideNoise, vec2(p)).r;
            float noiseGradient = guideSigma * guideSigma * 0.125;
            float trace = tensor.x + tensor.y;
            float separation = length(vec2(tensor.x - tensor.y, 2.0 * tensor.z));
            float major = 0.5 * (trace + separation);
            float signal = max(major - noiseGradient, 0.0);
            float confidence = signal / (signal + 4.0 * noiseGradient);
            float coherence = separation / (trace + 2.0 * noiseGradient);
            float directionality = clamp(coherence * confidence, 0.0, 1.0);
            // atan yields the dominant gradient direction without a near-zero eigenvector divide.
            float angle = separation > 0.0 ? 0.5 * atan(2.0 * tensor.z, tensor.x - tensor.y) : 0.0;
            vec2 normal = vec2(cos(angle), sin(angle));
            float localContrast = sqrt(max(texelFetch(uGuide, p, 0).a / 1024.0, 0.0));
            float flatness = nativeSigma.r / (nativeSigma.r + localContrast);
            float isotropicSigma = mix(0.55, 0.95, flatness);
            float normalSigma = mix(isotropicSigma, 0.45, directionality);
            float tangentSigma = mix(isotropicSigma, 1.15, directionality);
            float normalPrecision = 1.0 / (normalSigma * normalSigma);
            float tangentPrecision = 1.0 / (tangentSigma * tangentSigma);
            float difference = normalPrecision - tangentPrecision;
            vec3 inverseCovariance = vec3(
                tangentPrecision + difference * normal.x * normal.x,
                tangentPrecision + difference * normal.y * normal.y,
                difference * normal.x * normal.y);
            float chromaSigma = max(nativeSigma.g, nativeSigma.b);
            float chromaFlatness = chromaSigma / (chromaSigma + localContrast);
            oCovariance = vec4(inverseCovariance, mix(0.25, 1.0, chromaFlatness));
        }
    """.trimIndent()

    val rejection = """
        #version 300 es
        precision highp float;
        precision highp int;
        precision highp sampler2D;
        uniform sampler2D uReferenceGuide;
        uniform sampler2D uCurrentGuide;
        uniform sampler2D uReferenceNoise;
        uniform sampler2D uCurrentNoise;
        uniform sampler2D uAlignment;
        uniform ivec2 uGuideSize;
        uniform ivec2 uAlignmentGridSize;
        uniform int uAlignmentTileSize;
        out float oReverseWeight;
        vec2 flowAt(ivec2 tile) {
            return texelFetch(uAlignment, clamp(tile, ivec2(0), uAlignmentGridSize - 1), 0).xy;
        }
        vec3 noiseAt(sampler2D noise, vec2 p) {
            return texture(noise, (p + 0.5) / (float($NOISE_TILE_SIZE) * vec2(textureSize(noise, 0)))).rgb / float($NOISE_SIGMA_STORAGE_SCALE);
        }
        void main() {
            ivec2 p = ivec2(gl_FragCoord.xy);
            ivec2 tile = clamp(p / uAlignmentTileSize, ivec2(0), uAlignmentGridSize - 1);
            vec2 flow = flowAt(tile);
            vec2 currentP = vec2(p) + flow;
            if (any(lessThan(currentP, vec2(0.0))) || any(greaterThan(currentP, vec2(uGuideSize - 1)))) {
                oReverseWeight = 1.0;
                return;
            }
            vec2 minimumFlow = flow;
            vec2 maximumFlow = flow;
            for (int y = -1; y <= 1; ++y) {
                for (int x = -1; x <= 1; ++x) {
                    vec2 other = flowAt(tile + ivec2(x, y));
                    minimumFlow = min(minimumFlow, other);
                    maximumFlow = max(maximumFlow, other);
                }
            }
            vec4 base = texelFetch(uReferenceGuide, p, 0);
            vec4 current = texture(uCurrentGuide, (currentP + 0.5) / vec2(uGuideSize));
            base.a /= 1024.0;
            current.a /= 1024.0;
            vec3 baseSigma = noiseAt(uReferenceNoise, vec2(p));
            vec3 currentSigma = noiseAt(uCurrentNoise, currentP);
            vec3 noiseVariance = baseSigma * baseSigma + currentSigma * currentSigma;
            vec3 difference = current.rgb - base.rgb;
            vec3 signalDifference = max(difference * difference - noiseVariance, vec3(0.0));
            float localVariance = 2.0 * min(base.a, current.a);
            vec3 tolerance = max(noiseVariance, localVariance * vec3(1.0, 0.25, 0.25));
            // This dimensionless slope is paired with Sabre's 5x5-sum dilation below.
            // Unit slope rejects ordinary independent frame noise: for normalized Gaussian
            // residuals its expected reverse weight is ~0.22, above dilation's 0.088 cutoff.
            // The shared 0.07 slope gives ~0.023; it does not import a RAW noise model.
            float distance = ${MgcSabreRejectionTuning.COLOR_DIFFERENCE_RGB} *
                dot(signalDifference / tolerance, vec3(0.5, 0.25, 0.25));
            // Quarter-guide-pixel flow discontinuities are half a native luma pixel.
            bool motion = length(maximumFlow - minimumFlow) > 0.25;
            bool textured = base.a > 25.0 * baseSigma.r * baseSigma.r;
            float robustness = motion && textured ? 6.0 : 1.0;
            oReverseWeight = 1.0 - exp2(-distance * robustness);
        }
    """.trimIndent()

    val dilation = GlesMgcRawSpatialShaders.dilateRejection

    private val mergeCommon = """
        precision highp float;
        precision highp int;
        precision highp sampler2D;
        uniform sampler2D uCovariance;
        uniform sampler2D uAlignment;
        uniform sampler2D uFrameWeight;
        uniform ivec2 uInputSize;
        uniform ivec2 uGuideSize;
        uniform int uUseFrameWeight;
        vec2 flowAt(vec2 fullPixel) {
            ivec2 tile = clamp(ivec2(floor(fullPixel / 16.0)), ivec2(0), textureSize(uAlignment, 0) - 1);
            return texelFetch(uAlignment, tile, 0).xy;
        }
        float acceptanceAt(vec2 fullPixel) {
            // Dilation produces one sample per four native pixels; a partial tail clamps to its last cell.
            return uUseFrameWeight != 0
                ? texture(uFrameWeight, (fullPixel + 0.5) / (4.0 * vec2(textureSize(uFrameWeight, 0)))).r
                : 1.0;
        }
        bool inside(vec2 p, ivec2 size) {
            return all(greaterThanEqual(p, vec2(0.0))) && all(lessThanEqual(p, vec2(size - 1)));
        }
        float kernelWeight(vec2 offset, vec3 precisionMatrix) {
            float distance = dot(offset * offset, precisionMatrix.xy) + 2.0 * offset.x * offset.y * precisionMatrix.z;
            return exp(-0.5 * distance);
        }
        vec4 covarianceAt(vec2 fullPixel) {
            // A half-resolution guide sample is centred at fullPixel = 2*q + 0.5.
            return texture(uCovariance, (fullPixel + 0.5) / (2.0 * vec2(uGuideSize)));
        }
    """.trimIndent()

    /** RG16F output: per-frame normalized luma times acceptance, acceptance. Additive blending. */
    val mergeLuma = "#version 300 es\n" + mergeCommon + "\n" + """
        uniform sampler2D uCurrentY;
        out vec2 oLumaAndWeight;
        void main() {
            vec2 p = floor(gl_FragCoord.xy);
            vec2 source = p + 2.0 * flowAt(p);
            if (!inside(source, uInputSize)) {
                oLumaAndWeight = vec2(0.0);
                return;
            }
            float acceptance = acceptanceAt(p);
            vec3 precisionMatrix = covarianceAt(source).rgb;
            ivec2 anchor = ivec2(roundEven(source));
            float sum = 0.0;
            float sumWeight = 0.0;
            for (int y = -1; y <= 1; ++y) {
                for (int x = -1; x <= 1; ++x) {
                    ivec2 q = anchor + ivec2(x, y);
                    if (any(lessThan(q, ivec2(0))) || any(greaterThanEqual(q, uInputSize))) continue;
                    float weight = kernelWeight(vec2(q) - source, precisionMatrix);
                    sum += weight * texelFetch(uCurrentY, q, 0).r;
                    sumWeight += weight;
                }
            }
            oLumaAndWeight = vec2(sum / sumWeight, 1.0) * acceptance;
        }
    """.trimIndent()

    /** RGBA16F output: normalized Cb/Cr times acceptance, unused, acceptance. */
    val mergeChroma = "#version 300 es\n" + mergeCommon + "\n" + """
        uniform sampler2D uCurrentCbCr;
        out vec4 oChromaAndWeight;
        void main() {
            vec2 p = floor(gl_FragCoord.xy);
            vec2 fullPixel = 2.0 * p + 0.5;
            vec2 source = p + flowAt(fullPixel);
            ivec2 chromaSize = (uInputSize + 1) / 2;
            if (!inside(source, chromaSize)) {
                oChromaAndWeight = vec4(0.0);
                return;
            }
            float acceptance = acceptanceAt(fullPixel);
            vec4 covariance = covarianceAt(2.0 * source + 0.5);
            float determinant = covariance.x * covariance.y - covariance.z * covariance.z;
            vec3 spatialCovariance = vec3(covariance.y, covariance.x, -covariance.z) / determinant;
            spatialCovariance.xy += covariance.a;
            float chromaDeterminant = spatialCovariance.x * spatialCovariance.y - spatialCovariance.z * spatialCovariance.z;
            vec3 precisionMatrix = vec3(spatialCovariance.y, spatialCovariance.x, -spatialCovariance.z) / chromaDeterminant;
            ivec2 anchor = ivec2(roundEven(source));
            vec2 sum = vec2(0.0);
            float sumWeight = 0.0;
            for (int y = -1; y <= 1; ++y) {
                for (int x = -1; x <= 1; ++x) {
                    ivec2 q = anchor + ivec2(x, y);
                    if (any(lessThan(q, ivec2(0))) || any(greaterThanEqual(q, chromaSize))) continue;
                    float weight = kernelWeight(2.0 * (vec2(q) - source), precisionMatrix);
                    sum += weight * texelFetch(uCurrentCbCr, q, 0).rg;
                    sumWeight += weight;
                }
            }
            oChromaAndWeight = vec4(sum / sumWeight, 0.0, 1.0) * acceptance;
        }
    """.trimIndent()

    /** Normalize each native sample before interpolating chroma; confidence is not colour alpha. */
    private val normalizedSource = """
        precision highp float;
        precision highp int;
        precision highp sampler2D;
        uniform sampler2D uLumaAccumulator;
        uniform sampler2D uChromaAccumulator;
        uniform ivec2 uInputSize;
        vec2 chromaAt(ivec2 p) {
            ivec2 size = (uInputSize + 1) / 2;
            vec4 value = texelFetch(uChromaAccumulator, clamp(p, ivec2(0), size - 1), 0);
            // The identity reference contributes positive weight at every native pixel.
            return value.rg / value.a;
        }
        vec3 normalizedYcc(ivec2 p) {
            p = clamp(p, ivec2(0), uInputSize - 1);
            vec2 luma = texelFetch(uLumaAccumulator, p, 0).rg;
            vec2 chromaPosition = (vec2(p) - 0.5) * 0.5;
            ivec2 anchor = ivec2(floor(chromaPosition));
            vec2 fraction = fract(chromaPosition);
            vec2 chroma = mix(
                mix(chromaAt(anchor), chromaAt(anchor + ivec2(1, 0)), fraction.x),
                mix(chromaAt(anchor + ivec2(0, 1)), chromaAt(anchor + ivec2(1, 1)), fraction.x),
                fraction.y);
            return vec3(luma.r / luma.g, chroma);
        }
    """.trimIndent()

    val resolve = "#version 300 es\n" + normalizedSource + "\n" + """
        out vec4 oYcc;
        void main() {
            oYcc = vec4(normalizedYcc(ivec2(gl_FragCoord.xy)), 1.0);
        }
    """.trimIndent()

    /** Native-sized output avoids materializing a full RGBA16F YCC resolve surface. */
    val normalizedOutput = "#version 300 es\n" + normalizedSource + "\n" + """
        uniform vec3 uTransformX;
        uniform vec3 uTransformY;
        uniform int uIsP010;
        uniform int uDirectSource;
        uniform ivec2 uDirectOffset;
        out vec4 oColor;
        void main() {
            ivec2 outputPixel = ivec2(gl_FragCoord.xy);
            ivec2 sourcePixel;
            if (uDirectSource != 0) {
                sourcePixel = outputPixel + uDirectOffset;
            } else {
                vec2 source = vec2(
                    float(outputPixel.x) * uTransformX.x + float(outputPixel.y) * uTransformX.y + uTransformX.z,
                    float(outputPixel.x) * uTransformY.x + float(outputPixel.y) * uTransformY.y + uTransformY.z);
                sourcePixel = ivec2(floor(source + 0.5));
            }
            vec3 ycc = normalizedYcc(sourcePixel);
            float y = ycc.r;
            float cb = ycc.g - 0.5;
            float cr = ycc.b - 0.5;
            vec3 rgb = uIsP010 != 0
                ? vec3(y + 1.4746 * cr, y - 0.16455 * cb - 0.57135 * cr, y + 1.8814 * cb)
                : vec3(y + 1.402 * cr, y - 0.344136 * cb - 0.714136 * cr, y + 1.772 * cb);
            oColor = vec4(clamp(rgb, 0.0, 1.0), 1.0);
        }
    """.trimIndent()
}
