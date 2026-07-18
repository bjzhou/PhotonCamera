/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: b379afb58ea22e4d0d0f4fa880dc1ee053d527d3a82fdb86881459b5a8aee522
 * ELF offsets: 0x307d298
 * Symbols: orientation_rgb90_fragmentShaderSource
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

    ivec2 srcPixel = ivec2(gid.y + uMargin.x, uHeight - gid.x);

    vec4 inColor = texelFetch(uInputTexture0, srcPixel, 0);

    FragColor = vec4(inColor.rgb, inColor.a);
}
