package com.hinnka.mycamera.processor

import com.hinnka.mycamera.processor.GlesMgcGreenDemosaicShaders.PLANE_PADDING

/**
 * Estimates chromaticity on the Bayer-quad grid from Spatial's calibrated CFA or Sabre's
 * co-sited merged RGB.
 *
 * Both separable passes place the four phases at the same spatial centre. A clipped
 * quad is excluded as a unit where nearby quads provide enough observations. The
 * resulting chromaticity supplies samples for which the narrow demosaic stencil has
 * weak colour support. Evidence of a sustained colour edge or line retains the
 * original reconstruction. Luminance comes from the original reconstruction.
 */
internal object GlesMgcRawChromaReconstructionShaders {
    private val footprint = """
        // Gaussian sigma 2 in RAW pixels, evaluated at offsets 2k ± 0.5 for the two
        // phases. Each column is normalized independently about the same quad centre.
        const vec2 PHASE_WEIGHT[7] = vec2[7](
            vec2(0.0020298717, 0.0090972540),
            vec2(0.0317525365, 0.0863123430),
            vec2(0.1827232316, 0.3012596786),
            vec2(0.3868250844, 0.3868250844),
            vec2(0.3012596786, 0.1827232316),
            vec2(0.0863123430, 0.0317525365),
            vec2(0.0090972540, 0.0020298717)
        );

        int mirrorQuad(int index, int extent) {
            int period = 2 * extent;
            int lifted = index < 0 ? index + period * ((period - 1 - index) / period) : index;
            int folded = lifted % period;
            return folded < extent ? folded : period - 1 - folded;
        }
    """.trimIndent()

    private const val lumaWeights = "vec3(1742.0, 5859.0, 591.0) * (1.0 / 8192.0)"

    val sabreQuads = """
        #version 310 es
        precision highp float;
        precision highp int;
        uniform highp sampler2D uAccumulated;
        uniform ivec2 uRawSize;
        uniform ivec2 uRedSite;
        uniform vec3 uSaturationThreshold;
        layout(location = 0) out vec4 oQuadRgb;

        vec3 rgbAt(ivec2 p) {
            return texelFetch(uAccumulated, min(p, uRawSize - 1), 0).rgb;
        }

        void main() {
            ivec2 p = 2 * ivec2(gl_FragCoord.xy) + uRedSite;
            vec3 topLeft = rgbAt(p);
            vec3 topRight = rgbAt(p + ivec2(1, 0));
            vec3 bottomLeft = rgbAt(p + ivec2(0, 1));
            vec3 bottomRight = rgbAt(p + 1);
            vec3 peak = max(max(topLeft, topRight), max(bottomLeft, bottomRight));
            bool unclipped = all(lessThan(peak, uSaturationThreshold));
            // Using the same samples for every channel preserves neutral detail at any CFA phase.
            vec3 mean = 0.25 * (topLeft + topRight + bottomLeft + bottomRight);
            oQuadRgb = vec4(mean, unclipped ? 1.0 : 0.0);
        }
    """.trimIndent()

    val horizontal = horizontalShader(coSitedRgb = false)
    val sabreHorizontal = horizontalShader(coSitedRgb = true)

    private fun horizontalShader(coSitedRgb: Boolean): String = """
        #version 310 es
        precision highp float;
        precision highp int;
        uniform ivec2 uRawSize;
        ${if (coSitedRgb) {
            "uniform highp sampler2D uQuadRgb;"
        } else {
            "uniform highp isampler2D uConverted;\n        uniform ivec4 uSaturationThreshold;"
        }}
        layout(location = 0) out vec4 oAll;
        layout(location = 1) out vec4 oValid;
        layout(location = 2) out vec4 oSupport;

        ${footprint.prependIndent("        ").trimStart()}

        void main() {
            ivec2 q = ivec2(gl_FragCoord.xy);
            vec4 allSum = vec4(0.0);
            vec4 validSum = vec4(0.0);
            vec4 validWeight = vec4(0.0);
            for (int k = 0; k < 7; ++k) {
                int x = mirrorQuad(q.x + k - 3, uRawSize.x / 2);
                ${if (coSitedRgb) {
                    """
                    vec4 quad = texelFetch(uQuadRgb, ivec2(x, q.y), 0);
                    vec4 weights = vec4(0.5 * (PHASE_WEIGHT[k].x + PHASE_WEIGHT[k].y));
                    vec4 signal = quad.rggb;
                    bool unclipped = quad.a > 0.5;
                    """.trimIndent()
                } else {
                    """
                    ivec2 p = 2 * ivec2(x, q.y) + ivec2($PLANE_PADDING);
                    ivec4 cfa = ivec4(
                        texelFetch(uConverted, p, 0).r,
                        texelFetch(uConverted, p + ivec2(1, 0), 0).r,
                        texelFetch(uConverted, p + ivec2(0, 1), 0).r,
                        texelFetch(uConverted, p + ivec2(1, 1), 0).r
                    );
                    vec4 weights = PHASE_WEIGHT[k].xyxy;
                    vec4 signal = max(vec4(cfa), 0.0) * (1.0 / 16384.0);
                    bool unclipped = all(lessThan(cfa, uSaturationThreshold));
                    """.trimIndent()
                }.prependIndent("                ").trimStart()}
                allSum += weights * signal;
                if (unclipped) {
                    validSum += weights * signal;
                    validWeight += weights;
                }
            }
            oAll = allSum;
            oValid = validSum;
            oSupport = validWeight;
        }
    """.trimIndent()

    val vertical = verticalShader(coSitedRgb = false)
    val sabreVertical = verticalShader(coSitedRgb = true)

    private fun verticalShader(coSitedRgb: Boolean): String = """
        #version 310 es
        precision highp float;
        precision highp int;
        uniform highp sampler2D uHorizontalAll;
        uniform highp sampler2D uHorizontalValid;
        uniform highp sampler2D uHorizontalSupport;
        uniform ivec2 uQuadSize;
        layout(location = 0) out vec4 oColor;

        ${footprint.prependIndent("        ").trimStart()}

        void main() {
            ivec2 q = ivec2(gl_FragCoord.xy);
            vec4 allSum = vec4(0.0);
            vec4 validSum = vec4(0.0);
            vec4 support = vec4(0.0);
            for (int k = 0; k < 7; ++k) {
                ivec2 p = ivec2(q.x, mirrorQuad(q.y + k - 3, uQuadSize.y));
                vec4 weights = ${if (coSitedRgb) {
                    "vec4(0.5 * (PHASE_WEIGHT[k].x + PHASE_WEIGHT[k].y))"
                } else {
                    "PHASE_WEIGHT[k].xxyy"
                }};
                allSum += weights * texelFetch(uHorizontalAll, p, 0);
                validSum += weights * texelFetch(uHorizontalValid, p, 0);
                support += weights * texelFetch(uHorizontalSupport, p, 0);
            }
            // When the unclipped neighbourhood is sparse, its colour estimate lacks
            // support. Transition continuously to the estimate using the whole footprint.
            vec4 validAmount = clamp((support - 0.25) / 0.4, 0.0, 1.0);
            vec4 phase = mix(allSum, validSum / max(support, 1.0e-6), validAmount);
            ${if (coSitedRgb) "phase = max(phase, 0.0);" else ""}
            oColor = vec4(phase.r, 0.5 * (phase.g + phase.b), phase.a, 0.0);
        }
    """.trimIndent()

    val classify = """
        #version 310 es
        precision highp float;
        precision highp int;
        uniform highp sampler2D uColor;
        uniform ivec2 uQuadSize;
        layout(location = 0) out vec4 oChroma;

        const vec3 LUMA = $lumaWeights;
        const ivec2 DIRECTION[4] = ivec2[4](
            ivec2(2, 0), ivec2(2, 2), ivec2(0, 2), ivec2(-2, 2)
        );

        vec3 chromaticity(ivec2 coord) {
            ivec2 p = clamp(coord, ivec2(0), uQuadSize - ivec2(1));
            vec3 rgb = texelFetch(uColor, p, 0).rgb;
            float y = dot(rgb, LUMA);
            return y > 1.0e-6 ? rgb / y : vec3(1.0);
        }

        float colorDistance(vec3 a, vec3 b) {
            vec3 delta = abs(a - b);
            return max(max(delta.r, delta.g), delta.b);
        }

        void main() {
            ivec2 q = ivec2(gl_FragCoord.xy);
            vec3 centre = chromaticity(q);
            vec3 negative[4];
            vec3 positive[4];
            float evidence = 0.0;
            for (int i = 0; i < 4; ++i) {
                ivec2 d = DIRECTION[i];
                negative[i] = chromaticity(q - d);
                positive[i] = chromaticity(q + d);
                float sideDrift = max(
                    colorDistance(negative[i], chromaticity(q - 2 * d)),
                    colorDistance(positive[i], chromaticity(q + 2 * d))
                );
                // A colour step is supported by a consistent colour on each side.
                evidence = max(evidence, colorDistance(negative[i], positive[i]) - 2.5 * sideDrift);
            }
            for (int i = 0; i < 4; ++i) {
                vec3 deltaNegative = centre - negative[i];
                vec3 deltaPositive = centre - positive[i];
                if (dot(deltaNegative, deltaPositive) <= 0.0) continue;
                int tangent = (i + 2) % 4;
                float crossLine = min(
                    colorDistance(centre, negative[i]),
                    colorDistance(centre, positive[i])
                );
                float alongLine = max(
                    colorDistance(centre, negative[tangent]),
                    colorDistance(centre, positive[tangent])
                );
                // A thin coloured line has the same contrast polarity on both sides
                // and a stable colour along its tangent.
                evidence = max(evidence, 1.7 * crossLine - 2.5 * alongLine);
            }
            oChroma = vec4(centre, evidence);
        }
    """.trimIndent()

    val reconstruct = """
        vec3 reconstructSourceChroma(vec3 rgb, vec4 guide) {
            const vec3 luma = $lumaWeights;
            float y = dot(rgb, luma);
            float guideY = dot(guide.rgb, luma);
            // Filtering and half-float storage can change the guide's unit luminance.
            vec3 reconstructed = guide.rgb * (y / max(guideY, 1.0e-6));
            float retainOriginal = smoothstep(0.05, 0.15, guide.a);
            return mix(reconstructed, rgb, retainOriginal);
        }
    """.trimIndent()
}
