package com.hinnka.mycamera.raw

/**
 * GLES 3.00 fragment shaders implementing MGC 9.6.080 V24 `gcam::ChromaDenoisePyramidCompleteS16`
 * (`ChromaDenoisePyramidDownsampleS16Halide` and `ChromaDenoisePyramidLevelS16Halide`), together
 * with the surrounding YUV conversion, strength map, box downsample, chroma median filter and
 * low-frequency correction passes.
 *
 * The core pyramid operates on signed Q14 YUV in `RGBA16I` and stores coarse UV corrections
 * in `RG16I`. The final low-frequency correction uses `RG32I` to preserve the full difference
 * between two signed 16-bit samples. The output matches the original ARM64 Halide AOT in
 * the core comparisons in `tools/mgc_chroma_denoise`.
 */
internal object GlesMgcChromaDenoiseShaders {
    const val RECON_HALO = 3
    const val BLF0_HALO = 1

    val header = """
        #version 300 es
        precision highp float;
        precision highp int;
        precision highp sampler2D;
        precision highp isampler2D;
        precision highp usampler2D;
    """.trimIndent()

    private val rgbToQ14Yuv = """
        ivec3 rgbToQ14Yuv(vec3 source, vec3 whiteBalance) {
            vec3 rgb = clamp(max(source, vec3(0.0)) * whiteBalance, 0.0, 1.0);
            vec3 scaled = rgb * 16383.0;
            vec3 whole = floor(scaled);
            ivec3 q14 = ivec3(whole + step(vec3(0.5), scaled - whole));
            // RgbRawToYuv1xS16 uses a Q13 matrix and SQRSHRN #13.
            ivec3 sum = ivec3(1742, -1331, 8192) * q14.r
                + ivec3(5859, -4477, -7441) * q14.g
                + ivec3(591, 5808, -751) * q14.b;
            return (sum + ivec3(4096)) >> 13;
        }
    """.trimIndent()

    /**
     * Converts white-balanced linear camera RGB (`RGBA16F`) to padded Q14 S16 YUV (`RGBA16I`),
     * replicating source borders into the alignment padding.
     */
    val rgbToYuvShader = join(header, rgbToQ14Yuv, """
        uniform highp sampler2D uSource;
        uniform ivec2 uSourceMax;
        uniform vec3 uWhiteBalance;
        layout(location = 0) out ivec4 oYuv;

        void main() {
            ivec2 p = min(ivec2(gl_FragCoord.xy), uSourceMax);
            oYuv = ivec4(rgbToQ14Yuv(texelFetch(uSource, p, 0).rgb, uWhiteBalance), 0);
        }
    """.trimIndent())

    /**
     * Builds the quarter-resolution 3-channel Q8 strength map (`RGBA16UI`: strength,
     * strength*lumaGain, strength*lumaGain^2) from an optional 1-channel spatial strength map and
     * an optional Camera2 R/Ge/Go/B lens shading map.
     */
    val strengthMapShader = join(header, """
        uniform highp usampler2D uBaseStrength;
        uniform highp sampler2D uLensShading;
        uniform int uHasBaseStrength;
        uniform int uHasLensShading;
        uniform ivec2 uLocalMax;
        uniform ivec2 uGlobalOrigin;
        uniform ivec2 uBaseMax;
        uniform ivec2 uStrengthOrigin;
        uniform ivec2 uLensMax;
        uniform vec2 uSampleRate;
        layout(location = 0) out uvec4 oStrength;

        void main() {
            ivec2 p = ivec2(gl_FragCoord.xy);
            uint baseStrength = 256u;
            if (uHasBaseStrength != 0) {
                ivec2 localPixel = min(p * 4, uLocalMax);
                ivec2 srcCoord = clamp((uGlobalOrigin + localPixel) / 4, ivec2(0), uBaseMax);
                baseStrength = texelFetch(uBaseStrength, srcCoord, 0).r;
            }
            if (uHasLensShading == 0) {
                oStrength = uvec4(baseStrength, baseStrength, baseStrength, 0u);
                return;
            }
            vec2 g = vec2(p + uStrengthOrigin) * uSampleRate;
            ivec2 g0 = clamp(ivec2(floor(g)), ivec2(0), uLensMax);
            ivec2 g1 = min(g0 + ivec2(1), uLensMax);
            vec2 f = clamp(g - vec2(g0), vec2(0.0), vec2(1.0));
            vec4 c00 = texelFetch(uLensShading, g0, 0);
            vec4 c10 = texelFetch(uLensShading, ivec2(g1.x, g0.y), 0);
            vec4 c01 = texelFetch(uLensShading, ivec2(g0.x, g1.y), 0);
            vec4 c11 = texelFetch(uLensShading, g1, 0);
            vec4 gains = mix(mix(c00, c10, f.x), mix(c01, c11, f.x), f.y);
            float lumaGain = 0.2126 * gains.r + 0.3576 * (gains.g + gains.b) + 0.0722 * gains.a;
            float s = float(baseStrength);
            float lumaGainSquared = lumaGain * lumaGain;
            uint s1 = uint(clamp(roundEven(s * lumaGain), 0.0, 65535.0));
            uint s2 = uint(clamp(roundEven(s * lumaGainSquared), 0.0, 65535.0));
            oStrength = uvec4(baseStrength, s1, s2, 0u);
        }
    """.trimIndent())

    /**
     * MGC `ChromaDenoisePyramidDownsampleS16Halide`: separable 4-tap `[1, 3, 3, 1] / 8` vertical
     * then horizontal downsample with `sqrshrn(..., 3)` and repeat-edge clamping.
     */
    val downsampleShader = join(header, """
        uniform highp isampler2D uInput;
        uniform ivec2 uInputMax;
        layout(location = 0) out ivec4 oDownsampled;

        ivec3 sqrshrn3(ivec3 v) {
            return clamp((v + ivec3(4)) >> 3, ivec3(-32768), ivec3(32767));
        }

        ivec3 verticalColumn(int x, int y0, int y1, int y2, int y3) {
            int cx = clamp(x, 0, uInputMax.x);
            ivec3 a = texelFetch(uInput, ivec2(cx, y0), 0).rgb;
            ivec3 b = texelFetch(uInput, ivec2(cx, y1), 0).rgb;
            ivec3 c = texelFetch(uInput, ivec2(cx, y2), 0).rgb;
            ivec3 d = texelFetch(uInput, ivec2(cx, y3), 0).rgb;
            return sqrshrn3(a + 3 * b + 3 * c + d);
        }

        void main() {
            ivec2 p = ivec2(gl_FragCoord.xy);
            int y0 = clamp(2 * p.y - 1, 0, uInputMax.y);
            int y1 = clamp(2 * p.y, 0, uInputMax.y);
            int y2 = clamp(2 * p.y + 1, 0, uInputMax.y);
            int y3 = clamp(2 * p.y + 2, 0, uInputMax.y);
            ivec3 c0 = verticalColumn(2 * p.x - 1, y0, y1, y2, y3);
            ivec3 c1 = verticalColumn(2 * p.x, y0, y1, y2, y3);
            ivec3 c2 = verticalColumn(2 * p.x + 1, y0, y1, y2, y3);
            ivec3 c3 = verticalColumn(2 * p.x + 2, y0, y1, y2, y3);
            oDownsampled = ivec4(sqrshrn3(c0 + 3 * c1 + 3 * c2 + c3), 0);
        }
    """.trimIndent())

    /**
     * `reconstructed` stage of `ChromaDenoisePyramidLevelS16Halide`:
     * Adds the `[9, 3, 3, 1] / 16` upsampled signed UV correction onto the input
     * over the padded `[-3, W+2] x [-3, H+2]` domain. The coarse BLF already computed
     * the saturated difference. Luma always passes through the chroma pyramid.
     */
    val reconstructShader = join(header, """
        uniform highp isampler2D uInput;
        uniform highp isampler2D uCorrection;
        uniform ivec2 uInputMax;
        uniform ivec2 uCoarseMax;
        layout(location = 0) out ivec4 oReconstructed;

        ivec2 sat16(ivec2 v) {
            return clamp(v, ivec2(-32768), ivec2(32767));
        }

        ivec2 hadd(ivec2 a, ivec2 b) {
            return (a + b) >> 1;
        }

        ivec2 rhadd(ivec2 a, ivec2 b) {
            return (a + b + ivec2(1)) >> 1;
        }

        ivec2 coarseDiff(int cx, int cy) {
            ivec2 q = clamp(ivec2(cx, cy), ivec2(0), uCoarseMax);
            return texelFetch(uCorrection, q, 0).rg;
        }

        void main() {
            ivec2 g = ivec2(gl_FragCoord.xy) - ivec2($RECON_HALO);
            ivec3 inVal = texelFetch(uInput, clamp(g, ivec2(0), uInputMax), 0).rgb;
            int gx = g.x >> 1;
            int gy = g.y >> 1;
            int nx = (g.x & 1) == 0 ? (gx - 1) : (gx + 1);
            int ny = (g.y & 1) == 0 ? (gy - 1) : (gy + 1);
            ivec2 a = coarseDiff(gx, gy);
            ivec2 b = coarseDiff(nx, gy);
            ivec2 c = coarseDiff(gx, ny);
            ivec2 d = coarseDiff(nx, ny);
            ivec2 m1 = hadd(c, b);
            ivec2 m2 = rhadd(c, b);
            ivec2 m3 = rhadd(a, d);
            ivec2 m4 = rhadd(m1, m3);
            ivec2 m5 = rhadd(m2, m4);
            ivec2 up = hadd(a, m5);
            oReconstructed = ivec4(inVal.r, sat16(ivec2(inVal.g, inVal.b) + up), 0);
        }
    """.trimIndent())

    /**
     * `blf_chroma` (branch 0, `uStep = 2`) and `blf_chroma$1` (branch 1, `uStep = 1`) of
     * `ChromaDenoisePyramidLevelS16Halide`: 3x3 Gaussian-weighted (`[1,2,1; 2,4,2; 1,2,1]`)
     * dual-threshold (`T` and `4*T`) bilateral chroma filter with outlier fallback and Q15
     * reciprocal LUT. Luma `Y` passes through unchanged.
     */
    val blfShader = join(header, """
        uniform highp isampler2D uSrc;
        uniform highp isampler2D uReference;
        uniform highp usampler2D uStrength;
        uniform ivec2 uSrcOrigin;
        uniform ivec2 uDstOrigin;
        uniform ivec2 uSrcMax;
        uniform int uClampSrc;
        uniform ivec2 uStrengthMax;
        uniform int uStrengthShift;
        uniform int uStep;
        uniform int uReadCoeff;
        uniform int uShotCoeff;
        uniform int uQuadCoeff;
        uniform uvec2 uScaleUV;
        uniform uint uOutlierThreshold;
        uniform int uOutputMode;
        layout(location = 0) out ivec4 oBlf;

        const uint RECIP_LUT[16] = uint[16](
            32768u, 16384u, 10923u, 8192u, 6554u, 5461u, 4681u, 4096u,
            3641u, 3277u, 2979u, 2731u, 2521u, 2341u, 2185u, 2048u
        );

        int shiftCoord(int coord, int shift) {
            return shift >= 0 ? (coord >> shift) : (coord << (-shift));
        }

        // Exact clamp((uint64(a) * uint64(b)) >> 8, 0, INT32_MAX) for a <= 65535, b <= INT32_MAX.
        int mulShift8Sat32(uint a, uint b) {
            uint lo = a * (b & 0xffffu);
            uint hi = a * (b >> 16u);
            if (hi >= 0x00800000u) return 0x7fffffff;
            uint shiftedHi = hi << 8u;
            uint shiftedLo = lo >> 8u;
            uint sum = shiftedHi + shiftedLo;
            if (sum < shiftedHi || sum >= 0x7fffffffu) return 0x7fffffff;
            return int(sum);
        }

        int satAdd32(int a, int b) {
            int sum = int(uint(a) + uint(b));
            if (a > 0 && b > 0 && sum < 0) return 0x7fffffff;
            if (a < 0 && b < 0 && sum >= 0) return -2147483647 - 1;
            return sum;
        }

        int wrap16(int v) {
            return ((v + 32768) & 0xffff) - 32768;
        }

        ivec3 fetchSrc(ivec2 g) {
            ivec2 q = g - uSrcOrigin;
            if (uClampSrc != 0) q = clamp(q, ivec2(0), uSrcMax);
            return texelFetch(uSrc, q, 0).rgb;
        }

        void accumulateTap(ivec3 center, ivec3 sampleValue, int threshold, int weight,
                inout ivec3 tight, inout ivec3 loose) {
            ivec3 delta = abs(center - sampleValue);
            uint dY = min(uint(delta.r), 37837u);
            uint dU = min((uint(delta.g) * uScaleUV.x) >> 8u, 37837u);
            uint dV = min((uint(delta.b) * uScaleUV.y) >> 8u, 37837u);
            uint dist2 = dY * dY + dU * dU + dV * dV;
            ivec3 weighted = weight * ivec3(sampleValue.g, sampleValue.b, 1);
            if (int(dist2) <= threshold) tight += weighted;
            if (int(dist2 >> 2u) <= threshold) loose += weighted;
        }

        void main() {
            ivec2 g = ivec2(gl_FragCoord.xy) + uDstOrigin;
            ivec2 sc = clamp(
                ivec2(shiftCoord(g.x, uStrengthShift), shiftCoord(g.y, uStrengthShift)),
                ivec2(0),
                uStrengthMax
            );
            uvec3 strength = texelFetch(uStrength, sc, 0).rgb;

            ivec3 center = fetchSrc(g);
            int yPos = max(center.r, 0);
            int ySqWrap = wrap16(yPos * yPos);

            int termRead = mulShift8Sat32(strength.b, uint(uReadCoeff));
            int shotY = (yPos * uShotCoeff) >> 8;
            int termShot = mulShift8Sat32(strength.g, uint(shotY));
            int quadY2 = (ySqWrap * uQuadCoeff) >> 16;
            int termQuad = int(uint(quadY2) * strength.r) >> 8;
            int threshold = satAdd32(satAdd32(termRead, termShot), termQuad);

            // The center has zero distance and is already loaded for the noise threshold.
            ivec3 tight = threshold >= 0 ? 4 * ivec3(center.g, center.b, 1) : ivec3(0);
            ivec3 loose = tight;
            int d = uStep;
            accumulateTap(center, fetchSrc(g + ivec2(-d, -d)), threshold, 1, tight, loose);
            accumulateTap(center, fetchSrc(g + ivec2(0, -d)), threshold, 2, tight, loose);
            accumulateTap(center, fetchSrc(g + ivec2(d, -d)), threshold, 1, tight, loose);
            accumulateTap(center, fetchSrc(g + ivec2(-d, 0)), threshold, 2, tight, loose);
            accumulateTap(center, fetchSrc(g + ivec2(d, 0)), threshold, 2, tight, loose);
            accumulateTap(center, fetchSrc(g + ivec2(-d, d)), threshold, 1, tight, loose);
            accumulateTap(center, fetchSrc(g + ivec2(0, d)), threshold, 2, tight, loose);
            accumulateTap(center, fetchSrc(g + ivec2(d, d)), threshold, 1, tight, loose);

            ivec3 selected = uint(tight.b) > uOutlierThreshold ? tight : loose;
            int inv = int(RECIP_LUT[clamp(selected.b, 1, 16) - 1]);
            ivec2 sum = ivec2(selected.r, selected.g);
            ivec2 filtered = clamp((sum * inv + ivec2(16384)) >> 15, ivec2(-32768), ivec2(32767));
            if (uOutputMode == 0) {
                oBlf = ivec4(center.r, filtered, 0);
            } else {
                ivec2 correction = filtered - texelFetch(uReference, g, 0).gb;
                if (uOutputMode == 1) {
                    correction = clamp(correction, ivec2(-32768), ivec2(32767));
                }
                oBlf = ivec4(correction, 0, 0);
            }
        }
    """.trimIndent())

    /**
     * Exact Q14 S16 `BoxDownsamplePlanes` for the low-frequency chroma branch:
     * `(sum + (1 << (2 * L - 1))) >> (2 * L)` over each `2^L x 2^L` block.
     */
    val boxDownsampleShader = join(header, """
        uniform highp isampler2D uInput;
        uniform ivec2 uInputMax;
        uniform int uLog2Factor;
        layout(location = 0) out ivec4 oBox;

        void main() {
            int factor = 1 << uLog2Factor;
            int shift = 2 * uLog2Factor;
            int rounding = 1 << (shift - 1);
            ivec2 origin = min(ivec2(gl_FragCoord.xy), uInputMax) * factor;
            ivec3 sum = ivec3(0);
            for (int dy = 0; dy < factor; ++dy) {
                for (int dx = 0; dx < factor; ++dx) {
                    sum += texelFetch(uInput, origin + ivec2(dx, dy), 0).rgb;
                }
            }
            oBox = ivec4((sum + ivec3(rounding)) >> shift, 0);
        }
    """.trimIndent())

    /**
     * Exact GCam `ChromaMedianFilter` (type 1 = DualFivePoint, type 2 = DualThreePoint) on Q14
     * `RGBA16I` YUV. Copies Y and filters Cb/Cr with the shared saturation-excess Q11 weight.
     */
    val chromaMedianShader = join(header, """
        uniform highp isampler2D uInput;
        uniform ivec2 uMax;
        uniform int uFilterType;
        layout(location = 0) out ivec4 oMedian;

        int wrap16(int v) {
            return ((v + 32768) & 0xffff) - 32768;
        }

        int abs16(int v) {
            return wrap16(v < 0 ? -v : v);
        }

        int absDiff16(int a, int m) {
            return wrap16(abs16(a) - abs16(m));
        }

        int median3(int a, int b, int c) {
            return max(min(a, b), min(max(a, b), c));
        }

        int median5(int a, int b, int c, int d, int e) {
            int t;
            if (a > b) { t = a; a = b; b = t; }
            if (c > d) { t = c; c = d; d = t; }
            if (a > c) { t = a; a = c; c = t; t = b; b = d; d = t; }
            if (b > e) { t = b; b = e; e = t; }
            if (b > c) { return min(b, d); }
            return min(c, e);
        }

        ivec2 fetchUv(int x, int y) {
            return texelFetch(uInput, ivec2(x, y), 0).gb;
        }

        void main() {
            ivec2 p = min(ivec2(gl_FragCoord.xy), uMax);
            ivec3 c = texelFetch(uInput, p, 0).rgb;
            int xm = max(p.x - 1, 0);
            int xp = min(p.x + 1, uMax.x);
            int ym = max(p.y - 1, 0);
            int yp = min(p.y + 1, uMax.y);

            ivec2 up = fetchUv(p.x, ym);
            ivec2 dn = fetchUv(p.x, yp);
            ivec2 lt = fetchUv(xm, p.y);
            ivec2 rt = fetchUv(xp, p.y);

            ivec2 medA;
            ivec2 medB;
            if (uFilterType == 1) {
                ivec2 ul = fetchUv(xm, ym);
                ivec2 ur = fetchUv(xp, ym);
                ivec2 dl = fetchUv(xm, yp);
                ivec2 dr = fetchUv(xp, yp);
                medA = ivec2(
                    median5(c.g, up.x, dn.x, lt.x, rt.x),
                    median5(c.b, up.y, dn.y, lt.y, rt.y)
                );
                medB = ivec2(
                    median5(c.g, ul.x, ur.x, dl.x, dr.x),
                    median5(c.b, ul.y, ur.y, dl.y, dr.y)
                );
            } else {
                medA = ivec2(
                    median3(lt.x, c.g, rt.x),
                    median3(lt.y, c.b, rt.y)
                );
                medB = ivec2(
                    median3(up.x, c.g, dn.x),
                    median3(up.y, c.b, dn.y)
                );
            }

            ivec2 avg = (medA + medB) >> 1;
            int excess;
            if (uFilterType == 1) {
                excess = max(absDiff16(c.g, avg.x), absDiff16(c.b, avg.y));
            } else {
                excess = min(
                    max(absDiff16(c.g, medA.x), absDiff16(c.b, medA.y)),
                    max(absDiff16(c.g, medB.x), absDiff16(c.b, medB.y))
                );
            }
            int weight = clamp(clamp(excess + 1024, -32768, 32767), 0, 2047);
            int dU = wrap16(avg.x - c.g);
            int dV = wrap16(avg.y - c.b);
            int outU = wrap16(c.g + ((dU * weight + 1024) >> 11));
            int outV = wrap16(c.b + ((dV * weight + 1024) >> 11));
            oMedian = ivec4(c.r, outU, outV, 0);
        }
    """.trimIndent())

    /**
     * Applies the full-resolution luma and/or chroma change (plus optional bilinearly upsampled
     * low-frequency chroma correction) onto the linear camera RGB source texture (`RGBA16F`),
     * leaving untouched channels and extended-range highlights intact.
     */
    val applyDenoiseDeltaShader = join(header, rgbToQ14Yuv, """
        uniform highp sampler2D uSource;
        uniform highp isampler2D uFinalYuv;
        uniform highp isampler2D uLowCorrection;
        uniform int uApplyLuma;
        uniform int uApplyChroma;
        uniform int uApplyLowFreq;
        uniform ivec2 uLowMax;
        uniform float uLowFactor;
        uniform vec3 uWhiteBalance;
        uniform vec3 uInvWhiteBalance;
        layout(location = 0) out vec4 oColor;

        void main() {
            ivec2 p = ivec2(gl_FragCoord.xy);
            vec4 src = texelFetch(uSource, p, 0);
            ivec3 initYuv = rgbToQ14Yuv(src.rgb, uWhiteBalance);
            ivec3 finalYuv = texelFetch(uFinalYuv, p, 0).rgb;
            float deltaY = (uApplyLuma != 0)
                ? float(finalYuv.r - initYuv.r) * (1.0 / 16383.0)
                : 0.0;
            vec2 deltaUv = vec2(0.0);
            if (uApplyChroma != 0) {
                vec2 finalUv = vec2(finalYuv.gb);
                if (uApplyLowFreq != 0) {
                    vec2 l = clamp((vec2(p) + 0.5) / uLowFactor - 0.5, vec2(0.0), vec2(uLowMax));
                    ivec2 p0 = ivec2(l);
                    ivec2 p1 = min(p0 + ivec2(1), uLowMax);
                    vec2 f = l - vec2(p0);
                    vec2 d00 = vec2(texelFetch(uLowCorrection, p0, 0).rg);
                    vec2 d10 = vec2(texelFetch(uLowCorrection, ivec2(p1.x, p0.y), 0).rg);
                    vec2 d01 = vec2(texelFetch(uLowCorrection, ivec2(p0.x, p1.y), 0).rg);
                    vec2 d11 = vec2(texelFetch(uLowCorrection, p1, 0).rg);
                    vec2 corr = mix(mix(d00, d10, f.x), mix(d01, d11, f.x), f.y);
                    finalUv = roundEven(clamp(finalUv + corr, vec2(-32768.0), vec2(32767.0)));
                }
                deltaUv = (finalUv - vec2(initYuv.gb)) * (1.0 / 16383.0);
            }
            vec3 deltaRgb = vec3(
                deltaY + 0.787402654 * deltaUv.y,
                deltaY - 0.132114176 * deltaUv.x - 0.234062875 * deltaUv.y,
                deltaY + 1.308706174 * deltaUv.x
            );
            oColor = vec4(src.rgb + deltaRgb * uInvWhiteBalance, src.a);
        }
    """.trimIndent())

    private fun join(vararg parts: String): String = parts.joinToString("\n")
}
