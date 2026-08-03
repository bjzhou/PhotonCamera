/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: a2290578fd48972ba0cb065428ae5307ac013d2b0d0f4607d20014b480e3c842
 * ELF offsets: 0x3034aab
 * Symbols: customColorSpaceShader
 */

#version 300 es
precision highp float;
precision highp sampler2D;

in vec2 TexCoord;
out vec4 FragColor;

uniform sampler2D inputTexture;
uniform mat3 combinedMatrix;
uniform vec3 gamma;
uniform vec3 whitePoint;
uniform vec3 blackPoint;
uniform int isLinearized; // 0=原始自定义空间, 1=已线性化

// 应用自定义gamma校正
vec3 applyCustomGamma(vec3 color, vec3 gamma) {
    return pow(max(color, vec3(0.0)), gamma);
}

// 应用逆gamma校正（从自定义空间到线性）
vec3 applyInverseGamma(vec3 color, vec3 gamma) {
    vec3 invGamma = vec3(1.0) / gamma;
    return pow(max(color, vec3(0.0)), invGamma);
}

// 应用白点和黑点校正
vec3 applyWhiteBlackPoint(vec3 color, vec3 whitePoint, vec3 blackPoint) {
    // 从黑点到白点的线性映射，添加除零保护
    vec3 diff = whitePoint - blackPoint;
    vec3 result;
    for (int i = 0; i < 3; i++) {
        if (abs(diff[i]) < 0.001) {
            result[i] = color[i]; // 如果差值为0，保持原值
        } else {
            result[i] = (color[i] - blackPoint[i]) / diff[i];
        }
    }
    return result;
}

void main() {
    vec4 inputColor = texture(inputTexture, TexCoord);
    vec3 color = inputColor.rgb;

    // 调试：在左上角显示输入颜色
    if (TexCoord.x < 0.1 && TexCoord.y < 0.1) {
        FragColor = vec4(color, 1.0);
        return;
    }

    if (isLinearized == 0) {
        // 原始自定义空间：需要先线性化
        // 1. 应用逆gamma校正，将自定义gamma空间转换为线性空间
       // color = applyInverseGamma(color, gamma);

        // 2. 应用白点和黑点校正
        color = applyWhiteBlackPoint(color, whitePoint, blackPoint);
    } else {
        // 已经线性化：直接应用白点和黑点校正
        color = applyWhiteBlackPoint(color, whitePoint, blackPoint);
    }

    // 3. 应用组合转换矩阵（自定义RGB -> XYZ -> Extended Linear Display P3）
    color = combinedMatrix * color;

    // 4. 确保结果在有效范围内
    color = max(color, vec3(0.0));

    // 调试：在右上角显示输出颜色
    if (TexCoord.x > 0.9 && TexCoord.y < 0.1) {
        FragColor = vec4(color, 1.0);
        return;
    }

    FragColor = vec4(color, inputColor.a);
}
