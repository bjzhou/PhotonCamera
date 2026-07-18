/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 62a796eabf55c35aa9d70843c4c6670f47fc11b59a789fa59e3107a39383b2c4
 * ELF offsets: 0x304d54d
 * Symbols: highlightrecoveryscalarrgb_fragmentShaderSource
 */

#version 300 es
precision highp float;
precision highp sampler2D;

uniform sampler2D uInputTexture0;

uniform vec2 uTextureSize;

uniform vec3 uBoScale;
uniform vec3 uBoLevel;
uniform vec3 uNeutral;
uniform vec3 uMidGrayScales;
uniform vec3 uFullScales;
uniform vec3 uRatioGreenBlue;
uniform vec3 uRatioRed;
uniform ivec3 uOrder;
uniform ivec3 uOrderBack;
uniform vec2 uMargin;

in vec2 TexCoord;
out vec4 FragColor;

float ProjectedPoint(vec3 params, vec2 p) {
    float a = params[0];
    float b = params[1];
    float ref = params[2];
    float t = 1.0 / a;
    float x = (t * p.x + p.y - b) / (a + t);
    return x / ref;
}

vec3 Forward(vec3 value) {
    vec3 reordered = vec3(value[uOrder[0]], value[uOrder[1]], value[uOrder[2]]);
    return min(reordered * uBoScale, 1.0);
}

vec3 Backwards(vec3 value) {
    vec3 scaled = min(value / uBoScale, uBoLevel);
    return vec3(scaled[uOrderBack[0]], scaled[uOrderBack[1]], scaled[uOrderBack[2]]);
}

vec3 ConvertEdge(vec3 value) {
    if (value[0] < 1.0 && value[1] < 1.0 && value[2] < 1.0) {
        return value * uNeutral;
    }
    
    float greenScale;
    float midGrayScale;
    float fullScale;
    
    if (value[2] >= 1.0) {
        greenScale = ProjectedPoint(uRatioGreenBlue, vec2(value[0], value[1]));
        midGrayScale = uMidGrayScales[2];
        fullScale = uFullScales[2];
    } else if (value[1] >= 1.0) {
        greenScale = ProjectedPoint(uRatioGreenBlue, vec2(value[0], value[2]));
        midGrayScale = uMidGrayScales[1];
        fullScale = uFullScales[1];
    } else {
        greenScale = ProjectedPoint(uRatioRed, vec2(value[1], value[2]));
        midGrayScale = uMidGrayScales[0];
        fullScale = uFullScales[0];
    }
    
    vec3 missingGain = 1.0 / uNeutral;
    float centerValue = missingGain[2] / missingGain[1];
    greenScale = max(1.0, greenScale);
    float blueScale = 1.0;
    
    if (greenScale > midGrayScale) {
        float distance = (greenScale - midGrayScale) / (fullScale - midGrayScale);
        greenScale = mix(centerValue, missingGain[2], distance);
        blueScale = mix(1.0, missingGain[1], distance);
    } else {
        greenScale = mix(1.0, centerValue, (greenScale - 1.0) / (midGrayScale - 1.0));
    }
    
    value[1] *= blueScale;
    value[2] *= greenScale;
    vec3 neutralized = value * uNeutral;
    return neutralized;
}

vec3 Convert(vec3 value) {
    vec3 inputF = Forward(value);
    
    if (inputF[0] < 1.0 && inputF[1] < 1.0 && inputF[2] < 1.0) {
        vec3 edge0 = vec3(1.0, inputF[1], inputF[2]);
        vec3 edge1 = vec3(inputF[0], 1.0, inputF[2]);
        vec3 edge2 = vec3(inputF[0], inputF[1], 1.0);
        
        vec3 diff0 = ConvertEdge(edge0) - edge0 * uNeutral;
        vec3 diff1 = ConvertEdge(edge1) - edge1 * uNeutral;
        vec3 diff2 = ConvertEdge(edge2) - edge2 * uNeutral;

        vec3 mixRatio = inputF / 1.0;
        mixRatio = mixRatio * mixRatio;
        mixRatio = mixRatio * mixRatio;
        mixRatio = mixRatio * mixRatio;

        float sumRatio = mixRatio[0] + mixRatio[1] + mixRatio[2];

        mixRatio = (sumRatio > 1e-6) ? mixRatio / sumRatio : vec3(0.0);
        
        vec3 mixedDiff = diff0 * mixRatio[0] + diff1 * mixRatio[1] + diff2 * mixRatio[2];
        
        return Backwards(inputF * uNeutral + mixedDiff);
    } else {
        return Backwards(ConvertEdge(inputF));
    }
}

void main() {
    vec2 gid = gl_FragCoord.xy;

    vec2 inputPos = gid + uMargin;

    vec2 inputTexCoord = inputPos / uTextureSize;

    vec4 pix = texture(uInputTexture0, inputTexCoord);

    vec3 outVal = Convert(pix.rgb);

    vec3 clamped = clamp(outVal, 0.0, 1.0);
    FragColor = vec4(clamped, pix.a);
}
