/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 40ac286da16f404b179d003f86ec7776fd5ab941355fe543a4ea6852cf2f1edd
 * ELF offsets: 0x307e06c
 * Symbols: unattributed
 */

#version 300 es
precision highp float;
precision highp sampler2D;
out vec4 FragColor;
uniform sampler2D uInputTexture0;

void main() {
    ivec2 sz     = textureSize(uInputTexture0, 0);
    ivec2 p      = ivec2(gl_FragCoord.xy);
    vec4  center = texelFetch(uInputTexture0, p, 0);
    // Centre guard: non-edge pixels always pass through (CPU: "in(x,y) &&")
    if (center.r >= 0.5) { FragColor = center; return; }
    // Count non-edge neighbours (value 1.0).
    // Slots mirror CPU ErodeMask exactly: (-1,-1) appears twice, (+1,-1) absent.
    float sum = 0.0;
    sum += texelFetch(uInputTexture0, clamp(p+ivec2( 0,-1), ivec2(0), sz-1), 0).r; // (0,-1)
    sum += texelFetch(uInputTexture0, clamp(p+ivec2( 0, 1), ivec2(0), sz-1), 0).r; // (0,+1)
    sum += texelFetch(uInputTexture0, clamp(p+ivec2(-1, 0), ivec2(0), sz-1), 0).r; // (-1,0)
    sum += texelFetch(uInputTexture0, clamp(p+ivec2( 1, 0), ivec2(0), sz-1), 0).r; // (+1,0)
    sum += texelFetch(uInputTexture0, clamp(p+ivec2(-1,-1), ivec2(0), sz-1), 0).r; // (-1,-1)
    sum += texelFetch(uInputTexture0, clamp(p+ivec2(-1, 1), ivec2(0), sz-1), 0).r; // (-1,+1)
    sum += texelFetch(uInputTexture0, clamp(p+ivec2(-1,-1), ivec2(0), sz-1), 0).r; // (-1,-1) duplicate (CPU bug)
    sum += texelFetch(uInputTexture0, clamp(p+ivec2( 1, 1), ivec2(0), sz-1), 0).r; // (+1,+1)
    // CPU: edge-neighbour count > 2 && < 5  ↔  non-edge sum > 3 && < 6
    FragColor = (sum < 6.0 && sum > 3.0) ? vec4(1.0) : center;
}
