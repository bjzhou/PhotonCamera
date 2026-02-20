package com.hinnka.mycamera.lut

import android.graphics.Bitmap
import android.opengl.EGL14
import android.opengl.EGLConfig
import android.opengl.EGLContext
import android.opengl.EGLDisplay
import android.opengl.EGLSurface
import android.opengl.GLES30
import com.hinnka.mycamera.model.ColorRecipeParams
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.asCoroutineDispatcher
import kotlinx.coroutines.withContext
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.FloatBuffer
import java.nio.ShortBuffer
import java.util.concurrent.Executors

/**
 * LUT 图片处理器
 * 
 * 使用 EGL 离屏渲染对静态图片应用 3D LUT
 * 所有 GPU 操作在独立单线程完成，确保 EGL 上下文线程安全
 */
class LutImageProcessor {

    // 单线程调度器，确保所有 EGL 操作在同一线程
    private val glDispatcher = Executors.newSingleThreadExecutor { r ->
        Thread(r, "LutImageProcessor-GL").apply { isDaemon = true }
    }.asCoroutineDispatcher()

    private var eglDisplay: EGLDisplay = EGL14.EGL_NO_DISPLAY
    private var eglContext: EGLContext = EGL14.EGL_NO_CONTEXT
    private var eglSurface: EGLSurface = EGL14.EGL_NO_SURFACE

    private var shaderProgram = 0
    private var imageTextureId = 0
    private var lutTextureId = 0
    private var framebufferId = 0
    private var outputTextureId = 0
    private var pboId = 0

    private var vertexBuffer: FloatBuffer? = null
    private var texCoordBuffer: FloatBuffer? = null
    private var indexBuffer: ShortBuffer? = null

    private var isInitialized = false

    // Uniform 位置
    private var uImageTextureLoc = 0
    private var uLutTextureLoc = 0
    private var uLutSizeLoc = 0
    private var uLutIntensityLoc = 0
    private var uLutEnabledLoc = 0
    private var uLutCurveLoc = 0
    private var uMVPMatrixLoc = 0

    // 色彩配方 Uniform 位置
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

    // 后期处理参数 Uniform 位置（仅拍摄和后期编辑时生效）
    private var uSharpeningLoc = 0
    private var uNoiseReductionLoc = 0
    private var uChromaNoiseReductionLoc = 0
    private var uTexelSizeLoc = 0  // 用于卷积计算

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

            // 创建 EGL Context
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

            // 初始化 shader 和缓冲区
            initShaderProgram()
            initBuffers()

            isInitialized = true
            PLog.d(TAG, "LutImageProcessor initialized")
            return true

        } catch (e: Exception) {
            PLog.e(TAG, "Failed to initialize", e)
            return false
        }
    }

    /**
     * 应用 LUT 到 ARGB 数据
     *
     * @param argbData RGBA 16-bit 格式的像素数据 (ShortBuffer) [width, height, r1, g1, b1, a1, ...]
     * @param lutConfig LUT 配置
     * @param colorRecipeParams 色彩配方参数
     * @param sharpeningValue 锐化强度
     * @param noiseReductionValue 降噪强度
     * @param chromaNoiseReductionValue 减少杂色强度
     */
    suspend fun applyLut(
        argbData: ShortBuffer,
        width: Int,
        height: Int,
        lutConfig: LutConfig?,
        colorRecipeParams: ColorRecipeParams?,
        sharpeningValue: Float = 0f,
        noiseReductionValue: Float = 0f,
        chromaNoiseReductionValue: Float = 0f,
    ): Bitmap = withContext(glDispatcher) {
        if (!isInitialized) {
            if (!initialize()) {
                // 创建一个空白 Bitmap 返回
                return@withContext Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)
            }
        }

        // 提取色彩配方参数
        val colorRecipeEnabled = colorRecipeParams != null && !colorRecipeParams.isDefault()
        val exposure = colorRecipeParams?.exposure ?: 0f
        val contrast = colorRecipeParams?.contrast ?: 1f
        val saturation = colorRecipeParams?.saturation ?: 1f
        val temperature = colorRecipeParams?.temperature ?: 0f
        val tint = colorRecipeParams?.tint ?: 0f
        val fade = colorRecipeParams?.fade ?: 0f
        val vibrance = colorRecipeParams?.color ?: 0f
        val highlights = colorRecipeParams?.highlights ?: 0f
        val shadows = colorRecipeParams?.shadows ?: 0f
        val filmGrain = colorRecipeParams?.filmGrain ?: 0f
        val vignette = colorRecipeParams?.vignette ?: 0f
        val bleachBypass = colorRecipeParams?.bleachBypass ?: 0f
        val intensity = colorRecipeParams?.lutIntensity ?: 1f

        // 后期处理参数
        val sharpening: Float = sharpeningValue
        val noiseReduction: Float = noiseReductionValue
        val chromaNoiseReduction: Float = chromaNoiseReductionValue

        // 激活上下文
        EGL14.eglMakeCurrent(eglDisplay, eglSurface, eglSurface, eglContext)

        // 创建/更新帧缓冲
        setupFramebuffer(width, height)

        // 上传 RGBA 16-bit 数据作为图片纹理
        uploadImageTextureFromArgb(argbData, width, height)

        // 上传 LUT 纹理
        if (lutConfig != null) {
            uploadLutTexture(lutConfig)
        }

        // 执行渲染
        val outputBitmap = performRender(
            width, height,
            lutConfig,
            colorRecipeEnabled,
            exposure, contrast, saturation, temperature, tint, fade,
            vibrance, highlights, shadows, filmGrain, vignette, bleachBypass,
            intensity, sharpening, noiseReduction, chromaNoiseReduction
            // GL_RGBA16 已自动归一化，使用标准 shader
        )

        outputBitmap
    }

    /**
     * 应用 LUT 到 Bitmap
     *
     * @param bitmap 输入图片
     * @param lutConfig LUT 配置
     * @param colorRecipeParams 色彩配方参数
     * @param sharpeningValue 锐化强度
     * @param noiseReductionValue 降噪强度
     * @param chromaNoiseReductionValue 减少杂色强度
     */
    suspend fun applyLut(
        bitmap: Bitmap,
        lutConfig: LutConfig?,
        colorRecipeParams: ColorRecipeParams?,
        sharpeningValue: Float = 0f,
        noiseReductionValue: Float = 0f,
        chromaNoiseReductionValue: Float = 0f,
    ): Bitmap = withContext(glDispatcher) {
        if (!isInitialized) {
            if (!initialize()) {
                return@withContext bitmap
            }
        }

        // 提取色彩配方参数
        val colorRecipeEnabled = colorRecipeParams != null && !colorRecipeParams.isDefault()
        val exposure = colorRecipeParams?.exposure ?: 0f
        val contrast = colorRecipeParams?.contrast ?: 1f
        val saturation = colorRecipeParams?.saturation ?: 1f
        val temperature = colorRecipeParams?.temperature ?: 0f
        val tint = colorRecipeParams?.tint ?: 0f
        val fade = colorRecipeParams?.fade ?: 0f
        val vibrance = colorRecipeParams?.color ?: 0f
        val highlights = colorRecipeParams?.highlights ?: 0f
        val shadows = colorRecipeParams?.shadows ?: 0f
        val filmGrain = colorRecipeParams?.filmGrain ?: 0f
        val vignette = colorRecipeParams?.vignette ?: 0f
        val bleachBypass = colorRecipeParams?.bleachBypass ?: 0f
        val intensity = colorRecipeParams?.lutIntensity ?: 1f

        // 后期处理参数（仅在软件处理模式下生效）
        val sharpening: Float = sharpeningValue
        val noiseReduction: Float = noiseReductionValue
        val chromaNoiseReduction: Float = chromaNoiseReductionValue

        // 确保上下文激活
        EGL14.eglMakeCurrent(eglDisplay, eglSurface, eglSurface, eglContext)

        val width = bitmap.width
        val height = bitmap.height

        // 创建/更新帧缓冲
        setupFramebuffer(width, height)

        // 上传图片纹理
        uploadImageTexture(bitmap)

        // 上传 LUT 纹理
        if (lutConfig != null) {
            uploadLutTexture(lutConfig)
        }

        // 执行渲染
        val outputBitmap = performRender(
            width, height,
            lutConfig,
            colorRecipeEnabled,
            exposure, contrast, saturation, temperature, tint, fade,
            vibrance, highlights, shadows, filmGrain, vignette, bleachBypass,
            intensity, sharpening, noiseReduction, chromaNoiseReduction
        )

        outputBitmap
    }

    /**
     * 执行渲染操作（共享的渲染逻辑）
     */
    private fun performRender(
        width: Int,
        height: Int,
        lutConfig: LutConfig?,
        colorRecipeEnabled: Boolean,
        exposure: Float,
        contrast: Float,
        saturation: Float,
        temperature: Float,
        tint: Float,
        fade: Float,
        vibrance: Float,
        highlights: Float,
        shadows: Float,
        filmGrain: Float,
        vignette: Float,
        bleachBypass: Float,
        intensity: Float,
        sharpening: Float,
        noiseReduction: Float,
        chromaNoiseReduction: Float
    ): Bitmap {
        val program = shaderProgram
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebufferId)
        GLES30.glViewport(0, 0, width, height)

        // 绘制
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
        GLES30.glUseProgram(program)

        // 设置纹理 uniform
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, imageTextureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uImageTexture"), 0)

        GLES30.glActiveTexture(GLES30.GL_TEXTURE1)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, lutTextureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uLutTexture"), 1)

        // 设置 LUT 参数
        GLES30.glUniform1f(GLES30.glGetUniformLocation(program, "uLutSize"), lutConfig?.size?.toFloat() ?: 0f)
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(program, "uLutIntensity"),
            if (lutConfig != null) intensity else 0f
        )
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uLutEnabled"), if (lutConfig != null) 1 else 0)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uLutCurve"), lutConfig?.curve?.ordinal ?: 0)

        // 设置色彩配方参数
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(program, "uColorRecipeEnabled"),
            if (colorRecipeEnabled) 1 else 0
        )
        if (colorRecipeEnabled) {
            GLES30.glUniform1f(GLES30.glGetUniformLocation(program, "uExposure"), exposure)
            GLES30.glUniform1f(GLES30.glGetUniformLocation(program, "uContrast"), contrast)
            GLES30.glUniform1f(GLES30.glGetUniformLocation(program, "uSaturation"), saturation)
            GLES30.glUniform1f(GLES30.glGetUniformLocation(program, "uTemperature"), temperature)
            GLES30.glUniform1f(GLES30.glGetUniformLocation(program, "uTint"), tint)
            GLES30.glUniform1f(GLES30.glGetUniformLocation(program, "uFade"), fade)
            GLES30.glUniform1f(GLES30.glGetUniformLocation(program, "uVibrance"), vibrance)
            GLES30.glUniform1f(GLES30.glGetUniformLocation(program, "uHighlights"), highlights)
            GLES30.glUniform1f(GLES30.glGetUniformLocation(program, "uShadows"), shadows)
            GLES30.glUniform1f(GLES30.glGetUniformLocation(program, "uFilmGrain"), filmGrain)
            GLES30.glUniform1f(GLES30.glGetUniformLocation(program, "uVignette"), vignette)
            GLES30.glUniform1f(GLES30.glGetUniformLocation(program, "uBleachBypass"), bleachBypass)
        }

        // 设置后期处理参数
        GLES30.glUniform1f(GLES30.glGetUniformLocation(program, "uSharpening"), sharpening)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(program, "uNoiseReduction"), noiseReduction)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(program, "uChromaNoiseReduction"), chromaNoiseReduction)
        GLES30.glUniform2f(GLES30.glGetUniformLocation(program, "uTexelSize"), 1.0f / width, 1.0f / height)

        // 设置 MVP 矩阵
        val mvpMatrix = FloatArray(16)
        android.opengl.Matrix.setIdentityM(mvpMatrix, 0)
        GLES30.glUniformMatrix4fv(GLES30.glGetUniformLocation(program, "uMVPMatrix"), 1, false, mvpMatrix, 0)

        // 绘制四边形
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

        // 使用 PBO 优化 glReadPixels
        if (pboId == 0) {
            val pbos = IntArray(1)
            GLES30.glGenBuffers(1, pbos, 0)
            pboId = pbos[0]
        }

        val pixelSize = width * height * 4
        GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, pboId)
        GLES30.glBufferData(GLES30.GL_PIXEL_PACK_BUFFER, pixelSize, null, GLES30.GL_STREAM_READ)

        GLES30.glReadPixels(0, 0, width, height, GLES30.GL_RGBA, GLES30.GL_UNSIGNED_BYTE, 0)

        // 映射内存并读取
        val mappedBuffer = GLES30.glMapBufferRange(
            GLES30.GL_PIXEL_PACK_BUFFER,
            0,
            pixelSize,
            GLES30.GL_MAP_READ_BIT
        ) as? ByteBuffer

        // 创建临时 Bitmap
        val tempBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)

        if (mappedBuffer != null) {
            // 直接使用映射的内存，不需要 allocateDirect，不需要 put 拷贝
            tempBitmap.copyPixelsFromBuffer(mappedBuffer)
            GLES30.glUnmapBuffer(GLES30.GL_PIXEL_PACK_BUFFER)
        }

        GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, 0)

        // 翻转 Y 轴（glReadPixels 从左下角开始读取，需要翻转）
//        val matrix = android.graphics.Matrix()
//        matrix.preScale(1f, -1f)
//        val outputBitmap = Bitmap.createBitmap(tempBitmap, 0, 0, width, height, matrix, true)
//        tempBitmap.recycle()

        // 解绑帧缓冲
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)

        return tempBitmap
    }

    private fun setupFramebuffer(width: Int, height: Int) {
        // 删除旧的帧缓冲
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
            GLES30.GL_TEXTURE_2D, 0, GLES30.GL_RGBA, width, height, 0,
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

        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
    }

    private fun uploadImageTexture(bitmap: Bitmap) {
        if (imageTextureId == 0) {
            val textures = IntArray(1)
            GLES30.glGenTextures(1, textures, 0)
            imageTextureId = textures[0]
        }

        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, imageTextureId)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)

        android.opengl.GLUtils.texImage2D(GLES30.GL_TEXTURE_2D, 0, bitmap, 0)
    }

    private fun uploadImageTextureFromArgb(argbData: ShortBuffer, width: Int, height: Int) {
        if (imageTextureId == 0) {
            val textures = IntArray(1)
            GLES30.glGenTextures(1, textures, 0)
            imageTextureId = textures[0]
        }

        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, imageTextureId)
        // 使用线性滤波
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)

        // GL_RGBA16F: 半精度浮点格式，支持线性滤波。
        // 数据类型使用 GL_HALF_FLOAT，数据源是包含 half float bits 的 short buffer
        GLES30.glTexImage2D(
            GLES30.GL_TEXTURE_2D, 0, GLES30.GL_RGBA16F,
            width, height, 0,
            GLES30.GL_RGBA, GLES30.GL_HALF_FLOAT, argbData
        )

        val error = GLES30.glGetError()
        if (error != GLES30.GL_NO_ERROR) {
            PLog.e(TAG, "glTexImage2D error: $error")
        }
    }

    private fun uploadLutTexture(lutConfig: LutConfig) {
        if (lutTextureId == 0) {
            val textures = IntArray(1)
            GLES30.glGenTextures(1, textures, 0)
            lutTextureId = textures[0]
        }

        GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, lutTextureId)

        // 设置像素对齐为 1 字节（支持非 4 字节对齐的尺寸，如 33）
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 1)

        GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_WRAP_R, GLES30.GL_CLAMP_TO_EDGE)

        val buffer: java.nio.Buffer
        val internalFormat: Int
        val format: Int
        val type: Int

        if (lutConfig.configDataType == LutConfig.CONFIG_DATA_TYPE_UINT16) {
            buffer = lutConfig.toFloatBuffer()
            internalFormat = GLES30.GL_RGB16F
            format = GLES30.GL_RGB
            type = GLES30.GL_FLOAT
        } else {
            buffer = lutConfig.toByteBuffer()
            internalFormat = GLES30.GL_RGB8
            format = GLES30.GL_RGB
            type = GLES30.GL_UNSIGNED_BYTE
        }

        GLES30.glTexImage3D(
            GLES30.GL_TEXTURE_3D, 0, internalFormat,
            lutConfig.size, lutConfig.size, lutConfig.size,
            0, format, type, buffer
        )

        // 恢复默认对齐
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 4)
    }

    private fun initShaderProgram() {
        val vertexShader = compileShader(GLES30.GL_VERTEX_SHADER, IMAGE_VERTEX_SHADER)
        val fragmentShader = compileShader(GLES30.GL_FRAGMENT_SHADER, IMAGE_FRAGMENT_SHADER_COLOR_RECIPE)

        shaderProgram = GLES30.glCreateProgram()
        GLES30.glAttachShader(shaderProgram, vertexShader)
        GLES30.glAttachShader(shaderProgram, fragmentShader)
        GLES30.glLinkProgram(shaderProgram)

        // 获取 uniform 位置
        uImageTextureLoc = GLES30.glGetUniformLocation(shaderProgram, "uImageTexture")
        uLutTextureLoc = GLES30.glGetUniformLocation(shaderProgram, "uLutTexture")
        uLutSizeLoc = GLES30.glGetUniformLocation(shaderProgram, "uLutSize")
        uLutIntensityLoc = GLES30.glGetUniformLocation(shaderProgram, "uLutIntensity")
        uLutEnabledLoc = GLES30.glGetUniformLocation(shaderProgram, "uLutEnabled")
        uLutCurveLoc = GLES30.glGetUniformLocation(shaderProgram, "uLutCurve")
        uMVPMatrixLoc = GLES30.glGetUniformLocation(shaderProgram, "uMVPMatrix")

        // 获取色彩配方 uniform 位置
        uColorRecipeEnabledLoc = GLES30.glGetUniformLocation(shaderProgram, "uColorRecipeEnabled")
        uExposureLoc = GLES30.glGetUniformLocation(shaderProgram, "uExposure")
        uContrastLoc = GLES30.glGetUniformLocation(shaderProgram, "uContrast")
        uSaturationLoc = GLES30.glGetUniformLocation(shaderProgram, "uSaturation")
        uTemperatureLoc = GLES30.glGetUniformLocation(shaderProgram, "uTemperature")
        uTintLoc = GLES30.glGetUniformLocation(shaderProgram, "uTint")
        uFadeLoc = GLES30.glGetUniformLocation(shaderProgram, "uFade")
        uVibranceLoc = GLES30.glGetUniformLocation(shaderProgram, "uVibrance")
        uHighlightsLoc = GLES30.glGetUniformLocation(shaderProgram, "uHighlights")
        uShadowsLoc = GLES30.glGetUniformLocation(shaderProgram, "uShadows")
        uFilmGrainLoc = GLES30.glGetUniformLocation(shaderProgram, "uFilmGrain")
        uVignetteLoc = GLES30.glGetUniformLocation(shaderProgram, "uVignette")
        uBleachBypassLoc = GLES30.glGetUniformLocation(shaderProgram, "uBleachBypass")
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
        vertexBuffer = ByteBuffer.allocateDirect(Shaders.FULL_QUAD_VERTICES.size * 4)
            .order(ByteOrder.nativeOrder())
            .asFloatBuffer()
            .put(Shaders.FULL_QUAD_VERTICES)
        vertexBuffer?.position(0)


        val flippedTexCoords = floatArrayOf(
            0.0f, 0.0f,
            1.0f, 0.0f,
            0.0f, 1.0f,
            1.0f, 1.0f
        )
        texCoordBuffer = ByteBuffer.allocateDirect(flippedTexCoords.size * 4)
            .order(ByteOrder.nativeOrder())
            .asFloatBuffer()
            .put(flippedTexCoords)
        texCoordBuffer?.position(0)

        // 索引缓冲
        indexBuffer = ByteBuffer.allocateDirect(Shaders.DRAW_ORDER.size * 2)
            .order(ByteOrder.nativeOrder())
            .asShortBuffer()
            .put(Shaders.DRAW_ORDER)
        indexBuffer?.position(0)
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
        if (imageTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(imageTextureId), 0)
        }
        if (lutTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(lutTextureId), 0)
        }
        if (framebufferId != 0) {
            GLES30.glDeleteFramebuffers(1, intArrayOf(framebufferId), 0)
        }
        if (outputTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(outputTextureId), 0)
        }
        if (pboId != 0) {
            GLES30.glDeleteBuffers(1, intArrayOf(pboId), 0)
            pboId = 0
        }

        EGL14.eglMakeCurrent(eglDisplay, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_CONTEXT)
        EGL14.eglDestroySurface(eglDisplay, eglSurface)
        EGL14.eglDestroyContext(eglDisplay, eglContext)
        EGL14.eglTerminate(eglDisplay)

        isInitialized = false
        PLog.d(TAG, "LutImageProcessor released")
    }

    companion object {
        private const val TAG = "LutImageProcessor"

        // 2D 图片版本的顶点着色器
        private val IMAGE_VERTEX_SHADER = """
            #version 300 es
            
            in vec4 aPosition;
            in vec2 aTexCoord;
            
            out vec2 vTexCoord;
            
            uniform mat4 uMVPMatrix;
            
            void main() {
                gl_Position = uMVPMatrix * aPosition;
                vTexCoord = aTexCoord;
            }
        """.trimIndent()

        private val SHADER_BODY = """
            in vec2 vTexCoord;
            out vec4 fragColor;

            uniform mediump sampler3D uLutTexture;
            uniform float uLutSize;
            uniform float uLutIntensity;
            uniform bool uLutEnabled;
            uniform int uLutCurve;

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
            
            // 后期处理参数
            uniform float uSharpening;
            uniform float uNoiseReduction;
            uniform float uChromaNoiseReduction;
            uniform vec2 uTexelSize;
            
            // 辅助函数：亮度计算
            float getLuma(vec3 color) {
                return dot(color, vec3(0.2126, 0.7152, 0.0722));
            }

            float log10(float x) { return log(x) * 0.4342944819; }
            vec3 log10(vec3 x) { return log(x) * 0.4342944819; }

            vec3 srgbToLinear(vec3 c) {
                return mix(c / 12.92, pow((c + 0.055) / 1.055, vec3(2.4)), step(0.04045, c));
            }

            vec3 applyLutCurve(vec3 rgb, int curveType) {
                if (curveType == 0) return rgb; // SRGB
                vec3 l = srgbToLinear(rgb);
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
                return rgb;
            }
            
            // 辅助函数：高斯权重 (预计算 sigma^2 的倒数以提升性能)
            float gaussian(float x, float invSigmaSq2) {
                return exp(-x * invSigmaSq2);
            }
            
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

            void main() {
                vec4 color = sampleImage(vTexCoord);
                
                // === 后期处理：降噪和减少杂色（在色彩处理之前，避免放大噪点） ===
                
                if (uNoiseReduction > 0.0) {
                    // 转换到 YCbCr
                    vec3 centerRGB = texture(uImageTexture, vTexCoord).rgb;
                    vec3 centerYCbCr = rgb2ycbcr(centerRGB);
                    
                    float centerY = centerYCbCr.x;
                    vec2 centerCbCr = centerYCbCr.yz;
                    
                    // =======================================================
                    // 🎨 Part 1: 色度降噪 (Chroma Denoise) - 简单粗暴的平滑
                    // =======================================================
                    // 色度噪点（红绿斑）最影响观感，且人眼对色度分辨率不敏感。
                    // 我们使用一个较大的高斯核来彻底抹平色噪。
                    
                    vec2 sumCbCr = vec2(0.0);
                    float sumWeightChroma = 0.0;
                    
                    // 半径可以大一点 (比如 3~5)，步长可以大一点以节省性能
                    int cRadius = 4; 
                    
                    for (int x = -cRadius; x <= cRadius; x+=2) { // 步长2优化性能
                        for (int y = -cRadius; y <= cRadius; y+=2) {
                            vec2 offset = vec2(float(x), float(y)) * uTexelSize;
                            vec3 sampleRgb = texture(uImageTexture, vTexCoord + offset).rgb;
                            vec2 sampleCbCr = rgb2ycbcr(sampleRgb).yz;
                            
                            // 简单的空间高斯权重
                            float distSq = float(x*x + y*y);
                            float weight = exp(-distSq / (2.0 * 4.0)); // Sigma ~ 2.0
                            
                            sumCbCr += sampleCbCr * weight;
                            sumWeightChroma += weight;
                        }
                    }
                    
                    vec2 finalCbCr = sumCbCr / sumWeightChroma;
                    
                    // 根据降噪强度混合：强度低时保留一点原色，强度高时完全使用模糊色
                    // uNoiseReduction: 0.0 ~ 1.0
                    finalCbCr = mix(centerCbCr, finalCbCr, clamp(uNoiseReduction * 1.5, 0.0, 1.0));
                
                
                    // =======================================================
                    // 💡 Part 2: 亮度降噪 (Luma Denoise) - 双边滤波 (Bilateral)
                    // =======================================================
                    // 亮度必须保边！不能用 Box Blur。
                    // 双边滤波同时考虑“距离”和“亮度差”，只模糊相似的像素。
                    
                    float sumY = 0.0;
                    float sumWeightLuma = 0.0;
                    
                    // 亮度降噪半径小一点 (2~3)，保持精细
                    int lRadius = 3;
                    
                    // 动态调整 Sigma (根据降噪强度)
                    // sigmaSpatial: 空间范围
                    float sigmaSpatial = 2.0; 
                    // sigmaRange: 亮度差异容忍度 (越小越保边，越大越糊)
                    // 关键：根据 uNoiseReduction 动态调整。范围建议 0.05 ~ 0.2
                    float sigmaRange = 0.05 + uNoiseReduction * 0.15; 
                    
                    for (int x = -lRadius; x <= lRadius; x++) {
                        for (int y = -lRadius; y <= lRadius; y++) {
                            vec2 offset = vec2(float(x), float(y)) * uTexelSize;
                            
                            // 采样 (这里只取 Y 即可，甚至可以直接取 RGB 的 G 通道近似，省一次转换)
                            float sampleY = rgb2ycbcr(texture(uImageTexture, vTexCoord + offset).rgb).x;
                            
                            // 1. 空间权重 (Spatial Weight) - 高斯
                            float distSq = float(x*x + y*y);
                            float wSpatial = exp(-distSq / (2.0 * sigmaSpatial * sigmaSpatial));
                            
                            // 2. 范围权重 (Range Weight) - 核心保边逻辑！
                            // 如果 sampleY 和 centerY 差异很大（边缘），diff 大，exp 趋近 0，权重忽略
                            float diff = sampleY - centerY;
                            float wRange = exp(-(diff * diff) / (2.0 * sigmaRange * sigmaRange));
                            
                            // 综合权重
                            float weight = wSpatial * wRange;
                            
                            sumY += sampleY * weight;
                            sumWeightLuma += weight;
                        }
                    }
                    
                    float finalY = sumY / sumWeightLuma;
                    
                    // 细节回掺 (Detail Recovery) - 可选
                    // 双边滤波有时候会有“塑料感”，可以稍微掺回一点点原始噪点增加质感
                    // mix(Blur, Original, 0.1)
                    finalY = mix(finalY, centerY, 0.1); 
                    
                    // =======================================================
                    // 🔄 合成输出
                    // =======================================================
                    color.rgb = ycbcr2rgb(vec3(finalY, finalCbCr));
                    color.rgb = clamp(color.rgb, 0.0, 1.0);
                }
            
                // --- 2. 强力色度降噪 (Chroma Denoise) ---
                if (uChromaNoiseReduction > 0.0) {
                    vec3 yuv = rgb2ycbcr(color.rgb);
                    
                    vec2 sumUV = vec2(0.0);
                    float sumWeight = 0.0;
            
                    // 基础半径 2.0，滑块拉满时步长极大
                    float maxStride = 2.0 + uChromaNoiseReduction * 10.0; 
            
                    // 阈值越大，越容易模糊(保护越弱)
                    float colorThreshold = 0.15;
            
                    // 采用 5x5 循环
                    const int RADIUS_UV = 2; 
                    
                    for (int x = -RADIUS_UV; x <= RADIUS_UV; x++) {
                        for (int y = -RADIUS_UV; y <= RADIUS_UV; y++) {
                            vec2 offset = vec2(float(x), float(y)) * uTexelSize * maxStride;
                            
                            vec3 sampleRgb = texture(uImageTexture, vTexCoord + offset).rgb;
                            // 注意：这里必须用 sampleRgb，不要用 color.rgb
                            vec3 sampleYuv = rgb2ycbcr(sampleRgb);
                            
                            // 1. 距离权重
                            float distSq = float(x*x + y*y);
                            float wDist = exp(-distSq / 4.0);
                            
                            // 2. 颜色相似度权重
                            float uvDiff = distance(sampleYuv.yz, yuv.yz);
                            
                            float wColor = 1.0 - smoothstep(colorThreshold, colorThreshold + 0.1, uvDiff);
                            
                            float weight = wDist * wColor;
                            
                            sumUV += sampleYuv.yz * weight;
                            sumWeight += weight;
                        }
                    }
            
                    // 防止除以 0 的保护
                    if (sumWeight > 0.001) {
                        vec2 cleanUV = sumUV / sumWeight;
            
                        // Saturation 曲线混合
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
                    float luma = dot(color.rgb, vec3(0.2126, 0.7152, 0.0722));
                    float highlightMask = smoothstep(0.5, 1.0, luma);
                    float shadowMask = smoothstep(0.5, 0.0, luma);
                    float highlightFactor;
                    if (uHighlights > 0.0) {
                        highlightFactor = 1.0 + uHighlights * 0.7;
                    } else {
                        highlightFactor = 1.0 + uHighlights * 0.3;
                    }
                    color.rgb = mix(color.rgb, color.rgb * highlightFactor, highlightMask);
                    vec3 shadowTarget;
                    if (uShadows > 0.0) {
                        shadowTarget = mix(color.rgb, vec3(1.0) * luma, uShadows * 0.2) + (color.rgb * uShadows * 0.5);
                    } else {
                        shadowTarget = color.rgb * (1.0 + uShadows * 0.5);
                    }
                    color.rgb = mix(color.rgb, shadowTarget, shadowMask);

                    // 3. 对比度（围绕中灰点调整）
                    color.rgb = (color.rgb - 0.5) * uContrast + 0.5;

                    // 4. 白平衡调整（色温 + 色调）
                    color.r += uTemperature * 0.1;
                    color.b -= uTemperature * 0.1;
                    color.g += uTint * 0.05;

                    // 5. 饱和度（基于 Luma 的快速算法）
                    float gray = dot(color.rgb, vec3(0.2126, 0.7152, 0.0722));
                    color.rgb = mix(vec3(gray), color.rgb, uSaturation);

                    // 6. 色彩增强（Vibrance - 选择性增强蓝色/红橙色）
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

                    // 8. 留银冲洗（Bleach Bypass - 胶片银盐保留效果）
                    if (uBleachBypass > 0.0) {
                        // 保留部分银盐：降低饱和度
                        float luma = dot(color.rgb, vec3(0.2126, 0.7152, 0.0722));
                        vec3 desaturated = mix(color.rgb, vec3(luma), 0.6);
                        
                        // 增强对比度
                        desaturated = (desaturated - 0.5) * 1.3 + 0.5;
                        
                        // 色调偏移到冷色调（青绿色）
                        desaturated.r *= 0.95;
                        desaturated.g *= 1.02;
                        desaturated.b *= 1.05;
                        
                        // 根据强度混合
                        color.rgb = mix(color.rgb, desaturated, uBleachBypass);
                    }

                    // 9. 晕影（Vignette - 边缘光线衰减/增强）
                    if (abs(uVignette) > 0.0) {
                        // 计算从中心到边缘的距离
                        vec2 center = vec2(0.5, 0.5);
                        float dist = distance(vTexCoord, center);
                        
                        // 使用 smoothstep 创建平滑过渡
                        float vignetteMask = smoothstep(0.8, 0.3, dist);
                        
                        // 根据 uVignette 符号决定是暗角还是亮角
                        if (uVignette < 0.0) {
                            // 暗角：边缘变暗（更强的效果：从0.01到1.0）
                            color.rgb *= mix(0.01, 1.0, vignetteMask) * abs(uVignette) + (1.0 + uVignette);
                        } else {
                            // 亮角：边缘变亮（增强效果）
                            color.rgb = mix(color.rgb, vec3(1.0), (1.0 - vignetteMask) * uVignette);
                        }
                    }

                    // 10. 颗粒（Film Grain - 胶片颗粒感）
                    if (uFilmGrain > 0.0) {
                        // 使用纹理坐标生成伪随机噪声
                        float noise = fract(sin(dot(vTexCoord * 1000.0, vec2(12.9898, 78.233))) * 43758.5453);
                        
                        // 将噪声从 [0,1] 映射到 [-1,1]
                        noise = (noise - 0.5) * 2.0;
                        
                        // 根据亮度自适应调整颗粒强度
                        float luma = dot(color.rgb, vec3(0.2126, 0.7152, 0.0722));
                        float grainMask = 1.0 - abs(luma - 0.5) * 2.0;
                        grainMask = grainMask * 0.5 + 0.5;
                        
                        // 应用颗粒（增强强度）
                        float grainStrength = uFilmGrain * 0.1 * grainMask;
                        color.rgb += noise * grainStrength;
                    }

                    // Clamp 到合法范围
                    color.rgb = clamp(color.rgb, 0.0, 1.0);
                }

                // === LUT 处理（在色彩配方之后） ===
                if (uLutEnabled && uLutIntensity > 0.0) {
                    vec3 lutInColor = applyLutCurve(color.rgb, uLutCurve);
                    float scale = (uLutSize - 1.0) / uLutSize;
                    float offset = 1.0 / (2.0 * uLutSize);
                    vec3 lutCoord = lutInColor * scale + offset;
                    vec4 lutColor = texture(uLutTexture, lutCoord);
                    color.rgb = mix(color.rgb, lutColor.rgb, uLutIntensity);
                }
                
                // --- 4. 锐化 ---
                if (uSharpening > 0.0) {
                    // 使用基于亮度的 Unsharp Mask，避免色彩污染
                    vec3 inputColor = sampleImage(vTexCoord).rgb;
                    float inputLuma = getLuma(inputColor);

                    float neighborsLuma = 0.0;
                    neighborsLuma += getLuma(sampleImage(vTexCoord + vec2(-uTexelSize.x, 0.0)).rgb);
                    neighborsLuma += getLuma(sampleImage(vTexCoord + vec2(uTexelSize.x, 0.0)).rgb);
                    neighborsLuma += getLuma(sampleImage(vTexCoord + vec2(0.0, -uTexelSize.y)).rgb);
                    neighborsLuma += getLuma(sampleImage(vTexCoord + vec2(0.0, uTexelSize.y)).rgb);
                    float blurLuma = neighborsLuma * 0.25;

                    float detail = inputLuma - blurLuma;
                    color.rgb += detail * uSharpening * 2.0;
                }

                fragColor = clamp(color, 0.0, 1.0);
            }
        """.trimIndent()

        private val IMAGE_FRAGMENT_SHADER_COLOR_RECIPE = "#version 300 es\n" +
                "precision highp float;\n" +
                "uniform sampler2D uImageTexture;\n" +
                "vec4 sampleImage(vec2 uv) { return texture(uImageTexture, uv); }\n" +
                SHADER_BODY
    }
}
