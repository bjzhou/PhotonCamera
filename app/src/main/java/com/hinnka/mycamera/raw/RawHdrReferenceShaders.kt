package com.hinnka.mycamera.raw

/**
 * Produces the engine-independent RAW HDR reference.
 *
 * Input is the undenoised, demosaicked camera RGB texture. The pass performs only the base
 * camera/profile color work, applies the DCP HueSatMap when present, applies the exact DNG
 * BaselineExposure, applies ACR3 completely through 0.09, blends to an unnormalized linear gain
 * through 0.18, and keeps that gain for midtones and extended highlights before converting to
 * linear sRGB.
 */
object RawHdrReferenceShaders {
    val FRAGMENT_SHADER = """
        #version 300 es
        precision highp float;
        precision highp sampler3D;

        in vec2 vTexCoord;
        out vec4 fragColor;

        uniform sampler2D uInputTexture;
        uniform sampler2D uCurveTexture;
        uniform sampler3D uLinearDcpHueSatMap;
        uniform mat3 uCameraToProfile;
        uniform mat3 uProfileToLinearSrgb;
        uniform vec3 uCameraWhite;
        uniform float uExposureGain;
        uniform float uCurveSize;
        uniform bool uCurveEnabled;
        uniform int uLinearDcpHueSatEnabled;
        uniform ivec3 uLinearDcpHueSatDivisions;
        uniform int uLinearDcpHueSatEncoding;

        ${DcpHueSatMapGl.SHADER_FUNCTIONS}

        float sampleAcr3Curve(float value) {
            if (!uCurveEnabled || uCurveSize <= 1.0) {
                return value;
            }
            float clampedValue = clamp(value, 0.0, 1.0);
            float coordX = clampedValue * ((uCurveSize - 1.0) / uCurveSize) +
                (0.5 / uCurveSize);
            return texture(uCurveTexture, vec2(coordX, 0.5)).r;
        }

        float applyAcr3LinearToneValue(float value) {
            const float ACR3_BLEND_START = 0.09;
            const float LINEAR_GAIN_START = 0.18;
            float safeValue = max(value, 0.0);
            float curveAtAnchor = sampleAcr3Curve(LINEAR_GAIN_START);
            float linearGain = curveAtAnchor / LINEAR_GAIN_START;
            float linearValue = safeValue * linearGain;
            if (safeValue <= ACR3_BLEND_START) {
                return sampleAcr3Curve(safeValue);
            }
            if (safeValue >= LINEAR_GAIN_START) {
                return linearValue;
            }
            float blend = smoothstep(ACR3_BLEND_START, LINEAR_GAIN_START, safeValue);
            return mix(sampleAcr3Curve(safeValue), linearValue, blend);
        }

        void toneRgb(inout float maxValue, inout float midValue, inout float minValue) {
            float oldMax = maxValue;
            float oldMid = midValue;
            float oldMin = minValue;
            maxValue = applyAcr3LinearToneValue(oldMax);
            minValue = applyAcr3LinearToneValue(oldMin);
            if (abs(oldMax - oldMin) < 1e-6) {
                midValue = minValue;
            } else {
                midValue = minValue +
                    (maxValue - minValue) * (oldMid - oldMin) / (oldMax - oldMin);
            }
        }

        vec3 applyHdrReferenceCurve(vec3 color) {
            color = max(color, vec3(0.0));
            float r = color.r;
            float g = color.g;
            float b = color.b;

            if (r >= g) {
                if (g > b) {
                    toneRgb(r, g, b);
                } else if (b > r) {
                    toneRgb(b, r, g);
                } else if (b > g) {
                    toneRgb(r, b, g);
                } else {
                    r = applyAcr3LinearToneValue(r);
                    g = applyAcr3LinearToneValue(g);
                    b = g;
                }
            } else {
                if (r >= b) {
                    toneRgb(g, r, b);
                } else if (b > g) {
                    toneRgb(b, g, r);
                } else {
                    toneRgb(g, b, r);
                }
            }
            return vec3(r, g, b);
        }

        void main() {
            vec3 cameraRgb = max(texture(uInputTexture, vTexCoord).rgb, vec3(0.0));
            cameraRgb = min(cameraRgb, max(uCameraWhite, vec3(0.001)));

            vec3 profileRgb = uCameraToProfile * cameraRgb;
            if (uLinearDcpHueSatEnabled != 0) {
                profileRgb = dngApplyHueSatMap(
                    profileRgb,
                    uLinearDcpHueSatMap,
                    uLinearDcpHueSatDivisions,
                    uLinearDcpHueSatEncoding,
                    true
                );
            }

            profileRgb *= uExposureGain;
            profileRgb = applyHdrReferenceCurve(profileRgb);
            vec3 linearSrgb = uProfileToLinearSrgb * profileRgb;
            fragColor = vec4(max(linearSrgb, vec3(0.0)), 1.0);
        }
    """.trimIndent()
}
