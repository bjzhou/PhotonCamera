/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 9071061620f2032c7d385e1156c3d06346385976d258aca5b8ff4506dd916d9d
 * ELF offsets: 0x3061f15
 * Symbols: unattributed
 */

#version 300 es
precision highp float;
precision highp sampler2D;
out vec4 FragColor;
uniform sampler2D uInputTexture0;

void main() {
    ivec2 base  = ivec2(gl_FragCoord.xy) * 2;
    ivec2 srcSz = textureSize(uInputTexture0, 0);
    vec4 a = texelFetch(uInputTexture0, clamp(base+ivec2(0,0), ivec2(0), srcSz-1), 0);
    vec4 b = texelFetch(uInputTexture0, clamp(base+ivec2(1,0), ivec2(0), srcSz-1), 0);
    vec4 c = texelFetch(uInputTexture0, clamp(base+ivec2(0,1), ivec2(0), srcSz-1), 0);
    vec4 d = texelFetch(uInputTexture0, clamp(base+ivec2(1,1), ivec2(0), srcSz-1), 0);
    vec4  sum = a + b + c + d;
    float w   = sum.a;
    FragColor = (w <= 0.0) ? vec4(0.0) : vec4(sum.rgb / w, 1.0);
}
