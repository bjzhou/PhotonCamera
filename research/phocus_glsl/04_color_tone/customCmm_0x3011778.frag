/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 1d2a52b7d24ec0b6d2d2b4100a2c467d18b50a73cd46a5570e77fd86788fe7a7
 * ELF offsets: 0x3011778
 * Symbols: customCmm_fragmentShaderSource
 */

#version 300 es
precision highp float;

uniform sampler2D uInputTexture0;
uniform mat3 uMat;           // Color conversion matrix (same layout as FromSRgb)
uniform ivec2 uMargin;       // rect.Offset() - srcRect.Offset()
uniform float uScaleIn;
uniform float uScaleOut;
uniform float uGammaIn;
uniform float uGammaOut;
uniform int uTransferIn;     // TransferCurve enum: 0=Linear, 1=Gamma, 2=sRGB
uniform int uTransferOut;

out vec4 FragColor;

// --- sRGB transfer functions (same as FromSRgbShader.h + Metal sRgb2linear/linear2sRgb) ---

float sRgbToLinear(float v) {
    if (v <= 0.04045) return v / 12.92;
    return pow((v + 0.055) / 1.055, 2.4);
}

float linearToSRgb(float v) {
    if (v <= 0.0031308) return v * 12.92;
    return pow(v, 1.0 / 2.4) * 1.055 - 0.055;
}

// --- ConvertFloat — mirrors Metal ConvertFloat() in FromSRgb.metal:122-154 ---

vec3 ConvertFloat(vec3 value) {
    // Step 1: scaleIn
    value *= uScaleIn;

    // Step 2: transferIn (linearize)
    if (uTransferIn == 1) {
        value = pow(value, vec3(uGammaIn));
    } else if (uTransferIn == 2) {
        value.r = sRgbToLinear(value.r);
        value.g = sRgbToLinear(value.g);
        value.b = sRgbToLinear(value.b);
    }
    // uTransferIn == 0 (Linear): passthrough

    // Step 3: matrix
    value = uMat * value;

    // Step 4: scaleOut
    value *= uScaleOut;

    // Step 5: transferOut (encode)
    if (uTransferOut == 1) {
        value = pow(value, vec3(1.0 / uGammaOut));
    } else if (uTransferOut == 2) {
        value.r = linearToSRgb(value.r);
        value.g = linearToSRgb(value.g);
        value.b = linearToSRgb(value.b);
    }
    // uTransferOut == 0 (Linear): passthrough

    return value;
}

// --- main ---
// Android uses RgbX (GL_RGBA16F, [0,1] range) — no PixelCast/65535 needed.
// Alpha channel is preserved unchanged (same as Metal kernel).

void main() {
    ivec2 coord = ivec2(gl_FragCoord.xy) + uMargin;
    vec4 pix = texelFetch(uInputTexture0, coord, 0);
    vec3 converted = ConvertFloat(pix.rgb);
    FragColor = vec4(converted, pix.a);
}
