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
     * @param argbData RGBA 16-bit 格式的像素数据 (ShortArray) [width, height, r1, g1, b1, a1, ...]
     * @param lutConfig LUT 配置
     * @param colorRecipeParams 色彩配方参数
     * @param sharpeningValue 锐化强度
     * @param noiseReductionValue 降噪强度
     * @param chromaNoiseReductionValue 减少杂色强度
     */
    suspend fun applyLut(
        argbData: ShortArray,
        lutConfig: LutConfig?,
        colorRecipeParams: ColorRecipeParams?,
        sharpeningValue: Float = 0f,
        noiseReductionValue: Float = 0f,
        chromaNoiseReductionValue: Float = 0f,
    ): Bitmap = withContext(glDispatcher) {
        val width = argbData[0].toInt() and 0xFFFF
        val height = argbData[1].toInt() and 0xFFFF
        
        PLog.d(TAG, "applyLut 16-bit: width=$width, height=$height, dataSize=${argbData.size}")
        
        // 检查数据是否有实际像素值（采样第一个像素）
        if (argbData.size > 6) {
            val r = argbData[2].toInt() and 0xFFFF
            val g = argbData[3].toInt() and 0xFFFF
            val b = argbData[4].toInt() and 0xFFFF
            val a = argbData[5].toInt() and 0xFFFF
            PLog.d(TAG, "First pixel RGBA: $r, $g, $b, $a")
        }
        
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

        // 读取像素
        val buffer = ByteBuffer.allocateDirect(width * height * 4)
        buffer.order(ByteOrder.nativeOrder())
        GLES30.glReadPixels(0, 0, width, height, GLES30.GL_RGBA, GLES30.GL_UNSIGNED_BYTE, buffer)
        buffer.position(0)

        // 创建临时 Bitmap
        val tempBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)
        tempBitmap.copyPixelsFromBuffer(buffer)

        // 翻转 Y 轴（glReadPixels 从左下角开始读取，需要翻转）
        val matrix = android.graphics.Matrix()
        matrix.preScale(1f, -1f)
        val outputBitmap = Bitmap.createBitmap(tempBitmap, 0, 0, width, height, matrix, true)
        tempBitmap.recycle()

        // 解绑帧缓冲
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)

        return outputBitmap
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

    private fun uploadImageTextureFromArgb(argbData: ShortArray, width: Int, height: Int) {
        if (imageTextureId == 0) {
            val textures = IntArray(1)
            GLES30.glGenTextures(1, textures, 0)
            imageTextureId = textures[0]
        }

        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, imageTextureId)
        // 使用 GL_RGBA16F (半精度浮点) 支持线性滤波
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)

        // 将 RGBA uint16 转换为 float (0.0-1.0)
        val pixelCount = width * height
        val buffer = ByteBuffer.allocateDirect(pixelCount * 4 * 4)  // 4 channels * 4 bytes per float
        buffer.order(ByteOrder.nativeOrder())
        val floatBuffer = buffer.asFloatBuffer()

        // argbData 格式: [width, height, r1, g1, b1, a1, r2, g2, b2, a2, ...]
        // 像素数据从 index 2 开始
        for (i in 0 until pixelCount) {
            val baseIdx = 2 + i * 4  // 跳过 header (width, height)
            floatBuffer.put((argbData[baseIdx].toInt() and 0xFFFF) / 65535f)     // R
            floatBuffer.put((argbData[baseIdx + 1].toInt() and 0xFFFF) / 65535f) // G
            floatBuffer.put((argbData[baseIdx + 2].toInt() and 0xFFFF) / 65535f) // B
            floatBuffer.put((argbData[baseIdx + 3].toInt() and 0xFFFF) / 65535f) // A
        }
        floatBuffer.position(0)  // 重置 position 用于 GL 读取

        // GL_RGBA16F: 半精度浮点格式，使用 GL_FLOAT 数据输入
        GLES30.glTexImage2D(
            GLES30.GL_TEXTURE_2D, 0, GLES30.GL_RGBA16F,
            width, height, 0,
            GLES30.GL_RGBA, GLES30.GL_FLOAT, floatBuffer
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

        val buffer = lutConfig.toByteBuffer()
        GLES30.glTexImage3D(
            GLES30.GL_TEXTURE_3D, 0, GLES30.GL_RGB8,
            lutConfig.size, lutConfig.size, lutConfig.size,
            0, GLES30.GL_RGB, GLES30.GL_UNSIGNED_BYTE, buffer
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

        // 纹理坐标缓冲（Y 轴翻转）
        // Android Bitmap 坐标系从左上角开始，OpenGL 纹理坐标从左下角开始
        // 需要翻转 Y 坐标来补偿这个差异
        val flippedTexCoords = floatArrayOf(
            // U, V (Y 轴翻转：原来的 V 变成 1.0 - V)
            0.0f, 1.0f,  // 左下 -> 对应 Bitmap 左上
            1.0f, 1.0f,  // 右下 -> 对应 Bitmap 右上
            0.0f, 0.0f,  // 左上 -> 对应 Bitmap 左下
            1.0f, 0.0f   // 右上 -> 对应 Bitmap 右下
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
            precision highp float;

            in vec2 vTexCoord;
            out vec4 fragColor;

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
            
            // 后期处理参数
            uniform float uSharpening;
            uniform float uNoiseReduction;
            uniform float uChromaNoiseReduction;
            uniform vec2 uTexelSize;
            
            float getLuma(vec3 color) {
                return dot(color, vec3(0.299, 0.587, 0.114));
            }
            
            vec3 rgb2ycbcr(vec3 rgb) {
                float y  =  0.299 * rgb.r + 0.587 * rgb.g + 0.114 * rgb.b;
                float cb = -0.169 * rgb.r - 0.331 * rgb.g + 0.500 * rgb.b + 0.5;
                float cr =  0.500 * rgb.r - 0.419 * rgb.g - 0.081 * rgb.b + 0.5;
                return vec3(y, cb, cr);
            }
            
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
                
                // --- 1. 降噪 ---
                if (uNoiseReduction > 0.0 || uChromaNoiseReduction > 0.0) {
                    // 简化版降噪：使用均值模糊作为 16-bit 的演示
                    vec3 sum = vec3(0.0);
                    float totalWeight = 0.0;
                    for (int x = -1; x <= 1; x++) {
                        for (int y = -1; y <= 1; y++) {
                            vec2 offset = vec2(float(x), float(y)) * uTexelSize;
                            sum += sampleImage(vTexCoord + offset).rgb;
                            totalWeight += 1.0;
                        }
                    }
                    color.rgb = mix(color.rgb, sum / totalWeight, uNoiseReduction + uChromaNoiseReduction);
                }
                
                // --- 2. 色彩配方 ---
                if (uColorRecipeEnabled) {
                    color.rgb *= pow(2.0, uExposure);
                    color.rgb = (color.rgb - 0.5) * uContrast + 0.5;
                    float luma = getLuma(color.rgb);
                    color.rgb = mix(vec3(luma), color.rgb, uSaturation);
                    // 其它色彩配方逻辑可以在此补全
                }

                // --- 3. LUT ---
                if (uLutEnabled && uLutIntensity > 0.0) {
                    float scale = (uLutSize - 1.0) / uLutSize;
                    float offset = 1.0 / (2.0 * uLutSize);
                    vec3 lutCoord = color.rgb * scale + offset;
                    vec4 lutColor = texture(uLutTexture, lutCoord);
                    color.rgb = mix(color.rgb, lutColor.rgb, uLutIntensity);
                }
                
                // --- 4. 锐化 ---
                if (uSharpening > 0.0) {
                    vec3 neighbors = vec3(0.0);
                    neighbors += sampleImage(vTexCoord + vec2(-uTexelSize.x, 0.0)).rgb;
                    neighbors += sampleImage(vTexCoord + vec2(uTexelSize.x, 0.0)).rgb;
                    neighbors += sampleImage(vTexCoord + vec2(0.0, -uTexelSize.y)).rgb;
                    neighbors += sampleImage(vTexCoord + vec2(0.0, uTexelSize.y)).rgb;
                    vec3 blur = neighbors * 0.25;
                    color.rgb = color.rgb + (color.rgb - blur) * uSharpening * 2.0;
                }

                fragColor = clamp(color, 0.0, 1.0);
            }
        """.trimIndent()

        private val IMAGE_FRAGMENT_SHADER_COLOR_RECIPE = "#version 300 es\n" +
                "uniform sampler2D uImageTexture;\n" +
                "vec4 sampleImage(vec2 uv) { return texture(uImageTexture, uv); }\n" +
                SHADER_BODY
    }
}
