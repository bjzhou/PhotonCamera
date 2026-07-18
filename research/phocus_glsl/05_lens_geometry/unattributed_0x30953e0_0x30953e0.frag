/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 6cfbe5b95c1509f6c7a20872b414c64d5150482481be8130ee510028bf0f8eaf
 * ELF offsets: 0x30953e0
 * Symbols: unattributed
 */

#version 300 es
precision highp float;
precision highp sampler2D;
out vec4 FragColor;
uniform sampler2D uInputTexture0;
uniform float uS;
uniform float uHueDist;

float hueOf(vec4 v) {
    float mx = max(v.r, max(v.g, v.b));
    float mn = min(v.r, min(v.g, v.b));
    if (mx <= 0.0 || (mx-mn)/mx <= 0.05) return -1.0;
    float c60 = 60.0/(mx-mn);
    if (mx == v.r) return (v.g >= v.b) ? c60*(v.g-v.b) : c60*(v.g-v.b)+360.0;
    if (mx == v.g) return c60*(v.b-v.r)+120.0;
    return c60*(v.r-v.g)+240.0;
}
float diffFn(float a, float b, float t) {
    if (a < 0.0 || b < 0.0) return 0.0;
    float d = min(abs(a-b), 360.0-abs(a-b));
    return (d > t) ? 1.0 : -1.0;
}
void main() {
    ivec2 sz = textureSize(uInputTexture0, 0);
    ivec2 p  = ivec2(gl_FragCoord.xy);
    int   S  = max(1, int(round(uS)));
    float lt = hueOf(texelFetch(uInputTexture0, clamp(p+ivec2(-S,-S),ivec2(0),sz-1), 0));
    float mt = hueOf(texelFetch(uInputTexture0, clamp(p+ivec2( 0,-S),ivec2(0),sz-1), 0));
    float rt = hueOf(texelFetch(uInputTexture0, clamp(p+ivec2( S,-S),ivec2(0),sz-1), 0));
    float lm = hueOf(texelFetch(uInputTexture0, clamp(p+ivec2(-S, 0),ivec2(0),sz-1), 0));
    float rm = hueOf(texelFetch(uInputTexture0, clamp(p+ivec2( S, 0),ivec2(0),sz-1), 0));
    float lb = hueOf(texelFetch(uInputTexture0, clamp(p+ivec2(-S, S),ivec2(0),sz-1), 0));
    float mb = hueOf(texelFetch(uInputTexture0, clamp(p+ivec2( 0, S),ivec2(0),sz-1), 0));
    float rb = hueOf(texelFetch(uInputTexture0, clamp(p+ivec2( S, S),ivec2(0),sz-1), 0));
    float t  = uHueDist;
    float mag = diffFn(rt,lt,t)+diffFn(rb,lb,t)+2.0*diffFn(rm,lm,t)
              + diffFn(lt,lb,t)+diffFn(rt,rb,t)+2.0*diffFn(mt,mb,t)
              + diffFn(lm,mt,t)+diffFn(mb,rm,t)+2.0*diffFn(lb,rt,t)
              + diffFn(lm,mb,t)+diffFn(mt,rm,t)+2.0*diffFn(lt,rb,t);
    float res = (mag > 0.0) ? 0.0 : 1.0;
    FragColor = vec4(res, res, res, 1.0);
}
