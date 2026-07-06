package com.hinnka.mycamera.lut

/**
 * Shared BM3D shader snippets used by bitmap chroma noise reduction.
 *
 * Only pass0 is kept here: it is a cross-bilateral chroma filter guided by luma,
 * and does not change the existing denoiseprofile luminance/noise-reduction path.
 */
object ChromaDenoiseShaders {
    const val SIGMA_STRENGTH_AT_SLIDER_ONE = 6.0f

    val PASS_CHROMA_DENOISE = """
        #version 300 es
        precision highp float;
        in vec2 vTexCoord;
        out vec4 fragColor;
        uniform sampler2D uInputTexture;
        uniform vec2 uTexelSize;
        uniform mat4 uTexMatrix;
        uniform float uH;
        uniform vec2 uNoiseModel;

        vec3 rgb2ycbcr(vec3 rgb) {
            float y = dot(rgb, vec3(0.2126, 0.7152, 0.0722));
            return vec3(y,
                        dot(rgb, vec3(-0.169, -0.331,  0.5  )) + 0.5,
                        dot(rgb, vec3( 0.5,  -0.419, -0.081 )) + 0.5);
        }
        vec3 ycbcr2rgb(vec3 yuv) {
            float cb = yuv.y - 0.5, cr = yuv.z - 0.5;
            return vec3(yuv.x + 1.402  * cr,
                        yuv.x - 0.3441 * cb - 0.7141 * cr,
                        yuv.x + 1.772  * cb);
        }
        float noiseSigmaForLuma(float luma) {
            return sqrt(max(uNoiseModel.x * max(luma, 0.0) + uNoiseModel.y, 1e-10));
        }

        void main() {
            vec3 oriRgb = texture(uInputTexture, vTexCoord).rgb;
            if (uH <= 0.00001) { fragColor = vec4(oriRgb, 1.0); return; }

            vec3 yuv = rgb2ycbcr(oriRgb);
            vec2 sumUV = vec2(0.0);
            float sumW = 0.0;

            float stepScale = 1.25 + uH * 3.5;
            float localH = uH * noiseSigmaForLuma(yuv.x);
            float invChromaH2 = 1.0 / max((localH * 1.5) * (localH * 1.5), 1e-6);
            float invLumaH2 = 1.0 / max((localH * 0.5) * (localH * 0.5), 1e-6);

            for (int x = -2; x <= 2; x++) {
                for (int y = -2; y <= 2; y++) {
                    vec2 ofs = vec2(float(x), float(y)) * uTexelSize * stepScale;
                    vec3 sYuv = rgb2ycbcr(texture(uInputTexture, vTexCoord + ofs).rgb);

                    float wS = exp(-float(x * x + y * y) * 0.25);
                    float dL = sYuv.x - yuv.x;
                    vec2 dC = sYuv.yz - yuv.yz;
                    float wR = exp(-(dL * dL) * invLumaH2 - dot(dC, dC) * invChromaH2);
                    float w = wS * wR;
                    if (x == 0 && y == 0) w = max(w, 0.1);
                    sumUV += sYuv.yz * w;
                    sumW += w;
                }
            }
            yuv.yz = sumUV / sumW;
            fragColor = vec4(ycbcr2rgb(yuv), 1.0);
        }
    """.trimIndent()
}