/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 9f2ec2781a1b115048553c5aba7b729e60c43f6332cc9e4046a4866da43e658e
 * ELF offsets: 0x3073d21
 * Symbols: sdr_icc_fragmentShaderSource
 */

#version 300 es
precision highp float;
precision highp sampler2D;
uniform sampler2D uInputTexture0;
uniform ivec2 uInMargin;
uniform int uIsHdr;
out vec4 FragColor;

const float kLim = 0.04045;
const float kLimInv = 0.0031308;
const float kDiv = 12.92;
const float kOffset = 0.055;
const float kScale = 1.055;
const float kGamma = 2.4;

const float kLStarEpsilon = 216.0 / 24389.0;
const float kLStarKappa = 24389.0 / 27.0;

const mat3 convertSdr = mat3(
    vec3( 1.548623, -0.062141, -0.014745),
    vec3(-0.491106, 1.075171, -0.076391),
    vec3(-0.057517, -0.013030, 1.091137)
);

const mat3 convertHdr = mat3(
    vec3( 1.262651, -0.008673,  0.008529),
    vec3(-0.213032,  1.023180,  -0.000106),
    vec3(-0.049619, -0.014507,  0.991576)
);

vec3 linear2sRgb(vec3 val) {
    vec3 linearPart = kDiv * val;
    vec3 exponentialPart = kScale * pow(max(val, vec3(0.0)), vec3(1.0 / kGamma)) - kOffset;
    bvec3 condition = lessThanEqual(val, vec3(kLimInv));
    vec3 selector = vec3(condition);
    return mix(exponentialPart, linearPart, selector);
}

void main() {
    ivec2 gid = ivec2(gl_FragCoord.xy);
    ivec2 sdrPos = gid + uInMargin;

    vec3 rawSdr = texelFetch(uInputTexture0, sdrPos, 0).rgb;

    vec3 sdrLiner= pow(rawSdr, vec3(2.2));

    vec3 sdrP3 = sdrLiner;
    if (uIsHdr == 1) {
        sdrP3 = convertHdr * sdrLiner;
    } else {
        sdrP3 = convertSdr * sdrLiner;
    }

    vec3 sRgb = linear2sRgb(sdrP3);

    FragColor = vec4(sRgb, 1.0);
}
