/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 2bf98f5b7d9fed788ba4a5fa3a532cee761edddfc47bf54b34e76225416543f5
 * ELF offsets: 0x3023371
 * Symbols: usmShader
 */

#version 300 es
precision highp float;

in vec2 TexCoord;
out vec4 FragColor;

uniform sampler2D inputTexture;
uniform float amount;           // 锐化强度
uniform float darkLimit;        // 暗部限制
uniform float noiseLimit;       // 噪声阈值
uniform float hdrScale;         // HDR缩放因子
uniform vec2 texelSize;         // 纹理像素大小

// 高斯权重 (5x5 kernel)
uniform float centerWeight;     // 中心权重
uniform vec4 gaussWeights;      // 高斯权重 (4个方向)
uniform int numElements;        // 权重元素数量

// 计算锐化因子
float UsmFactor(float value, float blurred, float sharpenAmount, float darkLimit, float noiseLimit, float hdrScale) {
    // 计算锐化强度，考虑暗部限制
    float amount = clamp(sharpenAmount, 0.0, 1000.0) / 100.0;
    
    // 计算差值
    float diff = value - blurred;
    
    // 计算噪声限制
    float noise = 1.0;
    if (noiseLimit > 0.0) {
        float absDiff = abs(diff) * hdrScale;
        noise = 1.0 / (1.0 + absDiff / noiseLimit);
    }
    
    return amount * noise * diff;
}

// 高斯模糊函数
float gaussianBlur(sampler2D tex, vec2 coord, vec2 direction) {
    float sum = 0.0;
    float weightSum = 0.0;
    
    // 使用5x5高斯核
    for (int i = -2; i <= 2; i++) {
        float weight = (i == 0) ? centerWeight : gaussWeights[abs(i) - 1];
        vec2 offset = direction * float(i) * texelSize;
        float sample = dot(texture(tex, coord + offset).rgb, vec3(0.299, 0.587, 0.114));
        sum += sample * weight;
        weightSum += weight;
    }
    
    return sum / weightSum;
}

void main() {
    vec2 texelSize = 1.0 / vec2(textureSize(inputTexture, 0));
    
    // 获取中心像素
    vec4 center = texture(inputTexture, TexCoord);
    float gray = dot(center.rgb, vec3(0.299, 0.587, 0.114));
    
    // 计算高斯模糊
    float blurredX = gaussianBlur(inputTexture, TexCoord, vec2(1.0, 0.0));
    float blurredY = gaussianBlur(inputTexture, TexCoord, vec2(0.0, 1.0));
    float blurred = (blurredX + blurredY) * 0.5;
    
    // 应用USM锐化
    float sharpFactor = UsmFactor(gray, blurred, amount, darkLimit, noiseLimit, hdrScale);
    
    // 计算锐化后的颜色
    vec3 sharpened = center.rgb + sharpFactor;
    
    // 限制在有效范围内
    sharpened = clamp(sharpened, 0.0, 1.0);
    
    FragColor = vec4(sharpened, center.a);
}
