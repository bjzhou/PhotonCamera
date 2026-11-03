package com.hinnka.mycamera.raw

/**
 * GLES implementation of MGC 9.6.080 V24 `gcam::SharpenTo16Bit` (libgcastartup.so entry
 * 0x4B77000) together with the former CPU adapters around it. The algorithm notes live in
 * tools/mgc_sharpen. Everything runs in binary32 on the encoded [0, 1] scale; the original's U12
 * quantisation, NEON halving adds and int16 wraparound are not reproduced.
 *
 * The kernel sharpens luma only, on an undecimated binomial pyramid with dilations 1, 2 and 4:
 *
 * 1. `luma`: encoded RGB -> Y (R32F, image size).
 * 2. `level1`: L1 = blur(clamped Y, 1), stored over the image grown by [LEVEL1_PADDING] per side.
 * 3. `level2`: L2 = blur(L1, 2), stored over the image grown by [LEVEL2_PADDING] per side.
 * 4. `output`: L3 = blur(L2, 4), band curves, 5x5 overshoot clamp, and the luma change added to
 *    every channel, which is the original's Y -> RGB with the chroma of the source.
 *
 * Only Y is clamped at the image border (repeat edge); L1 and L2 outside the image are their
 * natural extension, which is why they keep a halo instead of being clamped.
 *
 * [GlesMgcGuidedUpsampleShaders] runs the same pyramid and [kernel] on its guided luma.
 */
internal object GlesMgcSharpenShaders {
    const val LEVEL1_PADDING = 6
    const val LEVEL2_PADDING = 4

    val header = """
        #version 300 es
        precision highp float;
        precision highp int;
        precision highp sampler2D;
        precision highp isampler2D;
        precision highp usampler2D;
    """.trimIndent()

    /** BT.709 luma of the encoded RGB, the Y row of FinishRaw's YUV matrix. */
    val encodedLuma = """
        const vec3 ENCODED_LUMA = vec3(0.2126, 0.7152, 0.0722);
    """.trimIndent()

    /**
     * Pyramid level: binomial [1, 2, 1] / 4 per axis at [dilation], drawn over the image grown by
     * [padding] per side. [source] declares `float source(ivec2 p)` in image coordinates.
     */
    fun levelShader(source: String, dilation: Int, padding: Int) = join(header, source, """
        layout(location = 0) out float oLevel;

        float column(ivec2 p) {
            return 0.25 * (source(p - ivec2(0, $dilation)) + source(p + ivec2(0, $dilation))) + 0.5 * source(p);
        }

        void main() {
            ivec2 p = ivec2(gl_FragCoord.xy) - ivec2($padding);
            oLevel = 0.25 * (column(p - ivec2($dilation, 0)) + column(p + ivec2($dilation, 0))) + 0.5 * column(p);
        }
    """.trimIndent())

    /** Lookup of a level 1 plane drawn by [levelShader] with [LEVEL1_PADDING]. */
    val level1Source = """
        uniform highp sampler2D uLevel1;

        float source(ivec2 p) { return texelFetch(uLevel1, p + ivec2($LEVEL1_PADDING), 0).r; }
    """.trimIndent()

    /**
     * `float sharpenedLuma(ivec2 p)`: band curves on y0 - L1, L1 - L2 and L2 - L3 added to L3, then
     * limited to the 5x5 neighbourhood of y0 widened by the overshoot scales and to [0, 1]. The
     * includer declares `float luma(ivec2 p)`.
     */
    val kernel = """
        uniform highp sampler2D uLevel1;
        uniform highp sampler2D uLevel2;
        // Per band, segments 0..3: start knot, response at the knot and slope.
        uniform float uKnots[12];
        uniform float uValues[12];
        uniform float uSlopes[12];
        uniform float uLowerScale;
        uniform float uUpperScale;

        float level1(ivec2 p) { return texelFetch(uLevel1, p + ivec2($LEVEL1_PADDING), 0).r; }
        float level2(ivec2 p) { return texelFetch(uLevel2, p + ivec2($LEVEL2_PADDING), 0).r; }

        float level2Column(ivec2 p) {
            return 0.25 * (level2(p - ivec2(0, 4)) + level2(p + ivec2(0, 4))) + 0.5 * level2(p);
        }

        float level3(ivec2 p) {
            return 0.25 * (level2Column(p - ivec2(4, 0)) + level2Column(p + ivec2(4, 0)))
                + 0.5 * level2Column(p);
        }

        // Odd, piecewise linear response through the curve points; the last segment extrapolates.
        float bandResponse(int band, float d) {
            float magnitude = abs(d);
            int first = band * 4;
            int segment = magnitude >= uKnots[first + 3] ? 3
                : magnitude >= uKnots[first + 2] ? 2
                : magnitude >= uKnots[first + 1] ? 1 : 0;
            int index = first + segment;
            return sign(d) * (uValues[index] + uSlopes[index] * (magnitude - uKnots[index]));
        }

        float sharpenedLuma(ivec2 p) {
            float y0 = luma(p);
            float y1 = level1(p);
            float y2 = level2(p);
            float y3 = level3(p);
            float sharp = y3 + bandResponse(0, y0 - y1) + bandResponse(1, y1 - y2)
                + bandResponse(2, y2 - y3);
            float lowest = y0;
            float highest = y0;
            for (int j = -2; j <= 2; ++j) {
                for (int i = -2; i <= 2; ++i) {
                    float neighbour = luma(p + ivec2(i, j));
                    lowest = min(lowest, neighbour);
                    highest = max(highest, neighbour);
                }
            }
            sharp = max(lowest * uLowerScale, min(highest * uUpperScale, sharp));
            return clamp(sharp, 0.0, 1.0);
        }
    """.trimIndent()

    private val clampedLuma = """
        uniform highp sampler2D uLuma;
        uniform ivec2 uImageMax;

        float luma(ivec2 p) { return texelFetch(uLuma, clamp(p, ivec2(0), uImageMax), 0).r; }
    """.trimIndent()

    private val clampedLumaSource = """
        $clampedLuma

        float source(ivec2 p) { return luma(p); }
    """.trimIndent()

    private val luma = """
        uniform highp sampler2D uSource;
        layout(location = 0) out float oLuma;

        void main() {
            vec3 rgb = clamp(texelFetch(uSource, ivec2(gl_FragCoord.xy), 0).rgb, 0.0, 1.0);
            oLuma = dot(rgb, ENCODED_LUMA);
        }
    """.trimIndent()

    private val output = """
        uniform highp sampler2D uSource;
        layout(location = 0) out vec4 oColor;

        void main() {
            ivec2 p = ivec2(gl_FragCoord.xy);
            vec3 rgb = clamp(texelFetch(uSource, p, 0).rgb, 0.0, 1.0);
            oColor = vec4(clamp(rgb + (sharpenedLuma(p) - luma(p)), 0.0, 1.0), 1.0);
        }
    """.trimIndent()

    val lumaShader = join(header, encodedLuma, luma)
    val level1Shader = levelShader(clampedLumaSource, 1, LEVEL1_PADDING)
    val level2Shader = levelShader(level1Source, 2, LEVEL2_PADDING)
    val outputShader = join(header, clampedLuma, kernel, output)

    fun join(vararg parts: String) = parts.joinToString("\n\n")
}
