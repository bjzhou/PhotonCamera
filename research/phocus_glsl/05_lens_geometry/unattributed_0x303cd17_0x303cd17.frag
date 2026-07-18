/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 5edd39c1c209941815ef719ebd68a0ad5b9d44e5c6af1634e7dc3d0fbeb2a469
 * ELF offsets: 0x303cd17
 * Symbols: unattributed
 */

#version 300 es
precision highp float;
precision highp sampler2D;
out vec4 FragColor;
uniform sampler2D uInputTexture0;
void main() {
    ivec2 p    = ivec2(gl_FragCoord.xy);
    vec4  seed = texelFetch(uInputTexture0, p, 0);
    if (seed.a < 0.5) {
        // No seed reachable: output large distance so this pixel is never treated as fringe.
        FragColor = vec4(1.0, 1.0, 0.0, 1.0);
        return;
    }
    vec2 me  = vec2(float(p.x) + 0.5, float(p.y) + 0.5);
    vec2 dxy = me - seed.rg;
    // Normalise by 255: dist = sqrt(dxy.x²+dxy.y²) in [0,1] where 1.0 = 255 pixels.
    FragColor = vec4(abs(dxy.x) / 255.0, abs(dxy.y) / 255.0, 0.0, 1.0);
}
