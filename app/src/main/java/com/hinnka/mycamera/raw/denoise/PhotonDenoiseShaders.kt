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
/** Stage switches of one synthesis program; [prefilter] applies only with [fineIsInput]. */
internal data class PhotonSynthesisVariant(
    val fineIsInput: Boolean,
    val writeOutput: Boolean,
    val prefilter: Boolean,
    val luma: Boolean,
    val chroma: Boolean,
    val bilateral: Boolean,
)

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
    private const val PREFILTER_K = "2.5"
    private const val PREFILTER_GUARD = 2
    private const val PREFILTER_FLAT = "3.0"
    private const val SPIKE = "1.5"
    private const val MAX_GROWTH = "2.0"

    private val COMMON = """
        precision highp float;
        precision highp int;
        precision highp sampler2D;

        layout(local_size_x = $LOCAL, local_size_y = $LOCAL) in;

        ivec2 globalId() { return ivec2(gl_GlobalInvocationID.xy); }

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

        // gain = lscGain(levelCentre(p, 0)), for callers that also need it.
        vec3 working0Gain(ivec2 p, vec3 gain) {
            vec3 rgb = texelFetch(uInput, p, 0).rgb;
            return uScale * yccFromRgb(uWb * (rgb / gain));
        }

        vec3 working0(ivec2 p) { return working0Gain(p, lscGain(levelCentre(p, 0))); }
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
        // gain = lscGain(levelCentre(p, uLevel)).
        // §2.1 per-channel source variance of the camera signal at base; mu receives that signal.
        vec3 pointVariance(ivec2 p, vec3 base, out vec3 mu) {
            mu = max(rgbFromYcc(base) / uScale / uWb, vec3(0.0));
            vec2 merge = mergeRatio(levelCentre(p, uLevel));
            return merge.x * uRead + merge.y * uShot * mu;
        }

        // Luma variance σ²_Y of one source sample at base, the same at every level (§6.1, §7.2).
        float pointLumaVariance(ivec2 p, vec3 base) {
            vec3 mu;
            vec3 aY = uScale * vec3(0.25, 0.5, 0.25) * uWb;
            return dot(aY * aY, pointVariance(p, base, mu));
        }

        // Point luma SNR Y / σ_Y of one source sample (§7.2).
        float pointLumaSnr(ivec2 p, vec3 base) {
            float variance = pointLumaVariance(p, base);
            return variance > 0.0 ? base.x / sqrt(variance) : 1e30;
        }

        vec4 modelNoiseGain(ivec2 p, vec3 base, vec3 gain, out vec3 mu) {
            vec3 v = pointVariance(p, base, mu);
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
            vec3 camera = mu * gain;
            if (any(greaterThanEqual(camera, vec3(CLIP_LEVEL)))) noise = vec4(0.0);
            return noise;
        }

        vec4 modelNoise(ivec2 p, vec3 base, out vec3 mu) {
            return modelNoiseGain(p, base, lscGain(levelCentre(p, uLevel)), mu);
        }
    """

    /** §5.1 strength table (SSBO binding 0) and its lookup at this level (uLevel, uScale). */
    private val STRENGTH_LOOKUP = """
        // Per level, STRENGTH_BINS luma bins of (S_Y, S_Cb, S_Cr).
        layout(std430, binding = 0) readonly buffer StrengthTable { float uStrength[]; };

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
    """

    /**
     * Declarations of both prefilter programs. The samples image covers the strip plus 2 pixels on
     * every side; uSampleOrigin is the raw coordinate of its texel (0, 0), uExtent the size of the
     * dispatched region.
     */
    private val PREFILTER_COMMON = """
        $COMMON
        $LENS_SHADING
        $WORKING
        uniform sampler2D uNoisyCoarse;
        uniform ivec2 uSize;
        uniform ivec2 uCoarseSize;
                uniform ivec2 uSampleOrigin;
        uniform ivec2 uExtent;
        $UPSAMPLE
        $MODEL_NOISE
        $STRENGTH_LOOKUP
    """

    /**
     * §6.0 level-0 outlier correction, per channel of Y, Cb, Cr: a sample far from its 3×3 median
     * whose deviation has at most PREFILTER_GUARD same-signed neighbours (a dot, not a line) in a
     * noise-like neighbourhood (mean L0² of the 5×5 ring below PREFILTER_FLAT σ²) is moved to the
     * median, scaled by uAmounts (min(luma strength, 1), min(chroma strength, 1) twice; 0 switches a
     * channel off). Writes that correction (RGBA32F, 0 elsewhere); σ² is the L0 model noise times
     * the §5.1 strength at the noisy base. Per row strip this program writes the samples of the
     * strip and its border, fine (RGBA32F) and L rounded to float16 (RGBA16F); [PREFILTER] the
     * correction.
     */
    val PREFILTER_SAMPLES = """
        #version 310 es
        $PREFILTER_COMMON
        layout(rgba32f, binding = 0) writeonly uniform highp image2D uSamplesOut;
        layout(rgba16f, binding = 1) writeonly uniform highp image2D uLapOut;

        void main() {
            ivec2 t = globalId();
            if (any(greaterThanEqual(t, uExtent))) return;
            ivec2 p = mirror2(uSampleOrigin + t, uSize);
            vec3 fine = working0(p);
            vec3 lap = fine - upAt(uNoisyCoarse, p);
            vec2 lapXy = unpackHalf2x16(packHalf2x16(lap.xy));
            float lapZ = unpackHalf2x16(packHalf2x16(vec2(lap.z, 0.0))).x;
            imageStore(uSamplesOut, t, vec4(fine, 0.0));
            imageStore(uLapOut, t, vec4(lapXy, lapZ, 0.0));
        }
    """.trimIndent()

    /** §6.0 correction of the strip rows from the [PREFILTER_SAMPLES] images (uSamples, uLaps). */
    val PREFILTER = """
        #version 310 es
        $PREFILTER_COMMON
        uniform sampler2D uSamples;
        uniform sampler2D uLaps;
        uniform ivec2 uOutputOrigin;       // pixel of texel 0
        uniform vec3 uAmounts;
        layout(rgba32f, binding = 0) writeonly uniform highp image2D uDelta;

        // Raw coordinates: the samples hold the values of the mirrored coordinate. mask selects the
        // channel without dynamic vector indexing.
        float fineAt(ivec2 c, vec3 mask) { return dot(texelFetch(uSamples, c - uSampleOrigin, 0).rgb, mask); }
        float lapAt(ivec2 c, vec3 mask) { return dot(texelFetch(uLaps, c - uSampleOrigin, 0).rgb, mask); }

        float correction(ivec2 p, vec3 mask, float noise) {
            float v[9];
            for (int j = 0; j < 9; ++j) v[j] = fineAt(p + ivec2(j % 3 - 1, j / 3 - 1), mask);
            for (int i = 1; i < 9; ++i) {
                float x = v[i];
                int j = i - 1;
                while (j >= 0 && v[j] > x) {
                    v[j + 1] = v[j];
                    --j;
                }
                v[j + 1] = x;
            }
            float m = v[4];
            float fineP = fineAt(p, mask);
            float sigma = sqrt(noise);
            float dev = fineP - m;
            if (!(sigma > 0.0) || abs(dev) <= $PREFILTER_K * sigma) return 0.0;
            int count = 0;
            for (int j = 0; j < 9; ++j) {
                if (j == 4) continue;
                float d = fineAt(p + ivec2(j % 3 - 1, j / 3 - 1), mask) - m;
                if (abs(d) > $PREFILTER_K * sigma && sign(d) == sign(dev)) ++count;
            }
            if (count > $PREFILTER_GUARD) return 0.0;
            float sum = 0.0;
            for (int dy = -2; dy <= 2; ++dy) {
                for (int dx = -2; dx <= 2; ++dx) {
                    float l = lapAt(p + ivec2(dx, dy), mask);
                    sum += l * l;
                }
            }
            float lp = lapAt(p, mask);
            float energy = (sum - lp * lp) / 24.0;
            return energy < $PREFILTER_FLAT * sigma * sigma ? m - fineP : 0.0;
        }

        void main() {
            ivec2 t = globalId();
            if (any(greaterThanEqual(t, uExtent))) return;
            ivec2 p = uOutputOrigin + t;
            vec3 base = upAt(uNoisyCoarse, p);
            vec3 mu;
            vec3 noise = modelNoise(p, base, mu).xyz * strengthAt(base.x);
            vec3 delta = vec3(0.0);
            if (uAmounts.x > 0.0) delta.x = correction(p, vec3(1.0, 0.0, 0.0), noise.x) * uAmounts.x;
            if (uAmounts.y > 0.0) delta.y = correction(p, vec3(0.0, 1.0, 0.0), noise.y) * uAmounts.y;
            if (uAmounts.z > 0.0) delta.z = correction(p, vec3(0.0, 0.0, 1.0), noise.z) * uAmounts.z;
            imageStore(uDelta, p, vec4(delta, 0.0));
        }
    """.trimIndent()


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

    private const val RESULT_IMAGE = """
        layout(rgba16f, binding = 0) writeonly uniform highp image2D uResult;
    """

    private const val RESULT_STORE = """
            vec3 result = computeFinal(p);
            if (WRITE_OUTPUT) {
                vec3 rgb = rgbFromYcc(result) / uScale / uWb * lscGain(levelCentre(p, 0));
                imageStore(uResult, p, vec4(rgb, 1.0));
            } else {
                imageStore(uResult, p, vec4(result, 1.0));
            }
    """

    /**
     * Declarations of [ESTIMATE] and [ESTIMATE_RECORDS]: the histograms, the sample records (from
     * uRecordOffset three planes of uRecordCount uints, row-major over the sample grid: packed bin
     * and buckets, gradient, σ²_Y; planes keep every store contiguous across lanes), the flat-gate
     * scale and the counting of one record into the shared histogram.
     *
     * The shared histogram is split to spread the atomics: HIST_COPIES copies, invocation i counting
     * into copy i % HIST_COPIES, so the lanes of a warp hit the same word less often; each copy packs
     * buckets k and k + HIST_BUCKETS / 2 as the low and high 16 bits of one word (a copy counts at
     * most 64 / HIST_COPIES × ESTIMATE_BLOCK² samples per entry), keeping all copies within the
     * 16KB shared-memory baseline. The flush sums the copies, so the counts are unchanged.
     */
    private val ESTIMATE_DECLS = """
        $COMMON
        $LENS_SHADING
        $WORKING
        uniform ivec2 uSize;
        uniform int uStride;
        $MODEL_NOISE
        layout(std430, binding = 0) buffer Histogram { uint uHistogram[]; };
        layout(std430, binding = 1) readonly buffer PreviousTable { float uPrevious[]; };
        layout(std430, binding = 2) buffer Records { uint uRecords[]; };
        uniform int uHasPrevious;
        uniform int uRecordOffset;
        uniform int uRecordCount;

        const int ENTRIES = $STRENGTH_BINS * 3 * $HIST_BUCKETS;
        const int BLOCK = $ESTIMATE_BLOCK;
        const int BIN_BITS = 4;
        const int BUCKET_BITS = 6;
        const uint NO_RECORD = 0xFFFFFFFFu;
        const int HIST_COPIES = 4;
        const int HALF_BUCKETS = $HIST_BUCKETS / 2;
        const int WORDS = ENTRIES / 2;
        shared uint sHistogram[HIST_COPIES * WORDS];

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

        int recordIndex(ivec2 q, ivec2 sampleSize) { return uRecordOffset + q.y * sampleSize.x + q.x; }

        // Counts a record whose base gradient passes the flat gate scaled by gate.
        void countRecord(uvec3 record, float gate) {
            if (record.x == NO_RECORD) return;
            float gradient = uintBitsToFloat(record.y);
            float noiseY = uintBitsToFloat(record.z);
            if (!(gradient < $FLAT_GATE * sqrt(gate * noiseY))) return;
            int bin = int(record.x & ((1u << uint(BIN_BITS)) - 1u));
            int copy = (int(gl_LocalInvocationIndex) % HIST_COPIES) * WORDS;
            for (int ch = 0; ch < 3; ++ch) {
                int k = int((record.x >> uint(BIN_BITS + ch * BUCKET_BITS)) & ((1u << uint(BUCKET_BITS)) - 1u));
                int word = (bin * 3 + ch) * HALF_BUCKETS + k % HALF_BUCKETS;
                atomicAdd(sHistogram[copy + word], k < HALF_BUCKETS ? 1u : 0x10000u);
            }
        }

        void clearHistogram() {
            for (int i = int(gl_LocalInvocationIndex); i < HIST_COPIES * WORDS; i += $LOCAL * $LOCAL) {
                sHistogram[i] = 0u;
            }
            memoryBarrierShared();
            barrier();
        }

        // Sums the copies of each word and adds the non-zero counts of its two entries.
        void flushHistogram() {
            memoryBarrierShared();
            barrier();
            for (int i = int(gl_LocalInvocationIndex); i < WORDS; i += $LOCAL * $LOCAL) {
                uint low = 0u;
                uint high = 0u;
                for (int c = 0; c < HIST_COPIES; ++c) {
                    uint packed = sHistogram[c * WORDS + i];
                    low += packed & 0xFFFFu;
                    high += packed >> 16u;
                }
                int entry = uLevel * ENTRIES + (i / HALF_BUCKETS) * $HIST_BUCKETS + i % HALF_BUCKETS;
                if (low != 0u) atomicAdd(uHistogram[entry], low);
                if (high != 0u) atomicAdd(uHistogram[entry + HALF_BUCKETS], high);
            }
        }
    """

    /**
     * §5.1 estimate, steps 1–3 at one level: a work group histograms ESTIMATE_BLOCK² samples per
     * invocation into shared memory and adds its non-zero counts to the global histogram
     * [level][bin][Y, Cb, Cr][bucket]. Samples: every uStride-th pixel, each 2×2 block of samples
     * offset so that all four Bayer phases occur. This first pass also stores every sample's record
     * for [ESTIMATE_RECORDS]; after the first pass the flat gate's noise is scaled by the median
     * luma strength of this level in the previous pass's table.
     */
    val ESTIMATE = """
        #version 310 es
        $ESTIMATE_DECLS
        uniform sampler2D uFine;
        uniform int uFineIsInput;
        uniform sampler2D uCoarse;
        uniform ivec2 uCoarseSize;
        $UPSAMPLE

        // The record of the sample at p (NO_RECORD where the noise or the signal is not positive):
        // packed bin and Y, Cb, Cr buckets, the base gradient and σ²_Y of the flat gate.
        uvec3 sampleRecord(ivec2 p) {
            vec3 fine = uFineIsInput == 1 ? working0(p) : texelFetch(uFine, p, 0).rgb;
            vec3 base = upAt(uCoarse, p);
            vec3 lap = fine - base;
            vec3 mu;
            vec4 noise = modelNoise(p, base, mu);
            if (!(noise.x > 0.0 && noise.y > 0.0 && noise.z > 0.0 && mu.g > 0.0)) return uvec3(NO_RECORD, 0u, 0u);
            ivec2 c = p / 2;
            float gx = 0.25 * (texelFetch(uCoarse, ivec2(mirrorIndex(c.x + 1, uCoarseSize.x), c.y), 0).x -
                texelFetch(uCoarse, ivec2(mirrorIndex(c.x - 1, uCoarseSize.x), c.y), 0).x);
            float gy = 0.25 * (texelFetch(uCoarse, ivec2(c.x, mirrorIndex(c.y + 1, uCoarseSize.y)), 0).x -
                texelFetch(uCoarse, ivec2(c.x, mirrorIndex(c.y - 1, uCoarseSize.y)), 0).x);
            int bin = clamp(int(floor(log2(max(base.x / uScale, 1e-12)) - $STRENGTH_LOW)), 0, $STRENGTH_BINS - 1);
            const float BUCKET_SCALE = float($HIST_BUCKETS) / ($HIST_HIGH - $HIST_LOW);
            uint packed = uint(bin);
            for (int ch = 0; ch < 3; ++ch) {
                float v = lap[ch] * lap[ch] / noise[ch];
                int k = clamp(int(floor((log2(max(v, 1e-30)) - $HIST_LOW) * BUCKET_SCALE)), 0, $HIST_BUCKETS - 1);
                packed |= uint(k) << uint(BIN_BITS + ch * BUCKET_BITS);
            }
            return uvec3(packed, floatBitsToUint(sqrt(gx * gx + gy * gy)), floatBitsToUint(noise.x));
        }

        void main() {
            clearHistogram();
            ivec2 sampleSize = (uSize + uStride - 1) / uStride;
            ivec2 origin = ivec2(gl_WorkGroupID.xy) * ($LOCAL * BLOCK);
            ivec2 lane = ivec2(gl_LocalInvocationID.xy);
            float gate = gateScale();
            for (int by = 0; by < BLOCK; ++by) {
                for (int bx = 0; bx < BLOCK; ++bx) {
                    ivec2 q = origin + ivec2(bx, by) * $LOCAL + lane;
                    if (any(greaterThanEqual(q, sampleSize))) continue;
                    ivec2 p = uStride > 1 ? q * uStride + ivec2(q.y & 1, q.x & 1) : q;
                    uvec3 record = any(greaterThanEqual(p, uSize)) ? uvec3(NO_RECORD, 0u, 0u) : sampleRecord(p);
                    int index = recordIndex(q, sampleSize);
                    uRecords[index] = record.x;
                    uRecords[index + uRecordCount] = record.y;
                    uRecords[index + 2 * uRecordCount] = record.z;
                    countRecord(record, gate);
                }
            }
            flushHistogram();
        }
    """.trimIndent()

    /**
     * §5.1 estimate passes after the first: the histogram of [ESTIMATE] recounted from the sample
     * records the first pass stored, with the flat gate of this pass. The counts equal a full
     * recomputation; the textures and the noise model are not read again.
     */
    val ESTIMATE_RECORDS = """
        #version 310 es
        $ESTIMATE_DECLS

        void main() {
            clearHistogram();
            ivec2 sampleSize = (uSize + uStride - 1) / uStride;
            ivec2 origin = ivec2(gl_WorkGroupID.xy) * ($LOCAL * BLOCK);
            ivec2 lane = ivec2(gl_LocalInvocationID.xy);
            float gate = gateScale();
            for (int by = 0; by < BLOCK; ++by) {
                for (int bx = 0; bx < BLOCK; ++bx) {
                    ivec2 q = origin + ivec2(bx, by) * $LOCAL + lane;
                    if (any(greaterThanEqual(q, sampleSize))) continue;
                    int index = recordIndex(q, sampleSize);
                    countRecord(uvec3(uRecords[index], uRecords[index + uRecordCount],
                        uRecords[index + 2 * uRecordCount]), gate);
                }
            }
            flushHistogram();
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

    /**
     * Pilot and final of one pixel (§6.1–6.2, §7.2–7.3) over the accessors lapAt, baseAt, noiseAt and
     * pilotAt at raw coordinates (the values of the mirrored coordinate); shared by the pilot and final
     * programs.
     */
    private const val SYNTH_STAGES = """
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
            // §6.1: edge strength, the base gradient in source-sample σ per finest pixel.
            float pointVar = pointLumaVariance(p, baseAt(p));
            float edge = pointVar > 0.0 ? min(sqrt(root) / sqrt(pointVar) / float(1 << uLevel), EDGE_MAX) : EDGE_MAX;
            float sigma = sqrt(noiseP);
            // §6.1 step 2: the Huber weights are relative to the centre, so a noise sample a few σ
            // out would down-weight every neighbour and carry the energy by itself. The centre
            // enters only as a strong (≥ CENTRE_HIGH σ) point; sigma = 0 keeps it.
            float centre = sigma > 0.0 ? smoothstep(CENTRE_LOW, CENTRE_HIGH, abs(lapP) / sigma) : 1.0;
            float num = 0.0;
            float den = 0.0;
            for (int dy = -2; dy <= 2; ++dy) {
                for (int dx = -2; dx <= 2; ++dx) {
                    ivec2 d = ivec2(dx, dy);
                    float lapQ = lapAt(p + d).x;
                    float w = windowWeight(d, lapP, lapQ, sigma, anisotropy, c, s);
                    if (dx == 0 && dy == 0) w *= centre;
                    num += w * (lapQ * lapQ - noiseAt(p + d).x);
                    den += w;
                }
            }
            float energy = max(num / den, 0.0);
            float s1 = noiseP > 0.0 ? lapP * energy / (energy + uAlpha * noiseP + 1e-30) : lapP;
            return vec4(s1, anisotropy, theta, edge);
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
            if (LUMA_ENABLED) {
                vec4 pilotP = pilotAt(p);
                float c = cos(pilotP.z);
                float s = sin(pilotP.z);
                float sigma = sqrt(noise.x);
                float num = 0.0;
                float den = 0.0;
                float edgeMax = 0.0;
                float steerNum = 0.0;
                float steerDen = 0.0;
                for (int dy = -2; dy <= 2; ++dy) {
                    for (int dx = -2; dx <= 2; ++dx) {
                        ivec2 d = ivec2(dx, dy);
                        float lapQ = lapAt(p + d).x;
                        edgeMax = max(edgeMax, pilotAt(p + d).w);
                        // §6.1: along the edge only; the Huber term keeps corners and crossings.
                        float along = float(dx) * c + float(dy) * s;
                        float across = -float(dx) * s + float(dy) * c;
                        float diff = abs(lapQ - lap.x);
                        float limit = uOutlier * sigma;
                        float huber = diff <= limit ? 1.0 : limit / max(diff, 1e-30);
                        float ws = exp(-0.5 * (along * along / (EDGE_ALONG * EDGE_ALONG) +
                            across * across / (EDGE_ACROSS * EDGE_ACROSS))) * huber;
                        steerNum += ws * lapQ;
                        steerDen += ws;
                        float w = windowWeight(d, lap.x, lapQ, sigma, pilotP.y, c, s);
                        float s1 = pilotAt(p + d).x;
                        num += w * s1 * s1;
                        den += w;
                    }
                }
                float energy = num / den;
                float gain = energy / (energy + uAlpha * noise.x + 1e-30);
                // §6.1: gain^γ only where the gain shows detail; noise-only gains stay MMSE.
                gain += smoothstep(GAMMA_LOW, GAMMA_HIGH, gain) * (pow(gain, uGamma) - gain);
                float marker = smoothstep(uEdgeMarker.x, uEdgeMarker.y, edgeMax);
                float steer = marker * smoothstep(EDGE_ANISOTROPY_LOW, EDGE_ANISOTROPY_HIGH, pilotP.y);
                float steered = lap.x + steer * (steerNum / steerDen - lap.x);
                float shrunk = noise.x > 0.0 ? steered * gain : lap.x;
                lumaBand = shrunk + uGrain * (lap.x - shrunk);
            }

            vec2 chromaBand = lap.yz;
            vec2 baseChroma = base.yz;
            if (CHROMA_ENABLED) {
                float sumL2 = 0.0;
                float sumS2 = 0.0;
                for (int dy = -1; dy <= 1; ++dy) {
                    for (int dx = -1; dx <= 1; ++dx) {
                        // §7.2: denoised luma (the pilot) opens the gate, not a luma noise sample.
                        float l = LUMA_ENABLED ? pilotAt(p + ivec2(dx, dy)).x : lapAt(p + ivec2(dx, dy)).x;
                        sumL2 += l * l;
                        sumS2 += noiseAt(p + ivec2(dx, dy)).x;
                    }
                }
                float gateY = sumS2 > 0.0 ? smoothstep(uGateLuma.x, uGateLuma.y, 9.0 * sumL2 / max(sumS2, 1e-30)) : 1.0;
                float stat = mahalanobis(lap.yz, noise);
                float gateC = uChromaGate == 0 ? 0.0 : stat >= 0.0 ? smoothstep(uGateChroma.x, uGateChroma.y, stat) : 1.0;
                // §7.2: where only luma structure opens the gate, the detail is the chroma the 5×5
                // luma regression predicts, not the noisy band itself.
                vec2 num = vec2(0.0);
                float den = 0.0;
                for (int dy = -2; dy <= 2; ++dy) {
                    for (int dx = -2; dx <= 2; ++dx) {
                        ivec2 q = p + ivec2(dx, dy);
                        float l = LUMA_ENABLED ? pilotAt(q).x : lapAt(q).x;
                        num += l * lapAt(q).yz;
                        den += l * l + uChromaGuide * noiseAt(q).x;
                    }
                }
                float l0 = LUMA_ENABLED ? pilotAt(p).x : lap.x;
                vec2 guided = den > 0.0 ? num / max(den, 1e-30) * l0 : vec2(0.0);
                vec2 detail = gateC * lap.yz + (1.0 - gateC) * gateY * guided;
                // §7.2: below chromaDetailFrom the detail fades out with the point luma SNR.
                if (uChromaDetail != 0) {
                    detail *= smoothstep(uChromaDetailSnr.x, uChromaDetailSnr.y, pointLumaSnr(p, base));
                }
                if (noise.x <= 0.0) detail = lap.yz;  // clipped: no model, detail kept
                chromaBand = uChromaStrength * detail + (1.0 - uChromaStrength) * lap.yz;

                if (BILATERAL_ENABLED) {
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
    """

    /**
     * Uniforms, stage switches and constants of every synthesis program (no #version, no images).
     * The stage switches of [variant] are compile-time constants: with uniform switches the compiler
     * allocates registers for every stage, also where a stage is off.
     */
    private fun synthesisHeader(variant: PhotonSynthesisVariant) = """
        $COMMON
        $LENS_SHADING
        $WORKING
        const bool FINE_IS_INPUT = ${variant.fineIsInput};     // level 0: fine is computed from uInput
        const bool WRITE_OUTPUT = ${variant.writeOutput};      // level 0: camera RGB with gains restored
        const bool PREFILTER_ENABLED = ${variant.prefilter};
        const bool LUMA_ENABLED = ${variant.luma};
        const bool CHROMA_ENABLED = ${variant.chroma};
        const bool BILATERAL_ENABLED = ${variant.bilateral};
        uniform sampler2D uFine;
        uniform sampler2D uNoisyCoarse;
        uniform sampler2D uDenoisedCoarse;
        uniform ivec2 uSize;
        uniform ivec2 uCoarseSize;
        $UPSAMPLE
        $MODEL_NOISE
        $STRENGTH_LOOKUP
        // §6.0 level-0 isolated-outlier correction of the input Y, Cb, Cr (PREFILTER); used when FINE_IS_INPUT.
        uniform sampler2D uPrefilter;
        uniform float uOutlier;
        uniform float uAlpha;
        uniform float uGrain;
        uniform float uGamma;               // §6.1 exponent of the second-stage gain
        uniform float uChromaStrength;      // min(s, 1)
        uniform vec2 uGateLuma;
        uniform vec2 uGateChroma;
        uniform int uChromaGate;            // §7.2 Mahalanobis gate on at this level
        uniform int uChromaDetail;          // §7.2 chroma detail faded by the point luma SNR at this level
        uniform vec2 uChromaDetailSnr;
        uniform float uChromaGuide;         // §7.2 luma-noise regularisation of the guided chroma detail
        uniform vec2 uEdgeMarker;           // §6.1 edge strength fade-in of the edge smoothing
        uniform float uBilateralLuma;
        uniform float uBilateralChroma;

        const float BASE_RADIUS = 1.25;
        const float GAMMA_LOW = 0.25;
        const float GAMMA_HIGH = 0.5;
        const float CENTRE_LOW = 6.0;
        const float CENTRE_HIGH = 10.0;
        const float EDGE_ALONG = 3.0;          // §6.1 along-edge radius of the edge smoothing
        const float EDGE_ACROSS = 0.35;        // across-edge radius (no blur across the edge)
        const float EDGE_ANISOTROPY_LOW = 0.2; // smoothstep of the anisotropy that orients it
        const float EDGE_ANISOTROPY_HIGH = 0.6;
        const float EDGE_MAX = 1000.0;         // pilot storage bound of the edge strength (f16)

        // Band at image pixel p: L = G_l − ↑G_{l+1}, base = ↑G̃_{l+1}, noise = §2.1 × §5.1. The program
        // defines upNoisy and upDenoised, the ↑2 of G_{l+1} and G̃_{l+1} at p.
        vec3 upNoisy(ivec2 p);
        vec3 upDenoised(ivec2 p);
        void bandValues(ivec2 p, out vec3 lap, out vec3 base, out vec4 noise) {
            // Level 0 reads the input at uLevel = 0: one gain serves the input and the clip test.
            vec3 gain = lscGain(levelCentre(p, uLevel));
            vec3 fine = FINE_IS_INPUT ? working0Gain(p, gain) : texelFetch(uFine, p, 0).rgb;
            if (FINE_IS_INPUT && PREFILTER_ENABLED) fine += texelFetch(uPrefilter, p, 0).rgb;
            base = upDenoised(p);
            lap = fine - upNoisy(p);
            vec3 mu;
            vec3 s = strengthAt(base.x);
            noise = modelNoiseGain(p, base, gain, mu) * vec4(s, sqrt(s.y * s.z));
        }
    """

    /**
     * Synthesis (§10.1): Band, Pilot and Final as separate per-pixel dispatches over one row strip,
     * without shared memory or barriers. The band and pilot images cover the strip plus
     * BAND_BORDER / PILOT_BORDER (4 / 2) on every side and hold the values of the mirrored
     * coordinate (the reference's reflection without edge repetition) at raw coordinates, so
     * neighbourhood reads are plain offsets and border pixels see the reference's values. uBandOrigin / uPilotOrigin are the raw coordinates of their
     * texel (0, 0); uExtent is the size of the dispatched region.
     */
    fun synthesizeBand(variant: PhotonSynthesisVariant): String = """
        #version 310 es
        ${synthesisHeader(variant)}
        layout(rgba16f, binding = 0) writeonly uniform highp image2D uLapOut;
        layout(rgba16f, binding = 1) writeonly uniform highp image2D uBaseOut;
        layout(rgba32f, binding = 2) writeonly uniform highp image2D uNoiseOut;
        uniform ivec2 uBandOrigin;
        uniform ivec2 uExtent;

        vec3 upNoisy(ivec2 p) { return upAt(uNoisyCoarse, p); }
        vec3 upDenoised(ivec2 p) { return upAt(uDenoisedCoarse, p); }

        void main() {
            ivec2 t = globalId();
            if (any(greaterThanEqual(t, uExtent))) return;
            vec3 lap;
            vec3 base;
            vec4 noise;
            bandValues(mirror2(uBandOrigin + t, uSize), lap, base, noise);
            imageStore(uLapOut, t, vec4(lap, 0.0));
            imageStore(uBaseOut, t, vec4(base, 0.0));
            imageStore(uNoiseOut, t, noise);
        }
    """.trimIndent()

    /** Pilot of the unfused synthesis (see [synthesizeBand]). */
    fun synthesizePilot(variant: PhotonSynthesisVariant): String = """
        #version 310 es
        ${synthesisHeader(variant)}
        layout(rgba16f, binding = 0) writeonly uniform highp image2D uPilotOut;
        uniform ivec2 uExtent;
        $STRIP_ACCESS
        vec3 upNoisy(ivec2 p) { return vec3(0.0); }
        vec3 upDenoised(ivec2 p) { return vec3(0.0); }
        $SYNTH_STAGES

        void main() {
            ivec2 t = globalId();
            if (any(greaterThanEqual(t, uExtent))) return;
            imageStore(uPilotOut, t, computePilot(mirror2(uPilotOrigin + t, uSize)));
        }
    """.trimIndent()

    /** Final of the unfused synthesis (see [synthesizeBand]); uOutputOrigin is the pixel of texel 0. */
    fun synthesizeFinal(variant: PhotonSynthesisVariant): String = """
        #version 310 es
        ${synthesisHeader(variant)}
        $RESULT_IMAGE
        uniform ivec2 uExtent;
        uniform ivec2 uOutputOrigin;
        $STRIP_ACCESS
        vec3 upNoisy(ivec2 p) { return vec3(0.0); }
        vec3 upDenoised(ivec2 p) { return vec3(0.0); }
        $SYNTH_STAGES

        void main() {
            ivec2 t = globalId();
            if (any(greaterThanEqual(t, uExtent))) return;
            ivec2 p = uOutputOrigin + t;
            $RESULT_STORE
        }
    """.trimIndent()

    /** Band and pilot images of the unfused synthesis at raw coordinates (see [synthesizeBand]). */
    private const val STRIP_ACCESS = """
        uniform sampler2D uLap;
        uniform sampler2D uBase;
        uniform sampler2D uNoise;
        uniform sampler2D uPilot;
        uniform ivec2 uBandOrigin;
        uniform ivec2 uPilotOrigin;
        vec3 lapAt(ivec2 c) { return texelFetch(uLap, c - uBandOrigin, 0).rgb; }
        vec3 baseAt(ivec2 c) { return texelFetch(uBase, c - uBandOrigin, 0).rgb; }
        vec4 noiseAt(ivec2 c) { return texelFetch(uNoise, c - uBandOrigin, 0); }
        vec4 pilotAt(ivec2 c) { return texelFetch(uPilot, c - uPilotOrigin, 0); }
    """
}
