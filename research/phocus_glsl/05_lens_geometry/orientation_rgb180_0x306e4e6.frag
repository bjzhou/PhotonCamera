/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 81dae8448e22d2a50d7394fbb542a5d64f9d534f5b32b392979fed8612b174d5
 * ELF offsets: 0x306e4e6
 * Symbols: orientation_rgb180_fragmentShaderSource
 */

#version 300 es
precision highp float;
precision highp sampler2D;
out vec4 FragColor;

uniform sampler2D uInputTexture0;
uniform ivec2 uMargin;
uniform int uWidth;
uniform int uHeight;

void main() {
    ivec2 gid = ivec2(gl_FragCoord.xy);

    ivec2 srcPixel = ivec2(uWidth - gid.x, uHeight - gid.y);

    vec4 inColor = texelFetch(uInputTexture0, srcPixel, 0);

    FragColor = vec4(inColor.rgb, inColor.a);
}
