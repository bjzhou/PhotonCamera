/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: c6952101afd99df4bc3bb0f5b3061b5b7dfaca6392921b3758889f0a6b1aa926
 * ELF offsets: 0x30778de
 * Symbols: gradation_fragmentShaderSource
 */

#version 300 es
precision highp float;
precision highp sampler2D;
out vec4 FragColor;

uniform sampler2D uInputTexture0; // 原始图像
uniform sampler2D uRgbCurve;      // RGB 基础曲线 LUT
uniform sampler2D uContrastCurve; // 对比度 LUT
uniform sampler2D uLumaUserCurve; // 亮度 LUT

uniform int uHasContrast;
uniform int uLumaPoints;
uniform int uVersion;

const float bitscale = 65536.0;
const float eps = 1e-7;

// 更稳定的 LUT 查找函数
vec3 lookupCurve(sampler2D lut, vec3 inputColor) {
    inputColor = clamp(inputColor, 0.0, 1.0);

    // 映射到 [0, 65535]
    vec3 scaled = inputColor * (bitscale - 1.0);

    // 分别获取 R/G/B 对应的坐标 (x, y)，范围是 [0, 255]
    float rIndex = scaled.r;
    float gIndex = scaled.g;
    float bIndex = scaled.b;

    // 整数部分作为 Y 坐标，余数作为 X 坐标
    float ry = floor(rIndex / 256.0);
    float rx = mod(rIndex, 256.0);
    float gy = floor(gIndex / 256.0);
    float gx = mod(gIndex, 256.0);
    float by = floor(bIndex / 256.0);
    float bx = mod(bIndex, 256.0);

    // 归一化 UV 坐标用于 texture()
    vec2 ruv = vec2((rx + 0.5)/256.0, (ry + 0.5)/256.0);
    vec2 guv = vec2((gx + 0.5)/256.0, (gy + 0.5)/256.0);
    vec2 buv = vec2((bx + 0.5)/256.0, (by + 0.5)/256.0);

    float r = texture(lut, ruv).r;
    float g = texture(lut, guv).g;
    float b = texture(lut, buv).b;

    return vec3(r, g, b);
}

// 安全除法
float safeDivide(float a, float b) {
    return (abs(b) > eps) ? a / b : 0.0;
}

vec3 safeDivideVec(vec3 a, vec3 b) {
    return vec3(
        safeDivide(a.r, b.r),
        safeDivide(a.g, b.g),
        safeDivide(a.b, b.b)
    );
}

vec3 RecoverHue(vec3 rgb0, vec3 rgb1) {
    float r0 = rgb0.r, g0 = rgb0.g, b0 = rgb0.b;
    float r1 = rgb1.r, g1 = rgb1.g, b1 = rgb1.b;

    float min0 = min(min(r0, g0), b0);
    float max0 = max(max(r0, g0), b0);
    float delta0 = max0 - min0;

    float h = 0.0;
    if (delta0 > 1e-9) {
        if (max0 == r0) {
            h = 60.0 * ((g0 - b0) / delta0);
            if (g0 < b0) h += 360.0;
        } else if (max0 == g0) {
            h = 60.0 * ((b0 - r0) / delta0 + 2.0);
        } else {
            h = 60.0 * ((r0 - g0) / delta0 + 4.0);
        }
        h = mod(h, 360.0);
    }

    float min1 = min(min(r1, g1), b1);
    float max1 = max(max(r1, g1), b1);
    float l = (max1 + min1) * 0.5;

    float s = 0.0;
    float delta1 = max1 - min1;

    const float threshold = 1.0 / 65536.0;

    if (l > threshold && l < (1.0 - threshold)) {
        float denom = (l < 0.5) ? (2.0 * l) : (2.0 - 2.0 * l);
        if (denom > eps)
            s = delta1 / denom;
    }

    s = clamp(s, 0.0, 1.0);

    // HSL -> RGB conversion
    float c = (1.0 - abs(2.0 * l - 1.0)) * s;
    float x = c * (1.0 - abs(mod(h / 60.0, 2.0) - 1.0));
    float m = l - c * 0.5;

    vec3 cc = vec3(0.0);
    if (h >= 0.0 && h < 60.0)       cc = vec3(c, x, 0.0);
    else if (h < 120.0)             cc = vec3(x, c, 0.0);
    else if (h < 180.0)             cc = vec3(0.0, c, x);
    else if (h < 240.0)             cc = vec3(0.0, x, c);
    else if (h < 300.0)             cc = vec3(x, 0.0, c);
    else                            cc = vec3(c, 0.0, x);

    return clamp(cc + m, 0.0, 1.0);
}

void main() {
    ivec2 gid = ivec2(gl_FragCoord.xy);
    vec4 texVal = texelFetch(uInputTexture0, gid, 0);
    vec3 srcPixel = texVal.rgb;

    // Step 1: RGB Curve
    srcPixel = lookupCurve(uRgbCurve, srcPixel);
    srcPixel = clamp(srcPixel, 0.0, 1.0);

    // Step 2: Contrast Curve
    vec3 factorContrast = vec3(1.0);
    if (uHasContrast != 0) {
        vec3 newValue = lookupCurve(uContrastCurve, srcPixel);
        newValue = clamp(newValue, 0.0, 1.0);

        if (uVersion != 0) {
            vec3 huePreserved = RecoverHue(srcPixel, newValue);
            factorContrast = safeDivideVec(huePreserved, srcPixel);
        } else {
            factorContrast = safeDivideVec(newValue, srcPixel);
        }
        factorContrast = clamp(factorContrast, 0.0, 10.0); // Prevent extreme boost
    }

    // Step 3: Luma User Curve
    vec3 factorLumaCurve = vec3(1.0);
    if (uLumaPoints > 2) {
        vec3 newValue = lookupCurve(uLumaUserCurve, srcPixel);
        newValue = clamp(newValue, 0.0, 1.0);
        vec3 huePreserved = RecoverHue(srcPixel, newValue);
        factorLumaCurve = safeDivideVec(huePreserved, srcPixel);
        factorLumaCurve = clamp(factorLumaCurve, 0.0, 10.0);
    }

    // Final combine with clamping
    vec3 result = srcPixel * factorContrast * factorLumaCurve;
    result = clamp(result, 0.0, 1.0);

    FragColor = vec4(result, texVal.a);
}
