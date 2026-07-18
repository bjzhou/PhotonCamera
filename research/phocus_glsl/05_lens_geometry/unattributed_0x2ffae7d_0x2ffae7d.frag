/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: e9f99a8ec73e205e70886530d9f6f60bedd45a4817119e988b77824e84df52db
 * ELF offsets: 0x2ffae7d
 * Symbols: unattributed
 */

#version 300 es
precision highp float;
precision highp sampler2D;
out vec4 FragColor;
uniform sampler2D uInputTexture0;

float hueOf(vec4 v) {
    float mx = max(v.r, max(v.g, v.b));
    float mn = min(v.r, min(v.g, v.b));
    if (mx <= 0.0 || (mx-mn)/mx <= 0.05) return -1.0;
    float c60 = 60.0/(mx-mn);
    if (mx == v.r) return (v.g >= v.b) ? c60*(v.g-v.b) : c60*(v.g-v.b)+360.0;
    if (mx == v.g) return c60*(v.b-v.r)+120.0;
    return c60*(v.r-v.g)+240.0;
}
float diffFn(float a, float b) {
    if (a < 0.0 || b < 0.0) return -1.0;   // grey pixel → -1 (CPU behaviour)
    float d = min(abs(a-b), 360.0-abs(a-b));
    return (d > 3.0) ? 1.0 : -1.0;          // 3° threshold (CPU)
}
void main() {
    ivec2 sz = textureSize(uInputTexture0, 0);
    ivec2 p  = ivec2(gl_FragCoord.xy);
    // S = 1, fixed (CPU uses step 1)
    float lt = hueOf(texelFetch(uInputTexture0, clamp(p+ivec2(-1,-1), ivec2(0), sz-1), 0));
    float mt = hueOf(texelFetch(uInputTexture0, clamp(p+ivec2( 0,-1), ivec2(0), sz-1), 0));
    float rt = hueOf(texelFetch(uInputTexture0, clamp(p+ivec2( 1,-1), ivec2(0), sz-1), 0));
    float lm = hueOf(texelFetch(uInputTexture0, clamp(p+ivec2(-1, 0), ivec2(0), sz-1), 0));
    float rm = hueOf(texelFetch(uInputTexture0, clamp(p+ivec2( 1, 0), ivec2(0), sz-1), 0));
    float lb = hueOf(texelFetch(uInputTexture0, clamp(p+ivec2(-1, 1), ivec2(0), sz-1), 0));
    float mb = hueOf(texelFetch(uInputTexture0, clamp(p+ivec2( 0, 1), ivec2(0), sz-1), 0));
    float rb = hueOf(texelFetch(uInputTexture0, clamp(p+ivec2( 1, 1), ivec2(0), sz-1), 0));
    // Sobel Gradient — matches CPU DetectEdges() formula exactly:
    // qx = hueDist(rt,lt) + 2*hueDist(mb,mt) + hueDist(rb,rt)
    // qy = hueDist(rt,lt) + 2*hueDist(rm,lm) + hueDist(rb,lb)
    // mx = hueDist(lm,mt) + 2*hueDist(lb,rt) + hueDist(mb,rm)
    // my = hueDist(lm,mb) + 2*hueDist(lt,rb) + hueDist(mt,rm)
    float mag = diffFn(rt,lt)+diffFn(rb,lb)+2.0*diffFn(rm,lm)
              + diffFn(rt,lt)+diffFn(rb,rt)+2.0*diffFn(mt,mb)
              + diffFn(lm,mt)+diffFn(mb,rm)+2.0*diffFn(lb,rt)
              + diffFn(lm,mb)+diffFn(mt,rm)+2.0*diffFn(lt,rb);
    float res = (mag > 0.0) ? 0.0 : 1.0;
    FragColor = vec4(res, res, res, 1.0);
}
