package com.hinnka.mycamera.processor

/**
 * GLES implementation of MGC 9.6.080 V24 `gcam::ResolveSabreHalide`
 * (libgcastartup.so entry 0x34A55D4, worker 0x349B1B8). The algorithm notes live in
 * tools/mgc_sabre_resolve.
 *
 * The AOT works in a virtual RGGB frame V(u, v) = input(clamp(u + bx), clamp(v + by)), where
 * (bx, by) is the red site of the sensor CFA; output(x, y) is the result at V(x, y). Its Funcs are
 * split into four passes so no pixel recomputes a neighbour's intermediate:
 *
 * 1. `converted_to_int`: remosaic the dehomogenized RGBA16F colour into an int16 CFA.
 * 2. `g_gb`: Gr/Gb balance at G sites; R/B sites keep their converted value.
 * 3. `g_b$1`: adaptive green at R/B sites; G sites keep their balanced value.
 * 4. `demosaic` + `output`: chroma interpolation, coverage blend, final gains and lens shading,
 *    written as the normalized RGBA16UI camera RGB the chroma stage consumes.
 *
 * Passes 1-3 write int16 planes padded by [PLANE_PADDING] on each side, covering the virtual
 * coordinates their consumers touch (radius 4 for pass 1 down to radius 1 for pass 3). The
 * integer demosaic is the algorithm itself, so its operations keep the NEON lane semantics of
 * the AOT: 16-bit wraparound, SHADD/SRHADD rounding, SABD magnitudes, SQADD/SQSUB saturation and
 * SSHL by a signed byte. The float stages around it run in native binary32.
 */
internal object GlesMgcSabreResolveShaders {
    const val PLANE_PADDING = 4

    private val header = """
        #version 310 es
        precision highp float;
        precision highp int;
        precision highp sampler2D;
        precision highp isampler2D;
    """.trimIndent()

    private val integerOps = """
        const int PLANE_PADDING = $PLANE_PADDING;

        int s16(int v) { return (v << 16) >> 16; }
        int u16(int v) { return v & 0xffff; }
        int clz16(int x) { return x == 0 ? 16 : 15 - findMSB(x); }
        int clz32(uint x) { return x == 0u ? 32 : 31 - findMSB(x); }

        // SSHL .8h: the shift is the signed low byte of the lane; negative shifts are arithmetic.
        int sshl16(int x, int lane) {
            int s = ((lane & 0xff) << 24) >> 24;
            if (s >= 0) return s >= 16 ? 0 : s16(x << s);
            if (s <= -16) return x < 0 ? -1 : 0;
            return x >> (-s);
        }
        int shadd(int a, int b) { return (a + b) >> 1; }
        int srhadd(int a, int b) { return (a + b + 1) >> 1; }
        int sabd(int a, int b) { return abs(a - b); }
        int urhadd(int a, int b) { return (a + b + 1) >> 1; }
        int sqadd(int a, int b) { return clamp(a + b, -32768, 32767); }
        int sqsub(int a, int b) { return clamp(a - b, -32768, 32767); }

        // Inverse-gradient pair blend. Candidate A has error dA, candidate B has error dB.
        struct Ig1 {
            bool aIsNear;
            int shift;
        };
        Ig1 makeIg1(int dA, int dB) {
            int hA = dA >> 1;
            int hB = dB >> 1;
            int total = max(u16(hA + hB), 1);
            return Ig1(hB > hA, clz16(total) - clz16(min(hA, hB)));
        }
        int blend1(Ig1 g, int xA, int xB) {
            int nearValue = g.aIsNear ? xA : xB;
            int farValue = g.aIsNear ? xB : xA;
            return s16(nearValue + sshl16(s16(farValue - nearValue), g.shift));
        }

        // Inverse-squared-cost blend; X has cost cX and Y has cost cY.
        int ig2(int cX, int cY, int x, int y) {
            uint sX = (uint(cX) * uint(cX)) >> 1;
            uint sY = (uint(cY) * uint(cY)) >> 1;
            bool xIsNear = sY > sX;
            int nearValue = xIsNear ? x : y;
            int farValue = xIsNear ? y : x;
            uint total = max(sX + sY, 1u);
            int shift = clamp(s16(clz32(total) - clz32(min(sX, sY))), -15, 15);
            return s16(nearValue + sshl16(s16(farValue - nearValue), shift));
        }

        // Bit below the leading one: the half-step fraction of log2(x).
        int log2Fraction(int x) { return sshl16(x, clz16(u16(x)) - 14) & 1; }

        // Log-domain ratio correction: xWeighted * g / gWeighted in half-step powers of two.
        int ratioCorrect(int xWeighted, int g, int gWeighted) {
            int xp = max(xWeighted, 0);
            int m = max(xp, max(gWeighted, g));
            int l = s16(
                log2Fraction(xp) - 2 * clz16(u16(xp)) + 2 * clz16(u16(m)) - log2Fraction(m)
            );
            int t = sshl16(sqsub(g, gWeighted), max(s16(l >> 1), -15));
            int odd = (l & 1) != 0 ? t >> 1 : 0;
            return sqadd(xWeighted, s16(odd + t));
        }

        int planeAt(isampler2D plane, ivec2 planeSize, int u, int v) {
            ivec2 p = clamp(
                ivec2(u + PLANE_PADDING, v + PLANE_PADDING),
                ivec2(0),
                planeSize - ivec2(1)
            );
            return texelFetch(plane, p, 0).r;
        }
    """.trimIndent()

    /** Pass 1, `converted_to_int`: int16(clamp(roundEven(c * S), -32768, 32767)). */
    val convertToInt = """
        ${header.prependIndent("        ").trimStart()}
        uniform highp sampler2D uAccumulated;
        uniform ivec2 uImageSize;
        uniform ivec2 uRedSite;
        uniform float uQuantizationScale;
        layout(location = 0) out highp ivec4 oConverted;

        void main() {
            ivec2 virtualSite = ivec2(gl_FragCoord.xy) - ivec2($PLANE_PADDING);
            ivec2 source = clamp(virtualSite + uRedSite, ivec2(0), uImageSize - ivec2(1));
            vec4 color = texelFetch(uAccumulated, source, 0);
            int cfaColor = (virtualSite.x & 1) + (virtualSite.y & 1);
            float sampleValue = cfaColor == 0 ? color.r : (cfaColor == 1 ? color.g : color.b);
            float scaled = sampleValue * uQuantizationScale;
            oConverted = ivec4(int(clamp(roundEven(scaled), -32768.0, 32767.0)), 0, 0, 0);
        }
    """.trimIndent()

    /**
     * Pass 2, `g_gb`: blur = (4G + diagonal G + 4) >> 3 and
     * G' = blur + (((G - blur) * k + 0x8000) >> 16), where k = 0 equalizes Gr/Gb fully.
     */
    val greenBalance = """
        ${header.prependIndent("        ").trimStart()}
        uniform highp isampler2D uConverted;
        uniform ivec2 uPlaneSize;
        uniform int uGreenImbalanceRetention;
        layout(location = 0) out highp ivec4 oBalanced;

        ${integerOps.prependIndent("        ").trimStart()}

        int converted(int u, int v) { return planeAt(uConverted, uPlaneSize, u, v); }

        void main() {
            ivec2 virtualSite = ivec2(gl_FragCoord.xy) - ivec2(PLANE_PADDING);
            int u = virtualSite.x;
            int v = virtualSite.y;
            int g = converted(u, v);
            if (((u + v) & 1) == 0) {
                oBalanced = ivec4(g, 0, 0, 0);
                return;
            }
            int total = 4 * g + converted(u - 1, v - 1) + converted(u + 1, v - 1) +
                converted(u - 1, v + 1) + converted(u + 1, v + 1);
            int blur = s16((total + 4) >> 3);
            int difference = s16(g - blur);
            int correction = s16(
                int(uint(difference * uGreenImbalanceRetention) + 0x8000u) >> 16
            );
            oBalanced = ivec4(s16(correction + blur), 0, 0, 0);
        }
    """.trimIndent()

    /**
     * Pass 3, `g_b$1`: green at R/B sites from directional (G + C) / 2 estimates, inverse-gradient
     * candidate blends, log-domain ratio correction and inverse-squared direction costs.
     */
    val greenAtColor = """
        ${header.prependIndent("        ").trimStart()}
        uniform highp isampler2D uBalanced;
        uniform ivec2 uPlaneSize;
        layout(location = 0) out highp ivec4 oGreen;

        ${integerOps.prependIndent("        ").trimStart()}

        // R/B sites hold the converted value, G sites the balanced green.
        int at(int u, int v) { return planeAt(uBalanced, uPlaneSize, u, v); }

        void main() {
            ivec2 virtualSite = ivec2(gl_FragCoord.xy) - ivec2(PLANE_PADDING);
            int u = virtualSite.x;
            int v = virtualSite.y;
            int c = at(u, v);
            if (((u + v) & 1) != 0) {
                oGreen = ivec4(c, 0, 0, 0);
                return;
            }
            int cL = at(u - 2, v);
            int cR = at(u + 2, v);
            int cU = at(u, v - 2);
            int cD = at(u, v + 2);
            int gl = at(u - 1, v);
            int gr = at(u + 1, v);
            int gu = at(u, v - 1);
            int gd = at(u, v + 1);
            int ul = at(u - 1, v - 1);
            int ur = at(u + 1, v - 1);
            int dl = at(u - 1, v + 1);
            int dr = at(u + 1, v + 1);

            int eH = srhadd(shadd(gl, gr), c);
            int eR = srhadd(shadd(c, cR), gr);
            int eL = srhadd(shadd(cL, c), gl);
            int eV = srhadd(shadd(gu, gd), c);
            int eD = srhadd(shadd(c, cD), gd);
            int eU = srhadd(shadd(cU, c), gu);

            Ig1 horizontal = makeIg1(sabd(eH, eR), sabd(eH, eL));
            int eHWeighted = blend1(horizontal, eR, eL);
            int gH = blend1(horizontal, gr, gl);
            Ig1 vertical = makeIg1(sabd(eV, eD), sabd(eV, eU));
            int eVWeighted = blend1(vertical, eD, eU);
            int gV = blend1(vertical, gd, gu);

            int cH = shadd(srhadd(gl, gr), c);
            int cV = shadd(srhadd(gu, gd), c);
            int eHUpDown = srhadd(
                shadd(srhadd(at(u - 1, v - 2), at(u + 1, v - 2)), cU),
                shadd(srhadd(at(u - 1, v + 2), at(u + 1, v + 2)), cD)
            );
            int eVLeftRight = srhadd(
                shadd(srhadd(at(u - 2, v - 1), at(u - 2, v + 1)), cL),
                shadd(srhadd(at(u + 2, v - 1), at(u + 2, v + 1)), cR)
            );
            int pl = shadd(srhadd(ul, dl), gl);
            int pr = shadd(srhadd(ur, dr), gr);
            int pu = shadd(srhadd(ul, ur), gu);
            int pd = shadd(srhadd(dl, dr), gd);
            // (|.| >> 2) * 9 is a wrapping 16-bit MUL then USHR #3; the sums are USRA mod 2^16.
            int costA = u16(
                (u16((sabd(cV, eVLeftRight) >> 2) * 9) >> 3) +
                    (sabd(cV, srhadd(pl, pr)) >> 3) + (sabd(pl, pr) >> 1)
            );
            int costB = u16(
                (u16((sabd(cH, eHUpDown) >> 2) * 9) >> 3) +
                    (sabd(cH, srhadd(pu, pd)) >> 3) + (sabd(pu, pd) >> 1)
            );

            int greenH = ratioCorrect(gH, eH, eHWeighted);
            int greenV = ratioCorrect(gV, eV, eVWeighted);
            oGreen = ivec4(ig2(costB, costA, greenV, greenH), 0, 0, 0);
        }
    """.trimIndent()

    /**
     * Pass 4, `demosaic` + `output`. The coverage weight blends the accumulated colour toward the
     * demosaic; the result times the final gains and the lens shading is the black-free camera RGB,
     * stored as RGBA16UI on [0, 65535].
     */
    val resolveOutput = """
        ${header.prependIndent("        ").trimStart()}
        uniform highp sampler2D uAccumulated;
        uniform highp isampler2D uBalanced;
        uniform highp isampler2D uGreen;
        uniform ivec2 uImageSize;
        uniform ivec2 uPlaneSize;
        uniform ivec2 uRedSite;
        uniform float uBlendBias;
        uniform float uBlendScale;
        uniform float uInverseQuantizationScale;
        uniform vec3 uFinalGains;
        // RGGB gains of the lens shading map; a 1x1 map of ones when the capture has none.
        uniform highp sampler2D uLensShading;
        layout(location = 0) out highp uvec4 oResolved;

        ${integerOps.prependIndent("        ").trimStart()}

        // Converted value; only read at R/B sites, where pass 2 kept it.
        int converted(int u, int v) { return planeAt(uBalanced, uPlaneSize, u, v); }
        int green(int u, int v) { return planeAt(uGreen, uPlaneSize, u, v); }

        // Chroma of colour `wantBlue ? B : R` at a site whose native colour differs.
        int chroma(int u, int v, bool wantBlue) {
            int nativeOffset = wantBlue ? 1 : 0;
            bool sameRow = ((v - nativeOffset) & 1) == 0;
            bool sameColumn = ((u - nativeOffset) & 1) == 0;
            int gc = green(u, v);
            if (sameRow && !sameColumn) {
                Ig1 g = makeIg1(sabd(gc, green(u + 1, v)), sabd(gc, green(u - 1, v)));
                int xWeighted = blend1(g, converted(u + 1, v), converted(u - 1, v));
                int gWeighted = blend1(g, green(u + 1, v), green(u - 1, v));
                return ratioCorrect(xWeighted, gc, gWeighted);
            }
            if (!sameRow && sameColumn) {
                Ig1 g = makeIg1(sabd(gc, green(u, v + 1)), sabd(gc, green(u, v - 1)));
                int xWeighted = blend1(g, converted(u, v + 1), converted(u, v - 1));
                int gWeighted = blend1(g, green(u, v + 1), green(u, v - 1));
                return ratioCorrect(xWeighted, gc, gWeighted);
            }
            int center = converted(u, v);
            int topLeft = converted(u - 1, v - 1);
            int topRight = converted(u + 1, v - 1);
            int bottomLeft = converted(u - 1, v + 1);
            int bottomRight = converted(u + 1, v + 1);
            Ig1 g1 = makeIg1(sabd(gc, green(u + 1, v - 1)), sabd(gc, green(u - 1, v + 1)));
            int x1 = ratioCorrect(
                blend1(g1, topRight, bottomLeft),
                gc,
                blend1(g1, green(u + 1, v - 1), green(u - 1, v + 1))
            );
            Ig1 g2 = makeIg1(sabd(gc, green(u + 1, v + 1)), sabd(gc, green(u - 1, v - 1)));
            int x2 = ratioCorrect(
                blend1(g2, bottomRight, topLeft),
                gc,
                blend1(g2, green(u + 1, v + 1), green(u - 1, v - 1))
            );
            int cost2 = urhadd(sabd(center, topLeft), sabd(center, bottomRight));
            int cost1 = urhadd(sabd(center, bottomLeft), sabd(center, topRight));
            return ig2(cost2, cost1, x2, x1);
        }

        void main() {
            ivec2 site = ivec2(gl_FragCoord.xy);
            int u = site.x;
            int v = site.y;
            int cfaColor = (u & 1) + (v & 1);
            int demosaicedRed = cfaColor == 0 ? converted(u, v) : chroma(u, v, false);
            int demosaicedGreen = green(u, v);
            int demosaicedBlue = cfaColor == 2 ? converted(u, v) : chroma(u, v, true);
            vec3 demosaiced = vec3(demosaicedRed, demosaicedGreen, demosaicedBlue) *
                uInverseQuantizationScale;

            ivec2 source = clamp(site + uRedSite, ivec2(0), uImageSize - ivec2(1));
            vec4 color = texelFetch(uAccumulated, source, 0);
            float weight = clamp(uBlendBias + color.a * uBlendScale, 0.0, 1.0);
            vec4 shading = texture(uLensShading, (vec2(site) + 0.5) / vec2(uImageSize));
            vec3 gains = uFinalGains * vec3(shading.r, 0.5 * (shading.g + shading.b), shading.a);
            vec3 resolved = clamp(mix(color.rgb, demosaiced, weight) * gains, 0.0, 1.0);
            oResolved = uvec4(uvec3(round(resolved * 65535.0)), 65535u);
        }
    """.trimIndent()
}
