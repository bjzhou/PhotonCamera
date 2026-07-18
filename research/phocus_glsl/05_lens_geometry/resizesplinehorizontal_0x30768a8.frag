/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: b89be0128b31698dc01785802e45d89a1313909f8f829e4c5e008788151cdaaa
 * ELF offsets: 0x30768a8
 * Symbols: resizesplinehorizontal_fragmentShaderSource
 */

#version 300 es
precision highp float;

in vec2 TexCoord;
out vec4 FragColor;

uniform sampler2D uInputTexture0;
uniform ivec2 uInputSize;
uniform ivec2 uOutputSize;
uniform ivec2 uMargin;
uniform ivec2 uJumpOffset;
uniform ivec2 uCoefOffset;
uniform int uCurrentLineJump;
uniform int uVIndex;
uniform int uLineInCounter;
uniform int uLineOutCounter;

// Conservative version for mobile GPU compatibility.
// Avoids in-place mutation patterns that may be misoptimized on some Mali/PowerVR drivers.
vec4 CalcCoefAramini23(float t) {
    float one = 1.0;
    float two = 2.0;
    float three = 3.0;

    float tm1 = t - one;
    float t2 = t * t;

    float k0 = two / three;
    float k1 = tm1 * t;
    float base23 = k0 * k1;

    float a = base23 * t;
    float b = base23 * tm1;

    float c0 = two * t;
    float c1 = c0 - three;
    float c = c1 * t2;

    float w0 = -b;
    float w1 = one - a + c;
    float w2 = b - c;
    float w3 = a;

    return vec4(w0, w1, w2, w3);
}

void main() {
    ivec2 outputPos = ivec2(floor(gl_FragCoord.xy));

    if (outputPos.x < 0 || outputPos.y < 0 ||
        outputPos.x >= uOutputSize.x || outputPos.y >= uOutputSize.y) {
        FragColor = vec4(0.0, 0.0, 0.0, 1.0);
        return;
    }

    ivec2 inputPos = outputPos + uMargin;
    inputPos = clamp(inputPos, ivec2(0), uInputSize - 1);

    float inputW = float(uInputSize.x);
    float outputW = float(uOutputSize.x);
    float outX = float(outputPos.x);

    float srcX = (inputW * (outX + 0.5)) / outputW - 0.5;

    float srcXFloor = floor(srcX);
    int base = int(srcXFloor);
    float offset = srcX - srcXFloor;

    // Safety clamp to reduce risk of bad intermediate values on buggy drivers.
    offset = clamp(offset, 0.0, 1.0);

    vec4 coefs = CalcCoefAramini23(offset);

    ivec2 p0;
    ivec2 p1;
    ivec2 p2;
    ivec2 p3;

    if (base <= 0) {
        p0 = ivec2(0, inputPos.y);
        p1 = ivec2(0, inputPos.y);
        p2 = ivec2(0, inputPos.y);
        p3 = ivec2(1, inputPos.y);
    } else if (base == 1) {
        p0 = ivec2(0, inputPos.y);
        p1 = ivec2(1, inputPos.y);
        p2 = ivec2(2, inputPos.y);
        p3 = ivec2(3, inputPos.y);
    } else if (base >= uInputSize.x - 1) {
        p0 = ivec2(uInputSize.x - 3, inputPos.y);
        p1 = ivec2(uInputSize.x - 2, inputPos.y);
        p2 = ivec2(uInputSize.x - 1, inputPos.y);
        p3 = ivec2(uInputSize.x - 1, inputPos.y);
    } else {
        p0 = ivec2(base - 1, inputPos.y);
        p1 = ivec2(base,     inputPos.y);
        p2 = ivec2(base + 1, inputPos.y);
        p3 = ivec2(base + 2, inputPos.y);
    }

    p0 = clamp(p0, ivec2(0), uInputSize - 1);
    p1 = clamp(p1, ivec2(0), uInputSize - 1);
    p2 = clamp(p2, ivec2(0), uInputSize - 1);
    p3 = clamp(p3, ivec2(0), uInputSize - 1);

    vec2 invSize = 1.0 / vec2(float(uInputSize.x), float(uInputSize.y));

    vec2 uv0 = (vec2(float(p0.x), float(p0.y)) + vec2(0.5, 0.5)) * invSize;
    vec2 uv1 = (vec2(float(p1.x), float(p1.y)) + vec2(0.5, 0.5)) * invSize;
    vec2 uv2 = (vec2(float(p2.x), float(p2.y)) + vec2(0.5, 0.5)) * invSize;
    vec2 uv3 = (vec2(float(p3.x), float(p3.y)) + vec2(0.5, 0.5)) * invSize;

    vec4 pix0 = texture(uInputTexture0, uv0);
    vec4 pix1 = texture(uInputTexture0, uv1);
    vec4 pix2 = texture(uInputTexture0, uv2);
    vec4 pix3 = texture(uInputTexture0, uv3);

    vec3 result = vec3(0.0, 0.0, 0.0);
    result += pix0.rgb * coefs.x;
    result += pix1.rgb * coefs.y;
    result += pix2.rgb * coefs.z;
    result += pix3.rgb * coefs.w;

    // Robustness guard for mobile GPUs / half-float intermediates.
    result = clamp(result, 0.0, 1.0);

    FragColor = vec4(result, 1.0);
}
