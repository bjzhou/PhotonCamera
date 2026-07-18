/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 2fe79b91d74441a5a0d8daeb34f87e445ac128112c56008290fceab12d1311ab
 * ELF offsets: 0x2ff9752
 * Symbols: orientation_270_fragmentShaderSource
 */

#version 300 es
precision highp float;
precision highp sampler2D;
out vec4 FragColor;

uniform sampler2D uInputTexture0;
uniform ivec2 uMargin;
uniform int uWidth;  // Source Bayer Width limit
uniform int uHeight; // Source Bayer Height limit

float getComponent(vec4 v, int index) {
    if (index == 0) return v.r;
    if (index == 1) return v.g;
    if (index == 2) return v.b;
    return v.a;
}

void main() {
    ivec2 gid = ivec2(gl_FragCoord.xy);
    int out_bx_start = gid.x * 4;
    int out_by = gid.y;

    vec4 outColor;

    for (int i = 0; i < 4; ++i) {
        int curr_out_bx = out_bx_start + i;

        int src_bx = uWidth - out_by;
        int src_by = curr_out_bx + uMargin.y;

        int src_tex_x = src_bx >> 2;
        int src_comp  = src_bx & 3;
        int src_tex_y = src_by;

        vec4 srcPixel = texelFetch(uInputTexture0, ivec2(src_tex_x, src_tex_y), 0);

        if (i == 0) outColor.r = getComponent(srcPixel, src_comp);
        else if (i == 1) outColor.g = getComponent(srcPixel, src_comp);
        else if (i == 2) outColor.b = getComponent(srcPixel, src_comp);
        else outColor.a = getComponent(srcPixel, src_comp);
    }
    FragColor = outColor;
}
