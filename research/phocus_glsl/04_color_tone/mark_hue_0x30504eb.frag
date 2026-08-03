/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 6db1863654d4ec5103e4bc0fdf6e1fddc612afed52d72e114956e65562b7e359
 * ELF offsets: 0x30504eb
 * Symbols: mark_hue_fragmentShaderSource
 */

#version 300 es
precision highp float;
precision highp sampler2D;

uniform sampler2D uInputTexture0;
uniform ivec2 uInMargin;
uniform float uRange;
uniform float uHue;
uniform float uThresholdFactor;

out vec4 FragColor;

vec3 rgb2hsl(vec3 rgb)
{
    float min1 = min(rgb.r, rgb.g); min1 = min(min1, rgb.b);
    float max1 = max(rgb.r, rgb.g); max1 = max(max1, rgb.b);
    float min_val = min1;
    float max_val = max1;
    float l = clamp((max_val + min_val) / 2.0, 0.00001, 0.99999);

    float max_min = max_val - min_val;
    max_min = (abs(max_min) > 0.00001) ? max_min : 0.00001;

    float s = step(l, 0.50) * (max_min) / 2.0 / l + (1.0 - step(l, 0.50)) * (max_min) / (2.0 - 2.0 * l);
    if ((abs(rgb.r - rgb.g) < 0.00001) && (abs(rgb.g - rgb.b) < 0.00001)) {
        s = 0.0;
    }

    float hr = step(max_val, rgb.r) * (1.0 - step(max_val, rgb.b)) * (60.0 * ((rgb.g - rgb.b) / (max_min) + step(rgb.g, rgb.b) * 6.0));
    float hg = step(max_val, rgb.g) * (1.0 - step(max_val, rgb.r)) * (60.0 * (rgb.b - rgb.r) / max_min + 120.0);
    float hb = step(max_val, rgb.b) * (1.0 - step(max_val, rgb.g)) * (60.0 * (rgb.r - rgb.g) / max_min + 240.0);
    float h = step(min_val, max_val) * (hr + hg + hb);

    return vec3(h / 360.0, s, l);
}

void main()
{
    ivec2 outCoord = ivec2(gl_FragCoord.xy);
    ivec2 inCoord = outCoord + uInMargin;

    vec4 res = texelFetch(uInputTexture0, inCoord, 0);

    float maxChannel = max(max(res.r, res.g), max(res.b, 1.0));
    vec3 normalizedRgb = res.rgb / maxChannel;
    vec3 hsl = rgb2hsl(normalizedRgb);

    float hueDistance = abs(hsl.r - uHue);
    hueDistance = min(hueDistance, 1.0 - hueDistance) / uRange;

    float mixFactor = 1.0 - min(1.0, pow(hueDistance, 6.0));

    mixFactor = smoothstep(0.08 / uThresholdFactor, 0.15 / uThresholdFactor, hsl.g) * mixFactor;

    float gainCompensation = uThresholdFactor * uThresholdFactor;
    vec4 markColor = vec4(vec3(0.9, 0.1, 0.1) / gainCompensation, 1.0);
    FragColor = mix(res, markColor, mixFactor);
}
