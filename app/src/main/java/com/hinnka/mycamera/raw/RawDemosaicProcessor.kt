package com.hinnka.mycamera.raw

import android.graphics.Bitmap
import android.graphics.Rect
import android.hardware.camera2.CameraCharacteristics
import android.hardware.camera2.CaptureResult
import android.media.Image
import android.opengl.*
import android.util.Log
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.lut.LutConfig
import com.hinnka.mycamera.model.ColorRecipeParams
import com.hinnka.mycamera.utils.BitmapUtils
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.asCoroutineDispatcher
import kotlinx.coroutines.runBlocking
import kotlinx.coroutines.withContext
import java.io.File
import java.lang.Math.pow
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.FloatBuffer
import java.nio.ShortBuffer
import java.util.concurrent.Executors
import kotlin.math.min
import android.opengl.Matrix as GlMatrix

/**
 * RAW 图像解马赛克处理器
 *
 * 使用 OpenGL ES 3.0 离屏渲染实现 GPU 加速的 RAW 处理管线：
 * Capture One 风格处理流程:
 * 1. 黑电平扣除
 * 2. 线性白平衡增益
 * 3. 输入锐化/反卷积 (Richardson-Lucy Deconvolution)
 * 4. 解马赛克 (RCD - Ratio Corrected Demosaicing)
 * 5. 色彩转换 (CCM)
 * 6. Gamma 曲线 (Filmic: 短趾部 + Gamma 2.2 + 长肩部)
 * 7. 结构增强 (Structure/Clarity - L通道高通滤波)
 * 8. 最终锐化 (Unsharp Mask)
 */
class RawDemosaicProcessor {

    /**
     * DNG 数据容器（包含原始 DngRawData 用于清理）
     */
    private data class DngData(
        val rawData: ByteBuffer,
        val width: Int,
        val height: Int,
        val rowStride: Int,
        val metadata: RawMetadata,
        val rotation: Int,  // 从 DNG 文件读取的旋转信息
        val dngRawData: DngRawData  // 保留原始对象用于清理内存
    ) : AutoCloseable {
        override fun close() {
            dngRawData.close()
        }
    }

    /**
     * 从 DNG 文件中提取 RAW 数据和元数据
     */
    private fun extractDngData(dngFile: File): DngData? {
        try {
            PLog.d(TAG, "Parsing DNG file: ${dngFile.absolutePath}")

            // 调用 JNI 方法解析 DNG 文件
            val dngRawData = extractDngDataNative(dngFile.absolutePath)
            if (dngRawData == null) {
                PLog.e(TAG, "Failed to parse DNG file via JNI")
                return null
            }

            PLog.d(
                TAG,
                "DNG parsed successfully: ${dngRawData.width}x${dngRawData.height}, rotation: ${dngRawData.rotation}°"
            )

            // 转换 DngRawData 为 RawMetadata
            val metadata = convertDngRawDataToMetadata(dngRawData)

            return DngData(
                rawData = dngRawData.rawData,
                width = dngRawData.width,
                height = dngRawData.height,
                rowStride = dngRawData.rowStride,
                metadata = metadata,
                rotation = dngRawData.rotation,  // 使用从 DNG 文件读取的旋转信息
                dngRawData = dngRawData  // 保留原始对象用于清理
            )

        } catch (e: Exception) {
            PLog.e(TAG, "Failed to extract DNG data", e)
            return null
        }
    }

    /**
     * 将 DngRawData 转换为 RawMetadata
     */
    private fun convertDngRawDataToMetadata(dngRawData: DngRawData): RawMetadata {
        // CFA 模式：使用从 JNI 传递过来的实际值
        val cfaPattern = dngRawData.cfaPattern

        // 黑电平：DngRawData 提供的是 [R, Gr, Gb, B] 四通道
        val blackLevel = dngRawData.blackLevel

        // 白电平
        val whiteLevel = dngRawData.whiteLevel

        // 白平衡增益：DngRawData 提供的是 [R, Gr, Gb, B]
        val whiteBalanceGains = dngRawData.whiteBalance

        // 色彩校正矩阵：DNG 提供的是 3x3 矩阵（行主序）
        val colorCorrectionMatrix = if (dngRawData.colorMatrix.size == 9) {
            dngRawData.colorMatrix
        } else {
            // 默认单位矩阵
            floatArrayOf(
                1.0f, 0.0f, 0.0f,
                0.0f, 1.0f, 0.0f,
                0.0f, 0.0f, 1.0f
            )
        }

        return RawMetadata(
            width = dngRawData.width,
            height = dngRawData.height,
            cfaPattern = cfaPattern,
            blackLevel = blackLevel,
            whiteLevel = whiteLevel,
            whiteBalanceGains = whiteBalanceGains,
            colorCorrectionMatrix = colorCorrectionMatrix,
            lensShadingMap = dngRawData.lensShadingMap,  // 使用 DNG 中的 LSC 数据
            lensShadingMapWidth = dngRawData.lensShadingMapWidth,
            lensShadingMapHeight = dngRawData.lensShadingMapHeight,
            baselineExposure = dngRawData.baselineExposure
        )
    }

    /**
     * Native 方法：解析 DNG 文件
     */
    private external fun extractDngDataNative(filePath: String): DngRawData?

    companion object {
        private const val TAG = "RawDemosaicProcessor"
        private const val TILE_SIZE = 512 // 增加分片渲染，避免长时间占用 GPU 导致 UI 卡顿

        init {
            // 加载 JNI 库
            System.loadLibrary("my-native-lib")
        }

        @Volatile
        private var instance: RawDemosaicProcessor? = null

        fun getInstance(): RawDemosaicProcessor {
            return instance ?: synchronized(this) {
                instance ?: RawDemosaicProcessor().also { instance = it }
            }
        }

        /**
         * LUT + ColorRecipe Fragment Shader
         * 处理流程：Input Texture -> ColorRecipe -> LUT -> Output
         */
        private val LUT_FRAGMENT_SHADER = """
            #version 300 es

            precision highp float;

            in vec2 vTexCoord;
            out vec4 fragColor;

            uniform sampler2D uInputTexture;
            uniform mediump sampler3D uLutTexture;
            uniform float uLutSize;
            uniform float uLutIntensity;
            uniform bool uLutEnabled;

            // 色彩配方控制
            uniform bool uColorRecipeEnabled;

            // 色彩配方参数
            uniform float uExposure;      // -2.0 ~ +2.0 (EV)
            uniform float uContrast;      // 0.5 ~ 1.5
            uniform float uSaturation;    // 0.0 ~ 2.0
            uniform float uTemperature;   // -1.0 ~ +1.0 (暖/冷色调)
            uniform float uTint;          // -1.0 ~ +1.0 (绿/品红偏移)
            uniform float uFade;          // 0.0 ~ 1.0 (褪色效果)
            uniform float uVibrance;      // 0.0 ~ 2.0 (蓝色增强)
            uniform float uHighlights;    // -1.0 ~ +1.0 (高光调整)
            uniform float uShadows;       // -1.0 ~ +1.0 (阴影调整)
            uniform float uFilmGrain;     // 0.0 ~ 1.0 (颗粒强度)
            uniform float uVignette;      // -1.0 ~ +1.0 (晕影)
            uniform float uBleachBypass;  // 0.0 ~ 1.0 (留银冲洗强度)
            uniform vec2 uTexelSize;      // 像素尺寸（用于后处理）

            // 后期处理参数
            uniform float uSharpening;           // 0.0 ~ 1.0 (锐化强度)
            uniform float uNoiseReduction;       // 0.0 ~ 1.0 (降噪强度)
            uniform float uChromaNoiseReduction; // 0.0 ~ 1.0 (减少杂色强度)

            // RGB 转 YCbCr
            vec3 rgb2ycbcr(vec3 rgb) {
                float y  =  0.299 * rgb.r + 0.587 * rgb.g + 0.114 * rgb.b;
                float cb = -0.169 * rgb.r - 0.331 * rgb.g + 0.500 * rgb.b + 0.5;
                float cr =  0.500 * rgb.r - 0.419 * rgb.g - 0.081 * rgb.b + 0.5;
                return vec3(y, cb, cr);
            }

            // YCbCr 转 RGB
            vec3 ycbcr2rgb(vec3 ycbcr) {
                float y  = ycbcr.x;
                float cb = ycbcr.y - 0.5;
                float cr = ycbcr.z - 0.5;
                float r = y + 1.402 * cr;
                float g = y - 0.344 * cb - 0.714 * cr;
                float b = y + 1.772 * cb;
                return vec3(r, g, b);
            }
            
            float getLuma(vec3 color) {
                return dot(color, vec3(0.299, 0.587, 0.114));
            }

            void main() {
                // 从输入纹理采样原始颜色
                vec4 color = texture(uInputTexture, vTexCoord);

                // === 后期处理：降噪和减少杂色（在色彩处理之前，避免放大噪点） ===

                // 1. 降噪（Bilateral Denoise for Luma + Gaussian for Chroma）
                if (uNoiseReduction > 0.0) {
                    vec3 centerYCbCr = rgb2ycbcr(color.rgb);
                    float centerY = centerYCbCr.x;
                    vec2 centerCbCr = centerYCbCr.yz;

                    // 色度降噪（简单高斯平滑）
                    vec2 sumCbCr = vec2(0.0);
                    float sumWeightChroma = 0.0;
                    int cRadius = 4;

                    for (int x = -cRadius; x <= cRadius; x+=2) {
                        for (int y = -cRadius; y <= cRadius; y+=2) {
                            vec2 offset = vec2(float(x), float(y)) * uTexelSize;
                            vec3 sampleRgb = texture(uInputTexture, vTexCoord + offset).rgb;
                            vec2 sampleCbCr = rgb2ycbcr(sampleRgb).yz;

                            float distSq = float(x*x + y*y);
                            float weight = exp(-distSq / (2.0 * 4.0));

                            sumCbCr += sampleCbCr * weight;
                            sumWeightChroma += weight;
                        }
                    }

                    vec2 finalCbCr = sumCbCr / sumWeightChroma;
                    finalCbCr = mix(centerCbCr, finalCbCr, clamp(uNoiseReduction * 1.5, 0.0, 1.0));

                    // 亮度降噪（双边滤波保边）
                    float sumY = 0.0;
                    float sumWeightLuma = 0.0;
                    int lRadius = 3;

                    float sigmaSpatial = 2.0;
                    float sigmaRange = 0.05 + uNoiseReduction * 0.15;

                    for (int x = -lRadius; x <= lRadius; x++) {
                        for (int y = -lRadius; y <= lRadius; y++) {
                            vec2 offset = vec2(float(x), float(y)) * uTexelSize;
                            float sampleY = rgb2ycbcr(texture(uInputTexture, vTexCoord + offset).rgb).x;

                            float distSq = float(x*x + y*y);
                            float wSpatial = exp(-distSq / (2.0 * sigmaSpatial * sigmaSpatial));

                            float diff = sampleY - centerY;
                            float wRange = exp(-(diff * diff) / (2.0 * sigmaRange * sigmaRange));

                            float weight = wSpatial * wRange;
                            sumY += sampleY * weight;
                            sumWeightLuma += weight;
                        }
                    }

                    float finalY = sumY / sumWeightLuma;
                    finalY = mix(finalY, centerY, 0.1);  // 细节回掺

                    color.rgb = ycbcr2rgb(vec3(finalY, finalCbCr));
                    color.rgb = clamp(color.rgb, 0.0, 1.0);
                }

                // 2. 强力色度降噪（Chroma Denoise）
                if (uChromaNoiseReduction > 0.0) {
                    vec3 yuv = rgb2ycbcr(color.rgb);

                    vec2 sumUV = vec2(0.0);
                    float sumWeight = 0.0;
                    float maxStride = 2.0 + uChromaNoiseReduction * 10.0;
                    float colorThreshold = 0.15;
                    const int RADIUS_UV = 2;

                    for (int x = -RADIUS_UV; x <= RADIUS_UV; x++) {
                        for (int y = -RADIUS_UV; y <= RADIUS_UV; y++) {
                            vec2 offset = vec2(float(x), float(y)) * uTexelSize * maxStride;
                            vec3 sampleRgb = texture(uInputTexture, vTexCoord + offset).rgb;
                            vec3 sampleYuv = rgb2ycbcr(sampleRgb);

                            float distSq = float(x*x + y*y);
                            float wDist = exp(-distSq / 4.0);

                            float uvDiff = distance(sampleYuv.yz, yuv.yz);
                            float wColor = 1.0 - smoothstep(colorThreshold, colorThreshold + 0.1, uvDiff);

                            float weight = wDist * wColor;
                            sumUV += sampleYuv.yz * weight;
                            sumWeight += weight;
                        }
                    }

                    if (sumWeight > 0.001) {
                        vec2 cleanUV = sumUV / sumWeight;
                        float mixFactor = clamp(uChromaNoiseReduction * 3.0, 0.0, 1.0);
                        yuv.yz = mix(yuv.yz, cleanUV, mixFactor);
                    }

                    color.rgb = ycbcr2rgb(yuv);
                }

                // === 色彩配方处理（按专业后期流程顺序） ===
                if (uColorRecipeEnabled) {
                    // 1. 曝光调整（线性空间，最先执行避免 clipping）
                    color.rgb *= pow(2.0, uExposure);

                    // 2. 高光/阴影调整（分区调整，基于亮度 mask）
                    float luma = dot(color.rgb, vec3(0.299, 0.587, 0.114));
                    float shadowMask = smoothstep(0.5, 0.0, luma); // 暗部
                    float highlightMask = smoothstep(0.5, 1.0, luma); // 亮部
                    
                    // --- 阴影处理 (Shadows) ---
                    float shadowIntensity = uShadows * shadowMask;
                    color.rgb += color.rgb * shadowIntensity * 0.6; 
                    
                    // --- 高光处理 (Highlights) ---
                    float targetLuma = luma;
                    if (uHighlights < 0.0) {
                        float compressionFactor = 1.0 + (uHighlights * highlightMask * 0.2); 
                        targetLuma = luma * compressionFactor;
                        targetLuma = ((targetLuma - 0.5) * 1.2) + 0.5; // 可选：微调对比度
                    } else {
                        targetLuma = mix(luma, 1.0, uHighlights * highlightMask * 0.5);
                    }
                    color.rgb = color.rgb * (targetLuma / (luma + 0.00001));
                    if (uHighlights < 0.0) {
                        vec3 gray = vec3(luma);
                        color.rgb = mix(gray, color.rgb, 1.0 - uHighlights * 0.2); 
                    }

                    // 3. 对比度（围绕中灰点调整）
                    color.rgb = (color.rgb - 0.5) * uContrast + 0.5;

                    // 4. 白平衡调整（色温 + 色调）
                    color.r += uTemperature * 0.1;
                    color.b -= uTemperature * 0.1;
                    color.g += uTint * 0.05;

                    // 5. 饱和度（基于 Luma 的快速算法）
                    float gray = dot(color.rgb, vec3(0.299, 0.587, 0.114));
                    color.rgb = mix(vec3(gray), color.rgb, uSaturation);

                    // 6. 色彩增强（Vibrance）
                    float strength = uVibrance * 0.5;
                    // --- 6.1 蓝色增强 (深邃天空/水面) ---
                    float baseBlue = color.b - (color.r + color.g) * 0.5;
                    float blueMask = smoothstep(0.0, 0.2, baseBlue); 
                    if (blueMask > 0.0) {
                        // 增加蓝色的纯度 (使用比例混合，避免绝对值减法产生噪点)
                        color.r = mix(color.r, color.r * 0.7, blueMask * strength);
                        color.g = mix(color.g, color.g * 0.7, blueMask * strength);
                        // 稍微压暗蓝色，制造胶片重感 (同样使用比例混合)
                        color.b = mix(color.b, color.b * 0.95, blueMask * strength);
                        // 使用 S 曲线增加蓝色区域的对比度/通透感
                        vec3 sCurve = color.rgb * color.rgb * (3.0 - 2.0 * color.rgb);
                        color.rgb = mix(color.rgb, sCurve, blueMask * strength * 0.2);
                    }
                    // --- 6.2 暖色增强 (新增逻辑：红润肤色/日落) ---
                    // 去除浑浊的蓝色杂质，呈现奶油般质感的红/橙色
                    // 算法：检测红色分量是否显著高于蓝色 (捕捉皮肤、夕阳、木头等)
                    float baseWarm = color.r - (color.g * 0.3 + color.b * 0.7); 
                    float warmMask = smoothstep(0.05, 0.25, baseWarm);
                    if (warmMask > 0.0) {
                        // 6.2.1 "去脏"：只在一定范围内应用，避免把鲜艳的红色变黑
                        color.b = mix(color.b, color.b * 0.85, warmMask * strength); 
                        // 6.2.2 密度调整
                        color.g = mix(color.g, color.g * 0.95, warmMask * strength); 
                        // 6.2.3 胶片感增强：使用非线性缩放而不是简单的乘法，保护亮度
                        vec3 sCurve = color.rgb * color.rgb * (3.0 - 2.0 * color.rgb);
                        color.rgb = mix(color.rgb, sCurve, warmMask * strength * 0.25);
                    }

                    // 7. 褪色效果
                    if (uFade > 0.0) {
                        float fadeAmount = uFade * 0.3;
                        color.rgb = mix(color.rgb, vec3(0.5), fadeAmount);
                        color.rgb += fadeAmount * 0.1;
                    }

                    // 8. 留银冲洗（Bleach Bypass）
                    if (uBleachBypass > 0.0) {
                        float luma = dot(color.rgb, vec3(0.299, 0.587, 0.114));
                        vec3 desaturated = mix(color.rgb, vec3(luma), 0.6);
                        desaturated = (desaturated - 0.5) * 1.3 + 0.5;
                        desaturated.r *= 0.95;
                        desaturated.g *= 1.02;
                        desaturated.b *= 1.05;
                        color.rgb = mix(color.rgb, desaturated, uBleachBypass);
                    }

                    // 9. 晕影（Vignette）
                    if (abs(uVignette) > 0.0) {
                        vec2 center = vec2(0.5, 0.5);
                        float dist = distance(vTexCoord, center);
                        float vignetteMask = smoothstep(0.8, 0.3, dist);
                        if (uVignette < 0.0) {
                            color.rgb *= mix(0.01, 1.0, vignetteMask) * abs(uVignette) + (1.0 + uVignette);
                        } else {
                            color.rgb = mix(color.rgb, vec3(1.0), (1.0 - vignetteMask) * uVignette);
                        }
                    }

                    // 10. 颗粒（Film Grain）
                    if (uFilmGrain > 0.0) {
                        float noise = fract(sin(dot(vTexCoord * 1000.0, vec2(12.9898, 78.233))) * 43758.5453);
                        noise = (noise - 0.5) * 2.0;
                        float luma = dot(color.rgb, vec3(0.299, 0.587, 0.114));
                        float grainMask = 1.0 - abs(luma - 0.5) * 2.0;
                        grainMask = grainMask * 0.5 + 0.5;
                        float grainStrength = uFilmGrain * 0.1 * grainMask;
                        color.rgb += noise * grainStrength;
                    }

                    // Clamp 到合法范围
                    color.rgb = clamp(color.rgb, 0.0, 1.0);
                }

                // === LUT 处理（在色彩配方之后） ===
                if (uLutEnabled && uLutIntensity > 0.0) {
                    // 3D LUT 查找
                    float scale = (uLutSize - 1.0) / uLutSize;
                    float offset = 1.0 / (2.0 * uLutSize);

                    // 将 RGB 值映射到 LUT 纹理坐标
                    vec3 lutCoord = color.rgb * scale + offset;

                    // 从 3D LUT 纹理采样
                    vec4 lutColor = texture(uLutTexture, lutCoord);

                    // 根据强度混合色彩配方处理后的颜色和 LUT 颜色
                    color.rgb = mix(color.rgb, lutColor.rgb, uLutIntensity);
                }

                // === 后期处理：锐化（在 LUT 之后，作为最后步骤） ===
                if (uSharpening > 0.0) {
                    // 使用基于亮度的 Unsharp Mask，避免色彩污染
                    // 1. 计算原始图像的亮度
                    vec3 inputColor = texture(uInputTexture, vTexCoord).rgb;
                    float inputLuma = dot(inputColor, vec3(0.299, 0.587, 0.114));
    
                    // 2. 计算周围像素的平均亮度 (Blur Luma)
                    float neighborsLuma = 0.0;
                    neighborsLuma += dot(texture(uInputTexture, vTexCoord + vec2(-uTexelSize.x, 0.0)).rgb, vec3(0.299, 0.587, 0.114));
                    neighborsLuma += dot(texture(uInputTexture, vTexCoord + vec2(uTexelSize.x, 0.0)).rgb, vec3(0.299, 0.587, 0.114));
                    neighborsLuma += dot(texture(uInputTexture, vTexCoord + vec2(0.0, -uTexelSize.y)).rgb, vec3(0.299, 0.587, 0.114));
                    neighborsLuma += dot(texture(uInputTexture, vTexCoord + vec2(0.0, uTexelSize.y)).rgb, vec3(0.299, 0.587, 0.114));
                    float blurLuma = neighborsLuma * 0.25;
    
                    // 3. 计算亮度高频分量 (Detail)
                    float detail = inputLuma - blurLuma;
    
                    // 4. 将亮度细节叠加到最终输出颜色上
                    float sharpenAmount = uSharpening * 1.5;
                    color.rgb += detail * sharpenAmount;
    
                    // Clamp 防止过曝
                    color.rgb = clamp(color.rgb, 0.0, 1.0);
                }

                fragColor = color;
            }
        """.trimIndent()
    }

    // 单线程调度器，确保所有 EGL 操作在同一线程
    private val glDispatcher = Executors.newSingleThreadExecutor { r ->
        Thread(r, "RawDemosaicProcessor-GL").apply { isDaemon = true }
    }.asCoroutineDispatcher()

    // EGL 资源
    private var eglDisplay: EGLDisplay = EGL14.EGL_NO_DISPLAY
    private var eglContext: EGLContext = EGL14.EGL_NO_CONTEXT
    private var eglSurface: EGLSurface = EGL14.EGL_NO_SURFACE

    // GL 资源
    private var demosaicProgram = 0
    private var lutProgram = 0  // 新增：LUT + ColorRecipe 处理程序
    private var passthroughProgram = 0

    private var rawTextureId = 0

    private var demosaicFramebufferId = 0
    private var demosaicTextureId = 0

    private var lutFramebufferId = 0      // 新增：LUT 处理帧缓冲
    private var lutTextureId = 0          // 新增：LUT 输出纹理
    private var lut3DTextureId = 0        // 新增：3D LUT 纹理

    private var outputFramebufferId = 0
    private var outputTextureId = 0

    // 缓冲区
    private var vertexBuffer: FloatBuffer? = null
    private var texCoordBuffer: FloatBuffer? = null
    private var indexBuffer: ShortBuffer? = null
    private var pboId = 0

    // Demosaic Uniform 位置
    private var uRawTextureLoc = 0
    private var uImageSizeLoc = 0
    private var uCfaPatternLoc = 0
    private var uBlackLevelLoc = 0
    private var uWhiteLevelLoc = 0
    private var uWhiteBalanceGainsLoc = 0
    private var uColorCorrectionMatrixLoc = 0
    private var uExposureGainLoc = 0
    private var uOutputSharpAmountLoc = 0
    private var uDemosaicTexMatrixLoc = 0
    private var uLensShadingMapLoc = 0

    // Passthrough Uniform 位置
    private var uPassTextureLoc = 0
    private var uPassTexMatrixLoc = 0

    // LUT Program Uniform 位置
    private var uLutInputTextureLoc = 0
    private var uLut3DTextureLoc = 0
    private var uLutSizeLoc = 0
    private var uLutIntensityLoc = 0
    private var uLutEnabledLoc = 0
    private var uLutTexMatrixLoc = 0

    // ColorRecipe Uniform 位置
    private var uColorRecipeEnabledLoc = 0
    private var uExposureLoc = 0
    private var uContrastLoc = 0
    private var uSaturationLoc = 0
    private var uTemperatureLoc = 0
    private var uTintLoc = 0
    private var uFadeLoc = 0
    private var uVibranceLoc = 0
    private var uHighlightsLoc = 0
    private var uShadowsLoc = 0
    private var uFilmGrainLoc = 0
    private var uVignetteLoc = 0
    private var uBleachBypassLoc = 0
    private var uTexelSizeLoc = 0

    // 后期处理 Uniform 位置
    private var uSharpeningLoc = 0
    private var uNoiseReductionLoc = 0
    private var uChromaNoiseReductionLoc = 0

    private var lensShadingTextureId = 0
    private var dummyShadingTextureId = 0

    private var isInitialized = false

    /**
     * 处理 DNG 文件
     *
     * @param dngFilePath DNG 文件路径
     * @param aspectRatio 目标宽高比
     * @param cropRegion 可选裁切区域（在 RAW 纹理空间）
     * @param lutConfig LUT 配置（可选）
     * @param colorRecipeParams 色彩配方参数（可选）
     * @param sharpeningValue 锐化强度 (0.0-1.0)
     * @param noiseReductionValue 降噪强度 (0.0-1.0)
     * @param chromaNoiseReductionValue 减少杂色强度 (0.0-1.0)
     * @return 处理后的 Bitmap，失败返回 null
     */
    suspend fun process(
        dngFilePath: String,
        aspectRatio: AspectRatio?,
        cropRegion: Rect?,
        lutConfig: LutConfig? = null,
        colorRecipeParams: ColorRecipeParams? = null,
        sharpeningValue: Float = 0f,
        noiseReductionValue: Float = 0f,
        chromaNoiseReductionValue: Float = 0f
    ): Bitmap? = withContext(glDispatcher) {
        val dngFile = File(dngFilePath)
        if (!dngFile.exists() || !dngFile.canRead()) {
            PLog.e(TAG, "DNG file not found or not readable: $dngFilePath")
            return@withContext null
        }

        try {
            // 从 DNG 文件提取 RAW 数据和元数据
            val dngData = extractDngData(dngFile)
            if (dngData == null) {
                PLog.e(TAG, "Failed to extract DNG data from: $dngFilePath")
                return@withContext null
            }

            // 使用 .use 确保 native 内存在处理后被释放
            dngData.use {
                // 使用提取的数据调用内部处理方法
                // 注意：使用从 DNG 文件读取的 rotation，而不是外部传入的参数
                processInternal(
                    rawData = it.rawData,
                    width = it.width,
                    height = it.height,
                    rowStride = it.rowStride,
                    metadata = it.metadata,
                    aspectRatio = aspectRatio,
                    cropRegion = cropRegion,
                    rotation = it.rotation,  // 使用从 DNG 文件读取的 rotation
                    lutConfig = lutConfig,
                    colorRecipeParams = colorRecipeParams,
                    sharpeningValue = sharpeningValue,
                    noiseReductionValue = noiseReductionValue,
                    chromaNoiseReductionValue = chromaNoiseReductionValue
                )
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to process DNG file: $dngFilePath", e)
            null
        }
    }

    /**
     * 处理 RAW 图像
     *
     * @param rawImage RAW_SENSOR 格式的 Image
     * @param characteristics 相机特性
     * @param captureResult 拍摄结果
     * @param aspectRatio 目标宽高比
     * @param rotation 旋转角度 (0, 90, 180, 270)
     * @param lutConfig LUT 配置（可选）
     * @param colorRecipeParams 色彩配方参数（可选）
     * @param sharpeningValue 锐化强度 (0.0-1.0)
     * @param noiseReductionValue 降噪强度 (0.0-1.0)
     * @param chromaNoiseReductionValue 减少杂色强度 (0.0-1.0)
     * @return 处理后的 Bitmap，失败返回 null
     */
    suspend fun process(
        rawImage: Image,
        characteristics: CameraCharacteristics,
        captureResult: CaptureResult,
        aspectRatio: AspectRatio,
        rotation: Int,
        lutConfig: LutConfig? = null,
        colorRecipeParams: ColorRecipeParams? = null,
        sharpeningValue: Float = 0f,
        noiseReductionValue: Float = 0f,
        chromaNoiseReductionValue: Float = 0f
    ): Bitmap? = withContext(glDispatcher) {
        try {
            if (!isInitialized) {
                if (!initializeOnGlThread()) {
                    PLog.e(TAG, "Failed to initialize processor")
                    return@withContext null
                }
            }

            val width = rawImage.width
            val height = rawImage.height

            // 提取元数据
            val metadata = RawMetadata.create(width, height, characteristics, captureResult)
            val cropRegion = captureResult.get(CaptureResult.SCALER_CROP_REGION)

            // 使用内部处理方法
            processInternal(
                rawData = rawImage.planes[0].buffer,
                width = width,
                height = height,
                rowStride = rawImage.planes[0].rowStride,
                metadata = metadata,
                aspectRatio = aspectRatio,
                cropRegion = cropRegion,
                rotation = rotation,
                lutConfig = lutConfig,
                colorRecipeParams = colorRecipeParams,
                sharpeningValue = sharpeningValue,
                noiseReductionValue = noiseReductionValue,
                chromaNoiseReductionValue = chromaNoiseReductionValue
            )
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to process RAW image", e)
            null
        }
    }

    /**
     * 内部处理方法（共享的核心处理逻辑）
     */
    private suspend fun processInternal(
        rawData: ByteBuffer,
        width: Int,
        height: Int,
        rowStride: Int,
        metadata: RawMetadata,
        aspectRatio: AspectRatio?,
        cropRegion: Rect?,
        rotation: Int,
        lutConfig: LutConfig?,
        colorRecipeParams: ColorRecipeParams?,
        sharpeningValue: Float = 0f,
        noiseReductionValue: Float = 0f,
        chromaNoiseReductionValue: Float = 0f
    ): Bitmap? = withContext(glDispatcher) {
        if (!isInitialized) {
            if (!initializeOnGlThread()) {
                PLog.e(TAG, "Failed to initialize processor")
                return@withContext null
            }
        }

        PLog.d(TAG, "Processing RAW image: ${width}x${height}")
        PLog.d(TAG, "CFA Pattern: ${metadata.cfaPattern}, WhiteLevel: ${metadata.whiteLevel}")
        PLog.d(
            TAG,
            "WB Gains: R=${metadata.whiteBalanceGains[0]}, Gr=${metadata.whiteBalanceGains[1]}, Gb=${metadata.whiteBalanceGains[2]}, B=${metadata.whiteBalanceGains[3]}"
        )
        PLog.d(TAG, "Black Level: ${metadata.blackLevel.contentToString()}")
        PLog.d(TAG, "CCM: ${metadata.colorCorrectionMatrix.contentToString()}")
        PLog.d(TAG, "BaselineExposure: ${metadata.baselineExposure}")

        // 上传 RAW 数据到纹理
        val uploadStart = System.currentTimeMillis()
        uploadRawTextureFromBuffer(rawData, width, height, rowStride)
        PLog.d(TAG, "Texture upload took: ${System.currentTimeMillis() - uploadStart}ms")

        val bounds = BitmapUtils.calculateProcessedRect(width, height, aspectRatio, cropRegion, rotation)
        val finalWidth = bounds.width()
        val finalHeight = bounds.height()

        // 3. 曝光增益计算
        var exposureGain = 0f
        // 应用 BaselineExposure (DNG 中是以 EV 为单位的指数增益)
        if (metadata.baselineExposure != 0f) {
            val baselineGain = pow(2.0, metadata.baselineExposure.toDouble()).toFloat()
            exposureGain = baselineGain
            Log.d(TAG, "process: applying baselineExposure ${metadata.baselineExposure} EV, new gain=$exposureGain")
        } else {
            exposureGain = calculateExposureGainFromBuffer(rawData, width, height, rowStride, metadata)
        }
        Log.d(TAG, "process: exposureGain=$exposureGain")

        // 4. 第一步：全分辨率解马赛克 (Demosaic Pass)
        setupFullResFramebuffer(width, height)
        val demosaicStart = System.currentTimeMillis()
        renderDemosaicPass(metadata, exposureGain)
        PLog.d(TAG, "Demosaic Pass took: ${System.currentTimeMillis() - demosaicStart}ms")

        // 5. 第二步：LUT + ColorRecipe 处理 (LUT Pass)
        val useLut = lutConfig != null || (colorRecipeParams != null && !colorRecipeParams.isDefault())
        val sourceTextureForOutput: Int
        if (useLut) {
            setupLutFramebuffer(width, height)
            val lutStart = System.currentTimeMillis()
            renderLutPass(
                metadata,
                lutConfig,
                colorRecipeParams,
                sharpeningValue,
                noiseReductionValue,
                chromaNoiseReductionValue
            )
            PLog.d(TAG, "LUT Pass took: ${System.currentTimeMillis() - lutStart}ms")
            sourceTextureForOutput = lutTextureId
        } else {
            sourceTextureForOutput = demosaicTextureId
        }

        // 6. 第三步：缩放、旋转、裁剪并输出 (Output Pass)
        setupOutputFramebuffer(finalWidth, finalHeight)
        val outputStart = System.currentTimeMillis()
        renderOutputPass(metadata, rotation, aspectRatio, cropRegion, finalWidth, finalHeight, sourceTextureForOutput)
        PLog.d(TAG, "Output Pass took: ${System.currentTimeMillis() - outputStart}ms")

        // 7. 读取结果
        val readStart = System.currentTimeMillis()
        val finalBitmap = readPixels(finalWidth, finalHeight)
        PLog.d(TAG, "readPixels took: ${System.currentTimeMillis() - readStart}ms")

        PLog.d(TAG, "RAW processing complete: ${finalBitmap.width}x${finalBitmap.height}")
        finalBitmap
    }

    /**
     * 预加载 EGL 环境和 Shader
     */
    fun preload() {
        Executors.newSingleThreadExecutor().execute {
            runBlocking {
                withContext(glDispatcher) {
                    initializeOnGlThread()
                }
            }
        }
    }

    private suspend fun initializeOnGlThread(): Boolean = withContext(glDispatcher) {
        initialize()
    }

    /**
     * 初始化 EGL 环境
     */
    fun initialize(): Boolean {
        if (isInitialized) return true

        try {
            // 获取 EGL Display
            eglDisplay = EGL14.eglGetDisplay(EGL14.EGL_DEFAULT_DISPLAY)
            if (eglDisplay == EGL14.EGL_NO_DISPLAY) {
                PLog.e(TAG, "Unable to get EGL display")
                return false
            }

            // 初始化 EGL
            val version = IntArray(2)
            if (!EGL14.eglInitialize(eglDisplay, version, 0, version, 1)) {
                PLog.e(TAG, "Unable to initialize EGL")
                return false
            }

            // 配置属性
            val configAttribs = intArrayOf(
                EGL14.EGL_RENDERABLE_TYPE, EGL14.EGL_OPENGL_ES2_BIT,
                EGL14.EGL_RED_SIZE, 8,
                EGL14.EGL_GREEN_SIZE, 8,
                EGL14.EGL_BLUE_SIZE, 8,
                EGL14.EGL_ALPHA_SIZE, 8,
                EGL14.EGL_SURFACE_TYPE, EGL14.EGL_PBUFFER_BIT,
                EGL14.EGL_NONE
            )

            val configs = arrayOfNulls<EGLConfig>(1)
            val numConfigs = IntArray(1)
            if (!EGL14.eglChooseConfig(eglDisplay, configAttribs, 0, configs, 0, 1, numConfigs, 0)) {
                PLog.e(TAG, "Unable to choose EGL config")
                return false
            }

            val config = configs[0] ?: return false

            // 创建 EGL Context (ES 3.0)
            val contextAttribs = intArrayOf(
                EGL14.EGL_CONTEXT_CLIENT_VERSION, 3,
                EGL14.EGL_NONE
            )
            eglContext = EGL14.eglCreateContext(eglDisplay, config, EGL14.EGL_NO_CONTEXT, contextAttribs, 0)
            if (eglContext == EGL14.EGL_NO_CONTEXT) {
                PLog.e(TAG, "Unable to create EGL context")
                return false
            }

            // 创建 PBuffer Surface（1x1 占位，实际使用 FBO）
            val surfaceAttribs = intArrayOf(
                EGL14.EGL_WIDTH, 1,
                EGL14.EGL_HEIGHT, 1,
                EGL14.EGL_NONE
            )
            eglSurface = EGL14.eglCreatePbufferSurface(eglDisplay, config, surfaceAttribs, 0)
            if (eglSurface == EGL14.EGL_NO_SURFACE) {
                PLog.e(TAG, "Unable to create EGL surface")
                return false
            }

            // 激活上下文
            if (!EGL14.eglMakeCurrent(eglDisplay, eglSurface, eglSurface, eglContext)) {
                PLog.e(TAG, "Unable to make EGL current")
                return false
            }

            // 初始化着色器和缓冲区
            initShaderProgram()
            initBuffers()

            // 创建静默遮挡图
            dummyShadingTextureId = createDummyShadingTexture()

            isInitialized = true
            PLog.d(TAG, "RawDemosaicProcessor initialized")
            return true

        } catch (e: Exception) {
            PLog.e(TAG, "Failed to initialize", e)
            return false
        }
    }

    private fun initShaderProgram() {
        val vShader = compileShader(GLES30.GL_VERTEX_SHADER, RawShaders.VERTEX_SHADER)

        // 1. Demosaic Program
        val fShaderDemosaic = compileShader(GLES30.GL_FRAGMENT_SHADER, RawShaders.FRAGMENT_SHADER_AHD)
        if (vShader != 0 && fShaderDemosaic != 0) {
            demosaicProgram = GLES30.glCreateProgram()
            GLES30.glAttachShader(demosaicProgram, vShader)
            GLES30.glAttachShader(demosaicProgram, fShaderDemosaic)
            GLES30.glLinkProgram(demosaicProgram)

            uRawTextureLoc = GLES30.glGetUniformLocation(demosaicProgram, "uRawTexture")
            uImageSizeLoc = GLES30.glGetUniformLocation(demosaicProgram, "uImageSize")
            uCfaPatternLoc = GLES30.glGetUniformLocation(demosaicProgram, "uCfaPattern")
            uBlackLevelLoc = GLES30.glGetUniformLocation(demosaicProgram, "uBlackLevel")
            uWhiteLevelLoc = GLES30.glGetUniformLocation(demosaicProgram, "uWhiteLevel")
            uWhiteBalanceGainsLoc = GLES30.glGetUniformLocation(demosaicProgram, "uWhiteBalanceGains")
            uColorCorrectionMatrixLoc = GLES30.glGetUniformLocation(demosaicProgram, "uColorCorrectionMatrix")
            uExposureGainLoc = GLES30.glGetUniformLocation(demosaicProgram, "uExposureGain")
            uOutputSharpAmountLoc = GLES30.glGetUniformLocation(demosaicProgram, "uOutputSharpAmount")
            uDemosaicTexMatrixLoc = GLES30.glGetUniformLocation(demosaicProgram, "uTexMatrix")
            uLensShadingMapLoc = GLES30.glGetUniformLocation(demosaicProgram, "uLensShadingMap")

            GLES30.glDeleteShader(fShaderDemosaic)
        }

        // 2. LUT + ColorRecipe Program
        val fShaderLut = compileShader(GLES30.GL_FRAGMENT_SHADER, LUT_FRAGMENT_SHADER)
        if (vShader != 0 && fShaderLut != 0) {
            lutProgram = GLES30.glCreateProgram()
            GLES30.glAttachShader(lutProgram, vShader)
            GLES30.glAttachShader(lutProgram, fShaderLut)
            GLES30.glLinkProgram(lutProgram)

            uLutInputTextureLoc = GLES30.glGetUniformLocation(lutProgram, "uInputTexture")
            uLut3DTextureLoc = GLES30.glGetUniformLocation(lutProgram, "uLutTexture")
            uLutSizeLoc = GLES30.glGetUniformLocation(lutProgram, "uLutSize")
            uLutIntensityLoc = GLES30.glGetUniformLocation(lutProgram, "uLutIntensity")
            uLutEnabledLoc = GLES30.glGetUniformLocation(lutProgram, "uLutEnabled")
            uLutTexMatrixLoc = GLES30.glGetUniformLocation(lutProgram, "uTexMatrix")

            uColorRecipeEnabledLoc = GLES30.glGetUniformLocation(lutProgram, "uColorRecipeEnabled")
            uExposureLoc = GLES30.glGetUniformLocation(lutProgram, "uExposure")
            uContrastLoc = GLES30.glGetUniformLocation(lutProgram, "uContrast")
            uSaturationLoc = GLES30.glGetUniformLocation(lutProgram, "uSaturation")
            uTemperatureLoc = GLES30.glGetUniformLocation(lutProgram, "uTemperature")
            uTintLoc = GLES30.glGetUniformLocation(lutProgram, "uTint")
            uFadeLoc = GLES30.glGetUniformLocation(lutProgram, "uFade")
            uVibranceLoc = GLES30.glGetUniformLocation(lutProgram, "uVibrance")
            uHighlightsLoc = GLES30.glGetUniformLocation(lutProgram, "uHighlights")
            uShadowsLoc = GLES30.glGetUniformLocation(lutProgram, "uShadows")
            uFilmGrainLoc = GLES30.glGetUniformLocation(lutProgram, "uFilmGrain")
            uVignetteLoc = GLES30.glGetUniformLocation(lutProgram, "uVignette")
            uBleachBypassLoc = GLES30.glGetUniformLocation(lutProgram, "uBleachBypass")
            uTexelSizeLoc = GLES30.glGetUniformLocation(lutProgram, "uTexelSize")

            // 后期处理 Uniform 位置
            uSharpeningLoc = GLES30.glGetUniformLocation(lutProgram, "uSharpening")
            uNoiseReductionLoc = GLES30.glGetUniformLocation(lutProgram, "uNoiseReduction")
            uChromaNoiseReductionLoc = GLES30.glGetUniformLocation(lutProgram, "uChromaNoiseReduction")

            GLES30.glDeleteShader(fShaderLut)
        }

        // 3. Passthrough Program
        val fShaderPass = compileShader(GLES30.GL_FRAGMENT_SHADER, RawShaders.PASSTHROUGH_FRAGMENT_SHADER)
        if (vShader != 0 && fShaderPass != 0) {
            passthroughProgram = GLES30.glCreateProgram()
            GLES30.glAttachShader(passthroughProgram, vShader)
            GLES30.glAttachShader(passthroughProgram, fShaderPass)
            GLES30.glLinkProgram(passthroughProgram)

            uPassTextureLoc = GLES30.glGetUniformLocation(passthroughProgram, "uTexture")
            uPassTexMatrixLoc = GLES30.glGetUniformLocation(passthroughProgram, "uTexMatrix")

            GLES30.glDeleteShader(fShaderPass)
        }

        GLES30.glDeleteShader(vShader)
        PLog.d(
            TAG,
            "Shader programs created: demosaic=$demosaicProgram, lut=$lutProgram, passthrough=$passthroughProgram"
        )
    }

    private fun compileShader(type: Int, source: String): Int {
        val shader = GLES30.glCreateShader(type)
        GLES30.glShaderSource(shader, source)
        GLES30.glCompileShader(shader)

        val compiled = IntArray(1)
        GLES30.glGetShaderiv(shader, GLES30.GL_COMPILE_STATUS, compiled, 0)
        if (compiled[0] == 0) {
            val error = GLES30.glGetShaderInfoLog(shader)
            PLog.e(TAG, "Shader compilation failed: $error")
            GLES30.glDeleteShader(shader)
            return 0
        }
        return shader
    }

    private fun initBuffers() {
        // 顶点缓冲
        vertexBuffer = ByteBuffer.allocateDirect(RawShaders.FULL_QUAD_VERTICES.size * 4)
            .order(ByteOrder.nativeOrder())
            .asFloatBuffer()
            .put(RawShaders.FULL_QUAD_VERTICES)
        vertexBuffer?.position(0)

        // 纹理坐标缓冲
        texCoordBuffer = ByteBuffer.allocateDirect(RawShaders.TEXTURE_COORDS.size * 4)
            .order(ByteOrder.nativeOrder())
            .asFloatBuffer()
            .put(RawShaders.TEXTURE_COORDS)
        texCoordBuffer?.position(0)

        // 索引缓冲
        indexBuffer = ByteBuffer.allocateDirect(RawShaders.DRAW_ORDER.size * 2)
            .order(ByteOrder.nativeOrder())
            .asShortBuffer()
            .put(RawShaders.DRAW_ORDER)
        indexBuffer?.position(0)
    }

    /**
     * 从 ByteBuffer 上传 RAW 数据到纹理
     */
    private fun uploadRawTextureFromBuffer(buffer: ByteBuffer, width: Int, height: Int, rowStride: Int) {
        if (rawTextureId == 0) {
            val textures = IntArray(1)
            GLES30.glGenTextures(1, textures, 0)
            rawTextureId = textures[0]
        }

        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, rawTextureId)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_NEAREST)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_NEAREST)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)

        // 确保 buffer 位置从 0 开始
        buffer.position(0)

        // 关键优化：使用 GL_UNPACK_ROW_LENGTH 处理 padding
        val bytesPerPixel = 2 // 16-bit
        val rowLength = rowStride / bytesPerPixel

        GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 2)
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ROW_LENGTH, rowLength)

        GLES30.glTexImage2D(
            GLES30.GL_TEXTURE_2D,
            0,
            GLES30.GL_R16UI,
            width,
            height,
            0,
            GLES30.GL_RED_INTEGER,
            GLES30.GL_UNSIGNED_SHORT,
            buffer
        )

        // 恢复默认设置
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ROW_LENGTH, 0)

        checkGlError("uploadRawTextureFromBuffer")
    }

    /**
     * 上传 RAW 数据到纹理（从 Image 对象）
     *
     * RAW_SENSOR 格式通常是 16 位（或 10/12 位打包为 16 位）的单通道数据
     */
    private fun uploadRawTexture(image: Image, width: Int, height: Int, rowStride: Int) {
        if (rawTextureId == 0) {
            val textures = IntArray(1)
            GLES30.glGenTextures(1, textures, 0)
            rawTextureId = textures[0]
        }

        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, rawTextureId)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_NEAREST)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_NEAREST)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)

        // 获取 RAW 数据
        val plane = image.planes[0]
        val buffer = plane.buffer
        buffer.position(0)

        // 关键优化：使用 GL_UNPACK_ROW_LENGTH 处理 padding，避免 CPU 逐行复制
        val bytesPerPixel = 2 // 16-bit
        val rowLength = rowStride / bytesPerPixel

        GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 2)
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ROW_LENGTH, rowLength)

        GLES30.glTexImage2D(
            GLES30.GL_TEXTURE_2D,
            0,
            GLES30.GL_R16UI,
            width,
            height,
            0,
            GLES30.GL_RED_INTEGER,
            GLES30.GL_UNSIGNED_SHORT,
            buffer
        )

        // 恢复默认设置
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ROW_LENGTH, 0)

        checkGlError("uploadRawTexture")
    }

    private fun uploadLensShadingTexture(metadata: RawMetadata) {
        if (metadata.lensShadingMap == null) return

        if (lensShadingTextureId == 0) {
            val textures = IntArray(1)
            GLES30.glGenTextures(1, textures, 0)
            lensShadingTextureId = textures[0]
        }

        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, lensShadingTextureId)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)

        val buffer = ByteBuffer.allocateDirect(metadata.lensShadingMap.size * 4)
            .order(ByteOrder.nativeOrder())
            .asFloatBuffer()
        buffer.put(metadata.lensShadingMap)
        buffer.position(0)

        GLES30.glTexImage2D(
            GLES30.GL_TEXTURE_2D, 0, GLES30.GL_RGBA32F,
            metadata.lensShadingMapWidth, metadata.lensShadingMapHeight, 0,
            GLES30.GL_RGBA, GLES30.GL_FLOAT, buffer
        )
    }

    private fun createDummyShadingTexture(): Int {
        val textures = IntArray(1)
        GLES30.glGenTextures(1, textures, 0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, textures[0])
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_NEAREST)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_NEAREST)

        val buffer = ByteBuffer.allocateDirect(4 * 4).order(ByteOrder.nativeOrder()).asFloatBuffer()
        buffer.put(floatArrayOf(1f, 1f, 1f, 1f))
        buffer.position(0)

        GLES30.glTexImage2D(
            GLES30.GL_TEXTURE_2D, 0, GLES30.GL_RGBA32F,
            1, 1, 0, GLES30.GL_RGBA, GLES30.GL_FLOAT, buffer
        )
        return textures[0]
    }

    private fun setupFullResFramebuffer(width: Int, height: Int) {
        if (demosaicFramebufferId != 0 && demosaicTextureId != 0) {
            // 假设尺寸不变，可复用。如果可能变化，需检查重置
            return
        }

        val textures = IntArray(1)
        GLES30.glGenTextures(1, textures, 0)
        demosaicTextureId = textures[0]
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, demosaicTextureId)
        GLES30.glTexImage2D(
            GLES30.GL_TEXTURE_2D,
            0,
            GLES30.GL_RGBA16F,
            width,
            height,
            0,
            GLES30.GL_RGBA,
            GLES30.GL_HALF_FLOAT,
            null
        )
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)

        val fbos = IntArray(1)
        GLES30.glGenFramebuffers(1, fbos, 0)
        demosaicFramebufferId = fbos[0]
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, demosaicFramebufferId)
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER,
            GLES30.GL_COLOR_ATTACHMENT0,
            GLES30.GL_TEXTURE_2D,
            demosaicTextureId,
            0
        )
        checkGlError("setupFullResFramebuffer")
    }

    private fun setupLutFramebuffer(width: Int, height: Int) {
        if (lutFramebufferId != 0 && lutTextureId != 0) {
            // 假设尺寸不变，可复用
            return
        }

        val textures = IntArray(1)
        GLES30.glGenTextures(1, textures, 0)
        lutTextureId = textures[0]
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, lutTextureId)
        GLES30.glTexImage2D(
            GLES30.GL_TEXTURE_2D,
            0,
            GLES30.GL_RGBA16F,
            width,
            height,
            0,
            GLES30.GL_RGBA,
            GLES30.GL_HALF_FLOAT,
            null
        )
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)

        val fbos = IntArray(1)
        GLES30.glGenFramebuffers(1, fbos, 0)
        lutFramebufferId = fbos[0]
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, lutFramebufferId)
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER,
            GLES30.GL_COLOR_ATTACHMENT0,
            GLES30.GL_TEXTURE_2D,
            lutTextureId,
            0
        )
        checkGlError("setupLutFramebuffer")
    }

    private fun setupOutputFramebuffer(width: Int, height: Int) {
        if (outputFramebufferId != 0) {
            GLES30.glDeleteFramebuffers(1, intArrayOf(outputFramebufferId), 0)
            GLES30.glDeleteTextures(1, intArrayOf(outputTextureId), 0)
        }

        val textures = IntArray(1)
        GLES30.glGenTextures(1, textures, 0)
        outputTextureId = textures[0]
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, outputTextureId)
        GLES30.glTexImage2D(
            GLES30.GL_TEXTURE_2D,
            0,
            GLES30.GL_RGBA,
            width,
            height,
            0,
            GLES30.GL_RGBA,
            GLES30.GL_UNSIGNED_BYTE,
            null
        )
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)

        val fbos = IntArray(1)
        GLES30.glGenFramebuffers(1, fbos, 0)
        outputFramebufferId = fbos[0]
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, outputFramebufferId)
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER,
            GLES30.GL_COLOR_ATTACHMENT0,
            GLES30.GL_TEXTURE_2D,
            outputTextureId,
            0
        )
        checkGlError("setupOutputFramebuffer")
    }

    /**
     * 从 ByteBuffer 计算 RAW 图像的曝光增益
     */
    private fun calculateExposureGainFromBuffer(
        buffer: ByteBuffer,
        width: Int,
        height: Int,
        rowStride: Int,
        metadata: RawMetadata
    ): Float {
        val pixelStride = 2 // 16-bit RAW

        // 采样参数 - 128采样
        val sampleSize = 128
        val stepX = (width / sampleSize).coerceAtLeast(1)
        val stepY = (height / sampleSize).coerceAtLeast(1)

        // 安全获取黑电平（使用绿色通道或第一个可用值）
        val black = when {
            metadata.blackLevel.size > 1 -> metadata.blackLevel[1]  // 优先使用 Gr
            metadata.blackLevel.isNotEmpty() -> metadata.blackLevel[0]  // 次选使用 R
            else -> 0f  // 默认值
        }
        val range = metadata.whiteLevel - black

        val valueList = ArrayList<Float>(sampleSize * sampleSize)

        // RAW 数据一般为小端序
        val savedOrder = buffer.order()
        buffer.order(ByteOrder.LITTLE_ENDIAN)
        val savedPos = buffer.position()

        try {
            for (y in 0 until height step stepY) {
                val rowOffset = y * rowStride
                for (x in 0 until width step stepX) {
                    // 确保选中绿色通道
                    var targetX = x
                    if ((targetX + y) % 2 == 0) {
                        targetX += 1
                        if (targetX >= width) targetX -= 2
                    }

                    if (targetX >= 0 && targetX < width) {
                        val offset = rowOffset + targetX * pixelStride
                        if (offset + 1 < buffer.limit()) {
                            val value = buffer.getShort(offset).toInt() and 0xFFFF
                            // 归一化并 Clamp，防止坏点
                            val normalized = ((value - black) / range).coerceIn(0f, 1f)
                            valueList.add(normalized)
                        }
                    }
                }
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to sample pixels", e)
        } finally {
            buffer.position(savedPos)
            buffer.order(savedOrder)
        }

        if (valueList.isEmpty()) return 1.0f

        // 获取最亮的2%像素（98th百分位数）
        valueList.sort()
        val highlightLuma = valueList[(valueList.size * 0.98).toInt().coerceAtMost(valueList.size - 1)]
        val averageLuma = valueList.average().toFloat()

        // 混合测光逻辑
        val gainAvg = if (averageLuma > 0.0001f) 0.22f / averageLuma else 1.0f
        val gainHigh = if (highlightLuma > 0.0001f) 0.90f / highlightLuma else 1.0f

        // 取两者的较小值
        val gain = min(gainAvg, gainHigh)
        // 硬限制防止增益过大或过小
        return gain.coerceIn(1.0f, 2.2f)
    }

    // 辅助函数: 3x3 矩阵转置 (行主序 -> 列主序)
    // OpenGL ES 的 glUniformMatrix3fv 不支持 transpose=true，必须手动转置
    private fun transposeMatrix3x3(matrix: FloatArray): FloatArray {
        require(matrix.size >= 9) { "Matrix must have at least 9 elements" }
        return floatArrayOf(
            matrix[0], matrix[3], matrix[6],  // 第一列 (原第一行)
            matrix[1], matrix[4], matrix[7],  // 第二列 (原第二行)
            matrix[2], matrix[5], matrix[8]   // 第三列 (原第三行)
        )
    }

    /**
     * 上传 3D LUT 纹理
     */
    private fun uploadLut3DTexture(lutConfig: LutConfig) {
        if (lut3DTextureId == 0) {
            val textures = IntArray(1)
            GLES30.glGenTextures(1, textures, 0)
            lut3DTextureId = textures[0]
        }

        GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, lut3DTextureId)

        // 设置像素对齐为 1 字节（支持非 4 字节对齐的尺寸，如 33）
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 1)

        GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_WRAP_R, GLES30.GL_CLAMP_TO_EDGE)

        if (lutConfig.configDataType == LutConfig.CONFIG_DATA_TYPE_UINT16) {
            // 对于 16 位 LUT，使用 GL_RGB16F 以保持精度
            val floatBuffer = lutConfig.toFloatBuffer()
            GLES30.glTexImage3D(
                GLES30.GL_TEXTURE_3D, 0, GLES30.GL_RGB16F,
                lutConfig.size, lutConfig.size, lutConfig.size,
                0, GLES30.GL_RGB, GLES30.GL_FLOAT, floatBuffer
            )
        } else {
            val buffer = lutConfig.toByteBuffer()
            GLES30.glTexImage3D(
                GLES30.GL_TEXTURE_3D, 0, GLES30.GL_RGB8,
                lutConfig.size, lutConfig.size, lutConfig.size,
                0, GLES30.GL_RGB, GLES30.GL_UNSIGNED_BYTE, buffer
            )
        }

        // 恢复默认对齐
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 4)
    }

    /**
     * LUT + ColorRecipe 处理 Pass
     */
    private fun renderLutPass(
        metadata: RawMetadata,
        lutConfig: LutConfig?,
        colorRecipeParams: ColorRecipeParams?,
        sharpeningValue: Float = 0f,
        noiseReductionValue: Float = 0f,
        chromaNoiseReductionValue: Float = 0f
    ) {
        GLES30.glUseProgram(lutProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, lutFramebufferId)
        
        // 全量清除
        GLES30.glViewport(0, 0, metadata.width, metadata.height)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)

        // 绑定解马赛克输出纹理
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, demosaicTextureId)
        GLES30.glUniform1i(uLutInputTextureLoc, 0)

        // 上传并绑定 3D LUT 纹理
        val lutIntensity = colorRecipeParams?.lutIntensity ?: 0f
        lutConfig?.let { uploadLut3DTexture(it) }
        GLES30.glActiveTexture(GLES30.GL_TEXTURE1)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, lut3DTextureId)
        GLES30.glUniform1i(uLut3DTextureLoc, 1)
        GLES30.glUniform1f(uLutSizeLoc, lutConfig?.size?.toFloat() ?: 0f)
        GLES30.glUniform1f(uLutIntensityLoc, lutIntensity)
        GLES30.glUniform1i(uLutEnabledLoc, 1)

        // 设置色彩配方参数
        val colorRecipeEnabled = colorRecipeParams != null && !colorRecipeParams.isDefault()
        GLES30.glUniform1i(uColorRecipeEnabledLoc, if (colorRecipeEnabled) 1 else 0)

        if (colorRecipeEnabled) {
            GLES30.glUniform1f(uExposureLoc, colorRecipeParams.exposure)
            GLES30.glUniform1f(uContrastLoc, colorRecipeParams.contrast)
            GLES30.glUniform1f(uSaturationLoc, colorRecipeParams.saturation)
            GLES30.glUniform1f(uTemperatureLoc, colorRecipeParams.temperature)
            GLES30.glUniform1f(uTintLoc, colorRecipeParams.tint)
            GLES30.glUniform1f(uFadeLoc, colorRecipeParams.fade)
            GLES30.glUniform1f(uVibranceLoc, colorRecipeParams.color)
            GLES30.glUniform1f(uHighlightsLoc, colorRecipeParams.highlights)
            GLES30.glUniform1f(uShadowsLoc, colorRecipeParams.shadows)
            GLES30.glUniform1f(uFilmGrainLoc, colorRecipeParams.filmGrain)
            GLES30.glUniform1f(uVignetteLoc, colorRecipeParams.vignette)
            GLES30.glUniform1f(uBleachBypassLoc, colorRecipeParams.bleachBypass)
        }

        // 设置 texel size（用于降噪等后处理）
        GLES30.glUniform2f(uTexelSizeLoc, 1.0f / metadata.width, 1.0f / metadata.height)

        // 设置后期处理参数
        GLES30.glUniform1f(uSharpeningLoc, sharpeningValue)
        GLES30.glUniform1f(uNoiseReductionLoc, noiseReductionValue)
        GLES30.glUniform1f(uChromaNoiseReductionLoc, chromaNoiseReductionValue)

        // 分片渲染
        GLES30.glEnable(GLES30.GL_SCISSOR_TEST)
        for (y in 0 until metadata.height step TILE_SIZE) {
            val h = min(TILE_SIZE, metadata.height - y)
            for (x in 0 until metadata.width step TILE_SIZE) {
                val w = min(TILE_SIZE, metadata.width - x)
                
                GLES30.glViewport(x, y, w, h)
                GLES30.glScissor(x, y, w, h)

                // 计算变换矩阵，确保采样正确的纹理区域
                val tileMatrix = FloatArray(16)
                GlMatrix.setIdentityM(tileMatrix, 0)
                GlMatrix.translateM(tileMatrix, 0, x.toFloat() / metadata.width, y.toFloat() / metadata.height, 0f)
                GlMatrix.scaleM(tileMatrix, 0, w.toFloat() / metadata.width, h.toFloat() / metadata.height, 1f)
                GLES30.glUniformMatrix4fv(uLutTexMatrixLoc, 1, false, tileMatrix, 0)

                drawQuad(lutProgram)
                GLES30.glFlush()
            }
        }
        GLES30.glDisable(GLES30.GL_SCISSOR_TEST)
        
        checkGlError("renderLutPass")
    }

    private fun renderDemosaicPass(metadata: RawMetadata, exposureGain: Float) {
        GLES30.glUseProgram(demosaicProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, demosaicFramebufferId)
        
        // 全量清除
        GLES30.glViewport(0, 0, metadata.width, metadata.height)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)

        // 绑定 RAW 纹理
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, rawTextureId)
        GLES30.glUniform1i(uRawTextureLoc, 0)

        // 设置 Uniforms
        GLES30.glUniform2f(uImageSizeLoc, metadata.width.toFloat(), metadata.height.toFloat())
        GLES30.glUniform1i(uCfaPatternLoc, metadata.cfaPattern)
        GLES30.glUniform4f(
            uBlackLevelLoc,
            metadata.blackLevel[0],
            metadata.blackLevel[1],
            metadata.blackLevel[2],
            metadata.blackLevel[3]
        )
        GLES30.glUniform1f(uWhiteLevelLoc, metadata.whiteLevel)
        GLES30.glUniform4f(
            uWhiteBalanceGainsLoc,
            metadata.whiteBalanceGains[0],
            metadata.whiteBalanceGains[1],
            metadata.whiteBalanceGains[2],
            metadata.whiteBalanceGains[3]
        )
        // OpenGL ES 不支持 transpose=true，必须在 CPU 端预先转置 CCM
        // 原始 CCM 是行主序 (Row-major)，GLSL mat3 期望列主序 (Column-major)
        val transposedCCM = transposeMatrix3x3(metadata.colorCorrectionMatrix)
        GLES30.glUniformMatrix3fv(uColorCorrectionMatrixLoc, 1, false, transposedCCM, 0)
        GLES30.glUniform1f(uExposureGainLoc, exposureGain)
        GLES30.glUniform1f(uOutputSharpAmountLoc, 0.3f)

        // 绑定 LSC
        GLES30.glActiveTexture(GLES30.GL_TEXTURE2)
        if (metadata.lensShadingMap != null) {
            uploadLensShadingTexture(metadata)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, lensShadingTextureId)
        } else {
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, dummyShadingTextureId)
        }
        GLES30.glUniform1i(uLensShadingMapLoc, 2)

        // 分片渲染
        GLES30.glEnable(GLES30.GL_SCISSOR_TEST)
        for (y in 0 until metadata.height step TILE_SIZE) {
            val h = min(TILE_SIZE, metadata.height - y)
            for (x in 0 until metadata.width step TILE_SIZE) {
                val w = min(TILE_SIZE, metadata.width - x)
                
                GLES30.glViewport(x, y, w, h)
                GLES30.glScissor(x, y, w, h)

                // 虽然 demosaic 用的 gl_FragCoord 不需要矩阵，但为了规范还是设置一下
                val tileMatrix = FloatArray(16)
                GlMatrix.setIdentityM(tileMatrix, 0)
                GlMatrix.translateM(tileMatrix, 0, x.toFloat() / metadata.width, y.toFloat() / metadata.height, 0f)
                GlMatrix.scaleM(tileMatrix, 0, w.toFloat() / metadata.width, h.toFloat() / metadata.height, 1f)
                GLES30.glUniformMatrix4fv(uDemosaicTexMatrixLoc, 1, false, tileMatrix, 0)

                drawQuad(demosaicProgram)
                GLES30.glFlush() // 提示 GPU 尽早开始执行
            }
        }
        GLES30.glDisable(GLES30.GL_SCISSOR_TEST)

        checkGlError("renderDemosaicPass")
    }

    private fun renderOutputPass(
        metadata: RawMetadata,
        rotation: Int,
        aspectRatio: AspectRatio?,
        cropRegion: Rect?,
        finalWidth: Int,
        finalHeight: Int,
        sourceTextureId: Int
    ) {
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, outputFramebufferId)
        GLES30.glViewport(0, 0, finalWidth, finalHeight)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)

        GLES30.glUseProgram(passthroughProgram)

        // 计算变换矩阵
        //
        // 关键理解：
        // 1. sourceTexture 是原始 RAW 尺寸（横向），坐标系 (0,0) 在左下角
        // 2. 最终输出需要：先裁切到目标比例，再旋转到正确方向
        // 3. OpenGL 矩阵变换是右乘，所以代码顺序与实际变换顺序相反
        //    代码中先写的变换实际上最后执行
        //
        // 实际变换顺序（从纹理坐标到最终坐标）：
        // 1. 先在原始纹理空间裁切（缩放）
        // 2. 再旋转到目标方向

        val texMatrix = FloatArray(16)
        GlMatrix.setIdentityM(texMatrix, 0)

        // === 第一步：旋转变换 ===
        // 注意：这里先写旋转，但由于矩阵右乘，实际上旋转是在裁切之后执行的
        //
        // rotation 参数含义：
        // - 0: 传感器与设备当前方向一致（通常是横屏）
        // - 90: 需要顺时针旋转 90 度（手机竖屏拍摄，传感器仍是横向）
        // - 180: 需要旋转 180 度
        // - 270: 需要顺时针旋转 270 度（或逆时针 90 度）
        //
        // OpenGL 的 rotateM 使用逆时针为正，所以需要取负值
        GlMatrix.translateM(texMatrix, 0, 0.5f, 0.5f, 0f)
        GlMatrix.rotateM(texMatrix, 0, -rotation.toFloat(), 0f, 0f, 1f)
        GlMatrix.translateM(texMatrix, 0, -0.5f, -0.5f, 0f)

        val bounds = BitmapUtils.calculateProcessedRect(metadata.width, metadata.height, aspectRatio, cropRegion)

        // 计算归一化的中心点和缩放比例
        val scaleX = bounds.width() * 1f / metadata.width
        val scaleY = bounds.height() * 1f / metadata.height
        val centerX = (bounds.left + bounds.width() / 2f) / metadata.width
        val centerY = (bounds.top + bounds.height() / 2f) / metadata.height

        // 应用变换矩阵
        // 注意：这里的平移是移动到裁切区域的中心
        GlMatrix.translateM(texMatrix, 0, centerX, centerY, 0f)
        GlMatrix.scaleM(texMatrix, 0, scaleX, scaleY, 1.0f)
        GlMatrix.translateM(texMatrix, 0, -0.5f, -0.5f, 0f)

        GLES30.glUniformMatrix4fv(uPassTexMatrixLoc, 1, false, texMatrix, 0)

        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, sourceTextureId)
        GLES30.glUniform1i(uPassTextureLoc, 0)

        drawQuad(passthroughProgram)
        checkGlError("renderOutputPass")
    }

    private fun drawQuad(program: Int) {
        val positionHandle = GLES30.glGetAttribLocation(program, "aPosition")
        val texCoordHandle = GLES30.glGetAttribLocation(program, "aTexCoord")

        // 只有在 handle 有效时才启用和设置 attribute
        // glGetAttribLocation 返回 -1 表示 attribute 未找到或未使用
        // 传入 -1 给 glEnableVertexAttribArray 会导致 GL_INVALID_VALUE (1281)
        if (positionHandle >= 0) {
            GLES30.glEnableVertexAttribArray(positionHandle)
            vertexBuffer?.position(0)
            GLES30.glVertexAttribPointer(positionHandle, 2, GLES30.GL_FLOAT, false, 0, vertexBuffer)
        }

        if (texCoordHandle >= 0) {
            GLES30.glEnableVertexAttribArray(texCoordHandle)
            texCoordBuffer?.position(0)
            GLES30.glVertexAttribPointer(texCoordHandle, 2, GLES30.GL_FLOAT, false, 0, texCoordBuffer)
        }


        indexBuffer?.position(0)
        GLES30.glDrawElements(GLES30.GL_TRIANGLES, 6, GLES30.GL_UNSIGNED_SHORT, indexBuffer)

        if (positionHandle >= 0) {
            GLES30.glDisableVertexAttribArray(positionHandle)
        }
        if (texCoordHandle >= 0) {
            GLES30.glDisableVertexAttribArray(texCoordHandle)
        }
    }

    private fun readPixels(width: Int, height: Int): Bitmap {
        val pixelSize = width * height * 4
        
        // 使用 PBO 优化 glReadPixels
        if (pboId == 0) {
            val pbos = IntArray(1)
            GLES30.glGenBuffers(1, pbos, 0)
            pboId = pbos[0]
        }

        GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, pboId)
        GLES30.glBufferData(GLES30.GL_PIXEL_PACK_BUFFER, pixelSize, null, GLES30.GL_STREAM_READ)

        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, outputFramebufferId)
        GLES30.glReadPixels(0, 0, width, height, GLES30.GL_RGBA, GLES30.GL_UNSIGNED_BYTE, 0)

        // 映射内存并读取
        val mappedBuffer = GLES30.glMapBufferRange(
            GLES30.GL_PIXEL_PACK_BUFFER,
            0,
            pixelSize,
            GLES30.GL_MAP_READ_BIT
        ) as? ByteBuffer
        
        val bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)
        
        if (mappedBuffer != null) {
            val buffer = ByteBuffer.allocateDirect(pixelSize).order(ByteOrder.nativeOrder())
            buffer.put(mappedBuffer)
            buffer.position(0)
            bitmap.copyPixelsFromBuffer(buffer)
            GLES30.glUnmapBuffer(GLES30.GL_PIXEL_PACK_BUFFER)
        }
        
        GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, 0)

        return bitmap
    }

    /**
     * 裁切 Bitmap 到目标宽高比（居中裁切）
     * GPU 已经处理了裁切，此方法作为降级参考
     */
    private fun cropToAspectRatio(bitmap: Bitmap, aspectRatio: AspectRatio): Bitmap {
        val srcWidth = bitmap.width
        val srcHeight = bitmap.height
        val srcRatio = srcWidth.toFloat() / srcHeight.toFloat()
        val targetRatio = aspectRatio.getValue(false)

        if (kotlin.math.abs(srcRatio - targetRatio) < 0.01f) {
            return bitmap
        }

        val cropWidth: Int
        val cropHeight: Int
        val cropX: Int
        val cropY: Int

        if (srcRatio > targetRatio) {
            // 原图更宽，裁切左右
            cropHeight = srcHeight
            cropWidth = (srcHeight * targetRatio).toInt()
            cropX = (srcWidth - cropWidth) / 2
            cropY = 0
        } else {
            // 原图更高，裁切上下
            cropWidth = srcWidth
            cropHeight = (srcWidth / targetRatio).toInt()
            cropX = 0
            cropY = (srcHeight - cropHeight) / 2
        }

        return Bitmap.createBitmap(bitmap, cropX, cropY, cropWidth, cropHeight)
    }

    private fun checkGlError(tag: String) {
        var error: Int
        while (GLES30.glGetError().also { error = it } != GLES30.GL_NO_ERROR) {
            PLog.e(TAG, "$tag: glError $error")
        }
    }

    /**
     * 释放资源
     */
    fun release() {
        if (!isInitialized) return

        EGL14.eglMakeCurrent(eglDisplay, eglSurface, eglSurface, eglContext)

        if (demosaicProgram != 0) GLES30.glDeleteProgram(demosaicProgram)
        if (lutProgram != 0) GLES30.glDeleteProgram(lutProgram)
        if (passthroughProgram != 0) GLES30.glDeleteProgram(passthroughProgram)

        if (rawTextureId != 0) GLES30.glDeleteTextures(1, intArrayOf(rawTextureId), 0)
        if (demosaicTextureId != 0) GLES30.glDeleteTextures(1, intArrayOf(demosaicTextureId), 0)
        if (demosaicFramebufferId != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(demosaicFramebufferId), 0)
        if (lutTextureId != 0) GLES30.glDeleteTextures(1, intArrayOf(lutTextureId), 0)
        if (lutFramebufferId != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(lutFramebufferId), 0)
        if (lut3DTextureId != 0) GLES30.glDeleteTextures(1, intArrayOf(lut3DTextureId), 0)
        if (outputTextureId != 0) GLES30.glDeleteTextures(1, intArrayOf(outputTextureId), 0)
        if (outputFramebufferId != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(outputFramebufferId), 0)
        if (pboId != 0) GLES30.glDeleteBuffers(1, intArrayOf(pboId), 0)

        if (lensShadingTextureId != 0) GLES30.glDeleteTextures(1, intArrayOf(lensShadingTextureId), 0)
        if (dummyShadingTextureId != 0) GLES30.glDeleteTextures(1, intArrayOf(dummyShadingTextureId), 0)

        EGL14.eglMakeCurrent(eglDisplay, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_CONTEXT)
        EGL14.eglDestroySurface(eglDisplay, eglSurface)
        EGL14.eglDestroyContext(eglDisplay, eglContext)
        EGL14.eglTerminate(eglDisplay)

        isInitialized = false
        instance = null
        PLog.d(TAG, "RawDemosaicProcessor released")
    }
}
