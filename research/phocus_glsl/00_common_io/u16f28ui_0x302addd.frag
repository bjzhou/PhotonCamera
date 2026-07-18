/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: c5c354119ccc00f88f045a9b4300fd2d00e8bfabfeb9e4bb21433cf1bf76cc11
 * ELF offsets: 0x302addd
 * Symbols: u16f28ui_fragmentShaderSource
 */

#version 300 es
precision highp float;
precision highp sampler2D;
out uvec4 FragColor;

uniform sampler2D uInputTexture0;
uniform ivec2 uMargin;

void main() {
    ivec2 texCoord = ivec2(gl_FragCoord.xy) + uMargin;
    vec4 pixel = texelFetch(uInputTexture0, texCoord, 0);
    // float [0,1] → uint [0,255]，clamp 防止越界
    vec3 rgb = clamp(pixel.rgb * 255.0 + 0.5, 0.0, 255.0);
    FragColor = uvec4(uvec3(rgb), 255u);
}
