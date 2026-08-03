/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 55a11b0d14cc518110a0c76d9f01a7fb64092fddbc6f6996b1c321964bd9d0fe
 * ELF offsets: 0x3087ae6
 * Symbols: noiseMinMax_fragmentShaderSource
 */

#version 300 es
precision highp float;
precision highp int;
precision highp sampler2D;

out vec4 FragColor;

uniform sampler2D uInputTexture0;
uniform vec2 uMargin;
uniform float uSumThreshold;

vec4 fetch(ivec2 p, ivec2 ts) {
    return texelFetch(uInputTexture0, clamp(p, ivec2(0), ts - 1), 0) * 65535.0;
}

void main() {
    ivec2 texSize = textureSize(uInputTexture0, 0);
    ivec2 pos = ivec2(gl_FragCoord.xy) + ivec2(uMargin);

    vec4 tL = fetch(pos + ivec2(-1, -2), texSize);
    vec4 tC = fetch(pos + ivec2( 0, -2), texSize);
    vec4 tR = fetch(pos + ivec2( 1, -2), texSize);
    vec4 mL = fetch(pos + ivec2(-1,  0), texSize);
    vec4 mC = fetch(pos,                 texSize);
    vec4 mR = fetch(pos + ivec2( 1,  0), texSize);
    vec4 bL = fetch(pos + ivec2(-1,  2), texSize);
    vec4 bC = fetch(pos + ivec2( 0,  2), texSize);
    vec4 bR = fetch(pos + ivec2( 1,  2), texSize);

    vec4 n0 = vec4(tL.zw, tC.xy);  // top-left
    vec4 n1 = tC;                   // top-center
    vec4 n2 = vec4(tC.zw, tR.xy);  // top-right
    vec4 n3 = vec4(mL.zw, mC.xy);  // mid-left
    vec4 n4 = vec4(mC.zw, mR.xy);  // mid-right
    vec4 n5 = vec4(bL.zw, bC.xy);  // bot-left
    vec4 n6 = bC;                   // bot-center
    vec4 n7 = vec4(bC.zw, bR.xy);  // bot-right

    vec4 sum = n0 + n1 + n2 + n3 + n4 + n5 + n6 + n7;

    vec4 nMin = min(min(min(n0, n1), min(n2, n3)), min(min(n4, n5), min(n6, n7)));
    vec4 nMax = max(max(max(n0, n1), max(n2, n3)), max(max(n4, n5), max(n6, n7)));

    // Only clamp in dark regions (per channel: sum < threshold)
    bvec4 isDark = lessThan(sum, vec4(uSumThreshold));
    vec4 clamped = clamp(mC, nMin, nMax);
    vec4 result = mix(mC, clamped, vec4(isDark));

    FragColor = result / 65535.0;
}
