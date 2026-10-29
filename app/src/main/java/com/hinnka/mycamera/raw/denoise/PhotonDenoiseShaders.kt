package com.hinnka.mycamera.raw.denoise

import com.hinnka.mycamera.processor.GlesComputeWorkGroup
import com.hinnka.mycamera.raw.RawDenoiseHistory

/**
 * GLES 3.1 compute passes of the Photon denoiser (docs/photon-multiscale-denoise.md §3–§8, §10).
 *
 * Each program mirrors one function of tools/photon_denoise/photon_denoise.py: Analyze = down,
 * Band = band, Pilot = pilot, Final = final + output. Arithmetic is highp; stores round to the
 * image format (RGBA16F, noise RGBA32F). Pyramid borders reflect without edge repetition.
 */
internal object PhotonDenoiseShaders {
    private const val LOCAL = GlesComputeWorkGroup.IMAGE_TILE_SIZE

    // §5.1 strength table and estimate; mirrored by tools/photon_denoise/photon_denoise.py.
    const val STRENGTH_BINS = RawDenoiseHistory.STRENGTH_BINS
    const val HIST_BUCKETS = 64
    const val ESTIMATE_BLOCK = 8
    private const val STRENGTH_LOW = "-8.0"
    private const val HIST_LOW = "-12.0"
    private const val HIST_HIGH = "8.0"
    private const val MIN_SAMPLES = 200
    private const val CHI2_MEDIAN = "0.45493642"
    const val MAX_STRENGTH = 4096f
    const val ESTIMATE_PASSES = 3
    private const val FLAT_GATE = "0.5"
    private const val SPIKE = "1.5"
    private const val MAX_GROWTH = "2.0"

    private val COMMON = """
        precision highp float;
        precision highp int;
        precision highp sampler2D;

        layout(local_size_x = $LOCAL, local_size_y = $LOCAL) in;

        ivec2 groupId() { return ivec2(gl_WorkGroupID.xy); }
        ivec2 globalId() { return groupId() * $LOCAL + ivec2(gl_LocalInvocationID.xy); }

        const float LUMA_TAPS[7] = float[7](
            -1.0 / 32.0, 0.0, 9.0 / 32.0, 16.0 / 32.0, 9.0 / 32.0, 0.0, -1.0 / 32.0);
        const float CHROMA_TAPS[5] = float[5](
            1.0 / 16.0, 4.0 / 16.0, 6.0 / 16.0, 4.0 / 16.0, 1.0 / 16.0);
        const float CLIP_LEVEL = 0.98;
        const float PI = 3.14159265358979;

        int mirrorIndex(int i, int n) {
            if (n == 1) return 0;
            int period = 2 * n - 2;
            i = abs(i) % period;
            return i >= n ? period - i : i;
        }

        ivec2 mirror2(ivec2 p, ivec2 size) {
            return ivec2(mirrorIndex(p.x, size.x), mirrorIndex(p.y, size.y));
        }

        // Working YCbCr: Y = (R + 2G + B) / 4, Cb = B - G, Cr = R - G, and its exact inverse.
        vec3 yccFromRgb(vec3 x) {
            return vec3(0.25 * x.r + 0.5 * x.g + 0.25 * x.b, x.b - x.g, x.r - x.g);
        }

        vec3 rgbFromYcc(vec3 c) {
            return vec3(c.x - 0.25 * c.y + 0.75 * c.z,
                        c.x - 0.25 * c.y - 0.25 * c.z,
                        c.x + 0.75 * c.y - 0.25 * c.z);
        }
    """

    /** §3: gains contained in the input, manual bilinear (clamp to edge) of the R, Ge, Go, B map. */
    private val LENS_SHADING = """
        uniform int uLscMode;          // 0 none, 1 Camera2 whole-image UV, 2 DNG GainMap grid
        uniform sampler2D uLscMap;
        uniform ivec2 uLscSize;
        uniform float uLscGrid[8];
        uniform ivec2 uOrigin;
        uniform ivec2 uFullSize;

        vec3 lscGain(vec2 globalCentre) {
            if (uLscMode == 0) return vec3(1.0);
            vec2 mapSize = vec2(uLscSize);
            vec2 uv;
            if (uLscMode == 1) {
                uv = globalCentre / vec2(uFullSize);
            } else {
                vec2 boundsOrigin = vec2(uLscGrid[4], uLscGrid[5]);
                vec2 boundsSize = max(vec2(uLscGrid[6] - uLscGrid[4], uLscGrid[7] - uLscGrid[5]), vec2(1.0));
                vec2 norm = (globalCentre - boundsOrigin) / boundsSize;
                uv = ((norm - vec2(uLscGrid[0], uLscGrid[1])) / vec2(uLscGrid[2], uLscGrid[3]) + 0.5) / mapSize;
            }
            vec2 t = clamp(uv * mapSize - 0.5, vec2(0.0), mapSize - 1.0);
            ivec2 i0 = ivec2(floor(t));
            ivec2 i1 = min(i0 + 1, uLscSize - 1);
            vec2 f = t - vec2(i0);
            vec4 top = mix(texelFetch(uLscMap, i0, 0), texelFetch(uLscMap, ivec2(i1.x, i0.y), 0), f.x);
            vec4 bottom = mix(texelFetch(uLscMap, ivec2(i0.x, i1.y), 0), texelFetch(uLscMap, i1, 0), f.x);
            vec4 g = mix(top, bottom, f.y);
            return vec3(g.r, 0.5 * (g.g + g.b), g.a);
        }

        // §2.2 merge variance ratios (m_r, m_s): manual bilinear (clamp to edge) of the whole-image map.
        uniform sampler2D uMergeMap;
        uniform ivec2 uMergeSize;

        vec2 mergeRatio(vec2 globalCentre) {
            vec2 mapSize = vec2(uMergeSize);
            vec2 t = clamp(globalCentre / vec2(uFullSize) * mapSize - 0.5, vec2(0.0), mapSize - 1.0);
            ivec2 i0 = ivec2(floor(t));
            ivec2 i1 = min(i0 + 1, uMergeSize - 1);
            vec2 f = t - vec2(i0);
            vec2 top = mix(texelFetch(uMergeMap, i0, 0).rg, texelFetch(uMergeMap, ivec2(i1.x, i0.y), 0).rg, f.x);
            vec2 bottom = mix(texelFetch(uMergeMap, ivec2(i0.x, i1.y), 0).rg, texelFetch(uMergeMap, i1, 0).rg, f.x);
            return mix(top, bottom, f.y);
        }

        // Level-l pixel centre in the full frame: origin + (p + 0.5) * 2^l.
        vec2 levelCentre(ivec2 p, int level) {
            return vec2(uOrigin) + (vec2(p) + 0.5) * float(1 << level);
        }
    """

    private val WORKING = """
        uniform sampler2D uInput;      // camera RGB, RGBA16F
        uniform float uScale;
        uniform vec3 uWb;

        vec3 working0(ivec2 p) {
            vec3 rgb = texelFetch(uInput, p, 0).rgb;
            return uScale * yccFromRgb(uWb * (rgb / lscGain(levelCentre(p, 0))));
        }
    """

    /** ↑2 of a coarse level at a fine pixel (uCoarseSize is the coarse level's size). */
    private val UPSAMPLE = """
        vec3 upAt(sampler2D coarse, ivec2 p) {
            float y = 0.0;
            vec2 c = vec2(0.0);
            for (int j = -3; j <= 3; ++j) {
                if (((p.y - j) & 1) != 0) continue;
                int cy = mirrorIndex((p.y - j) / 2, uCoarseSize.y);
                for (int i = -3; i <= 3; ++i) {
                    if (((p.x - i) & 1) != 0) continue;
                    int cx = mirrorIndex((p.x - i) / 2, uCoarseSize.x);
                    vec3 v = texelFetch(coarse, ivec2(cx, cy), 0).rgb;
                    y += 4.0 * LUMA_TAPS[i + 3] * LUMA_TAPS[j + 3] * v.x;
                    if (abs(i) <= 2 && abs(j) <= 2) c += 4.0 * CHROMA_TAPS[i + 2] * CHROMA_TAPS[j + 2] * v.yz;
                }
            }
            return vec3(y, c);
        }
    """

    /** §2.1 (with §2.2, §2.4) noise at signal base without the §5.1 strength, zero where clipped. */
    private val MODEL_NOISE = """
        uniform int uLevel;
        uniform vec3 uRead;
        uniform vec3 uShot;
        uniform vec3 uResidual;
        uniform float uKappaLuma[4];
        uniform float uKappaChroma[4];

        // (σ²_Y, σ²_Cb, σ²_Cr, σ_CbCr) at level pixel p; mu receives the camera signal.
        vec4 modelNoise(ivec2 p, vec3 base, out vec3 mu) {
            mu = max(rgbFromYcc(base) / uScale / uWb, vec3(0.0));
            vec2 merge = mergeRatio(levelCentre(p, uLevel));
            vec3 v = merge.x * uRead + merge.y * uShot * mu;
            vec3 aY = uScale * vec3(0.25, 0.5, 0.25) * uWb;
            vec3 aCb = uScale * vec3(0.0, -1.0, 1.0) * uWb;
            vec3 aCr = uScale * vec3(1.0, -1.0, 0.0) * uWb;
            int phase = (p.y & 1) * 2 + (p.x & 1);
            float kl = uKappaLuma[phase];
            float kc = uKappaChroma[phase];
            vec3 t = sqrt(uResidual);
            float pointLuma = dot(aY * aY, v);
            vec4 noise = vec4(
                kl * pointLuma * t.x * t.x,
                kc * dot(aCb * aCb, v) * t.y * t.y,
                kc * dot(aCr * aCr, v) * t.z * t.z,
                kc * dot(aCb * aCr, v) * t.y * t.z);
            vec3 camera = mu * lscGain(levelCentre(p, uLevel));
            if (any(greaterThanEqual(camera, vec3(CLIP_LEVEL)))) noise = vec4(0.0);
            return noise;
        }
    """

    /** Analyze: G_{l+1} = ↓2(h * G_l), luma taps on Y and chroma taps on Cb/Cr. */
    val ANALYZE = """
        #version 310 es
        $COMMON
        $LENS_SHADING
        $WORKING
        uniform sampler2D uFine;
        uniform int uFineIsInput;      // 1: level 0 computed from uInput
        uniform ivec2 uFineSize;
        uniform ivec2 uCoarseSize;
        layout(rgba16f, binding = 0) writeonly uniform highp image2D uCoarse;

        vec3 fineAt(ivec2 p) {
            return uFineIsInput == 1 ? working0(p) : texelFetch(uFine, p, 0).rgb;
        }

        void main() {
            ivec2 q = globalId();
            if (any(greaterThanEqual(q, uCoarseSize))) return;
            float y = 0.0;
            vec2 c = vec2(0.0);
            for (int j = -3; j <= 3; ++j) {
                for (int i = -3; i <= 3; ++i) {
                    vec3 v = fineAt(mirror2(2 * q + ivec2(i, j), uFineSize));
                    y += LUMA_TAPS[i + 3] * LUMA_TAPS[j + 3] * v.x;
                    if (abs(i) <= 2 && abs(j) <= 2) c += CHROMA_TAPS[i + 2] * CHROMA_TAPS[j + 2] * v.yz;
                }
            }
            imageStore(uCoarse, q, vec4(y, c, 1.0));
        }
    """.trimIndent()

    /**
     * Fused per-level synthesis: Band → Pilot → Final in one dispatch (§10.1).
     *
     * A work group owns an 8×8 output tile. Band values (L, base, noise) are computed into shared
     * memory for the tile plus a 4-pixel border, pilot values for the tile plus a 2-pixel border.
     * Shared memory is addressed by image coordinate and every neighbourhood is mirrored first,
     * exactly as in the unfused reference, so border pixels see the same values. L, base and pilot
     * are stored as packed float16 bits, rounding them exactly as their textures were rounded in
     * the unfused passes.
     *
     * [debugOutputs] compiles the parity variant: instead of the result it writes band, base,
     * noise and pilot of the tile core (tools/photon_denoise/compare_passes.py); four images, the
     * GLES 3.1 minimum. The production variant writes only the result.
     */
    private const val DEBUG_IMAGES = """
        layout(rgba16f, binding = 0) writeonly uniform highp image2D uBandOut;
        layout(rgba16f, binding = 1) writeonly uniform highp image2D uBaseOut;
        layout(rgba32f, binding = 2) writeonly uniform highp image2D uNoiseOut;
        layout(rgba16f, binding = 3) writeonly uniform highp image2D uPilotOut;
    """

    private const val RESULT_IMAGE = """
        layout(rgba16f, binding = 0) writeonly uniform highp image2D uResult;
    """

    private const val DEBUG_STORE = """
            imageStore(uBandOut, p, vec4(lapAt(p), 0.0));
            imageStore(uBaseOut, p, vec4(baseAt(p), 0.0));
            imageStore(uNoiseOut, p, noiseAt(p));
            if (uLumaEnabled == 1) imageStore(uPilotOut, p, pilotAt(p));
    """

    private const val RESULT_STORE = """
            vec3 result = computeFinal(p);
            if (uWriteOutput == 1) {
                vec3 rgb = rgbFromYcc(result) / uScale / uWb * lscGain(levelCentre(p, 0));
                imageStore(uResult, p, vec4(rgb, 1.0));
            } else {
                imageStore(uResult, p, vec4(result, 1.0));
            }
    """

    /**
     * §5.1 estimate, steps 1–3 at one level: a work group histograms ESTIMATE_BLOCK² samples per
     * invocation into shared memory and adds its non-zero counts to the global histogram
     * [level][bin][Y, Cb, Cr][bucket]. Samples: every uStride-th pixel, each 2×2 block of samples
     * offset so that all four Bayer phases occur. After the first pass the flat gate's noise is
     * scaled by the median luma strength of this level in the previous pass's table.
     */
    val ESTIMATE = """
        #version 310 es
        $COMMON
        $LENS_SHADING
        $WORKING
        uniform sampler2D uFine;
        uniform int uFineIsInput;
        uniform sampler2D uCoarse;
        uniform ivec2 uSize;
        uniform ivec2 uCoarseSize;
        uniform int uStride;
        $UPSAMPLE
        $MODEL_NOISE
        layout(std430, binding = 0) buffer Histogram { uint uHistogram[]; };
        layout(std430, binding = 1) readonly buffer PreviousTable { float uPrevious[]; };
        uniform int uHasPrevious;

        const int ENTRIES = $STRENGTH_BINS * 3 * $HIST_BUCKETS;
        const int BLOCK = $ESTIMATE_BLOCK;
        shared uint sHistogram[ENTRIES];

        $MEDIAN8

        float gateScale() {
            if (uHasPrevious == 0) return 1.0;
            float v[8];
            for (int b = 0; b < 8; ++b) {
                float value = uPrevious[(uLevel * $STRENGTH_BINS + b) * 3];
                v[b] = value;
            }
            return median8(v);
        }

        void addSample(ivec2 p, float gate) {
            vec3 fine = uFineIsInput == 1 ? working0(p) : texelFetch(uFine, p, 0).rgb;
            vec3 base = upAt(uCoarse, p);
            vec3 lap = fine - base;
            vec3 mu;
            vec4 noise = modelNoise(p, base, mu);
            if (!(noise.x > 0.0 && noise.y > 0.0 && noise.z > 0.0 && mu.g > 0.0)) return;
            ivec2 c = p / 2;
            float gx = 0.25 * (texelFetch(uCoarse, ivec2(mirrorIndex(c.x + 1, uCoarseSize.x), c.y), 0).x -
                texelFetch(uCoarse, ivec2(mirrorIndex(c.x - 1, uCoarseSize.x), c.y), 0).x);
            float gy = 0.25 * (texelFetch(uCoarse, ivec2(c.x, mirrorIndex(c.y + 1, uCoarseSize.y)), 0).x -
                texelFetch(uCoarse, ivec2(c.x, mirrorIndex(c.y - 1, uCoarseSize.y)), 0).x);
            if (!(sqrt(gx * gx + gy * gy) < $FLAT_GATE * sqrt(gate * noise.x))) return;
            int bin = clamp(int(floor(log2(max(base.x / uScale, 1e-12)) - $STRENGTH_LOW)), 0, $STRENGTH_BINS - 1);
            const float BUCKET_SCALE = float($HIST_BUCKETS) / ($HIST_HIGH - $HIST_LOW);
            for (int ch = 0; ch < 3; ++ch) {
                float v = lap[ch] * lap[ch] / noise[ch];
                int k = clamp(int(floor((log2(max(v, 1e-30)) - $HIST_LOW) * BUCKET_SCALE)), 0, $HIST_BUCKETS - 1);
                atomicAdd(sHistogram[(bin * 3 + ch) * $HIST_BUCKETS + k], 1u);
            }
        }

        void main() {
            int lid = int(gl_LocalInvocationIndex);
            for (int i = lid; i < ENTRIES; i += $LOCAL * $LOCAL) sHistogram[i] = 0u;
            memoryBarrierShared();
            barrier();
            ivec2 sampleSize = (uSize + uStride - 1) / uStride;
            ivec2 origin = groupId() * ($LOCAL * BLOCK);
            ivec2 lane = ivec2(gl_LocalInvocationID.xy);
            float gate = gateScale();
            for (int by = 0; by < BLOCK; ++by) {
                for (int bx = 0; bx < BLOCK; ++bx) {
                    ivec2 q = origin + ivec2(bx, by) * $LOCAL + lane;
                    if (any(greaterThanEqual(q, sampleSize))) continue;
                    ivec2 p = uStride > 1 ? q * uStride + ivec2(q.y & 1, q.x & 1) : q;
                    if (any(greaterThanEqual(p, uSize))) continue;
                    addSample(p, gate);
                }
            }
            memoryBarrierShared();
            barrier();
            for (int i = lid; i < ENTRIES; i += $LOCAL * $LOCAL) {
                uint n = sHistogram[i];
                if (n != 0u) atomicAdd(uHistogram[uLevel * ENTRIES + i], n);
            }
        }
    """.trimIndent()

    /** Median of eight values (sorted copy, mean of the middle pair). */
    private const val MEDIAN8 = """
        float median8(float v[8]) {
            for (int i = 1; i < 8; ++i) {
                float x = v[i];
                int j = i - 1;
                while (j >= 0 && v[j] > x) {
                    v[j + 1] = v[j];
                    --j;
                }
                v[j + 1] = x;
            }
            return (v[3] + v[4]) * 0.5;
        }
    """

    /**
     * §5.1 estimate, step 4: one lane per channel turns the histograms into the table — medians,
     * fill across bins, bound against the 5-bin neighbourhood median, growth continuation for an
     * unmeasured level, clamp and cap.
     */
    val RESOLVE = """
        #version 310 es
        precision highp float;
        precision highp int;
        layout(local_size_x = 128) in;
        layout(std430, binding = 0) readonly buffer Histogram { uint uHistogram[]; };
        layout(std430, binding = 1) writeonly buffer StrengthTable { float uStrength[]; };
        uniform int uLevels;
        uniform float uCapLuma[${PhotonDenoiseTuning.MAX_LEVELS}];
        uniform float uCapChroma[${PhotonDenoiseTuning.MAX_LEVELS}];

        const int BINS = $STRENGTH_BINS;
        const int BUCKETS = $HIST_BUCKETS;
        const float WIDTH = ($HIST_HIGH - $HIST_LOW) / float(BUCKETS);

        $MEDIAN8

        // Median of filled[lo..hi] (at most five values).
        float windowMedian(float filled[BINS], int lo, int hi) {
            float w[5];
            int n = 0;
            for (int i = lo; i <= hi; ++i) {
                float x = filled[i];
                int j = n - 1;
                while (j >= 0 && w[j] > x) {
                    w[j + 1] = w[j];
                    --j;
                }
                w[j + 1] = x;
                ++n;
            }
            return (n & 1) == 1 ? w[n / 2] : (w[n / 2 - 1] + w[n / 2]) * 0.5;
        }

        void main() {
            int ch = int(gl_LocalInvocationID.x);
            if (ch >= 3) return;
            float upper[BINS];
            float upper2[BINS];
            for (int level = 0; level < uLevels; ++level) {
                float measured[BINS];
                int first = -1;
                int last = -1;
                for (int b = 0; b < BINS; ++b) {
                    int offset = ((level * BINS + b) * 3 + ch) * BUCKETS;
                    uint n = 0u;
                    for (int k = 0; k < BUCKETS; ++k) {
                        uint h = uHistogram[offset + k];
                        n += h;
                    }
                    measured[b] = -1.0;
                    if (n >= ${MIN_SAMPLES}u) {
                        float target = 0.5 * float(n);
                        uint cumulative = 0u;
                        for (int k = 0; k < BUCKETS; ++k) {
                            uint h = uHistogram[offset + k];
                            if (float(cumulative + h) >= target) {
                                float f = (target - float(cumulative)) / float(h);
                                measured[b] = exp2($HIST_LOW + (float(k) + f) * WIDTH) / $CHI2_MEDIAN;
                                break;
                            }
                            cumulative += h;
                        }
                    }
                    if (measured[b] >= 0.0) {
                        if (first < 0) first = b;
                        last = b;
                    }
                }
                float row[BINS];
                if (first < 0) {
                    // A level without samples continues the growth of the two levels above.
                    float growth = 1.0;
                    if (level >= 2) {
                        float ratios[8];
                        for (int b = 0; b < BINS; ++b) ratios[b] = upper2[b] > 0.0 ? upper[b] / upper2[b] : 1.0;
                        growth = clamp(median8(ratios), 1.0, $MAX_GROWTH);
                    }
                    for (int b = 0; b < BINS; ++b) row[b] = level == 0 ? 1.0 : upper[b] * growth;
                } else {
                    float filled[BINS];
                    for (int b = 0; b < BINS; ++b) {
                        if (measured[b] >= 0.0) {
                            filled[b] = measured[b];
                        } else if (b <= first) {
                            filled[b] = measured[first];
                        } else if (b >= last) {
                            filled[b] = measured[last];
                        } else {
                            int lo = b - 1;
                            while (measured[lo] < 0.0) --lo;
                            int hi = b + 1;
                            while (measured[hi] < 0.0) ++hi;
                            float f = float(b - lo) / float(hi - lo);
                            filled[b] = measured[lo] + f * (measured[hi] - measured[lo]);
                        }
                    }
                    for (int b = 0; b < BINS; ++b) {
                        float m = windowMedian(filled, max(b - 2, 0), min(b + 2, BINS - 1));
                        row[b] = min(max(filled[b], m / $SPIKE), m * $SPIKE);
                    }
                }
                float cap = min(${MAX_STRENGTH}, ch == 0 ? uCapLuma[level] : uCapChroma[level]);
                for (int b = 0; b < BINS; ++b) {
                    float value = clamp(row[b], 0.0, cap);
                    uStrength[(level * BINS + b) * 3 + ch] = value;
                    upper2[b] = level > 0 ? upper[b] : 0.0;
                    upper[b] = value;
                }
            }
        }
    """.trimIndent()

    fun synthesize(debugOutputs: Boolean): String = """
        #version 310 es
        $COMMON
        $LENS_SHADING
        $WORKING
        uniform sampler2D uFine;
        uniform int uFineIsInput;
        uniform sampler2D uNoisyCoarse;
        uniform sampler2D uDenoisedCoarse;
        uniform ivec2 uSize;
        uniform ivec2 uCoarseSize;
        $UPSAMPLE
        $MODEL_NOISE
        // §5.1 strength table: per level, STRENGTH_BINS luma bins of (S_Y, S_Cb, S_Cr).
        layout(std430, binding = 0) readonly buffer StrengthTable { float uStrength[]; };
        uniform float uOutlier;
        uniform float uAlpha;
        uniform int uLumaEnabled;
        uniform float uGrain;
        uniform int uChromaEnabled;
        uniform float uChromaStrength;      // min(s, 1)
        uniform vec2 uGateLuma;
        uniform vec2 uGateChroma;
        uniform int uBilateral;
        uniform float uBilateralLuma;
        uniform float uBilateralChroma;
        uniform int uWriteOutput;           // level 0: camera RGB with gains restored
        ${if (debugOutputs) DEBUG_IMAGES else RESULT_IMAGE}

        const int TILE = $LOCAL;
        const int BAND_BORDER = 4;
        const int PILOT_BORDER = 2;
        const int BAND_SIDE = TILE + 2 * BAND_BORDER;
        const int PILOT_SIDE = TILE + 2 * PILOT_BORDER;
        const float BASE_RADIUS = 1.25;

        // L and base (six halves) and the pilot (four halves) are held as packed float16 bits.
        // Integer storage makes the float16 rounding unconditional: a compiler may legally fold
        // unpackHalf2x16(packHalf2x16(x)) back to x, which left unrounded values in a float array.
        shared uvec3 sLapBase[BAND_SIDE * BAND_SIDE];
        shared vec4 sNoise[BAND_SIDE * BAND_SIDE];
        shared uvec2 sPilot[PILOT_SIDE * PILOT_SIDE];

        ivec2 tileOrigin() { return groupId() * TILE; }
        int bandIndex(ivec2 c) { ivec2 r = c - (tileOrigin() - BAND_BORDER); return r.y * BAND_SIDE + r.x; }
        int pilotIndex(ivec2 c) { ivec2 r = c - (tileOrigin() - PILOT_BORDER); return r.y * PILOT_SIDE + r.x; }

        // §5.1 (S_Y, S_Cb, S_Cr) of this level at base luma y: bins interpolated in log2(y / K).
        vec3 strengthAt(float y) {
            float x = clamp(log2(max(y / uScale, 1e-12)) - $STRENGTH_LOW - 0.5, 0.0, float($STRENGTH_BINS - 1));
            int i0 = int(floor(x));
            int i1 = min(i0 + 1, $STRENGTH_BINS - 1);
            float f = x - float(i0);
            int o0 = (uLevel * $STRENGTH_BINS + i0) * 3;
            int o1 = (uLevel * $STRENGTH_BINS + i1) * 3;
            vec3 s0 = vec3(uStrength[o0], uStrength[o0 + 1], uStrength[o0 + 2]);
            vec3 s1 = vec3(uStrength[o1], uStrength[o1 + 1], uStrength[o1 + 2]);
            return s0 + f * (s1 - s0);
        }

        // Band at image pixel p: L = G_l − ↑G_{l+1}, base = ↑G̃_{l+1}, noise = §2.1 × §5.1.
        void computeBand(ivec2 p) {
            vec3 fine = uFineIsInput == 1 ? working0(p) : texelFetch(uFine, p, 0).rgb;
            vec3 base = upAt(uDenoisedCoarse, p);
            vec3 lap = fine - upAt(uNoisyCoarse, p);
            vec3 mu;
            vec3 s = strengthAt(base.x);
            vec4 noise = modelNoise(p, base, mu) * vec4(s, sqrt(s.y * s.z));
            int index = bandIndex(p);
            sLapBase[index] = uvec3(packHalf2x16(lap.xy), packHalf2x16(vec2(lap.z, base.x)), packHalf2x16(base.yz));
            sNoise[index] = noise;
        }

        vec3 lapAt(ivec2 p) {
            uvec3 u = sLapBase[bandIndex(mirror2(p, uSize))];
            return vec3(unpackHalf2x16(u.x), unpackHalf2x16(u.y).x);
        }
        vec3 baseAt(ivec2 p) {
            uvec3 u = sLapBase[bandIndex(mirror2(p, uSize))];
            return vec3(unpackHalf2x16(u.y).y, unpackHalf2x16(u.z));
        }
        vec4 noiseAt(ivec2 p) { return sNoise[bandIndex(mirror2(p, uSize))]; }
        vec4 pilotAt(ivec2 p) {
            uvec2 u = sPilot[pilotIndex(mirror2(p, uSize))];
            return vec4(unpackHalf2x16(u.x), unpackHalf2x16(u.y));
        }

        // §6.1 steps 1–2: anisotropic spatial weight × Huber weight of window offset d.
        float windowWeight(ivec2 d, float lapP, float lapQ, float sigma, float anisotropy, float c, float s) {
            float rPar = BASE_RADIUS * (1.0 + anisotropy);
            float rPerp = BASE_RADIUS * (1.0 - 0.6 * anisotropy);
            float dPar = float(d.x) * c + float(d.y) * s;
            float dPerp = -float(d.x) * s + float(d.y) * c;
            float spatial = exp(-0.5 * (dPar * dPar / (rPar * rPar) + dPerp * dPerp / (rPerp * rPerp)));
            // Equal to min(1, dσ/|Δ|) except that the centre (Δ = 0) keeps weight 1 when σ = 0, so
            // the window never sums to zero in clipped regions.
            float distance = abs(lapQ - lapP);
            float limit = uOutlier * sigma;
            float huber = distance <= limit ? 1.0 : limit / distance;
            return spatial * huber;
        }

        // Pilot at image pixel p (§6.1 steps 1–3): (ŝ₁, anisotropy, cos θ, sin θ).
        vec4 computePilot(ivec2 p) {
            float jxx = 0.0;
            float jxy = 0.0;
            float jyy = 0.0;
            for (int dy = -1; dy <= 1; ++dy) {
                for (int dx = -1; dx <= 1; ++dx) {
                    ivec2 q = mirror2(p + ivec2(dx, dy), uSize);
                    float gx = 0.5 * (baseAt(q + ivec2(1, 0)).x - baseAt(q - ivec2(1, 0)).x);
                    float gy = 0.5 * (baseAt(q + ivec2(0, 1)).x - baseAt(q - ivec2(0, 1)).x);
                    jxx += gx * gx;
                    jxy += gx * gy;
                    jyy += gy * gy;
                }
            }
            jxx /= 9.0;
            jxy /= 9.0;
            jyy /= 9.0;
            float lapP = lapAt(p).x;
            float noiseP = noiseAt(p).x;
            float root = sqrt((jxx - jyy) * (jxx - jyy) + 4.0 * jxy * jxy);
            float anisotropy = clamp(root / (jxx + jyy + noiseP + 1e-12), 0.0, 1.0);
            // atan(0, 0) is undefined in GLSL: a degenerate tensor has no orientation, and with
            // zero anisotropy the window is circular, so the orientation is fixed explicitly.
            float theta = root > 0.0 ? 0.5 * atan(2.0 * jxy, jxx - jyy) + 0.5 * PI : 0.5 * PI;
            float c = cos(theta);
            float s = sin(theta);
            float sigma = sqrt(noiseP);
            float num = 0.0;
            float den = 0.0;
            for (int dy = -2; dy <= 2; ++dy) {
                for (int dx = -2; dx <= 2; ++dx) {
                    ivec2 d = ivec2(dx, dy);
                    float lapQ = lapAt(p + d).x;
                    float w = windowWeight(d, lapP, lapQ, sigma, anisotropy, c, s);
                    num += w * (lapQ * lapQ - noiseAt(p + d).x);
                    den += w;
                }
            }
            float energy = max(num / den, 0.0);
            float s1 = noiseP > 0.0 ? lapP * energy / (energy + uAlpha * noiseP + 1e-30) : lapP;
            return vec4(s1, anisotropy, c, s);
        }

        float mahalanobis(vec2 d, vec4 noise) {
            float det = noise.y * noise.z - noise.w * noise.w;
            if (det <= 0.0) return -1.0;
            return (noise.z * d.x * d.x - 2.0 * noise.w * d.x * d.y + noise.y * d.y * d.y) / max(det, 1e-30);
        }

        // Final at image pixel p (§6.1–6.2, §7.2–7.3).
        vec3 computeFinal(ivec2 p) {
            vec3 lap = lapAt(p);
            vec3 base = baseAt(p);
            vec4 noise = noiseAt(p);

            float lumaBand = lap.x;
            if (uLumaEnabled == 1) {
                vec4 pilotP = pilotAt(p);
                float sigma = sqrt(noise.x);
                float num = 0.0;
                float den = 0.0;
                for (int dy = -2; dy <= 2; ++dy) {
                    for (int dx = -2; dx <= 2; ++dx) {
                        ivec2 d = ivec2(dx, dy);
                        float w = windowWeight(d, lap.x, lapAt(p + d).x, sigma, pilotP.y, pilotP.z, pilotP.w);
                        float s1 = pilotAt(p + d).x;
                        num += w * s1 * s1;
                        den += w;
                    }
                }
                float energy = num / den;
                float shrunk = noise.x > 0.0 ? lap.x * energy / (energy + uAlpha * noise.x + 1e-30) : lap.x;
                lumaBand = shrunk + uGrain * (lap.x - shrunk);
            }

            vec2 chromaBand = lap.yz;
            vec2 baseChroma = base.yz;
            if (uChromaEnabled == 1) {
                float sumL2 = 0.0;
                float sumS2 = 0.0;
                for (int dy = -1; dy <= 1; ++dy) {
                    for (int dx = -1; dx <= 1; ++dx) {
                        float l = lapAt(p + ivec2(dx, dy)).x;
                        sumL2 += l * l;
                        sumS2 += noiseAt(p + ivec2(dx, dy)).x;
                    }
                }
                float gateY = sumS2 > 0.0 ? smoothstep(uGateLuma.x, uGateLuma.y, 9.0 * sumL2 / max(sumS2, 1e-30)) : 1.0;
                float stat = mahalanobis(lap.yz, noise);
                float gateC = stat >= 0.0 ? smoothstep(uGateChroma.x, uGateChroma.y, stat) : 1.0;
                float gate = max(gateY, gateC);
                chromaBand = (uChromaStrength * gate + (1.0 - uChromaStrength)) * lap.yz;

                if (uBilateral == 1) {
                    vec2 sum = vec2(0.0);
                    float weight = 0.0;
                    for (int dy = -2; dy <= 2; ++dy) {
                        for (int dx = -2; dx <= 2; ++dx) {
                            vec3 bq = baseAt(p + ivec2(dx, dy));
                            float spatial = exp(-0.5 * float(dx * dx + dy * dy) / (1.5 * 1.5));
                            float dl = bq.x - base.x;
                            float lumaW = noise.x > 0.0
                                ? exp(-dl * dl / (2.0 * uBilateralLuma * max(noise.x, 1e-30)))
                                : (dl == 0.0 ? 1.0 : 0.0);
                            float d2 = mahalanobis(bq.yz - base.yz, noise);
                            float w = spatial * lumaW * exp(-max(d2, 0.0) / (2.0 * uBilateralChroma));
                            sum += w * bq.yz;
                            weight += w;
                        }
                    }
                    baseChroma = sum / weight;
                }
            }
            return vec3(base.x + lumaBand, baseChroma + chromaBand);
        }

        void main() {
            int lid = int(gl_LocalInvocationIndex);
            ivec2 origin = tileOrigin();
            for (int i = lid; i < BAND_SIDE * BAND_SIDE; i += TILE * TILE) {
                ivec2 c = origin - BAND_BORDER + ivec2(i % BAND_SIDE, i / BAND_SIDE);
                if (all(greaterThanEqual(c, ivec2(0))) && all(lessThan(c, uSize))) computeBand(c);
            }
            memoryBarrierShared();
            barrier();
            if (uLumaEnabled == 1) {
                for (int i = lid; i < PILOT_SIDE * PILOT_SIDE; i += TILE * TILE) {
                    ivec2 c = origin - PILOT_BORDER + ivec2(i % PILOT_SIDE, i / PILOT_SIDE);
                    if (all(greaterThanEqual(c, ivec2(0))) && all(lessThan(c, uSize))) {
                        vec4 pilot = computePilot(c);
                        sPilot[pilotIndex(c)] = uvec2(packHalf2x16(pilot.xy), packHalf2x16(pilot.zw));
                    }
                }
            }
            memoryBarrierShared();
            barrier();

            ivec2 p = globalId();
            if (any(greaterThanEqual(p, uSize))) return;
            ${if (debugOutputs) DEBUG_STORE else RESULT_STORE}
        }
    """.trimIndent()
}
