/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 7272d4bc97a33ee3855b9d2a7cad4d0843a6480c8fa8cd2341f65b3e6c429e8c
 * ELF offsets: 0x30a3daf
 * Symbols: filmCurveShader
 */

#version 300 es
precision highp float;

in vec2 TexCoord;
out vec4 FragColor;

uniform sampler2D inputTexture;
uniform sampler2D filmCurveTexture;
uniform vec2 dimensions;

vec4 ApplyGradation(vec4 rgb) {
    float extentW = dimensions.x;
    float extentH = dimensions.y;
    float fullRes = extentW * extentH;
    vec4 index = clamp(rgb * fullRes, 0.0, fullRes - 1.0);

    vec2 coordR = vec2(0.5 + floor(mod(index.r, extentW)), 0.5 + floor(index.r / extentW));
    vec2 coordG = vec2(0.5 + floor(mod(index.g, extentW)), 0.5 + floor(index.g / extentW));
    vec2 coordB = vec2(0.5 + floor(mod(index.b, extentW)), 0.5 + floor(index.b / extentW));

    coordR = coordR / dimensions;
    coordG = coordG / dimensions;
    coordB = coordB / dimensions;

    rgb.r = texture(filmCurveTexture, coordR).r;
    rgb.g = texture(filmCurveTexture, coordG).g;
    rgb.b = texture(filmCurveTexture, coordB).b;
    
    return rgb;
}

void main() {
    vec4 rgb = texture(inputTexture, TexCoord);
    rgb = ApplyGradation(rgb);
    FragColor = rgb;
}
