/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 4f0ff853370d74ed985ade5b3f8e5a403962af5789f8eca38a4b97cdc1863fa0
 * ELF offsets: 0x3025a0f
 * Symbols: alignment_fragmentShaderSource
 */

#version 300 es
precision highp float;
precision highp sampler2D;

uniform sampler2D uInputTexture0;
uniform ivec2 uMargin;

out vec4 FragColor;

void main() {
    ivec2 destCoord = ivec2(gl_FragCoord.xy);
    ivec2 srcCoord = destCoord + uMargin;
    FragColor = texelFetch(uInputTexture0, srcCoord, 0);
}
