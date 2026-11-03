package com.hinnka.mycamera.raw

/**
 * Bit-exact GLES translation of MGC 9.6.080 V24 `gcam::SharpenTo16BitHalide` (libgcastartup.so
 * entry 0x4B77000) together with the former CPU adapters around it: RGBA16F encoded RGB -> U12
 * YUV before the kernel and U12 RGB -> RGBA16F after it. The independent reference, the algorithm
 * notes and the oracle that checks these shaders against the original AOT live in tools/mgc_sharpen.
 *
 * The kernel sharpens Y only, on an undecimated binomial pyramid with dilations 1, 2 and 4:
 *
 * 1. `luma`: encoded RGB -> U12 Y (R16I, image size).
 * 2. `level1`: L1 = blur(clamped Y, 1), stored over the image grown by [LEVEL1_PADDING] per side.
 * 3. `level2`: L2 = blur(L1, 2), stored over the image grown by [LEVEL2_PADDING] per side.
 * 4. `output`: L3 = blur(L2, 4), band curves, corner gain, 5x5 overshoot clamp and Q12 YUV -> RGB.
 *
 * Only Y is clamped at the image border (repeat edge); L1 and L2 outside the image are their
 * natural extension, which is why they keep a halo instead of being clamped.
 */
internal object GlesMgcSharpenShaders {
    const val LEVEL1_PADDING = 6
    const val LEVEL2_PADDING = 4

    private val header = """
        #version 300 es
        precision highp float;
        precision highp int;
        precision highp sampler2D;
        precision highp isampler2D;
    """.trimIndent()

    private val integerOps = """
        const int LEVEL1_PADDING = $LEVEL1_PADDING;
        const int LEVEL2_PADDING = $LEVEL2_PADDING;

        int s16(int v) { return (v << 16) >> 16; }
        // SHADD / SRHADD .8h; inputs are int16 so the halved sums never wrap.
        int hadd(int a, int b) { return (a + b) >> 1; }
        int rhadd(int a, int b) { return (a + b + 1) >> 1; }
    """.trimIndent()

    // GLSL ES has no `precise`. XOR with a zero uniform forces each product to be rounded to binary32
    // before it is added, as the original's separate FMUL/FADD do.
    private val floatOps = """
        uniform uint uFloatFence;

        float fenced(float value) { return uintBitsToFloat(floatBitsToUint(value) ^ uFloatFence); }

        float unitToU12(float value) { return fenced(clamp(value, 0.0, 1.0) * 4095.0); }

        // One row of the FinishRaw U12 matrix, rounded half to even and clamped to +-4095.
        int u12Row(float r, float g, float b, float m0, float m1, float m2) {
            float partial = fenced(fenced(r * m0) + fenced(g * m1));
            return clamp(int(roundEven(partial + fenced(b * m2))), -4095, 4095);
        }
    """.trimIndent()

    private val luma = """
        uniform highp sampler2D uSource;
        layout(location = 0) out int oLuma;

        void main() {
            vec4 color = texelFetch(uSource, ivec2(gl_FragCoord.xy), 0);
            oLuma = u12Row(unitToU12(color.r), unitToU12(color.g), unitToU12(color.b),
                0.2125999927520752, 0.7152000069618225, 0.07219959795475006);
        }
    """.trimIndent()

    private val level1 = """
        uniform highp isampler2D uLuma;
        uniform ivec2 uImageMax;
        layout(location = 0) out int oLevel;

        int luma(ivec2 p) { return texelFetch(uLuma, clamp(p, ivec2(0), uImageMax), 0).r; }

        int column(ivec2 p) {
            return rhadd(hadd(luma(p - ivec2(0, 1)), luma(p + ivec2(0, 1))), luma(p));
        }

        void main() {
            ivec2 p = ivec2(gl_FragCoord.xy) - ivec2(LEVEL1_PADDING);
            oLevel = hadd(rhadd(column(p - ivec2(1, 0)), column(p + ivec2(1, 0))), column(p));
        }
    """.trimIndent()

    private val level2 = """
        uniform highp isampler2D uLevel1;
        layout(location = 0) out int oLevel;

        int level1(ivec2 p) { return texelFetch(uLevel1, p + ivec2(LEVEL1_PADDING), 0).r; }

        int column(ivec2 p) {
            return rhadd(hadd(level1(p - ivec2(0, 2)), level1(p + ivec2(0, 2))), level1(p));
        }

        void main() {
            ivec2 p = ivec2(gl_FragCoord.xy) - ivec2(LEVEL2_PADDING);
            oLevel = hadd(rhadd(column(p - ivec2(2, 0)), column(p + ivec2(2, 0))), column(p));
        }
    """.trimIndent()

    private val output = """
        uniform highp sampler2D uSource;
        uniform highp isampler2D uLuma;
        uniform highp isampler2D uLevel1;
        uniform highp isampler2D uLevel2;
        uniform ivec2 uImageMax;
        // Per band: knots 1..3 (U12), then four segment slopes (Q8) and intercepts (U12).
        uniform int uKnots[9];
        uniform int uSlopes[12];
        uniform int uIntercepts[12];
        // 0 for a 1x1 image, whose radial term is NaN in the original and zeroes every band.
        uniform int uRadialValid;
        uniform ivec2 uCenter;
        uniform float uInverseMaxRadius2;
        uniform float uCorner[3];
        uniform float uLowerScale;
        uniform float uUpperScale;
        layout(location = 0) out vec4 oColor;

        int luma(ivec2 p) { return texelFetch(uLuma, clamp(p, ivec2(0), uImageMax), 0).r; }
        int level1(ivec2 p) { return texelFetch(uLevel1, p + ivec2(LEVEL1_PADDING), 0).r; }
        int level2(ivec2 p) { return texelFetch(uLevel2, p + ivec2(LEVEL2_PADDING), 0).r; }

        int column(ivec2 p) {
            return rhadd(hadd(level2(p - ivec2(0, 4)), level2(p + ivec2(0, 4))), level2(p));
        }

        // Segment by |d| (int16 abs: -32768 stays negative), slope on the signed d, mirrored intercept.
        int curve(int band, int d) {
            int magnitude = s16(abs(d));
            int knot = band * 3;
            int segment = magnitude >= uKnots[knot + 2] ? 3
                : magnitude >= uKnots[knot + 1] ? 2
                : magnitude >= uKnots[knot] ? 1 : 0;
            int index = band * 4 + segment;
            int scaled = clamp((uSlopes[index] * d) >> 8, -32768, 32767);
            int intercept = d < 0 ? s16(-uIntercepts[index]) : uIntercepts[index];
            return s16(scaled + intercept);
        }

        // FCVTZS to int32 (truncate, saturate) narrowed to int16.
        int truncateS16(float value) {
            if (value >= 2147483648.0) return -1;
            if (value <= -2147483648.0) return 0;
            return s16(int(value));
        }

        int bandTerm(int band, int d, float radius2) {
            int shaped = curve(band, d);
            if (uRadialValid == 0) return 0;
            float gain = fenced(radius2 * uCorner[band]) + 1.0;
            return truncateS16(fenced(gain * float(shaped)));
        }

        int overshootBound(int value, float scale) {
            return s16(int(clamp(float(value) * scale, -32768.0, 32767.0)));
        }

        // Exact binary16 value of RNE(v / 4095), the former float division followed by an RNE half
        // conversion, so the attachment write does not depend on the driver's float -> half rounding.
        float u12ToUnit(int v) {
            if (v == 0) return 0.0;
            int shift = 12 - findMSB(v);
            if ((v << shift) >= 8190) shift -= 1;
            int numerator = v << (shift + 10);
            int quotient = numerator / 4095;
            if (2 * (numerator - quotient * 4095) > 4095) quotient += 1;
            return float(quotient) * uintBitsToFloat(uint(117 - shift) << 23);
        }

        void main() {
            ivec2 p = ivec2(gl_FragCoord.xy);
            int y0 = texelFetch(uLuma, p, 0).r;
            int y1 = level1(p);
            int y2 = level2(p);
            int y3 = hadd(rhadd(column(p - ivec2(4, 0)), column(p + ivec2(4, 0))), column(p));

            float dx = float(p.x - uCenter.x);
            float dy = float(p.y - uCenter.y);
            float radius2 = fenced(fenced(dy * dy) + fenced(dx * dx)) * uInverseMaxRadius2;
            int sharp = s16(y3 + bandTerm(0, s16(y0 - y1), radius2)
                + bandTerm(1, s16(y1 - y2), radius2) + bandTerm(2, s16(y2 - y3), radius2));

            int lowest = y0;
            int highest = y0;
            for (int j = -2; j <= 2; ++j) {
                for (int i = -2; i <= 2; ++i) {
                    int neighbour = luma(p + ivec2(i, j));
                    lowest = min(lowest, neighbour);
                    highest = max(highest, neighbour);
                }
            }
            sharp = max(overshootBound(lowest, uLowerScale),
                min(overshootBound(highest, uUpperScale), sharp));
            sharp = clamp(sharp, 0, 4095);

            vec4 color = texelFetch(uSource, p, 0);
            float r = unitToU12(color.r);
            float g = unitToU12(color.g);
            float b = unitToU12(color.b);
            int u = u12Row(r, g, b, -0.16245023906230927, -0.5464943051338196, 0.7089447379112244);
            int v = u12Row(r, g, b, 0.9999967217445374, -0.9083024859428406, -0.09169333428144455);
            int red = clamp(sharp + ((3225 * v + 2048) >> 12), 0, 4095);
            int green = clamp(sharp + ((-959 * v + -541 * u + 2048) >> 12), 0, 4095);
            int blue = clamp(sharp + ((5360 * u + 2048) >> 12), 0, 4095);
            oColor = vec4(u12ToUnit(red), u12ToUnit(green), u12ToUnit(blue), 1.0);
        }
    """.trimIndent()

    val lumaShader = join(header, floatOps, luma)
    val level1Shader = join(header, integerOps, level1)
    val level2Shader = join(header, integerOps, level2)
    val outputShader = join(header, integerOps, floatOps, output)

    private fun join(vararg parts: String) = parts.joinToString("\n\n")
}
