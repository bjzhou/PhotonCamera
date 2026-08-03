/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 8b5fee15a4bd109c8dd4d558c7eea81e9fb81539cdd38698c736ae55f8644956
 * ELF offsets: 0x30451f3
 * Symbols: vertexShaderSource
 */

#version 300 es
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec2 aTexCoord;

uniform mat4 uProjectionMatrix;
uniform mat4 uModelViewMatrix;

out vec2 TexCoord;

void main() {
    gl_Position = uProjectionMatrix * uModelViewMatrix * vec4(aPos, 1.0);
    TexCoord = aTexCoord;
}
