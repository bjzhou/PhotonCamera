package com.hinnka.mycamera.lut

import android.graphics.Bitmap
import android.graphics.ColorSpace
import android.opengl.EGL14
import android.opengl.EGLConfig
import android.opengl.EGLContext
import android.opengl.EGLDisplay
import android.opengl.EGLSurface
import android.opengl.GLES30
import com.hinnka.mycamera.model.ColorRecipeParams
import com.hinnka.mycamera.raw.NLMShaders
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.asCoroutineDispatcher
import kotlinx.coroutines.withContext
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.FloatBuffer
import java.nio.ShortBuffer
import java.util.concurrent.Executors
import androidx.core.graphics.createBitmap

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

    private var nlmChromaProgram = 0
    private var nlmPassHProgram = 0
    private var nlmPassVProgram = 0

    private var nlmChromaTexId = 0
    private var nlmChromaFboId = 0
    private val nlmPassTexId = IntArray(2)
    private val nlmPassFboId = IntArray(2)
    private var nlmWidth = 0
    private var nlmHeight = 0

    // HDF (Highlight Diffusion) 光晕效果资源
    private var hdfExtractBlurHProgram = 0
    private var hdfBlurVProgram = 0
    private var hdfTexId = IntArray(2)      // 1/4 分辨率模糊纹理
    private var hdfFboId = IntArray(2)      // 1/4 分辨率模糊 FBO
    private var hdfWidth = 0
    private var hdfHeight = 0

    private var isInitialized = false

    // Uniform 位置
    private var uImageTextureLoc = 0
    private var uLutTextureLoc = 0
    private var uLutSizeLoc = 0
    private var uLutIntensityLoc = 0
    private var uLutEnabledLoc = 0
    private var uLutCurveLoc = 0
    private var uLutColorSpaceLoc = 0
    private var uInputColorSpaceLoc = 0
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
    private var uNoiseLoc = 0
    private var uNoiseSeedLoc = 0
    private var uLowResLoc = 0
    private var uAspectRatioLoc = 0

    // 后期处理参数 Uniform 位置（仅拍摄和后期编辑时生效）
    private var uSharpeningLoc = 0
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
            initNLMPrograms()
            initHDFPrograms()
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
        colorSpace: ColorSpace,
        lutConfig: LutConfig?,
        colorRecipeParams: ColorRecipeParams?,
        sharpeningValue: Float = 0f,
        noiseReductionValue: Float = 0f,
        chromaNoiseReductionValue: Float = 0f,
    ): Bitmap = withContext(glDispatcher) {
        if (!isInitialized) {
            if (!initialize()) {
                // 创建一个空白 Bitmap 返回
                return@withContext createBitmap(width, height)
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
        val halation = colorRecipeParams?.halation ?: 0f
        val chromaticAberration = colorRecipeParams?.chromaticAberration ?: 0f
        val noise = colorRecipeParams?.noise ?: 0f
        val lowRes = colorRecipeParams?.lowRes ?: 0f
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

        if (noiseReduction > 0 || chromaNoiseReduction > 0) {
            renderNLMDenoise(imageTextureId, width, height, noiseReduction, chromaNoiseReduction)
        }

        // 上传 LUT 纹理
        if (lutConfig != null) {
            uploadLutTexture(lutConfig)
        }

        val inputTexId = if (noiseReduction > 0 || chromaNoiseReduction > 0) nlmPassTexId[1] else imageTextureId

        // HDF 光晕效果预处理（在主 shader 之前，需要模糊的光晕纹理）
        val hdfEnabled = halation > 0f
        if (hdfEnabled) {
            renderHDFBlur(inputTexId, width, height, halation)
        }

        // 执行渲染
        val outputBitmap = performRender(
            width, height,
            inputTexId,
            colorSpace,
            lutConfig,
            colorRecipeEnabled,
            exposure, contrast, saturation, temperature, tint, fade,
            vibrance, highlights, shadows, filmGrain, vignette, bleachBypass,
            halation, chromaticAberration, noise, lowRes,
            intensity, sharpening
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
        val halation = colorRecipeParams?.halation ?: 0f
        val chromaticAberration = colorRecipeParams?.chromaticAberration ?: 0f
        val intensity = colorRecipeParams?.lutIntensity ?: 1f
        val noise = colorRecipeParams?.noise ?: 0f
        val lowRes = colorRecipeParams?.lowRes ?: 0f

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

        if (noiseReduction > 0 || chromaNoiseReduction > 0) {
            renderNLMDenoise(imageTextureId, width, height, noiseReduction, chromaNoiseReduction)
        }

        // 上传 LUT 纹理
        if (lutConfig != null) {
            uploadLutTexture(lutConfig)
        }

        val inputTexId = if (noiseReduction > 0 || chromaNoiseReduction > 0) nlmPassTexId[1] else imageTextureId

        // HDF 光晕效果预处理
        val hdfEnabled = halation > 0f
        if (hdfEnabled) {
            renderHDFBlur(inputTexId, width, height, halation)
        }

        // 执行渲染
        val outputBitmap = performRender(
            width, height,
            inputTexId,
            bitmap.colorSpace ?: ColorSpace.get(ColorSpace.Named.SRGB),
            lutConfig,
            colorRecipeEnabled,
            exposure, contrast, saturation, temperature, tint, fade,
            vibrance, highlights, shadows, filmGrain, vignette, bleachBypass,
            halation, chromaticAberration,
            noise, lowRes, intensity, sharpening
        )

        outputBitmap
    }

    /**
     * 执行渲染操作（共享的渲染逻辑）
     */
    private fun performRender(
        width: Int,
        height: Int,
        inputTextureId: Int,
        inputColorSpace: ColorSpace,
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
        halation: Float,
        chromaticAberration: Float,
        noise: Float,
        lowRes: Float,
        intensity: Float,
        sharpening: Float
    ): Bitmap {
        val program = shaderProgram
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebufferId)
        GLES30.glViewport(0, 0, width, height)

        // 绘制
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
        GLES30.glUseProgram(program)

        // 设置纹理 uniform
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, inputTextureId)
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
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uLutColorSpace"), lutConfig?.colorSpace?.ordinal ?: 0)

        val inputColorSpaceId = if (inputColorSpace == ColorSpace.get(ColorSpace.Named.DISPLAY_P3)) 1 else 0
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uInputColorSpace"), inputColorSpaceId)

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
            GLES30.glUniform1f(GLES30.glGetUniformLocation(program, "uNoise"), noise)
            GLES30.glUniform1f(
                GLES30.glGetUniformLocation(program, "uNoiseSeed"),
                (System.currentTimeMillis() % 10000) / 1000f
            )
            GLES30.glUniform1f(GLES30.glGetUniformLocation(program, "uLowRes"), lowRes)
            GLES30.glUniform1f(
                GLES30.glGetUniformLocation(program, "uAspectRatio"),
                width.toFloat() / Math.max(1, height).toFloat()
            )
        }

        // 设置 HDF 参数
        GLES30.glUniform1f(GLES30.glGetUniformLocation(program, "uHalation"), halation)
        if (halation > 0f) {
            GLES30.glActiveTexture(GLES30.GL_TEXTURE2)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, hdfTexId[1])
            GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uHdfTexture"), 2)
        }

        // 设置色散参数
        GLES30.glUniform1f(GLES30.glGetUniformLocation(program, "uChromaticAberration"), chromaticAberration)

        // 设置后期处理参数
        GLES30.glUniform1f(GLES30.glGetUniformLocation(program, "uSharpening"), sharpening)
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
        val tempBitmap = createBitmap(width, height, colorSpace = inputColorSpace)

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
        uLutColorSpaceLoc = GLES30.glGetUniformLocation(shaderProgram, "uLutColorSpace")
        uInputColorSpaceLoc = GLES30.glGetUniformLocation(shaderProgram, "uInputColorSpace")
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
        uNoiseLoc = GLES30.glGetUniformLocation(shaderProgram, "uNoise")
        uNoiseSeedLoc = GLES30.glGetUniformLocation(shaderProgram, "uNoiseSeed")
        uLowResLoc = GLES30.glGetUniformLocation(shaderProgram, "uLowRes")
        uAspectRatioLoc = GLES30.glGetUniformLocation(shaderProgram, "uAspectRatio")

        uSharpeningLoc = GLES30.glGetUniformLocation(shaderProgram, "uSharpening")
        uTexelSizeLoc = GLES30.glGetUniformLocation(shaderProgram, "uTexelSize")
    }

    private fun initNLMPrograms() {
        fun createProgram(vShader: Int, fSource: String): Int {
            val fShader = compileShader(GLES30.GL_FRAGMENT_SHADER, fSource)
            if (vShader == 0 || fShader == 0) return 0
            val program = GLES30.glCreateProgram()
            GLES30.glAttachShader(program, vShader)
            GLES30.glAttachShader(program, fShader)
            GLES30.glLinkProgram(program)
            GLES30.glDeleteShader(fShader)
            return program
        }

        val vShader = compileShader(GLES30.GL_VERTEX_SHADER, IMAGE_VERTEX_SHADER)
        nlmChromaProgram = createProgram(vShader, NLMShaders.PASS0_CHROMA_DENOISE)
        nlmPassHProgram = createProgram(vShader, NLMShaders.NLM_PASS_H)
        nlmPassVProgram = createProgram(vShader, NLMShaders.NLM_PASS_V)
        GLES30.glDeleteShader(vShader)

        PLog.d(TAG, "NLM programs initialized: Chroma=$nlmChromaProgram H=$nlmPassHProgram V=$nlmPassVProgram")
    }

    private fun initHDFPrograms() {
        fun createProgram(vShader: Int, fSource: String): Int {
            val fShader = compileShader(GLES30.GL_FRAGMENT_SHADER, fSource)
            if (vShader == 0 || fShader == 0) return 0
            val program = GLES30.glCreateProgram()
            GLES30.glAttachShader(program, vShader)
            GLES30.glAttachShader(program, fShader)
            GLES30.glLinkProgram(program)
            GLES30.glDeleteShader(fShader)
            return program
        }

        val vShader = compileShader(GLES30.GL_VERTEX_SHADER, IMAGE_VERTEX_SHADER)
        hdfExtractBlurHProgram = createProgram(vShader, HDF_EXTRACT_BLUR_H_SHADER)
        hdfBlurVProgram = createProgram(vShader, HDF_BLUR_V_SHADER)
        GLES30.glDeleteShader(vShader)

        PLog.d(
            TAG,
            "HDF programs initialized: ExtractH=$hdfExtractBlurHProgram BlurV=$hdfBlurVProgram"
        )
    }

    private fun setupNLMFramebuffers(width: Int, height: Int) {
        if (nlmWidth == width && nlmHeight == height && nlmChromaTexId != 0) return
        nlmWidth = width
        nlmHeight = height

        // 清理旧资源
        if (nlmChromaTexId != 0) GLES30.glDeleteTextures(1, intArrayOf(nlmChromaTexId), 0)
        if (nlmChromaFboId != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(nlmChromaFboId), 0)
        for (i in 0..1) {
            if (nlmPassTexId[i] != 0) GLES30.glDeleteTextures(1, intArrayOf(nlmPassTexId[i]), 0)
            if (nlmPassFboId[i] != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(nlmPassFboId[i]), 0)
        }

        // 创建色度降噪 FBO
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
        nlmChromaTexId = ct[0]
        nlmChromaFboId = cf[0]

        var status = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER)
        if (status != GLES30.GL_FRAMEBUFFER_COMPLETE) {
            PLog.e(TAG, "NLM Chroma Framebuffer not complete: $status")
        }

        // 创建 NLM ping-pong FBO
        for (i in 0..1) {
            val t = IntArray(1)
            val f = IntArray(1)
            GLES30.glGenTextures(1, t, 0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, t[0])
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
            GLES30.glGenFramebuffers(1, f, 0)
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, f[0])
            GLES30.glFramebufferTexture2D(
                GLES30.GL_FRAMEBUFFER,
                GLES30.GL_COLOR_ATTACHMENT0,
                GLES30.GL_TEXTURE_2D,
                t[0],
                0
            )
            nlmPassTexId[i] = t[0]
            nlmPassFboId[i] = f[0]

            status = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER)
            if (status != GLES30.GL_FRAMEBUFFER_COMPLETE) {
                PLog.e(TAG, "NLM Pass $i Framebuffer not complete: $status")
            }
        }
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
    }

    private fun renderNLMDenoise(
        sourceTextureId: Int,
        width: Int,
        height: Int,
        noiseReduction: Float,
        chromaNoiseReduction: Float
    ) {
        setupNLMFramebuffers(width, height)

        if (nlmChromaProgram == 0 || nlmPassHProgram == 0 || nlmPassVProgram == 0) return

        val texelW = 1.0f / width
        val texelH = 1.0f / height
        // 将降噪强度映射到合理范围 (0.01 ~ 0.1)
        val h = 0.01f + noiseReduction * noiseReduction * 4f
        val ch = 0.01f + chromaNoiseReduction * chromaNoiseReduction * 2f

        val identityMatrix = FloatArray(16)
        android.opengl.Matrix.setIdentityM(identityMatrix, 0)

        // Pass 0: Chroma Denoise
        GLES30.glUseProgram(nlmChromaProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, nlmChromaFboId)
        GLES30.glViewport(0, 0, width, height)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, sourceTextureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(nlmChromaProgram, "uInputTexture"), 0)
        GLES30.glUniform2f(GLES30.glGetUniformLocation(nlmChromaProgram, "uTexelSize"), texelW, texelH)
        GLES30.glUniformMatrix4fv(
            GLES30.glGetUniformLocation(nlmChromaProgram, "uMVPMatrix"),
            1,
            false,
            identityMatrix,
            0
        )
        GLES30.glUniform1f(GLES30.glGetUniformLocation(nlmChromaProgram, "uH"), ch)
        drawQuad(nlmChromaProgram)

        // NLM Pass H
        GLES30.glUseProgram(nlmPassHProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, nlmPassFboId[0])
        GLES30.glViewport(0, 0, width, height)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, nlmChromaTexId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(nlmPassHProgram, "uInputTexture"), 0)
        GLES30.glUniform2f(GLES30.glGetUniformLocation(nlmPassHProgram, "uTexelSize"), texelW, texelH)
        GLES30.glUniformMatrix4fv(
            GLES30.glGetUniformLocation(nlmPassHProgram, "uMVPMatrix"),
            1,
            false,
            identityMatrix,
            0
        )
        GLES30.glUniform1f(GLES30.glGetUniformLocation(nlmPassHProgram, "uH"), h)
        drawQuad(nlmPassHProgram)

        // NLM Pass V
        GLES30.glUseProgram(nlmPassVProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, nlmPassFboId[1])
        GLES30.glViewport(0, 0, width, height)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, nlmChromaTexId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(nlmPassVProgram, "uInputTexture"), 0)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE1)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, nlmPassTexId[0])
        GLES30.glUniform1i(GLES30.glGetUniformLocation(nlmPassVProgram, "uBlurTexture"), 1)
        GLES30.glUniform2f(GLES30.glGetUniformLocation(nlmPassVProgram, "uTexelSize"), texelW, texelH)
        GLES30.glUniformMatrix4fv(
            GLES30.glGetUniformLocation(nlmPassVProgram, "uMVPMatrix"),
            1,
            false,
            identityMatrix,
            0
        )
        GLES30.glUniform1f(GLES30.glGetUniformLocation(nlmPassVProgram, "uH"), h)
        drawQuad(nlmPassVProgram)

        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        checkGlError("renderNLMDenoise")
    }

    /**
     * 设置 HDF 光晕效果 FBO
     * 使用 1/4 分辨率进行模糊，然后在全分辨率合成
     */
    private fun setupHDFFramebuffers(width: Int, height: Int) {
        val dsW = width / 4
        val dsH = height / 4
        if (hdfWidth == dsW && hdfHeight == dsH && hdfTexId[0] != 0) return
        hdfWidth = dsW
        hdfHeight = dsH

        // 清理旧资源
        for (i in 0..1) {
            if (hdfTexId[i] != 0) GLES30.glDeleteTextures(1, intArrayOf(hdfTexId[i]), 0)
            if (hdfFboId[i] != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(hdfFboId[i]), 0)
        }

        // 创建 1/4 分辨率 ping-pong FBO
        for (i in 0..1) {
            val t = IntArray(1)
            val f = IntArray(1)
            GLES30.glGenTextures(1, t, 0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, t[0])
            GLES30.glTexImage2D(
                GLES30.GL_TEXTURE_2D, 0, GLES30.GL_RGBA16F,
                dsW, dsH, 0,
                GLES30.GL_RGBA, GLES30.GL_HALF_FLOAT, null
            )
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glGenFramebuffers(1, f, 0)
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, f[0])
            GLES30.glFramebufferTexture2D(
                GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0,
                GLES30.GL_TEXTURE_2D, t[0], 0
            )
            hdfTexId[i] = t[0]
            hdfFboId[i] = f[0]
        }

        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
    }

    /**
     * 渲染 HDF 光晕效果
     * 3 pass: 高光提取+水平模糊 → 垂直模糊 → 全分辨率合成
     */
    private fun renderHDFBlur(
        sourceTextureId: Int,
        width: Int,
        height: Int,
        halation: Float
    ) {
        setupHDFFramebuffers(width, height)
        if (hdfExtractBlurHProgram == 0 || hdfBlurVProgram == 0) return

        val dsW = width / 4
        val dsH = height / 4
        val texelW = 1.0f / dsW
        val texelH = 1.0f / dsH

        val identityMatrix = FloatArray(16)
        android.opengl.Matrix.setIdentityM(identityMatrix, 0)

        val threshold = 0.9f - halation * 0.3f

        // Pass 1: 提取高光 + 水平高斯模糊 (1/4 分辨率)
        GLES30.glUseProgram(hdfExtractBlurHProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, hdfFboId[0])
        GLES30.glViewport(0, 0, dsW, dsH)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, sourceTextureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(hdfExtractBlurHProgram, "uInputTexture"), 0)
        GLES30.glUniform2f(GLES30.glGetUniformLocation(hdfExtractBlurHProgram, "uTexelSize"), texelW, texelH)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(hdfExtractBlurHProgram, "uThreshold"), threshold)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(hdfExtractBlurHProgram, "uStrength"), halation)
        GLES30.glUniformMatrix4fv(
            GLES30.glGetUniformLocation(hdfExtractBlurHProgram, "uMVPMatrix"), 1, false, identityMatrix, 0
        )
        drawQuad(hdfExtractBlurHProgram)

        // Pass 2: 垂直高斯模糊 (1/4 分辨率)
        GLES30.glUseProgram(hdfBlurVProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, hdfFboId[1])
        GLES30.glViewport(0, 0, dsW, dsH)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, hdfTexId[0])
        GLES30.glUniform1i(GLES30.glGetUniformLocation(hdfBlurVProgram, "uInputTexture"), 0)
        GLES30.glUniform2f(GLES30.glGetUniformLocation(hdfBlurVProgram, "uTexelSize"), texelW, texelH)
        GLES30.glUniformMatrix4fv(
            GLES30.glGetUniformLocation(hdfBlurVProgram, "uMVPMatrix"), 1, false, identityMatrix, 0
        )
        drawQuad(hdfBlurVProgram)

        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        checkGlError("renderHDFBlur")
    }

    private fun checkGlError(op: String) {
        val error = GLES30.glGetError()
        if (error != GLES30.GL_NO_ERROR) {
            PLog.e(TAG, "$op: glError $error")
        }
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

        if (nlmChromaProgram != 0) {
            GLES30.glDeleteProgram(nlmChromaProgram)
        }
        if (nlmPassHProgram != 0) {
            GLES30.glDeleteProgram(nlmPassHProgram)
        }
        if (nlmPassVProgram != 0) {
            GLES30.glDeleteProgram(nlmPassVProgram)
        }
        if (nlmChromaTexId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(nlmChromaTexId), 0)
        }
        if (nlmChromaFboId != 0) {
            GLES30.glDeleteFramebuffers(1, intArrayOf(nlmChromaFboId), 0)
        }
        for (i in 0..1) {
            if (nlmPassTexId[i] != 0) GLES30.glDeleteTextures(1, intArrayOf(nlmPassTexId[i]), 0)
            if (nlmPassFboId[i] != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(nlmPassFboId[i]), 0)
        }

        // 释放 HDF 资源
        if (hdfExtractBlurHProgram != 0) GLES30.glDeleteProgram(hdfExtractBlurHProgram)
        if (hdfBlurVProgram != 0) GLES30.glDeleteProgram(hdfBlurVProgram)
        for (i in 0..1) {
            if (hdfTexId[i] != 0) GLES30.glDeleteTextures(1, intArrayOf(hdfTexId[i]), 0)
            if (hdfFboId[i] != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(hdfFboId[i]), 0)
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
            uniform int uLutColorSpace;
            uniform int uInputColorSpace;

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
            uniform float uNoise;         // 0.0 ~ 1.0 (噪点)
            uniform float uNoiseSeed;     // 噪点随机种子
            uniform float uLowRes;        // 0.0 ~ 1.0 (低像素强度)
            uniform float uAspectRatio;   // 图像长宽比
            
            // HDF 光晕效果
            uniform float uHalation;      // 0.0 ~ 1.0 (光晕强度)
            uniform sampler2D uHdfTexture; // 光晕合成纹理
            
            // 色散效果
            uniform float uChromaticAberration; // 0.0 ~ 1.0 (色散强度)
            
            // 后期处理参数
            uniform float uSharpening;
            uniform vec2 uTexelSize;
            
            // 辅助函数：亮度计算
            float getLuma(vec3 color) {
                vec3 weights = (uInputColorSpace == 1) ? vec3(0.2290, 0.6917, 0.0793) : vec3(0.2126, 0.7152, 0.0722);
                return dot(color, weights);
            }

            float log10(float x) { return log(x) * 0.4342944819; }
            vec3 log10(vec3 x) { return log(x) * 0.4342944819; }

            vec3 linearToSrgb(vec3 l) {
                vec3 absL = abs(l);
                vec3 result = mix(absL * 12.92, 1.055 * pow(absL, vec3(1.0 / 2.4)) - 0.055, step(0.0031308, absL));
                return sign(l) * result;
            }

            vec3 srgbToLinear(vec3 c) {
                vec3 absC = abs(c);
                vec3 result = mix(absC / 12.92, pow((absC + 0.055) / 1.055, vec3(2.4)), step(0.04045, absC));
                return sign(c) * result;
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
                // === 预处理：模拟真实低分辨率效果 ===
                vec2 uvCoord = vTexCoord;
                if (uLowRes > 0.005) {
                    float blocksX = mix(512.0, 32.0, uLowRes); 
                    vec2 gridSize = vec2(1.0 / blocksX, 1.0 / (blocksX / uAspectRatio));
                    vec2 gridUV = floor(vTexCoord / gridSize) * gridSize + gridSize * 0.5;
                    uvCoord = mix(vTexCoord, gridUV, 0.95);
                }

                // 采样图像 (应用色散效果)
                vec4 color;
                if (uChromaticAberration > 0.0) {
                    vec2 center = vec2(0.5);
                    vec2 dir = uvCoord - center;
                    float dist = length(dir);
                    float offset = pow(dist, 1.5) * uChromaticAberration * 0.08;
                    vec2 rUV = uvCoord + dir * offset;
                    vec2 bUV = uvCoord - dir * offset;
                    float r = sampleImage(rUV).r;
                    float g = sampleImage(uvCoord).g;
                    float b = sampleImage(bUV).b;
                    float a = sampleImage(uvCoord).a;
                    color = vec4(r, g, b, a);
                } else {
                    color = sampleImage(uvCoord);
                }

                // === 色彩配方处理（按专业后期流程顺序） ===
                if (uColorRecipeEnabled) {
                    // 1. 曝光调整（线性空间，最先执行避免 clipping）
                    color.rgb *= pow(2.0, uExposure);

                    // 2. 高光/阴影调整（分区调整，基于亮度 mask）
                    float luma = getLuma(color.rgb);
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
                    float gray = getLuma(color.rgb);
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
                        float luma = getLuma(color.rgb);
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
                        float dist = distance(uvCoord, center);
                        
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
                        float grainNoise = fract(sin(dot(uvCoord * 1000.0, vec2(12.9898, 78.233))) * 43758.5453);
                        
                        // 将噪声从 [0,1] 映射到 [-1,1]
                        grainNoise = (grainNoise - 0.5) * 2.0;
                        
                        // 根据亮度自适应调整颗粒强度
                        float luma = getLuma(color.rgb);
                        float grainMask = 1.0 - abs(luma - 0.5) * 2.0;
                        grainMask = grainMask * 0.5 + 0.5;
                        
                        // 应用颗粒（增强强度）
                        float grainStrength = uFilmGrain * 0.1 * grainMask;
                        color.rgb += grainNoise * grainStrength;
                    }

                    // 11. 随机噪点 (增强的亮度和彩色噪点，动态刷新)
                    if (uNoise > 0.001) {
                        vec2 seedOffset = vec2(fract(uNoiseSeed * 1.234), fract(uNoiseSeed * 3.456));
                        vec2 noiseCoord = uvCoord * 800.0 + seedOffset * 100.0;
                        
                        float lumNoise = fract(sin(dot(noiseCoord, vec2(12.9898, 78.233))) * 43758.5453);
                        lumNoise = (lumNoise - 0.5) * 2.0;
                        
                        float colorNoiseR = fract(sin(dot(noiseCoord + vec2(1.1, 2.2), vec2(39.346, 11.135))) * 43758.5453);
                        float colorNoiseG = fract(sin(dot(noiseCoord + vec2(3.3, 4.4), vec2(73.156, 52.235))) * 43758.5453);
                        float colorNoiseB = fract(sin(dot(noiseCoord + vec2(5.5, 6.6), vec2(27.423, 83.136))) * 43758.5453);
                        vec3 colorNoise = (vec3(colorNoiseR, colorNoiseG, colorNoiseB) - 0.5) * 2.0;

                        float luma = getLuma(color.rgb);
                        float noiseMask = mix(0.5, 1.0, 1.0 - abs(luma - 0.5) * 1.5);
                        
                        vec3 finalNoise = mix(vec3(lumNoise), mix(vec3(lumNoise), colorNoise, 0.7), 0.8);
                        
                        color.rgb += finalNoise * uNoise * max(0.0, noiseMask);
                    }

                    // Clamp 到合法范围
                    color.rgb = clamp(color.rgb, 0.0, 1.0);
                }

                // === HDF 光晕效果（在色彩配方之后，LUT 之前） ===
                if (uHalation > 0.0) {
                    vec3 bloom = texture(uHdfTexture, uvCoord).rgb;
                    
                    // 1. 色彩色散处理：增强饱和度同时避免过度饱和导致的伪影
                    float bLuma = dot(bloom, vec3(0.2126, 0.7152, 0.0722));
                    bloom = mix(vec3(bLuma), bloom, 1.6); 
                    
                    // 2. 模拟物理滤镜的扩散扩散感
                    // 使用更科学的系数平衡明度与扩散面积
                    vec3 bloomEffect = bloom * uHalation * 1.4;
                    
                    // 3. 混合原图：Screen 叠加
                    color.rgb = vec3(1.0) - (vec3(1.0) - color.rgb) * (vec3(1.0) - bloomEffect);
                    
                    // 4. 改良的氛围感：只在光晕周围抬升灰度，模拟镜头内部散射
                    float mist = bLuma * uHalation * 0.15;
                    color.rgb += mist;
                    
                    // 5. 稍微削减对比度以获得“电影感”
                    color.rgb = (color.rgb - 0.5) * (1.0 - uHalation * 0.08) + 0.5;
                }

                // === LUT 处理（在色彩配方之后） ===
                // 假定 LUT 始终为 sRGB 色彩空间进行计算，进行管线优化：
                // 省略了 applyLutColorSpace 以及避免了多次线性和非线性空间的来回切换。
                if (uLutEnabled && uLutIntensity > 0.0) {
                    bool isP3 = (uInputColorSpace == 1);
                    vec3 linearInput = srgbToLinear(color.rgb);
                    
                    if (isP3) {
                         // 直接将 P3 转为 sRGB 线性空间，避免直接套用非线性转换
                         linearInput = mat3(1.22486, -0.04205, -0.01974, -0.22471, 1.04192, -0.07865, 0.00000, 0.00013, 1.09837) * linearInput;
                    }

                    // 假定 LUT 为 sRGB 空间，直接用它的专属曲线适配
                    vec3 lutInColor = applyLutCurve(linearInput, uLutCurve);
                    
                    float scale = (uLutSize - 1.0) / uLutSize;
                    float offset = 1.0 / (2.0 * uLutSize);
                    vec3 lutCoord = lutInColor * scale + offset;
                    vec4 lutColor = texture(uLutTexture, lutCoord);

                    // 在非线性 sRGB 空间进行混合
                    vec3 srgbColor = linearToSrgb(linearInput);
                    color.rgb = mix(srgbColor, lutColor.rgb, uLutIntensity);

                    if (isP3) {
                        // 混合完成后的 sRGB 颜色转回 P3
                        vec3 linearSrgbOut = srgbToLinear(color.rgb);
                        color.rgb = linearToSrgb(mat3(0.875905, 0.035332, 0.016382, 0.122070, 0.964542, 0.063767, 0.002025, 0.000126, 0.919851) * linearSrgbOut);
                    }
                }
                
                // --- 4. 锐化 ---
                if (uSharpening > 0.0) {
                    // 使用基于亮度的 Unsharp Mask，避免色彩污染
                    vec3 inputColor = sampleImage(uvCoord).rgb;
                    float inputLuma = getLuma(inputColor);

                    float neighborsLuma = 0.0;
                    neighborsLuma += getLuma(sampleImage(uvCoord + vec2(-uTexelSize.x, 0.0)).rgb);
                    neighborsLuma += getLuma(sampleImage(uvCoord + vec2(uTexelSize.x, 0.0)).rgb);
                    neighborsLuma += getLuma(sampleImage(uvCoord + vec2(0.0, -uTexelSize.y)).rgb);
                    neighborsLuma += getLuma(sampleImage(uvCoord + vec2(0.0, uTexelSize.y)).rgb);
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

        // === HDF (Highlight Diffusion Filter) Shaders ===

        /**
         * Pass 1: 提取高光区域 + 水平高斯模糊
         * 输入全分辨率图像，在 1/4 分辨率下提取并模糊
         */
        private val HDF_EXTRACT_BLUR_H_SHADER = """
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
                
                // 1. 高度柔化的色彩分析
                float luma = dot(color, vec3(0.2126, 0.7152, 0.0722));
                float extractionVal = mix(luma, max(color.r, max(color.g, color.b)), 0.6);
                
                // 极其平滑的提取曲线，彻底消除“硬核”边缘
                float highlightMask = smoothstep(uThreshold - 0.1, uThreshold + 0.25, extractionVal);
                float midMask = smoothstep(uThreshold - 0.5, uThreshold, extractionVal) * 0.4;
                float mask = (highlightMask + midMask * uStrength);
                
                vec3 highlight = color * mask;
                
                // 改良后的 9-tap 线性采样：使用 2.0 步进而非 2.2，确保像素完美对齐
                float weights[5] = float[](0.204164, 0.304005, 0.093910, 0.010416, 0.000005);
                float offsets[5] = float[](0.0, 1.407333, 3.294215, 5.176470, 7.058823);
                
                vec3 sum = highlight * weights[0];
                for (int i = 1; i < 5; i++) {
                    float offset = offsets[i] * uTexelSize.x * 2.0; // 锁定为 2.0，消除伪影
                    sum += texture(uInputTexture, vTexCoord + vec2(offset, 0.0)).rgb * weights[i];
                    sum += texture(uInputTexture, vTexCoord - vec2(offset, 0.0)).rgb * weights[i];
                }
                
                fragColor = vec4(sum, 1.0);
            }
        """.trimIndent()

        /**
         * Pass 2: 垂直高斯模糊
         */
        private val HDF_BLUR_V_SHADER = """
            #version 300 es
            precision highp float;
            
            in vec2 vTexCoord;
            out vec4 fragColor;
            
            uniform sampler2D uInputTexture;
            uniform vec2 uTexelSize;
            
            void main() {
                // 使用严格对齐的垂直线性模糊
                float weights[5] = float[](0.204164, 0.304005, 0.093910, 0.010416, 0.000005);
                float offsets[5] = float[](0.0, 1.407333, 3.294215, 5.176470, 7.058823);
                
                vec3 sum = texture(uInputTexture, vTexCoord).rgb * weights[0];
                for (int i = 1; i < 5; i++) {
                    float offset = offsets[i] * uTexelSize.y * 2.0;
                    sum += texture(uInputTexture, vTexCoord + vec2(0.0, offset)).rgb * weights[i];
                    sum += texture(uInputTexture, vTexCoord - vec2(0.0, offset)).rgb * weights[i];
                }
                
                fragColor = vec4(sum, 1.0);
            }
        """.trimIndent()
    }
}
