package com.hinnka.mycamera.lut

/**
 * Multi-pass clarity shaders shared by still-image processing and realtime preview.
 *
 * The pipeline mirrors the structure recovered in research/phocus_glsl/06_detail_texture:
 * build a Gaussian luminance pyramid, blend its Laplacian detail bands, then apply the
 * processed/reference luminance ratio to RGB so hue and saturation remain stable.
 */
internal object ClarityShaders {
    val DOWNSAMPLE = """
        #version 300 es
        precision highp float;

        in vec2 vTexCoord;
        out vec4 fragColor;

        uniform sampler2D uInputTexture;
        uniform vec2 uInputTexelSize;
        uniform bool uInputIsLuma;

        const vec3 LUMA = vec3(0.2126, 0.7152, 0.0722);

        float sampleLuma(vec2 uv) {
            vec3 value = max(texture(uInputTexture, uv).rgb, vec3(0.0));
            return uInputIsLuma ? value.r : dot(value, LUMA);
        }

        // 13-tap Gaussian downsample. Each successive level doubles the effective radius.
        float downsampleLuma(vec2 uv) {
            vec2 ps = uInputTexelSize;
            vec2 pl = 2.0 * ps;
            vec2 ns = -ps;
            vec2 nl = -pl;

            float a = sampleLuma(uv + vec2(nl.x, pl.y));
            float b = sampleLuma(uv + vec2(0.0, pl.y));
            float c = sampleLuma(uv + vec2(pl.x, pl.y));
            float d = sampleLuma(uv + vec2(nl.x, 0.0));
            float e = sampleLuma(uv);
            float f = sampleLuma(uv + vec2(pl.x, 0.0));
            float g = sampleLuma(uv + vec2(nl.x, nl.y));
            float h = sampleLuma(uv + vec2(0.0, nl.y));
            float i = sampleLuma(uv + vec2(pl.x, nl.y));
            float j = sampleLuma(uv + vec2(ns.x, ps.y));
            float k = sampleLuma(uv + vec2(ps.x, ps.y));
            float l = sampleLuma(uv + vec2(ns.x, ns.y));
            float m = sampleLuma(uv + vec2(ps.x, ns.y));

            float result = (a + c + g + i) * 0.03125;
            result += (b + d + f + h) * 0.0625;
            result += (e + j + k + l + m) * 0.125;
            return result;
        }

        void main() {
            float luma = downsampleLuma(vTexCoord);
            fragColor = vec4(luma, luma, luma, 1.0);
        }
    """.trimIndent()

    val COMPOSITE = """
        #version 300 es
        precision highp float;

        in vec2 vTexCoord;
        out vec4 fragColor;

        uniform sampler2D uInputTexture;
        uniform sampler2D uFineLumaTexture;
        uniform sampler2D uMediumLumaTexture;
        uniform sampler2D uCoarseLumaTexture;
        uniform float uClarity;

        const vec3 LUMA = vec3(0.2126, 0.7152, 0.0722);

        void main() {
            vec4 source = texture(uInputTexture, vTexCoord);
            float referenceLuma = dot(max(source.rgb, vec3(0.0)), LUMA);
            float fineLuma = texture(uFineLumaTexture, vTexCoord).r;
            float mediumLuma = texture(uMediumLumaTexture, vTexCoord).r;
            float coarseLuma = texture(uCoarseLumaTexture, vTexCoord).r;

            // Reconstruct selected Laplacian bands. Clarity deliberately favors the medium
            // scales over the finest scale so it changes local contrast without acting as a
            // conventional sharpening pass.
            float detail = (referenceLuma - fineLuma) * 0.12;
            detail += (fineLuma - mediumLuma) * 0.56;
            detail += (mediumLuma - coarseLuma) * 0.32;

            float shadowProtection = smoothstep(0.02, 0.18, coarseLuma);
            float highlightProtection = 1.0 - smoothstep(0.72, 0.98, coarseLuma);
            float tonalWeight = shadowProtection * highlightProtection;
            float signedGain = uClarity * (uClarity >= 0.0 ? 1.8 : 1.1);
            float processedLuma = max(referenceLuma + detail * signedGain * tonalWeight, 0.0);

            // Same factor-map contract as clarityCreateFinalFactors/clarityCombineFinal:
            // protect zero luminance and bound the ratio before multiplying it into RGB.
            const float epsilon = 1.0 / 65535.0;
            float factor = referenceLuma > 0.00002
                ? clamp((processedLuma + epsilon) / (referenceLuma + epsilon), 0.25, 4.0)
                : 1.0;
            fragColor = vec4(clamp(source.rgb * factor, 0.0, 1.0), source.a);
        }
    """.trimIndent()
}
