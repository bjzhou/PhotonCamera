/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: c868449deef611e5f8a422c002f45d7af1884f8a49c6e911ee974588ca423bf8
 * ELF offsets: 0x2ff9bfb
 * Symbols: unsharpMask_ver_fragmentShaderSource
 */

#version 300 es
precision highp float;
precision highp sampler2D;
out vec4 FragColor;

uniform sampler2D uInputTexture0; // TextureIn (SrcRect Size)

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

float PixelCastNoScale(float value) {
    float clamped = clamp(value, 0.0, 1.0);
    float quantized = round(clamped * 65535.0) / 65535.0;

    return quantized;
}

void main() {
    ivec2 fragCoord = ivec2(gl_FragCoord.xy);

    ivec2 inputCenterCoord = fragCoord + ivec2(0, marginY);

    float blurredLum = 0.0;
    float totalWeight = 0.0;
    float w[5];
    w[0] = weights0123.x; w[1] = weights0123.y; w[2] = weights0123.z;
    w[3] = weights0123.w; w[4] = weight4;

    for (int y = -4; y <= 4; y++) {
        ivec2 sampleCoord = inputCenterCoord + ivec2(0, y);

        vec3 rgb = texelFetch(uInputTexture0, sampleCoord, 0).rgb;
        float lum = dot(rgb, kYCC);
        float weight = w[abs(y)];

        if (any(notEqual(rgb, vec3(0.0)))) {
            totalWeight += weight;
        }

        blurredLum += lum * weight;
    }

    if (totalWeight > 0.0) {
        blurredLum /= totalWeight;
    } else {
        blurredLum = 0.0;
    }

    float finalVal = PixelCastNoScale(blurredLum);

    FragColor = vec4(finalVal, 0.0, 0.0, 1.0);
}
