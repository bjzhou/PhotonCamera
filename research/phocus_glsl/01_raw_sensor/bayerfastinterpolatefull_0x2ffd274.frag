/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 9d87df9b959daa41f5d8eb526f3af10c4fc082485de9a1b3cfc94a50fb9bd795
 * ELF offsets: 0x2ffd274
 * Symbols: bayerfastinterpolatefull_fragmentShaderSource
 */

#version 300 es
precision highp float;
precision highp sampler2D;

uniform sampler2D uInputTexture0;
uniform vec2 uMargins;
uniform bool uBlurGreen;

uniform vec2 uTextureSize;

in vec2 TexCoord;
out vec4 FragColor;

float avgElem(vec4 v) {
    return (v.x + v.y + v.z + v.w) / 4.0;
}

vec2 mixUS2(vec2 a, vec2 b) {
    return vec2((a.x+b.x)/2.0, (a.y+b.y)/2.0);
}

vec4 rgbAtRed(float center, vec4 edges, vec4 corners) {
    return vec4(center, avgElem(edges), avgElem(corners), 1.0);
}

vec4 rgbAtGreen1(float center, vec4 edges, vec4 corners, bool blurGreen) {
    float green = blurGreen ? (avgElem(corners) + center) / 2.0 : center;
    float horizontal = (edges.x + edges.z) / 2.0;
    float vertical = (edges.y + edges.w) / 2.0;
    return vec4(horizontal, green, vertical, 1.0);
}

vec4 rgbAtGreen2(float center, vec4 edges, vec4 corners, bool blurGreen) {
    vec4 result = rgbAtGreen1(center, edges, corners, blurGreen);
    return result.zyxw;
}

vec4 rgbAtBlue(float center, vec4 edges, vec4 corners) {
    vec4 result = rgbAtRed(center, edges, corners);
    return result.zyxw;
}

void main() {
    vec2 outPos = gl_FragCoord.xy;

    vec2 blockIdx = vec2(outPos.x / 4.0, outPos.y / 2.0);

// origin
//    vec2 inBasePos = vec2(floor(blockIdx.x), floor(blockIdx.y) * 2.0) + vec2(float(uMargins.x), float(uMargins.y));

    vec2 inBasePos = vec2(floor(blockIdx.x + floor(uMargins.x / 4.0)), floor(blockIdx.y) * 2.0 + uMargins.y);

    float pixelInBlockFloat = mod(outPos.x, 4.0);
    float lineInBlockFloat = mod(outPos.y, 2.0);

    vec2 textureSize = uTextureSize;
    vec2 inPos0 = (vec2(inBasePos.x, inBasePos.y - 1.0) + 0.5) / textureSize;
    vec2 inPos1 = (vec2(inBasePos.x, inBasePos.y + 0.0) + 0.5) / textureSize;
    vec2 inPos2 = (vec2(inBasePos.x, inBasePos.y + 1.0) + 0.5) / textureSize;
    vec2 inPos3 = (vec2(inBasePos.x, inBasePos.y + 2.0) + 0.5) / textureSize;

    vec2 inPosL0 = (vec2(inBasePos.x - 1.0, inBasePos.y - 1.0) + 0.5) / textureSize;
    vec2 inPosL1 = (vec2(inBasePos.x - 1.0, inBasePos.y + 0.0) + 0.5) / textureSize;
    vec2 inPosL2 = (vec2(inBasePos.x - 1.0, inBasePos.y + 1.0) + 0.5) / textureSize;
    vec2 inPosL3 = (vec2(inBasePos.x - 1.0, inBasePos.y + 2.0) + 0.5) / textureSize;

    vec2 inPosR0 = (vec2(inBasePos.x + 1.0, inBasePos.y - 1.0) + 0.5) / textureSize;
    vec2 inPosR1 = (vec2(inBasePos.x + 1.0, inBasePos.y + 0.0) + 0.5) / textureSize;
    vec2 inPosR2 = (vec2(inBasePos.x + 1.0, inBasePos.y + 1.0) + 0.5) / textureSize;
    vec2 inPosR3 = (vec2(inBasePos.x + 1.0, inBasePos.y + 2.0) + 0.5) / textureSize;

    vec4 inCn1 = texture(uInputTexture0, inPos0);
    vec4 inCp0 = texture(uInputTexture0, inPos1);
    vec4 inCp1 = texture(uInputTexture0, inPos2);
    vec4 inCp2 = texture(uInputTexture0, inPos3);

    vec4 inLn1 = texture(uInputTexture0, inPosL0);
    vec4 inLp0 = texture(uInputTexture0, inPosL1);
    vec4 inLp1 = texture(uInputTexture0, inPosL2);
    vec4 inLp2 = texture(uInputTexture0, inPosL3);

    vec4 inRn1 = texture(uInputTexture0, inPosR0);
    vec4 inRp0 = texture(uInputTexture0, inPosR1);
    vec4 inRp1 = texture(uInputTexture0, inPosR2);
    vec4 inRp2 = texture(uInputTexture0, inPosR3);

    vec4 center, tl, tr, bl, br, t, l, b, r;
    vec4 result;

    int pixelInBlock = int(floor(pixelInBlockFloat));
    int lineInBlock = int(floor(lineInBlockFloat));

    if (lineInBlock == 0) {
        // RGRG line
        center = inCp0;
        tl = vec4(inLn1.w, inCn1.x, inCn1.y, inCn1.z);
        tr = vec4(inCn1.y, inCn1.z, inCn1.w, inRn1.x);
        bl = vec4(inLp1.w, inCp1.x, inCp1.y, inCp1.z);
        br = vec4(inCp1.y, inCp1.z, inCp1.w, inRp1.x);
        t = inCn1;
        l = vec4(inLp0.w, inCp0.x, inCp0.y, inCp0.z);
        b = inCp1;
        r = vec4(inCp0.y, inCp0.z, inCp0.w, inRp0.x);

        if (pixelInBlock == 0) {
            result = rgbAtRed(center.x, vec4(l.x, t.x, r.x, b.x), vec4(tl.x, tr.x, bl.x, br.x));
        } else if (pixelInBlock == 1) {
            result = rgbAtGreen1(center.y, vec4(l.y, t.y, r.y, b.y), vec4(tl.y, tr.y, bl.y, br.y), uBlurGreen);
        } else if (pixelInBlock == 2) {
            result = rgbAtRed(center.z, vec4(l.z, t.z, r.z, b.z), vec4(tl.z, tr.z, bl.z, br.z));
        } else { // pixelInBlock == 3
            result = rgbAtGreen1(center.w, vec4(l.w, t.w, r.w, b.w), vec4(tl.w, tr.w, bl.w, br.w), uBlurGreen);
        }
    }else {
        // GBGB line
        center = inCp1;
        tl = vec4(inLp0.w, inCp0.x, inCp0.y, inCp0.z);
        tr = vec4(inCp0.y, inCp0.z, inCp0.w, inRp0.x);
        bl = vec4(inLp2.w, inCp2.x, inCp2.y, inCp2.z);
        br = vec4(inCp2.y, inCp2.z, inCp2.w, inRp2.x);
        t = inCp0;
        l = vec4(inLp1.w, inCp1.x, inCp1.y, inCp1.z);
        b = inCp2;
        r = vec4(inCp1.y, inCp1.z, inCp1.w, inRp1.x);

        if (pixelInBlock == 0) {
            result = rgbAtGreen2(center.x, vec4(l.x, t.x, r.x, b.x), vec4(tl.x, tr.x, bl.x, br.x), uBlurGreen);
        } else if (pixelInBlock == 1) {
            result = rgbAtBlue(center.y, vec4(l.y, t.y, r.y, b.y), vec4(tl.y, tr.y, bl.y, br.y));
        } else if (pixelInBlock == 2) {
            result = rgbAtGreen2(center.z, vec4(l.z, t.z, r.z, b.z), vec4(tl.z, tr.z, bl.z, br.z), uBlurGreen);
        } else { // pixelInBlock == 3
            result = rgbAtBlue(center.w, vec4(l.w, t.w, r.w, b.w), vec4(tl.w, tr.w, bl.w, br.w));
        }
    }

    FragColor = result;
}
