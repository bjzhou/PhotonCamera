package com.hinnka.mycamera.raw

import android.content.Context
import android.graphics.Bitmap
import android.graphics.Rect
import android.hardware.camera2.CameraCharacteristics
import android.hardware.camera2.CaptureResult
import android.media.Image
import android.opengl.*
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.lut.LutConfig
import com.hinnka.mycamera.model.ColorRecipeParams
import com.hinnka.mycamera.model.SafeImage
import com.hinnka.mycamera.utils.BitmapUtils
import com.hinnka.mycamera.utils.PLog
import com.hinnka.mycamera.utils.RawProcessor
import kotlinx.coroutines.asCoroutineDispatcher
import kotlinx.coroutines.runBlocking
import kotlinx.coroutines.withContext
import java.io.File
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
    private var tonemapProgram = 0
    private var lutProgram = 0
    private var passthroughProgram = 0

    private var rawTextureId = 0

    private var demosaicFramebufferId = 0
    private var demosaicTextureId = 0
    private var demosaicWidth = 0
    private var demosaicHeight = 0

    private var tonemapFramebufferId = 0
    private var tonemapTextureId = 0
    private var tonemapWidth = 0
    private var tonemapHeight = 0

    private var lutFramebufferId = 0
    private var lutTextureId = 0
    private var lutWidth = 0
    private var lutHeight = 0
    private var lut3DTextureId = 0

    private var outputFramebufferId = 0
    private var outputTextureId = 0

    // DHT 多 Pass 中间资源
    private var dhtPass0Program = 0  // Init
    private var dhtPass1Program = 0  // HV Dir
    private var dhtPass2Program = 0  // HV Refine
    private var dhtPass3Program = 0  // Green
    private var dhtPass4Program = 0  // Diag Dir
    private var dhtPass5Program = 0  // RB Diag
    private var dhtPass6Program = 0  // RB HV + CCM

    // DHT 中间纹理: nraw (RGBA16F) 双缓冲 ping-pong
    private var dhtNrawTexId = intArrayOf(0, 0)
    private var dhtNrawFboId = intArrayOf(0, 0)

    // DHT 中间纹理: ndir (R8UI) 双缓冲 ping-pong
    private var dhtNdirTexId = intArrayOf(0, 0)
    private var dhtNdirFboId = intArrayOf(0, 0)
    private var dhtWidth = 0
    private var dhtHeight = 0

    // Guided Filter 多 Pass 降噪资源
    private var gfPass1Program = 0
    private var gfPass2Program = 0
    private var gfPass3Program = 0
    private var gfPass4Program = 0

    // Guided Filter 中间纹理: ping-pong (RGBA16F)
    private var gfTexId = intArrayOf(0, 0)
    private var gfFboId = intArrayOf(0, 0)
    private var gfWidth = 0
    private var gfHeight = 0

    // 缓冲区
    private var vertexBuffer: FloatBuffer? = null
    private var texCoordBuffer: FloatBuffer? = null
    private var indexBuffer: ShortBuffer? = null
    private var pboId = 0

    // Linear Program (New)
    private var linearProgram = 0
    private var uLinearRawTextureLoc = 0
    private var uLinearImageSizeLoc = 0
    private var uLinearColorCorrectionMatrixLoc = 0
    private var uLinearTexMatrixLoc = 0

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

    // Guided Filter Uniform 位置 (每个 pass 独立)
    private var gfPass1InputTexLoc = 0
    private var gfPass1TexelSizeLoc = 0
    private var gfPass1RadiusLoc = 0
    private var gfPass1TexMatrixLoc = 0
    private var gfPass2InputTexLoc = 0
    private var gfPass2TexelSizeLoc = 0
    private var gfPass2RadiusLoc = 0
    private var gfPass2EpsilonLoc = 0
    private var gfPass2TexMatrixLoc = 0
    private var gfPass3InputTexLoc = 0
    private var gfPass3TexelSizeLoc = 0
    private var gfPass3RadiusLoc = 0
    private var gfPass3TexMatrixLoc = 0
    private var gfPass4InputTexLoc = 0
    private var gfPass4OriginalTexLoc = 0
    private var gfPass4TexelSizeLoc = 0
    private var gfPass4RadiusLoc = 0
    private var gfPass4StrengthLoc = 0
    private var gfPass4ChromaStrengthLoc = 0
    private var gfPass4ChromaStrideLoc = 0
    private var gfPass4TexMatrixLoc = 0

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
        rawImage: SafeImage,
        characteristics: CameraCharacteristics,
        captureResult: CaptureResult,
        aspectRatio: AspectRatio,
        rotation: Int,
        lutConfig: LutConfig? = null,
        colorRecipeParams: ColorRecipeParams? = null,
        sharpeningValue: Float = 0f,
        noiseReductionValue: Float = 0f,
        chromaNoiseReductionValue: Float = 0f,
        previewLuma: Float = 0.5f
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
            rawImage.use {
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
                    chromaNoiseReductionValue = chromaNoiseReductionValue,
                    previewLuma = previewLuma,
                )
            }
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

        // 4. 第一步：全分辨率解马赛克 (Demosaic Pass)
        // 保持 Linear HDR 原色，不再这里进行曝光增益
        setupFullResFramebuffer(width, height)
        val demosaicStart = System.currentTimeMillis()
        renderDemosaicPass(metadata)
        PLog.d(TAG, "Demosaic Pass took: ${System.currentTimeMillis() - demosaicStart}ms")

        // 场景分析: 从 GPU demosaic 纹理读回精确的 Linear RGB 数据
        // 计算平均亮度、直方图、黑白点、DRC 强度
        val sceneStats = analyzeFromGpuTexture(demosaicTextureId, width, height, previewLuma)

        // 5. 第二步：Tone Mapping (HDR Linear -> LDR sRGB)
        setupTonemapFramebuffer(width, height)
        val tonemapStart = System.currentTimeMillis()
        renderToneMapPass(metadata, sceneStats)
        PLog.d(TAG, "ToneMap Pass took: ${System.currentTimeMillis() - tonemapStart}ms")

        // 5.5 Guided Filter 降噪 (ToneMap 之后, LUT 之前)
        var denoiseOutputTexture = tonemapTextureId  // 默认使用 ToneMap 的输出
        if (noiseReductionValue > 0.01f) {
            val denoiseStart = System.currentTimeMillis()
            renderGuidedFilterPass(
                sourceTextureId = tonemapTextureId,
                width = width,
                height = height,
                noiseReductionValue = noiseReductionValue,
                chromaNoiseReductionValue = chromaNoiseReductionValue
            )
            denoiseOutputTexture = gfTexId[1]  // LUT pass 从降噪结果读取
            PLog.d(TAG, "Guided Filter Denoise took: ${System.currentTimeMillis() - denoiseStart}ms")
        }

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
            chromaNoiseReductionValue,
            denoiseOutputTexture
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

        // 1. DHT Multi-Pass Programs (替代旧的单 pass AHD)
        initDhtPrograms(vShader)

        // 1.5 Linear Program (For Stacked RGB, 保留)
        val fShaderLinear = compileShader(GLES30.GL_FRAGMENT_SHADER, RawShaders.FRAGMENT_SHADER_LINEAR)
        if (vShader != 0 && fShaderLinear != 0) {
            linearProgram = GLES30.glCreateProgram()
            GLES30.glAttachShader(linearProgram, vShader)
            GLES30.glAttachShader(linearProgram, fShaderLinear)
            GLES30.glLinkProgram(linearProgram)

            uLinearRawTextureLoc = GLES30.glGetUniformLocation(linearProgram, "uRawTexture")
            uLinearImageSizeLoc = GLES30.glGetUniformLocation(linearProgram, "uImageSize")
            uLinearColorCorrectionMatrixLoc = GLES30.glGetUniformLocation(linearProgram, "uColorCorrectionMatrix")
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

        // 2.7 Guided Filter Programs (4 pass 降噪)
        initGuidedFilterPrograms(vShader)

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
        vertexBuffer = ByteBuffer.allocateDirect(RawShaders.FULL_QUAD_VERTICES.size * 4)
            .order(ByteOrder.nativeOrder())
            .asFloatBuffer()
            .put(RawShaders.FULL_QUAD_VERTICES)
        vertexBuffer?.position(0)

        texCoordBuffer = ByteBuffer.allocateDirect(RawShaders.TEXTURE_COORDS.size * 4)
            .order(ByteOrder.nativeOrder())
            .asFloatBuffer()
            .put(RawShaders.TEXTURE_COORDS)
        texCoordBuffer?.position(0)

        indexBuffer = ByteBuffer.allocateDirect(RawShaders.DRAW_ORDER.size * 2)
            .order(ByteOrder.nativeOrder())
            .asShortBuffer()
            .put(RawShaders.DRAW_ORDER)
        indexBuffer?.position(0)
    }

    // ==================== DHT Multi-Pass 方法 ====================

    private fun createDhtProgram(vShader: Int, fSource: String): Int {
        val fShader = compileShader(GLES30.GL_FRAGMENT_SHADER, fSource)
        if (vShader == 0 || fShader == 0) return 0
        val prog = GLES30.glCreateProgram()
        GLES30.glAttachShader(prog, vShader)
        GLES30.glAttachShader(prog, fShader)
        GLES30.glLinkProgram(prog)
        val linked = IntArray(1)
        GLES30.glGetProgramiv(prog, GLES30.GL_LINK_STATUS, linked, 0)
        if (linked[0] == 0) {
            PLog.e(TAG, "DHT program link failed: ${GLES30.glGetProgramInfoLog(prog)}")
            GLES30.glDeleteProgram(prog)
            GLES30.glDeleteShader(fShader)
            return 0
        }
        GLES30.glDeleteShader(fShader)
        return prog
    }

    private fun initDhtPrograms(vShader: Int) {
        dhtPass0Program = createDhtProgram(vShader, DhtShaders.DHT_PASS0_INIT)
        dhtPass1Program = createDhtProgram(vShader, DhtShaders.DHT_PASS1_HV_DIR)
        dhtPass2Program = createDhtProgram(vShader, DhtShaders.DHT_PASS2_HV_REFINE)
        dhtPass3Program = createDhtProgram(vShader, DhtShaders.DHT_PASS3_GREEN)
        dhtPass4Program = createDhtProgram(vShader, DhtShaders.DHT_PASS4_DIAG_DIR)
        dhtPass5Program = createDhtProgram(vShader, DhtShaders.DHT_PASS5_RB_DIAG)
        dhtPass6Program = createDhtProgram(vShader, DhtShaders.DHT_PASS6_RB_HV)
        PLog.d(
            TAG, "DHT programs: p0=$dhtPass0Program p1=$dhtPass1Program p2=$dhtPass2Program " +
                    "p3=$dhtPass3Program p4=$dhtPass4Program p5=$dhtPass5Program p6=$dhtPass6Program"
        )
    }

    private fun setupDhtFramebuffers(width: Int, height: Int) {
        if (dhtWidth == width && dhtHeight == height && dhtNrawTexId[0] != 0) return
        dhtWidth = width
        dhtHeight = height

        // 清理旧资源
        for (i in 0..1) {
            if (dhtNrawTexId[i] != 0) GLES30.glDeleteTextures(1, intArrayOf(dhtNrawTexId[i]), 0)
            if (dhtNrawFboId[i] != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(dhtNrawFboId[i]), 0)
            if (dhtNdirTexId[i] != 0) GLES30.glDeleteTextures(1, intArrayOf(dhtNdirTexId[i]), 0)
            if (dhtNdirFboId[i] != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(dhtNdirFboId[i]), 0)
        }

        // 创建 nraw 双缓冲 (RGBA16F)
        for (i in 0..1) {
            val t = IntArray(1);
            val f = IntArray(1)
            GLES30.glGenTextures(1, t, 0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, t[0])
            GLES30.glTexImage2D(
                GLES30.GL_TEXTURE_2D, 0, GLES30.GL_RGBA16F, width, height, 0,
                GLES30.GL_RGBA, GLES30.GL_HALF_FLOAT, null
            )
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_NEAREST)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_NEAREST)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glGenFramebuffers(1, f, 0)
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, f[0])
            GLES30.glFramebufferTexture2D(
                GLES30.GL_FRAMEBUFFER,
                GLES30.GL_COLOR_ATTACHMENT0,
                GLES30.GL_TEXTURE_2D,
                t[0],
                0
            )
            dhtNrawTexId[i] = t[0]; dhtNrawFboId[i] = f[0]
        }

        // 创建 ndir 双缓冲 (R8UI)
        for (i in 0..1) {
            val t = IntArray(1);
            val f = IntArray(1)
            GLES30.glGenTextures(1, t, 0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, t[0])
            GLES30.glTexImage2D(
                GLES30.GL_TEXTURE_2D, 0, GLES30.GL_R8UI, width, height, 0,
                GLES30.GL_RED_INTEGER, GLES30.GL_UNSIGNED_BYTE, null
            )
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_NEAREST)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_NEAREST)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glGenFramebuffers(1, f, 0)
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, f[0])
            GLES30.glFramebufferTexture2D(
                GLES30.GL_FRAMEBUFFER,
                GLES30.GL_COLOR_ATTACHMENT0,
                GLES30.GL_TEXTURE_2D,
                t[0],
                0
            )
            dhtNdirTexId[i] = t[0]; dhtNdirFboId[i] = f[0]
        }
        checkGlError("setupDhtFramebuffers")
    }

    /**
     * 初始化 Guided Filter 4-Pass 着色器程序
     */
    private fun initGuidedFilterPrograms(vShader: Int) {
        fun createGfProgram(vShader: Int, fSource: String, name: String): Int {
            val fShader = compileShader(GLES30.GL_FRAGMENT_SHADER, fSource)
            if (vShader == 0 || fShader == 0) return 0
            val program = GLES30.glCreateProgram()
            GLES30.glAttachShader(program, vShader)
            GLES30.glAttachShader(program, fShader)
            GLES30.glLinkProgram(program)
            GLES30.glDeleteShader(fShader)
            return program
        }

        gfPass1Program = createGfProgram(vShader, GuidedFilterShaders.PASS1_HORIZONTAL_MEAN, "GF_Pass1")
        gfPass2Program = createGfProgram(vShader, GuidedFilterShaders.PASS2_VERTICAL_MEAN_COEF, "GF_Pass2")
        gfPass3Program = createGfProgram(vShader, GuidedFilterShaders.PASS3_HORIZONTAL_MEAN_AB, "GF_Pass3")
        gfPass4Program = createGfProgram(vShader, GuidedFilterShaders.PASS4_VERTICAL_MEAN_OUTPUT, "GF_Pass4")

        // 缓存 Uniform 位置
        if (gfPass1Program != 0) {
            gfPass1InputTexLoc = GLES30.glGetUniformLocation(gfPass1Program, "uInputTexture")
            gfPass1TexelSizeLoc = GLES30.glGetUniformLocation(gfPass1Program, "uTexelSize")
            gfPass1RadiusLoc = GLES30.glGetUniformLocation(gfPass1Program, "uRadius")
            gfPass1TexMatrixLoc = GLES30.glGetUniformLocation(gfPass1Program, "uTexMatrix")
        }
        if (gfPass2Program != 0) {
            gfPass2InputTexLoc = GLES30.glGetUniformLocation(gfPass2Program, "uInputTexture")
            gfPass2TexelSizeLoc = GLES30.glGetUniformLocation(gfPass2Program, "uTexelSize")
            gfPass2RadiusLoc = GLES30.glGetUniformLocation(gfPass2Program, "uRadius")
            gfPass2EpsilonLoc = GLES30.glGetUniformLocation(gfPass2Program, "uEpsilon")
            gfPass2TexMatrixLoc = GLES30.glGetUniformLocation(gfPass2Program, "uTexMatrix")
        }
        if (gfPass3Program != 0) {
            gfPass3InputTexLoc = GLES30.glGetUniformLocation(gfPass3Program, "uInputTexture")
            gfPass3TexelSizeLoc = GLES30.glGetUniformLocation(gfPass3Program, "uTexelSize")
            gfPass3RadiusLoc = GLES30.glGetUniformLocation(gfPass3Program, "uRadius")
            gfPass3TexMatrixLoc = GLES30.glGetUniformLocation(gfPass3Program, "uTexMatrix")
        }
        if (gfPass4Program != 0) {
            gfPass4InputTexLoc = GLES30.glGetUniformLocation(gfPass4Program, "uInputTexture")
            gfPass4OriginalTexLoc = GLES30.glGetUniformLocation(gfPass4Program, "uOriginalTexture")
            gfPass4TexelSizeLoc = GLES30.glGetUniformLocation(gfPass4Program, "uTexelSize")
            gfPass4RadiusLoc = GLES30.glGetUniformLocation(gfPass4Program, "uRadius")
            gfPass4StrengthLoc = GLES30.glGetUniformLocation(gfPass4Program, "uStrength")
            gfPass4ChromaStrengthLoc = GLES30.glGetUniformLocation(gfPass4Program, "uChromaStrength")
            gfPass4ChromaStrideLoc = GLES30.glGetUniformLocation(gfPass4Program, "uChromaStride")
            gfPass4TexMatrixLoc = GLES30.glGetUniformLocation(gfPass4Program, "uTexMatrix")
        }

        PLog.d(
            TAG,
            "Guided Filter programs: p1=$gfPass1Program p2=$gfPass2Program p3=$gfPass3Program p4=$gfPass4Program"
        )
    }

    /**
     * 设置 Guided Filter 中间帧缓冲 (ping-pong RGBA16F)
     */
    private fun setupGuidedFilterFramebuffers(width: Int, height: Int) {
        if (gfWidth == width && gfHeight == height && gfTexId[0] != 0) return
        gfWidth = width
        gfHeight = height

        // 清理旧资源
        for (i in 0..1) {
            if (gfTexId[i] != 0) GLES30.glDeleteTextures(1, intArrayOf(gfTexId[i]), 0)
            if (gfFboId[i] != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(gfFboId[i]), 0)
        }

        // 创建双缓冲 (RGBA16F) 用于中间 pass
        for (i in 0..1) {
            val t = IntArray(1)
            val f = IntArray(1)
            GLES30.glGenTextures(1, t, 0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, t[0])
            GLES30.glTexImage2D(
                GLES30.GL_TEXTURE_2D, 0, GLES30.GL_RGBA16F, width, height, 0,
                GLES30.GL_RGBA, GLES30.GL_HALF_FLOAT, null
            )
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_NEAREST)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_NEAREST)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glGenFramebuffers(1, f, 0)
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, f[0])
            GLES30.glFramebufferTexture2D(
                GLES30.GL_FRAMEBUFFER,
                GLES30.GL_COLOR_ATTACHMENT0,
                GLES30.GL_TEXTURE_2D,
                t[0],
                0
            )
            gfTexId[i] = t[0]; gfFboId[i] = f[0]
        }
        checkGlError("setupGuidedFilterFramebuffers")
    }

    /**
     * 渲染 Guided Filter 多 Pass 降噪
     *
     * 管线: tonemapTexture → [Pass1→Pass2→Pass3→Pass4] → tonemapTexture (原地替换)
     *
     * @param sourceTextureId 输入纹理 (ToneMap 输出)
     * @param outputFboId 输出 FBO (ToneMap FBO，用于原地写回)
     * @param width 图像宽度
     * @param height 图像高度
     * @param noiseReductionValue 降噪强度 (0.0 - 1.0)
     */
    private fun renderGuidedFilterPass(
        sourceTextureId: Int,
        width: Int,
        height: Int,
        noiseReductionValue: Float,
        chromaNoiseReductionValue: Float
    ) {
        if (noiseReductionValue <= 0.01f && chromaNoiseReductionValue <= 0.01f) return
        setupGuidedFilterFramebuffers(width, height)

        if (gfPass1Program == 0 || gfPass2Program == 0 || gfPass3Program == 0 || gfPass4Program == 0) {
            PLog.w(TAG, "Guided Filter programs not initialized, skipping denoise")
            return
        }

        val texelW = 1.0f / width
        val texelH = 1.0f / height

        // 亮度降噪参数 (Guided Filter)
        // radius: 控制滤波窗口大小
        val radius = (4 + (noiseReductionValue * 16).toInt()).coerceAtMost(20)
        // epsilon: 正则化参数, 控制平滑程度
        val epsilon = 0.001f + noiseReductionValue * noiseReductionValue * 0.15f
        // strength: 最终混合强度
        val strength = noiseReductionValue.coerceIn(0.0f, 1.0f)

        // 色度降噪参数 (Chroma Dilated Blur)
        val chromaStrength = chromaNoiseReductionValue.coerceIn(0.0f, 1.0f)
        val chromaStride = 1.0f + chromaNoiseReductionValue * 24.0f

        val identityMatrix = FloatArray(16)
        GlMatrix.setIdentityM(identityMatrix, 0)

        // ===== Pass 1: 水平 Box Filter (原图 → gfFbo[0]) =====
        GLES30.glUseProgram(gfPass1Program)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, gfFboId[0])
        GLES30.glViewport(0, 0, width, height)

        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, sourceTextureId)
        GLES30.glUniform1i(gfPass1InputTexLoc, 0)
        GLES30.glUniform2f(gfPass1TexelSizeLoc, texelW, texelH)
        GLES30.glUniform1i(gfPass1RadiusLoc, radius)
        GLES30.glUniformMatrix4fv(gfPass1TexMatrixLoc, 1, false, identityMatrix, 0)
        drawQuad(gfPass1Program)

        // ===== Pass 2: 垂直 Box Filter + 计算 a,b (gfTex[0] → gfFbo[1]) =====
        GLES30.glUseProgram(gfPass2Program)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, gfFboId[1])
        GLES30.glViewport(0, 0, width, height)

        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, gfTexId[0])
        GLES30.glUniform1i(gfPass2InputTexLoc, 0)
        GLES30.glUniform2f(gfPass2TexelSizeLoc, texelW, texelH)
        GLES30.glUniform1i(gfPass2RadiusLoc, radius)
        GLES30.glUniform1f(gfPass2EpsilonLoc, epsilon)
        GLES30.glUniformMatrix4fv(gfPass2TexMatrixLoc, 1, false, identityMatrix, 0)
        drawQuad(gfPass2Program)

        // ===== Pass 3: 水平 Box Filter on a,b (gfTex[1] → gfFbo[0]) =====
        GLES30.glUseProgram(gfPass3Program)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, gfFboId[0])
        GLES30.glViewport(0, 0, width, height)

        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, gfTexId[1])
        GLES30.glUniform1i(gfPass3InputTexLoc, 0)
        GLES30.glUniform2f(gfPass3TexelSizeLoc, texelW, texelH)
        GLES30.glUniform1i(gfPass3RadiusLoc, radius)
        GLES30.glUniformMatrix4fv(gfPass3TexMatrixLoc, 1, false, identityMatrix, 0)
        drawQuad(gfPass3Program)

        // ===== Pass 4: 垂直 Box Filter on a,b + 最终输出 (gfTex[0] + 原图 → gfFboId[1]) =====
        GLES30.glUseProgram(gfPass4Program)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, gfFboId[1])
        GLES30.glViewport(0, 0, width, height)

        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, gfTexId[0])
        GLES30.glUniform1i(gfPass4InputTexLoc, 0)

        GLES30.glActiveTexture(GLES30.GL_TEXTURE1)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, sourceTextureId)
        GLES30.glUniform1i(gfPass4OriginalTexLoc, 1)

        GLES30.glUniform2f(gfPass4TexelSizeLoc, texelW, texelH)
        GLES30.glUniform1i(gfPass4RadiusLoc, radius)
        GLES30.glUniform1f(gfPass4StrengthLoc, strength)
        GLES30.glUniform1f(gfPass4ChromaStrengthLoc, chromaStrength)
        GLES30.glUniform1f(gfPass4ChromaStrideLoc, chromaStride)
        GLES30.glUniformMatrix4fv(gfPass4TexMatrixLoc, 1, false, identityMatrix, 0)
        drawQuad(gfPass4Program)

        checkGlError("renderGuidedFilterPass")
    }

    private fun dhtSetCommonUniforms(program: Int, metadata: RawMetadata) {
        val loc = GLES30.glGetUniformLocation(program, "uImageSize")
        if (loc >= 0) GLES30.glUniform2f(loc, metadata.width.toFloat(), metadata.height.toFloat())
        val cfaLoc = GLES30.glGetUniformLocation(program, "uCfaPattern")
        if (cfaLoc >= 0) GLES30.glUniform1i(cfaLoc, metadata.cfaPattern)
        val tmLoc = GLES30.glGetUniformLocation(program, "uTexMatrix")
        if (tmLoc >= 0) {
            val id = FloatArray(16); GlMatrix.setIdentityM(id, 0)
            GLES30.glUniformMatrix4fv(tmLoc, 1, false, id, 0)
        }
    }

    /** DHT 多 Pass 渲染入口 */
    private fun renderDhtDemosaic(metadata: RawMetadata) {
        val w = metadata.width;
        val h = metadata.height
        setupDhtFramebuffers(w, h)

        // 计算通道最大/最小值 (简化: 使用固定的安全范围)
        // DHT 内部使用 0.5 作为最小值 (防除零), 最大值设为 whiteLevel 归一化后
        val chMax = floatArrayOf(10.0f, 10.0f, 10.0f) // 宽裕的上界
        val chMin = floatArrayOf(1e-4f, 1e-4f, 1e-4f) // 与 shader EPS 一致

        // === Pass 0: Init (RAW -> nraw[0]) ===
        GLES30.glUseProgram(dhtPass0Program)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, dhtNrawFboId[0])
        GLES30.glViewport(0, 0, w, h)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
        dhtSetCommonUniforms(dhtPass0Program, metadata)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, rawTextureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(dhtPass0Program, "uRawTexture"), 0)
        GLES30.glUniform4f(
            GLES30.glGetUniformLocation(dhtPass0Program, "uBlackLevel"),
            metadata.blackLevel[0], metadata.blackLevel[1], metadata.blackLevel[2], metadata.blackLevel[3]
        )
        GLES30.glUniform1f(GLES30.glGetUniformLocation(dhtPass0Program, "uWhiteLevel"), metadata.whiteLevel)
        GLES30.glUniform4f(
            GLES30.glGetUniformLocation(dhtPass0Program, "uWhiteBalanceGains"),
            metadata.whiteBalanceGains[0], metadata.whiteBalanceGains[1],
            metadata.whiteBalanceGains[2], metadata.whiteBalanceGains[3]
        )
        GLES30.glActiveTexture(GLES30.GL_TEXTURE1)
        if (metadata.lensShadingMap != null) {
            uploadLensShadingTexture(metadata)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, lensShadingTextureId)
        } else {
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, dummyShadingTextureId)
        }
        GLES30.glUniform1i(GLES30.glGetUniformLocation(dhtPass0Program, "uLensShadingMap"), 1)
        drawQuad(dhtPass0Program)

        // === Pass 1: HV Direction Detection (nraw[0] -> ndir[0]) ===
        GLES30.glUseProgram(dhtPass1Program)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, dhtNdirFboId[0])
        GLES30.glViewport(0, 0, w, h)
        GLES30.glClearBufferuiv(GLES30.GL_COLOR, 0, intArrayOf(0, 0, 0, 0), 0)
        dhtSetCommonUniforms(dhtPass1Program, metadata)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, dhtNrawTexId[0])
        GLES30.glUniform1i(GLES30.glGetUniformLocation(dhtPass1Program, "uNrawTexture"), 0)
        drawQuad(dhtPass1Program)

        // === Pass 2: HV Direction Refinement (3 sub-passes) ===
        // ndir ping-pong: 0 -> 1 -> 0 -> 1
        for (subPass in 0..2) {
            val srcDir = subPass % 2
            val dstDir = (subPass + 1) % 2
            GLES30.glUseProgram(dhtPass2Program)
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, dhtNdirFboId[dstDir])
            GLES30.glViewport(0, 0, w, h)
            dhtSetCommonUniforms(dhtPass2Program, metadata)
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, dhtNdirTexId[srcDir])
            GLES30.glUniform1i(GLES30.glGetUniformLocation(dhtPass2Program, "uNdirTexture"), 0)
            GLES30.glUniform1i(GLES30.glGetUniformLocation(dhtPass2Program, "uPass"), subPass)
            drawQuad(dhtPass2Program)
        }
        // After 3 sub-passes (0,1,2): result is in ndir[1]
        val ndirAfterHV = 1

        // === Pass 3: Green Interpolation (nraw[0] + ndir -> nraw[1]) ===
        GLES30.glUseProgram(dhtPass3Program)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, dhtNrawFboId[1])
        GLES30.glViewport(0, 0, w, h)
        dhtSetCommonUniforms(dhtPass3Program, metadata)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, dhtNrawTexId[0])
        GLES30.glUniform1i(GLES30.glGetUniformLocation(dhtPass3Program, "uNrawTexture"), 0)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE1)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, dhtNdirTexId[ndirAfterHV])
        GLES30.glUniform1i(GLES30.glGetUniformLocation(dhtPass3Program, "uNdirTexture"), 1)
        GLES30.glUniform2f(GLES30.glGetUniformLocation(dhtPass3Program, "uChannelMax"), chMax[1], 0f)
        GLES30.glUniform2f(GLES30.glGetUniformLocation(dhtPass3Program, "uChannelMin"), chMin[1], 0f)
        drawQuad(dhtPass3Program)
        // nraw with green: nraw[1]

        // === Pass 4: Diagonal Direction Detection + Refine (2 sub-passes) ===
        // Sub-pass 0: detect (nraw[1] + ndir[ndirAfterHV] -> ndir[ndirAfterHV^1])
        // Sub-pass 1: refine_idiag (nraw[1] + ndir -> ndir)
        var curNdir = ndirAfterHV
        for (subPass in 0..1) {
            val dstDir = curNdir xor 1
            GLES30.glUseProgram(dhtPass4Program)
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, dhtNdirFboId[dstDir])
            GLES30.glViewport(0, 0, w, h)
            dhtSetCommonUniforms(dhtPass4Program, metadata)
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, dhtNrawTexId[1])
            GLES30.glUniform1i(GLES30.glGetUniformLocation(dhtPass4Program, "uNrawTexture"), 0)
            GLES30.glActiveTexture(GLES30.GL_TEXTURE1)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, dhtNdirTexId[curNdir])
            GLES30.glUniform1i(GLES30.glGetUniformLocation(dhtPass4Program, "uNdirTexture"), 1)
            GLES30.glUniform1i(GLES30.glGetUniformLocation(dhtPass4Program, "uPass"), subPass)
            drawQuad(dhtPass4Program)
            curNdir = dstDir
        }
        // curNdir now points to the final ndir with both HV and diag directions

        // === Pass 5: RB Diagonal Interpolation (nraw[1] + ndir -> nraw[0]) ===
        GLES30.glUseProgram(dhtPass5Program)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, dhtNrawFboId[0])
        GLES30.glViewport(0, 0, w, h)
        dhtSetCommonUniforms(dhtPass5Program, metadata)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, dhtNrawTexId[1])
        GLES30.glUniform1i(GLES30.glGetUniformLocation(dhtPass5Program, "uNrawTexture"), 0)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE1)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, dhtNdirTexId[curNdir])
        GLES30.glUniform1i(GLES30.glGetUniformLocation(dhtPass5Program, "uNdirTexture"), 1)
        GLES30.glUniform3f(GLES30.glGetUniformLocation(dhtPass5Program, "uChannelMax"), chMax[0], chMax[1], chMax[2])
        GLES30.glUniform3f(GLES30.glGetUniformLocation(dhtPass5Program, "uChannelMin"), chMin[0], chMin[1], chMin[2])
        drawQuad(dhtPass5Program)
        // nraw with RB diag: nraw[0]

        // === Pass 6: RB HV Interpolation + CCM (nraw[0] + ndir -> demosaic FBO) ===
        GLES30.glUseProgram(dhtPass6Program)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, demosaicFramebufferId)
        GLES30.glViewport(0, 0, w, h)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
        dhtSetCommonUniforms(dhtPass6Program, metadata)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, dhtNrawTexId[0])
        GLES30.glUniform1i(GLES30.glGetUniformLocation(dhtPass6Program, "uNrawTexture"), 0)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE1)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, dhtNdirTexId[curNdir])
        GLES30.glUniform1i(GLES30.glGetUniformLocation(dhtPass6Program, "uNdirTexture"), 1)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE2)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, rawTextureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(dhtPass6Program, "uRawTexture"), 2)
        GLES30.glUniform3f(GLES30.glGetUniformLocation(dhtPass6Program, "uChannelMax"), chMax[0], chMax[1], chMax[2])
        GLES30.glUniform3f(GLES30.glGetUniformLocation(dhtPass6Program, "uChannelMin"), chMin[0], chMin[1], chMin[2])
        GLES30.glUniform4f(
            GLES30.glGetUniformLocation(dhtPass6Program, "uBlackLevel"),
            metadata.blackLevel[0], metadata.blackLevel[1], metadata.blackLevel[2], metadata.blackLevel[3]
        )
        GLES30.glUniform1f(GLES30.glGetUniformLocation(dhtPass6Program, "uWhiteLevel"), metadata.whiteLevel)
        val transposedCCM = transposeMatrix3x3(metadata.colorCorrectionMatrix)
        GLES30.glUniformMatrix3fv(
            GLES30.glGetUniformLocation(dhtPass6Program, "uColorCorrectionMatrix"),
            1, false, transposedCCM, 0
        )
        drawQuad(dhtPass6Program)

        checkGlError("renderDhtDemosaic")
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
     * 场景分析 (GPU Post-Demosaic)
     *
     * 从 demosaic 后的 RGBA16F 纹理中间 mip level 读回降采样数据，
     * 在精确的 Linear RGB 数据上计算所有统计量。
     *
     * 优势:
     * - 数据已经过完整的 BLC → WB → LSC → Demosaic → CCM 变换链
     * - 与 ToneMap shader 输入完全一致，不存在 CPU/GPU 不匹配
     * - 读取量极小 (~64x64 * 16bytes ≈ 64KB)，性能优于 CPU 全图采样
     * - 直方图基于真实亮度，百分位数（黑白点）更准确
     */
    private fun analyzeFromGpuTexture(
        textureId: Int,
        width: Int,
        height: Int,
        previewLuma: Float = 0.18f
    ): SceneStats {
        // 1. 生成 mipmap
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, textureId)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR_MIPMAP_NEAREST)
        GLES30.glGenerateMipmap(GLES30.GL_TEXTURE_2D)
        checkGlError("analyzeFromGpuTexture: glGenerateMipmap")

        // 2. 选择合适的 mip level 进行读回
        // 目标: ~64x64 的降采样分辨率 (足够计算直方图，又足够小)
        val maxDim = maxOf(width, height)
        val totalMipLevels = (kotlin.math.ln(maxDim.toFloat()) / kotlin.math.ln(2.0f)).toInt()
        // 目标尺寸 ~64，所以需要降 log2(maxDim/64) 级
        val targetSize = 64
        val desiredMipLevel = (kotlin.math.ln(maxDim.toFloat() / targetSize) / kotlin.math.ln(2.0f))
            .toInt().coerceIn(0, totalMipLevels)

        // 计算该 mip level 的实际尺寸
        val mipWidth = maxOf(1, width shr desiredMipLevel)
        val mipHeight = maxOf(1, height shr desiredMipLevel)

        PLog.d(TAG, "analyzeFromGpuTexture: mipLevel=$desiredMipLevel, mipSize=${mipWidth}x${mipHeight}")

        // 3. 创建临时 FBO 绑定到该 mip level
        val tempFbo = IntArray(1)
        GLES30.glGenFramebuffers(1, tempFbo, 0)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, tempFbo[0])
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER,
            GLES30.GL_COLOR_ATTACHMENT0,
            GLES30.GL_TEXTURE_2D,
            textureId,
            desiredMipLevel
        )

        val status = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER)
        if (status != GLES30.GL_FRAMEBUFFER_COMPLETE) {
            PLog.w(TAG, "analyzeFromGpuTexture: FBO incomplete, status=$status, fallback")
            GLES30.glDeleteFramebuffers(1, tempFbo, 0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, textureId)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
            return SceneStats(1.0f, 0.0f, 0.0f, 1.0f)
        }

        // 4. 读取整个 mip 的像素数据 (RGBA float)
        val pixelCount = mipWidth * mipHeight
        val floatBuffer = ByteBuffer.allocateDirect(pixelCount * 4 * 4)
            .order(ByteOrder.nativeOrder())
            .asFloatBuffer()
        GLES30.glReadPixels(0, 0, mipWidth, mipHeight, GLES30.GL_RGBA, GLES30.GL_FLOAT, floatBuffer)
        checkGlError("analyzeFromGpuTexture: glReadPixels")

        // 5. 清理 GPU 资源
        GLES30.glDeleteFramebuffers(1, tempFbo, 0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, textureId)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)

        // ====== 以下全部基于精确的 GPU Linear RGB 数据 ======

        // 6. 遍历读回的像素，计算统计量
        val histBins = 256
        val histogram = IntArray(histBins)
        var sumLuma = 0.0
        var validCount = 0

        floatBuffer.position(0)
        for (i in 0 until pixelCount) {
            val r = floatBuffer.get()
            val g = floatBuffer.get()
            val b = floatBuffer.get()
            val a = floatBuffer.get() // skip alpha

            // Rec.709 亮度 (Linear 域)
            val luma = r * 0.2126f + g * 0.7152f + b * 0.0722f

            // 排除无效像素 (可能有 NaN 或 负值)
            if (luma.isNaN() || luma < 0f) continue

            validCount++
            sumLuma += luma.toDouble()

            // 直方图: 将亮度 clamp 到 [0, 2] 范围映射到 bins
            // 范围扩展到 2.0 是因为 CCM 后可能 > 1.0
            val histVal = (luma / 2.0f).coerceIn(0.0f, 1.0f)
            val bin = (histVal * (histBins - 1)).toInt().coerceIn(0, histBins - 1)
            histogram[bin]++
        }

        if (validCount == 0) return SceneStats(1.0f, 0.0f, 0.0f, 1.0f)

        // A. 计算平均亮度和自动曝光增益
        val avgLuma = (sumLuma / validCount).toFloat()
        val targetMean = previewLuma.pow(2.2f)
        val exposureGain = if (avgLuma > 0.0001f) {
            (targetMean / avgLuma).coerceIn(0.25f, 64.0f)
        } else {
            1.0f
        }

        // B. 计算稳健的黑白点 (Robust Percentiles)
        var count: Int
        var robustMin = 0.0f
        var robustMax = 1.0f
        val thresholdLow = (validCount * 0.005).toInt()   // P0.5
        val thresholdHigh = (validCount * 0.005).toInt()   // P99.5

        // P0.5 (黑点)
        count = 0
        for (i in 0 until histBins) {
            count += histogram[i]
            if (count > thresholdLow) {
                // 映射回 [0, 2] 范围
                robustMin = (i.toFloat() / (histBins - 1).toFloat()) * 2.0f
                break
            }
        }

        // P99.5 (白点)
        count = 0
        for (i in histBins - 1 downTo 0) {
            count += histogram[i]
            if (count > thresholdHigh) {
                robustMax = (i.toFloat() / (histBins - 1).toFloat()) * 2.0f
                break
            }
        }

        // C. 计算动态范围压缩强度 (DRC Strength)
        val exposedMax = exposureGain * robustMax
        val highlightHeadroom = kotlin.math.log2(exposedMax / targetMean)

        val drcStrength = when {
            highlightHeadroom < 2.0f -> 0.0f
            highlightHeadroom > 5.0f -> 0.6f
            else -> ((highlightHeadroom - 2.0f) / 3.0f) * 0.6f
        }

        // D. 修正黑白点 (传给 Shader, 在 Linear 空间)
        val finalBlack = (robustMin * 0.8f).coerceIn(0.0f, 0.05f)
        val finalWhite = robustMax.coerceIn(0.1f, 2.0f)

        PLog.d(
            TAG, "analyzeFromGpuTexture: avgLuma=$avgLuma, gain=$exposureGain, " +
                    "robustMin=$robustMin, robustMax=$robustMax, " +
                    "exposedMax=$exposedMax, headroom=${highlightHeadroom}stops, " +
                    "drc=$drcStrength, black=$finalBlack, white=$finalWhite"
        )

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
        chromaNoiseReductionValue: Float = 0f,
        inputTextureId: Int = tonemapTextureId
    ) {
        GLES30.glUseProgram(lutProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, lutFramebufferId)

        GLES30.glViewport(0, 0, metadata.width, metadata.height)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)

        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, inputTextureId) // 使用降噪后或 ToneMap 后的纹理
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

    private fun renderDemosaicPass(metadata: RawMetadata) {
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

        // Bayer CFA: 使用 DHT 多 pass 解马赛克
        renderDhtDemosaic(metadata)
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

        // DHT programs
        for (p in intArrayOf(
            dhtPass0Program, dhtPass1Program, dhtPass2Program,
            dhtPass3Program, dhtPass4Program, dhtPass5Program, dhtPass6Program
        )) {
            if (p != 0) GLES30.glDeleteProgram(p)
        }
        // DHT textures and FBOs
        for (i in 0..1) {
            if (dhtNrawTexId[i] != 0) GLES30.glDeleteTextures(1, intArrayOf(dhtNrawTexId[i]), 0)
            if (dhtNrawFboId[i] != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(dhtNrawFboId[i]), 0)
            if (dhtNdirTexId[i] != 0) GLES30.glDeleteTextures(1, intArrayOf(dhtNdirTexId[i]), 0)
            if (dhtNdirFboId[i] != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(dhtNdirFboId[i]), 0)
        }

        // Guided Filter programs
        for (p in intArrayOf(gfPass1Program, gfPass2Program, gfPass3Program, gfPass4Program)) {
            if (p != 0) GLES30.glDeleteProgram(p)
        }
        // Guided Filter textures and FBOs
        for (i in 0..1) {
            if (gfTexId[i] != 0) GLES30.glDeleteTextures(1, intArrayOf(gfTexId[i]), 0)
            if (gfFboId[i] != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(gfFboId[i]), 0)
        }

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
