package com.hinnka.mycamera.lut

/**
 * GLSL 着色器源代码
 */
object Shaders {

    /**
     * 顶点着色器
     *
     * 处理顶点位置和纹理坐标变换
     */
    /**
     * 顶点着色器
     *
     * 处理顶点位置和纹理坐标变换
     */
    val VERTEX_SHADER = """
        #version 300 es

        // 顶点属性
        in vec4 aPosition;
        in vec2 aTexCoord;

        // 输出到片元着色器
        out vec2 vTexCoord;
        out vec2 vRawCoord; // 原始坐标用于色散计算

        // MVP 变换矩阵（用于 center crop 缩放）
        uniform mat4 uMVPMatrix;

        // SurfaceTexture 变换矩阵
        uniform mat4 uSTMatrix;

        void main() {
            // 应用 MVP 矩阵进行顶点变换（center crop）
            gl_Position = uMVPMatrix * aPosition;
            // 应用 SurfaceTexture 变换矩阵
            vTexCoord = (uSTMatrix * vec4(aTexCoord, 0.0, 1.0)).xy;
            vRawCoord = aTexCoord;
        }
    """.trimIndent()

    /**
     * 简单的直通片元着色器（无 LUT）
     *
     * 用于调试或禁用 LUT 时
     */
    val FRAGMENT_SHADER_PASSTHROUGH = """
        #version 300 es
        #extension GL_OES_EGL_image_external_essl3 : require

        precision mediump float;

        in vec2 vTexCoord;
        out vec4 fragColor;

        uniform samplerExternalOES uCameraTexture;

        void main() {
            fragColor = texture(uCameraTexture, vTexCoord);
        }
    """.trimIndent()

    /**
     * 片元着色器 - 2D 纹理复制 (支持 sampler2D)
     * 用于从 FBO 纹理复制到屏幕或视频编码器
     */
    val FRAGMENT_SHADER_COPY_2D = """
        #version 300 es
        precision mediump float;

        in vec2 vTexCoord;
        out vec4 fragColor;

        uniform sampler2D uCameraTexture;

        void main() {
            fragColor = texture(uCameraTexture, vTexCoord);
        }
    """.trimIndent()

    /** 简单顶点着色器（HDF 后处理 Pass 专用，无 MVP/ST 矩阵） */
    val SIMPLE_VERTEX_SHADER = """
        #version 300 es
        in vec4 aPosition;
        in vec2 aTexCoord;
        out vec2 vTexCoord;
        void main() {
            gl_Position = aPosition;
            vTexCoord = aTexCoord;
        }
    """.trimIndent()

    /** HDF Pass 1: 高光提取 + 水平高斯模糊 (实时预览) */
    val HDF_PREVIEW_EXTRACT_BLUR_H = """
        #version 300 es
        precision highp float;
        in vec2 vTexCoord;
        out vec4 fragColor;
        uniform sampler2D uInputTexture;
        uniform vec2 uTexelSize;
        uniform float uThreshold;
        uniform float uStrength;
        void main() {
            vec3 color = texture(uInputTexture, vTexCoord).rgb;
            float luma = dot(color, vec3(0.2126, 0.7152, 0.0722));
            float extractionVal = mix(luma, max(color.r, max(color.g, color.b)), 0.6);
            float highlightMask = smoothstep(uThreshold - 0.1, uThreshold + 0.25, extractionVal);
            float midMask = smoothstep(uThreshold - 0.5, uThreshold, extractionVal) * 0.4;
            float mask = (highlightMask + midMask * uStrength);
            vec3 sum = color * mask * 0.204164;
            float blurOffsets[4] = float[](1.407333, 3.294215, 5.176470, 7.058823);
            float blurWeights[4] = float[](0.304005, 0.093910, 0.010416, 0.000005);
            for (int i = 0; i < 4; i++) {
                float off = blurOffsets[i] * uTexelSize.x * 2.0;
                sum += texture(uInputTexture, vTexCoord + vec2(off, 0.0)).rgb * blurWeights[i];
                sum += texture(uInputTexture, vTexCoord - vec2(off, 0.0)).rgb * blurWeights[i];
            }
            fragColor = vec4(sum, 1.0);
        }
    """.trimIndent()

    /** HDF Pass 2: 垂直高斯模糊 */
    val HDF_PREVIEW_BLUR_V = """
        #version 300 es
        precision highp float;
        in vec2 vTexCoord;
        out vec4 fragColor;
        uniform sampler2D uInputTexture;
        uniform vec2 uTexelSize;
        void main() {
            vec3 sum = texture(uInputTexture, vTexCoord).rgb * 0.204164;
            float blurOffsets[4] = float[](1.407333, 3.294215, 5.176470, 7.058823);
            float blurWeights[4] = float[](0.304005, 0.093910, 0.010416, 0.000005);
            for (int i = 0; i < 4; i++) {
                float off = blurOffsets[i] * uTexelSize.y * 2.0;
                sum += texture(uInputTexture, vTexCoord + vec2(0.0, off)).rgb * blurWeights[i];
                sum += texture(uInputTexture, vTexCoord - vec2(0.0, off)).rgb * blurWeights[i];
            }
            fragColor = vec4(sum, 1.0);
        }
    """.trimIndent()

    /** HDF 合成：原图 + 模糊光晕 Screen 叠加 */
    val HDF_PREVIEW_COMPOSITE = """
        #version 300 es
        precision highp float;
        in vec2 vTexCoord;
        out vec4 fragColor;
        uniform sampler2D uOriginalTexture;
        uniform sampler2D uBloomTexture;
        uniform float uHalation;
        void main() {
            vec4 color = texture(uOriginalTexture, vTexCoord);
            vec3 bloom = texture(uBloomTexture, vTexCoord).rgb;
            float bLuma = dot(bloom, vec3(0.2126, 0.7152, 0.0722));
            bloom = mix(vec3(bLuma), bloom, 1.6);
            vec3 bloomEffect = bloom * uHalation * 1.4;
            color.rgb = vec3(1.0) - (vec3(1.0) - color.rgb) * (vec3(1.0) - bloomEffect);
            float mist = bLuma * uHalation * 0.15;
            color.rgb += mist;
            color.rgb = (color.rgb - 0.5) * (1.0 - uHalation * 0.08) + 0.5;
            fragColor = clamp(color, 0.0, 1.0);
        }
    """.trimIndent()

    /**
     * 片元着色器 - 带色彩配方和 3D LUT 支持
     *
     * 处理流程：相机采样 → 色彩配方调整 → LUT处理（可选） → 输出
     *
     * 性能优化：
     * - 使用 highp float 提高色彩精度
     * - Early exit 优化（无调整时直接返回）
     * - 避免 HSL 转换，使用基于 Luma 的快速饱和度算法
     */
    val FRAGMENT_SHADER_COLOR_RECIPE = """
    #version 300 es
    #extension GL_OES_EGL_image_external_essl3 : require

    precision highp float;

    // 从顶点着色器接收的纹理坐标
    in vec2 vTexCoord;
    in vec2 vRawCoord; // 原始坐标（用于色散等空间相关效果）

    // 输出颜色
    out vec4 fragColor;

    // 相机 OES 纹理
    uniform samplerExternalOES uCameraTexture;

    // 3D LUT 纹理
    uniform mediump sampler3D uLutTexture;

    // LUT 控制
    uniform float uLutSize;
    uniform float uLutIntensity;
    uniform bool uLutEnabled;
    uniform int uLutCurve; // 0=sRGB, 1=Linear, 2=V-Log, 3=S-Log3, 4=F-Log2, 5=LogC, 6=AppleLog, 7=HLG
    uniform int uLutColorSpace; // 0=sRGB, 1=DCI-P3, 2=BT2020, 3=ARRI4, 4=AppleLog2, 5=ProPhoto, 6=ACES_AP1

    // 色彩配方控制
    uniform bool uColorRecipeEnabled;
    uniform mat4 uSTMatrix; // 传递矩阵到片元用于 CA 偏移采样

    // 色彩配方参数（阶段1：核心3参数）
    uniform float uExposure;      // -2.0 ~ +2.0 (EV)
    uniform float uContrast;      // 0.5 ~ 1.5
    uniform float uSaturation;    // 0.0 ~ 2.0

    // 色彩配方参数（阶段1：额外3参数）
    uniform float uTemperature;   // -1.0 ~ +1.0 (暖/冷色调)
    uniform float uTint;          // -1.0 ~ +1.0 (绿/品红偏移)
    uniform float uFade;          // 0.0 ~ 1.0 (褪色效果)
    uniform float uVibrance;      // 0.0 ~ 2.0 (蓝色增强 - vibrance)

    // 色彩配方参数（阶段2：高级参数）
    uniform float uHighlights;    // -1.0 ~ +1.0 (高光调整)
    uniform float uShadows;       // -1.0 ~ +1.0 (阴影调整)

    // 色彩配方参数（阶段3：质感效果）
    uniform float uFilmGrain;     // 0.0 ~ 1.0 (颗粒强度)
    uniform float uVignette;      // -1.0 ~ +1.0 (晕影，负值暗角，正值亮角)
    uniform float uBleachBypass;  // 0.0 ~ 1.0 (留银冲洗强度)
    uniform float uChromaticAberration; // 0.0 ~ 1.0 (色散强度)
    uniform float uNoise;         // 0.0 ~ 1.0 (噪点强度，包含亮度和彩色噪点)
    uniform float uNoiseSeed;     // 用于每帧刷新噪点的随机种子
    uniform float uLowRes;        // 0.0 ~ 1.0 (低分辨率强度，0为无效果)
    uniform float uAspectRatio;   // 图像长宽比 (Width/Height)，用于确保低分像素块是正方形
    uniform float uLchHueAdjustments[9];
    uniform float uLchChromaAdjustments[9];
    uniform float uLchLightnessAdjustments[9];
    uniform float uAperture;      // 计算光圈 (1.4 ~ 16.0)
    uniform vec2 uFocusPoint;     // 对焦点 (0.0 ~ 1.0)

    const vec3 W = vec3(0.2126, 0.7152, 0.0722);
    const float PI = 3.14159265359;

    float log10(float x) { return log(x) * 0.4342944819; }
    vec3 log10(vec3 x) { return log(x) * 0.4342944819; }

    vec3 srgbToLinear(vec3 c) {
        return mix(c / 12.92, pow((c + 0.055) / 1.055, vec3(2.4)), step(0.04045, c));
    }

    vec3 linearToSrgb(vec3 l) {
        return mix(12.92 * l, 1.055 * pow(l, vec3(1.0 / 2.4)) - 0.055, step(0.0031308, l));
    }

    vec3 linearRgbToOklab(vec3 c) {
        vec3 lms = mat3(
            0.4122214708, 0.2119034982, 0.0883024619,
            0.5363325363, 0.6806995451, 0.2817188376,
            0.0514459929, 0.1073969566, 0.6299787005
        ) * c;
        vec3 lmsCbrt = pow(max(lms, vec3(0.0)), vec3(1.0 / 3.0));
        return mat3(
            0.2104542553, 1.9779984951, 0.0259040371,
            0.7936177850, -2.4285922050, 0.7827717662,
            -0.0040720468, 0.4505937099, -0.8086757660
        ) * lmsCbrt;
    }

    vec3 oklabToLinearRgb(vec3 lab) {
        vec3 lms = mat3(
            1.0, 1.0, 1.0,
            0.3963377774, -0.1055613458, -0.0894841775,
            0.2158037573, -0.0638541728, -1.2914855480
        ) * lab;
        vec3 lms3 = lms * lms * lms;
        return mat3(
            4.0767416621, -1.2684380046, -0.0041960863,
            -3.3077115913, 2.6097574011, -0.7034186147,
            0.2309699292, -0.3413193965, 1.7076147010
        ) * lms3;
    }

    float wrapAngle(float angle) {
        return mod(angle + PI, 2.0 * PI) - PI;
    }

    float colorBandWeight(float hue, float center, float chroma) {
        float dist = abs(wrapAngle(hue - center));
        float hueWeight = 1.0 - smoothstep(radians(18.0), radians(42.0), dist);
        float chromaWeight = smoothstep(0.02, 0.08, chroma);
        return hueWeight * chromaWeight;
    }

    float fullCoverageBandWeight(float hue, float center, float chroma) {
        float dist = abs(wrapAngle(hue - center));
        float hueWeight = max(0.0, 1.0 - dist / radians(55.0));
        float chromaWeight = smoothstep(0.005, 0.03, chroma);
        return hueWeight * chromaWeight;
    }

    float skinBandWeight(float hue, float chroma, float lightness) {
        float hueWeight = 1.0 - smoothstep(radians(10.0), radians(24.0), abs(wrapAngle(hue - radians(52.0))));
        float chromaWeight = smoothstep(0.015, 0.10, chroma);
        float lightnessWeight = smoothstep(0.32, 0.52, lightness) * (1.0 - smoothstep(0.78, 0.90, lightness));
        return hueWeight * chromaWeight * lightnessWeight;
    }

    vec3 applyOklchDensity(vec3 srgbColor, float density) {
        if (abs(density) < 0.0001) {
            return srgbColor;
        }

        vec3 linearColor = srgbToLinear(clamp(srgbColor, 0.0, 1.0));
        vec3 lab = linearRgbToOklab(linearColor);
        float chroma = length(lab.yz);
        float hue = atan(lab.z, lab.y);
        const float CHROMA_BIAS = 0.35;
        float densityScale = max(0.0, 1.0 + density * CHROMA_BIAS);
        float newChroma = chroma * densityScale;
        const float DENSITY_K = 1.85;
        float newLightness = clamp(lab.x * exp(-DENSITY_K * density * chroma), 0.0, 1.0);
        vec3 denseLab = vec3(newLightness, cos(hue) * newChroma, sin(hue) * newChroma);
        vec3 denseLinear = max(oklabToLinearRgb(denseLab), vec3(0.0));
        return clamp(linearToSrgb(denseLinear), 0.0, 1.0);
    }

    vec3 applyLchColorMixer(vec3 srgbColor) {
        vec3 linearColor = srgbToLinear(clamp(srgbColor, 0.0, 1.0));
        vec3 lab = linearRgbToOklab(linearColor);
        float chroma = length(lab.yz);
        float hue = atan(lab.z, lab.y);
        if (hue < 0.0) hue += 2.0 * PI;

        float centers[8] = float[](
            radians(20.0),
            radians(45.0),
            radians(75.0),
            radians(140.0),
            radians(200.0),
            radians(255.0),
            radians(295.0),
            radians(335.0)
        );

        float hueShift = 0.0;
        float chromaScale = 1.0;
        float lightnessShift = 0.0;
        float bandWeights[8];
        float totalBandWeight = 0.0;

        for (int i = 0; i < 8; i++) {
            float weight = fullCoverageBandWeight(hue, centers[i], chroma);
            bandWeights[i] = weight;
            totalBandWeight += weight;
        }

        if (totalBandWeight > 0.0001) {
            for (int i = 0; i < 8; i++) {
                float weight = bandWeights[i] / totalBandWeight;
                hueShift += uLchHueAdjustments[i + 1] * weight * radians(24.0);
                chromaScale += uLchChromaAdjustments[i + 1] * weight;
                lightnessShift += uLchLightnessAdjustments[i + 1] * weight * 0.18;
            }
        }

        float yellowRatio = max(0.0, lab.z) / (abs(lab.y) + abs(lab.z) + 0.0001);
        float redDominance = max(0.0, lab.y - lab.z);
        float lipSuppression = 1.0 - smoothstep(0.015, 0.065, redDominance);
        float skinWeight = skinBandWeight(hue, chroma, lab.x) *
            smoothstep(0.28, 0.52, yellowRatio) *
            lipSuppression;
        if (skinWeight > 0.0001) {
            hueShift += uLchHueAdjustments[0] * skinWeight * radians(18.0);
            chromaScale += uLchChromaAdjustments[0] * skinWeight;
            lightnessShift += uLchLightnessAdjustments[0] * skinWeight * 0.12;
        }

        if (abs(hueShift) < 0.0001 && abs(chromaScale - 1.0) < 0.0001 && abs(lightnessShift) < 0.0001) {
            return srgbColor;
        }

        float newHue = hue + hueShift;
        float newChroma = max(0.0, chroma * max(0.0, chromaScale));
        float newLightness = clamp(lab.x + lightnessShift, 0.0, 1.0);
        vec3 mixedLab = vec3(newLightness, cos(newHue) * newChroma, sin(newHue) * newChroma);
        vec3 mixedLinear = max(oklabToLinearRgb(mixedLab), vec3(0.0));
        return clamp(linearToSrgb(mixedLinear), 0.0, 1.0);
    }

    vec3 applyLutCurve(vec3 l, int curveType) {
        if (curveType == 0) { // sRGB
            return linearToSrgb(l);
        }
        if (curveType == 1) return l; // LINEAR
        if (curveType == 2) { // V-Log
            return mix(5.6 * l + 0.125, 0.241514 * log10(l + 0.00873) + 0.598206, step(0.01, l));
        }
        if (curveType == 3) { // S-Log3
            return mix((l * (171.2102946929 - 95.0) / 0.01125 + 95.0) / 1023.0, (420.0 + log10((l + 0.01) / (0.18 + 0.01)) * 261.5) / 1023.0, step(0.01125, l));
        }
        if (curveType == 4) { // F-Log2
            return mix(8.799461 * l + 0.092864, 0.245281 * log10(5.555556 * l + 0.064829) + 0.384316, step(0.00089, l));
        }
        if (curveType == 5) { // LogC
            return mix(5.367655 * l + 0.092809, 0.247190 * log10(5.555556 * l + 0.052272) + 0.385537, step(0.010591, l));
        }
        if (curveType == 6) { // AppleLog
            return mix(mix(vec3(0.0), 47.28711236 * pow(l + 0.05641088, vec3(2.0)), step(-0.05641088, l)), 0.08550479 * (log(l + 0.00964052) / log(2.0)) + 0.69336945, step(0.01, l));
        }
        if (curveType == 7) { // HLG
            float ha = 0.17883277;
            float hb = 1.0 - 4.0 * ha;
            float hc = 0.5 - ha * log(4.0 * ha);
            return mix(sqrt(3.0 * l), ha * log(12.0 * l - hb) + hc, step(1.0 / 12.0, l));
        }
        return l;
    }

    vec3 applyLutColorSpace(vec3 rgb, int colorSpace) {
        if (colorSpace == 0) return rgb; // sRGB

        // Matrices for Linear sRGB to target color space (aligned with ColorSpace.kt)
        if (colorSpace == 1) { // DCI-P3 (Bradford adapted)
            return mat3(0.875905, 0.035332, 0.016382, 0.122070, 0.964542, 0.063767, 0.002025, 0.000126, 0.919851) * rgb;
        }
        if (colorSpace == 2) { // BT2020
            return mat3(0.627404, 0.069097, 0.016391, 0.329283, 0.919540, 0.088013, 0.043313, 0.011362, 0.895595) * rgb;
        }
        if (colorSpace == 3) { // ARRI4
            return mat3(0.565837, 0.088626, 0.017750, 0.340331, 0.809347, 0.109448, 0.093832, 0.102028, 0.872802) * rgb;
        }
        if (colorSpace == 4) { // AppleLog2
            return mat3(0.608104, 0.062316, 0.031133, 0.259353, 0.804609, 0.133756, 0.132543, 0.133076, 0.835112) * rgb;
        }
        if (colorSpace == 5) { // S-Gamut3.Cine
            return mat3(0.645679, 0.087530, 0.036957, 0.259115, 0.759700, 0.129281, 0.095206, 0.152770, 0.833762) * rgb;
        }
        if (colorSpace == 6) { // ACES_AP1
            return mat3(0.613083, 0.070004, 0.020491, 0.341167, 0.918063, 0.106764, 0.045750, 0.011934, 0.872745) * rgb;
        }
        return rgb;
    }

    void main()
    {
        // === 预处理：模拟真实低分辨率效果（模糊+锯齿，而非纯碎的马赛克） ===
        vec2 uvCoord = vTexCoord;
        vec2 rcCoord = vRawCoord;
        if (uLowRes > 0.005) {
            // 算法改良：不再使用 floor() 产生的硬边缘，而是通过降采样+双线性插值模拟“糊”感
            // 同时保留边缘的低分锯齿感
            float blocksX = mix(512.0, 32.0, uLowRes);
            vec2 gridSize = vec2(1.0 / blocksX, 1.0 / (blocksX / uAspectRatio));

            // 1. 计算当前像素所在的网格坐标
            vec2 gridUV = floor(vTexCoord / gridSize) * gridSize + gridSize * 0.5;
            vec2 gridRC = floor(vRawCoord / gridSize) * gridSize + gridSize * 0.5;

            // 2. 混合原始坐标和网格坐标，实现“糊”且有锯齿的效果
            // 边缘会有锯齿，但平整区域通过插值变得平滑，避免彩色碎块
            uvCoord = mix(vTexCoord, gridUV, 0.95);
            rcCoord = mix(vRawCoord, gridRC, 0.95);
        }

        // 从相机纹理采样原始颜色 (应用色散效果)
        vec4 color;
        if (uChromaticAberration > 0.001) {
            // 色散：基于 vRawCoord（0.0~1.0 原始平面）计算偏移
            vec2 center = vec2(0.5);
            vec2 dir = rcCoord - center;
            float dist = length(dir);
            float offset = pow(dist, 1.5) * uChromaticAberration * 0.08;

            // 关键：基于原始坐标偏移后，必须通过 uSTMatrix 转换回实际采样坐标
            vec2 rCoord = (uSTMatrix * vec4(rcCoord + dir * offset, 0.0, 1.0)).xy;
            vec2 bCoord = (uSTMatrix * vec4(rcCoord - dir * offset, 0.0, 1.0)).xy;

            float r = texture(uCameraTexture, rCoord).r;
            float g = texture(uCameraTexture, uvCoord).g;
            float b = texture(uCameraTexture, bCoord).b;
            float a = texture(uCameraTexture, uvCoord).a;
            color = vec4(r, g, b, a);
        } else {
            color = texture(uCameraTexture, uvCoord);
        }

        // Early exit 优化：无任何调整时直接输出
        if (!uColorRecipeEnabled && !uLutEnabled && uChromaticAberration <= 0.001) {
            fragColor = color;
            return;
        }

        // === 色彩配方处理（按专业后期流程顺序） ===
        if (uColorRecipeEnabled) {
            // 1. 曝光调整（使用预计算的 pow(2, exp) 可能更优，但先保持原样或在此优化）
            if (abs(uExposure) > 0.001) {
                color.rgb *= pow(2.0, uExposure);
            }

            // 计算基础亮度，后续复用
            float luma = dot(color.rgb, W);

            // 2. 高光/阴影调整（分区调整，基于亮度 mask）
            if (abs(uHighlights) > 0.001 || abs(uShadows) > 0.001) {
                float highlightMask = smoothstep(0.5, 1.0, luma);
                float shadowMask = 1.0 - smoothstep(0.0, 0.5, luma);

                if (abs(uHighlights) > 0.001) {
                    float highlightFactor = 1.0 + uHighlights * (uHighlights > 0.0 ? 0.7 : 0.3);
                    color.rgb = mix(color.rgb, color.rgb * highlightFactor, highlightMask);
                }

                if (abs(uShadows) > 0.001) {
                    vec3 shadowTarget = (uShadows > 0.0)
                        ? (mix(color.rgb, vec3(luma), uShadows * 0.2) + (color.rgb * uShadows * 0.5))
                        : (color.rgb * (1.0 + uShadows * 0.5));
                    color.rgb = mix(color.rgb, shadowTarget, shadowMask);
                }
                // 更新亮度
                luma = dot(color.rgb, W);
            }

            // 3. 对比度（围绕中灰点调整）
            if (abs(uContrast - 1.0) > 0.001) {
                color.rgb = (color.rgb - 0.5) * uContrast + 0.5;
            }

            // 4. 白平衡调整（色温 + 色调）
            color.r += uTemperature * 0.1;
            color.b -= uTemperature * 0.1;
            color.g += uTint * 0.05;

            // 5. 饱和度
            if (abs(uSaturation - 1.0) > 0.001) {
                luma = dot(color.rgb, W);
                color.rgb = mix(vec3(luma), color.rgb, uSaturation);
            }

            // 6. 色彩密度（OkLCh density）
            if (abs(uVibrance) > 0.001) {
                color.rgb = applyOklchDensity(color.rgb, uVibrance);
            }

            color.rgb = applyLchColorMixer(color.rgb);

            // 7. 褪色效果
            if (uFade > 0.001) {
                float fadeAmount = uFade * 0.3;
                color.rgb = mix(color.rgb, vec3(0.5), fadeAmount) + fadeAmount * 0.1;
            }

            // 8. 留银冲洗
            if (uBleachBypass > 0.001) {
                luma = dot(color.rgb, W);
                vec3 desaturated = mix(color.rgb, vec3(luma), 0.6);
                desaturated = (desaturated - 0.5) * 1.3 + 0.5;
                desaturated.r *= 0.95;
                desaturated.g *= 1.02;
                desaturated.b *= 1.05;
                color.rgb = mix(color.rgb, desaturated, uBleachBypass);
            }

            // 9. 晕影
            if (abs(uVignette) > 0.001) {
                float dist = distance(vTexCoord, vec2(0.5));
                float vignetteMask = smoothstep(0.8, 0.3, dist);
                if (uVignette < 0.0) {
                    color.rgb *= mix(0.01, 1.0, vignetteMask) * abs(uVignette) + (1.0 + uVignette);
                } else {
                    color.rgb = mix(color.rgb, vec3(1.0), (1.0 - vignetteMask) * uVignette);
                }
            }

            // 10. 颗粒 (静态底片颗粒)
            if (uFilmGrain > 0.001) {
                float grainNoise = fract(sin(dot(uvCoord * 1000.0, vec2(12.9898, 78.233))) * 43758.5453);
                grainNoise = (grainNoise - 0.5) * 2.0;
                luma = dot(color.rgb, W);
                float grainMask = (1.0 - abs(luma - 0.5) * 2.0) * 0.5 + 0.5;
                color.rgb += grainNoise * uFilmGrain * 0.1 * grainMask;
            }

            // 11. 随机噪点 (增强的亮度和彩色噪点，动态刷新)
            if (uNoise > 0.001) {
                // 将浮点精度控制在适合 fract 的范围，避免伪影
                vec2 seedOffset = vec2(fract(uNoiseSeed * 1.234), fract(uNoiseSeed * 3.456));
                vec2 noiseCoord = uvCoord * 800.0 + seedOffset * 100.0;

                // 亮度噪点
                float lumNoise = fract(sin(dot(noiseCoord, vec2(12.9898, 78.233))) * 43758.5453);
                lumNoise = (lumNoise - 0.5) * 2.0;

                // 彩色噪点 (R, G, B 分别生成)
                float colorNoiseR = fract(sin(dot(noiseCoord + vec2(1.1, 2.2), vec2(39.346, 11.135))) * 43758.5453);
                float colorNoiseG = fract(sin(dot(noiseCoord + vec2(3.3, 4.4), vec2(73.156, 52.235))) * 43758.5453);
                float colorNoiseB = fract(sin(dot(noiseCoord + vec2(5.5, 6.6), vec2(27.423, 83.136))) * 43758.5453);
                vec3 colorNoise = (vec3(colorNoiseR, colorNoiseG, colorNoiseB) - 0.5) * 2.0;

                luma = dot(color.rgb, W);
                // 蒙版强度：中灰区域稍强，极端高光/阴影保留
                float noiseMask = mix(0.5, 1.0, 1.0 - abs(luma - 0.5) * 1.5);

                // 混合：结合亮度和彩色噪点，使彩色噪点不那么突兀但又可见
                vec3 finalNoise = mix(vec3(lumNoise), mix(vec3(lumNoise), colorNoise, 0.7), 0.8);

                // 基准强度为 0.3，效果较明显
                color.rgb += finalNoise * uNoise * max(0.0, noiseMask);
            }

            color.rgb = clamp(color.rgb, 0.0, 1.0);
        }

        // === LUT 处理（在色彩配方之后） ===
        if (uLutEnabled && uLutIntensity > 0.0) {
            vec3 linearRGB = srgbToLinear(color.rgb);
            vec3 colorSpaceRGB = applyLutColorSpace(linearRGB, uLutColorSpace);
            vec3 lutInColor = applyLutCurve(colorSpaceRGB, uLutCurve);
            float scale = (uLutSize - 1.0) / uLutSize;
            float offset = 1.0 / (2.0 * uLutSize);
            vec3 lutCoord = lutInColor * scale + offset;
            vec4 lutColor = texture(uLutTexture, lutCoord);
            color.rgb = mix(color.rgb, lutColor.rgb, uLutIntensity);
        }

        fragColor = color;
    }
    """.trimIndent()

    /**
     * 全屏四边形的顶点坐标
     * 覆盖整个屏幕 (-1, -1) 到 (1, 1)
     */
    val FULL_QUAD_VERTICES = floatArrayOf(
        // X, Y
        -1.0f, -1.0f,  // 左下
        1.0f, -1.0f,  // 右下
        -1.0f, 1.0f,  // 左上
        1.0f, 1.0f   // 右上
    )

    /**
     * 纹理坐标
     * OpenGL 纹理坐标系：左下角为 (0, 0)
     */
    val TEXTURE_COORDS = floatArrayOf(
        // U, V
        0.0f, 0.0f,  // 左下
        1.0f, 0.0f,  // 右下
        0.0f, 1.0f,  // 左上
        1.0f, 1.0f   // 右上
    )

    /**
     * 后处理专用纹理坐标（垂直翻转）
     * 用于让 glReadPixels 直接读取到正向的图片
     */
    val POST_PROCESS_TEXTURE_COORDS = floatArrayOf(
        0.0f, 1.0f, // Top-left -> GL Bottom-left
        1.0f, 1.0f, // Top-right -> GL Bottom-right
        0.0f, 0.0f, // Bottom-left -> GL Top-left
        1.0f, 0.0f  // Bottom-right -> GL Top-right
    )

    /**
     * 绘制顺序索引
     * 使用两个三角形绘制四边形
     */
    val DRAW_ORDER = shortArrayOf(
        0, 1, 2,  // 第一个三角形
        1, 3, 2   // 第二个三角形
    )

    /**
     * 高质量 Bokeh 片元着色器 (OpenGL ES 3.0)
     * 采用 Golden-Angle 螺旋采样实现圆盘虚化
     */
    val BOKEH_FRAGMENT_SHADER = """
        #version 300 es
        precision highp float;

        in vec2 vTexCoord;
        out vec4 fragColor;

        uniform sampler2D uInputTexture;
        uniform sampler2D uDepthTexture;

        uniform mat4 uDepthMatrix; // 用于对齐深度图坐标（处理 Y 翻转和 FOV 缩放）
        uniform float uMaxBlurRadius;
        uniform float uAperture;
        uniform float uFocusDepth;
        uniform vec2 uTexelSize;

        const float PI = 3.14159265359;
        const float GOLDEN_ANGLE = 2.39996323;
        const int SAMPLES = 64; // 实时预览：64 采样配合 Jitter 已足够顺滑且性能均衡

        // Interleaved Gradient Noise (IGN) - 用于低采样下消除环状伪影
        float random(vec2 fragCoord) {
            vec3 magic = vec3(0.06711056, 0.00583715, 52.9829189);
            return fract(magic.z * fract(dot(fragCoord, magic.xy)));
        }

        void main() {
            vec2 depthUV = (uDepthMatrix * vec4(vTexCoord, 0.0, 1.0)).xy;
            vec4 centerColor = texture(uInputTexture, vTexCoord);
            float centerDepth = texture(uDepthTexture, depthUV).r;

            float coc = abs(centerDepth - uFocusDepth) * uMaxBlurRadius * (1.0 / uAperture);
            coc = clamp(coc, 0.0, uMaxBlurRadius);

            if (coc < 0.5) {
                fragColor = centerColor;
                return;
            }

            vec3 accColor = vec3(0.0);
            float accWeight = 0.0;

            // 重要优化：利用 IGN 随机扰动旋转角度，消除固定采样模式带来的色带感
            // 相对于 brute-force 160 采样，这样能以更低功耗达到相同平滑度
            float jitter = random(gl_FragCoord.xy) * GOLDEN_ANGLE;

            for (int i = 0; i < SAMPLES; i++) {
                // 面积均匀分布
                float r = sqrt(float(i) / float(SAMPLES)) * coc;
                float theta = float(i) * GOLDEN_ANGLE + jitter;

                vec2 offset = vec2(cos(theta), sin(theta)) * r * uTexelSize;
                vec2 sampleUV = clamp(vTexCoord + offset, 0.0, 1.0);

                // Mipmap LOD 计算，融合相邻片元，在不加入噪点的情况下自然抹平色带
                float sampleRadiusPixels = r * 1.5 / sqrt(float(SAMPLES));
                float lod = max(0.0, log2(sampleRadiusPixels));

                vec3 sampleColor = texture(uInputTexture, sampleUV, lod).rgb;
                vec2 sDepthUV = clamp((uDepthMatrix * vec4(sampleUV, 0.0, 1.0)).xy, 0.0, 1.0);
                float sampleDepth = texture(uDepthTexture, sDepthUV).r;

                float sampleCoc = abs(sampleDepth - uFocusDepth) * uMaxBlurRadius * (1.0 / uAperture);
                sampleCoc = clamp(sampleCoc, 0.0, uMaxBlurRadius);

                // 软权重逻辑
                float w = smoothstep(r - 0.5, r + 1.0, sampleCoc);

                float depthDiff = sampleDepth - centerDepth;
                float bgOcclusion = smoothstep(-0.10, -0.01, depthDiff);
                float fgHalo = smoothstep(0.06, 0.01, depthDiff);
                w *= bgOcclusion * fgHalo;

                accColor += sampleColor * w;
                accWeight += w;
            }
            vec3 finalColor = accWeight > 0.001 ? (accColor / accWeight) : centerColor.rgb;
            fragColor = vec4(finalColor, centerColor.a);
        }
    """.trimIndent()

    val FGF_COEFFS_FRAGMENT_SHADER = """#version 300 es
        precision highp float;
        in vec2 vTexCoord;
        out vec4 fragColor;

        uniform sampler2D uLowResDepth;
        uniform sampler2D uLowResGuide; // 通常是对原图做过预降采样后的版本
        uniform vec2 uTexelSize; // 低分辨率下的像素步进

        const vec3 W = vec3(0.2126, 0.7152, 0.0722);
        const float eps = 0.01 * 0.01; // 减小 epsilon，使系数更灵敏地响应引导图边缘

        void main() {
            float mean_I = 0.0;
            float mean_p = 0.0;
            float mean_Ip = 0.0;
            float mean_II = 0.0;
            float sumW = 0.0;

            // 优化：采用更紧凑、密集的 5x5 窗口 (stride=1)，提高边缘系数的精确度
            // 之前的 stride=4 太粗糙，导致跨越边缘时系数过度平滑
            for(int y = -2; y <= 2; y++) {
                for(int x = -2; x <= 2; x++) {
                    vec2 offset = vec2(float(x), float(y)) * uTexelSize;
                    vec2 sampleUV = vTexCoord + offset;

                    float p = texture(uLowResDepth, sampleUV).r;
                    float I = dot(texture(uLowResGuide, sampleUV).rgb, W);

                    // 使用高斯权重，使中心像素贡献更高，进一步抑制边缘扩散
                    float wS = exp(-float(x*x + y*y) / 2.0);

                    mean_I += I * wS;
                    mean_p += p * wS;
                    mean_Ip += I * p * wS;
                    mean_II += I * I * wS;
                    sumW += wS;
                }
            }

            mean_I /= sumW;
            mean_p /= sumW;
            mean_Ip /= sumW;
            mean_II /= sumW;

            float var_I = mean_II - mean_I * mean_I;
            float cov_Ip = mean_Ip - mean_I * mean_p;

            float a = cov_Ip / (var_I + eps);
            float b = mean_p - a * mean_I;

            // 输出 a, b 和 mean_I 到 RGB 通道 (支持 Guidance-Aware Upsampling)
            fragColor = vec4(a, b, mean_I, 1.0);
        }
    """.trimIndent()

    val FGF_APPLY_FRAGMENT_SHADER = """#version 300 es
        precision highp float;
        in vec2 vTexCoord;
        out vec4 fragColor;

        uniform sampler2D uHighResGuide; // 高清原图
        uniform sampler2D uLowResCoeffs; // FGF Pass 1 生成的 (a, b, mean_I) 纹理
        uniform vec2 uLowResTexelSize;   // 低分辨率系数纹理的像素尺寸

        const vec3 W = vec3(0.2126, 0.7152, 0.0722);

        void main() {
            // 获取当前像素的高清亮度 I
            vec3 guideRGB = texture(uHighResGuide, vTexCoord).rgb;
            float I = dot(guideRGB, W);

            // 优化：Guidance-Aware Upsampling (系数级的联合双边上采样)
            // 解决常规双线性插值在边缘导致 a, b 混叠的问题
            vec2 pos = vTexCoord / uLowResTexelSize - 0.5;
            vec2 p0 = floor(pos);
            vec2 f = pos - p0;

            // 采样相邻的 4 个低分系数块
            vec3 c00 = texture(uLowResCoeffs, (p0 + vec2(0.5, 0.5)) * uLowResTexelSize).rgb;
            vec3 c10 = texture(uLowResCoeffs, (p0 + vec2(1.5, 0.5)) * uLowResTexelSize).rgb;
            vec3 c01 = texture(uLowResCoeffs, (p0 + vec2(0.5, 1.5)) * uLowResTexelSize).rgb;
            vec3 c11 = texture(uLowResCoeffs, (p0 + vec2(1.5, 1.5)) * uLowResTexelSize).rgb;

            // 计算亮度权重：只采纳那些平均亮度与当前高清像素亮度接近的低分块生成的系数
            // 这样当高清像素在主体内时，背景侧的 low-res 系数即便物理位置近，权重也会被压低
            float sigma = 0.12; 
            float w00 = (1.0 - f.x) * (1.0 - f.y) * exp(-abs(I - c00.z) / sigma);
            float w10 = f.x * (1.0 - f.y) * exp(-abs(I - c10.z) / sigma);
            float w01 = (1.0 - f.x) * f.y * exp(-abs(I - c01.z) / sigma);
            float w11 = f.x * f.y * exp(-abs(I - c11.z) / sigma);

            float sumW = w00 + w10 + w01 + w11;
            vec2 coeffs;
            if (sumW > 0.01) {
                coeffs = (c00.xy * w00 + c10.xy * w10 + c01.xy * w01 + c11.xy * w11) / sumW;
            } else {
                // 回退：如果亮度差异都太大，使用基础双线性插值
                coeffs = mix(mix(c00.xy, c10.xy, f.x), mix(c01.xy, c11.xy, f.x), f.y);
            }

            float finalDepth = coeffs.x * I + coeffs.y;
            finalDepth = clamp(finalDepth, 0.0, 1.0);

            fragColor = vec4(finalDepth, finalDepth, finalDepth, 1.0);
        }
    """.trimIndent()

    /**
     * 后期处理专用：物理级的 PSF Splatting 模拟算法。
     * 采用大半径 Gather、逆向 HDR 提亮（点光源扩张）、能量守恒、球面像差（肥皂泡边缘）和口径蚀来高度还原真实的单反镜头虚化质感。
     */
    val PSF_SPLAT_FRAGMENT_SHADER = """
        #version 300 es
        precision highp float;

        in vec2 vTexCoord;
        out vec4 fragColor;

        uniform sampler2D uInputTexture;
        uniform sampler2D uDepthTexture;

        uniform mat4 uDepthMatrix;
        uniform float uMaxBlurRadius;
        uniform float uAperture;
        uniform float uFocusDepth;
        uniform vec2 uTexelSize;

        const float PI = 3.14159265359;
        const float GOLDEN_ANGLE = 2.39996323;
        const int SAMPLES = 160;

        void main() {
            vec2 depthUV = clamp((uDepthMatrix * vec4(vTexCoord, 0.0, 1.0)).xy, 0.0, 1.0);
            vec4 centerColor = texture(uInputTexture, vTexCoord);
            float centerDepth = texture(uDepthTexture, depthUV).r;

            float centerCoc = abs(centerDepth - uFocusDepth) * uMaxBlurRadius * (1.0 / uAperture);
            centerCoc = clamp(centerCoc, 0.0, uMaxBlurRadius);

            // 1. 强力保护机制：对于清晰主体，保持 100% 锐度
            if (centerCoc < 0.2) {
                fragColor = centerColor;
                return;
            }

            // 2. 初始权重：赋予较高的权重以定性，防止背景渗色
            float centerWeight = 6.0 / (centerCoc * 0.4 + 1.0);
            vec3 accColor = centerColor.rgb * centerWeight;
            float accWeight = centerWeight;

            float softBase = max(3.0, uMaxBlurRadius * 0.1);

            for (int i = 0; i < SAMPLES; i++) {
                float f = float(i + 1);
                float r = sqrt(f / float(SAMPLES)) * uMaxBlurRadius;
                float theta = f * GOLDEN_ANGLE;

                vec2 offset = vec2(cos(theta), sin(theta)) * r * uTexelSize;
                vec2 sampleUV = clamp(vTexCoord + offset, 0.0, 1.0);

                float lod = log2(r * 0.3 + 1.5);
                vec3 sColor = textureLod(uInputTexture, sampleUV, lod).rgb;
                vec2 sDepthUV = clamp((uDepthMatrix * vec4(sampleUV, 0.0, 1.0)).xy, 0.0, 1.0);
                float sDepth = texture(uDepthTexture, sDepthUV).r;

                // --- 颜色引导保护 (Edge Protection Logic) ---
                // 如果采样点颜色与中心色非常接近，说明它可能是主体的一部分
                // 我们限制其散景半径，防止它作为一个模糊点去“泼溅”覆盖中心点
                float colorDist = distance(centerColor.rgb, sColor);
                float colorSimilarity = smoothstep(0.15, 0.01, colorDist);

                float rawCoc = abs(sDepth - uFocusDepth) * uMaxBlurRadius * (1.0 / uAperture);
                // 关键：如果颜色相似度高，则强制将采样点的 CoC 压低，视为主体保护区
                float sCoc = mix(rawCoc, min(rawCoc, centerCoc), colorSimilarity);
                sCoc = clamp(sCoc, 0.0, uMaxBlurRadius);

                // 4. 重构权重逻辑
                float fW = smoothstep(r - softBase, r + softBase * 0.5, sCoc);
                float bW = smoothstep(r - softBase, r + softBase * 0.5, centerCoc);

                float depthDiff = sDepth - centerDepth;
                float isNearer = smoothstep(-0.1, 0.1, depthDiff);

                // 引入相似度加成，让主体边缘的像素更倾向于互相保护而不是混入背景
                float weight = mix(bW * (1.1 - isNearer), fW, isNearer);
                weight *= (1.0 + colorSimilarity * 0.8);

                if (weight > 0.0001) {
                    float luma = dot(sColor, vec3(0.2126, 0.7152, 0.0722));
                    float hdrBoost = 1.0 + pow(max(0.0, luma - 0.75), 2.0) * 4.0 * smoothstep(1.0, 5.0, sCoc);

                    float edge = smoothstep(0.7, 1.05, r / max(sCoc, 0.1));
                    float ring = 1.0 + edge * 0.4 * smoothstep(1.5, 5.0, sCoc);

                    float fw = weight * ring;
                    accColor += sColor * hdrBoost * fw;
                    accWeight += fw;
                }
            }

            vec3 finalColor = accWeight > 0.001 ? (accColor / accWeight) : centerColor.rgb;
            finalColor = clamp(finalColor, 0.0, 1.0);

            fragColor = vec4(finalColor, centerColor.a);
        }
    """.trimIndent()
}
