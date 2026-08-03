/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 1441f909272ff89a1ba21e4def13bdbf502cc17466443f8d592bd9476ed07270
 * ELF offsets: 0x3074cae
 * Symbols: unattributed
 */

#version 300 es
precision highp float;
precision highp sampler2D;
out vec4 FragColor;
uniform sampler2D uInputTexture0;   // half-res inpainted colors

void main() {
    ivec2 p    = ivec2(gl_FragCoord.xy);  // full-res output coord
    ivec2 inSz = textureSize(uInputTexture0, 0);
    // Bilinear 2× upscale: output pixel p maps to half-res continuous position p*0.5
    float inX = float(p.x) * 0.5;
    float inY = float(p.y) * 0.5;
    int x0 = int(floor(inX)); int x1 = min(x0 + 1, inSz.x - 1);
    int y0 = int(floor(inY)); int y1 = min(y0 + 1, inSz.y - 1);
    float fx = inX - float(x0);
    float fy = inY - float(y0);
    vec4 s00 = texelFetch(uInputTexture0, ivec2(x0, y0), 0);
    vec4 s10 = texelFetch(uInputTexture0, ivec2(x1, y0), 0);
    vec4 s01 = texelFetch(uInputTexture0, ivec2(x0, y1), 0);
    vec4 s11 = texelFetch(uInputTexture0, ivec2(x1, y1), 0);
    FragColor = mix(mix(s00, s10, fx), mix(s01, s11, fx), fy);
}
