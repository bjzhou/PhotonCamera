/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 6f5a415b9a5b03f63076fed61003d2bf09f8794669895db848df91efef8e2adb
 * ELF offsets: 0x3091172
 * Symbols: blend_film_fragmentShaderSource
 */

#version 300 es
precision highp float;
precision highp int;
precision highp sampler2D;

out vec4 FragColor;

layout(std140) uniform BlendParams {
    vec4 alphaBlend;
    float grainScale;
    float grainOffset;
    float blurSigma;
    float blurSum;
    float brightScale;
    float invGamma;
    int   blurRadius;
    int   useLumChannel; // 0 rgb, 1 hsv-luma, 2 ycc
    int   colorMode;
    int   additiveMode;
    int   sqrtMode;
    int   blurMode;     // 0 none,1 box,2 gaussian
    float gainReduction;
    float _pad0; float _pad1; float _pad2;
} opts;

uniform sampler2D uInputTexture0; // filmGrainImg, 0..1 (stored in RGBA16F)
uniform sampler2D uInputTexture1; // inImg,       0..1

const float kMaxRange = 65535.0;
const float PI = 3.14159265358979323846;

vec3 Rgb2Hsv_360(vec3 rgb65535) {
    float mMin = min(min(rgb65535.r, rgb65535.g), rgb65535.b);
    float mMax = max(max(rgb65535.r, rgb65535.g), rgb65535.b);
    float chroma = mMax - mMin;

    vec3 hsv = vec3(0.0, 0.0, mMax);
    hsv.y = (mMax == 0.0) ? 0.0 : (chroma / mMax);

    if (chroma == 0.0) {
        hsv.x = 0.0;
    } else if (mMax == rgb65535.r) {
        hsv.x = (rgb65535.g >= rgb65535.b)
            ? 60.0 * (rgb65535.g - rgb65535.b) / chroma
            : 60.0 * (rgb65535.g - rgb65535.b) / chroma + 360.0;
    } else if (mMax == rgb65535.g) {
        hsv.x = 60.0 * (rgb65535.b - rgb65535.r) / chroma + 120.0;
    } else {
        hsv.x = 60.0 * (rgb65535.r - rgb65535.g) / chroma + 240.0;
    }
    return hsv; // (H in degrees 0..360, S 0..1, V 0..65535)
}

vec3 Hsv2Rgb_360(vec3 hsv) {
    float hue = hsv.x / 60.0;
    int i = int(floor(hue));
    float f = fract(hue);
    if ((i & 1) == 0) f = 1.0 - f;

    float m = hsv.z * (1.0 - hsv.y);
    float n = hsv.z * (1.0 - hsv.y * f);

    int idx = ((i % 6) + 6) % 6;
    if (idx == 0) return vec3(hsv.z, n, m);
    if (idx == 1) return vec3(n, hsv.z, m);
    if (idx == 2) return vec3(m, hsv.z, n);
    if (idx == 3) return vec3(m, n, hsv.z);
    if (idx == 4) return vec3(n, m, hsv.z);
    return vec3(hsv.z, m, n);
}

vec3 rgb2ycc(vec3 rgb65535) {
    return vec3((rgb65535.r + 2.0*rgb65535.g + rgb65535.b) * 0.25,
                rgb65535.r - rgb65535.g,
                rgb65535.b - rgb65535.g);
}

vec3 ycc2rgb(vec3 ycc) {
    float lr = 3.0 * ycc.y - ycc.z;
    float lb = 3.0 * ycc.z - ycc.y;
    float ly4 = ycc.x * 4.0;

    float r = (lr + ly4) * 0.25;
    float b = (lb + ly4) * 0.25;
    r = max(0.0, r);
    b = max(0.0, b);
    float g = (ly4 - (r + b)) * 0.5;
    g = max(0.0, g);
    return vec3(r, g, b);
}

vec3 BoxBlur_01(ivec2 base, int radius, float amount) {
    ivec2 size = textureSize(uInputTexture1, 0);
    vec3 sum = vec3(0.0);
    for (int j = -radius; j <= radius; ++j) {
        for (int i = -radius; i <= radius; ++i) {
            ivec2 p = clamp(base + ivec2(i, j), ivec2(0), size - 1);
            sum += texelFetch(uInputTexture1, p, 0).rgb;
        }
    }
    return sum / max(amount, 1e-6);
}

float GaussianW(int x, int y, float sigma) {
    float sqrXY = float(x*x + y*y);
    float sqr2Sig = 2.0 * sigma * sigma;
    float exponent = sqrXY / max(sqr2Sig, 1e-6);
    return 1.0 / (exp(exponent) * sqr2Sig * PI);
}

vec3 GaussianBlur_01(ivec2 base, int radius, float sigma) {
    ivec2 size = textureSize(uInputTexture1, 0);
    vec3 sum = vec3(0.0);
    float gsum = 0.0;
    for (int j = -radius; j <= radius; ++j) {
        for (int i = -radius; i <= radius; ++i) {
            ivec2 p = clamp(base + ivec2(i, j), ivec2(0), size - 1);
            float w = GaussianW(i, j, sigma);
            sum += w * texelFetch(uInputTexture1, p, 0).rgb;
            gsum += w;
        }
    }
    return (gsum > 0.0) ? (sum / gsum) : texelFetch(uInputTexture1, base, 0).rgb;
}

void main() {
    ivec2 gid = ivec2(gl_FragCoord.xy);
    ivec2 size = textureSize(uInputTexture1, 0);

    ivec2 gidAdjust = clamp(gid + ivec2(opts.blurRadius), ivec2(0), size - 1);

    vec4 inPix01 = texelFetch(uInputTexture1, gidAdjust, 0);
    vec3 inPix65535 = inPix01.rgb * kMaxRange;

    vec3 grainPix65535 = texelFetch(uInputTexture0, gid, 0).rgb * kMaxRange;

    vec3 blur01;
    if (opts.blurMode == 1) blur01 = BoxBlur_01(gid, opts.blurRadius, opts.blurSum);
    else if (opts.blurMode == 2) blur01 = GaussianBlur_01(gid, opts.blurRadius, opts.blurSigma);
    else blur01 = inPix01.rgb;

    vec3 blur65535 = blur01 * kMaxRange;

    vec3 inVal;
    if (opts.useLumChannel == 1)      inVal = Rgb2Hsv_360(blur65535).zxy; // (V,H,S)
    else if (opts.useLumChannel == 2) inVal = rgb2ycc(blur65535);
    else                              inVal = blur65535;

    vec3 grainVal;
    if (opts.useLumChannel == 2) {
        vec3 ycc = rgb2ycc(grainPix65535);
        grainVal = vec3(ycc.x - opts.grainOffset, ycc.yz) / max(opts.grainScale, 1e-6);
        if (grainVal.x > 0.0) grainVal.x *= opts.brightScale;
    } else {
        grainVal = (grainPix65535 - opts.grainOffset) / max(opts.grainScale, 1e-6);
        grainVal = mix(grainVal, grainVal * opts.brightScale, step(0.0, grainVal));
    }

    vec3 alpha = opts.alphaBlend.rgb;
    float safeGain = (abs(opts.gainReduction) < 1e-6) ? 1.0 : opts.gainReduction;

    vec3 finalVal;
    if (opts.additiveMode > 0) {
        vec3 base = (opts.useLumChannel > 0) ? vec3(inVal.x) : inVal;
        base = pow(abs(base * safeGain / 4.0), vec3(opts.invGamma));
        finalVal = alpha * base * grainVal;
    } else {
        if (opts.useLumChannel == 1 || opts.useLumChannel == 2)
            finalVal = vec3(grainVal.x * 0.5 + 0.5, grainVal.yz);
        else
            finalVal = grainVal * 0.5 + 0.5;
    }

    finalVal /= safeGain;

    vec3 noiseVal;
    if (opts.additiveMode > 0) {
        noiseVal = inVal + finalVal;
    } else {
        if (opts.useLumChannel == 1) {
            noiseVal = mix(inVal, vec3(finalVal.x * inVal.x), alpha);
        } else if (opts.useLumChannel == 2) {
            noiseVal.x  = mix(inVal.x, finalVal.x * inVal.x, alpha.x);
            noiseVal.yz = inVal.yz + alpha.yz * finalVal.yz * inVal.x;
            float lumChange = (noiseVal.x + 1.0) / (inVal.x + 1.0);
            noiseVal.yz *= lumChange;
        } else {
            noiseVal = mix(inVal, finalVal * inVal, alpha);
        }
    }
    noiseVal.x = max(0.0, noiseVal.x);

    vec3 rgb65535;
    if (opts.useLumChannel == 1) {
        if (opts.colorMode > 0) {
            float h = noiseVal.y;
            if (h > 360.0) h -= 360.0;
            if (h < 0.0)   h += 360.0;
            float s = clamp(noiseVal.z, 0.0, 1.0);
            rgb65535 = Hsv2Rgb_360(vec3(h, s, noiseVal.x));
        } else {
            rgb65535 = Hsv2Rgb_360(vec3(inVal.y, inVal.z, noiseVal.x));
        }
    } else if (opts.useLumChannel == 2) {
        rgb65535 = ycc2rgb(noiseVal);
    } else {
        rgb65535 = clamp(noiseVal, 0.0, kMaxRange);
    }

    vec3 out01 = clamp(rgb65535 / kMaxRange, 0.0, 1.0);
    FragColor = vec4(out01, inPix01.a);
}
