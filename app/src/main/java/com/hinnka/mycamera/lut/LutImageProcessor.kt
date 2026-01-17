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
     * 应用 LUT 到 Bitmap
     * 
     * @param bitmap 输入图片
     * @param lutConfig LUT 配置
     * @param colorRecipeParams 色彩配方参数
     * @param useSoftwareProcessing 是否使用软件处理模式
     *        - true: 使用软件降噪/锐化算法
     *        - false: 不应用软件降噪/锐化（因为系统已处理）
     * @param sharpeningValue 锐化强度（仅 useSoftwareProcessing=true 时生效）
     * @param noiseReductionValue 降噪强度（仅 useSoftwareProcessing=true 时生效）
     * @param chromaNoiseReductionValue 减少杂色强度（仅 useSoftwareProcessing=true 时生效）
     */
    suspend fun applyLut(
        bitmap: Bitmap,
        lutConfig: LutConfig?,
        colorRecipeParams: ColorRecipeParams?,
        useSoftwareProcessing: Boolean = true,
        sharpeningValue: Float = 0.3f,
        noiseReductionValue: Float = 0.25f,
        chromaNoiseReductionValue: Float = 0.25f,
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
        val vibrance = colorRecipeParams?.blue ?: 0f
        val highlights = colorRecipeParams?.highlights ?: 0f
        val shadows = colorRecipeParams?.shadows ?: 0f
        val filmGrain = colorRecipeParams?.filmGrain ?: 0f
        val vignette = colorRecipeParams?.vignette ?: 0f
        val bleachBypass = colorRecipeParams?.bleachBypass ?: 0f
        val intensity = colorRecipeParams?.lutIntensity ?: 1f
        
        // 后期处理参数（仅在软件处理模式下生效）
        val sharpening: Float
        val noiseReduction: Float
        val chromaNoiseReduction: Float
        
        if (useSoftwareProcessing) {
            // 软件处理模式：使用传入的参数值
            sharpening = sharpeningValue
            noiseReduction = noiseReductionValue
            chromaNoiseReduction = chromaNoiseReductionValue
        } else {
            // 系统处理模式：不应用软件降噪/锐化（系统已经处理了）
            sharpening = 0f
            noiseReduction = 0f
            chromaNoiseReduction = 0f
        }
        
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
        
        // 绑定帧缓冲
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebufferId)
        GLES30.glViewport(0, 0, width, height)
        
        // 绘制
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
        GLES30.glUseProgram(shaderProgram)
        
        // 设置纹理 uniform
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, imageTextureId)
        GLES30.glUniform1i(uImageTextureLoc, 0)
        
        GLES30.glActiveTexture(GLES30.GL_TEXTURE1)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, lutTextureId)
        GLES30.glUniform1i(uLutTextureLoc, 1)
        
        // 设置 LUT 参数
        GLES30.glUniform1f(uLutSizeLoc, lutConfig?.size?.toFloat() ?: 0f)
        GLES30.glUniform1f(uLutIntensityLoc, if (lutConfig != null) intensity else 0f)
        GLES30.glUniform1i(uLutEnabledLoc, if (lutConfig != null) 1 else 0)

        // 设置色彩配方参数
        GLES30.glUniform1i(uColorRecipeEnabledLoc, if (colorRecipeEnabled) 1 else 0)
        if (colorRecipeEnabled) {
            GLES30.glUniform1f(uExposureLoc, exposure)
            GLES30.glUniform1f(uContrastLoc, contrast)
            GLES30.glUniform1f(uSaturationLoc, saturation)
            GLES30.glUniform1f(uTemperatureLoc, temperature)
            GLES30.glUniform1f(uTintLoc, tint)
            GLES30.glUniform1f(uFadeLoc, fade)
            GLES30.glUniform1f(uVibranceLoc, vibrance)
            GLES30.glUniform1f(uHighlightsLoc, highlights)
            GLES30.glUniform1f(uShadowsLoc, shadows)
            GLES30.glUniform1f(uFilmGrainLoc, filmGrain)
            GLES30.glUniform1f(uVignetteLoc, vignette)
            GLES30.glUniform1f(uBleachBypassLoc, bleachBypass)
        }
        
        // 设置后期处理参数（仅拍摄和后期编辑时生效）
        GLES30.glUniform1f(uSharpeningLoc, sharpening)
        GLES30.glUniform1f(uNoiseReductionLoc, noiseReduction)
        GLES30.glUniform1f(uChromaNoiseReductionLoc, chromaNoiseReduction)
        GLES30.glUniform2f(uTexelSizeLoc, 1.0f / width, 1.0f / height)

        // 设置 MVP 矩阵（单位矩阵）
        val mvpMatrix = FloatArray(16)
        android.opengl.Matrix.setIdentityM(mvpMatrix, 0)
        GLES30.glUniformMatrix4fv(uMVPMatrixLoc, 1, false, mvpMatrix, 0)
        
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
        
        outputBitmap
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
        GLES30.glTexImage2D(GLES30.GL_TEXTURE_2D, 0, GLES30.GL_RGBA, width, height, 0,
            GLES30.GL_RGBA, GLES30.GL_UNSIGNED_BYTE, null)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        
        // 创建帧缓冲
        val fbos = IntArray(1)
        GLES30.glGenFramebuffers(1, fbos, 0)
        framebufferId = fbos[0]
        
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebufferId)
        GLES30.glFramebufferTexture2D(GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0,
            GLES30.GL_TEXTURE_2D, outputTextureId, 0)
        
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
        
        // 获取后期处理参数 uniform 位置
        uSharpeningLoc = GLES30.glGetUniformLocation(shaderProgram, "uSharpening")
        uNoiseReductionLoc = GLES30.glGetUniformLocation(shaderProgram, "uNoiseReduction")
        uChromaNoiseReductionLoc = GLES30.glGetUniformLocation(shaderProgram, "uChromaNoiseReduction")
        uTexelSizeLoc = GLES30.glGetUniformLocation(shaderProgram, "uTexelSize")
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
        
        // 2D 图片版本的片元着色器（带色彩配方和 LUT）
        private val IMAGE_FRAGMENT_SHADER_COLOR_RECIPE = """
            #version 300 es

            precision highp float;

            in vec2 vTexCoord;
            out vec4 fragColor;

            uniform sampler2D uImageTexture;
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
            
            // 后期处理参数（仅拍摄和后期编辑时生效，预览时不生效）
            uniform float uSharpening;           // 0.0 ~ 1.0 (锐化强度)
            uniform float uNoiseReduction;       // 0.0 ~ 1.0 (降噪强度)
            uniform float uChromaNoiseReduction; // 0.0 ~ 1.0 (减少杂色强度)
            uniform vec2 uTexelSize;             // 像素尺寸（用于卷积计算）
            
            // 辅助函数：亮度计算
            float getLuma(vec3 color) {
                return dot(color, vec3(0.299, 0.587, 0.114));
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
                // 从图片纹理采样原始颜色
                vec4 color = texture(uImageTexture, vTexCoord);
                
                // === 后期处理：降噪和减少杂色（在色彩处理之前，避免放大噪点） ===
                
                // ============================================================
                // 引导滤波降噪 (Guided Filter Denoising)
                // 原理：假设输出 q 与引导图 I 在局部窗口内满足 q = a*I + b
                // 当 σ² >> ε 时，a≈1，保持原值（边缘保持）
                // 当 σ² << ε 时，a≈0，输出均值（平滑降噪）
                // ============================================================
                
                if (uNoiseReduction > 0.0) {
                    // 转换到 YCbCr 色彩空间处理
                    vec3 centerYCbCr = rgb2ycbcr(color.rgb);
                    float I = centerYCbCr.x;  // 引导图 = 输入亮度
                    vec2 Ic = centerYCbCr.yz; // 色度引导
                    
                    // === Step 1: 计算局部统计量 ===
                    const int RADIUS = 4;  // 9x9 窗口
                    float radiusSq = float(RADIUS * RADIUS);
                    
                    // 累加器
                    float sumI = 0.0;      // Σ I
                    float sumII = 0.0;     // Σ I²
                    vec2 sumIc = vec2(0.0);
                    vec2 sumIcIc = vec2(0.0);
                    float count = 0.0;
                    
                    for (int x = -RADIUS; x <= RADIUS; x++) {
                        for (int y = -RADIUS; y <= RADIUS; y++) {
                            float distSq = float(x*x + y*y);
                            if (distSq > radiusSq) continue;
                            
                            vec2 offset = vec2(float(x), float(y)) * uTexelSize;
                            vec3 sampleRgb = texture(uImageTexture, vTexCoord + offset).rgb;
                            vec3 sampleYCbCr = rgb2ycbcr(sampleRgb);
                            
                            float sI = sampleYCbCr.x;
                            vec2 sIc = sampleYCbCr.yz;
                            
                            sumI += sI;
                            sumII += sI * sI;
                            sumIc += sIc;
                            sumIcIc += sIc * sIc;
                            count += 1.0;
                        }
                    }
                    
                    // 局部均值
                    float meanI = sumI / count;
                    vec2 meanIc = sumIc / count;
                    
                    // 局部方差 = E[I²] - E[I]²
                    float varI = sumII / count - meanI * meanI;
                    vec2 varIc = sumIcIc / count - meanIc * meanIc;
                    
                    // === Step 2: 计算引导滤波系数 a 和 b ===
                    // ε 是正则化参数，控制平滑程度
                    // ε 越大 → 更多区域被判定为"需要平滑" → 降噪更强
                    
                    // 暗部噪点更多，ε 更大
                    float darkFactor = 1.0 + (1.0 - I) * 1.5;
                    
                    // Y 通道的 ε：0.0001 ~ 0.005（降噪强度控制）
                    float epsilonY = (0.0001 + uNoiseReduction * 0.005) * darkFactor;
                    // CbCr 通道的 ε：略大一些
                    float epsilonC = (0.0002 + uNoiseReduction * 0.008) * darkFactor;
                    
                    // a = var / (var + ε)
                    // 当 var >> ε 时，a ≈ 1（保持原值）
                    // 当 var << ε 时，a ≈ 0（输出均值）
                    float aY = varI / (varI + epsilonY);
                    vec2 aC = varIc / (varIc + vec2(epsilonC));
                    
                    // b = mean * (1 - a)
                    float bY = meanI * (1.0 - aY);
                    vec2 bC = meanIc * (1.0 - aC);
                    
                    // === Step 3: 输出 q = a*I + b ===
                    float finalY = aY * I + bY;
                    vec2 finalCbCr = aC * Ic + bC;
                    
                    // 转回 RGB
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
                    float luma = dot(color.rgb, vec3(0.299, 0.587, 0.114));
                    float highlightMask = smoothstep(0.5, 1.0, luma);
                    float shadowMask = smoothstep(0.5, 0.0, luma);
                    color.rgb *= 1.0 + uHighlights * highlightMask;
                    color.rgb *= 1.0 + uShadows * shadowMask;

                    // 3. 对比度（围绕中灰点调整）
                    color.rgb = (color.rgb - 0.5) * uContrast + 0.5;

                    // 4. 白平衡调整（色温 + 色调）
                    color.r += uTemperature * 0.1;
                    color.b -= uTemperature * 0.1;
                    color.g += uTint * 0.05;

                    // 5. 饱和度（基于 Luma 的快速算法）
                    float gray = dot(color.rgb, vec3(0.299, 0.587, 0.114));
                    color.rgb = mix(vec3(gray), color.rgb, uSaturation);

                    // 6. 蓝色增强（Vibrance）
                    float baseBlue = color.b - (color.r + color.g) * 0.5;
                    float blueMask = smoothstep(0.0, 0.2, baseBlue); 
                    float strength = uVibrance * 0.5;
                    if (blueMask > 0.0) {
                        vec3 densityCheck = vec3(0.3, 0.3, 0.0) * blueMask * strength;
                        color.r -= densityCheck.r * color.r;
                        color.g -= densityCheck.g * color.g;
                        color.b -= 0.05 * blueMask * strength;
                        color.rgb = mix(color.rgb, color.rgb * color.rgb * (3.0 - 2.0 * color.rgb), blueMask * strength * 0.2);
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
                        float luma = dot(color.rgb, vec3(0.299, 0.587, 0.114));
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
                        float luma = dot(color.rgb, vec3(0.299, 0.587, 0.114));
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
                    // 使用 Unsharp Mask 算法
                    // 采样相邻像素
                    vec3 neighbors = vec3(0.0);
                    neighbors += texture(uImageTexture, vTexCoord + vec2(-uTexelSize.x, 0.0)).rgb;
                    neighbors += texture(uImageTexture, vTexCoord + vec2(uTexelSize.x, 0.0)).rgb;
                    neighbors += texture(uImageTexture, vTexCoord + vec2(0.0, -uTexelSize.y)).rgb;
                    neighbors += texture(uImageTexture, vTexCoord + vec2(0.0, uTexelSize.y)).rgb;
                    vec3 blur = neighbors * 0.25;
                    
                    // 计算锐化增量（高频分量）
                    vec3 sharpenDelta = color.rgb - blur;
                    
                    // 应用锐化（强度可调）
                    float sharpenAmount = uSharpening * 1.5; // 调整系数以获得合适的效果
                    color.rgb = color.rgb + sharpenDelta * sharpenAmount;
                    
                    // Clamp 防止过曝
                    color.rgb = clamp(color.rgb, 0.0, 1.0);
                }

                fragColor = color;
            }
        """.trimIndent()
    }
}
