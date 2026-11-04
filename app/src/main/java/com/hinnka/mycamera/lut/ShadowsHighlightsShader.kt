package com.hinnka.mycamera.lut

import android.opengl.GLES30
import kotlin.math.abs

/**
 * Local Laplacian highlights / shadows.
 *
 * The operator works on the Laplacian decomposition of the log2 luminance instead of a tone curve
 * on the pixel value:
 *
 * ```
 * level = log2(flare + Y)                       // Y = luminance of the linear pixel
 * base1 = neighbourhood mean at 1/8 of the output
 * base2 = neighbourhood mean at 1/16
 * base3 = neighbourhood mean at 1/32
 * detail = level - base1                        // finer than 1/8: never touched
 * band1 = base1 - base2
 * band2 = base2 - base3
 * ```
 *
 * Amounts are functions of the pixel's own level; the blurred levels only shape the fill band and
 * the black/fill gates. Taking an amount from a blurred field makes the gain ramp over that
 * field's blur radius, so across a strong edge the adjustment steps from the subject's value to
 * the neighbour's within ~1/32 of the frame: the "half pale / half grey" split along a silhouette.
 * Pixel-level amounts are monotone pointwise maps, so no amount can introduce an edge, and the
 * only spatial term is the dark-side fill, which is gated to pixels that are themselves dark.
 *
 * The luminance change is applied as a gain on linear RGB, so hue and saturation are preserved.
 * [ToneBaseGl] renders and filters the three base levels; hosts only need to bind them and set
 * `uToneBaseOnly` while rendering the pyramid's first level.
 */
object ShadowsHighlightsShader {
    /** Texture units used by [ToneBaseGl.bind] for the three log2-luminance base levels. */
    val TONE_BASE_TEXTURE_UNITS = intArrayOf(9, 10, 11)

    /** True when [applyShadowsHighlightsLinear] does any work. */
    fun isActive(highlights: Float, shadows: Float): Boolean =
        abs(highlights) >= ACTIVE_THRESHOLD || abs(shadows) >= ACTIVE_THRESHOLD

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

    /** Matches `isActive`. */
    private const val ACTIVE_THRESHOLD = 0.0005f

    val GLSL = """
        uniform sampler2D uToneBase1;
        uniform sampler2D uToneBase2;
        uniform sampler2D uToneBase3;
        uniform sampler2D uToneStats;

        const float SH_FLARE = 1.0 / 4096.0;
        const float SH_SHADOW_BAND_SIGMA_1 = 0.4;
        const float SH_SHADOW_BAND_SIGMA_2 = 0.7;
        const float SH_SHADOW_KNEE = -2.8;
        const float SH_SHADOW_WIDTH = 1.9;
        const float SH_HIGHLIGHT_KNEE = -1.6;
        const float SH_HIGHLIGHT_WIDTH = 1.2;
        // The knee width sets how far the lift reaches, the scale sets its maximum slope. Both
        // stay below 1.0 so the composed map keeps headroom for the band terms and never inverts.
        const float SH_SHADOW_SCALE = 0.9;
        const float SH_HIGHLIGHT_SCALE = 0.95;
        const float SH_BLACK_LEVEL = -8.0;
        const float SH_BLACK_FADE = 2.0;
        // Band fill only runs where the pixel itself is dark; a coarse mean cannot separate a
        // dark subject from a bright neighbour, and letting the fill follow it draws a halo.
        const float SH_FILL_GATE_LOW = -6.0;
        const float SH_FILL_GATE_HIGH = -3.5;
        // The thresholds above are tuned for a frame whose /16-base maximum (a robust p99.99)
        // sits here. [ToneBaseGl]'s statistics shift them down for darker frames, so a low-key
        // image still has a working highlight range; the black point comes from the frame's own
        // dark end instead of a fixed -8.
        const float SH_REFERENCE_HIGH = -0.42;
        const float SH_BLACK_FLOOR = -4.0;
        const float SH_MIN_GAIN = 0.0625;
        const float SH_MAX_GAIN = 16.0;

        float shLuminance(vec3 linearColor) {
            return dot(max(linearColor, vec3(0.0)), vec3(0.2126, 0.7152, 0.0722));
        }

        float shLogLuminance(vec3 linearColor) {
            return log2(SH_FLARE + shLuminance(linearColor));
        }

        float shKnee(float distance, float width) {
            return width * (1.0 - exp(-max(distance, 0.0) / width));
        }

        // Local Laplacian band remap for the fill side: only deviations darker than the coarser
        // level are filled, and the excess over sigma follows the slider. The rational form is
        // smooth at sigma (no threshold contour) and its slope stays inside [0, |amount|], so the
        // composed map can never invert. Highlights deliberately have no band term: compressing
        // the /8../32 structure of a lit subject flattens skin shading into visible patches
        // ("dirty" colour), while a gain on the smooth local base keeps the shading intact.
        float shShadowBand(float band, float amount, float sigma) {
            float magnitude = max(-band, 0.0);
            return amount * magnitude * magnitude / (magnitude + sigma);
        }

        // 4-tap joint-bilateral upsample of a base level, guided by the pixel's own log
        // luminance. A plain bilinear fetch mixes both sides of a strong edge, so the base - and
        // every band derived from it - carries the neighbour's value for the width of the coarse
        // texel. The range weight keeps only the texels on the pixel's own side. Range 0.5 stop
        // and the +0.001 floor follow the reference mask implementation.
        const float SH_UPSAMPLE_RANGE = 0.5;

        float shSampleBase(sampler2D base, vec2 uv, float level) {
            ivec2 size = textureSize(base, 0);
            vec2 position = clamp(uv, vec2(0.0), vec2(1.0)) * vec2(size) - 0.5;
            vec2 cell = floor(position);
            vec2 f = position - cell;
            ivec2 i0 = clamp(ivec2(cell), ivec2(0), size - 1);
            ivec2 i1 = clamp(ivec2(cell) + 1, ivec2(0), size - 1);
            vec4 b = vec4(
                texelFetch(base, i0, 0).r,
                texelFetch(base, ivec2(i1.x, i0.y), 0).r,
                texelFetch(base, ivec2(i0.x, i1.y), 0).r,
                texelFetch(base, i1, 0).r
            );
            vec4 d = (b - level) / SH_UPSAMPLE_RANGE;
            vec4 bilinear = vec4(
                (1.0 - f.x) * (1.0 - f.y),
                f.x * (1.0 - f.y),
                (1.0 - f.x) * f.y,
                f.x * f.y
            );
            vec4 weight = bilinear * (exp(-0.5 * d * d) + 0.001);
            return dot(weight, b) / dot(weight, vec4(1.0));
        }

        /**
         * Adjusts [linearColor]. [uv] is the output-space coordinate of the pixel, which is the
         * parameterisation of the [ToneBaseGl] pyramid.
         */
        vec3 applyShadowsHighlightsLinear(vec3 linearColor, vec2 uv) {
            float highlights = clamp(uHighlights, -1.0, 1.0);
            float shadows = clamp(uShadows, -1.0, 1.0);
            if (abs(highlights) < 0.0005 && abs(shadows) < 0.0005) {
                return linearColor;
            }

            float luminance = shLuminance(linearColor);
            float level = log2(SH_FLARE + luminance);
            float base1 = shSampleBase(uToneBase1, uv, level);
            float base2 = shSampleBase(uToneBase2, uv, level);
            float base3 = shSampleBase(uToneBase3, uv, level);

            // Image-relative calibration: a 1x1 reduction of the /16 base gives the log-luminance
            // low, high and mean. Everything below is then placed relative to that mean instead of
            // at fixed stops, and the black point starts at the image's own dark end.
            vec3 stats = texelFetch(uToneStats, ivec2(0), 0).rgb;
            bool statsValid = stats.y > stats.x && stats.y > -11.0;
            // Only darker-than-reference frames shift the knees; a brighter frame keeps the
            // tuned positions so ordinary images render exactly as before.
            float shift = statsValid ? min(stats.y - SH_REFERENCE_HIGH, 0.0) : 0.0;
            float highlightKnee = SH_HIGHLIGHT_KNEE + shift;
            float shadowKnee = SH_SHADOW_KNEE + shift;
            float blackLevel = statsValid
                ? clamp(stats.x, SH_BLACK_LEVEL, SH_BLACK_FLOOR)
                : SH_BLACK_LEVEL;
            float fillLow = SH_FILL_GATE_LOW + shift;
            float fillHigh = SH_FILL_GATE_HIGH + shift;

            // Every amount below is a function of the pixel's own level only. A blurred field
            // cannot be used for an amount: it ramps over its own blur radius, so across a strong
            // edge the gain steps from the subject's value to the neighbour's over ~1/32 of the
            // frame, which is exactly the "half pale, half grey" split along a silhouette. The
            // measured halo of a /32 base at a 3.5 stop step edge is +47% of the adjustment; with
            // pixel-level amounts it is 0 by construction.
            //
            // Black protection: the fill fades out where the pixel is near black, so shadow lift
            // cannot raise the black level. Darkening shadows is not gated: it can only lower the
            // black level, and gating it would invert the slope where the gate rises faster than
            // the band.
            float blackGate = smoothstep(blackLevel, blackLevel + SH_BLACK_FADE, level);
            float shadowGate = shadows > 0.0 ? blackGate : 1.0;
            float fillGate = smoothstep(fillLow, fillHigh, level);

            float local = shShadowBand(base1 - base2, shadows * fillGate, SH_SHADOW_BAND_SIGMA_1)
                + shShadowBand(base2 - base3, shadows * fillGate, SH_SHADOW_BAND_SIGMA_2);
            float tonal =
                SH_HIGHLIGHT_SCALE * highlights * shKnee(level - highlightKnee, SH_HIGHLIGHT_WIDTH)
                + SH_SHADOW_SCALE * shadows * shadowGate * shKnee(shadowKnee - level, SH_SHADOW_WIDTH);

            if (luminance <= 0.0) {
                return linearColor;
            }
            float adjusted = exp2(level + tonal + local) - SH_FLARE;
            float gain = clamp(adjusted / luminance, SH_MIN_GAIN, SH_MAX_GAIN);
            return linearColor * gain;
        }
    """.trimIndent()
}
