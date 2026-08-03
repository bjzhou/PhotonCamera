/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 22ee7adff61fc23e5f879983fa06ae574dbfc040734178d2c83992d4f2350fcc
 * ELF offsets: 0x308164a
 * Symbols: desatHighLight_computeShaderSource
 */

#version 300 es
precision highp float;

in vec2 TexCoord;
out vec4 FragColor;

uniform sampler2D uInputTexture0;

uniform vec3 uLumC;           // 亮度系数 [0.2, 0.6, 0.2]
uniform float uLumMin;        // 最小亮度阈值 (0-65535范围)
uniform float uLumDyn;        // 动态范围 (0-65535范围)
uniform float uAlpha;         // 混合系数 (0-1范围)
uniform float uMaxValue;      // 最大值 (65535)
uniform vec2 uMarginOffset;   // 偏移量

vec3 rgb2hsv(vec3 rgb) {
    float r = rgb.r;
    float g = rgb.g;
    float b = rgb.b;

    float minVal = min(min(r, g), b);
    float maxVal = max(max(r, g), b);
    float delta = maxVal - minVal;

    vec3 hsv = vec3(0.0, 0.0, maxVal);

    if (maxVal != 0.0) {
        hsv.y = delta / maxVal;
    }

    if (delta != 0.0) {
        if (maxVal == r) {
            if (g >= b) {
                hsv.x = 60.0 * (g - b) / delta;
            } else {
                hsv.x = 60.0 * (g - b) / delta + 360.0;
            }
        } else if (maxVal == g) {
            hsv.x = 60.0 * (b - r) / delta + 120.0;
        } else {
            hsv.x = 60.0 * (r - g) / delta + 240.0;
        }
    }

    return hsv;
}

vec3 hsv2rgb(vec3 hsv) {
    float hue = hsv.x / 60.0;
    int i = int(floor(hue));
    float f = fract(hue);
    if ((i & 1) == 0) {
        f = 1.0 - f;
    }

    float m = hsv.z * (1.0 - hsv.y);
    float n = hsv.z * (1.0 - hsv.y * f);

    vec3 rgb = vec3(0.0);

    if (i == 0 || i == 6) {
        rgb = vec3(hsv.z, n, m);
    } else if (i == 1) {
        rgb = vec3(n, hsv.z, m);
    } else if (i == 2) {
        rgb = vec3(m, hsv.z, n);
    } else if (i == 3) {
        rgb = vec3(m, n, hsv.z);
    } else if (i == 4) {
        rgb = vec3(n, m, hsv.z);
    } else if (i == 5) {
        rgb = vec3(hsv.z, m, n);
    }

    return rgb;
}

void main() {
    vec4 inputPixel = texture(uInputTexture0, TexCoord);

    vec3 rgbScaled = inputPixel.rgb * uMaxValue;

    float lum = dot(rgbScaled, uLumC);

    vec3 result = rgbScaled;

    if (lum > uLumMin) {
        vec3 hsv = rgb2hsv(rgbScaled);

        float relLum = clamp((lum - uLumMin) / uLumDyn, 0.0, 1.0);

        float sDesat = clamp((1.0 - relLum) * hsv.y, 0.0, 1.0);

        vec3 rgbDesat = hsv2rgb(vec3(hsv.x, sDesat, hsv.z));

        result = mix(rgbScaled, rgbDesat, uAlpha);
    }

    result = result / uMaxValue;

    FragColor = vec4(result, inputPixel.a);
}
