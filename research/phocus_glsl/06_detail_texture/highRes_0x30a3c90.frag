/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: d43e6aa98922e4a70817554264c0ec3a782bccc2f7ee86eea4d6b2d01b069610
 * ELF offsets: 0x30a3c90
 * Symbols: highResShader
 */

#version 300 es
precision highp float;
precision highp sampler2D;

in vec2 TexCoord;
out vec4 FragColor;

uniform sampler2D inputTexture;
uniform float gain;

void main() {
    vec4 pixelColor = texture(inputTexture, TexCoord);
    pixelColor.rgb *= gain;
    FragColor = pixelColor;
}
