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
    private var shaderProgram = 0
    private var rawTextureId = 0
    private var framebufferId = 0
    private var outputTextureId = 0
    private var baseLutTextureId = 0
    private var baseLutSize = 32f

    // 缓冲区
    private var vertexBuffer: FloatBuffer? = null
    private var texCoordBuffer: FloatBuffer? = null
    private var indexBuffer: ShortBuffer? = null

    // Uniform 位置
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
    private var uBaseLutTextureLoc = 0
    private var uBaseLutSizeLoc = 0

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
            uploadRawTexture(rawImage, width, height)
            PLog.d(TAG, "Texture upload took: ${System.currentTimeMillis() - uploadStart}ms")

            // 计算曝光增益 (基于 18% 灰)
            val lumiStart = System.currentTimeMillis()
            val avgLuminance = calculateAverageLuminance(rawImage, metadata)
            val targetLuminance = 0.15f // 降回保守值，配合 ACES 曲线防止过曝
            val exposureGain = if (avgLuminance > 0.002f) { // 降低噪点门槛
                (targetLuminance / avgLuminance).coerceIn(1.0f, 5.0f) // 允许更高的增益
            } else {
                1.8f // 极暗环境下更积极的提升
            }
            PLog.d(TAG, "Luminance calculation took: ${System.currentTimeMillis() - lumiStart}ms, Gain: $exposureGain")

            // 设置帧缓冲
            val fboStart = System.currentTimeMillis()
            setupFramebuffer(width, height)
            PLog.d(TAG, "FBO setup took: ${System.currentTimeMillis() - fboStart}ms")

            // 渲染
            val renderStart = System.currentTimeMillis()
            render(metadata, exposureGain)
            PLog.d(TAG, "Render took: ${System.currentTimeMillis() - renderStart}ms")

            // 读取结果
            var resultBitmap = readPixels(width, height)

            // 翻转 Y 轴（glReadPixels 从左下角开始）
            val flipMatrix = Matrix()
            flipMatrix.preScale(1f, -1f)
            val flippedBitmap = Bitmap.createBitmap(resultBitmap, 0, 0, width, height, flipMatrix, true)
            resultBitmap.recycle()
            resultBitmap = flippedBitmap

            // 旋转
            if (rotation != 0) {
                val rotateMatrix = Matrix()
                rotateMatrix.postRotate(rotation.toFloat())
                val rotatedBitmap = Bitmap.createBitmap(resultBitmap, 0, 0, width, height, rotateMatrix, true)
                if (rotatedBitmap != resultBitmap) {
                    resultBitmap.recycle()
                }
                resultBitmap = rotatedBitmap
            }

            // 裁切到目标宽高比
            val croppedBitmap = cropToAspectRatio(resultBitmap, aspectRatio)
            if (croppedBitmap != resultBitmap) {
                resultBitmap.recycle()
            }

            PLog.d(TAG, "RAW processing complete: ${croppedBitmap.width}x${croppedBitmap.height}")
            croppedBitmap

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

            isInitialized = true
            PLog.d(TAG, "RawDemosaicProcessor initialized")
            return true

        } catch (e: Exception) {
            PLog.e(TAG, "Failed to initialize", e)
            return false
        }
    }

    private fun initShaderProgram() {
        val vertexShader = compileShader(GLES30.GL_VERTEX_SHADER, RawShaders.VERTEX_SHADER)
        // 使用高质量 AHD 插值
        val fragmentShader = compileShader(GLES30.GL_FRAGMENT_SHADER, RawShaders.FRAGMENT_SHADER_AHD)

        if (vertexShader == 0 || fragmentShader == 0) {
            PLog.e(TAG, "Failed to compile shaders")
            return
        }

        shaderProgram = GLES30.glCreateProgram()
        GLES30.glAttachShader(shaderProgram, vertexShader)
        GLES30.glAttachShader(shaderProgram, fragmentShader)
        GLES30.glLinkProgram(shaderProgram)

        // 检查链接状态
        val linkStatus = IntArray(1)
        GLES30.glGetProgramiv(shaderProgram, GLES30.GL_LINK_STATUS, linkStatus, 0)
        if (linkStatus[0] == 0) {
            val error = GLES30.glGetProgramInfoLog(shaderProgram)
            PLog.e(TAG, "Program linking failed: $error")
            GLES30.glDeleteProgram(shaderProgram)
            shaderProgram = 0
            return
        }

        GLES30.glDeleteShader(vertexShader)
        GLES30.glDeleteShader(fragmentShader)

        // 获取 Uniform 位置
        uRawTextureLoc = GLES30.glGetUniformLocation(shaderProgram, "uRawTexture")
        uImageSizeLoc = GLES30.glGetUniformLocation(shaderProgram, "uImageSize")
        uCfaPatternLoc = GLES30.glGetUniformLocation(shaderProgram, "uCfaPattern")
        uBlackLevelLoc = GLES30.glGetUniformLocation(shaderProgram, "uBlackLevel")
        uWhiteLevelLoc = GLES30.glGetUniformLocation(shaderProgram, "uWhiteLevel")
        uWhiteBalanceGainsLoc = GLES30.glGetUniformLocation(shaderProgram, "uWhiteBalanceGains")
        uColorCorrectionMatrixLoc = GLES30.glGetUniformLocation(shaderProgram, "uColorCorrectionMatrix")
        uExposureGainLoc = GLES30.glGetUniformLocation(shaderProgram, "uExposureGain")
        uDeconvStrengthLoc = GLES30.glGetUniformLocation(shaderProgram, "uDeconvStrength")
        uStructureAmountLoc = GLES30.glGetUniformLocation(shaderProgram, "uStructureAmount")
        uOutputSharpAmountLoc = GLES30.glGetUniformLocation(shaderProgram, "uOutputSharpAmount")
        uBaseLutTextureLoc = GLES30.glGetUniformLocation(shaderProgram, "uBaseLutTexture")
        uBaseLutSizeLoc = GLES30.glGetUniformLocation(shaderProgram, "uBaseLutSize")

        PLog.d(TAG, "Shader program created: $shaderProgram")
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
    private fun uploadRawTexture(image: Image, width: Int, height: Int) {
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
        val rowStride = plane.rowStride
        val pixelStride = plane.pixelStride

        PLog.d(
            TAG,
            "RAW texture upload: ${width}x${height}, rowStride=$rowStride, pixelStride=$pixelStride, buffer size=${buffer.remaining()}"
        )

        // RAW_SENSOR 通常是连续的 16 位数据
        // rowStride 应该等于 width * 2 (每像素 2 字节)
        // 如果有 padding，需要逐行复制

        val expectedRowBytes = width * 2 // 16-bit per pixel

        if (rowStride == expectedRowBytes) {
            // 无 padding，直接上传
            buffer.position(0)
            GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 2)
            GLES30.glTexImage2D(
                GLES30.GL_TEXTURE_2D,
                0,
                GLES30.GL_R16UI,  // 16 位无符号整数
                width,
                height,
                0,
                GLES30.GL_RED_INTEGER,
                GLES30.GL_UNSIGNED_SHORT,
                buffer
            )
        } else {
            // 有 padding，需要逐行复制
            val packedBuffer = ByteBuffer.allocateDirect(width * height * 2)
                .order(ByteOrder.nativeOrder())

            for (y in 0 until height) {
                buffer.position(y * rowStride)
                val rowBuffer = ByteArray(expectedRowBytes)
                buffer.get(rowBuffer)
                packedBuffer.put(rowBuffer)
            }

            packedBuffer.position(0)
            GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 2)
            GLES30.glTexImage2D(
                GLES30.GL_TEXTURE_2D,
                0,
                GLES30.GL_R16UI,
                width,
                height,
                0,
                GLES30.GL_RED_INTEGER,
                GLES30.GL_UNSIGNED_SHORT,
                packedBuffer
            )
        }

        checkGlError("uploadRawTexture")
    }

    private fun setupFramebuffer(width: Int, height: Int) {
        // 删除旧资源
        if (framebufferId != 0) {
            GLES30.glDeleteFramebuffers(1, intArrayOf(framebufferId), 0)
            GLES30.glDeleteTextures(1, intArrayOf(outputTextureId), 0)
        }

        // 创建输出纹理
        val textures = IntArray(1)
        GLES30.glGenTextures(1, textures, 0)
        outputTextureId = textures[0]

        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, outputTextureId)
        GLES30.glTexImage2D(
            GLES30.GL_TEXTURE_2D, 0, GLES30.GL_RGBA,
            width, height, 0,
            GLES30.GL_RGBA, GLES30.GL_UNSIGNED_BYTE, null
        )
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)

        // 创建帧缓冲
        val fbos = IntArray(1)
        GLES30.glGenFramebuffers(1, fbos, 0)
        framebufferId = fbos[0]

        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebufferId)
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0,
            GLES30.GL_TEXTURE_2D, outputTextureId, 0
        )

        val status = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER)
        if (status != GLES30.GL_FRAMEBUFFER_COMPLETE) {
            PLog.e(TAG, "Framebuffer not complete: $status")
        }

        checkGlError("setupFramebuffer")
    }

    /**
     * 计算 RAW 图像的平均亮度（采用高光加权算法）
     */
    private fun calculateAverageLuminance(rawImage: Image, metadata: RawMetadata): Float {
        val plane = rawImage.planes[0]
        val buffer = plane.buffer
        val width = rawImage.width
        val height = rawImage.height
        val rowStride = plane.rowStride
        val pixelStride = plane.pixelStride

        var weightedSum = 0.0
        var totalWeight = 0.0
        val sampleStep = 8 // 下采样以保证性能

        val black = metadata.blackLevel[0]
        val range = metadata.whiteLevel - black
        val savedPos = buffer.position()

        // 预计算平均白平衡增益，用于对齐 CPU 亮度感官和 GPU 渲染结果
        val avgWbGain = (metadata.whiteBalanceGains[0] + metadata.whiteBalanceGains[1] +
                metadata.whiteBalanceGains[2] + metadata.whiteBalanceGains[3]) / 4.0f

        try {
            for (y in 0 until height step sampleStep) {
                val rowOffset = y * rowStride
                for (x in 0 until width step sampleStep) {
                    val offset = rowOffset + x * pixelStride
                    if (offset + 1 < buffer.limit()) {
                        val value = buffer.getShort(offset).toInt() and 0xFFFF
                        // 加上白平衡增益修正，防止 CPU 漏算亮部强度导致增益过高
                        val luma = ((value - black) / range) * avgWbGain

                        // 权重函数：高光加权检测，抑制死白对整体曝光的影响
                        val weight = if (luma < 0.1f) 0.5f
                        else if (luma > 0.8f) 0.1f
                        else 1.0f

                        weightedSum += luma * weight
                        totalWeight += weight
                    }
                }
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to calculate luminance", e)
        } finally {
            buffer.position(savedPos)
        }
        return if (totalWeight > 0) (weightedSum / totalWeight).toFloat() else 0.15f
    }

    private fun render(metadata: RawMetadata, exposureGain: Float) {
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebufferId)
        GLES30.glViewport(0, 0, metadata.width, metadata.height)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)

        GLES30.glUseProgram(shaderProgram)

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

        // Capture One 风格控制 Uniforms
        GLES30.glUniform1f(uExposureGainLoc, exposureGain)
        GLES30.glUniform1f(uDeconvStrengthLoc, 0.6f)      // 输入反卷积强度 (轻微)
        GLES30.glUniform1f(uStructureAmountLoc, 0.5f)     // 结构增强强度 (中等)
        GLES30.glUniform1f(uOutputSharpAmountLoc, 0.4f)   // 输出锐化强度 (轻微)

        // 绑定基础 LUT 纹理
        GLES30.glActiveTexture(GLES30.GL_TEXTURE1)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, baseLutTextureId)
        GLES30.glUniform1i(uBaseLutTextureLoc, 1)
        GLES30.glUniform1f(uBaseLutSizeLoc, baseLutSize)

        // 绘制四边形
        val positionHandle = GLES30.glGetAttribLocation(shaderProgram, "aPosition")
        val texCoordHandle = GLES30.glGetAttribLocation(shaderProgram, "aTexCoord")

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

        GLES30.glFinish() // 等待渲染完成

        checkGlError("render")
    }

    private fun readPixels(width: Int, height: Int): Bitmap {
        val buffer = ByteBuffer.allocateDirect(width * height * 4)
        buffer.order(ByteOrder.nativeOrder())

        GLES30.glReadPixels(0, 0, width, height, GLES30.GL_RGBA, GLES30.GL_UNSIGNED_BYTE, buffer)
        buffer.position(0)

        val bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)
        bitmap.copyPixelsFromBuffer(buffer)

        return bitmap
    }

    /**
     * 裁切 Bitmap 到目标宽高比（居中裁切）
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

        if (shaderProgram != 0) {
            GLES30.glDeleteProgram(shaderProgram)
        }
        if (rawTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(rawTextureId), 0)
        }
        if (outputTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(outputTextureId), 0)
        }
        if (framebufferId != 0) {
            GLES30.glDeleteFramebuffers(1, intArrayOf(framebufferId), 0)
        }
        if (baseLutTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(baseLutTextureId), 0)
        }

        EGL14.eglMakeCurrent(eglDisplay, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_CONTEXT)
        EGL14.eglDestroySurface(eglDisplay, eglSurface)
        EGL14.eglDestroyContext(eglDisplay, eglContext)
        EGL14.eglTerminate(eglDisplay)

        isInitialized = false
        instance = null
        PLog.d(TAG, "RawDemosaicProcessor released")
    }
}
