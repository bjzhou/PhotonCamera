package com.hinnka.mycamera.lut

import android.opengl.GLES30

/**
 * Highlights / shadows after Camera Raw's PV2012 tone map (`cr_tone_map_info`), see
 * docs/lrmobile-highlights-shadows-evidence.md and tools/lrmobile/tone_map_reference.py.
 *
 * Works on `x = log2(flare + Y)`: the mask from [ShadowsHighlightsMaskGl] gives the local
 * compression `delta` (local Laplacian output minus input), and four levels pull x towards
 * targets derived from `x + delta` and from image statistics. Highlights ("recover") only act
 * where the target lies below x, shadows ("fill") only where it lies above. The new luminance is
 * applied as a gain on linear RGB.
 */
object ShadowsHighlightsShader {
    fun bindUniforms(program: Int, highlights: Float, shadows: Float) {
        bindUniformLocations(
            highlightsLocation = GLES30.glGetUniformLocation(program, "uHighlights"),
            shadowsLocation = GLES30.glGetUniformLocation(program, "uShadows"),
            highlights = highlights,
            shadows = shadows
        )
    }

    fun bindUniformLocations(
        highlightsLocation: Int,
        shadowsLocation: Int,
        highlights: Float,
        shadows: Float
    ) {
        GLES30.glUniform1f(highlightsLocation, highlights)
        GLES30.glUniform1f(shadowsLocation, shadows)
    }

    /** Matches the early-out in `applyShadowsHighlights`. */
    fun isActive(highlights: Float, shadows: Float): Boolean =
        kotlin.math.abs(highlights) >= 0.0005f || kotlin.math.abs(shadows) >= 0.0005f

    /** Samples of the per-image fill / recover level table (see `shLevelAmountsAt`). */
    const val AMOUNT_TABLE_SIZE = 256

    /** Camera Raw's default log flare (2^-12). */
    const val FLARE_GLSL = "(1.0 / 4096.0)"

    /**
     * LinearToLog2 with flare (odd-symmetric below zero), the gray it is applied to, and Camera
     * Raw's working domain for bitmaps: a non-raw negative renders through the default ACR3 curve
     * (`cr_negative::RenderCurve`, `neg+0x170 == 1`), so the tone map runs on ProPhoto linear RGB
     * with that curve undone per channel (`AppendStage_UndoRenderCurve`) and the curve is applied
     * again afterwards. `curve` rows: 0 = inverse ACR3, 1 = ACR3 (see [ShadowsHighlightsMaskGl]).
     */
    val LOG_GLSL = """
        // cr_stage_RGBToGray on ProPhoto linear RGB.
        float shGray(vec3 prophoto) {
            return dot(prophoto, vec3(0.30, 0.59, 0.11));
        }

        vec3 shSrgbToProPhoto(vec3 linearSrgb) {
            return mat3(
                0.5293459, 0.0983744, 0.0168832,
                0.3300728, 0.8734611, 0.1176725,
                0.1405813, 0.0281647, 0.8654443
            ) * linearSrgb;
        }

        vec3 shProPhotoToSrgb(vec3 prophoto) {
            return mat3(
                 2.0340762, -0.2288134, -0.0085698,
                -0.7273343,  1.2317302, -0.1532866,
                -0.3067417, -0.0029169,  1.1618564
            ) * prophoto;
        }

        float shCurve(sampler2D curve, float value, int row) {
            highp int lastIndex = textureSize(curve, 0).x - 1;
            float position = clamp(value, 0.0, 1.0) * float(lastIndex);
            highp int lowerIndex = int(floor(position));
            highp int upperIndex = min(lowerIndex + 1, lastIndex);
            float lower = texelFetch(curve, ivec2(lowerIndex, row), 0).r;
            float upper = texelFetch(curve, ivec2(upperIndex, row), 0).r;
            return mix(lower, upper, position - float(lowerIndex));
        }

        // Linear sRGB -> ProPhoto linear with the ACR3 render curve undone.
        vec3 shToSceneProPhoto(sampler2D curve, vec3 linearSrgb) {
            vec3 prophoto = clamp(shSrgbToProPhoto(linearSrgb), 0.0, 1.0);
            return vec3(shCurve(curve, prophoto.r, 0), shCurve(curve, prophoto.g, 0), shCurve(curve, prophoto.b, 0));
        }

        vec3 shRenderProPhoto(sampler2D curve, vec3 scene) {
            return vec3(shCurve(curve, scene.r, 1), shCurve(curve, scene.g, 1), shCurve(curve, scene.b, 1));
        }

        float shLinearToLog2(float y) {
            float flare = $FLARE_GLSL;
            return y >= 0.0 ? log2(flare + y) : 2.0 * log2(flare) - log2(flare - y);
        }

        float shLog2ToLinear(float l) {
            float flare = $FLARE_GLSL;
            float lf = log2(flare);
            return l >= lf ? exp2(l) - flare : flare - exp2(2.0 * lf - l);
        }
    """.trimIndent()

    /**
     * Stats texture layout: texel (0, 0) input, (1, 0) filtered output, each (low, high, mean of
     * sRGB-encoded window position) in log2. `shStatsKey` gives the `cr_image_stats` key (+0x10):
     * linear values inside the 0.01%..99.99% window are normalised to it, averaged after sRGB
     * encoding, decoded and mapped back (needs [LOG_GLSL]).
     */
    val STATS_GLSL = """
        float shSrgbEncode(float v) {
            return v <= 0.0031308 ? 12.92 * v : 1.055 * pow(v, 1.0 / 2.4) - 0.055;
        }

        float shSrgbDecode(float v) {
            return v <= 0.04045 ? v / 12.92 : pow((v + 0.055) / 1.055, 2.4);
        }

        float shStatsKey(vec4 stats) {
            float lo = shLog2ToLinear(stats.x);
            float hi = shLog2ToLinear(stats.y);
            return shLinearToLog2(lo + (hi - lo) * shSrgbDecode(clamp(stats.z, 0.0, 1.0)));
        }
    """.trimIndent()


    /**
     * Initialize pieces shared by the apply pass and the mask constants pass (needs [LOG_GLSL] and
     * [STATS_GLSL]).
     */
    val TONE_MAP_GLSL = """
        // cr_amount_curve::Evaluate: dng_spline_solver (unit-spaced knots 0..4) evaluated at the
        // amount, mapped back through the piecewise-linear knots.
        float shAmountTotal(float knots[5], float amount) {
            float s[5];
            float b = knots[1] - knots[0];
            s[0] = b;
            for (int j = 2; j < 5; j++) {
                float d = knots[j] - knots[j - 1];
                s[j - 1] = 0.5 * (b + d);
                b = d;
            }
            s[4] = 2.0 * b - s[3];
            s[0] = 2.0 * s[0] - s[1];
            float e[5] = float[5](0.25, 0.25, 0.25, 0.25, 0.5);
            float fv[5] = float[5](0.5, 0.25, 0.25, 0.25, 0.25);
            float g[5];
            g[0] = 0.75 * (s[0] + s[1]);
            for (int j = 1; j < 4; j++) g[j] = 1.5 * s[j];
            g[4] = 0.75 * (s[3] + s[4]);
            for (int j = 1; j < 5; j++) {
                float a = 1.0 - fv[j - 1] * e[j];
                if (j != 4) fv[j] /= a;
                g[j] = (g[j] - g[j - 1] * e[j]) / a;
            }
            for (int j = 3; j >= 0; j--) g[j] -= fv[j] * g[j + 1];

            float t = clamp(amount, 0.0, 4.0);
            int seg = min(int(floor(t)), 3);
            float u = t - float(seg);
            float u2 = u * u;
            float u3 = u2 * u;
            float v = (2.0 * u3 - 3.0 * u2 + 1.0) * knots[seg] + (u3 - 2.0 * u2 + u) * g[seg]
                + (-2.0 * u3 + 3.0 * u2) * knots[seg + 1] + (u3 - u2) * g[seg + 1];
            int j = clamp(int(ceil(amount)) - 1, 0, 3);
            return (v - knots[j]) / (knots[j + 1] - knots[j]) + float(j);
        }

        // The cr_amount_curve total split into four unit levels.
        vec4 shLevelAmounts(float knots[5], float amount) {
            float total = shAmountTotal(knots, amount);
            vec4 levels;
            levels.x = min(total, 1.0); total -= levels.x;
            levels.y = min(total, 1.0); total -= levels.y;
            levels.z = min(total, 1.0); total -= levels.z;
            levels.w = total;
            return levels;
        }

        // Highlight side of cr_tone_map_info::Initialize: key M, A = max(p99.99, M + 1/8) of the
        // input, and the level targets from the filtered output.
        void shHighTargets(vec4 statsIn, vec4 statsOut, out float m, out float highA, out float tHigh[4]) {
            m = shStatsKey(statsIn);
            float outShift = m - shStatsKey(statsOut);
            highA = max(statsIn.y, m + 0.125);
            float highB = max(statsOut.y + outShift, m + 0.125);
            tHigh[0] = max(highB - 0.25, m + 0.1 * (highB - m));
            for (int k = 1; k < 4; k++) tHigh[k] = 0.5 * (tHigh[k - 1] + m);
        }

        // cr_recover_curve::Evaluate: where the 99.99% point lands for amount 2t through the
        // first two global levels.
        float shRecoverHighPoint(float t, float m, float highA, float tHigh[4], float highP) {
            float knots[5] = float[5](highA, tHigh[0], tHigh[1], tHigh[2], tHigh[3]);
            float total = shAmountTotal(knots, 2.0 * t);
            float first = min(total, 1.0);
            float r0 = (tHigh[0] - m) / (highA - m);
            float r1 = (tHigh[1] - m) / (highA - m);
            float after0 = highP + first * (m + r0 * (highP - m) - highP);
            return after0 + (total - first) * (m + r1 * (highP - m) - after0);
        }

        // Recover threshold and white floor (Initialize 0x3478e94..0x3478f54): (1000, 1) unless the
        // white clip W lies above the first targets; then the amount mapping the 99.99% point
        // onto W (dng_1d_function::EvaluateInverse, secant on [0, 1]) and its relative position.
        vec2 shRecoverThreshold(vec4 statsIn, vec4 statsOut) {
            float m;
            float highA;
            float tHigh[4];
            shHighTargets(statsIn, statsOut, m, highA, tHigh);
            float white = shLinearToLog2(1.0);
            if (!(white > tHigh[0] || white > tHigh[1])) return vec2(1000.0, 1.0);
            float highP = statsIn.y;
            float floorValue = clamp((highP - white) / max(m - white, exp2(-16.0)), 0.0, 1.0);
            float x0 = 0.0;
            float y0 = shRecoverHighPoint(0.0, m, highA, tHigh, highP);
            float x1 = 1.0;
            float y1 = shRecoverHighPoint(1.0, m, highA, tHigh, highP);
            for (int i = 0; i < 30; i++) {
                if (abs(y1 - y0) < 1e-10) break;
                float x2 = clamp(x1 + (white - y1) * (x1 - x0) / (y1 - y0), 0.0, 1.0);
                x0 = x1;
                y0 = y1;
                x1 = x2;
                y1 = shRecoverHighPoint(x2, m, highA, tHigh, highP);
            }
            return vec2(max(2.0 * x1, 0.0), floorValue);
        }

        // cr_tone_map_info::Initialize targets: key M, A / B anchors and the level targets.
        struct ShToneMapTargets {
            float m;
            float lowA;
            float highA;
            float tLow[4];
            float tHigh[4];
            float negativeBoost;
        };

        ShToneMapTargets shToneMapTargets(vec4 statsIn, vec4 statsOut) {
            ShToneMapTargets t;
            shHighTargets(statsIn, statsOut, t.m, t.highA, t.tHigh);
            // The output stats share the delta's key alignment (keyIn - keyOut).
            float outShift = t.m - shStatsKey(statsOut);
            t.lowA = min(statsIn.x, t.m - 0.125);
            float lowB = min(statsOut.x + outShift, t.m - 0.125);
            t.tLow[0] = min(lowB + 0.25, t.m + 0.1 * (lowB - t.m));
            for (int k = 1; k < 4; k++) t.tLow[k] = 0.5 * (t.tLow[k - 1] + t.m);
            float spanLow = t.lowA - 2.0 * (t.tLow[0] - t.lowA);
            float spanHigh = t.highA - 2.0 * (t.tHigh[0] - t.highA);
            float span = spanHigh - spanLow;
            t.negativeBoost = span < 12.0 ? 12.0 / max(span, exp2(-15.0)) : 1.0;
            return t;
        }

        // CalcFillAmounts / CalcRecoverAmounts at log luminance x.
        void shLevelAmountsAt(
            float x, ShToneMapTargets t, vec4 statsIn, vec2 recoverCurve, float fill, float recover,
            out vec4 fillLevels, out vec4 recoverLevels
        ) {
            float m = t.m;
            fillLevels = vec4(0.0);
            float fillAmount = 2.0 * fill;
            if (fillAmount > 0.0) {
                float floorSlope = statsIn.x != m ? 0.85 / (m - statsIn.x) : 0.0;
                float floorGain = clamp(0.15 + (x - statsIn.x) * floorSlope, 0.15, 1.0);
                float knots[5] = float[5](t.lowA, t.tLow[0], t.tLow[1], t.tLow[2], t.tLow[3]);
                fillLevels = shLevelAmounts(knots, fillAmount * 1.2 * pow(floorGain, 0.454545));
            } else if (fillAmount < 0.0) {
                fillLevels.x = fillAmount * (1.0 + clamp(-0.5 * fillAmount, 0.0, 1.0) * (t.negativeBoost - 1.0));
            }
            recoverLevels = vec4(0.0);
            float recoverAmount = 2.0 * recover;
            if (recoverAmount > 0.0) {
                float threshold = recoverCurve.x;
                if (threshold < recoverAmount) {
                    // Attenuate the amount beyond the threshold towards white (cr_div_map).
                    float p = 0.3 + 0.35 * min(0.5 * recoverAmount, 1.0);
                    float k = 0.8 * p / ((1.0 - p) * 0.2);
                    float q = recoverCurve.y;
                    float slope = m != statsIn.y ? (1.0 - q) / (m - statsIn.y) : 0.0;
                    float u = clamp(1.0 + slope * (x - m), q, 1.0);
                    recoverAmount = threshold + (recoverAmount - threshold) * (k * u / (k * u + 1.0 - u));
                }
                float knots[5] = float[5](t.highA, t.tHigh[0], t.tHigh[1], t.tHigh[2], t.tHigh[3]);
                recoverLevels = shLevelAmounts(knots, recoverAmount);
            } else if (recoverAmount < 0.0) {
                // Initialize: knee = max(-exposure[0x98], M + 1); no exposure offset here.
                float knee = max(0.0, m + 1.0);
                float slope = knee != m ? 0.9 / (m - knee) : 0.0;
                float a0 = pow(clamp(1.0 + slope * (x - m), 0.0, 1.0), 0.714285) * recoverAmount;
                recoverLevels.x = a0 * (1.0 + clamp(-0.5 * a0, 0.0, 1.0) * (t.negativeBoost - 1.0));
            }
        }

        // Log-luminance span covered by the amount table; amounts are constant outside the
        // image range except through the clamps above, so one stop of margin suffices.
        const int SH_AMOUNT_TABLE_SIZE = $AMOUNT_TABLE_SIZE;

        vec2 shAmountDomain(vec4 statsIn) {
            return vec2(statsIn.x - 1.0, max(statsIn.y, 0.0) + 1.0);
        }
    """.trimIndent()

    /**
     * Requires the host to declare `uHighlights`, `uShadows`, `highp sampler2D uShadowsHighlightsMask`,
     * `highp sampler2D uShadowsHighlightsStats` (3x1: input stats, output stats, recover threshold),
     * `highp sampler2D uShadowsHighlightsCurve` (ACR3 tables), `highp sampler2D uShadowsHighlightsAmounts`
     * (level amounts for the current sliders; all four from [ShadowsHighlightsMaskGl], built from the
     * same source and exposure) and `shToLinear` / `shFromLinear` for its RGB encoding.
     */
    val GLSL = LOG_GLSL + "\n" + STATS_GLSL + "\n" + TONE_MAP_GLSL + "\n" + """
        // Joint-bilateral upsample of (delta, L) guided by the full-resolution log luminance.
        const float SH_UPSAMPLE_RANGE = 0.5;

        float shSampleDelta(vec2 uv, float x) {
            ivec2 size = textureSize(uShadowsHighlightsMask, 0);
            vec2 position = clamp(uv, vec2(0.0), vec2(1.0)) * vec2(size) - 0.5;
            vec2 cell = floor(position);
            vec2 f = position - cell;
            ivec2 i0 = clamp(ivec2(cell), ivec2(0), size - 1);
            ivec2 i1 = clamp(ivec2(cell) + 1, ivec2(0), size - 1);
            vec2 m00 = texelFetch(uShadowsHighlightsMask, i0, 0).rg;
            vec2 m10 = texelFetch(uShadowsHighlightsMask, ivec2(i1.x, i0.y), 0).rg;
            vec2 m01 = texelFetch(uShadowsHighlightsMask, ivec2(i0.x, i1.y), 0).rg;
            vec2 m11 = texelFetch(uShadowsHighlightsMask, i1, 0).rg;
            vec4 delta = vec4(m00.x, m10.x, m01.x, m11.x);
            vec4 dl = (vec4(m00.y, m10.y, m01.y, m11.y) - x) / SH_UPSAMPLE_RANGE;
            vec4 bilinear = vec4((1.0 - f.x) * (1.0 - f.y), f.x * (1.0 - f.y), (1.0 - f.x) * f.y, f.x * f.y);
            vec4 weight = bilinear * (exp(-0.5 * dl * dl) + 0.001);
            return dot(weight, delta) / dot(weight, vec4(1.0));
        }

        vec3 applyShadowsHighlights(vec3 inputColor, vec2 uv) {
            float fill = clamp(uShadows, -1.0, 1.0);
            float recover = -clamp(uHighlights, -1.0, 1.0);
            if (abs(fill) < 0.0005 && abs(recover) < 0.0005) {
                return inputColor;
            }
            vec3 linearColor = shToLinear(inputColor);
            vec3 scene = shToSceneProPhoto(uShadowsHighlightsCurve, linearColor);
            float luminance = shGray(scene);
            if (!(luminance > 0.0)) {
                return inputColor;
            }
            float x = shLinearToLog2(luminance);

            vec4 statsIn = texelFetch(uShadowsHighlightsStats, ivec2(0, 0), 0);
            vec4 statsOut = texelFetch(uShadowsHighlightsStats, ivec2(1, 0), 0);
            ShToneMapTargets t = shToneMapTargets(statsIn, statsOut);
            float m = t.m;
            float falloffSigma = clamp((statsIn.y - statsIn.x - 2.0) * 0.03125 + 0.125, 0.125, 0.25);
            float falloffK = 1.0 / (falloffSigma * falloffSigma);
            float falloffC = clamp(1.25 - abs(fill - recover), 0.0, 1.0);

            // Level amounts from the per-image table (row 0 fill, row 1 recover).
            vec2 domain = shAmountDomain(statsIn);
            float position = clamp((x - domain.x) / (domain.y - domain.x), 0.0, 1.0) * float(SH_AMOUNT_TABLE_SIZE - 1);
            int i0 = int(floor(position));
            int i1 = min(i0 + 1, SH_AMOUNT_TABLE_SIZE - 1);
            float f = position - float(i0);
            vec4 fillLevels = mix(
                texelFetch(uShadowsHighlightsAmounts, ivec2(i0, 0), 0),
                texelFetch(uShadowsHighlightsAmounts, ivec2(i1, 0), 0), f);
            vec4 recoverLevels = mix(
                texelFetch(uShadowsHighlightsAmounts, ivec2(i0, 1), 0),
                texelFetch(uShadowsHighlightsAmounts, ivec2(i1, 1), 0), f);

            // cr_tone_map_info::Process
            bool below = x < m;
            float y = x;
            float delta = shSampleDelta(uv, x);
            float r0 = below ? (t.tLow[0] - m) / (t.lowA - m) : (t.tHigh[0] - m) / (t.highA - m);
            float detailOffset = x + delta - (m + r0 * (x - m));
            for (int k = 0; k < 4; k++) {
                float rk = below ? (t.tLow[k] - m) / (t.lowA - m) : (t.tHigh[k] - m) / (t.highA - m);
                float target = m + rk * (x - m) + detailOffset;
                float amount = target < y ? recoverLevels[k] : fillLevels[k];
                float e = y - target;
                float falloff = falloffC + (1.0 - falloffC) * (1.0 - exp(-falloffK * e * e));
                y += falloff * amount * (target - y);
            }

            float gain = shLog2ToLinear(y) / luminance;
            // Re-render through ACR3 and apply the change to the original colour, so that a unit
            // gain is exact and colours outside the ProPhoto [0, 1] range keep their excess.
            vec3 rendered = shRenderProPhoto(uShadowsHighlightsCurve, scene * gain);
            vec3 original = shRenderProPhoto(uShadowsHighlightsCurve, scene);
            return shFromLinear(linearColor + shProPhotoToSrgb(rendered - original));
        }
    """.trimIndent()
}
