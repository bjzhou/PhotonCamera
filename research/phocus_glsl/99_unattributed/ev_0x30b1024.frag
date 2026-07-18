/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 24294ea4f1e778a2a042f992930bcb4cd1ffeefa35dc56093993040b054f3b88
 * ELF offsets: 0x30b1024
 * Symbols: ev_fragmentShaderSource
 */

#version 300 es
precision highp float;
precision highp sampler2D;

out vec4 FragColor;

uniform sampler2D uInputTexture0;
uniform float uEV;
uniform float uMaxValue;
uniform vec2 uMarginOffset;

vec4 ApplyEVAdjustment(vec4 texColor, float ev, float maxValue) {
    vec4 scaledColor = texColor.rgba * 65535.0f;
    // round to nearest integer value (.5 will be rounded to the nearest even number)
    vec4 adjustedRgb = round(scaledColor * ev);
    adjustedRgb = min(adjustedRgb, vec4(maxValue)) / 65535.0f;

    return adjustedRgb;
}

void main() {
    // use texelFetch for actual pixel position fetch
    ivec2 srcPos = ivec2(gl_FragCoord.xy) + ivec2(uMarginOffset);
    vec4 texColor = texelFetch(uInputTexture0, srcPos, 0);

    vec4 adjustedColor = ApplyEVAdjustment(texColor, uEV, uMaxValue);

    FragColor = adjustedColor;
}
