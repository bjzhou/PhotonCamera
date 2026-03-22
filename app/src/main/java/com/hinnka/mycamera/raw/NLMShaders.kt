package com.hinnka.mycamera.raw

object NLMShaders {

    /**
     * Pass 0: 色度降噪 (在亮度降噪前执行，提供更干净的引导图)
     */
    val PASS0_CHROMA_DENOISE = """
        #version 300 es
        precision highp float;
        in vec2 vTexCoord;
        out vec4 fragColor;
        uniform sampler2D uInputTexture;
        uniform vec2 uTexelSize;
        uniform mat4 uTexMatrix;
        uniform float uH;

        float getLuma(vec3 rgb) {
            return dot(rgb, vec3(0.2126, 0.7152, 0.0722));
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
            vec3 oriRgb = texture(uInputTexture, vTexCoord).rgb;            
            vec3 yuv = rgb2ycbcr(oriRgb);
            vec2 sumUV = vec2(0.0); float sumW = 0.0;
            
            // 采样步长随强度增加，色度噪声通常是低频的大色块
            float stepScale = 6.5; 
            
            // 动态计算权重参数
            // 色度权重容差稍微放宽，以消除色度噪点
            float chromaH = uH * 1.5;
            // 亮度权重容差必须严格，以保边并防止跨边缘渗色 (光晕)
            float lumaH = uH * 0.5; 
            
            float invChromaH2 = 1.0 / max(chromaH * chromaH, 1e-6);
            float invLumaH2 = 1.0 / max(lumaH * lumaH, 1e-6);

            for (int x = -2; x <= 2; x++) {
                for (int y = -2; y <= 2; y++) {
                    vec2 offset = vec2(float(x), float(y)) * uTexelSize * stepScale;
                    vec3 s = texture(uInputTexture, vTexCoord + offset).rgb;
                    vec3 sYuv = rgb2ycbcr(s);
                    
                    // 空间权重 (Gaussian)
                    float wS = exp(-float(x*x+y*y)/4.0);
                    
                    // 相似性权重 (Cross-Bilateral)
                    float dL = sYuv.x - yuv.x;
                    vec2 dC = sYuv.yz - yuv.yz;
                    float wR = exp(-(dL * dL) * invLumaH2 - dot(dC, dC) * invChromaH2);
                    
                    float w = wS * wR;
                    // 中心像素保证一定权重
                    if (x == 0 && y == 0) w = max(w, 0.1);
                    
                    sumUV += sYuv.yz * w; 
                    sumW += w;
                }
            }
            yuv.yz = sumUV / sumW;
            fragColor = vec4(ycbcr2rgb(yuv), 1.0);
        }
    """.trimIndent()


    /**
     * NLM 降噪 Shader
     * 使用 Non-Local Means 算法进行降噪
     */
    // -----------------------------------------------------------------------------------------
    // Separable NLM (Approximation)
    // -----------------------------------------------------------------------------------------

    /**
     * NLM Pass 1: 水平方向
     * 输入: uInputTexture (源图像/色度降噪后的图像)
     * 输出: 水平模糊后的图像
     */
    val NLM_PASS_H = """
        #version 300 es
        precision highp float;
        in vec2 vTexCoord;
        out vec4 fragColor;
        
        uniform sampler2D uInputTexture;
        uniform vec2 uTexelSize;
        uniform mat4 uTexMatrix;
        
        uniform float uH;
        #define SEARCH_RADIUS 3
        #define PATCH_RADIUS 1
        
        void main() {
            vec3 centerVal = texture(uInputTexture, vTexCoord).rgb;
            if (uH <= 0.00001) {
                fragColor = vec4(centerVal, 1.0);
                return;
            }
            
            float h2 = max(uH * uH, 1e-5);
            float patchArea = float((2 * PATCH_RADIUS + 1) * (2 * PATCH_RADIUS + 1));
            float invH2 = 1.0 / (h2 * patchArea);
            const vec3 W = vec3(0.2126, 0.7152, 0.0722);
            
            vec3 sumColor = vec3(0.0);
            float sumWeight = 0.0;
            float maxWeight = 0.0;
            
            // 水平搜索
            for(int dx = -SEARCH_RADIUS; dx <= SEARCH_RADIUS; dx++) {
                if(dx == 0) continue;
                
                vec2 neighborUV = vTexCoord + vec2(float(dx), 0.0) * uTexelSize;
                
                // 计算 Patch 相似度 (Luma SSD)
                float dist = 0.0;
                for(int px = -PATCH_RADIUS; px <= PATCH_RADIUS; px++) {
                    for(int py = -PATCH_RADIUS; py <= PATCH_RADIUS; py++) {
                        vec2 offset = vec2(float(px), float(py)) * uTexelSize;
                        vec3 c1 = texture(uInputTexture, vTexCoord + offset).rgb;
                        vec3 c2 = texture(uInputTexture, neighborUV + offset).rgb;
                        float l1 = dot(c1, W);
                        float l2 = dot(c2, W);
                        float d = l1 - l2;
                        dist += d * d;
                    }
                }
                
                float w = exp(-dist * invH2);
                
                vec3 neighborVal = texture(uInputTexture, neighborUV).rgb;
                
                sumColor += neighborVal * w;
                sumWeight += w;
                maxWeight = max(maxWeight, w);
            }
            
            // 中心像素：使用邻域内的最大权重，若最大权重太小（找不到匹配），则强制设为 1.0 以保留原像素
            float centerWeight = max(maxWeight, 0.1);
            sumColor += centerVal * centerWeight;
            sumWeight += centerWeight;
            
            fragColor = vec4(sumColor / sumWeight, 1.0);
        }
    """.trimIndent()

    /**
     * NLM Pass 2: 垂直方向
     * 输入: 
     *  - uInputTexture: 原始图像 (用于计算权重，保持结构)
     *  - uBlurTexture:  Pass 1 输出 (用于模糊累加)
     * 输出: 最终降噪图像
     */
    val NLM_PASS_V = """
        #version 300 es
        precision highp float;
        in vec2 vTexCoord;
        out vec4 fragColor;
        
        uniform sampler2D uInputTexture; // 用于计算权重的 Guide
        uniform sampler2D uBlurTexture;  // 需要模糊的 Buffer
        uniform vec2 uTexelSize;
        uniform mat4 uTexMatrix;
        
        uniform float uH;
        #define SEARCH_RADIUS 3
        #define PATCH_RADIUS 1
        
        void main() {
            vec3 centerValBlur = texture(uBlurTexture, vTexCoord).rgb;
            if (uH <= 0.00001) {
                fragColor = vec4(centerValBlur, 1.0);
                return;
            }
            
            float h2 = max(uH * uH, 1e-5);
            float patchArea = float((2 * PATCH_RADIUS + 1) * (2 * PATCH_RADIUS + 1));
            float invH2 = 1.0 / (h2 * patchArea);
            const vec3 W = vec3(0.2126, 0.7152, 0.0722);
            
            vec3 sumColor = vec3(0.0);
            float sumWeight = 0.0;
            float maxWeight = 0.0;
            
            // 垂直搜索
            for(int dy = -SEARCH_RADIUS; dy <= SEARCH_RADIUS; dy++) {
                if(dy == 0) continue;
                
                vec2 neighborUV = vTexCoord + vec2(0.0, float(dy)) * uTexelSize;
                
                // 计算 Patch 相似度 (必须使用 uInputTexture 保持结构!)
                float dist = 0.0;
                for(int px = -PATCH_RADIUS; px <= PATCH_RADIUS; px++) {
                    for(int py = -PATCH_RADIUS; py <= PATCH_RADIUS; py++) {
                        vec2 offset = vec2(float(px), float(py)) * uTexelSize;
                        vec3 c1 = texture(uInputTexture, vTexCoord + offset).rgb;
                        vec3 c2 = texture(uInputTexture, neighborUV + offset).rgb;
                        float l1 = dot(c1, W);
                        float l2 = dot(c2, W);
                        float d = l1 - l2;
                        dist += d * d;
                    }
                }
                
                float w = exp(-dist * invH2);
                
                // 累加的是 uBlurTexture
                vec3 neighborVal = texture(uBlurTexture, neighborUV).rgb;
                
                sumColor += neighborVal * w;
                sumWeight += w;
                maxWeight = max(maxWeight, w);
            }
            
            // 中心像素
            float centerWeight = max(maxWeight, 0.1);
            sumColor += centerValBlur * centerWeight;
            sumWeight += centerWeight;
            
            fragColor = vec4(sumColor / sumWeight, 1.0);
        }
    """.trimIndent()
}
