package com.hinnka.mycamera.raw

/**
 * GLES 3.00 fragment shaders implementing MGC 9.6.080 V24 `gcam::PecanLumaDenoiseS16`
 * (`LumaDenoisePyramidDownsampleS16Halide`, `LumaDenoisePyramidLevelS16Halide`, and
 * `LumaDenoisePyramidLastLevelS16Halide`).
 *
 * All core pyramid passes operate in signed 16-bit integer Q14 luma stored in single-channel
 * `R16I` textures (reading `.r` from `initYuv` at level 0 and writing `ivec4(outY, initU, initV, 0)`
 * at level 0 so luma-only `R16I` and unified luma+chroma `RGBA16I` targets share one shader) and
 * match the original ARM64 Halide AOT bit-for-bit, verified by `tools/mgc_luma_denoise`.
 */
internal object GlesMgcLumaDenoiseShaders {
    const val RECON_HALO = 6
    const val BLF0_HALO = 2

    val header = """
        #version 300 es
        precision highp float;
        precision highp int;
        precision highp sampler2D;
        precision highp isampler2D;
        precision highp usampler2D;
    """.trimIndent()

    /**
     * Vertical pass of `LumaDenoisePyramidDownsampleS16Halide`: 8-tap
     * `[-3, -7, 17, 57, 57, 17, -7, -3] / 128` (`sqrshrn(..., 7)`) at `2*y + {-3..+4}` with
     * repeat-edge clamping. Output dimensions are `inW x outH`.
     */
    val downsampleVShader = join(header, """
        uniform highp isampler2D uInput;
        uniform ivec2 uInputMax;
        layout(location = 0) out ivec4 oOut;

        int sqrshrn7(int v) {
            return clamp((v + 64) >> 7, -32768, 32767);
        }

        int fetchY(int x, int y) {
            return texelFetch(uInput, ivec2(x, clamp(y, 0, uInputMax.y)), 0).r;
        }

        void main() {
            ivec2 p = ivec2(gl_FragCoord.xy);
            int by = 2 * p.y;
            int sum =
                -3 * fetchY(p.x, by - 3) +
                -7 * fetchY(p.x, by - 2) +
                17 * fetchY(p.x, by - 1) +
                57 * fetchY(p.x, by) +
                57 * fetchY(p.x, by + 1) +
                17 * fetchY(p.x, by + 2) +
                -7 * fetchY(p.x, by + 3) +
                -3 * fetchY(p.x, by + 4);
            oOut = ivec4(sqrshrn7(sum), 0, 0, 0);
        }
    """.trimIndent())

    /**
     * Horizontal pass of `LumaDenoisePyramidDownsampleS16Halide`: 8-tap
     * `[-3, -7, 17, 57, 57, 17, -7, -3] / 128` (`sqrshrn(..., 7)`) at `2*x + {-3..+4}` with
     * repeat-edge clamping. Output dimensions are `outW x outH`.
     */
    val downsampleHShader = join(header, """
        uniform highp isampler2D uInput;
        uniform ivec2 uInputMax;
        layout(location = 0) out ivec4 oOut;

        int sqrshrn7(int v) {
            return clamp((v + 64) >> 7, -32768, 32767);
        }

        int fetchX(int x, int y) {
            return texelFetch(uInput, ivec2(clamp(x, 0, uInputMax.x), y), 0).r;
        }

        void main() {
            ivec2 p = ivec2(gl_FragCoord.xy);
            int bx = 2 * p.x;
            int sum =
                -3 * fetchX(bx - 3, p.y) +
                -7 * fetchX(bx - 2, p.y) +
                17 * fetchX(bx - 1, p.y) +
                57 * fetchX(bx, p.y) +
                57 * fetchX(bx + 1, p.y) +
                17 * fetchX(bx + 2, p.y) +
                -7 * fetchX(bx + 3, p.y) +
                -3 * fetchX(bx + 4, p.y);
            oOut = ivec4(sqrshrn7(sum), 0, 0, 0);
        }
    """.trimIndent())

    /**
     * 3x3 `[1,2,1; 2,4,2; 1,2,1] / 16` low-pass filter on level-1 denoised luma for LastLevel.
     * Rendered over `[-1..coarseW] x [-1..coarseH]` (texture size `(coarseW + 2) x (coarseH + 2)`)
     * with `uPrevDenoised` clamped to `[0..coarseW-1] x [0..coarseH-1]`, matching Halide's
     * border evaluation of `low_pass(-1, y)` and `low_pass(coarseW, y)`.
     */
    val lowPassShader = join(header, """
        uniform highp isampler2D uPrevDenoised;
        uniform ivec2 uCoarseMax;
        layout(location = 0) out ivec4 oOut;

        int shadd(int a, int b) {
            return (a + b) >> 1;
        }

        int srhadd(int a, int b) {
            return (a + b + 1) >> 1;
        }

        int fetchCoarse(int x, int y) {
            return texelFetch(uPrevDenoised, clamp(ivec2(x, y), ivec2(0), uCoarseMax), 0).r;
        }

        int rowLp(int x, int y) {
            return srhadd(shadd(fetchCoarse(x - 1, y), fetchCoarse(x + 1, y)), fetchCoarse(x, y));
        }

        void main() {
            ivec2 c = ivec2(gl_FragCoord.xy) - ivec2(1);
            int top = rowLp(c.x, c.y - 1);
            int mid = rowLp(c.x, c.y);
            int bot = rowLp(c.x, c.y + 1);
            oOut = ivec4(shadd(srhadd(top, bot), mid), 0, 0, 0);
        }
    """.trimIndent())

    /**
     * Reconstructed stage of `LumaDenoisePyramidLevelS16Halide` and
     * `LumaDenoisePyramidLastLevelS16Halide` over `[-6..W+5] x [-6..H+5]`:
     * adds `[9, 3, 3, 1] / 16` upsampled `sqsub(prev_denoised, prev_input)` (and additionally
     * `- low_pass` on LastLevel) onto `input` using exact NEON `sqsub`/`shadd`/`srhadd`/`sqadd`.
     */
    val reconstructShader = join(header, """
        uniform highp isampler2D uInput;
        uniform highp isampler2D uPrevInput;
        uniform highp isampler2D uPrevDenoised;
        uniform highp isampler2D uLowPass;
        uniform ivec2 uInputMax;
        uniform ivec2 uCoarseMax;
        uniform int uIsLastLevel;
        layout(location = 0) out ivec4 oOut;

        int sat16(int v) {
            return clamp(v, -32768, 32767);
        }

        int shadd(int a, int b) {
            return (a + b) >> 1;
        }

        int srhadd(int a, int b) {
            return (a + b + 1) >> 1;
        }

        int upsample9331(int a, int b, int c, int d) {
            int m1 = shadd(c, b);
            int m2 = srhadd(c, b);
            int m3 = srhadd(a, d);
            int m4 = srhadd(m1, m3);
            int m5 = srhadd(m2, m4);
            return shadd(a, m5);
        }

        int coarseDiff(int cx, int cy) {
            ivec2 q = clamp(ivec2(cx, cy), ivec2(0), uCoarseMax);
            int d = sat16(texelFetch(uPrevDenoised, q, 0).r - texelFetch(uPrevInput, q, 0).r);
            if (uIsLastLevel != 0) {
                ivec2 lq = clamp(ivec2(cx, cy), ivec2(-1), uCoarseMax + ivec2(1)) + ivec2(1);
                d = sat16(d - texelFetch(uLowPass, lq, 0).r);
            }
            return d;
        }

        void main() {
            ivec2 g = ivec2(gl_FragCoord.xy) - ivec2($RECON_HALO);
            int inVal = texelFetch(uInput, clamp(g, ivec2(0), uInputMax), 0).r;
            int gx = g.x >> 1;
            int gy = g.y >> 1;
            int nx = (g.x & 1) == 0 ? (gx - 1) : (gx + 1);
            int ny = (g.y & 1) == 0 ? (gy - 1) : (gy + 1);
            int up = upsample9331(
                coarseDiff(gx, gy),
                coarseDiff(nx, gy),
                coarseDiff(gx, ny),
                coarseDiff(nx, ny)
            );
            oOut = ivec4(sat16(inVal + up), 0, 0, 0);
        }
    """.trimIndent())

    private val strengthLookup = """
        uniform highp usampler2D uStrength;
        uniform ivec2 uStrengthMax;
        uniform int uStrengthShift;

        int shiftCoord(int coord, int shift) {
            return shift >= 0 ? (coord >> shift) : (coord << (-shift));
        }

        uvec3 strengthAt(ivec2 p) {
            ivec2 q = clamp(
                ivec2(shiftCoord(p.x, uStrengthShift), shiftCoord(p.y, uStrengthShift)),
                ivec2(0),
                uStrengthMax
            );
            return texelFetch(uStrength, q, 0).rgb;
        }
    """.trimIndent()

    /**
     * `blf0` (step 2) and `blf1` (step 1) of Pecan luma denoise:
     * variance polynomial (`s2*read + s1*shot*y + s0*quad*wrap16(y^2)`) -> exact NEON `clz`
     * `fastSqrtU16` -> 8-neighbor 3x3 patch L1 (`uhadd`/`urhadd`) -> dual threshold (`<= sigma`,
     * `dist>>1 <= sigma`) -> outlier selection -> 13-entry Q15 reciprocal LUT (`sqrshrn15`).
     */
    private val blfFilter = """
        uniform highp isampler2D uSrc;
        uniform highp isampler2D uLumaRef;
        uniform int uHasLumaRef;
        uniform ivec2 uSrcOrigin;
        uniform ivec2 uSrcMax;
        uniform ivec2 uLumaMax;
        uniform int uReadCoeff;
        uniform int uShotCoeff;
        uniform int uQuadCoeff;
        uniform uint uOutlierQ4;

        const uint RECIP_LUT[13] = uint[13](
            8192u, 6554u, 5461u, 4681u, 4096u, 3641u, 3277u,
            2979u, 2731u, 2521u, 2341u, 2185u, 2048u
        );

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

        // Pure GLES 3.00 32-bit leading-zero count (no ES 3.1+ findMSB dependency).
        uint clz32(uint x) {
            if (x == 0u) return 32u;
            uint n = 0u;
            if ((x & 0xffff0000u) == 0u) { n += 16u; x <<= 16u; }
            if ((x & 0xff000000u) == 0u) { n += 8u; x <<= 8u; }
            if ((x & 0xf0000000u) == 0u) { n += 4u; x <<= 4u; }
            if ((x & 0xc0000000u) == 0u) { n += 2u; x <<= 2u; }
            if ((x & 0x80000000u) == 0u) { n += 1u; }
            return n;
        }

        uint fastSqrtU16(int variance) {
            uint uvar = uint(variance);
            uint c = clz32(uvar);
            int shift = int(c) - 21;
            int shifted;
            if (shift >= 0) {
                shifted = (shift >= 32) ? 0 : int(uvar << uint(shift));
            } else {
                int r = -shift;
                shifted = (r >= 32) ? (variance >> 31) : (variance >> r);
            }
            uint m = uint(shifted) & 0x03ffu;
            uint t = (m - (c << 10u) + 0x7c00u) & 0xffffu;
            uint exponent = t >> 11u;
            uint frac = t & 0x07ffu;
            uint p = (exponent >= 16u) ? 0u : ((1u << exponent) & 0xffffu);
            uint interp = min((frac * p) >> 11u, 65535u);
            return (p + interp) & 0xffffu;
        }

        uint uhadd(uint a, uint b) {
            return (a + b) >> 1u;
        }

        uint urhadd(uint a, uint b) {
            return (a + b + 1u) >> 1u;
        }

        struct PatchRow {
            ivec3 left;
            ivec3 center;
            ivec3 right;
        };

        int sourceCoord(int value, int maxValue, bool clampSource) {
            return clampSource ? clamp(value, 0, maxValue) : value;
        }

        PatchRow fetchPatchRow(int x0, int x1, int x2, int x3, int x4, int y) {
            int a = texelFetch(uSrc, ivec2(x0, y), 0).r;
            int b = texelFetch(uSrc, ivec2(x1, y), 0).r;
            int c = texelFetch(uSrc, ivec2(x2, y), 0).r;
            int d = texelFetch(uSrc, ivec2(x3, y), 0).r;
            int e = texelFetch(uSrc, ivec2(x4, y), 0).r;
            return PatchRow(ivec3(a, b, c), ivec3(b, c, d), ivec3(c, d, e));
        }

        uint rowDistance(ivec3 a, ivec3 b) {
            ivec3 d = abs(a - b);
            return urhadd(uhadd(uint(d.r), uint(d.b)), uint(d.g));
        }

        uint patchDistance(
            ivec3 top, ivec3 middle, ivec3 bottom,
            ivec3 otherTop, ivec3 otherMiddle, ivec3 otherBottom
        ) {
            return uhadd(
                urhadd(rowDistance(top, otherTop), rowDistance(bottom, otherBottom)),
                rowDistance(middle, otherMiddle)
            );
        }

        ivec4 accumulate(ivec4 totals, uint dist, uint sigma, int sampleY, int weight) {
            int w1 = weight * int(dist <= sigma);
            int w2 = weight * int((dist >> 1u) <= sigma);
            return totals + ivec4(sampleY * w1, sampleY * w2, w1, w2);
        }

        int filterLuma(ivec2 g, uvec3 strength, int step, bool clampSource) {
            // All nine 3x3 patches fit in this shared 5x5 neighborhood.
            ivec2 source = g - uSrcOrigin;
            int twice = 2 * step;
            int x0 = sourceCoord(source.x - twice, uSrcMax.x, clampSource);
            int x1 = sourceCoord(source.x - step, uSrcMax.x, clampSource);
            int x2 = sourceCoord(source.x, uSrcMax.x, clampSource);
            int x3 = sourceCoord(source.x + step, uSrcMax.x, clampSource);
            int x4 = sourceCoord(source.x + twice, uSrcMax.x, clampSource);
            int y0 = sourceCoord(source.y - twice, uSrcMax.y, clampSource);
            int y1 = sourceCoord(source.y - step, uSrcMax.y, clampSource);
            int y2 = sourceCoord(source.y, uSrcMax.y, clampSource);
            int y3 = sourceCoord(source.y + step, uSrcMax.y, clampSource);
            int y4 = sourceCoord(source.y + twice, uSrcMax.y, clampSource);
            PatchRow r0 = fetchPatchRow(x0, x1, x2, x3, x4, y0);
            PatchRow r1 = fetchPatchRow(x0, x1, x2, x3, x4, y1);
            PatchRow r2 = fetchPatchRow(x0, x1, x2, x3, x4, y2);
            PatchRow r3 = fetchPatchRow(x0, x1, x2, x3, x4, y3);
            PatchRow r4 = fetchPatchRow(x0, x1, x2, x3, x4, y4);

            int yc = r2.center.g;
            int ySig = (uHasLumaRef != 0)
                ? texelFetch(uLumaRef, clamp(g, ivec2(0), uLumaMax), 0).r
                : yc;
            int yPos = max(ySig, 0);
            int ySqWrap = wrap16(yPos * yPos);

            int termRead = mulShift8Sat32(strength.b, uint(uReadCoeff));
            int shotY = (yPos * uShotCoeff) >> 8;
            int termShot = mulShift8Sat32(strength.g, uint(shotY));
            int quadY2 = (ySqWrap * uQuadCoeff) >> 16;
            int termQuad = int(uint(quadY2) * strength.r) >> 8;
            int variance = satAdd32(satAdd32(termRead, termShot), termQuad);
            uint sigma = fastSqrtU16(variance);

            ivec3 top = r1.center;
            ivec3 middle = r2.center;
            ivec3 bottom = r3.center;
            ivec4 totals = ivec4(0, 0, 0, 0);
            totals = accumulate(totals, patchDistance(top, middle, bottom, r0.left,   r1.left,   r2.left),   sigma, r1.left.g,   1);
            totals = accumulate(totals, patchDistance(top, middle, bottom, r0.center, r1.center, r2.center), sigma, r1.center.g, 2);
            totals = accumulate(totals, patchDistance(top, middle, bottom, r0.right,  r1.right,  r2.right),  sigma, r1.right.g,  1);
            totals = accumulate(totals, patchDistance(top, middle, bottom, r1.left,   r2.left,   r3.left),   sigma, r2.left.g,   2);
            totals = accumulate(totals, patchDistance(top, middle, bottom, r1.right,  r2.right,  r3.right),  sigma, r2.right.g,  2);
            totals = accumulate(totals, patchDistance(top, middle, bottom, r2.left,   r3.left,   r4.left),   sigma, r3.left.g,   1);
            totals = accumulate(totals, patchDistance(top, middle, bottom, r2.center, r3.center, r4.center), sigma, r3.center.g, 2);
            totals = accumulate(totals, patchDistance(top, middle, bottom, r2.right,  r3.right,  r4.right),  sigma, r3.right.g,  1);

            bool use1 = uint(totals.b + 4) > uOutlierQ4;
            int inv = int(RECIP_LUT[use1 ? totals.b : totals.a]);
            int total = (use1 ? totals.r : totals.g) + 4 * yc;
            return clamp((total * inv + 16384) >> 15, -32768, 32767);
        }
    """.trimIndent()

    val blfShader = join(header, strengthLookup, blfFilter, """
        uniform ivec2 uDstOrigin;
        uniform int uClampSrc;
        uniform int uStep;
        layout(location = 0) out ivec4 oOut;

        void main() {
            ivec2 g = ivec2(gl_FragCoord.xy) + uDstOrigin;
            int y = filterLuma(g, strengthAt(g), uStep, uClampSrc != 0);
            oOut = ivec4(y, 0, 0, 0);
        }
    """.trimIndent())

    /**
     * Final revert blend of each Pecan pyramid level (using `strength.g` = `s1` against thresholds
     * `512 / 1024 / 2048`), plus upsampled `low_pass` addition and `input > 28670` highlight guard
     * on LastLevel. On LastLevel, copies `uInput.gb` into `.gb` so rendering into an `RGBA16I`
     * target directly yields `[denoised Y, init Cb, init Cr, 0]` for ChromaDenoise with zero extra
     * merge pass (while `R16I` targets keep only `.r`).
     */
    private val revertFilter = """
        uniform highp isampler2D uInput;
        uniform highp isampler2D uRecon;
        uniform highp isampler2D uLowPass;
        uniform ivec2 uReconOrigin;
        uniform ivec2 uCoarseMax;
        uniform int uIsLastLevel;
        uniform uint uRevQ8;
        uniform uvec3 uRevLut;

        int sat16(int v) {
            return clamp(v, -32768, 32767);
        }

        int shadd(int a, int b) {
            return (a + b) >> 1;
        }

        int srhadd(int a, int b) {
            return (a + b + 1) >> 1;
        }

        int upsample9331(int a, int b, int c, int d) {
            int m1 = shadd(c, b);
            int m2 = srhadd(c, b);
            int m3 = srhadd(a, d);
            int m4 = srhadd(m1, m3);
            int m5 = srhadd(m2, m4);
            return shadd(a, m5);
        }

        int blendRevert(int recon, int denoised, uint alphaU8) {
            uint alpha = alphaU8 * 257u;
            uint invAlpha = (~alpha) & 0xffffu;
            uint a = (uint(recon) & 0xffffu) ^ 0x8000u;
            uint b = (uint(denoised) & 0xffffu) ^ 0x8000u;
            uint prod = a * alpha + b * invAlpha;
            prod = prod + ((prod + 32768u) >> 16u);
            uint res = ((prod + 32768u) >> 16u) ^ 0x8000u;
            int signedRes = int(res & 0xffffu);
            return signedRes >= 32768 ? (signedRes - 65536) : signedRes;
        }

        int lpAt(int cx, int cy) {
            ivec2 lq = clamp(ivec2(cx, cy), ivec2(-1), uCoarseMax + ivec2(1)) + ivec2(1);
            return texelFetch(uLowPass, lq, 0).r;
        }

        ivec4 revertFilteredLuma(ivec2 p, int den, uint s1) {
            uint alpha = uRevQ8;
            if (s1 > 2048u) alpha = uRevLut.x;
            else if (s1 > 1024u) alpha = uRevLut.y;
            else if (s1 > 512u) alpha = uRevLut.z;

            int rec = texelFetch(uRecon, p - uReconOrigin, 0).r;
            int outY = blendRevert(rec, den, alpha);
            if (uIsLastLevel != 0) {
                ivec4 inYuv = texelFetch(uInput, p, 0);
                int gx = p.x >> 1;
                int gy = p.y >> 1;
                int nx = (p.x & 1) == 0 ? (gx - 1) : (gx + 1);
                int ny = (p.y & 1) == 0 ? (gy - 1) : (gy + 1);
                int upLp = upsample9331(
                    lpAt(gx, gy),
                    lpAt(nx, gy),
                    lpAt(gx, ny),
                    lpAt(nx, ny)
                );
                outY = sat16(outY + upLp);
                if (inYuv.r > 28670) {
                    outY = inYuv.r;
                }
                return ivec4(outY, inYuv.g, inYuv.b, 0);
            }
            return ivec4(outY, 0, 0, 0);
        }
    """.trimIndent()

    /** BLF1 and revert use the same output coordinate and strength sample. */
    val blfRevertOutputShader = join(header, strengthLookup, blfFilter, revertFilter, """
        layout(location = 0) out ivec4 oOut;

        void main() {
            ivec2 p = ivec2(gl_FragCoord.xy);
            uvec3 strength = strengthAt(p);
            int denoised = filterLuma(p, strength, 1, false);
            oOut = revertFilteredLuma(p, denoised, strength.g);
        }
    """.trimIndent())

    private fun join(vararg parts: String): String = parts.joinToString("\n")
}
