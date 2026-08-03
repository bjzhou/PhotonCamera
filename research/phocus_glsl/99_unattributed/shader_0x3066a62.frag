/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: a0b9040c8836f53fb25c010f6c687550f122906977f9d0c82ba3bb5f2d63c253
 * ELF offsets: 0x3066a62
 * Symbols: fragmentShaderSource
 */

#version 300 es
precision highp float;
precision highp sampler2D;
in vec2 TexCoord;
out vec4 FragColor;

uniform sampler2D textureSampler;
vec3 LinearToGamma(vec3 c, float g) {
    return pow(c, vec3(1.0 / g));
}
void main() {
    vec4 texColor = texture(textureSampler, TexCoord);
    FragColor = texColor;
}
