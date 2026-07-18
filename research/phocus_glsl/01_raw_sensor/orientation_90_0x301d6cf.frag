/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 4802e80060871fd646ac34d63fa30b3779d034e42b559dc1054f76757737e36f
 * ELF offsets: 0x301d6cf
 * Symbols: orientation_90_fragmentShaderSource
 */

#version 300 es
precision highp float;
precision highp sampler2D;
out vec4 FragColor;

uniform sampler2D uInputTexture0;
uniform ivec2 uMargin;
uniform int uWidth;
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

        int src_bx = out_by + uMargin.x;
        int src_by = uHeight - curr_out_bx;

        int src_tex_x = src_bx >> 2; // divide by 4
        int src_comp  = src_bx & 3;  // modulo 4
        int src_tex_y = src_by;

        vec4 srcPixel = texelFetch(uInputTexture0, ivec2(src_tex_x, src_tex_y), 0);

        if (i == 0) outColor.r = getComponent(srcPixel, src_comp);
        else if (i == 1) outColor.g = getComponent(srcPixel, src_comp);
        else if (i == 2) outColor.b = getComponent(srcPixel, src_comp);
        else outColor.a = getComponent(srcPixel, src_comp);
    }
    FragColor = outColor;
}
