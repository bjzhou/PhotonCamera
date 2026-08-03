/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 2eb6d3e8b25809b4772134c99864f4d403f8e3b612ed55cf51f6735b01cb1c0b
 * ELF offsets: 0x3070da7
 * Symbols: unattributed
 */

#version 300 es
precision highp float;
precision highp sampler2D;
out vec4 FragColor;
uniform sampler2D uInputTexture0;  // texProcess (RGBX at processRes)
uniform sampler2D uInputTexture1;  // JFA inpainting result (process-space coords)
void main() {
    ivec2 p      = ivec2(gl_FragCoord.xy);
    vec4  seed   = texelFetch(uInputTexture1, p, 0);
    ivec2 srcSz  = textureSize(uInputTexture0, 0);
    vec3  color;
    if (seed.a > 0.5) {
        // Nearest non-fringe pixel in process-space — look up directly (no offset needed)
        ivec2 sc = ivec2(int(seed.r), int(seed.g));
        color = texelFetch(uInputTexture0, clamp(sc, ivec2(0), srcSz - 1), 0).rgb;
    } else {
        // No valid neighbour: keep the original process pixel so that ReplaceColor
        // in fcfr_colorRecovery receives lr == src and produces no net change.
        color = texelFetch(uInputTexture0, clamp(p, ivec2(0), srcSz - 1), 0).rgb;
    }
    FragColor = vec4(color, 1.0);
}
