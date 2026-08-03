/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 90cc5ac2e908659c19bc8034fda56ad05c823639ae0190a6eea378ee396428b8
 * ELF offsets: 0x30463fa
 * Symbols: hdr_lstar_fragmentShaderSource
 */

#version 300 es
precision highp float;
precision highp sampler2D;
in vec2 TexCoord;
out vec4 FragColor;

uniform sampler2D uInputTexture0;
uniform float uGammaGain;
uniform float uHdrLimitGain;

void main() {
    const float eps = 216.0 / 24389.0;  // kLStarEpsilon
    const float kap = 24389.0 / 27.0;   // kLStarKappa

    vec4 res = texture(uInputTexture0, TexCoord);

    // Apply gamma gain (scale to HDR range)
    res.rgb = res.rgb * uGammaGain;

    // L* space → linear
    vec3 vLo = res.rgb * 100.0 / kap;
    vec3 vHi = pow(max((res.rgb + 0.16) / 1.16, vec3(0.0)), vec3(3.0));

    res.r = res.r <= eps ? vLo.r : vHi.r;
    res.g = res.g <= eps ? vLo.g : vHi.g;
    res.b = res.b <= eps ? vLo.b : vHi.b;

    FragColor = res;
}
