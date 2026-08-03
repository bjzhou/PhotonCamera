/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 56d92138369c752b7f33e32596e8e89b847aca6c8d34edd223aa24b03c2da76a
 * ELF offsets: 0x3015512
 * Symbols: unsharpMask_blend_fragmentShaderSource
 */

#version 300 es
precision highp float;
precision highp int;
precision highp sampler2D;

out vec4 FragColor;

layout(std140) uniform ShaderParams {
    vec4  weights0123;
    float weight4;
    float noiseLimit;
    float darkLimit;
    float sharpenAmount;
    float grainScale;    // in 65535-domain units (like Metal)
    float blendAmount;
    float hdrScale;
    int   marginX;
    int   marginY;
    float padding1;
    float padding2;
    float padding3;
} opts;

uniform sampler2D uInputTexture0; // TextureUsm (blurred 1-channel stored in .r, 0..1)
uniform sampler2D uInputTexture1; // TextureGrain/Source (0..1 rgb)
uniform sampler2D uInputTexture2; // TextureResult/Background (0..1 rgb)

const float kMaxRange = 65535.0;
const float kSharpenValueRange = 16384.0;

float getWeight(int i) {
    if (i == 0) return opts.weights0123.x;
    if (i == 1) return opts.weights0123.y;
    if (i == 2) return opts.weights0123.z;
    if (i == 3) return opts.weights0123.w;
    return opts.weight4;
}

float CalcNoise(float nLimit, float x) {
    float noiseLim = floor(nLimit);
    float noiseRange = floor(noiseLim / 4.0);
    if (noiseRange < 128.0) noiseRange = 128.0;

    float i = x * kSharpenValueRange;
    float val = (i - (noiseLim - noiseRange)) / noiseRange;
    return clamp(val, 0.0, 1.0);
}

float CalcAmount(float amount, float dLimit, float x, float maxRange1) {
    float maxRange0 = maxRange1 > 1.0 ? maxRange1 - 1.0 : 1.0;
    if (amount <= 0.0) return amount;

    float scale = (amount + 100.0) / maxRange1;
    float X1 = min(dLimit, maxRange0);
    float Y1 = (100.0 * kSharpenValueRange) / (amount + 100.0);
    Y1 = clamp(Y1, 1000.0, 10000.0) / kSharpenValueRange * maxRange1;

    float dy = 3.0;
    if (x < X1) {
        float loA = (dy*X1 - Y1) / (X1*X1);
        float loB = dy - (2.0*dy*X1 - 2.0*Y1) / X1;
        float tmp = loA*x*x + loB*x;
        return (tmp > 0.0 && tmp < maxRange1) ? tmp*scale - 100.0 : -100.0;
    } else if (x < maxRange1) {
        float negX1 = maxRange1 - X1;
        float hiA = ((maxRange1 - Y1) - dy*negX1) / (negX1*negX1);
        float xDiff = x - X1;
        float tmp = hiA*xDiff*xDiff + dy*xDiff + Y1;
        return (tmp > 0.0 && tmp < maxRange1) ? tmp*scale - 100.0 : amount;
    }
    return amount;
}

float UsmFactor(float value01, float blurred01) {
    // map to "ushort domain"
    float valueU = value01 * kMaxRange;
    float blurU  = blurred01 * kMaxRange;

    // normalize by grainScale (which is in ushort-domain)
    float v = valueU / max(opts.grainScale, 1e-6);
    float b = blurU  / max(opts.grainScale, 1e-6);

    float darkLimN = opts.darkLimit / max(opts.grainScale, 1e-6);

    float amountRaw = CalcAmount(opts.sharpenAmount, darkLimN, v * opts.hdrScale, 1.0);
    float amount = clamp(amountRaw, 0.0, 1000.0) / 100.0;

    float diff = v - b;
    float noise = CalcNoise(opts.noiseLimit, abs(diff) * opts.hdrScale);

    float factorN = amount * noise * diff;           // in "normalized" domain
    float factorU = factorN * opts.grainScale;       // back to ushort-domain delta
    return factorU / kMaxRange;                      // return as 0..1 delta
}

void main() {
    ivec2 gid = ivec2(gl_FragCoord.xy);

    // 1) horizontal blur combine (uInputTexture0 contains blurred line samples in .r, 0..1)
    float blurredSum = 0.0;
    float weightSum = 0.0;
    ivec2 centerCoord = gid + ivec2(opts.marginX, 0);

    for (int x = -4; x <= 4; x++) {
        float v = texelFetch(uInputTexture0, centerCoord + ivec2(x, 0), 0).r;
        float w = getWeight(abs(x));
        if (v != 0.0) weightSum += w;
        blurredSum += v * w;
    }
    float blurred = (weightSum > 0.0) ? (blurredSum / weightSum) : 0.0;

    // 2) center pixel
    vec4 center = texelFetch(uInputTexture1, gid + ivec2(opts.marginX, opts.marginY), 0);
    float gray = dot(center.rgb, vec3(0.299, 0.587, 0.114));

    // 3) USM
    float usm = UsmFactor(gray, blurred);
    vec3 sharp = clamp(center.rgb + usm, 0.0, 1.0);

    // 4) blend with background
    vec4 bg = texelFetch(uInputTexture2, gid, 0);
    FragColor = vec4(mix(bg.rgb, sharp, opts.blendAmount), center.a);
}
