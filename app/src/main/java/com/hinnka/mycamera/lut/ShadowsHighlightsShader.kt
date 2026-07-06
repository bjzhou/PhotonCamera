package com.hinnka.mycamera.lut

import android.opengl.GLES30

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

    val GLSL = """
        const float SH_LAB_EPSILON = 216.0 / 24389.0;
        const float SH_LAB_KAPPA = 24389.0 / 27.0;
        const float SH_LOW_APPROX = 0.000001;
        const float SH_COMPRESS = 0.5;
        const float SH_HIGHLIGHTS_COLOR_ADJUSTMENT = 0.6;
        const float SH_SHADOWS_COLOR_ADJUSTMENT = 1.0;
        const float SH_RANGE_SIGMA = 0.105;
        const float SH_RANGE_SIGMA2 = SH_RANGE_SIGMA * SH_RANGE_SIGMA;

        float shSanitizeFloat(float value) {
            if (value != value) return 0.0;
            return value;
        }

        vec3 shSanitizeColor(vec3 color) {
            return vec3(
                shSanitizeFloat(color.r),
                shSanitizeFloat(color.g),
                shSanitizeFloat(color.b)
            );
        }

        float shSign(float value) {
            return value < 0.0 ? -1.0 : 1.0;
        }

        float shSignedInv(float value, float signSource) {
            float inv = abs(value) > SH_LOW_APPROX ? 1.0 / abs(value) : 1.0 / SH_LOW_APPROX;
            return signSource < 0.0 ? -inv : inv;
        }

        float shColorCorrection(float adjustment, float signSource) {
            return (clamp(adjustment, 0.0, 1.0) - 0.5) * shSign(signSource) + 0.5;
        }

        vec3 shLabF(vec3 value) {
            vec3 linearPart = (SH_LAB_KAPPA * value + vec3(16.0)) / 116.0;
            vec3 cubePart = pow(max(value, vec3(0.0)), vec3(1.0 / 3.0));
            return mix(linearPart, cubePart, step(vec3(SH_LAB_EPSILON), value));
        }

        vec3 shLabFInv(vec3 value) {
            vec3 cubePart = value * value * value;
            vec3 linearPart = (116.0 * value - vec3(16.0)) / SH_LAB_KAPPA;
            return mix(linearPart, cubePart, step(vec3(0.20689655172413796), value));
        }

        vec3 shXyzToLab(vec3 xyz) {
            vec3 f = shLabF(xyz / vec3(0.9642, 1.0, 0.8249));
            return vec3(116.0 * f.y - 16.0, 500.0 * (f.x - f.y), 200.0 * (f.y - f.z));
        }

        vec3 shLabToXyz(vec3 lab) {
            float fy = (lab.x + 16.0) / 116.0;
            vec3 f = vec3(lab.y / 500.0 + fy, fy, fy - lab.z / 200.0);
            return vec3(0.9642, 1.0, 0.8249) * shLabFInv(f);
        }

        vec3 shRgbToLabScaled(vec3 color) {
            vec3 lab = shXyzToLab(shRgbToXyz(color));
            return lab / vec3(100.0, 128.0, 128.0);
        }

        vec3 shLabScaledToRgb(vec3 labScaled) {
            vec3 lab = labScaled * vec3(100.0, 128.0, 128.0);
            return shXyzToRgb(shLabToXyz(lab));
        }

        float shTonalRangeWeight(float sampleL, float centerL) {
            float delta = sampleL - centerL;
            float bilateral = exp(-(delta * delta) / max(2.0 * SH_RANGE_SIGMA2, SH_LOW_APPROX));
            float edgeStop = 1.0 - smoothstep(0.12, 0.24, abs(delta));
            return bilateral * edgeStop;
        }

        void shAddBaseSample(vec2 uv, float centerL, float spatialWeight, inout float sum, inout float weightSum) {
            float sampleL = shRgbToLabScaled(sampleToneSource(clamp(uv, vec2(0.0), vec2(1.0)))).x;
            float weight = spatialWeight * shTonalRangeWeight(sampleL, centerL);
            sum += sampleL * weight;
            weightSum += weight;
        }

        vec2 shPixelOffset(float x, float y) {
            return vec2(x * uTexelSize.x, y * uTexelSize.y);
        }

        void shAddBaseSamplePair(
            vec2 uv,
            vec2 offset,
            float centerL,
            float spatialWeight,
            inout float sum,
            inout float weightSum
        ) {
            shAddBaseSample(uv + offset, centerL, spatialWeight, sum, weightSum);
            shAddBaseSample(uv - offset, centerL, spatialWeight, sum, weightSum);
        }

        float shSampleBaseL(vec2 uv, vec3 centerLab) {
            float centerL = centerLab.x;
            float sum = centerL * 0.48;
            float weightSum = 0.48;

            shAddBaseSamplePair(uv, shPixelOffset(2.5, 1.5), centerL, 0.11, sum, weightSum);
            shAddBaseSamplePair(uv, shPixelOffset(-1.5, 3.5), centerL, 0.11, sum, weightSum);
            shAddBaseSamplePair(uv, shPixelOffset(4.5, -2.5), centerL, 0.10, sum, weightSum);
            shAddBaseSamplePair(uv, shPixelOffset(-4.5, -3.5), centerL, 0.10, sum, weightSum);

            shAddBaseSamplePair(uv, shPixelOffset(7.5, 4.5), centerL, 0.065, sum, weightSum);
            shAddBaseSamplePair(uv, shPixelOffset(-6.5, 8.5), centerL, 0.06, sum, weightSum);
            shAddBaseSamplePair(uv, shPixelOffset(10.5, -7.5), centerL, 0.055, sum, weightSum);

            shAddBaseSamplePair(uv, shPixelOffset(15.5, 11.5), centerL, 0.035, sum, weightSum);
            shAddBaseSamplePair(uv, shPixelOffset(-18.5, 5.5), centerL, 0.03, sum, weightSum);
            shAddBaseSamplePair(uv, shPixelOffset(22.5, -13.5), centerL, 0.026, sum, weightSum);

            return sum / max(weightSum, 0.0001);
        }

        float shOverlayBlendAmount(float opacity, float transform) {
            float opacity2 = min(opacity * opacity, 4.0);
            float safeTransform = clamp(transform, 0.0, 1.0);
            return opacity2 * safeTransform;
        }

        vec3 shOverlay(vec3 a, vec3 b, float opacity, float transform, float ccorrect) {
            float optrans = shOverlayBlendAmount(opacity, transform);
            if (optrans <= 0.0) {
                return a;
            }

            float la = a.x;
            float lb = (b.x - 0.5) * shSign(opacity) * shSign(1.0 - la) + 0.5;
            lb = clamp(lb, 0.0, 1.0);
            float lref = shSignedInv(la, la);
            float href = shSignedInv(1.0 - la, 1.0 - la);

            float overL = la > 0.5
                ? 1.0 - (1.0 - 2.0 * (la - 0.5)) * (1.0 - lb)
                : 2.0 * la * lb;
            float deltaL = overL - la;
            float nextL = la + deltaL * optrans;
            float anchorDelta = lb - la;
            if (deltaL * anchorDelta > 0.0) {
                nextL = deltaL < 0.0
                    ? max(nextL, min(la, lb))
                    : min(nextL, max(la, lb));
            }
            a.x = clamp(nextL, 0.0, 1.0);

            float chromaFactor = a.x * lref * ccorrect + (1.0 - a.x) * href * (1.0 - ccorrect);
            float chromaTrans = abs(deltaL) > SH_LOW_APPROX
                ? clamp((a.x - la) / deltaL, 0.0, 1.0)
                : clamp(optrans, 0.0, 1.0);
            a.y = a.y * (1.0 - chromaTrans) + (a.y + b.y) * chromaFactor * chromaTrans;
            a.z = a.z * (1.0 - chromaTrans) + (a.z + b.z) * chromaFactor * chromaTrans;
            return a;
        }

        vec3 applyShadowsHighlights(vec3 inputColor, vec2 uv) {
            float highlights = 2.0 * clamp(uHighlights, -1.0, 1.0);
            float shadows = 2.0 * clamp(uShadows, -1.0, 1.0);
            if (abs(highlights) < 0.001 && abs(shadows) < 0.001) {
                return inputColor;
            }

            vec3 lab = shRgbToLabScaled(inputColor);
            float baseL = clamp(shSampleBaseL(uv, lab), 0.0, 1.0);
            vec3 maskLab = vec3(1.0 - baseL, 0.0, 0.0);
            float compressDenom = max(1.0 - SH_COMPRESS, 0.0001);

            float highlightsXform = clamp(1.0 - maskLab.x / compressDenom, 0.0, 1.0);
            float highlightsCcorrect = shColorCorrection(SH_HIGHLIGHTS_COLOR_ADJUSTMENT, -highlights);
            lab = shOverlay(lab, maskLab, -highlights, highlightsXform, 1.0 - highlightsCcorrect);

            float shadowsXform = clamp(maskLab.x / compressDenom - SH_COMPRESS / compressDenom, 0.0, 1.0);
            float shadowsCcorrect = shColorCorrection(SH_SHADOWS_COLOR_ADJUSTMENT, shadows);
            lab = shOverlay(lab, maskLab, shadows, shadowsXform, shadowsCcorrect);

            return shSanitizeColor(shLabScaledToRgb(lab));
        }
    """.trimIndent()
}
