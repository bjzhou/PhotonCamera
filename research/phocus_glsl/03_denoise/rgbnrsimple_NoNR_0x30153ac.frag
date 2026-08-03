/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 0c10fd81f389dc085b1747e60fd9c8c89771230c59cddaa9e8abd4092f901a70
 * ELF offsets: 0x30153ac
 * Symbols: rgbnrsimple_NoNR_fragmentShaderSource
 */

#version 300 es
precision highp float;
precision highp sampler2D;

in vec2 TexCoord;
out vec4 FragColor;

uniform sampler2D uInputTexture0;
uniform vec2 uImageSize;
uniform float blackOffset;
uniform vec4 compVecThr;
void main() {
    vec4 res = texture(uInputTexture0, TexCoord);
    res.rgb = max(vec3(0.0), res.rgb - blackOffset);
    FragColor = res;
}
