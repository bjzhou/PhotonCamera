/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 2cabc41351a224550887e53887d0bd2958eeeb6324ec7d02bc6f45ec0e7b30f5
 * ELF offsets: 0x3004aaf
 * Symbols: commonVertexShaderSource
 */

#version 300 es
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec2 aTexCoord;

out vec2 TexCoord;

void main() {
    gl_Position = vec4(aPos, 1.0);
    TexCoord = aTexCoord;
}
