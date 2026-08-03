/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 6f90e80f6193d57e5ee7d79a3beb75aa77d22320d0ecdea771c7580ea2a3cb29
 * ELF offsets: 0x3065982
 * Symbols: unattributed
 */

#version 300 es
precision highp float;
precision highp sampler2D;
out vec4 FragColor;
uniform sampler2D uInputTexture0;

void main() {
    vec4 res = texelFetch(uInputTexture0, ivec2(gl_FragCoord.xy), 0);
    FragColor = (res.a <= 0.0) ? vec4(0.0, 0.0, 0.0, 1.0)
                               : vec4(res.rgb / res.a, 1.0);
}
