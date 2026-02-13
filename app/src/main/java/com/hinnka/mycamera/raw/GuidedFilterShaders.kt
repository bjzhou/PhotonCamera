package com.hinnka.mycamera.raw

object GuidedFilterShaders {

    /**
     * Pass 1: 计算引导图 I (预平滑) 和输入图 p 的水平累加
     * R: sum_I, G: sum_P, B: sum_IP, A: sum_II
     */
    val PASS1_HORIZONTAL_MEAN = """
        #version 300 es
        precision highp float;
        in vec2 vTexCoord;
        out vec4 fragColor;
        uniform sampler2D uInputTexture;
        uniform vec2 uTexelSize;
        uniform int uRadius;
        
        float getLuma(vec3 rgb) {
            return dot(rgb, vec3(0.299, 0.587, 0.114));
        }

        void main() {
            float sumI = 0.0, sumP = 0.0, sumIP = 0.0, sumII = 0.0;
            for (int i = -uRadius; i <= uRadius; i++) {
                vec2 offset = vec2(float(i) * uTexelSize.x, 0.0);
                float p = getLuma(texture(uInputTexture, vTexCoord + offset).rgb);
                // 预平滑引导图：取左右均值
                float pL = getLuma(texture(uInputTexture, vTexCoord + offset - vec2(uTexelSize.x, 0.0)).rgb);
                float pR = getLuma(texture(uInputTexture, vTexCoord + offset + vec2(uTexelSize.x, 0.0)).rgb);
                float I = (p + pL + pR) * 0.3333; 
                
                sumI += I; sumP += p; sumIP += I * p; sumII += I * I;
            }
            fragColor = vec4(sumI, sumP, sumIP, sumII);
        }
    """.trimIndent()

    /**
     * Pass 2: 垂直累加并计算 a, b 系数
     * R: a, G: b, B: mean_I (用于 Pass 4)
     */
    val PASS2_VERTICAL_MEAN_COEF = """
        #version 300 es
        precision highp float;
        in vec2 vTexCoord;
        out vec4 fragColor;
        uniform sampler2D uInputTexture;
        uniform vec2 uTexelSize;
        uniform int uRadius;
        uniform float uEpsilon;
        
        void main() {
            float sumI = 0.0, sumP = 0.0, sumIP = 0.0, sumII = 0.0;
            for (int i = -uRadius; i <= uRadius; i++) {
                vec4 s = texture(uInputTexture, vTexCoord + vec2(0.0, float(i) * uTexelSize.y));
                sumI += s.r; sumP += s.g; sumIP += s.b; sumII += s.a;
            }
            float count = float((2 * uRadius + 1) * (2 * uRadius + 1));
            float mI = sumI / count, mP = sumP / count, mIP = sumIP / count, mII = sumII / count;
            float varI = mII - mI * mI;
            float covIP = mIP - mI * mP;
            
            // 增加噪声抗性：varI 越小 a 越趋近 0，输出 meanP。
            // 增加一个微小的 offset 强制抹平极小颗粒
            float a = covIP / (varI + uEpsilon + 0.0002);
            float b = mP - a * mI;
            fragColor = vec4(a, b, mI, 1.0);
        }
    """.trimIndent()

    /**
     * Pass 3: 水平平滑 a, b
     */
    val PASS3_HORIZONTAL_MEAN_AB = """
        #version 300 es
        precision highp float;
        in vec2 vTexCoord;
        out vec4 fragColor;
        uniform sampler2D uInputTexture;
        uniform vec2 uTexelSize;
        uniform int uRadius;
        void main() {
            vec4 sum = vec4(0.0);
            for (int i = -uRadius; i <= uRadius; i++) {
                sum += texture(uInputTexture, vTexCoord + vec2(float(i) * uTexelSize.x, 0.0));
            }
            fragColor = sum;
        }
    """.trimIndent()

    /**
     * Pass 4: 垂直平滑 a, b 并合成
     */
    val PASS4_VERTICAL_MEAN_OUTPUT = """
        #version 300 es
        precision highp float;
        in vec2 vTexCoord;
        out vec4 fragColor;
        uniform sampler2D uInputTexture;
        uniform sampler2D uOriginalTexture;
        uniform vec2 uTexelSize;
        uniform int uRadius;
        uniform float uStrength;
        uniform float uChromaStrength;
        uniform float uChromaStride;

        float getLuma(vec3 rgb) {
            return dot(rgb, vec3(0.299, 0.587, 0.114));
        }
        vec3 rgb2ycbcr(vec3 rgb) {
            float y = getLuma(rgb);
            return vec3(y, dot(rgb, vec3(-0.169, -0.331, 0.5)) + 0.5, dot(rgb, vec3(0.5, -0.419, -0.081)) + 0.5);
        }
        vec3 ycbcr2rgb(vec3 y) {
            float cb = y.y - 0.5, cr = y.z - 0.5;
            return vec3(y.x + 1.402 * cr, y.x - 0.3441 * cb - 0.7141 * cr, y.x + 1.772 * cb);
        }

        void main() {
            vec4 sum = vec4(0.0);
            for (int i = -uRadius; i <= uRadius; i++) {
                sum += texture(uInputTexture, vTexCoord + vec2(0.0, float(i) * uTexelSize.y));
            }
            float count = float((2 * uRadius + 1) * (2 * uRadius + 1));
            float meanA = sum.r / count, meanB = sum.g / count;

            vec3 oriRgb = texture(uOriginalTexture, vTexCoord).rgb;
            
            // --- 关键改进：在这里对亮度做一次 3x3 均值去小颗粒 ---
            float p = 0.0;
            for(int x=-1; x<=1; x++) {
                for(int y=-1; y<=1; y++) {
                    p += getLuma(texture(uOriginalTexture, vTexCoord + vec2(x,y)*uTexelSize).rgb);
                }
            }
            p /= 9.0;
            
            float filteredY = meanA * p + meanB;
            float finalY = mix(getLuma(oriRgb), filteredY, uStrength);

            // 强力色度降噪
            vec3 yuv = rgb2ycbcr(oriRgb);
            if (uChromaStrength > 0.01) {
                vec2 sumUV = vec2(0.0); float sumW = 0.0;
                for (int x = -2; x <= 2; x++) {
                    for (int y = -2; y <= 2; y++) {
                        vec3 s = texture(uOriginalTexture, vTexCoord + vec2(x,y) * uTexelSize * uChromaStride).rgb;
                        vec3 sYuv = rgb2ycbcr(s);
                        float w = exp(-float(x*x+y*y)/4.0) * (1.0 - smoothstep(0.1, 0.3, distance(sYuv.yz, yuv.yz)));
                        sumUV += sYuv.yz * w; sumW += w;
                    }
                }
                yuv.yz = mix(yuv.yz, sumUV/max(sumW, 0.001), uChromaStrength);
            }
            
            fragColor = vec4(ycbcr2rgb(vec3(finalY, yuv.yz)), 1.0);
        }
    """.trimIndent()
}
