/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 931e3e990f6bc5b1c5054dc46aa339c104ed60393908c8d56fee3d564f7ab898
 * ELF offsets: 0x308338f
 * Symbols: unattributed
 */

#version 300 es
in vec4 aPosition;
in vec2 aTextureCoord;
out vec2 vTextureCoord;
void main() {
    gl_Position = aPosition;
    vTextureCoord = vec2(aTextureCoord.x,1.0f- aTextureCoord.y);
}
