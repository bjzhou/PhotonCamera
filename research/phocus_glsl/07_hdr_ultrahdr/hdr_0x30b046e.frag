/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 61d96c794a0bb8bb0d588ef4c5b792793971bdcc73cc92994129331f686949c8
 * ELF offsets: 0x30b046e
 * Symbols: hdrShader
 */

#version 300 es
precision highp float;
precision highp sampler2D;
in vec2 TexCoord;
out vec4 FragColor;

uniform sampler2D inputTexture;
uniform float gammaGain;
uniform float hdrLimitGain;

void main() {
    vec4 res = texture(inputTexture, TexCoord);

    res.rgb = res.rgb * gammaGain;

    res.rgb = pow(res.rgb, vec3(2.2));

    res = clamp(res, vec4(0.0), vec4(hdrLimitGain));

    FragColor = res;
}
