/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 39b941a0ef0e16ff4cf5231186f633cf3d1a21f5c496012c87ee2fb9073b2528
 * ELF offsets: 0x300594b
 * Symbols: highRes_fragmentShaderSource
 */

#version 300 es
precision highp float;
precision highp sampler2D;

in vec2 TexCoord;
out vec4 FragColor;

uniform sampler2D uInputTexture0;
uniform float uGain;

void main() {
    vec4 pixelColor = texture(uInputTexture0, TexCoord);
    pixelColor.rgb *= uGain;
    FragColor = pixelColor;
}
