package com.hinnka.mycamera.raw

/**
 * GLES implementation of the MGC 9.7.047 V25 guided upsampling chain
 * (`BoxDownsampleS16` 0x4D3686C and `GuidedUpsampleS16To16Bit` 0x4BA6500 in libgcastartup.so)
 * together with the former CPU adapters around it. The algorithm notes live in
 * tools/mgc_guided_upsample. Everything runs in binary32; luma is on the encoded [0, 1] scale. The
 * mathematics of the original is kept, not its fixed-point and evaluation-order rounding.
 *
 * Prepare (full-resolution float RGBA source):
 * 1. `guide`: linear Y in the sqrt-domain guide units sqrt(16383 Y) * 128 (R16I, padded size).
 * 2. `low`: box means of the white-balanced, clamped linear RGB at padded size / scale; their
 *    guide value (R16I) and the colour with the white balance removed again (RGBA16F).
 *
 * Render (low-resolution encoded RGBA16F):
 * 1. `cellFit`: two-level weighted ridge fit Y = a G + b per grid cell (2 x RGBA32UI holding
 *    binary32 bits, cell grid).
 * 2. `horizontal`: cell models interpolated to output columns (2 x RGBA32UI).
 * 3. `guidedY`: vertical interpolation and the two-level blend (R32F, output grown by
 *    [GUIDED_PADDING] per side; the guided luma outside the image is its natural extension).
 * 4. `level1`, `level2`, `output`: the [GlesMgcSharpenShaders] pyramid and kernel on the guided
 *    luma; the chroma is the bilinear upsampling of the low-resolution colour.
 */
internal object GlesMgcGuidedUpsampleShaders {
    const val GUIDED_PADDING = 7

    private val header = GlesMgcSharpenShaders.header

    private val padding = """
        const int GUIDED_PADDING = $GUIDED_PADDING;
    """.trimIndent()

    // Q17 cell coordinate of a full-resolution pixel, u = (x + 0.5) / (2 * scale) - 0.5, and the
    // matching Q16 low-resolution pixel coordinate (x + 0.5) / scale - 0.5. uCellStep = 32768 / scale.
    private val gridOps = """
        uniform int uCellStep;

        // (left cell, Q16 fraction toward the next one)
        ivec2 cellTap(int x) {
            int p = (2 * x + 1) * uCellStep - 65536;
            return ivec2(p >> 17, (p >> 1) & 0xffff);
        }

        ivec2 lowTap(int x) {
            int p = (2 * x + 1) * uCellStep - 32768;
            return ivec2(p >> 16, p & 0xffff);
        }

        float tapFraction(int q16) { return float(q16) * (1.0 / 65536.0); }
    """.trimIndent()

    // -- prepare ----------------------------------------------------------------------------------

    // White balance, clamp to [0, 1] and the Q13 BT.709 luma, whose weights sum to exactly one.
    // The source is replicated beyond its own size into the padding.
    private val linearOps = """
        uniform highp sampler2D uSource;
        uniform ivec2 uSourceMax;
        uniform vec3 uWhiteBalance;

        const vec3 LINEAR_LUMA = vec3(1742.0, 5859.0, 591.0) / 8192.0;

        vec3 balanced(ivec2 p) {
            return clamp(texelFetch(uSource, min(p, uSourceMax), 0).rgb * uWhiteBalance, 0.0, 1.0);
        }

        // SqrtGuide of the Q14 luma: sqrt(16383 Y) * 128, at most 16384.
        int guideValue(float luma) { return int(roundEven(sqrt(luma * 16383.0) * 128.0)); }
    """.trimIndent()

    private val guide = """
        layout(location = 0) out int oGuide;

        void main() {
            oGuide = guideValue(dot(balanced(ivec2(gl_FragCoord.xy)), LINEAR_LUMA));
        }
    """.trimIndent()

    // BoxDownsample of the linear YUV followed by YUV -> RGB is, by linearity, the box mean of the
    // balanced RGB; the low colour is that mean with the white balance removed.
    private val low = """
        uniform int uLog2Scale;
        layout(location = 0) out int oGuide;
        layout(location = 1) out vec4 oColor;

        void main() {
            int scale = 1 << uLog2Scale;
            ivec2 origin = ivec2(gl_FragCoord.xy) * scale;
            vec3 sum = vec3(0.0);
            for (int j = 0; j < scale; ++j) {
                for (int i = 0; i < scale; ++i) sum += balanced(origin + ivec2(i, j));
            }
            vec3 mean = sum / float(scale * scale);
            oGuide = guideValue(dot(mean, LINEAR_LUMA));
            oColor = vec4(mean / uWhiteBalance, 1.0);
        }
    """.trimIndent()

    // -- render -----------------------------------------------------------------------------------

    // Cell (kx, ky) fits Y = a G + b on the 4x4 low-resolution window starting at
    // (2 kx - 1, 2 ky - 1) (clamped), for two levels softly split between min - 1 and max + 1 of the
    // sqrt-domain guide, with tent spatial weights. Each level minimises
    // sum w (a G + b - Y)^2 + EPSILON (a^2 + b^2). The moments are taken about lo (C = G - lo), so the
    // normal equations do not cancel catastrophically; with b = b' - a lo the penalty becomes
    // EPSILON (a^2 + (b' - a lo)^2), which keeps the solution of the uncentred problem.
    private val cellFit = """
        uniform highp isampler2D uLowGuide;
        uniform highp sampler2D uLowSource;
        uniform ivec2 uLowMax;
        uniform ivec2 uCellOrigin;
        layout(location = 0) out uvec4 oCell0;
        layout(location = 1) out uvec4 oCell1;

        const float EPSILON = 1.0e-4;

        float tent(int i) { return i == 0 || i == 3 ? 0.625 : 0.875; }

        void main() {
            ivec2 cell = ivec2(gl_FragCoord.xy) + uCellOrigin;
            ivec2 origin = 2 * cell - ivec2(1);
            float g[16];
            float y[16];
            float lowest = 32767.0;
            float highest = -32768.0;
            for (int r = 0; r < 4; ++r) {
                for (int k = 0; k < 4; ++k) {
                    ivec2 p = clamp(origin + ivec2(k, r), ivec2(0), uLowMax);
                    g[r * 4 + k] = float(texelFetch(uLowGuide, p, 0).r);
                    vec3 rgb = clamp(texelFetch(uLowSource, p, 0).rgb, 0.0, 1.0);
                    y[r * 4 + k] = dot(rgb, ENCODED_LUMA);
                    lowest = min(lowest, g[r * 4 + k]);
                    highest = max(highest, g[r * 4 + k]);
                }
            }
            float lo = lowest - 1.0;
            float hi = highest + 1.0;
            float range = hi - lo;
            vec2 model[2];
            for (int level = 0; level < 2; ++level) {
                float s0 = 0.0;
                float sc = 0.0;
                float scc = 0.0;
                float sy = 0.0;
                float scy = 0.0;
                for (int i = 0; i < 16; ++i) {
                    float c = g[i] - lo;
                    // Level 0 favours the dark end of the window, level 1 the bright end.
                    float t = level == 0 ? (hi - g[i]) / range : c / range;
                    float w = tent(i >> 2) * tent(i & 3) * t;
                    s0 += w;
                    sc += w * c;
                    scc += w * c * c;
                    sy += w * y[i];
                    scy += w * c * y[i];
                }
                float m00 = s0 + EPSILON;
                float m01 = sc - EPSILON * lo;
                float m11 = scc + EPSILON * (1.0 + lo * lo);
                float det = m00 * m11 - m01 * m01;
                float a = (m00 * scy - m01 * sy) / det;
                float centred = (m11 * sy - m01 * scy) / det;
                model[level] = vec2(a, centred - a * lo);
            }
            oCell0 = floatBitsToUint(vec4(lo, hi, model[0]));
            oCell1 = floatBitsToUint(vec4(model[1], 0.0, 0.0));
        }
    """.trimIndent()

    // Row j holds cell row uCellOrigin.y + j interpolated to columns x = i - GUIDED_PADDING.
    private val horizontal = """
        uniform highp usampler2D uCell0;
        uniform highp usampler2D uCell1;
        uniform ivec2 uCellOrigin;
        layout(location = 0) out uvec4 oRow0;
        layout(location = 1) out uvec4 oRow1;

        void main() {
            ivec2 p = ivec2(gl_FragCoord.xy);
            ivec2 tap = cellTap(p.x - GUIDED_PADDING);
            ivec2 left = ivec2(tap.x - uCellOrigin.x, p.y);
            ivec2 right = left + ivec2(1, 0);
            float f = tapFraction(tap.y);
            vec4 row0 = mix(uintBitsToFloat(texelFetch(uCell0, left, 0)),
                uintBitsToFloat(texelFetch(uCell0, right, 0)), f);
            vec2 row1 = mix(uintBitsToFloat(texelFetch(uCell1, left, 0)).xy,
                uintBitsToFloat(texelFetch(uCell1, right, 0)).xy, f);
            oRow0 = floatBitsToUint(row0);
            oRow1 = floatBitsToUint(vec4(row1, 0.0, 0.0));
        }
    """.trimIndent()

    // Vertical interpolation, then
    // Y = (1 - t) (b0 + a0 G) + t (b1 + a1 G), t = clamp((G - lo) / (hi - lo), 0, 1).
    // hi - lo >= 2 in every cell, so the interpolated range never vanishes.
    // Pixel (i, j) is image position (i, j) - GUIDED_PADDING.
    private val guidedY = """
        uniform highp usampler2D uRow0;
        uniform highp usampler2D uRow1;
        uniform highp isampler2D uGuide;
        uniform ivec2 uGuideMax;
        uniform int uCellOriginY;
        layout(location = 0) out float oLuma;

        void main() {
            ivec2 p = ivec2(gl_FragCoord.xy);
            ivec2 image = p - ivec2(GUIDED_PADDING);
            ivec2 tap = cellTap(image.y);
            ivec2 top = ivec2(p.x, tap.x - uCellOriginY);
            ivec2 bottom = top + ivec2(0, 1);
            float f = tapFraction(tap.y);
            // (lo, hi, a0, b0) and (a1, b1)
            vec4 row0 = mix(uintBitsToFloat(texelFetch(uRow0, top, 0)),
                uintBitsToFloat(texelFetch(uRow0, bottom, 0)), f);
            vec2 row1 = mix(uintBitsToFloat(texelFetch(uRow1, top, 0)).xy,
                uintBitsToFloat(texelFetch(uRow1, bottom, 0)).xy, f);

            float guide = float(texelFetch(uGuide, clamp(image, ivec2(0), uGuideMax), 0).r);
            float t = clamp((guide - row0.x) / (row0.y - row0.x), 0.0, 1.0);
            oLuma = mix(row0.w + row0.z * guide, row1.y + row1.x * guide, t);
        }
    """.trimIndent()

    private val guidedLuma = """
        uniform highp sampler2D uLuma;

        float luma(ivec2 p) { return texelFetch(uLuma, p + ivec2(GUIDED_PADDING), 0).r; }
    """.trimIndent()

    private val guidedLumaSource = """
        $guidedLuma

        float source(ivec2 p) { return luma(p); }
    """.trimIndent()

    // The original adds the sharpened Y to the bilinearly upsampled U and V of the clamped low
    // colour; by linearity that is the upsampled colour with its luma replaced.
    private val output = """
        uniform highp sampler2D uLowSource;
        uniform ivec2 uLowMax;
        layout(location = 0) out vec4 oColor;

        vec3 lowColor(int x, int y) {
            return clamp(texelFetch(uLowSource, clamp(ivec2(x, y), ivec2(0), uLowMax), 0).rgb, 0.0, 1.0);
        }

        vec3 upsampled(ivec2 p) {
            ivec2 tx = lowTap(p.x);
            ivec2 ty = lowTap(p.y);
            float fx = tapFraction(tx.y);
            vec3 top = mix(lowColor(tx.x, ty.x), lowColor(tx.x + 1, ty.x), fx);
            vec3 bottom = mix(lowColor(tx.x, ty.x + 1), lowColor(tx.x + 1, ty.x + 1), fx);
            return mix(top, bottom, tapFraction(ty.y));
        }

        void main() {
            ivec2 p = ivec2(gl_FragCoord.xy);
            vec3 rgb = upsampled(p);
            oColor = vec4(clamp(rgb + (sharpenedLuma(p) - dot(rgb, ENCODED_LUMA)), 0.0, 1.0), 1.0);
        }
    """.trimIndent()

    val guideShader = join(header, linearOps, guide)
    val lowShader = join(header, linearOps, low)
    val cellFitShader = join(header, GlesMgcSharpenShaders.encodedLuma, cellFit)
    val horizontalShader = join(header, padding, gridOps, horizontal)
    val guidedYShader = join(header, padding, gridOps, guidedY)
    val level1Shader = GlesMgcSharpenShaders.levelShader(join(padding, guidedLumaSource), 1,
        GlesMgcSharpenShaders.LEVEL1_PADDING)
    val level2Shader = GlesMgcSharpenShaders.levelShader(GlesMgcSharpenShaders.level1Source, 2,
        GlesMgcSharpenShaders.LEVEL2_PADDING)
    val outputShader = join(header, padding, gridOps, GlesMgcSharpenShaders.encodedLuma, guidedLuma,
        GlesMgcSharpenShaders.kernel, output)

    private fun join(vararg parts: String) = GlesMgcSharpenShaders.join(*parts)
}
