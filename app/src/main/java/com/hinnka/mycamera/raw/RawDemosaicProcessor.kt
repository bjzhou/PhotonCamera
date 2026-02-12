package com.hinnka.mycamera.raw

import android.content.Context
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
import com.hinnka.mycamera.utils.RawProcessor
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
import kotlin.math.pow
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
    private var tonemapProgram = 0  // 新增：ToneMapping 处理程序
    private var lutProgram = 0  // 新增：LUT + ColorRecipe 处理程序
    private var passthroughProgram = 0

    private var rawTextureId = 0

    private var demosaicFramebufferId = 0
    private var demosaicTextureId = 0
    private var demosaicWidth = 0
    private var demosaicHeight = 0

    private var tonemapFramebufferId = 0   // 新增：ToneMap 帧缓冲
    private var tonemapTextureId = 0       // 新增：ToneMap 输出纹理
    private var tonemapWidth = 0
    private var tonemapHeight = 0

    private var lutFramebufferId = 0      // 新增：LUT 处理帧缓冲
    private var lutTextureId = 0          // 新增：LUT 输出纹理
    private var lutWidth = 0
    private var lutHeight = 0
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

    // Linear Program (New)
    private var linearProgram = 0
    private var uLinearRawTextureLoc = 0
    private var uLinearImageSizeLoc = 0
    private var uLinearColorCorrectionMatrixLoc = 0
    private var uLinearExposureGainLoc = 0
    private var uLinearOutputSharpAmountLoc = 0
    private var uLinearTexMatrixLoc = 0
    private var uLinearLensShadingMapLoc = 0

    // Passthrough Uniform 位置
    private var uPassTextureLoc = 0
    private var uPassTexMatrixLoc = 0

    // LUT Program Uniform 位置
    private var uLutInputTextureLoc = 0
    private var uLut3DTextureLoc = 0
    private var uLutSizeLoc = 0
    private var uLutIntensityLoc = 0
    private var uLutEnabledLoc = 0
    private var uLutCurveLoc = 0
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

    data class SceneStats(
        val exposureGain: Float,
        val drcStrength: Float, // Dynamic Range Compression Strength (0.0 - 1.0)
        val blackPoint: Float,
        val whitePoint: Float
    )

    private var uToneMapParamsLoc = 0
    private var uToneMapInputTextureLoc = 0
    private var uToneMapTexMatrixLoc = 0
    private var uToneCurveLoc = 0
    private var uToneMapTexelSizeLoc = 0

    // ToneCurve 数据 (256 点线性 LUT)
    private val toneCurve = FloatArray(256) { it / 255.0f } // 默认为线性
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
        rotation: Int,
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
                PLog.e(TAG, "Failed to extract DNG data from: $dngFilePath, fallback to native raw processor")
                return@withContext RawProcessor.processAndToBitmap(File(dngFilePath), aspectRatio, cropRegion, rotation)
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
     * @param rotation 旋转角度(0, 90, 180, 270)
     * @param lutConfig LUT 配置 （ 可选 ）
     * @param colorRecipeParams 色彩配方参数（可选）
     * @param sharpeningValue 锐化强度(0.0 - 1.0)
     * @param noiseReductionValue 降噪强度(0.0 - 1.0)
     * @param chromaNoiseReductionValue 减少杂色强度(0.0 - 1.0)
     * @return 处理后的 Bitmap ， 失败返回 null
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
     * 处理 RAW Buffer (例如来自 MultiFrameStacker 的输出)
     */
    suspend fun process(
        rawData: ByteBuffer,
        width: Int,
        height: Int,
        rowStride: Int,
        metadata: RawMetadata,
        aspectRatio: AspectRatio,
        cropRegion: Rect?,
        rotation: Int,
        lutConfig: LutConfig? = null,
        colorRecipeParams: ColorRecipeParams? = null,
        sharpeningValue: Float = 0f,
        noiseReductionValue: Float = 0f,
        chromaNoiseReductionValue: Float = 0f,
        previewLuma: Float = 0.18f,
    ): Bitmap? = withContext(glDispatcher) {
        try {
            if (!isInitialized) {
                if (!initializeOnGlThread()) {
                    PLog.e(TAG, "Failed to initialize processor")
                    return@withContext null
                }
            }

            processInternal(
                rawData = rawData,
                width = width,
                height = height,
                rowStride = rowStride,
                metadata = metadata,
                aspectRatio = aspectRatio,
                cropRegion = cropRegion,
                rotation = rotation,
                lutConfig = lutConfig,
                colorRecipeParams = colorRecipeParams,
                sharpeningValue = sharpeningValue,
                noiseReductionValue = noiseReductionValue,
                chromaNoiseReductionValue = chromaNoiseReductionValue,
                previewLuma = previewLuma
            )
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to process RAW buffer", e)
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
        chromaNoiseReductionValue: Float = 0f,
        previewLuma: Float = 0.18f
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
        uploadRawTextureFromBuffer(rawData, width, height, rowStride, metadata.cfaPattern)
        PLog.d(TAG, "Texture upload took: ${System.currentTimeMillis() - uploadStart}ms")

        val bounds = BitmapUtils.calculateProcessedRect(width, height, aspectRatio, cropRegion, rotation)
        val finalWidth = bounds.width()
        val finalHeight = bounds.height()

        // 3. 场景分析 (CPU Pre-pass)
        val sceneStats = analyzeRawBuffer(rawData, width, height, rowStride, metadata, previewLuma)
        PLog.d(
            TAG,
            "Scene Analysis: Gain=${sceneStats.exposureGain}, DRC=${sceneStats.drcStrength}, Black=${sceneStats.blackPoint}, White=${sceneStats.whitePoint}"
        )

        // 4. 第一步：全分辨率解马赛克 (Demosaic Pass)
        // 保持 Linear HDR 原色，不再这里进行曝光增益
        setupFullResFramebuffer(width, height)
        val demosaicStart = System.currentTimeMillis()
        renderDemosaicPass(metadata, 1.0f)
        PLog.d(TAG, "Demosaic Pass took: ${System.currentTimeMillis() - demosaicStart}ms")

        // 5. 第二步：Tone Mapping (HDR Linear -> LDR sRGB)
        setupTonemapFramebuffer(width, height)
        val tonemapStart = System.currentTimeMillis()
        renderToneMapPass(metadata, sceneStats)
        PLog.d(TAG, "ToneMap Pass took: ${System.currentTimeMillis() - tonemapStart}ms")

        // 6. 第三步：LUT + ColorRecipe 处理 (Color Pass)
        setupLutFramebuffer(width, height)
        val lutStart = System.currentTimeMillis()
        renderLutPass(
            metadata,
            lutConfig,
            colorRecipeParams,
            sceneStats,
            sharpeningValue,
            noiseReductionValue,
            chromaNoiseReductionValue
        )
        PLog.d(TAG, "Color Pass took: ${System.currentTimeMillis() - lutStart}ms")
        val sourceTextureForOutput = lutTextureId

        // 6. 第三步：缩放、旋转、裁剪并输出 (Output Pass)
        setupOutputFramebuffer(finalWidth, finalHeight)
        val outputStart = System.currentTimeMillis()
        renderOutputPass(
            rotation,
            width,
            height,
            bounds,
            sourceTextureForOutput
        )
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

        // 1.5 Linear Program (For Stacked RGB)
        val fShaderLinear = compileShader(GLES30.GL_FRAGMENT_SHADER, RawShaders.FRAGMENT_SHADER_LINEAR)
        if (vShader != 0 && fShaderLinear != 0) {
            linearProgram = GLES30.glCreateProgram()
            GLES30.glAttachShader(linearProgram, vShader)
            GLES30.glAttachShader(linearProgram, fShaderLinear)
            GLES30.glLinkProgram(linearProgram)

            uLinearRawTextureLoc = GLES30.glGetUniformLocation(linearProgram, "uRawTexture")
            uLinearImageSizeLoc = GLES30.glGetUniformLocation(linearProgram, "uImageSize")
            uLinearColorCorrectionMatrixLoc = GLES30.glGetUniformLocation(linearProgram, "uColorCorrectionMatrix")
            uLinearExposureGainLoc = GLES30.glGetUniformLocation(linearProgram, "uExposureGain")
            uLinearOutputSharpAmountLoc = GLES30.glGetUniformLocation(linearProgram, "uOutputSharpAmount")
            uLinearTexMatrixLoc = GLES30.glGetUniformLocation(linearProgram, "uTexMatrix")

            GLES30.glDeleteShader(fShaderLinear)
        }

        // 2. LUT + ColorRecipe Program
        val fShaderLut = compileShader(GLES30.GL_FRAGMENT_SHADER, RawShaders.LUT_FRAGMENT_SHADER)
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
            uLutCurveLoc = GLES30.glGetUniformLocation(lutProgram, "uLutCurve")
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

        // 2.5 Tone Mapping Program (New)
        val fShaderToneMap = compileShader(GLES30.GL_FRAGMENT_SHADER, RawShaders.TONEMAP_FRAGMENT_SHADER)
        if (vShader != 0 && fShaderToneMap != 0) {
            tonemapProgram = GLES30.glCreateProgram()
            GLES30.glAttachShader(tonemapProgram, vShader)
            GLES30.glAttachShader(tonemapProgram, fShaderToneMap)
            GLES30.glLinkProgram(tonemapProgram)

            uToneMapInputTextureLoc = GLES30.glGetUniformLocation(tonemapProgram, "uInputTexture")
            uToneMapParamsLoc = GLES30.glGetUniformLocation(tonemapProgram, "uToneMapParams")
            uToneMapTexMatrixLoc = GLES30.glGetUniformLocation(tonemapProgram, "uTexMatrix")
            uToneCurveLoc = GLES30.glGetUniformLocation(tonemapProgram, "uToneCurve")
            uToneMapTexelSizeLoc = GLES30.glGetUniformLocation(tonemapProgram, "uTexelSize")

            GLES30.glDeleteShader(fShaderToneMap)
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
    private fun uploadRawTextureFromBuffer(
        buffer: ByteBuffer,
        width: Int,
        height: Int,
        rowStride: Int,
        cfaPattern: Int
    ) {
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
        val isLinearRGB = cfaPattern == RawMetadata.CFA_LINEAR_RGB
        val bytesPerPixel = if (isLinearRGB) 6 else 2 // 16-bit (x3 for RGB)
        val rowLength = rowStride / bytesPerPixel

        val internalFormat = if (isLinearRGB) GLES30.GL_RGB16UI else GLES30.GL_R16UI
        val format = if (isLinearRGB) GLES30.GL_RGB_INTEGER else GLES30.GL_RED_INTEGER

        GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 2)
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ROW_LENGTH, rowLength)

        GLES30.glTexImage2D(
            GLES30.GL_TEXTURE_2D,
            0,
            internalFormat,
            width,
            height,
            0,
            format,
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
            // Check if size matches, if not, recreate
            if (demosaicWidth == width && demosaicHeight == height) {
                return
            }
            // Size mismatch, destroy and recreate
            GLES30.glDeleteTextures(1, intArrayOf(demosaicTextureId), 0)
            GLES30.glDeleteFramebuffers(1, intArrayOf(demosaicFramebufferId), 0)
        }

        demosaicWidth = width
        demosaicHeight = height

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
            if (lutWidth == width && lutHeight == height) {
                return
            }
            GLES30.glDeleteTextures(1, intArrayOf(lutTextureId), 0)
            GLES30.glDeleteFramebuffers(1, intArrayOf(lutFramebufferId), 0)
        }

        lutWidth = width
        lutHeight = height

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

    /**
     * 设置 ToneMap 中间帧缓冲
     */
    private fun setupTonemapFramebuffer(width: Int, height: Int) {
        if (tonemapWidth == width && tonemapHeight == height && tonemapFramebufferId != 0) {
            return
        }

        // 清理旧资源
        if (tonemapTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(tonemapTextureId), 0)
        }
        if (tonemapFramebufferId != 0) {
            GLES30.glDeleteFramebuffers(1, intArrayOf(tonemapFramebufferId), 0)
        }

        tonemapWidth = width
        tonemapHeight = height

        // 创建输出纹理 (使用 8位，因为 ToneMap 之后已经是 LDR)
        val textures = IntArray(1)
        GLES30.glGenTextures(1, textures, 0)
        tonemapTextureId = textures[0]
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, tonemapTextureId)
        GLES30.glTexImage2D(
            GLES30.GL_TEXTURE_2D, 0, GLES30.GL_RGBA8, width, height, 0,
            GLES30.GL_RGBA, GLES30.GL_UNSIGNED_BYTE, null
        )
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)

        // 创建帧缓冲
        val framebuffers = IntArray(1)
        GLES30.glGenFramebuffers(1, framebuffers, 0)
        tonemapFramebufferId = framebuffers[0]
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, tonemapFramebufferId)
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER,
            GLES30.GL_COLOR_ATTACHMENT0,
            GLES30.GL_TEXTURE_2D,
            tonemapTextureId,
            0
        )
        checkGlError("setupTonemapFramebuffer")
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
     * 3. 场景分析 (CPU Pre-pass)
     * 计算自动曝光增益、动态范围和黑白点
     */
    private fun analyzeRawBuffer(
        buffer: ByteBuffer,
        width: Int,
        height: Int,
        rowStride: Int,
        metadata: RawMetadata,
        previewLuma: Float = 0.18f
    ): SceneStats {
        val black = metadata.blackLevel[0].toInt() // 简化：使用 R 通道黑电平
        val white = metadata.whiteLevel.toInt()
        val range = (white - black).toFloat()

        // 采样参数
        val sampleStep = 8 // 采样步长 (降低 CPU 负载)
        var sumLogLuma = 0.0
        var pixelCount = 0

        // 极值统计 (用于计算动态范围)
        var minVal = 1.0f
        var maxVal = 0.0f

        // 直方图 (简易版 64 bins，用于更稳健的极值查找)
        val histogram = IntArray(64)

        val savedPos = buffer.position()
        val savedOrder = buffer.order()
        buffer.order(ByteOrder.nativeOrder())
        buffer.position(0)

        // 这里的 pixelStride 取决于 buffer 类型，RawByteBuffer 通常是 Short
        val pixelStride = 2 // 16-bit

        try {
            for (y in 0 until height step sampleStep) {
                // 计算行偏移
                val rowOffset = y * rowStride // rowStride is in bytes

                for (x in 0 until width step sampleStep) {
                    val offset = rowOffset + x * pixelStride

                    if (offset + 1 < buffer.limit()) {
                        val rawVal = buffer.getShort(offset).toInt() and 0xFFFF
                        // 归一化到 0.0 - 1.0
                        val norm = ((rawVal - black) / range).coerceIn(0.0001f, 1.0f)

                        // 1. 累加对数亮度 (用于计算几何平均值 Geometric Mean)
                        // 几何平均值比算术平均值更接近人眼对“中间调”的感觉，受高光噪点影响小
                        sumLogLuma += kotlin.math.ln(norm.toDouble())
                        pixelCount++

                        // 2. 统计极值
                        if (norm < minVal) minVal = norm
                        if (norm > maxVal) maxVal = norm

                        // 3. 填充直方图
                        val bin = (norm * 63).toInt().coerceIn(0, 63)
                        histogram[bin]++
                    }
                }
            }
        } finally {
            buffer.position(savedPos)
            buffer.order(savedOrder)
        }

        if (pixelCount == 0) return SceneStats(1.0f, 0.5f, 0.0f, 1.0f)

        // A. 计算自动曝光增益 (Auto Exposure)
        val avgLogLuma = sumLogLuma / pixelCount
        val geometricMean = kotlin.math.exp(avgLogLuma).toFloat()

        // 目标是将场景的几何平均亮度映射到中灰 (Middle Gray, usually 0.18)
        val targetMean = 0.12f
        val exposureGain = (targetMean / geometricMean).coerceIn(1.0f, 100.0f)

        // B. 计算稳健的黑白点 (Robust Min/Max)
        var count = 0
        var robustMin = 0.0f
        var robustMax = 1.0f
        val threshold = (pixelCount * 0.005).toInt() // 0.5% 阈值

        // Find Min (1st percentile)
        count = 0
        for (i in 0 until 64) {
            count += histogram[i]
            if (count > threshold) {
                robustMin = i / 63.0f
                break
            }
        }

        // Find Max (99th percentile)
        count = 0
        for (i in 63 downTo 0) {
            count += histogram[i]
            if (count > threshold) {
                robustMax = i / 63.0f
                break
            }
        }

        // C. 计算动态范围压缩强度 (DRC Strength)
        val exposedMax = exposureGain * robustMax
        val exposedMin = exposureGain * robustMin
        val drStops = kotlin.math.log2(exposedMax / kotlin.math.max(exposedMin, 0.0001f))

        val drcStrength = when {
            drStops < 6.0f -> 0.95f
            drStops > 12.0f -> 0.5f
            else -> 1.0f - ((drStops - 6.0f) / 6.0f) * 0.4f
        }

        // D. 修正黑白点 (返回 RAW 尺度 0.0-1.0，不带曝光增益)
        // 降低黑点，稍微压低底噪
        val finalBlack = (robustMin * 0.9f).coerceIn(0.0f, 0.1f)
        val finalWhite = robustMax.coerceIn(0.1f, 1.0f)

        return SceneStats(exposureGain, drcStrength, finalBlack, finalWhite)
    }

    // 辅助函数: 3x3 矩阵转置 (行主序 -> 列主序)
    private fun transposeMatrix3x3(matrix: FloatArray): FloatArray {
        require(matrix.size >= 9) { "Matrix must have at least 9 elements" }
        return floatArrayOf(
            matrix[0], matrix[3], matrix[6],
            matrix[1], matrix[4], matrix[7],
            matrix[2], matrix[5], matrix[8]
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
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 1)

        GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_WRAP_R, GLES30.GL_CLAMP_TO_EDGE)

        if (lutConfig.configDataType == LutConfig.CONFIG_DATA_TYPE_UINT16) {
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
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 4)
    }

    /**
     * Tone Mapping Pass
     */
    private fun renderToneMapPass(metadata: RawMetadata, sceneStats: SceneStats) {
        GLES30.glUseProgram(tonemapProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, tonemapFramebufferId)
        GLES30.glViewport(0, 0, metadata.width, metadata.height)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)

        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, demosaicTextureId)
        GLES30.glUniform1i(uToneMapInputTextureLoc, 0)

        // 设置 ToneMap 参数
        GLES30.glUniform4f(
            uToneMapParamsLoc,
            sceneStats.exposureGain,
            sceneStats.drcStrength,
            sceneStats.blackPoint,
            sceneStats.whitePoint
        )

        // 设置 ToneCurve
        GLES30.glUniform1fv(uToneCurveLoc, 256, toneCurve, 0)

        // 设置 TexelSize
        GLES30.glUniform2f(uToneMapTexelSizeLoc, 1.0f / metadata.width, 1.0f / metadata.height)

        // 绘制全屏四边形
        val identity = FloatArray(16)
        GlMatrix.setIdentityM(identity, 0)
        GLES30.glUniformMatrix4fv(uToneMapTexMatrixLoc, 1, false, identity, 0)

        drawQuad(tonemapProgram)
        checkGlError("renderToneMapPass")
    }

    /**
     * 加载并解析自定义 ToneCurve (XML 格式)
     * @param xmlContent XML 文件内容
     */
    fun loadToneCurve(xmlContent: String) {
        try {
            val factory = javax.xml.parsers.DocumentBuilderFactory.newInstance()
            val builder = factory.newDocumentBuilder()
            val doc = builder.parse(java.io.ByteArrayInputStream(xmlContent.toByteArray()))
            val elements = doc.getElementsByTagName("Element")
            
            val hValues = mutableListOf<Float>()
            val vValues = mutableListOf<Float>()
            
            for (i in 0 until elements.length) {
                val node = elements.item(i) as org.w3c.dom.Element
                hValues.add(node.getAttribute("h").toFloat())
                vValues.add(node.getAttribute("v").toFloat())
            }

            // 重新采样到 256 点线性 LUT
            for (i in 0 until 256) {
                val targetH = i / 255.0f
                toneCurve[i] = interpolateCurve(targetH, hValues, vValues)
            }
            PLog.d(TAG, "ToneCurve loaded: ${hValues.size} points")
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to load ToneCurve: ${e.message}")
        }
    }

    /**
     * 从 Assets 加载 ToneCurve
     */
    fun loadToneCurveFromAssets(context: Context, fileName: String = "tonecurve.xml") {
        try {
            val xmlContent = context.assets.open(fileName).bufferedReader().use { it.readText() }
            loadToneCurve(xmlContent)
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to load ToneCurve from assets: ${e.message}")
        }
    }

    private fun interpolateCurve(x: Float, h: List<Float>, v: List<Float>): Float {
        if (x <= h.first()) return v.first()
        if (x >= h.last()) return v.last()
        
        // 二分查找
        var low = 0
        var high = h.size - 2
        while (low <= high) {
            val mid = (low + high) / 2
            if (x < h[mid]) high = mid - 1
            else if (x > h[mid + 1]) low = mid + 1
            else {
                // 线性插值
                val ratio = (x - h[mid]) / (h[mid + 1] - h[mid])
                return v[mid] + ratio * (v[mid + 1] - v[mid])
            }
        }
        return v.first()
    }

    /**
     * LUT + ColorRecipe 处理 Pass
     */
    private fun renderLutPass(
        metadata: RawMetadata,
        lutConfig: LutConfig?,
        colorRecipeParams: ColorRecipeParams?,
        sceneStats: SceneStats,
        sharpeningValue: Float = 0f,
        noiseReductionValue: Float = 0f,
        chromaNoiseReductionValue: Float = 0f
    ) {
        GLES30.glUseProgram(lutProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, lutFramebufferId)

        GLES30.glViewport(0, 0, metadata.width, metadata.height)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)

        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, tonemapTextureId) // 使用 ToneMap 后的 LDR 纹理
        GLES30.glUniform1i(uLutInputTextureLoc, 0)

        val lutIntensity = colorRecipeParams?.lutIntensity ?: 0f
        lutConfig?.let { uploadLut3DTexture(it) }
        GLES30.glActiveTexture(GLES30.GL_TEXTURE1)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, lut3DTextureId)
        GLES30.glUniform1i(uLut3DTextureLoc, 1)
        GLES30.glUniform1f(uLutSizeLoc, lutConfig?.size?.toFloat() ?: 0f)
        GLES30.glUniform1f(uLutIntensityLoc, lutIntensity)
        GLES30.glUniform1i(uLutEnabledLoc, if (lutConfig != null) 1 else 0)
        GLES30.glUniform1i(uLutCurveLoc, lutConfig?.curve?.ordinal ?: 0)

        val colorRecipeEnabled = colorRecipeParams != null && !colorRecipeParams.isDefault()
        GLES30.glUniform1i(uColorRecipeEnabledLoc, if (colorRecipeEnabled) 1 else 0)

        if (colorRecipeEnabled) {
            GLES30.glUniform1f(uExposureLoc, colorRecipeParams!!.exposure)
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

        GLES30.glUniform2f(uTexelSizeLoc, 1.0f / metadata.width, 1.0f / metadata.height)
        GLES30.glUniform1f(uSharpeningLoc, sharpeningValue)
        GLES30.glUniform1f(uNoiseReductionLoc, noiseReductionValue)
        GLES30.glUniform1f(uChromaNoiseReductionLoc, chromaNoiseReductionValue)

        GLES30.glEnable(GLES30.GL_SCISSOR_TEST)
        for (y in 0 until metadata.height step TILE_SIZE) {
            val h = min(TILE_SIZE, metadata.height - y)
            for (x in 0 until metadata.width step TILE_SIZE) {
                val w = min(TILE_SIZE, metadata.width - x)
                GLES30.glViewport(x, y, w, h)
                GLES30.glScissor(x, y, w, h)
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

    private fun renderDemosaicPass(metadata: RawMetadata, exposureGain: Float = 1.0f) {
        if (metadata.cfaPattern == RawMetadata.CFA_LINEAR_RGB) {
            GLES30.glUseProgram(linearProgram)
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, demosaicFramebufferId)
            GLES30.glViewport(0, 0, metadata.width, metadata.height)
            GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, rawTextureId)
            GLES30.glUniform1i(uLinearRawTextureLoc, 0)
            GLES30.glUniform2f(uLinearImageSizeLoc, metadata.width.toFloat(), metadata.height.toFloat())
            val transposedCCM = transposeMatrix3x3(metadata.colorCorrectionMatrix)
            GLES30.glUniformMatrix3fv(uLinearColorCorrectionMatrixLoc, 1, false, transposedCCM, 0)
            GLES30.glUniform1f(uLinearExposureGainLoc, exposureGain)
            val identity = FloatArray(16)
            GlMatrix.setIdentityM(identity, 0)
            GLES30.glUniformMatrix4fv(uLinearTexMatrixLoc, 1, false, identity, 0)
            GLES30.glEnable(GLES30.GL_SCISSOR_TEST)
            for (y in 0 until metadata.height step TILE_SIZE) {
                val h = min(TILE_SIZE, metadata.height - y)
                for (x in 0 until metadata.width step TILE_SIZE) {
                    val w = min(TILE_SIZE, metadata.width - x)
                    GLES30.glViewport(x, y, w, h)
                    GLES30.glScissor(x, y, w, h)
                    drawQuad(linearProgram)
                }
            }
            GLES30.glDisable(GLES30.GL_SCISSOR_TEST)
            return
        }

        GLES30.glUseProgram(demosaicProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, demosaicFramebufferId)
        GLES30.glViewport(0, 0, metadata.width, metadata.height)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, rawTextureId)
        GLES30.glUniform1i(uRawTextureLoc, 0)
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
        val transposedCCM = transposeMatrix3x3(metadata.colorCorrectionMatrix)
        GLES30.glUniformMatrix3fv(uColorCorrectionMatrixLoc, 1, false, transposedCCM, 0)
        GLES30.glUniform1f(uExposureGainLoc, exposureGain)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE2)
        if (metadata.lensShadingMap != null) {
            uploadLensShadingTexture(metadata)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, lensShadingTextureId)
        } else {
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, dummyShadingTextureId)
        }
        GLES30.glUniform1i(uLensShadingMapLoc, 2)
        GLES30.glEnable(GLES30.GL_SCISSOR_TEST)
        for (y in 0 until metadata.height step TILE_SIZE) {
            val h = min(TILE_SIZE, metadata.height - y)
            for (x in 0 until metadata.width step TILE_SIZE) {
                val w = min(TILE_SIZE, metadata.width - x)
                GLES30.glViewport(x, y, w, h)
                GLES30.glScissor(x, y, w, h)
                val tileMatrix = FloatArray(16)
                GlMatrix.setIdentityM(tileMatrix, 0)
                GlMatrix.translateM(tileMatrix, 0, x.toFloat() / metadata.width, y.toFloat() / metadata.height, 0f)
                GlMatrix.scaleM(tileMatrix, 0, w.toFloat() / metadata.width, h.toFloat() / metadata.height, 1f)
                GLES30.glUniformMatrix4fv(uDemosaicTexMatrixLoc, 1, false, tileMatrix, 0)
                drawQuad(demosaicProgram)
                GLES30.glFlush()
            }
        }
        GLES30.glDisable(GLES30.GL_SCISSOR_TEST)
        checkGlError("renderDemosaicPass")
    }

    private fun renderOutputPass(rotation: Int, width: Int, height: Int, bounds: Rect, sourceTextureId: Int) {
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, outputFramebufferId)
        GLES30.glViewport(0, 0, bounds.width(), bounds.height())
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
        GLES30.glUseProgram(passthroughProgram)
        val isSwapped = rotation == 90 || rotation == 270
        val cropW: Float
        val cropH: Float
        val cropCenterX: Float
        val cropCenterY: Float
        if (isSwapped) {
            cropW = bounds.height().toFloat()
            cropH = bounds.width().toFloat()
            cropCenterX = (bounds.top + bounds.height() / 2f)
            cropCenterY = (bounds.left + bounds.width() / 2f)
        } else {
            cropW = bounds.width().toFloat()
            cropH = bounds.height().toFloat()
            cropCenterX = bounds.centerX().toFloat()
            cropCenterY = bounds.centerY().toFloat()
        }
        val texMatrix = FloatArray(16)
        GlMatrix.setIdentityM(texMatrix, 0)
        GlMatrix.translateM(texMatrix, 0, cropCenterX / width, cropCenterY / height, 0f)
        GlMatrix.scaleM(texMatrix, 0, cropW / width, cropH / height, 1.0f)
        GlMatrix.rotateM(texMatrix, 0, -rotation.toFloat(), 0f, 0f, 1f)
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
        if (positionHandle >= 0) GLES30.glDisableVertexAttribArray(positionHandle)
        if (texCoordHandle >= 0) GLES30.glDisableVertexAttribArray(texCoordHandle)
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
            bitmap.copyPixelsFromBuffer(mappedBuffer)
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
        if (tonemapProgram != 0) GLES30.glDeleteProgram(tonemapProgram)
        if (lutProgram != 0) GLES30.glDeleteProgram(lutProgram)
        if (passthroughProgram != 0) GLES30.glDeleteProgram(passthroughProgram)

        if (rawTextureId != 0) GLES30.glDeleteTextures(1, intArrayOf(rawTextureId), 0)
        if (demosaicTextureId != 0) GLES30.glDeleteTextures(1, intArrayOf(demosaicTextureId), 0)
        if (demosaicFramebufferId != 0) GLES30.glDeleteFramebuffers(
            1,
            intArrayOf(demosaicFramebufferId),
            0
        )
        if (lutTextureId != 0) GLES30.glDeleteTextures(1, intArrayOf(lutTextureId), 0)
        if (lutFramebufferId != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(lutFramebufferId), 0)
        if (tonemapTextureId != 0) GLES30.glDeleteTextures(1, intArrayOf(tonemapTextureId), 0)
        if (tonemapFramebufferId != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(tonemapFramebufferId), 0)
        if (lut3DTextureId != 0) GLES30.glDeleteTextures(1, intArrayOf(lut3DTextureId), 0)
        if (outputTextureId != 0) GLES30.glDeleteTextures(1, intArrayOf(outputTextureId), 0)
        if (outputFramebufferId != 0) GLES30.glDeleteFramebuffers(
            1,
            intArrayOf(outputFramebufferId),
            0
        )
        if (pboId != 0) GLES30.glDeleteBuffers(1, intArrayOf(pboId), 0)

        if (lensShadingTextureId != 0) GLES30.glDeleteTextures(
            1,
            intArrayOf(lensShadingTextureId),
            0
        )
        if (dummyShadingTextureId != 0) GLES30.glDeleteTextures(
            1,
            intArrayOf(dummyShadingTextureId),
            0
        )

        EGL14.eglMakeCurrent(
            eglDisplay,
            EGL14.EGL_NO_SURFACE,
            EGL14.EGL_NO_SURFACE,
            EGL14.EGL_NO_CONTEXT
        )
        EGL14.eglDestroySurface(eglDisplay, eglSurface)
        EGL14.eglDestroyContext(eglDisplay, eglContext)
        EGL14.eglTerminate(eglDisplay)

        isInitialized = false
        instance = null
        PLog.d(TAG, "RawDemosaicProcessor released")
    }
}
