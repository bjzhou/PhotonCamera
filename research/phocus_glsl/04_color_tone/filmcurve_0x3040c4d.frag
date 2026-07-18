/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: c678f85151e14960313ee0e0b16fa1ed9c6041ac3144a9f1174a76853e540d17
 * ELF offsets: 0x3040c4d
 * Symbols: filmcurve_fragmentShaderSource
 */

#version 300 es
precision highp float;
precision highp sampler2D;

in vec2 TexCoord;
out vec4 FragColor;

uniform sampler2D uInputTexture0;
uniform sampler2D uInputTexture1;

uniform vec2 uDimensions;
uniform float uGain;

vec4 ApplyGradation(vec4 rgb) {
    float extentW = uDimensions.x;
    float extentH = uDimensions.y;
    float fullRes = extentW * extentH;
    vec4 index = clamp(rgb * fullRes, 0.0, fullRes - 1.0);

    vec2 coordR = vec2(0.5 + floor(mod(index.r, extentW)), 0.5 + floor(index.r / extentW));
    vec2 coordG = vec2(0.5 + floor(mod(index.g, extentW)), 0.5 + floor(index.g / extentW));
    vec2 coordB = vec2(0.5 + floor(mod(index.b, extentW)), 0.5 + floor(index.b / extentW));

    coordR = coordR / uDimensions;
    coordG = coordG / uDimensions;
    coordB = coordB / uDimensions;

    rgb.r = texture(uInputTexture1, coordR).r;
    rgb.g = texture(uInputTexture1, coordG).g;
    rgb.b = texture(uInputTexture1, coordB).b;
    
    return rgb;
}

void main() {
    vec4 rgb = texture(uInputTexture0, TexCoord);
    rgb.rgb = rgb.rgb / uGain;
    rgb = ApplyGradation(rgb);
    FragColor = rgb;
}
