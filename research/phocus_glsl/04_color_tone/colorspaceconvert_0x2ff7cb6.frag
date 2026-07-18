/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 4af76a0e1e5dc2e9d4788f439d2c1615d0e1086a480d91d016b8d12d9a51f5d6
 * ELF offsets: 0x2ff7cb6
 * Symbols: colorspaceconvert_fragmentShaderSource
 */

#version 300 es
precision highp float;
precision highp sampler2D;

// define white color chroma adaptation conversion types
const int CHROMA_CONVERT_IGNORE         = 0;
const int CHROMA_CONVERT_D50_TO_D65     = 1;
const int CHROMA_CONVERT_D65_TO_D50     = 2;

// define target transfer function value
const int E_TRANSFER_FUNC_GAMMA22       = 0;
const int E_TRANSFER_FUNC_SRGB          = 1;
const int E_TRANSFER_FUNC_PQ            = 2;
const int E_TRANSFER_FUNC_NONE          = 3;
const int E_TRANSFER_FUNC_GAMMA2199     = 4;

// define const matrices, GLSL mat3() uses COLUMN-MAJOR order
// Bradford chromatic adaptation D50 -> D65
const mat3 kChromaMatrixD50ToD65 = mat3(
    0.9555766, -0.0282895,  0.0122982,   // column 0
   -0.0230393,  1.0099416, -0.0204830,   // column 1
    0.0631636,  0.0210077,  1.3299098    // column 2
);

// Bradford chromatic adaptation D65 -> D50
const mat3 kChromaMatrixD65ToD50 = mat3(
    1.0478112,  0.0295424, -0.0092345,   // column 0
    0.0228866,  0.9904844,  0.0150436,   // column 1
   -0.0501270, -0.0170491,  0.7521316    // column 2
);


in vec2 TexCoord;
out vec4 FragColor;

uniform sampler2D uInputTexture0;

// -- color space conversion matrices -- //
// source color space RGB -> XYZ matrix
uniform mat3 uSrcToXYZMatrix;
// XYZ -> target color space RGB matrix (need to be inverted from standard icc profile)
uniform mat3 uXYZToDstMatrix;

// chromatic adaption option
uniform int uChromaOption;
// target transfer function option
uniform int uTargetTF;

// process hdr option
uniform int uProcessHdr;
// hdr parameters
// const max value
uniform float uHdrMaxGain;
// limited value from color correction settings
uniform float uHdrLimitGain;
// configurable gamma encode value (e.g. 2.19921875 for Adobe RGB)
uniform float uGammaEncode;


// Transfer functions
// encode linear rgb
void Gamma22_EOTF(inout vec3 color) {
    // for hdr only clamp 0
    color = max(color, vec3(0.0f));
    color = pow(color, vec3(2.2f));
}

void Gamma22_EOTF_Inverse(inout vec3 color) {
    // for hdr only clamp 0
    color = max(color, vec3(0.0f));
    color = pow(color, vec3(1.0f / 2.2f));
}

void PQ_EOTF_Inverse(inout vec3 color) {
    // Normalize linear light [0, maxGain] to PQ input [0, 1] where 1.0 = 10000 nits
    color = color / uHdrMaxGain;
    color = max(color, vec3(0.0));
    vec3 m1 = vec3(0.1593017578125f);
    vec3 m2 = vec3(78.84375f);
    vec3 c1 = vec3(0.8359375f);
    float c2 = 18.8515625f;
    float c3 = 18.6875f;
    vec3 linear_m1 = pow(color, m1);
    color = pow((c1 + linear_m1 * c2) / (vec3(1.0f) + linear_m1 * c3), m2);
}

// Configurable gamma encode (e.g. gamma 2.19921875 for Adobe RGB)
void GammaCustom_EOTF_Inverse(inout vec3 color) {
    color = max(color, vec3(0.0));
    color = pow(color, vec3(1.0 / uGammaEncode));
}

// 颜色空间转换主函数
// Todo - 目前不支持处理输入为LStar色域的流程
void ConvertColorSpace(inout vec3 rgb) {
    // 步骤1: 输入解码，目前HDR流程中已经是Linear RGB色域，因此不需要进行解码；而SDR为gamma编码，需要对应解码
    if (uProcessHdr == 0) {
        Gamma22_EOTF(rgb);
    }

    // 步骤2: Source RGB -> XYZ (相对于Hasselblad白点)
    rgb = uSrcToXYZMatrix * rgb;

    // 步骤3: 色度适配 Bradford变换, 目前支持D50与D65之间互转
    switch (uChromaOption) {
        case CHROMA_CONVERT_D50_TO_D65:
            rgb = kChromaMatrixD50ToD65 * rgb;
            break;

        case CHROMA_CONVERT_D65_TO_D50:
            rgb = kChromaMatrixD65ToD50 * rgb;
            break;

        case CHROMA_CONVERT_IGNORE:
        default:
            break;
    }

    // 步骤4：XYZ -> Target RGB
    rgb = uXYZToDstMatrix * rgb;

    // 步骤5：Encode transfer function
    switch (uTargetTF) {
        case E_TRANSFER_FUNC_GAMMA22:
            Gamma22_EOTF_Inverse(rgb);
            break;
        case E_TRANSFER_FUNC_PQ:
            PQ_EOTF_Inverse(rgb);
            break;
        case E_TRANSFER_FUNC_GAMMA2199:
            GammaCustom_EOTF_Inverse(rgb);
            break;
        case E_TRANSFER_FUNC_SRGB: // not support yet
        case E_TRANSFER_FUNC_NONE:
        default:
            break;
    }
}

void main() {
    vec4 pixelColor = texture(uInputTexture0, TexCoord);
    float alpha = pixelColor.a;

    // 应用颜色空间转换
    ConvertColorSpace(pixelColor.rgb);
    FragColor = vec4(pixelColor.rgb, alpha);
}
