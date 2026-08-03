/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 93d00d0f37ad0f65522194209275aab523fabc1c8173df5550ca7e0c94a46613
 * ELF offsets: 0x307f4f7
 * Symbols: unattributed
 */

#version 300 es
precision highp float;

in vec2 TexCoord;
out vec4 FragColor;

uniform sampler2D inputTexture;

void main() {
    FragColor = texture(inputTexture, TexCoord);
}
