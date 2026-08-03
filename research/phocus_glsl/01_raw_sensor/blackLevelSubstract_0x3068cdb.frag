/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 7181e8fe4ab1bebbe1039474ace74f997cc0ca1ee20e6e7aaec7ef86a4deb6ac
 * ELF offsets: 0x3068cdb
 * Symbols: blackLevelSubstract_fragmentShaderSource
 */

#version 300 es
precision highp float;
precision highp sampler2D;
out vec4 FragColor;

uniform sampler2D uInputTexture0;
uniform vec2 uMargin;
uniform float uOffset;

void main() {
    vec2 srcPos = gl_FragCoord.xy + uMargin;
    vec4 inValue = texelFetch(uInputTexture0, ivec2(srcPos), 0);
    vec4 result = inValue * 65535.0 - uOffset;
    result = result / 65535.0;

    FragColor = clamp(result, 0.0, 1.0);
}
