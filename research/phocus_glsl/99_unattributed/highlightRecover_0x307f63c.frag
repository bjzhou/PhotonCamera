/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 27f287476ef495e8bc566249b46216f0cba1d8540d83cee77915f93dad53a1f5
 * ELF offsets: 0x307f63c
 * Symbols: highlightRecoverShader
 */

#version 300 es
precision highp float;

in vec2 TexCoord;
out vec4 FragColor;

uniform sampler2D inputTexture;
uniform vec4 neutGain;
uniform vec4 nLargestGain;
uniform vec4 boInThr;
uniform vec4 boIn2Thr;
uniform vec4 boBlendThr;
uniform vec4 boBlendDiff;

// ComputeIsoHiPoly函数
vec4 ComputeIsoHiPoly(float lowX, float lowY, float alphaAtOne) {
    float lowXSq = lowX * lowX;
    float aContrib0 = (0.5 * alphaAtOne) * (1.0 - lowXSq);
    vec4 polyCoeff;
    polyCoeff.g = (lowY - 1.0 + aContrib0) / (-lowXSq * 0.5 + lowX - 0.5);
    polyCoeff.b = (alphaAtOne - polyCoeff.g) * 0.5;
    polyCoeff.r = 1.0 - polyCoeff.g - polyCoeff.b;
    return polyCoeff;
}

// BoColorBlend函数
vec4 BoColorBlend(vec4 orgColor, vec4 boColor, vec4 boBlendThr, vec4 boBlendDiff) {
    vec4 diff = orgColor - boBlendThr;
    vec4 normdiff = diff / boBlendDiff;
    vec4 normdiff01 = clamp(normdiff, 0.0, 1.0);
    vec4 boblend = mix(orgColor, boColor, normdiff01);
    return boblend;
}

vec4 recoverBo(vec4 iRGB, vec4 neutGain, vec4 nLargestGain, vec4 boInThr, 
               vec4 satNCmp, vec4 boBlendThr, vec4 boBlendDiff) {
    const vec4 nearzeroVec = vec4(0.1, 0.1, 0.1, 0.1);
    const vec4 oneVec = vec4(1.0, 1.0, 1.0, 1.0);
    const vec4 nearOneVec = oneVec - nearzeroVec;
    
    // Color Ratios
    vec4 cRatio = vec4(neutGain.r/neutGain.g,  // Red / Green
                       neutGain.r/neutGain.b,  // Red / Blue
                       neutGain.b/neutGain.g,  // Blue / Green
                       1.0);                   // dummy
    
    // Compute two sets of candidates for BO Recovery
    vec4 hrCol0 = vec4(iRGB.g/cRatio.r,  // Red from Green
                       iRGB.r*cRatio.r,  // Green from Red
                       iRGB.r*cRatio.g,  // Blue from Red
                       iRGB.a);
    vec4 hrCol1 = vec4(iRGB.b/cRatio.g,  // Red from Blue
                       iRGB.b*cRatio.b,  // Green from Blue
                       iRGB.g/cRatio.b,  // Blue from Green
                       iRGB.a);
    
    // Decide which estimates are in fact useable for BO recovery
    vec4 satCmp = step(boInThr, iRGB); // 1 if boInThr<iRGB, i.e. if saturated
    satCmp += satNCmp;
    satCmp = step(nearOneVec, satCmp);
    vec4 nonSatC = oneVec - satCmp;
    
    // if one of the two candidates is calculated on a burned out color then this candidate
    // should only be used if it is the maximum of the two
    vec4 largestCand0 = step(hrCol1, hrCol0); // 1 if green from blue < green from red, etc.
    vec4 sCoeff0 = vec4(nonSatC.g + largestCand0.r, // either green non-sat or red from green largest
                        nonSatC.r + largestCand0.g, // either red non-sat or green from red largest
                        nonSatC.r + largestCand0.b, // either red non-sat or blue from red largest
                        0.0);
    vec4 coeff0 = step(nearOneVec, sCoeff0); // normalize
    vec4 largestCand1 = oneVec - largestCand0;
    vec4 sCoeff1 = vec4(nonSatC.b + largestCand1.r, // either blue non-sat or red from blue largest
                        nonSatC.b + largestCand1.g, // either blue non-sat or green from blue largest
                        nonSatC.g + largestCand1.b, // either green non-sat or blue from green largest
                        0.0);
    vec4 coeff1 = step(nearOneVec, sCoeff1); // normalize
    
    // Combine candidates channel burned out or both burned out
    vec4 sumUseBo = coeff0 + coeff1;
    
    // Compute Bo recovered values
    vec4 sumBoColor = vec4(hrCol0.r * coeff0.r + hrCol1.r * coeff1.r,
                           hrCol0.g * coeff0.g + hrCol1.g * coeff1.g,
                           hrCol0.b * coeff0.b + hrCol1.b * coeff1.b,
                           1.0);
    vec4 meanColor = sumBoColor / sumUseBo;
    vec4 mmaxColor = max(meanColor, iRGB); // Colors are never less than measured iRGB
    
    // Now decide on using Bo recovery or not
    vec4 blendColor = BoColorBlend(iRGB, mmaxColor, boBlendThr, boBlendDiff);
    blendColor.g = (satNCmp.g > 0.1) ? mmaxColor.g : blendColor.g;
    blendColor.b = (satNCmp.b > 0.1) ? mmaxColor.b : blendColor.b;
    return blendColor;
}

void main() {
    vec2 texelSize = 1.0 / vec2(textureSize(inputTexture, 0));

    vec4 iRGB = texture(inputTexture, TexCoord);
    vec4 sat2Cmp = step(boIn2Thr, iRGB); // 1 if center near-saturated

    vec4 satNCmp = vec4(0.0);

    vec2 offsets[8] = vec2[](
        vec2(-1.0, -1.0), vec2(0.0, -1.0), vec2(1.0, -1.0),
        vec2(-1.0,  0.0),                  vec2(1.0,  0.0),
        vec2(-1.0,  1.0), vec2(0.0,  1.0), vec2(1.0,  1.0)
    );
    
    for(int i = 0; i < 8; i++) {
        vec2 sampleCoord = TexCoord + offsets[i] * texelSize;
        vec4 neighborPixel = texture(inputTexture, sampleCoord);
        satNCmp += step(boInThr, neighborPixel); // 1 if neighbour saturated
    }
    
    sat2Cmp *= satNCmp; // combine

    vec4 hr = recoverBo(iRGB, neutGain, nLargestGain, boInThr, sat2Cmp, boBlendThr, boBlendDiff);
    vec4 nHrRGB = hr * neutGain; // neutralized values
    nHrRGB.a = iRGB.a;
    
    FragColor = nHrRGB;
}
