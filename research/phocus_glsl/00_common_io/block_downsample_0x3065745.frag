/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 0a3908a02d09d48093007d130c8f231301025cfc3890bab1224d325af566ca28
 * ELF offsets: 0x3065745
 * Symbols: block_downsample_fragmentShaderSource
 */

#version 300 es
precision highp float;
precision highp int;
precision highp sampler2D;

out vec4 FragColor;

uniform sampler2D uInputTexture0; // 0..1
uniform int uPreviewScale;

void main() {
    ivec2 gid = ivec2(gl_FragCoord.xy);
    int s = max(uPreviewScale, 1);

    vec4 sum = vec4(0.0);
    for (int dy = 0; dy < s; dy++) {
        for (int dx = 0; dx < s; dx++) {
            sum += texelFetch(uInputTexture0, gid * s + ivec2(dx, dy), 0);
        }
    }
    FragColor = sum / float(s * s);
}
