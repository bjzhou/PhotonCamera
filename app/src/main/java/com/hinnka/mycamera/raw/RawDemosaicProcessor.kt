package com.hinnka.mycamera.raw

import android.content.Context
import android.graphics.Bitmap
import android.graphics.Rect
import android.media.Image
import android.opengl.*
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.lut.LutConfig
import com.hinnka.mycamera.lut.LutParser
import com.hinnka.mycamera.utils.BitmapUtils
import com.hinnka.mycamera.utils.PLog
import com.hinnka.mycamera.utils.RawProcessor

import kotlinx.coroutines.asCoroutineDispatcher
import kotlinx.coroutines.withContext
import java.io.File
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.FloatBuffer
import java.nio.ShortBuffer
import java.util.concurrent.Executors
import kotlin.math.abs
import kotlin.math.ln
import kotlin.math.sqrt
import android.opengl.Matrix as GlMatrix
import androidx.core.graphics.createBitmap

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

    /**
     * 将 DngRawData 转换为 RawMetadata
     */
    private fun convertDngRawDataToMetadata(
        dngRawData: DngRawData,
        exposureBias: Float
    ): RawMetadata {
        // CFA 模式：使用从 JNI 传递过来的实际值
        val cfaPattern = dngRawData.cfaPattern

        // 黑电平：DngRawData 提供的是 [R, Gr, Gb, B] 四通道
        val blackLevel = dngRawData.blackLevel
        val preMul = dngRawData.preMul

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

        val activeArray = if (dngRawData.activeArray != null && dngRawData.activeArray.size == 4) {
            Rect(
                dngRawData.activeArray[0],
                dngRawData.activeArray[1],
                dngRawData.activeArray[2],
                dngRawData.activeArray[3]
            )
        } else null

        return RawMetadata(
            width = dngRawData.width,
            height = dngRawData.height,
            cfaPattern = cfaPattern,
            blackLevel = blackLevel,
            whiteLevel = whiteLevel,
            whiteBalanceGains = whiteBalanceGains,
            preMul = preMul,
            colorCorrectionMatrix = colorCorrectionMatrix,
            lensShadingMap = dngRawData.lensShadingMap,
            lensShadingMapWidth = dngRawData.lensShadingMapWidth,
            lensShadingMapHeight = dngRawData.lensShadingMapHeight,
            baselineExposure = dngRawData.baselineExposure,
            exposureBias = if (dngRawData.exposureBias == 0f) exposureBias else dngRawData.exposureBias,
            iso = dngRawData.iso,
            shutterSpeed = dngRawData.shutterSpeed,
            aperture = dngRawData.aperture,
            activeArray = activeArray,
            noiseProfile = dngRawData.noiseProfile ?: floatArrayOf(0f, 0f)
        )
    }

    /**
     * Native 方法：使用 LibRaw 处理 DNG 文件
     */
    private external fun processDngNative(
        filePath: String,
        xr: Float, yr: Float,
        xg: Float, yg: Float,
        xb: Float, yb: Float,
        xw: Float, yw: Float
    ): DngRawData?

    companion object {
        private const val TAG = "RawDemosaicProcessor"

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
    private var combinedProgram = 0
    private var sharpenProgram = 0
    private var passthroughProgram = 0
    private var hdrReferenceProgram = 0

    private var rawTextureId = 0

    private var demosaicFramebufferId = 0
    private var demosaicTextureId = 0
    private var demosaicWidth = 0
    private var demosaicHeight = 0

    private var combinedFramebufferId = 0
    private var combinedTextureId = 0
    private var combinedWidth = 0
    private var combinedHeight = 0

    private var hdrReferenceFramebufferId = 0
    private var hdrReferenceTextureId = 0
    private var hdrReferenceWidth = 0
    private var hdrReferenceHeight = 0

    private var sharpenFramebufferId = 0
    private var sharpenTextureId = 0
    private var sharpenWidth = 0
    private var sharpenHeight = 0
    private var lut3DTextureId = 0

    private var outputFramebufferId = 0
    private var outputTextureId = 0

    private var curveTextureId = 0

    // (Chroma) & NLM 降噪资源
    private var gfPass0Program = 0
    private var nlmPassHProgram = 0
    private var nlmPassVProgram = 0

    // NLM 中间纹理: ping-pong (RGBA16F)
    private var gfTexId = intArrayOf(0, 0)
    private var gfFboId = intArrayOf(0, 0)
    private var gfWidth = 0
    private var gfHeight = 0
    private var gfChromaTexId = 0
    private var gfChromaFboId = 0

    // 缓冲区
    private var vertexBuffer: FloatBuffer? = null
    private var texCoordBuffer: FloatBuffer? = null
    private var indexBuffer: ShortBuffer? = null
    private var pboId = 0

    // Linear Program (New)
    private var linearProgram = 0

    private var lensShadingTextureId = 0
    private var dummyShadingTextureId = 0

    data class SceneStats(
        val exposureGain: Float,
        val curveLut: FloatArray? = null
    )

    private fun SceneStats.toRenderPlan(): RawRenderPlan {
        return RawRenderPlan(
            sceneNormalizationGain = exposureGain,
            sdrCurveLut = curveLut
        )
    }

    private fun resolveWorkingColorSpace(): android.graphics.ColorSpace {
        return baseLut?.outputColorSpace ?: when (colorSpace) {
            ColorSpace.SRGB -> android.graphics.ColorSpace.get(android.graphics.ColorSpace.Named.SRGB)
            ColorSpace.DCI_P3 -> android.graphics.ColorSpace.get(android.graphics.ColorSpace.Named.DISPLAY_P3)
            else -> android.graphics.ColorSpace.get(android.graphics.ColorSpace.Named.BT2020)
        }
    }


    private var isInitialized = false
    private var maxTextureSize = 8192 // default, queried at init

    private var baseLut: LutConfig? = null
    private var colorSpace = ColorSpace.BT2020
    private var logCurve = LogCurve.FLOG2

    /**
     * 设置 RAW 还原 LUT
     * @param context Context
     * @param lutFileName LUT 文件名，"none" 表示不使用 LUT
     */
    fun setRawLut(context: Context, lutFileName: String) {
        if (lutFileName == "none") {
            baseLut = null
        } else {
            val rawFolder = logCurve.rawFolder
            if (rawFolder == null) {
                baseLut = null
                return
            }
            try {
                baseLut = LutParser.parseFromAssets(context, "$rawFolder/$lutFileName")
                //暂时简单处理输出色彩空间P3
                if (lutFileName.contains("P3")) {
                    baseLut = baseLut?.copy(
                        outputColorSpace = android.graphics.ColorSpace.get(android.graphics.ColorSpace.Named.DISPLAY_P3),
                    )
                }
                PLog.d(TAG, "RAW LUT updated to: $lutFileName")
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to load RAW LUT: $lutFileName", e)
                baseLut = null
            }
        }
    }

    fun setRawColorSpace(colorSpace: ColorSpace) {
        this.colorSpace = colorSpace
    }

    fun getRawColorSpace(): ColorSpace {
        return colorSpace
    }

    fun setRawLogCurve(logCurve: LogCurve) {
        this.logCurve = logCurve
    }

    /**
     * 处理 DNG 文件
     *
     * @param dngFilePath DNG 文件路径
     * @param aspectRatio 目标宽高比
     * @param cropRegion 可选裁切区域（在 RAW 纹理空间）
     * @param sharpeningValue 锐化强度 (0.0-1.0)
     * @return 处理后的 Bitmap，失败返回 null
     */
    suspend fun process(
        context: Context,
        dngFilePath: String,
        aspectRatio: AspectRatio?,
        cropRegion: Rect?,
        rotation: Int,
        exposureBias: Float = 0f,
        sharpeningValue: Float = 0f,
        denoiseValue: Float? = null,
        onMetadata: ((RawMetadata) -> Unit)? = null
    ): Bitmap? = withContext(glDispatcher) {
        val dngFile = File(dngFilePath)
        if (!dngFile.exists() || !dngFile.canRead()) {
            PLog.e(TAG, "DNG file not found or not readable: $dngFilePath")
            return@withContext null
        }

        try {
            processInternal(
                context = context,
                aspectRatio = aspectRatio,
                cropRegion = cropRegion,
                rotation = rotation,
                exposureBias = exposureBias,
                sharpeningValue = sharpeningValue,
                denoiseValue = denoiseValue,
                dngFile = dngFile,
                onMetadata = onMetadata
            )?.sdrBitmap
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to process DNG file: $dngFilePath", e)
            null
        }
    }

    /**
     * 处理 RAW Buffer (例如来自 MultiFrameStacker 的输出)
     */
    suspend fun process(
        context: Context,
        rawData: ByteBuffer,
        width: Int,
        height: Int,
        rowStride: Int,
        metadata: RawMetadata,
        aspectRatio: AspectRatio,
        cropRegion: Rect?,
        rotation: Int,
        sharpeningValue: Float = 0f,
        denoiseValue: Float? = null,
        chromaDenoiseValue: Float? = null,
    ): Bitmap? = withContext(glDispatcher) {
        try {
            if (!isInitialized) {
                if (!initializeOnGlThread()) {
                    PLog.e(TAG, "Failed to initialize processor")
                    return@withContext null
                }
            }

            processInternal(
                context = context,
                rawData = rawData,
                width = width,
                height = height,
                rowStride = rowStride,
                metadata = metadata,
                aspectRatio = aspectRatio,
                cropRegion = cropRegion,
                rotation = rotation,
                sharpeningValue = sharpeningValue,
                denoiseValue = denoiseValue,
                chromaDenoiseValue = chromaDenoiseValue
            )?.sdrBitmap
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to process RAW buffer", e)
            null
        }
    }

    suspend fun processForHdrSources(
        context: Context,
        dngFilePath: String,
        aspectRatio: AspectRatio?,
        cropRegion: Rect?,
        rotation: Int,
        exposureBias: Float = 0f,
        sharpeningValue: Float = 0f,
        denoiseValue: Float? = null,
        onMetadata: ((RawMetadata) -> Unit)? = null
    ): RawHdrRenderResult? = withContext(glDispatcher) {
        val dngFile = File(dngFilePath)
        if (!dngFile.exists() || !dngFile.canRead()) {
            PLog.e(TAG, "DNG file not found or not readable: $dngFilePath")
            return@withContext null
        }

        try {
            processInternal(
                context = context,
                aspectRatio = aspectRatio,
                cropRegion = cropRegion,
                rotation = rotation,
                exposureBias = exposureBias,
                sharpeningValue = sharpeningValue,
                denoiseValue = denoiseValue,
                dngFile = dngFile,
                onMetadata = onMetadata,
                includeHdrReference = true
            )
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to process RAW HDR sources: $dngFilePath", e)
            null
        }
    }

    /**
     * 内部处理方法（共享的核心处理逻辑）
     */
    private suspend fun processInternal(
        context: Context,
        rawData: ByteBuffer? = null,
        width: Int = 0,
        height: Int = 0,
        rowStride: Int = 0,
        metadata: RawMetadata? = null,
        aspectRatio: AspectRatio?,
        cropRegion: Rect?,
        rotation: Int,
        exposureBias: Float = 0f,
        sharpeningValue: Float = 0f,
        denoiseValue: Float? = null,
        chromaDenoiseValue: Float? = null,
        dngFile: File? = null,
        onMetadata: ((RawMetadata) -> Unit)? = null,
        includeHdrReference: Boolean = false
    ): RawHdrRenderResult? = withContext(glDispatcher) {
        var actualRawData = rawData
        var actualWidth = width
        var actualHeight = height
        var actualRowStride = rowStride
        var actualMetadata = metadata
        var actualRotation = rotation
        var dngRawDataCleanup: DngRawData? = null

        if (dngFile != null) {
            val dngRawData = processDngNative(
                dngFile.absolutePath,
                colorSpace.xr, colorSpace.yr,
                colorSpace.xg, colorSpace.yg,
                colorSpace.xb, colorSpace.yb,
                colorSpace.xw, colorSpace.yw
            )
            if (dngRawData == null) {
                return@withContext RawProcessor.processAndToBitmap(dngFile, aspectRatio, cropRegion, rotation)?.let {
                    RawHdrRenderResult(
                        sdrBitmap = it,
                        hdrReferenceBitmap = null,
                    )
                }
            }
            dngRawDataCleanup = dngRawData
            actualRawData = dngRawData.rawData
            actualWidth = dngRawData.width
            actualHeight = dngRawData.height
            actualRowStride = dngRawData.rowStride
            actualMetadata = convertDngRawDataToMetadata(dngRawData, exposureBias)
            actualRotation = dngRawData.rotation
            onMetadata?.invoke(actualMetadata)
        }

        if (actualRawData == null || actualMetadata == null) {
            PLog.e(TAG, "Missing source data or metadata")
            return@withContext null
        }

        PLog.d(TAG, "Processing RAW image: ${actualWidth}x${actualHeight}")

        try {
            if (!isInitialized) {
                if (!initializeOnGlThread()) {
                    PLog.e(TAG, "Failed to initialize processor")
                    return@withContext null
                }
            }

            // Check GL_MAX_TEXTURE_SIZE and downscale if needed
            if (actualWidth > maxTextureSize || actualHeight > maxTextureSize) {
                PLog.w(
                    TAG,
                    "Input ${actualWidth}x${actualHeight} exceeds GL_MAX_TEXTURE_SIZE=$maxTextureSize, downscaling"
                )
                val scaleX = maxTextureSize.toFloat() / actualWidth
                val scaleY = maxTextureSize.toFloat() / actualHeight
                val scaleFactor = minOf(scaleX, scaleY, 1f)
                val newWidth = (actualWidth * scaleFactor).toInt() and 0xFFFFFFFE.toInt() // align to even
                val newHeight = (actualHeight * scaleFactor).toInt() and 0xFFFFFFFE.toInt()

                val isLinearRGB = actualMetadata.cfaPattern == RawMetadata.CFA_LINEAR_RGB
                if (isLinearRGB) {
                    // CPU bilinear downscale for interleaved RGB16 buffer
                    val srcBuf = actualRawData.duplicate().order(java.nio.ByteOrder.nativeOrder())
                    srcBuf.position(0)
                    val src = srcBuf.asShortBuffer()
                    val dstSize = newWidth * newHeight * 3 * 2 // 3 channels * 2 bytes
                    val dstByteBuf = ByteBuffer.allocateDirect(dstSize).order(java.nio.ByteOrder.nativeOrder())
                    val dst = dstByteBuf.asShortBuffer()

                    val srcChannels = 3
                    for (dy in 0 until newHeight) {
                        val sy = dy.toFloat() / newHeight * actualHeight
                        val sy0 = sy.toInt().coerceIn(0, actualHeight - 1)
                        val sy1 = (sy0 + 1).coerceIn(0, actualHeight - 1)
                        val fy = sy - sy0
                        for (dx in 0 until newWidth) {
                            val sx = dx.toFloat() / newWidth * actualWidth
                            val sx0 = sx.toInt().coerceIn(0, actualWidth - 1)
                            val sx1 = (sx0 + 1).coerceIn(0, actualWidth - 1)
                            val fx = sx - sx0
                            for (c in 0 until srcChannels) {
                                val v00 =
                                    (src.get((sy0 * actualWidth + sx0) * srcChannels + c).toInt() and 0xFFFF).toFloat()
                                val v10 =
                                    (src.get((sy0 * actualWidth + sx1) * srcChannels + c).toInt() and 0xFFFF).toFloat()
                                val v01 =
                                    (src.get((sy1 * actualWidth + sx0) * srcChannels + c).toInt() and 0xFFFF).toFloat()
                                val v11 =
                                    (src.get((sy1 * actualWidth + sx1) * srcChannels + c).toInt() and 0xFFFF).toFloat()
                                val v =
                                    v00 * (1 - fx) * (1 - fy) + v10 * fx * (1 - fy) + v01 * (1 - fx) * fy + v11 * fx * fy
                                dst.put((dy * newWidth + dx) * srcChannels + c, v.toInt().coerceIn(0, 65535).toShort())
                            }
                        }
                    }
                    actualRawData = dstByteBuf
                    actualRowStride = newWidth * 6
                    PLog.d(TAG, "Downscaled to ${newWidth}x${newHeight}")
                }
                actualWidth = newWidth
                actualHeight = newHeight
                // Update metadata dimensions
                actualMetadata = actualMetadata.copy(width = newWidth, height = newHeight)
            }

            val bounds =
                BitmapUtils.calculateProcessedRect(actualWidth, actualHeight, aspectRatio, cropRegion, actualRotation)
            val finalWidth = bounds.width()
            val finalHeight = bounds.height()

            // 4. 第一步：全分辨率处理 (Linear CCM)
            setupFullResFramebuffer(actualWidth, actualHeight)
            uploadRawTextureFromBuffer(
                actualRawData,
                actualWidth,
                actualHeight,
                actualRowStride,
                RawMetadata.CFA_LINEAR_RGB
            )
            renderLinearPass(actualMetadata)

            val calcExposureGain =
                analyzeFromGpuTexture(
                    demosaicTextureId,
                    actualWidth,
                    actualHeight,
                    metadata
                )
            PLog.d(TAG, "calc Exposure Gain: $calcExposureGain")
            val workingColorSpace = resolveWorkingColorSpace()

            // NLM 降噪
            renderNLMPass(
                sourceTextureId = demosaicTextureId,
                width = actualWidth,
                height = actualHeight,
                metadata = actualMetadata,
                denoiseValue = denoiseValue,
                chromaDenoiseValue = chromaDenoiseValue,
            )

            val outputTexture = gfTexId[1]

            val hdrReferenceBitmap = if (includeHdrReference) {
                setupHdrReferenceFramebuffer(actualWidth, actualHeight)
                renderHdrReferencePass(
                    metadata = actualMetadata,
                    inputTextureId = outputTexture
                )
                setupOutputFramebuffer(finalWidth, finalHeight)
                renderOutputPass(
                    actualRotation,
                    actualWidth,
                    actualHeight,
                    bounds,
                    hdrReferenceTextureId
                )
                readPixels(finalWidth, finalHeight, workingColorSpace)
            } else {
                null
            }

            // 5. 第二步：Combined Pass (HDR Linear -> LDR sRGB + LUT)
            setupCombinedFramebuffer(actualWidth, actualHeight)
            val combinedStart = System.currentTimeMillis()
            renderCombinedPass(actualMetadata, calcExposureGain, baseLut, logCurve, inputTextureId = outputTexture)
            PLog.d(TAG, "Combined Pass took: ${System.currentTimeMillis() - combinedStart}ms")

            // 6. 第三步：锐化 (Sharpen Pass)
            setupSharpenFramebuffer(actualWidth, actualHeight)
            val sharpenStart = System.currentTimeMillis()
            renderSharpenPass(actualMetadata, sharpeningValue, combinedTextureId)
            PLog.d(TAG, "Sharpen Pass took: ${System.currentTimeMillis() - sharpenStart}ms")

            val sourceTextureForOutput = sharpenTextureId

            // 7. 第四步：输出旋转 (Output Pass)
            setupOutputFramebuffer(finalWidth, finalHeight)
            val outputStart = System.currentTimeMillis()
            renderOutputPass(
                actualRotation,
                actualWidth,
                actualHeight,
                bounds,
                sourceTextureForOutput
            )
            PLog.d(TAG, "Output Pass took: ${System.currentTimeMillis() - outputStart}ms")

            // 8. 读取结果
            val readStart = System.currentTimeMillis()
            val finalBitmap = readPixels(finalWidth, finalHeight, workingColorSpace)
            PLog.d(TAG, "readPixels took: ${System.currentTimeMillis() - readStart}ms")

            PLog.d(TAG, "RAW processing complete: ${finalBitmap?.width}x${finalBitmap?.height}")
            finalBitmap?.let {
                RawHdrRenderResult(
                    sdrBitmap = it,
                    hdrReferenceBitmap = hdrReferenceBitmap,
                )
            }
        } finally {
            dngRawDataCleanup?.close()
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

            // Query hardware texture size limit
            val maxTexSizeArr = IntArray(1)
            GLES30.glGetIntegerv(GLES30.GL_MAX_TEXTURE_SIZE, maxTexSizeArr, 0)
            maxTextureSize = maxTexSizeArr[0]
            PLog.d(TAG, "GL_MAX_TEXTURE_SIZE = $maxTextureSize")

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
        // initDhtPrograms(vShader)

        // 1.5 Linear Program (For Stacked RGB, 保留)
        val fShaderLinear = compileShader(GLES30.GL_FRAGMENT_SHADER, RawShaders.FRAGMENT_SHADER_LINEAR)
        if (vShader != 0 && fShaderLinear != 0) {
            linearProgram = GLES30.glCreateProgram()
            GLES30.glAttachShader(linearProgram, vShader)
            GLES30.glAttachShader(linearProgram, fShaderLinear)
            GLES30.glLinkProgram(linearProgram)

            GLES30.glDeleteShader(fShaderLinear)
        }

        // 2. Combined Processing Program
        val fShaderCombined = compileShader(GLES30.GL_FRAGMENT_SHADER, RawShaders.COMBINED_FRAGMENT_SHADER)
        if (vShader != 0 && fShaderCombined != 0) {
            combinedProgram = GLES30.glCreateProgram()
            GLES30.glAttachShader(combinedProgram, vShader)
            GLES30.glAttachShader(combinedProgram, fShaderCombined)
            GLES30.glLinkProgram(combinedProgram)

            GLES30.glDeleteShader(fShaderCombined)
        }

        val fShaderHdrReference = compileShader(GLES30.GL_FRAGMENT_SHADER, RawShaders.HDR_REFERENCE_FRAGMENT_SHADER)
        if (vShader != 0 && fShaderHdrReference != 0) {
            hdrReferenceProgram = GLES30.glCreateProgram()
            GLES30.glAttachShader(hdrReferenceProgram, vShader)
            GLES30.glAttachShader(hdrReferenceProgram, fShaderHdrReference)
            GLES30.glLinkProgram(hdrReferenceProgram)

            GLES30.glDeleteShader(fShaderHdrReference)
        }

        // 2.2 Sharpen Program
        val fShaderSharpen = compileShader(GLES30.GL_FRAGMENT_SHADER, RawShaders.SHARPEN_FRAGMENT_SHADER)
        if (vShader != 0 && fShaderSharpen != 0) {
            sharpenProgram = GLES30.glCreateProgram()
            GLES30.glAttachShader(sharpenProgram, vShader)
            GLES30.glAttachShader(sharpenProgram, fShaderSharpen)
            GLES30.glLinkProgram(sharpenProgram)

            GLES30.glDeleteShader(fShaderSharpen)
        }

        // 2.7 NLM Programs
        initNLMPrograms(vShader)

        // 3. Passthrough Program
        val fShaderPass = compileShader(GLES30.GL_FRAGMENT_SHADER, RawShaders.PASSTHROUGH_FRAGMENT_SHADER)
        if (vShader != 0 && fShaderPass != 0) {
            passthroughProgram = GLES30.glCreateProgram()
            GLES30.glAttachShader(passthroughProgram, vShader)
            GLES30.glAttachShader(passthroughProgram, fShaderPass)
            GLES30.glLinkProgram(passthroughProgram)

            GLES30.glDeleteShader(fShaderPass)
        }

        GLES30.glDeleteShader(vShader)
        PLog.d(
            TAG,
            "Shader programs created: combined=$combinedProgram, passthrough=$passthroughProgram"
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

    /**
     * 初始化 Guided Filter Pass 0 和 NLM 着色器
     */
    private fun initNLMPrograms(vShader: Int) {
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

        gfPass0Program = createGfProgram(vShader, NLMShaders.PASS0_CHROMA_DENOISE, "GF_Pass0")
        nlmPassHProgram = createGfProgram(vShader, NLMShaders.NLM_PASS_H, "NLM_PassH")
        nlmPassVProgram = createGfProgram(vShader, NLMShaders.NLM_PASS_V, "NLM_PassV")

        PLog.d(TAG, "Denoise programs: GF_Pass0=$gfPass0Program NLM_H=$nlmPassHProgram NLM_V=$nlmPassVProgram")
    }

    private fun setupNLMFramebuffers(width: Int, height: Int) {
        if (gfWidth == width && gfHeight == height && gfTexId[0] != 0) return
        gfWidth = width
        gfHeight = height

        // 清理旧资源
        for (i in 0..1) {
            if (gfTexId[i] != 0) GLES30.glDeleteTextures(1, intArrayOf(gfTexId[i]), 0)
            if (gfFboId[i] != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(gfFboId[i]), 0)
        }
        if (gfChromaTexId != 0) GLES30.glDeleteTextures(1, intArrayOf(gfChromaTexId), 0)
        if (gfChromaFboId != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(gfChromaFboId), 0)

        // 创建独立纹理用于色度降噪结果
        val ct = IntArray(1)
        val cf = IntArray(1)
        GLES30.glGenTextures(1, ct, 0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, ct[0])
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
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glGenFramebuffers(1, cf, 0)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, cf[0])
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER,
            GLES30.GL_COLOR_ATTACHMENT0,
            GLES30.GL_TEXTURE_2D,
            ct[0],
            0
        )
        gfChromaTexId = ct[0]; gfChromaFboId = cf[0]

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
     * 渲染 NLM 降噪
     *
     * 管线: tonemapTexture → [Pass0 Chroma] → [NLM] → gfFboId[1]
     *
     * @param sourceTextureId 输入纹理 (ToneMap 输出)
     */
    private fun renderNLMPass(
        sourceTextureId: Int,
        width: Int,
        height: Int,
        metadata: RawMetadata,
        denoiseValue: Float?,
        chromaDenoiseValue: Float?,
    ) {
        setupNLMFramebuffers(width, height)

        if (gfPass0Program == 0 || nlmPassHProgram == 0 || nlmPassVProgram == 0) {
            PLog.w(TAG, "Denoise programs not initialized, skipping denoise")
            return
        }

        val texelW = 1.0f / width
        val texelH = 1.0f / height

        // 动态 NLM 参数计算
        // 增益由三部分组成：传感器 ISO、ISP 数字增益、后期 Tonemap 增益
        val isoGain = metadata.iso / 100.0f
        val digitalGain = metadata.postRawSensitivityBoost
        val postGain = ExposureNormalization.compute(metadata)
        val totalGain = (isoGain * digitalGain * postGain).coerceAtLeast(0f)

        // 基于噪声特性的基础强度
        val s = metadata.noiseProfile[0]
        val o = metadata.noiseProfile[1]
        // 估算标准差，映射到一个易用的量级 (使用 1e-3 作为中等 RAW 亮度的估算)
        val noiseBase = (sqrt((s * 1e-3f + o * 1e-6f).toDouble()).toFloat() * 100.0f)

        // 动态计算 h 值 (衰减系数)
        // 让 noiseProfile 的基础噪声和总增益都更明显地参与估算：
        // 1. noiseBase 直接决定主体强度
        // 2. totalGain 同时以 sqrt 与线性两部分参与，提升高增益场景下的去噪力度
        val gainSqrt = sqrt(totalGain.toDouble()).toFloat()
        val gainNoise = 0.0035f * gainSqrt + 0.0006f * totalGain
        val baseNoise = if (noiseBase > 0f) {
            noiseBase * 0.8f
        } else {
             0.010f * gainSqrt
        }
        val noise = baseNoise + gainNoise

        val denoiseValue = denoiseValue ?: 0f
        val chromaDenoiseValue = chromaDenoiseValue ?: 0f

        val h = (noise * denoiseValue).coerceIn(0.0f, 0.1f)
        val ch = (noise * (chromaDenoiseValue + 0.5f)).coerceIn(0.0f, 0.1f)
        PLog.d(TAG, "Dynamic NLM: noise=$noise, h=$h ch=$ch")

        val identityMatrix = FloatArray(16)
        GlMatrix.setIdentityM(identityMatrix, 0)

        // ===== Pass 0: 色度降噪 (输出到 gfChromaFboId) =====
        GLES30.glUseProgram(gfPass0Program)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, gfChromaFboId)
        GLES30.glViewport(0, 0, width, height)

        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, sourceTextureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(gfPass0Program, "uInputTexture"), 0)
        GLES30.glUniform2f(GLES30.glGetUniformLocation(gfPass0Program, "uTexelSize"), texelW, texelH)
        GLES30.glUniformMatrix4fv(
            GLES30.glGetUniformLocation(gfPass0Program, "uTexMatrix"),
            1, false, identityMatrix, 0
        )
        GLES30.glUniform1f(GLES30.glGetUniformLocation(gfPass0Program, "uH"), ch)
        drawQuad(gfPass0Program)

        // ===== NLM Pass 1: Horizontal (gfChromaTexId -> gfFboId[0]) =====
        GLES30.glUseProgram(nlmPassHProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, gfFboId[0])
        GLES30.glViewport(0, 0, width, height)

        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, gfChromaTexId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(nlmPassHProgram, "uInputTexture"), 0)
        GLES30.glUniform2f(GLES30.glGetUniformLocation(nlmPassHProgram, "uTexelSize"), texelW, texelH)
        GLES30.glUniformMatrix4fv(
            GLES30.glGetUniformLocation(nlmPassHProgram, "uTexMatrix"),
            1, false, identityMatrix, 0
        )
        GLES30.glUniform1f(GLES30.glGetUniformLocation(nlmPassHProgram, "uH"), h)
        drawQuad(nlmPassHProgram)

        // ===== NLM Pass 2: Vertical (gfChromaTexId + gfTexId[0] -> gfFboId[1]) =====
        GLES30.glUseProgram(nlmPassVProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, gfFboId[1])
        GLES30.glViewport(0, 0, width, height)

        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, gfChromaTexId) // Original (Guide)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(nlmPassVProgram, "uInputTexture"), 0)

        GLES30.glActiveTexture(GLES30.GL_TEXTURE1)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, gfTexId[0])    // Blur Input
        GLES30.glUniform1i(GLES30.glGetUniformLocation(nlmPassVProgram, "uBlurTexture"), 1)

        GLES30.glUniform2f(GLES30.glGetUniformLocation(nlmPassVProgram, "uTexelSize"), texelW, texelH)
        GLES30.glUniformMatrix4fv(
            GLES30.glGetUniformLocation(nlmPassVProgram, "uTexMatrix"),
            1, false, identityMatrix, 0
        )
        GLES30.glUniform1f(GLES30.glGetUniformLocation(nlmPassVProgram, "uH"), h)
        drawQuad(nlmPassVProgram)

        checkGlError("renderNLMDenoise")
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

    private fun setupCombinedFramebuffer(width: Int, height: Int) {
        if (combinedWidth == width && combinedHeight == height && combinedFramebufferId != 0) {
            return
        }

        if (combinedTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(combinedTextureId), 0)
        }
        if (combinedFramebufferId != 0) {
            GLES30.glDeleteFramebuffers(1, intArrayOf(combinedFramebufferId), 0)
        }

        combinedWidth = width
        combinedHeight = height

        val textures = IntArray(1)
        GLES30.glGenTextures(1, textures, 0)
        combinedTextureId = textures[0]
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, combinedTextureId)
        GLES30.glTexImage2D(
            GLES30.GL_TEXTURE_2D, 0, GLES30.GL_RGBA8, width, height, 0,
            GLES30.GL_RGBA, GLES30.GL_UNSIGNED_BYTE, null
        )
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)

        val framebuffers = IntArray(1)
        GLES30.glGenFramebuffers(1, framebuffers, 0)
        combinedFramebufferId = framebuffers[0]
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, combinedFramebufferId)
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER,
            GLES30.GL_COLOR_ATTACHMENT0,
            GLES30.GL_TEXTURE_2D,
            combinedTextureId,
            0
        )
        checkGlError("setupCombinedFramebuffer")
    }

    private fun setupHdrReferenceFramebuffer(width: Int, height: Int) {
        if (hdrReferenceWidth == width && hdrReferenceHeight == height && hdrReferenceFramebufferId != 0) {
            return
        }

        if (hdrReferenceTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(hdrReferenceTextureId), 0)
        }
        if (hdrReferenceFramebufferId != 0) {
            GLES30.glDeleteFramebuffers(1, intArrayOf(hdrReferenceFramebufferId), 0)
        }

        hdrReferenceWidth = width
        hdrReferenceHeight = height

        val textures = IntArray(1)
        GLES30.glGenTextures(1, textures, 0)
        hdrReferenceTextureId = textures[0]
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, hdrReferenceTextureId)
        GLES30.glTexImage2D(
            GLES30.GL_TEXTURE_2D, 0, GLES30.GL_RGBA16F, width, height, 0,
            GLES30.GL_RGBA, GLES30.GL_HALF_FLOAT, null
        )
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)

        val framebuffers = IntArray(1)
        GLES30.glGenFramebuffers(1, framebuffers, 0)
        hdrReferenceFramebufferId = framebuffers[0]
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, hdrReferenceFramebufferId)
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER,
            GLES30.GL_COLOR_ATTACHMENT0,
            GLES30.GL_TEXTURE_2D,
            hdrReferenceTextureId,
            0
        )
        checkGlError("setupHdrReferenceFramebuffer")
    }

    private fun setupSharpenFramebuffer(width: Int, height: Int) {
        if (sharpenWidth == width && sharpenHeight == height && sharpenFramebufferId != 0) {
            return
        }

        if (sharpenTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(sharpenTextureId), 0)
        }
        if (sharpenFramebufferId != 0) {
            GLES30.glDeleteFramebuffers(1, intArrayOf(sharpenFramebufferId), 0)
        }

        sharpenWidth = width
        sharpenHeight = height

        val textures = IntArray(1)
        GLES30.glGenTextures(1, textures, 0)
        sharpenTextureId = textures[0]
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, sharpenTextureId)
        GLES30.glTexImage2D(
            GLES30.GL_TEXTURE_2D, 0, GLES30.GL_RGBA8, width, height, 0,
            GLES30.GL_RGBA, GLES30.GL_UNSIGNED_BYTE, null
        )
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)

        val framebuffers = IntArray(1)
        GLES30.glGenFramebuffers(1, framebuffers, 0)
        sharpenFramebufferId = framebuffers[0]
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, sharpenFramebufferId)
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER,
            GLES30.GL_COLOR_ATTACHMENT0,
            GLES30.GL_TEXTURE_2D,
            sharpenTextureId,
            0
        )
        checkGlError("setupSharpenFramebuffer")
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
     * 执行评价测光 (Evaluative Metering)：以对焦点（或中心点）为中心应用高斯权重分布。
     *
     * 优势:
     * - 数据已经过完整的 BLC → WB → LSC → Demosaic → CCM 变换链
     * - 与 ToneMap shader 输入完全一致，不存在 CPU/GPU 不匹配
     * - 评价测光权衡了主体和环境，曝光更自然
     */
    private fun analyzeFromGpuTexture(
        textureId: Int,
        width: Int,
        height: Int,
        metadata: RawMetadata?,
    ): Float {
        // 1. 生成 mipmap
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, textureId)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR_MIPMAP_NEAREST)
        GLES30.glGenerateMipmap(GLES30.GL_TEXTURE_2D)
        checkGlError("analyzeFromGpuTexture: glGenerateMipmap")

        // 2. 选择合适的 mip level 进行读回
        val maxDim = maxOf(width, height)
        val totalMipLevels = (ln(maxDim.toFloat()) / ln(2.0f)).toInt()
        val targetSize = 256
        val desiredMipLevel = (ln(maxDim.toFloat() / targetSize) / ln(2.0f))
            .toInt().coerceIn(0, totalMipLevels)

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
            return 1f
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

        return MeteringSystem.analyze(
            floatBuffer = floatBuffer,
            width = mipWidth,
            height = mipHeight,
            metadata = metadata
        )
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

    private fun uploadCurveTexture(curveLut: FloatArray) {
        if (curveTextureId == 0) {
            val textures = IntArray(1)
            GLES30.glGenTextures(1, textures, 0)
            curveTextureId = textures[0]
        }

        val buffer = ByteBuffer.allocateDirect(curveLut.size * 4)
            .order(ByteOrder.nativeOrder())
            .asFloatBuffer()
        buffer.put(curveLut)
        buffer.position(0)

        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, curveTextureId)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)

        GLES30.glTexImage2D(
            GLES30.GL_TEXTURE_2D, 0, GLES30.GL_R16F,
            curveLut.size, 1, 0, GLES30.GL_RED, GLES30.GL_FLOAT, buffer
        )
    }


    /**
     * Combined Processing Pass: ToneMap + LUT + Sharpening
     */
    private fun renderCombinedPass(
        metadata: RawMetadata,
        calcExposureGain: Float,
        lutConfig: LutConfig?,
        logCurve: LogCurve,
        inputTextureId: Int = demosaicTextureId
    ) {
        GLES30.glUseProgram(combinedProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, combinedFramebufferId)

        GLES30.glViewport(0, 0, metadata.width, metadata.height)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)

        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, inputTextureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(combinedProgram, "uInputTexture"), 0)

        lutConfig?.let { uploadLut3DTexture(it) }
        GLES30.glActiveTexture(GLES30.GL_TEXTURE1)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, lut3DTextureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(combinedProgram, "uLutTexture"), 1)
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(combinedProgram, "uLutSize"),
            lutConfig?.size?.toFloat() ?: 0f
        )
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(combinedProgram, "uLutEnabled"),
            if (lutConfig != null) 1 else 0
        )

        GLES30.glUniform1f(GLES30.glGetUniformLocation(combinedProgram, "uExposureGain"), calcExposureGain)

        // Log 曲线参数
        GLES30.glUniform4f(
            GLES30.glGetUniformLocation(combinedProgram, "uLogCoeffs"),
            logCurve.a, logCurve.b, logCurve.c, logCurve.d
        )
        GLES30.glUniform4f(
            GLES30.glGetUniformLocation(combinedProgram, "uLogLimits"),
            logCurve.e, logCurve.f, logCurve.cut1, logCurve.cut2
        )
        GLES30.glUniform1i(GLES30.glGetUniformLocation(combinedProgram, "uLogType"), logCurve.type)

        val identityMatrix = FloatArray(16)
        GlMatrix.setIdentityM(identityMatrix, 0)
        GLES30.glUniformMatrix4fv(
            GLES30.glGetUniformLocation(combinedProgram, "uTexMatrix"),
            1, false, identityMatrix, 0
        )
        drawQuad(combinedProgram)
        checkGlError("renderCombinedPass")
    }

    private fun renderHdrReferencePass(
        metadata: RawMetadata,
        inputTextureId: Int
    ) {
        GLES30.glUseProgram(hdrReferenceProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, hdrReferenceFramebufferId)
        GLES30.glViewport(0, 0, metadata.width, metadata.height)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)

        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, inputTextureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(hdrReferenceProgram, "uInputTexture"), 0)

        val identityMatrix = FloatArray(16)
        GlMatrix.setIdentityM(identityMatrix, 0)
        GLES30.glUniformMatrix4fv(
            GLES30.glGetUniformLocation(hdrReferenceProgram, "uTexMatrix"),
            1, false, identityMatrix, 0
        )

        drawQuad(hdrReferenceProgram)
        checkGlError("renderHdrReferencePass")
    }

    /**
     * Sharpen Pass
     */
    private fun renderSharpenPass(
        metadata: RawMetadata,
        sharpeningValue: Float,
        inputTextureId: Int
    ) {
        GLES30.glUseProgram(sharpenProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, sharpenFramebufferId)
        GLES30.glViewport(0, 0, metadata.width, metadata.height)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)

        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, inputTextureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(sharpenProgram, "uInputTexture"), 0)

        GLES30.glUniform2f(
            GLES30.glGetUniformLocation(sharpenProgram, "uTexelSize"),
            1.0f / metadata.width, 1.0f / metadata.height
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(sharpenProgram, "uSharpening"),
            sharpeningValue
        )

        val identityMatrix = FloatArray(16)
        GlMatrix.setIdentityM(identityMatrix, 0)
        GLES30.glUniformMatrix4fv(
            GLES30.glGetUniformLocation(sharpenProgram, "uTexMatrix"),
            1, false, identityMatrix, 0
        )

        drawQuad(sharpenProgram)
        checkGlError("renderSharpenPass")
    }

    private fun renderLinearPass(metadata: RawMetadata) {
        GLES30.glUseProgram(linearProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, demosaicFramebufferId)
        GLES30.glViewport(0, 0, metadata.width, metadata.height)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, rawTextureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(linearProgram, "uRawTexture"), 0)
        GLES30.glUniform2f(
            GLES30.glGetUniformLocation(linearProgram, "uImageSize"),
            metadata.width.toFloat(), metadata.height.toFloat()
        )
        val transposedCCM = transposeMatrix3x3(metadata.colorCorrectionMatrix)

        GLES30.glUniformMatrix3fv(
            GLES30.glGetUniformLocation(linearProgram, "uColorCorrectionMatrix"),
            1, false, transposedCCM, 0
        )
        val identity = FloatArray(16)
        GlMatrix.setIdentityM(identity, 0)
        GLES30.glUniformMatrix4fv(
            GLES30.glGetUniformLocation(linearProgram, "uTexMatrix"),
            1, false, identity, 0
        )
        val normalizationGain = ExposureNormalization.compute(metadata)
        PLog.d(
            TAG,
            "compute: normalizationGain=$normalizationGain baseline=${metadata.baselineExposure}"
        )
        GLES30.glUniform1f(GLES30.glGetUniformLocation(linearProgram, "uExposureGain"), normalizationGain)
        drawQuad(linearProgram)
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
        GLES30.glUniformMatrix4fv(
            GLES30.glGetUniformLocation(passthroughProgram, "uTexMatrix"),
            1, false, texMatrix, 0
        )
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, sourceTextureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(passthroughProgram, "uTexture"), 0)
        drawQuad(passthroughProgram)
        checkGlError("renderOutputPass")
    }

    private fun drawQuad(program: Int) {
        val positionHandle = GLES30.glGetAttribLocation(program, "aPosition")
        val texCoordHandle = GLES30.glGetAttribLocation(program, "aTexCoord")
        if (positionHandle >= 0) {
            vertexBuffer?.let {
                GLES30.glEnableVertexAttribArray(positionHandle)
                it.position(0)
                GLES30.glVertexAttribPointer(positionHandle, 2, GLES30.GL_FLOAT, false, 0, it)
            }
        }
        if (texCoordHandle >= 0) {
            texCoordBuffer?.let {
                GLES30.glEnableVertexAttribArray(texCoordHandle)
                it.position(0)
                GLES30.glVertexAttribPointer(texCoordHandle, 2, GLES30.GL_FLOAT, false, 0, it)
            }
        }
        indexBuffer?.let {
            it.position(0)
            GLES30.glDrawElements(GLES30.GL_TRIANGLES, 6, GLES30.GL_UNSIGNED_SHORT, it)
        }
        if (positionHandle >= 0) GLES30.glDisableVertexAttribArray(positionHandle)
        if (texCoordHandle >= 0) GLES30.glDisableVertexAttribArray(texCoordHandle)
    }

    private fun readPixels(width: Int, height: Int, colorSpace: android.graphics.ColorSpace): Bitmap? {
        val pixelSize = width * height * 8
        val pixelBuffer = ByteBuffer.allocateDirect(pixelSize).order(ByteOrder.nativeOrder())

        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, outputFramebufferId)
        GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, 0)
        GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 8)
        GLES30.glReadPixels(
            0,
            0,
            width,
            height,
            GLES30.GL_RGBA,
            GLES30.GL_HALF_FLOAT,
            pixelBuffer
        )
        pixelBuffer.position(0)
        checkGlError("readPixels")

        return try {
            createBitmap(width, height, Bitmap.Config.RGBA_F16, colorSpace = colorSpace).also { bitmap ->
                bitmap.copyPixelsFromBuffer(pixelBuffer)
            }
        } catch (e: OutOfMemoryError) {
            PLog.e(TAG, "OOM creating output bitmap ($width x $height)", e)
            null
        }
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

        if (abs(srcRatio - targetRatio) < 0.01f) {
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

        if (combinedProgram != 0) GLES30.glDeleteProgram(combinedProgram)
        if (sharpenProgram != 0) GLES30.glDeleteProgram(sharpenProgram)
        if (passthroughProgram != 0) GLES30.glDeleteProgram(passthroughProgram)
        if (hdrReferenceProgram != 0) GLES30.glDeleteProgram(hdrReferenceProgram)

        // Guided Filter & NLM programs
        if (nlmPassHProgram != 0) GLES30.glDeleteProgram(nlmPassHProgram)
        if (nlmPassVProgram != 0) GLES30.glDeleteProgram(nlmPassVProgram)
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
        if (combinedTextureId != 0) GLES30.glDeleteTextures(1, intArrayOf(combinedTextureId), 0)
        if (combinedFramebufferId != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(combinedFramebufferId), 0)
        if (hdrReferenceTextureId != 0) GLES30.glDeleteTextures(1, intArrayOf(hdrReferenceTextureId), 0)
        if (hdrReferenceFramebufferId != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(hdrReferenceFramebufferId), 0)
        if (sharpenTextureId != 0) GLES30.glDeleteTextures(1, intArrayOf(sharpenTextureId), 0)
        if (sharpenFramebufferId != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(sharpenFramebufferId), 0)
        if (lut3DTextureId != 0) GLES30.glDeleteTextures(1, intArrayOf(lut3DTextureId), 0)
        if (curveTextureId != 0) GLES30.glDeleteTextures(1, intArrayOf(curveTextureId), 0)
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
