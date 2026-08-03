/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 97a3f91b9d73967ef8a151f9682d7ea985f95daa0f17389816e0aebcd40f95ad
 * ELF offsets: 0x300e6ad
 * Symbols: unsharpMask_fragmentShaderSource
 */

#version 300 es
precision highp float;
precision highp sampler2D;
out vec4 FragColor;

uniform sampler2D uInputTexture0; // Source
uniform sampler2D uInputTexture1; // Temp (Vertical Blurred)

layout(std140) uniform ShaderParams {
    vec4 weights0123;
    float weight4;
    float noiseLimit;
    float darkLimit;
    float sharpenAmount;
    float grainScale;
    float blendAmount;
    float hdrScale;
    int marginX;
    int marginY;
    float padding1;
    float padding2;
    float padding3;
};

const vec3 kYCC = vec3(0.299, 0.587, 0.114);
const float kSharpenValueRange = 16384.0;

float CalcNoise(float noiseLimit, float x) {
    float noiseLim = floor(noiseLimit);
    float noiseRange = floor(noiseLim / 4.0);

    if (noiseRange < 128.0) {
        noiseRange = 128.0;
    }
    float i = x * kSharpenValueRange;
    float val = (i - (noiseLim - noiseRange)) / noiseRange;

    return clamp(val, 0.0, 1.0);
}

float CalcAmount(float amount, float darkLimit, float x, float maxRange1) {
    float maxRange0 = maxRange1 > 1.0 ? maxRange1 - 1.0 : 1.0;
    if (amount <= 0.0) {
        return amount;
    }

    float scale = (amount + 100.0) / maxRange1;
    float X1 = min(darkLimit, maxRange0);
    float Y1 = (100.0 * kSharpenValueRange) / (amount + 100.0);
    Y1 = clamp(Y1, 1000.0, 10000.0) / kSharpenValueRange * maxRange1;
    float dy = 3.0;

    if (x < X1) {
        float loA = (dy * X1 - Y1) / (X1 * X1);
        float loB = dy - (2.0 * dy * X1 - 2.0 * Y1) / X1;

        float tmp = loA * x * x + loB * x;

        if (tmp > 0.0 && tmp < maxRange1) {
            return tmp * scale - 100.0;
        } else {
            return -100.0;
        }
    } else if (x < maxRange1) {
        float negX1 = maxRange1 - X1;

        float hiA = ((maxRange1 - Y1) - dy * negX1) / (negX1 * negX1);

        float xDiff = x - X1;

        float tmp = hiA * xDiff * xDiff + dy * xDiff + Y1;

        if (tmp > 0.0 && tmp < maxRange1) {
            return tmp * scale - 100.0;
        } else {
            return amount;
        }
    } else {
        return amount;
    }
}

float CalcUsmFactor(float gray, float blurred) {
    float normDarkLimit = darkLimit / grainScale;
    float local = 0.0;
    float rawAmount = CalcAmount(sharpenAmount, normDarkLimit, gray * hdrScale, 1.0);
    float amount = clamp(rawAmount + local, 0.0, 1000.0) / 100.0;

    float diff = gray - blurred;
    float noise = CalcNoise(noiseLimit, abs(diff) * hdrScale);
    return amount * noise * diff;
}

void main() {
    ivec2 fragCoord = ivec2(gl_FragCoord.xy);

    ivec2 srcCoord = fragCoord + ivec2(marginX, marginY);
    ivec2 tempCoordCenter = fragCoord + ivec2(marginX, 0);

    float blurredTotal = 0.0;
    float totalWeight = 0.0;
    float w[5];
    w[0] = weights0123.x; w[1] = weights0123.y; w[2] = weights0123.z;
    w[3] = weights0123.w; w[4] = weight4;

    for (int x = -4; x <= 4; x++) {
        ivec2 sampleCoord = tempCoordCenter + ivec2(x, 0);
        float val = texelFetch(uInputTexture1, sampleCoord, 0).r;
        float weight = w[abs(x)];
        if (val > 0.0) {
             blurredTotal += val * weight;
             totalWeight += weight;
        }
    }

    if (totalWeight > 0.0) {
        blurredTotal /= totalWeight;
    }

    vec4 centerColor = texelFetch(uInputTexture0, srcCoord, 0);
    float gray = dot(centerColor.rgb, kYCC);

    float usmFactor = CalcUsmFactor(gray, blurredTotal);

    vec3 finalRGB = centerColor.rgb + usmFactor;
    finalRGB = clamp(finalRGB, 0.0, 1.0);

    FragColor = vec4(finalRGB, centerColor.a);
}
