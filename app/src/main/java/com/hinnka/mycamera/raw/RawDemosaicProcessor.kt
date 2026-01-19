package com.hinnka.mycamera.raw

import android.graphics.Bitmap
import android.graphics.Matrix
import android.hardware.camera2.CameraCharacteristics
import android.hardware.camera2.CaptureResult
import android.media.Image
import android.opengl.EGL14
import android.opengl.EGLConfig
import android.opengl.EGLContext
import android.opengl.EGLDisplay
import android.opengl.EGLSurface
import android.opengl.GLES30
import android.util.Log
import android.opengl.Matrix as GlMatrix
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.lut.GlUtils
import com.hinnka.mycamera.lut.LutParser
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.asCoroutineDispatcher
import kotlinx.coroutines.runBlocking
import kotlinx.coroutines.withContext
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.FloatBuffer
import java.nio.ShortBuffer
import java.util.concurrent.Executors

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

    companion object {
        private const val TAG = "RawDemosaicProcessor"

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
    private var passthroughProgram = 0

    private var rawTextureId = 0

    private var demosaicFramebufferId = 0
    private var demosaicTextureId = 0

    private var outputFramebufferId = 0
    private var outputTextureId = 0

    private var baseLutTextureId = 0
    private var baseLutSize = 32f

    // 缓冲区
    private var vertexBuffer: FloatBuffer? = null
    private var texCoordBuffer: FloatBuffer? = null
    private var indexBuffer: ShortBuffer? = null

    // Demosaic Uniform 位置
    private var uRawTextureLoc = 0
    private var uImageSizeLoc = 0
    private var uCfaPatternLoc = 0
    private var uBlackLevelLoc = 0
    private var uWhiteLevelLoc = 0
    private var uWhiteBalanceGainsLoc = 0
    private var uColorCorrectionMatrixLoc = 0
    private var uExposureGainLoc = 0
    private var uDeconvStrengthLoc = 0
    private var uStructureAmountLoc = 0
    private var uOutputSharpAmountLoc = 0
    private var uDemosaicTexMatrixLoc = 0
    private var uLensShadingMapLoc = 0
    private var uPostRawBoostLoc = 0

    // Passthrough Uniform 位置
    private var uPassTextureLoc = 0
    private var uPassTexMatrixLoc = 0

    private var lensShadingTextureId = 0
    private var dummyShadingTextureId = 0

    private var isInitialized = false

    /**
     * 处理 RAW 图像
     * 
     * @param rawImage RAW_SENSOR 格式的 Image
     * @param characteristics 相机特性
     * @param captureResult 拍摄结果
     * @param aspectRatio 目标宽高比
     * @param rotation 旋转角度 (0, 90, 180, 270)
     * @return 处理后的 Bitmap，失败返回 null
     */
    suspend fun process(
        context: android.content.Context,
        rawImage: Image,
        characteristics: CameraCharacteristics,
        captureResult: CaptureResult,
        aspectRatio: AspectRatio,
        rotation: Int
    ): Bitmap? = withContext(glDispatcher) {
        try {
            if (!isInitialized) {
                if (!initializeOnGlThread(context)) {
                    PLog.e(TAG, "Failed to initialize processor")
                    return@withContext null
                }
            }

            val width = rawImage.width
            val height = rawImage.height
            PLog.d(TAG, "Processing RAW image: ${width}x${height}")

            // 提取元数据
            val metadata = RawMetadata.create(width, height, characteristics, captureResult)
            PLog.d(TAG, "CFA Pattern: ${metadata.cfaPattern}, WhiteLevel: ${metadata.whiteLevel}")
            PLog.d(
                TAG,
                "WB Gains: R=${metadata.whiteBalanceGains[0]}, Gr=${metadata.whiteBalanceGains[1]}, Gb=${metadata.whiteBalanceGains[2]}, B=${metadata.whiteBalanceGains[3]}"
            )
            PLog.d(TAG, "Black Level: ${metadata.blackLevel.contentToString()}")

            // 上传 RAW 数据到纹理
            val uploadStart = System.currentTimeMillis()
            uploadRawTexture(rawImage, width, height, rawImage.planes[0].rowStride)
            PLog.d(TAG, "Texture upload took: ${System.currentTimeMillis() - uploadStart}ms")

            // 1. 计算目标尺寸（处理旋转）
            val isSwapped = rotation == 90 || rotation == 270
            val targetWidthPreCrop = if (isSwapped) height else width
            val targetHeightPreCrop = if (isSwapped) width else height

            // 2. 计算裁切后的尺寸
            val targetRatio = aspectRatio.getValue(false)
            val curRatio = targetWidthPreCrop.toFloat() / targetHeightPreCrop.toFloat()

            val finalWidth: Int
            val finalHeight: Int
            if (curRatio > targetRatio) {
                finalHeight = targetHeightPreCrop
                finalWidth = (targetHeightPreCrop * targetRatio).toInt()
            } else {
                finalWidth = targetWidthPreCrop
                finalHeight = (targetWidthPreCrop / targetRatio).toInt()
            }

            // 3. 曝光增益计算 (18% 灰)
            val exposureGain = calculateExposureGain(rawImage, metadata)
            Log.d(TAG, "process: exposureGain=$exposureGain")

            // 4. 第一步：全分辨率解马赛克 (Full Res Pass)
            setupFullResFramebuffer(width, height)
            val demosaicStart = System.currentTimeMillis()
            renderDemosaicPass(metadata, exposureGain)
            PLog.d(TAG, "Demosaic Pass took: ${System.currentTimeMillis() - demosaicStart}ms")

            // 5. 第二步：缩放、旋转、裁剪并输出 (Output Pass)
            setupOutputFramebuffer(finalWidth, finalHeight)
            val outputStart = System.currentTimeMillis()
            renderOutputPass(metadata, rotation, aspectRatio, finalWidth, finalHeight)
            PLog.d(TAG, "Output Pass took: ${System.currentTimeMillis() - outputStart}ms")

            // 6. 读取结果
            val readStart = System.currentTimeMillis()
            val finalBitmap = readPixels(finalWidth, finalHeight)
            PLog.d(TAG, "readPixels took: ${System.currentTimeMillis() - readStart}ms")

            PLog.d(TAG, "RAW processing complete: ${finalBitmap.width}x${finalBitmap.height}")
            finalBitmap

        } catch (e: Exception) {
            PLog.e(TAG, "Failed to process RAW image", e)
            null
        }
    }

    /**
     * 预加载 EGL 环境和 Shader
     */
    fun preload(context: android.content.Context) {
        Executors.newSingleThreadExecutor().execute {
            runBlocking {
                withContext(glDispatcher) {
                    initializeOnGlThread(context)
                }
            }
        }
    }

    private suspend fun initializeOnGlThread(context: android.content.Context): Boolean = withContext(glDispatcher) {
        initialize(context)
    }

    /**
     * 初始化 EGL 环境
     */
    fun initialize(context: android.content.Context): Boolean {
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

            // 加载基础 LUT
            try {
                val lutConfig = LutParser.parseFromAssets(context, "luts/base.plut")
                baseLutTextureId = GlUtils.create3DTexture(lutConfig)
                baseLutSize = lutConfig.size.toFloat()
                PLog.d(TAG, "Base LUT loaded: id=$baseLutTextureId, size=$baseLutSize")
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to load base LUT", e)
            }

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
            uDeconvStrengthLoc = GLES30.glGetUniformLocation(demosaicProgram, "uDeconvStrength")
            uStructureAmountLoc = GLES30.glGetUniformLocation(demosaicProgram, "uStructureAmount")
            uOutputSharpAmountLoc = GLES30.glGetUniformLocation(demosaicProgram, "uOutputSharpAmount")
            uDemosaicTexMatrixLoc = GLES30.glGetUniformLocation(demosaicProgram, "uTexMatrix")
            uLensShadingMapLoc = GLES30.glGetUniformLocation(demosaicProgram, "uLensShadingMap")
            uPostRawBoostLoc = GLES30.glGetUniformLocation(demosaicProgram, "uPostRawBoost")

            GLES30.glDeleteShader(fShaderDemosaic)
        }

        // 2. Passthrough Program
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
        PLog.d(TAG, "Shader programs created: demosaic=$demosaicProgram, passthrough=$passthroughProgram")
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
     * 上传 RAW 数据到纹理
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
     * 计算 RAW 图像的曝光增益（18% 灰算法）
     */
    private fun calculateExposureGain(rawImage: Image, metadata: RawMetadata): Float {
        val plane = rawImage.planes[0]
        val buffer = plane.buffer
        val width = rawImage.width
        val height = rawImage.height
        val rowStride = plane.rowStride
        val pixelStride = plane.pixelStride

        // 1. 采样参数 (保持不变)
        val sampleSize = 512
        val stepX = (width / sampleSize).coerceAtLeast(1)
        val stepY = (height / sampleSize).coerceAtLeast(1)
        val black = metadata.blackLevel[1]
        val range = metadata.whiteLevel - black

        // 权重矩阵中心点
        val centerX = width / 2.0
        val centerY = height / 2.0
        val maxDistSq = (width * width + height * height) / 4.0 // 对角线半径平方

        // 统计变量
        var weightedSum = 0.0
        var totalWeight = 0.0
        val valueList = ArrayList<Float>(2048) // 用于计算高光百分位

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

                            // === 改进点 1: 中心权重计算 ===
                            // 距离中心越近，权重越高 (高斯分布模拟)
                            val distSq = (targetX - centerX) * (targetX - centerX) + (y - centerY) * (y - centerY)
                            // 权重衰减系数：边缘处的权重约为中心的 0.2
                            val weight = Math.exp(-distSq / (2.0 * (maxDistSq * 0.4))).toFloat()

                            weightedSum += normalized * weight
                            totalWeight += weight

                            // 收集样本用于高光计算 (不需要全部收集，随机/间隔收集即可)
                            // 这里直接复用循环，由于下采样了，List不会太大
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

        if (totalWeight == 0.0 || valueList.isEmpty()) return 1.0f

        // 2. 计算加权平均亮度 (Weighted Average)
        val weightedAvg = (weightedSum / totalWeight).toFloat()

        // 3. 计算高光阈值 (98th Percentile)
        // 只需要保护前 2% 的极亮像素不溢出，允许 specular highlights (太阳、反光) 溢出
        valueList.sort()
        val highIndex = (valueList.size * 0.98).toInt().coerceAtMost(valueList.size - 1)
        val highlightLuma = valueList[highIndex]

        // === 核心改进逻辑 ===

        // 策略 A: 基础 18% 灰增益
        // 改进点 2: 暗光场景补偿 (Dark Scene Compensation)
        // 如果平均亮度极低，说明是夜景，Target 不应该是 0.18，而应该更低 (比如 0.05)
        // 使用一个平滑函数调整 Target
        val baseTarget = 0.18f
        val darkSceneFactor = smoothStep(0.0f, 0.05f, weightedAvg) // 0~0.05 之间平滑过渡
        val dynamicTarget = 0.05f + (baseTarget - 0.05f) * darkSceneFactor

        val gainAvg = if (weightedAvg > 0.0001f) dynamicTarget / weightedAvg else 1.0f

        // 策略 B: 高光保护增益
        // 我们希望 98% 亮度的像素，在应用 Gain 之后，不要超过 1.0 (或者 0.9 以留余地)
        // maxLuma * gain <= 1.0  =>  gain <= 1.0 / maxLuma
        val gainHighlight = if (highlightLuma > 0.0001f) 1.0f / highlightLuma else 4.0f

        // 4. 最终决策：取两者较小值，但允许一定程度的过曝以换取亮度
        // 通常高光限制会非常严格，导致画面太暗，所以我们给高光增益一个 "软膝" 或者放宽一点 (比如 1.2 / highlightLuma)
        // 这里采用保守策略：优先满足中性灰，但如果高光溢出太严重，就被高光强行拉回来

        // 混合逻辑：final = min(gainAvg, gainHighlight * bias)
        // bias = 1.25 表示允许最亮部溢出 25% (Tone Mapping 会救回来)
        val finalGain = kotlin.math.min(gainAvg, gainHighlight * 1.5f)

        // 5. 硬限制 (防止增益过大导致噪点失控)
        return finalGain.coerceIn(1.0f, 8.0f) // 适当放宽上限到 8.0，但受高光约束
    }

    // 辅助函数: 平滑阶梯
    private fun smoothStep(edge0: Float, edge1: Float, x: Float): Float {
        val t = ((x - edge0) / (edge1 - edge0)).coerceIn(0.0f, 1.0f)
        return t * t * (3.0f - 2.0f * t)
    }

    private fun renderDemosaicPass(metadata: RawMetadata, exposureGain: Float) {
        GLES30.glUseProgram(demosaicProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, demosaicFramebufferId)
        GLES30.glViewport(0, 0, metadata.width, metadata.height)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)

        // 设置变换矩阵为单位矩阵 (1:1)
        val identityMatrix = FloatArray(16)
        GlMatrix.setIdentityM(identityMatrix, 0)
        GLES30.glUniformMatrix4fv(uDemosaicTexMatrixLoc, 1, false, identityMatrix, 0)

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
        GLES30.glUniformMatrix3fv(uColorCorrectionMatrixLoc, 1, true, metadata.colorCorrectionMatrix, 0)
        GLES30.glUniform1f(uExposureGainLoc, exposureGain)
        GLES30.glUniform1f(uDeconvStrengthLoc, 0.6f) // 重新开启轻微的 RAW 层去卷积
        GLES30.glUniform1f(uStructureAmountLoc, 0f)
        GLES30.glUniform1f(uOutputSharpAmountLoc, 0f)

        // 绑定 LSC
        GLES30.glActiveTexture(GLES30.GL_TEXTURE2)
        if (metadata.lensShadingMap != null) {
            uploadLensShadingTexture(metadata)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, lensShadingTextureId)
        } else {
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, dummyShadingTextureId)
        }
        GLES30.glUniform1i(uLensShadingMapLoc, 2)
        GLES30.glUniform1f(uPostRawBoostLoc, metadata.postRawSensitivityBoost)

        drawQuad(demosaicProgram)
        checkGlError("renderDemosaicPass")
    }

    private fun renderOutputPass(
        metadata: RawMetadata,
        rotation: Int,
        aspectRatio: AspectRatio,
        finalWidth: Int,
        finalHeight: Int
    ) {
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, outputFramebufferId)
        GLES30.glViewport(0, 0, finalWidth, finalHeight)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)

        GLES30.glUseProgram(passthroughProgram)

        // 计算变换矩阵
        val texMatrix = FloatArray(16)
        GlMatrix.setIdentityM(texMatrix, 0)

        // 处理旋转和裁剪 (与之前相同，但在 outputProgram 中应用)
        val curWidth = if (rotation == 90 || rotation == 270) metadata.height else metadata.width
        val curHeight = if (rotation == 90 || rotation == 270) metadata.width else metadata.height
        val curRatio = curWidth.toFloat() / curHeight.toFloat()
        val targetRatio = aspectRatio.getValue(false)

        GlMatrix.translateM(texMatrix, 0, 0.5f, 0.5f, 0f)
        GlMatrix.rotateM(texMatrix, 0, (rotation + 180).toFloat(), 0f, 0f, 1f)
        GlMatrix.translateM(texMatrix, 0, -0.5f, -0.5f, 0f)

        var scaleX = 1.0f
        var scaleY = 1.0f
        if (curRatio > targetRatio) {
            scaleX = targetRatio / curRatio
        } else {
            scaleY = curRatio / targetRatio
        }
        GlMatrix.translateM(texMatrix, 0, 0.5f, 0.5f, 0f)
        GlMatrix.scaleM(texMatrix, 0, scaleX, scaleY, 1.0f)
        GlMatrix.translateM(texMatrix, 0, -0.5f, -0.5f, 0f)

        GLES30.glUniformMatrix4fv(uPassTexMatrixLoc, 1, false, texMatrix, 0)

        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, demosaicTextureId)
        GLES30.glUniform1i(uPassTextureLoc, 0)

        drawQuad(passthroughProgram)
        checkGlError("renderOutputPass")
    }

    private fun drawQuad(program: Int) {
        val positionHandle = GLES30.glGetAttribLocation(program, "aPosition")
        val texCoordHandle = GLES30.glGetAttribLocation(program, "aTexCoord")

        GLES30.glEnableVertexAttribArray(positionHandle)
        GLES30.glEnableVertexAttribArray(texCoordHandle)

        vertexBuffer?.position(0)
        GLES30.glVertexAttribPointer(positionHandle, 2, GLES30.GL_FLOAT, false, 0, vertexBuffer)

        texCoordBuffer?.position(0)
        GLES30.glVertexAttribPointer(texCoordHandle, 2, GLES30.GL_FLOAT, false, 0, texCoordBuffer)

        indexBuffer?.position(0)
        GLES30.glDrawElements(GLES30.GL_TRIANGLES, 6, GLES30.GL_UNSIGNED_SHORT, indexBuffer)

        GLES30.glDisableVertexAttribArray(positionHandle)
        GLES30.glDisableVertexAttribArray(texCoordHandle)
    }

    private fun readPixels(width: Int, height: Int): Bitmap {
        val buffer = ByteBuffer.allocateDirect(width * height * 4)
        buffer.order(ByteOrder.nativeOrder())

        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, outputFramebufferId)
        GLES30.glReadPixels(0, 0, width, height, GLES30.GL_RGBA, GLES30.GL_UNSIGNED_BYTE, buffer)
        buffer.position(0)

        val bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)
        bitmap.copyPixelsFromBuffer(buffer)

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
        if (passthroughProgram != 0) GLES30.glDeleteProgram(passthroughProgram)

        if (rawTextureId != 0) GLES30.glDeleteTextures(1, intArrayOf(rawTextureId), 0)
        if (demosaicTextureId != 0) GLES30.glDeleteTextures(1, intArrayOf(demosaicTextureId), 0)
        if (demosaicFramebufferId != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(demosaicFramebufferId), 0)
        if (outputTextureId != 0) GLES30.glDeleteTextures(1, intArrayOf(outputTextureId), 0)
        if (outputFramebufferId != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(outputFramebufferId), 0)

        if (baseLutTextureId != 0) GLES30.glDeleteTextures(1, intArrayOf(baseLutTextureId), 0)
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
