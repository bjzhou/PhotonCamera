/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: b20405eac1c785d1a0359002535ad92b2338a72100b12fd83c800123eb490e83
 * ELF offsets: 0x303edb0
 * Symbols: orientation_rgb270_fragmentShaderSource
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

    ivec2 srcPixel = ivec2(uWidth - gid.y, gid.x + uMargin.y);

    vec4 inColor = texelFetch(uInputTexture0, srcPixel, 0);

    FragColor = vec4(inColor.rgb, inColor.a);
}
