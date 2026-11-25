package com.hinnka.mycamera.raw

/** V24 MeasureMoireS16Halide on the unfiltered Q14 luma plane and the Q8 strength map. */
internal object GlesMgcMeasureMoireShaders {
    const val HALF_HALO = 2
    const val SCORE_HALO = 2 * HALF_HALO + 2

    private val header = """
        #version 300 es
        precision highp float;
        precision highp int;
        precision highp isampler2D;
        precision highp usampler2D;
    """.trimIndent()

    private val lumaWeights = """
        const int NARROW[7] = int[7](1, 6, 21, 32, 21, 6, 1);
        const int WIDE[9] = int[9](6, 13, 21, 29, 32, 29, 21, 13, 6);
    """.trimIndent()

    /** Repeat-edge input; keep both vertical convolutions at the original S16 precision. */
    val blurVerticalShader = join(header, lumaWeights, """
        uniform highp isampler2D uYuv;
        uniform int uMaxY;
        layout(location = 0) out ivec2 oBlurred;

        void main() {
            ivec2 p = ivec2(gl_FragCoord.xy) - ivec2(0, $SCORE_HALO);
            int narrow = 0;
            int wide = 0;
            for (int i = 0; i < 9; ++i) {
                int y = clamp(p.y + i - 4, 0, uMaxY);
                int value = texelFetch(uYuv, ivec2(p.x, y), 0).r;
                wide += WIDE[i] * value;
                if (i >= 1 && i <= 7) {
                    narrow += NARROW[i - 1] * value;
                }
            }
            oBlurred = ivec2(narrow / 88, wide / 170);
        }
    """.trimIndent())

    /** Quantize the difference of the two absolute high-pass responses before downsampling. */
    val scoreShader = join(header, lumaWeights, """
        uniform highp isampler2D uYuv;
        uniform highp isampler2D uBlurred;
        uniform ivec2 uImageMax;
        layout(location = 0) out uint oScore;

        void main() {
            ivec2 p = ivec2(gl_FragCoord.xy) - ivec2($SCORE_HALO, 0);
            int narrow = 0;
            int wide = 0;
            for (int i = 0; i < 9; ++i) {
                int x = clamp(p.x + i - 4, 0, uImageMax.x);
                ivec2 blurred = texelFetch(uBlurred, ivec2(x, p.y), 0).rg;
                wide += WIDE[i] * blurred.g;
                if (i >= 1 && i <= 7) {
                    narrow += NARROW[i - 1] * blurred.r;
                }
            }
            ivec2 q = clamp(p - ivec2(0, $SCORE_HALO), ivec2(0), uImageMax);
            float y = float(texelFetch(uYuv, q, 0).r);
            float narrowResidual = abs(y + float(narrow) * (-0.011363636702299118));
            float wideResidual = abs(y + float(wide) * (-0.0058823530562222));
            float response = (narrowResidual + wideResidual * (-0.699999988079071)) * 1.2763229608535767;
            oScore = uint(clamp(roundEven(response), 0.0, 255.0));
        }
    """.trimIndent())

    /** The vertical and horizontal NEON half-add networks round at different points. */
    private val downsample = """
        uniform highp usampler2D uScore;

        uint vertical(uint a, uint b, uint c, uint d, uint e) {
            uint outer = (a + e) >> 1u;
            uint middle = (outer + c + 1u) >> 1u;
            middle = (middle + c + 1u) >> 1u;
            return (middle + ((b + d + 1u) >> 1u)) >> 1u;
        }

        uint horizontal(uint a, uint b, uint c, uint d, uint e) {
            uint outer = (a + e + 1u) >> 1u;
            uint middle = (outer + c) >> 1u;
            middle = (middle + c) >> 1u;
            return (middle + ((b + d) >> 1u) + 1u) >> 1u;
        }

        uint verticalAt(ivec2 p) {
            return vertical(
                texelFetch(uScore, p + ivec2(0, -2), 0).r,
                texelFetch(uScore, p + ivec2(0, -1), 0).r,
                texelFetch(uScore, p, 0).r,
                texelFetch(uScore, p + ivec2(0, 1), 0).r,
                texelFetch(uScore, p + ivec2(0, 2), 0).r
            );
        }

        uint downsampleAt(ivec2 p) {
            return horizontal(
                verticalAt(p + ivec2(-2, 0)),
                verticalAt(p + ivec2(-1, 0)),
                verticalAt(p),
                verticalAt(p + ivec2(1, 0)),
                verticalAt(p + ivec2(2, 0))
            );
        }
    """.trimIndent()

    val halveScoreShader = join(header, downsample, """
        layout(location = 0) out uint oScore;

        void main() {
            ivec2 p = ivec2(gl_FragCoord.xy) - ivec2($HALF_HALO);
            oScore = downsampleAt(p * 2 + ivec2($SCORE_HALO));
        }
    """.trimIndent())

    val updateStrengthShader = join(header, downsample, """
        uniform highp usampler2D uStrength;
        layout(location = 0) out uvec4 oStrength;

        void main() {
            ivec2 p = ivec2(gl_FragCoord.xy);
            uint value = downsampleAt(p * 2 + ivec2($HALF_HALO));
            uint strengthFloor = uint(clamp(int(value) * 4 - 150, 0, 255)) << 6u;
            oStrength = uvec4(max(texelFetch(uStrength, p, 0).rgb, uvec3(strengthFloor)), 0u);
        }
    """.trimIndent())

    private fun join(vararg parts: String) = parts.joinToString("\n")
}
