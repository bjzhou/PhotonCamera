/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 23d9a908fe2ae5baf5f578bac46cbcbb30f711900eef5851e42d60c8441dcc24
 * ELF offsets: 0x3088ea2
 * Symbols: selectivecolor_fragmentShaderSource
 */

#version 300 es
precision highp float;
precision highp sampler2D;
precision highp int;

layout(std140) uniform SelectiveColorParams {
    int marginX;
    int marginY;
    float vibrancy;
    float saturationFactor;
    int needsSelective;
    int useLocalSaturation;
    float globalSaturation;
    int _padding;
} params;

uniform sampler2D uInputTexture0;      // Input RGB Image
uniform sampler2D uInputTexture1;      // Saturation LUT (128x128 Rgba16F)
uniform sampler2D uInputTexture2;      // Hue LUT (128x128 Rgba16F)
uniform sampler2D uInputTexture3;      // Lightness LUT (128x128 Rgba16F)

out vec4 fragColor;

const int kVibrancyTableSize = 65536;
const int cHighresPieCount = 65536;

vec3 rgb2hsl(vec3 rgb) {
    float minVal = min(rgb.r, min(rgb.g, rgb.b));
    float maxVal = max(rgb.r, max(rgb.g, rgb.b));

    float precis = 0.00001;
    float l = clamp((maxVal + minVal) / 2.0, precis, 1.0 - precis);
    float maxMin = maxVal - minVal;
    float absMaxMin = abs(maxMin);
    maxMin = (absMaxMin > precis) ? absMaxMin : precis;

    float s = step(l, 0.5) * (maxMin * 0.5) / l + (1.0 - step(l, 0.5)) * maxMin / (2.0 - 2.0 * l);
    if (absMaxMin < precis) {
        s = 0.0;
    }

    float hr = step(maxVal, rgb.r) * (1.0 - step(maxVal, rgb.b)) * (60.0 * ((rgb.g - rgb.b) / (maxMin) + step(rgb.g, rgb.b) * 6.0));
    float hg = step(maxVal, rgb.g) * (1.0 - step(maxVal, rgb.r)) * (60.0 * (rgb.b - rgb.r) / (maxMin) + 120.0);
    float hb = step(maxVal, rgb.b) * (1.0 - step(maxVal, rgb.g)) * (60.0 * (rgb.r - rgb.g) / (maxMin) + 240.0);
    float h = step(minVal, maxVal) * (hr + hg + hb);

    return vec3(h, s, l);
}

vec3 hsl2rgb(vec3 hsl) {
    float h = hsl.r;
    float s = hsl.g;
    float l = hsl.b;

    float q = step(l, 0.5) * l * (1.0 + s) + (1.0 - step(l, 0.5)) * (l + s - l * s);
    float p = 2.0 * l - q;
    float hk = fract(h / 360.0);

    vec4 tc = vec4(hk + step(hk, 2.0/3.0)/3.0 - (1.0 - step(hk, 2.0/3.0)) * 2.0/3.0,
                   hk,
                   hk - (1.0 - step(hk, 1.0/3.0)) * 1.0/3.0 + step(hk, 1.0/3.0) * 2.0/3.0,
                   1.0);

    float r = tc.r;
    float g = tc.g;
    float b = tc.b;

    float r1 = step(r, 1.0/6.0) * (p + (q - p) * 6.0 * r) + (1.0 - step(r, 1.0/6.0)) * (step(r, 0.5) * q + (1.0 - step(r, 0.5)) * (step(r, 2.0/3.0) * (p + (q - p) * 6.0 * (2.0/3.0 - r)) + (1.0 - step(r, 2.0/3.0)) * p));
    float g1 = step(g, 1.0/6.0) * (p + (q - p) * 6.0 * g) + (1.0 - step(g, 1.0/6.0)) * (step(g, 0.5) * q + (1.0 - step(g, 0.5)) * (step(g, 2.0/3.0) * (p + (q - p) * 6.0 * (2.0/3.0 - g)) + (1.0 - step(g, 2.0/3.0)) * p));
    float b1 = step(b, 1.0/6.0) * (p + (q - p) * 6.0 * b) + (1.0 - step(b, 1.0/6.0)) * (step(b, 0.5) * q + (1.0 - step(b, 0.5)) * (step(b, 2.0/3.0) * (p + (q - p) * 6.0 * (2.0/3.0 - b)) + (1.0 - step(b, 2.0/3.0)) * p));

    return vec3(r1, g1, b1);
}

float hermiteInterpolation(float t) {
    return t * t * (3.0 - 2.0 * t);
}

float calculateVibrancyFactor(float saturation) {
    const float kVBegin = 0.1 * float(kVibrancyTableSize);
    const float kVMid = 0.3 * float(kVibrancyTableSize);
    const float kVEnd = 0.6 * float(kVibrancyTableSize);
    
    float sIndex = saturation * float(kVibrancyTableSize - 1);
    
    if (sIndex >= kVBegin && sIndex < kVMid) {
        float fraction = (sIndex - kVBegin) / (kVMid - kVBegin);
        return hermiteInterpolation(fraction);
    } else if (sIndex >= kVMid && sIndex < kVEnd) {
        float fraction = 1.0 - (sIndex - kVMid) / (kVEnd - kVMid);
        return hermiteInterpolation(fraction);
    }
    
    return 0.0;
}

float fetchLUTValue(sampler2D lutTexture, int index) {
    index = clamp(index, 0, cHighresPieCount - 1);

    int pixelIndex = index / 4;
    int component = index % 4;

    int texX = pixelIndex % 128;
    int texY = pixelIndex / 128;

    vec4 pixel = texelFetch(lutTexture, ivec2(texX, texY), 0);
    return pixel[component];
}

vec3 applySelectiveColorAdjustment(
    vec3 hsl,
    float hueOffset,
    float selectiveSaturationFactor,
    float lightnessBase,
    float vibrancy,
    float saturationFactor)
{
    float h = hsl.x;
    float s = hsl.y;
    float l = hsl.z;

    h += hueOffset;
    if (h >= 360.0) h -= 360.0;
    if (h < 0.0) h += 360.0;

    s = clamp(s * selectiveSaturationFactor * saturationFactor, 0.0, 1.0);

    float vf = vibrancy / 4.0;
    float vibrancyFactor = calculateVibrancyFactor(s);

    s = s + vf * vibrancyFactor;
    s = clamp(s, 0.0, 1.0);

    float lightnessOffset = s * (lightnessBase / 100.0);

    l = l * (1.0 + lightnessOffset);
    l = clamp(l, 0.0, 1.0);

    return vec3(h, s, l);
}

void main() {
     ivec2 inputCoord = ivec2(gl_FragCoord.xy);
     inputCoord += ivec2(params.marginX, params.marginY);

     vec4 inputPixel = texelFetch(uInputTexture0, inputCoord, 0);
     vec3 rgb = inputPixel.rgb;

     if (params.needsSelective == 1) {
         vec3 hsl = rgb2hsl(rgb);

         // Calculate LUT lookup index from hue
         int lookup = clamp(int(round(hsl.x * float(cHighresPieCount) / 360.0)), 0, cHighresPieCount - 1);

         float hueOffset = fetchLUTValue(uInputTexture2, lookup);
         float selectiveSaturationFactor = fetchLUTValue(uInputTexture1, lookup);
         float lightnessBase = fetchLUTValue(uInputTexture3, lookup);

         hsl = applySelectiveColorAdjustment(
             hsl,
             hueOffset,
             selectiveSaturationFactor,
             lightnessBase,
             params.vibrancy,
             params.saturationFactor);
         
         rgb = hsl2rgb(hsl);
     }

     fragColor = vec4(rgb, inputPixel.a);
}
