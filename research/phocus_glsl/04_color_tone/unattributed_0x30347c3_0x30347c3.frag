/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 555706c2932277ee62b250ebd2625afe9c4e80de00db5e77c6dd38e9bdccd000
 * ELF offsets: 0x30347c3
 * Symbols: unattributed
 */

#version 300 es
precision mediump float;
in vec2 vTextureCoord;
out vec4 fragColor;
uniform sampler2D base;


void main() {
    vec3 srgb = texture(base, vTextureCoord).rgb;
    fragColor = vec4(srgb, 1.0);
}
