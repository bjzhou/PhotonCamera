package com.hinnka.mycamera.lut

import android.graphics.Bitmap
import android.graphics.ColorSpace
import android.opengl.EGL14
import android.opengl.EGLConfig
import android.opengl.EGLContext
import android.opengl.EGLDisplay
import android.opengl.EGLSurface
import android.opengl.GLES30
import android.opengl.GLES31
import com.hinnka.mycamera.model.ColorRecipeParams
import com.hinnka.mycamera.model.ColorPaletteMapper
import com.hinnka.mycamera.lut.ChromaDenoiseShaders
import com.hinnka.mycamera.raw.DenoiseProfileShaders
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.asCoroutineDispatcher
import kotlinx.coroutines.currentCoroutineContext
import kotlinx.coroutines.ensureActive
import kotlinx.coroutines.withContext
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.FloatBuffer
import java.nio.ShortBuffer
import java.util.concurrent.Executors
import androidx.core.graphics.createBitmap
import kotlin.math.ln
import kotlin.math.max
import kotlin.math.pow
import kotlin.math.sqrt

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
    private var outputFramebufferWidth = 0
    private var outputFramebufferHeight = 0
    private var pboId = 0
    private var readbackBuffer: ByteBuffer? = null
    private var readbackBufferSize = 0

    private var vertexBuffer: FloatBuffer? = null
    private var texCoordBuffer: FloatBuffer? = null
    private var indexBuffer: ShortBuffer? = null

    private var bitmapDenoisePreconditionProgram = 0
    private var bitmapDenoiseDecomposeProgram = 0
    private var bitmapDenoiseSynthesizeProgram = 0
    private var bitmapDenoiseReduceFirstProgram = 0
    private var bitmapDenoiseReduceSecondProgram = 0
    private var bitmapDenoiseBacktransformProgram = 0
    private var bitmapDenoisePassthroughProgram = 0
    private var bitmapChromaDenoiseProgram = 0

    private val bitmapDenoiseTexId = IntArray(2)
    private val bitmapDenoiseFboId = IntArray(2)
    private val bitmapDenoiseDetailTexIds = IntArray(DenoiseProfileShaders.BANDS)
    private var bitmapDenoiseReduceMBufferId = 0
    private var bitmapDenoiseReduceRBufferId = 0
    private var bitmapDenoiseReduceBufSize = 0
    private var bitmapDenoiseReduceSize = 0
    private var bitmapDenoiseWidth = 0
    private var bitmapDenoiseHeight = 0

    // HDF (Highlight Diffusion) 光晕效果资源
    private var hdfExtractBlurHProgram = 0
    private var hdfBlurVProgram = 0
    private var hdfTexId = IntArray(2)      // 1/4 分辨率模糊纹理
    private var hdfFboId = IntArray(2)      // 1/4 分辨率模糊 FBO
    private var hdfWidth = 0
    private var hdfHeight = 0

    // Halation (胶片红晕) 效果资源
    private var halationExtractBlurHProgram = 0
    private var halationBlurVProgram = 0
    private var halationTexId = IntArray(2)
    private var halationFboId = IntArray(2)
    private var halationWidth = 0
    private var halationHeight = 0

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
    private var uIsHlgInputLoc = 0
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
    private var uToneToeLoc = 0
    private var uToneShoulderLoc = 0
    private var uTonePivotLoc = 0
    private var uFilmGrainLoc = 0
    private var uVignetteLoc = 0
    private var uBleachBypassLoc = 0
    private var uNoiseLoc = 0
    private var uNoiseSeedLoc = 0
    private var uLowResLoc = 0
    private var uAspectRatioLoc = 0
    private var uLchHueAdjustmentsLoc = 0
    private var uLchChromaAdjustmentsLoc = 0
    private var uLchLightnessAdjustmentsLoc = 0
    private var uPrimaryCalibrationMatrixLoc = 0

    // 后期处理参数 Uniform 位置（仅拍摄和后期编辑时生效）
    private var uSharpeningLoc = 0
    private var uTexelSizeLoc = 0  // 用于卷积计算

    // 曲线纹理
    private var curveTextureId = 0

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
            initBitmapDenoiseProfilePrograms()
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
        isHlgInput: Boolean = false,
        lutConfig: LutConfig?,
        colorRecipeParams: ColorRecipeParams?,
        sharpeningValue: Float = 0f,
        noiseReductionValue: Float = 0f,
        chromaNoiseReductionValue: Float = 0f,
        lutMaskType: Int = 0,
    ): Bitmap = withContext(glDispatcher) {
        currentCoroutineContext().ensureActive()
        if (!isInitialized) {
            if (!initialize()) {
                // 创建一个空白 Bitmap 返回
                return@withContext createBitmap(width, height)
            }
        }

        // 提取色彩配方参数
        val effectiveRecipeParams = colorRecipeParams?.let(ColorPaletteMapper::mergeIntoEffectiveParams)
        val halation = effectiveRecipeParams?.halation ?: 0f
        val redHalation = effectiveRecipeParams?.redHalation ?: 0f

        // 后期处理参数
        val sharpening: Float = sharpeningValue
        val noiseReduction: Float = noiseReductionValue
        val chromaNoiseReduction: Float = chromaNoiseReductionValue

        // 激活上下文
        EGL14.eglMakeCurrent(eglDisplay, eglSurface, eglSurface, eglContext)

        // 创建/更新帧缓冲
        setupFramebuffer(width, height)
        currentCoroutineContext().ensureActive()

        // 上传 RGBA 16-bit 数据作为图片纹理
        uploadImageTextureFromArgb(argbData, width, height)
        currentCoroutineContext().ensureActive()

        if (chromaNoiseReduction > 0) {
            renderBitmapChromaDenoise(imageTextureId, width, height, chromaNoiseReduction)
            currentCoroutineContext().ensureActive()
        }

        val chromaDenoisedTexId = if (chromaNoiseReduction > 0) bitmapDenoiseTexId[0] else imageTextureId
        if (noiseReduction > 0) {
            renderBitmapDenoiseProfile(chromaDenoisedTexId, width, height, noiseReduction)
            currentCoroutineContext().ensureActive()
        }

        // 上传 LUT 纹理
        if (lutConfig != null) {
            uploadLutTexture(lutConfig)
        }

        val inputTexId = if (noiseReduction > 0) {
            bitmapDenoiseTexId[1]
        } else {
            chromaDenoisedTexId
        }

        // HDF 光晕效果预处理（在主 shader 之前，需要模糊的光晕纹理）
        if (halation > 0f) {
            renderHDFBlur(inputTexId, width, height, halation)
            currentCoroutineContext().ensureActive()
        }
        if (redHalation > 0f) {
            renderHalationBlur(inputTexId, width, height, redHalation)
            currentCoroutineContext().ensureActive()
        }

        // 执行渲染
        val outputBitmap = performRender(
            width, height,
            inputTexId,
            colorSpace,
            isHlgInput,
            lutConfig,
            effectiveRecipeParams,
            sharpening,
            lutMaskType,
        )

        outputBitmap
    }

    suspend fun applyLutStack(
        argbData: ShortBuffer,
        width: Int,
        height: Int,
        colorSpace: ColorSpace,
        isHlgInput: Boolean = false,
        baselineLayer: LutRenderLayer?,
        creativeLayer: LutRenderLayer?,
        sharpeningValue: Float = 0f,
        noiseReductionValue: Float = 0f,
        chromaNoiseReductionValue: Float = 0f,
    ): Bitmap {
        val hasBaseline = baselineLayer?.lutConfig != null || baselineLayer?.colorRecipeParams != null
        val hasCreative = creativeLayer?.lutConfig != null || creativeLayer?.colorRecipeParams != null
        return when {
            hasBaseline && hasCreative -> {
                val baseBitmap = applyLut(
                    argbData = argbData,
                    width = width,
                    height = height,
                    colorSpace = colorSpace,
                    isHlgInput = isHlgInput,
                    lutConfig = baselineLayer?.lutConfig,
                    colorRecipeParams = baselineLayer?.colorRecipeParams,
                )
                applyLut(
                    bitmap = baseBitmap,
                    lutConfig = creativeLayer?.lutConfig,
                    colorRecipeParams = creativeLayer?.colorRecipeParams,
                    sharpeningValue = sharpeningValue,
                    noiseReductionValue = noiseReductionValue,
                    chromaNoiseReductionValue = chromaNoiseReductionValue
                )
            }
            hasBaseline -> applyLut(
                argbData = argbData,
                width = width,
                height = height,
                colorSpace = colorSpace,
                isHlgInput = isHlgInput,
                lutConfig = baselineLayer?.lutConfig,
                colorRecipeParams = baselineLayer?.colorRecipeParams,
                sharpeningValue = sharpeningValue,
                noiseReductionValue = noiseReductionValue,
                chromaNoiseReductionValue = chromaNoiseReductionValue
            )
            else -> applyLut(
                argbData = argbData,
                width = width,
                height = height,
                colorSpace = colorSpace,
                isHlgInput = isHlgInput,
                lutConfig = creativeLayer?.lutConfig,
                colorRecipeParams = creativeLayer?.colorRecipeParams,
                sharpeningValue = sharpeningValue,
                noiseReductionValue = noiseReductionValue,
                chromaNoiseReductionValue = chromaNoiseReductionValue
            )
        }
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
        isHlgInput: Boolean = false,
        lutConfig: LutConfig?,
        colorRecipeParams: ColorRecipeParams?,
        sharpeningValue: Float = 0f,
        noiseReductionValue: Float = 0f,
        chromaNoiseReductionValue: Float = 0f,
        lutMaskType: Int = 0,
    ): Bitmap = withContext(glDispatcher) {
        currentCoroutineContext().ensureActive()
        if (!isInitialized) {
            if (!initialize()) {
                return@withContext bitmap
            }
        }

        // 提取色彩配方参数
        val effectiveRecipeParams = colorRecipeParams?.let(ColorPaletteMapper::mergeIntoEffectiveParams)
        val halation = effectiveRecipeParams?.halation ?: 0f
        val redHalation = effectiveRecipeParams?.redHalation ?: 0f

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
        currentCoroutineContext().ensureActive()

        // 上传图片纹理
        uploadImageTexture(bitmap)
        currentCoroutineContext().ensureActive()

        if (chromaNoiseReduction > 0) {
            renderBitmapChromaDenoise(imageTextureId, width, height, chromaNoiseReduction)
            currentCoroutineContext().ensureActive()
        }

        val chromaDenoisedTexId = if (chromaNoiseReduction > 0) bitmapDenoiseTexId[0] else imageTextureId
        if (noiseReduction > 0) {
            renderBitmapDenoiseProfile(chromaDenoisedTexId, width, height, noiseReduction)
            currentCoroutineContext().ensureActive()
        }

        // 上传 LUT 纹理
        if (lutConfig != null) {
            uploadLutTexture(lutConfig)
        }

        val inputTexId = if (noiseReduction > 0) {
            bitmapDenoiseTexId[1]
        } else {
            chromaDenoisedTexId
        }

        // HDF 光晕效果预处理
        if (halation > 0f) {
            renderHDFBlur(inputTexId, width, height, halation)
            currentCoroutineContext().ensureActive()
        }
        if (redHalation > 0f) {
            renderHalationBlur(inputTexId, width, height, redHalation)
            currentCoroutineContext().ensureActive()
        }

        // 执行渲染
        val outputBitmap = performRender(
            width, height,
            inputTexId,
            bitmap.colorSpace ?: ColorSpace.get(ColorSpace.Named.SRGB),
            isHlgInput,
            lutConfig,
            effectiveRecipeParams,
            sharpening,
            lutMaskType,
        )

        outputBitmap
    }

    suspend fun applyLutStack(
        bitmap: Bitmap,
        isHlgInput: Boolean = false,
        baselineLayer: LutRenderLayer?,
        creativeLayer: LutRenderLayer?,
        sharpeningValue: Float = 0f,
        noiseReductionValue: Float = 0f,
        chromaNoiseReductionValue: Float = 0f,
    ): Bitmap {
        val hasBaseline = baselineLayer?.lutConfig != null || baselineLayer?.colorRecipeParams != null
        val hasCreative = creativeLayer?.lutConfig != null || creativeLayer?.colorRecipeParams != null
        return when {
            hasBaseline && hasCreative -> {
                val baseBitmap = applyLut(
                    bitmap = bitmap,
                    isHlgInput = isHlgInput,
                    lutConfig = baselineLayer.lutConfig,
                    colorRecipeParams = baselineLayer.colorRecipeParams,
                )
                applyLut(
                    bitmap = baseBitmap,
                    lutConfig = creativeLayer.lutConfig,
                    colorRecipeParams = creativeLayer.colorRecipeParams,
                    sharpeningValue = sharpeningValue,
                    noiseReductionValue = noiseReductionValue,
                    chromaNoiseReductionValue = chromaNoiseReductionValue
                )
            }
            hasBaseline -> applyLut(
                bitmap = bitmap,
                isHlgInput = isHlgInput,
                lutConfig = baselineLayer.lutConfig,
                colorRecipeParams = baselineLayer.colorRecipeParams,
                sharpeningValue = sharpeningValue,
                noiseReductionValue = noiseReductionValue,
                chromaNoiseReductionValue = chromaNoiseReductionValue
            )
            else -> applyLut(
                bitmap = bitmap,
                isHlgInput = isHlgInput,
                lutConfig = creativeLayer?.lutConfig,
                colorRecipeParams = creativeLayer?.colorRecipeParams,
                sharpeningValue = sharpeningValue,
                noiseReductionValue = noiseReductionValue,
                chromaNoiseReductionValue = chromaNoiseReductionValue
            )
        }
    }

    suspend fun applyChromaDenoise(bitmap: Bitmap, strength: Float = 0.1f): Bitmap = withContext(glDispatcher) {
        currentCoroutineContext().ensureActive()
        if (!isInitialized) {
            if (!initialize()) {
                return@withContext bitmap
            }
        }

        EGL14.eglMakeCurrent(eglDisplay, eglSurface, eglSurface, eglContext)
        val width = bitmap.width
        val height = bitmap.height

        setupFramebuffer(width, height)
        uploadImageTexture(bitmap)

        renderBitmapChromaDenoise(imageTextureId, width, height, strength)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, bitmapDenoiseFboId[0])

        val pixelSize = width * height * 4
        val pixelBuffer = obtainReadbackBuffer(pixelSize)
        GLES30.glReadPixels(
            0, 0, width, height,
            GLES30.GL_RGBA, GLES30.GL_UNSIGNED_BYTE, pixelBuffer
        )
        pixelBuffer.position(0)

        val tempBitmap = createBitmap(width, height, colorSpace = bitmap.colorSpace ?: ColorSpace.get(ColorSpace.Named.SRGB))
        tempBitmap.copyPixelsFromBuffer(pixelBuffer)

        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)

        tempBitmap
    }

    private fun buildLchAdjustmentArrays(params: ColorRecipeParams?): Triple<FloatArray, FloatArray, FloatArray> {
        if (params == null) {
            return Triple(
                FloatArray(LCH_COLOR_BAND_COUNT),
                FloatArray(LCH_COLOR_BAND_COUNT),
                FloatArray(LCH_COLOR_BAND_COUNT)
            )
        }
        return Triple(
            floatArrayOf(
                params.skinHue,
                params.redHue,
                params.orangeHue,
                params.yellowHue,
                params.greenHue,
                params.cyanHue,
                params.blueHue,
                params.purpleHue,
                params.magentaHue,
            ),
            floatArrayOf(
                params.skinChroma,
                params.redChroma,
                params.orangeChroma,
                params.yellowChroma,
                params.greenChroma,
                params.cyanChroma,
                params.blueChroma,
                params.purpleChroma,
                params.magentaChroma,
            ),
            floatArrayOf(
                params.skinLightness,
                params.redLightness,
                params.orangeLightness,
                params.yellowLightness,
                params.greenLightness,
                params.cyanLightness,
                params.blueLightness,
                params.purpleLightness,
                params.magentaLightness,
            )
        )
    }

    /**
     * 执行渲染操作（共享的渲染逻辑）
     */
    private fun performRender(
        width: Int,
        height: Int,
        inputTextureId: Int,
        inputColorSpace: ColorSpace,
        isHlgInput: Boolean,
        lutConfig: LutConfig?,
        effectiveRecipeParams: ColorRecipeParams?,
        sharpening: Float,
        lutMaskType: Int,
    ): Bitmap {
        val colorRecipeEnabled = effectiveRecipeParams != null && !effectiveRecipeParams.isDefault()
        val exposure = effectiveRecipeParams?.exposure ?: 0f
        val contrast = effectiveRecipeParams?.contrast ?: 1f
        val saturation = effectiveRecipeParams?.saturation ?: 1f
        val temperature = effectiveRecipeParams?.temperature ?: 0f
        val tint = effectiveRecipeParams?.tint ?: 0f
        val fade = effectiveRecipeParams?.fade ?: 0f
        val vibrance = effectiveRecipeParams?.color ?: 0f
        val highlights = effectiveRecipeParams?.highlights ?: 0f
        val shadows = effectiveRecipeParams?.shadows ?: 0f
        val toneToe = effectiveRecipeParams?.toneToe ?: 0f
        val toneShoulder = effectiveRecipeParams?.toneShoulder ?: 0f
        val tonePivot = effectiveRecipeParams?.tonePivot ?: 0f
        val filmGrain = effectiveRecipeParams?.filmGrain ?: 0f
        val vignette = effectiveRecipeParams?.vignette ?: 0f
        val bleachBypass = effectiveRecipeParams?.bleachBypass ?: 0f
        val halation = effectiveRecipeParams?.halation ?: 0f
        val redHalation = effectiveRecipeParams?.redHalation ?: 0f
        val chromaticAberration = effectiveRecipeParams?.chromaticAberration ?: 0f
        val noise = effectiveRecipeParams?.noise ?: 0f
        val lowRes = effectiveRecipeParams?.lowRes ?: 0f
        val intensity = effectiveRecipeParams?.lutIntensity ?: 1f
        val (lchHueAdjustments, lchChromaAdjustments, lchLightnessAdjustments) = buildLchAdjustmentArrays(effectiveRecipeParams)
        val primaryCalibrationMatrix = CameraRawCalibrationMatrix.build(effectiveRecipeParams)
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
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uLutMaskType"), lutMaskType)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uLutCurve"), lutConfig?.curve?.shaderId ?: 0)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uLutColorSpace"), lutConfig?.colorSpace?.ordinal ?: 0)

        val inputColorSpaceId = if (inputColorSpace == ColorSpace.get(ColorSpace.Named.DISPLAY_P3)) 1 else 0
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uInputColorSpace"), inputColorSpaceId)
        GLES30.glUniform1i(uIsHlgInputLoc, if (isHlgInput) 1 else 0)

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
            GLES30.glUniform1f(GLES30.glGetUniformLocation(program, "uToneToe"), toneToe)
            GLES30.glUniform1f(GLES30.glGetUniformLocation(program, "uToneShoulder"), toneShoulder)
            GLES30.glUniform1f(GLES30.glGetUniformLocation(program, "uTonePivot"), tonePivot)
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
            GLES30.glUniform1fv(uLchHueAdjustmentsLoc, LCH_COLOR_BAND_COUNT, lchHueAdjustments, 0)
            GLES30.glUniform1fv(uLchChromaAdjustmentsLoc, LCH_COLOR_BAND_COUNT, lchChromaAdjustments, 0)
            GLES30.glUniform1fv(uLchLightnessAdjustmentsLoc, LCH_COLOR_BAND_COUNT, lchLightnessAdjustments, 0)
            GLES30.glUniformMatrix3fv(uPrimaryCalibrationMatrixLoc, 1, false, primaryCalibrationMatrix, 0)
        }

        // 设置曲线纹理（Unit 3）
        val masterPts = effectiveRecipeParams?.masterCurvePoints
        val redPts = effectiveRecipeParams?.redCurvePoints
        val greenPts = effectiveRecipeParams?.greenCurvePoints
        val bluePts = effectiveRecipeParams?.blueCurvePoints
        val curveActive = !CurveUtils.isIdentity(masterPts, redPts, greenPts, bluePts)
        if (curveActive) {
            if (curveTextureId == 0) {
                val ids = IntArray(1); GLES30.glGenTextures(1, ids, 0); curveTextureId = ids[0]
            }
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, curveTextureId)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
            val curveBuffer = CurveUtils.buildCurveTextureBuffer(masterPts, redPts, greenPts, bluePts)
            GLES30.glTexImage2D(GLES30.GL_TEXTURE_2D, 0, GLES30.GL_RGBA8, 256, 1, 0,
                GLES30.GL_RGBA, GLES30.GL_UNSIGNED_BYTE, curveBuffer)
        }
        GLES30.glActiveTexture(GLES30.GL_TEXTURE3)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, if (curveActive) curveTextureId else 0)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uCurveTexture"), 3)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uCurveEnabled"), if (curveActive) 1 else 0)

        // 设置 HDF 参数
        GLES30.glUniform1f(GLES30.glGetUniformLocation(program, "uHalation"), halation)
        if (halation > 0f) {
            GLES30.glActiveTexture(GLES30.GL_TEXTURE2)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, hdfTexId[1])
            GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uHdfTexture"), 2)
        }

        // 设置 Halation 参数
        GLES30.glUniform1f(GLES30.glGetUniformLocation(program, "uRedHalation"), redHalation)
        if (redHalation > 0f) {
            GLES30.glActiveTexture(GLES30.GL_TEXTURE4)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, halationTexId[1])
            GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uRedHalationTexture"), 4)
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

        val pixelSize = width * height * 4
        val pixelBuffer = obtainReadbackBuffer(pixelSize)
        GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, 0)
        GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 4)
        GLES30.glReadPixels(
            0,
            0,
            width,
            height,
            GLES30.GL_RGBA,
            GLES30.GL_UNSIGNED_BYTE,
            pixelBuffer
        )
        pixelBuffer.position(0)

        // 创建临时 Bitmap
        val tempBitmap = createBitmap(width, height, colorSpace = inputColorSpace)
        tempBitmap.copyPixelsFromBuffer(pixelBuffer)

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
        if (framebufferId != 0 &&
            outputTextureId != 0 &&
            outputFramebufferWidth == width &&
            outputFramebufferHeight == height
        ) {
            return
        }

        releaseOutputFramebuffer()

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
        outputFramebufferWidth = width
        outputFramebufferHeight = height
    }

    private fun releaseOutputFramebuffer() {
        if (framebufferId != 0) {
            GLES30.glDeleteFramebuffers(1, intArrayOf(framebufferId), 0)
            framebufferId = 0
        }
        if (outputTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(outputTextureId), 0)
            outputTextureId = 0
        }
        outputFramebufferWidth = 0
        outputFramebufferHeight = 0
    }

    private fun obtainReadbackBuffer(pixelSize: Int): ByteBuffer {
        val current = readbackBuffer
        if (current != null && readbackBufferSize >= pixelSize) {
            current.clear()
            current.limit(pixelSize)
            return current
        }
        releaseReadbackBuffer()
        return (com.hinnka.mycamera.utils.DirectBufferAllocator.allocateNative(pixelSize.toLong())
            ?.order(ByteOrder.nativeOrder())
            ?: throw OutOfMemoryError("Failed to allocate native direct buffer")).also {
            readbackBuffer = it
            readbackBufferSize = pixelSize
        }
    }

    private fun releaseReadbackBuffer() {
        readbackBuffer?.let { com.hinnka.mycamera.utils.DirectBufferAllocator.freeNative(it) }
        readbackBuffer = null
        readbackBufferSize = 0
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
        // original.jxl 导出路径希望保持与源像素 1:1 对应，避免在首个 pass 之前先发生隐式重采样。
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_NEAREST)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_NEAREST)
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
        uIsHlgInputLoc = GLES30.glGetUniformLocation(shaderProgram, "uIsHlgInput")
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
        uToneToeLoc = GLES30.glGetUniformLocation(shaderProgram, "uToneToe")
        uToneShoulderLoc = GLES30.glGetUniformLocation(shaderProgram, "uToneShoulder")
        uTonePivotLoc = GLES30.glGetUniformLocation(shaderProgram, "uTonePivot")
        uFilmGrainLoc = GLES30.glGetUniformLocation(shaderProgram, "uFilmGrain")
        uVignetteLoc = GLES30.glGetUniformLocation(shaderProgram, "uVignette")
        uBleachBypassLoc = GLES30.glGetUniformLocation(shaderProgram, "uBleachBypass")
        uNoiseLoc = GLES30.glGetUniformLocation(shaderProgram, "uNoise")
        uNoiseSeedLoc = GLES30.glGetUniformLocation(shaderProgram, "uNoiseSeed")
        uLowResLoc = GLES30.glGetUniformLocation(shaderProgram, "uLowRes")
        uAspectRatioLoc = GLES30.glGetUniformLocation(shaderProgram, "uAspectRatio")
        uLchHueAdjustmentsLoc = GLES30.glGetUniformLocation(shaderProgram, "uLchHueAdjustments")
        uLchChromaAdjustmentsLoc = GLES30.glGetUniformLocation(shaderProgram, "uLchChromaAdjustments")
        uLchLightnessAdjustmentsLoc = GLES30.glGetUniformLocation(shaderProgram, "uLchLightnessAdjustments")
        uPrimaryCalibrationMatrixLoc = GLES30.glGetUniformLocation(shaderProgram, "uPrimaryCalibrationMatrix")

        uSharpeningLoc = GLES30.glGetUniformLocation(shaderProgram, "uSharpening")
        uTexelSizeLoc = GLES30.glGetUniformLocation(shaderProgram, "uTexelSize")
    }

    private fun initBitmapDenoiseProfilePrograms() {
        bitmapDenoisePreconditionProgram = compileComputeProgram(DenoiseProfileShaders.PRECONDITION_Y0U0V0, "BitmapDenoise_Precondition")
        bitmapDenoiseDecomposeProgram = compileComputeProgram(DenoiseProfileShaders.DECOMPOSE, "BitmapDenoise_Decompose")
        bitmapDenoiseSynthesizeProgram = compileComputeProgram(DenoiseProfileShaders.SYNTHESIZE, "BitmapDenoise_Synthesize")
        bitmapDenoiseReduceFirstProgram = compileComputeProgram(DenoiseProfileShaders.REDUCE_FIRST, "BitmapDenoise_ReduceFirst")
        bitmapDenoiseReduceSecondProgram = compileComputeProgram(DenoiseProfileShaders.REDUCE_SECOND, "BitmapDenoise_ReduceSecond")
        bitmapDenoiseBacktransformProgram = compileComputeProgram(DenoiseProfileShaders.BACKTRANSFORM_Y0U0V0, "BitmapDenoise_Backtransform")
        bitmapDenoisePassthroughProgram = createFragmentProgram(IMAGE_VERTEX_SHADER, TEXTURE_PASSTHROUGH_SHADER, "BitmapDenoise_Passthrough")
        bitmapChromaDenoiseProgram = createFragmentProgram(IMAGE_VERTEX_SHADER, ChromaDenoiseShaders.PASS_CHROMA_DENOISE, "BitmapChromaDenoise_BM3DPass0")
        PLog.d(
            TAG,
            "Bitmap denoiseprofile programs initialized: pre=$bitmapDenoisePreconditionProgram " +
                "decompose=$bitmapDenoiseDecomposeProgram synth=$bitmapDenoiseSynthesizeProgram " +
                "reduce1=$bitmapDenoiseReduceFirstProgram reduce2=$bitmapDenoiseReduceSecondProgram " +
                "back=$bitmapDenoiseBacktransformProgram pass=$bitmapDenoisePassthroughProgram " +
                "chroma=$bitmapChromaDenoiseProgram"
        )
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
        halationExtractBlurHProgram = createProgram(vShader, HALATION_EXTRACT_BLUR_H_SHADER)
        halationBlurVProgram = createProgram(vShader, HDF_BLUR_V_SHADER)
        GLES30.glDeleteShader(vShader)

        PLog.d(
            TAG,
            "HDF/Halation programs initialized"
        )
    }

    private fun setupBitmapDenoiseFramebuffers(width: Int, height: Int) {
        if (bitmapDenoiseWidth == width && bitmapDenoiseHeight == height && bitmapDenoiseTexId[0] != 0) return
        bitmapDenoiseWidth = width
        bitmapDenoiseHeight = height

        for (i in 0..1) {
            if (bitmapDenoiseTexId[i] != 0) GLES30.glDeleteTextures(1, intArrayOf(bitmapDenoiseTexId[i]), 0)
            if (bitmapDenoiseFboId[i] != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(bitmapDenoiseFboId[i]), 0)
        }

        for (i in 0..1) {
            val t = IntArray(1)
            val f = IntArray(1)
            GLES30.glGenTextures(1, t, 0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, t[0])
            GLES30.glTexStorage2D(GLES30.GL_TEXTURE_2D, 1, GLES30.GL_RGBA16F, width, height)
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
            bitmapDenoiseTexId[i] = t[0]
            bitmapDenoiseFboId[i] = f[0]

            val status = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER)
            if (status != GLES30.GL_FRAMEBUFFER_COMPLETE) {
                PLog.e(TAG, "Bitmap denoiseprofile FBO $i incomplete: $status")
            }
        }
        setupBitmapDenoiseResources(width, height)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
    }

    private fun renderBitmapDenoiseProfile(
        sourceTextureId: Int,
        width: Int,
        height: Int,
        noiseReduction: Float
    ) {
        setupBitmapDenoiseFramebuffers(width, height)

        val force = noiseReduction.coerceIn(0f, 1f)
        val strength = force
        if (strength <= 0f || width * height < 2) {
            renderTexturePassthrough(sourceTextureId, bitmapDenoiseFboId[1], width, height)
            return
        }
        if (!isBitmapDenoiseProfileReady()) {
            renderTexturePassthrough(sourceTextureId, bitmapDenoiseFboId[1], width, height)
            return
        }

        val params = buildBitmapDenoiseParams(width, height, strength, force)
        dispatchBitmapDenoisePrecondition(sourceTextureId, bitmapDenoiseTexId[0], width, height, params)
        var buf1 = bitmapDenoiseTexId[0]
        var buf2 = bitmapDenoiseTexId[1]

        for (scale in 0 until params.maxScale) {
            dispatchBitmapDenoiseDecompose(buf1, buf2, bitmapDenoiseDetailTexIds[scale], width, height, scale)
            val tmp = buf2
            buf2 = buf1
            buf1 = tmp
        }

        for (scale in params.maxScale - 1 downTo 0) {
            val threshold = computeBitmapDenoiseThreshold(bitmapDenoiseDetailTexIds[scale], width, height, scale, params)
            dispatchBitmapDenoiseSynthesize(buf1, bitmapDenoiseDetailTexIds[scale], buf2, width, height, threshold)
            val tmp = buf2
            buf2 = buf1
            buf1 = tmp
        }

        val finalInput = if (buf1 == bitmapDenoiseTexId[1]) {
            renderTexturePassthrough(buf1, bitmapDenoiseFboId[0], width, height)
            bitmapDenoiseTexId[0]
        } else {
            buf1
        }
        dispatchBitmapDenoiseBacktransform(finalInput, bitmapDenoiseTexId[1], width, height, params)
        checkGlError("renderBitmapDenoiseProfile")
    }

    private fun renderBitmapChromaDenoise(
        sourceTextureId: Int,
        width: Int,
        height: Int,
        chromaNoiseReduction: Float
    ) {
        setupBitmapDenoiseFramebuffers(width, height)

        val strength = chromaNoiseReduction.coerceIn(0f, 1f)
        if (strength <= 0f || bitmapChromaDenoiseProgram == 0) {
            renderTexturePassthrough(sourceTextureId, bitmapDenoiseFboId[0], width, height)
            return
        }

        val identityMatrix = FloatArray(16)
        android.opengl.Matrix.setIdentityM(identityMatrix, 0)
        val h = strength * strength * ChromaDenoiseShaders.SIGMA_STRENGTH_AT_SLIDER_ONE

        GLES30.glUseProgram(bitmapChromaDenoiseProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, bitmapDenoiseFboId[0])
        GLES30.glViewport(0, 0, width, height)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, sourceTextureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(bitmapChromaDenoiseProgram, "uInputTexture"), 0)
        GLES30.glUniform2f(
            GLES30.glGetUniformLocation(bitmapChromaDenoiseProgram, "uTexelSize"),
            1.0f / width,
            1.0f / height
        )
        GLES30.glUniformMatrix4fv(
            GLES30.glGetUniformLocation(bitmapChromaDenoiseProgram, "uMVPMatrix"),
            1,
            false,
            identityMatrix,
            0
        )
        GLES30.glUniform1f(GLES30.glGetUniformLocation(bitmapChromaDenoiseProgram, "uH"), h)
        GLES30.glUniform2f(
            GLES30.glGetUniformLocation(bitmapChromaDenoiseProgram, "uNoiseModel"),
            BITMAP_DENOISE_A * 2f,
            BITMAP_DENOISE_B * 2f
        )
        drawQuad(bitmapChromaDenoiseProgram)
        checkGlError("renderBitmapChromaDenoise")
    }

    private fun renderTexturePassthrough(sourceTextureId: Int, targetFboId: Int, width: Int, height: Int) {
        GLES30.glUseProgram(bitmapDenoisePassthroughProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, targetFboId)
        GLES30.glViewport(0, 0, width, height)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, sourceTextureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(bitmapDenoisePassthroughProgram, "uInputTexture"), 0)
        val identityMatrix = FloatArray(16)
        android.opengl.Matrix.setIdentityM(identityMatrix, 0)
        GLES30.glUniformMatrix4fv(
            GLES30.glGetUniformLocation(bitmapDenoisePassthroughProgram, "uMVPMatrix"),
            1,
            false,
            identityMatrix,
            0
        )
        drawQuad(bitmapDenoisePassthroughProgram)
    }

    private data class BitmapDenoiseParams(
        val strength: Float,
        val maxScale: Int,
        val lumaForce: Float,
        val chromaForce: Float,
        val p: FloatArray,
        val wb: FloatArray,
        val aa: FloatArray,
        val bb: FloatArray,
        val toY0U0V0: FloatArray,
        val toRgb: FloatArray,
        val bias: Float,
        val scale: Float
    )

    private fun isBitmapDenoiseProfileReady(): Boolean {
        return bitmapDenoisePreconditionProgram != 0 &&
            bitmapDenoiseDecomposeProgram != 0 &&
            bitmapDenoiseSynthesizeProgram != 0 &&
            bitmapDenoiseReduceFirstProgram != 0 &&
            bitmapDenoiseReduceSecondProgram != 0 &&
            bitmapDenoiseBacktransformProgram != 0 &&
            bitmapDenoisePassthroughProgram != 0
    }

    private fun setupBitmapDenoiseResources(width: Int, height: Int) {
        for (i in bitmapDenoiseDetailTexIds.indices) {
            if (bitmapDenoiseDetailTexIds[i] != 0) GLES30.glDeleteTextures(1, intArrayOf(bitmapDenoiseDetailTexIds[i]), 0)
            val t = IntArray(1)
            GLES30.glGenTextures(1, t, 0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, t[0])
            GLES30.glTexStorage2D(GLES30.GL_TEXTURE_2D, 1, GLES30.GL_RGBA16F, width, height)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_NEAREST)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_NEAREST)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
            bitmapDenoiseDetailTexIds[i] = t[0]
        }

        val groupsX = roundUp(width, DenoiseProfileShaders.REDUCE_FIRST_LOCAL_X) / DenoiseProfileShaders.REDUCE_FIRST_LOCAL_X
        val groupsY = roundUp(height, DenoiseProfileShaders.REDUCE_FIRST_LOCAL_Y) / DenoiseProfileShaders.REDUCE_FIRST_LOCAL_Y
        bitmapDenoiseReduceBufSize = groupsX * groupsY
        bitmapDenoiseReduceSize = kotlin.math.min(
            DenoiseProfileShaders.REDUCE_SIZE,
            roundUp(bitmapDenoiseReduceBufSize, DenoiseProfileShaders.REDUCE_SECOND_LOCAL_X) / DenoiseProfileShaders.REDUCE_SECOND_LOCAL_X
        ).coerceAtLeast(1)

        if (bitmapDenoiseReduceMBufferId != 0) GLES31.glDeleteBuffers(1, intArrayOf(bitmapDenoiseReduceMBufferId), 0)
        if (bitmapDenoiseReduceRBufferId != 0) GLES31.glDeleteBuffers(1, intArrayOf(bitmapDenoiseReduceRBufferId), 0)
        val buffers = IntArray(2)
        GLES31.glGenBuffers(2, buffers, 0)
        bitmapDenoiseReduceMBufferId = buffers[0]
        bitmapDenoiseReduceRBufferId = buffers[1]
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, bitmapDenoiseReduceMBufferId)
        GLES31.glBufferData(GLES31.GL_SHADER_STORAGE_BUFFER, bitmapDenoiseReduceBufSize * 4 * 4, null, GLES31.GL_DYNAMIC_DRAW)
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, bitmapDenoiseReduceRBufferId)
        GLES31.glBufferData(GLES31.GL_SHADER_STORAGE_BUFFER, bitmapDenoiseReduceSize * 4 * 4, null, GLES31.GL_DYNAMIC_READ)
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
    }

    private fun buildBitmapDenoiseParams(
        width: Int,
        height: Int,
        strengthValue: Float,
        force: Float
    ): BitmapDenoiseParams {
        val a = BITMAP_DENOISE_A
        val b = BITMAP_DENOISE_B
        val scale = 1.0f
        val shadows = max(0.1f - 0.1f * ln(a), 0.7f).coerceAtMost(1.8f)
        val bias = -max(5f + 0.5f * ln(a), 0.0f)
        val compensateP = 0.05f / 0.05f.pow(shadows)
        val compensateStrength = 2.5f
        val strength = strengthValue.coerceAtLeast(1e-6f)
        val wbBase = floatArrayOf(1f, 1f, 1f, 0f)
        val (toY, toRgbBase) = computeBitmapY0U0V0Matrices(wbBase)
        val toYScaled = FloatArray(9)
        val toRgbScaled = FloatArray(9)
        for (i in 0 until 9) {
            toYScaled[i] = toY[i] / (strength * compensateStrength * scale)
            toRgbScaled[i] = toRgbBase[i] * strength * compensateStrength * scale
        }
        return BitmapDenoiseParams(
            strength = strength,
            maxScale = computeBitmapDenoiseMaxScale(width, height),
            lumaForce = force,
            chromaForce = force,
            p = floatArrayOf(shadows, shadows, shadows, 1.0f),
            wb = floatArrayOf(
                strength * compensateStrength * scale,
                strength * compensateStrength * scale,
                strength * compensateStrength * scale,
                0.0f
            ),
            aa = floatArrayOf(a * compensateP, a * compensateP, a * compensateP, 1.0f),
            bb = floatArrayOf(b, b, b, 1.0f),
            toY0U0V0 = toYScaled,
            toRgb = toRgbScaled,
            bias = bias,
            scale = scale
        )
    }

    private fun computeBitmapDenoiseMaxScale(width: Int, height: Int): Int {
        val maxMaxScale = DenoiseProfileShaders.BANDS
        val supp0 = kotlin.math.min((2 * (2 shl (maxMaxScale - 1)) + 1).toFloat(), max(width, height).toFloat() * 0.2f)
        val i0 = ln((supp0 - 1.0f) * 0.5f) / ln(2.0f)
        var maxScale = 0
        while (maxScale < maxMaxScale) {
            val supp = (2 * (2 shl maxScale) + 1).toFloat()
            val iIn = ln((supp - 1.0f) * 0.5f) / ln(2.0f) - 1.0f
            if (1.0f - (iIn + 0.5f) / i0 < 0.0f) break
            maxScale++
        }
        return maxScale.coerceIn(1, DenoiseProfileShaders.BANDS)
    }

    private fun computeBitmapY0U0V0Matrices(wb: FloatArray): Pair<FloatArray, FloatArray> {
        val toY = floatArrayOf(
            1f / 3f, 1f / 3f, 1f / 3f,
            0.5f, 0.0f, -0.5f,
            0.25f, -0.5f, 0.25f
        )
        var sumInvWb = 1.0f / wb[0] + 1.0f / wb[1] + 1.0f / wb[2]
        sumInvWb *= sqrt(3.0f)
        toY[0] = sumInvWb / wb[0]
        toY[1] = sumInvWb / wb[1]
        toY[2] = sumInvWb / wb[2]
        val stddevU0 = sqrt(0.25f * wb[0] * wb[0] + 0.25f * wb[2] * wb[2]).coerceAtLeast(1e-6f)
        val stddevV0 = sqrt(0.0625f * wb[0] * wb[0] + 0.25f * wb[1] * wb[1] + 0.0625f * wb[2] * wb[2]).coerceAtLeast(1e-6f)
        for (i in 3..5) toY[i] /= stddevU0
        for (i in 6..8) toY[i] /= stddevV0
        return toY to (invertBitmapMatrix3x3(toY) ?: floatArrayOf(1f, 0f, 0f, 0f, 1f, 0f, 0f, 0f, 1f))
    }

    private fun invertBitmapMatrix3x3(m: FloatArray): FloatArray? {
        val a = m[4] * m[8] - m[5] * m[7]
        val b = -m[3] * m[8] + m[5] * m[6]
        val c = m[3] * m[7] - m[4] * m[6]
        val d = -m[1] * m[8] + m[2] * m[7]
        val e = m[0] * m[8] - m[2] * m[6]
        val f = -m[0] * m[7] + m[1] * m[6]
        val g = m[1] * m[5] - m[2] * m[4]
        val h = -m[0] * m[5] + m[2] * m[3]
        val i = m[0] * m[4] - m[1] * m[3]
        val det = m[0] * a + m[1] * b + m[2] * c
        if (det == 0f) return null
        val inv = 1.0f / det
        return floatArrayOf(inv * a, inv * d, inv * g, inv * b, inv * e, inv * h, inv * c, inv * f, inv * i)
    }

    private fun matrix3ToGl(m: FloatArray): FloatArray {
        return floatArrayOf(m[0], m[3], m[6], m[1], m[4], m[7], m[2], m[5], m[8])
    }

    private fun dispatchBitmapDenoisePrecondition(input: Int, output: Int, width: Int, height: Int, params: BitmapDenoiseParams) {
        GLES31.glUseProgram(bitmapDenoisePreconditionProgram)
        bindComputeSampler(bitmapDenoisePreconditionProgram, "uInput", 0, input)
        GLES31.glBindImageTexture(1, output, 0, false, 0, GLES31.GL_WRITE_ONLY, GLES31.GL_RGBA16F)
        setBitmapDenoiseCommonUniforms(bitmapDenoisePreconditionProgram, width, height, params)
        GLES31.glUniformMatrix3fv(GLES31.glGetUniformLocation(bitmapDenoisePreconditionProgram, "uToY0U0V0"), 1, false, matrix3ToGl(params.toY0U0V0), 0)
        dispatchBitmapDenoiseImage(width, height, "BitmapDenoise precondition")
    }

    private fun dispatchBitmapDenoiseDecompose(input: Int, coarse: Int, detail: Int, width: Int, height: Int, scale: Int) {
        GLES31.glUseProgram(bitmapDenoiseDecomposeProgram)
        bindComputeSampler(bitmapDenoiseDecomposeProgram, "uInput", 0, input)
        GLES31.glBindImageTexture(1, coarse, 0, false, 0, GLES31.GL_WRITE_ONLY, GLES31.GL_RGBA16F)
        GLES31.glBindImageTexture(2, detail, 0, false, 0, GLES31.GL_WRITE_ONLY, GLES31.GL_RGBA16F)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(bitmapDenoiseDecomposeProgram, "uImageSize"), width, height)
        GLES31.glUniform1i(GLES31.glGetUniformLocation(bitmapDenoiseDecomposeProgram, "uScale"), scale)
        val varf = sqrt(2.0f + 2.0f * 4.0f * 4.0f + 6.0f * 6.0f) / 16.0f
        val sigmaBand = varf.pow(scale)
        GLES31.glUniform1f(GLES31.glGetUniformLocation(bitmapDenoiseDecomposeProgram, "uInvSigma2"), 1.0f / (sigmaBand * sigmaBand))
        dispatchBitmapDenoiseImage(width, height, "BitmapDenoise decompose $scale")
    }

    private fun dispatchBitmapDenoiseSynthesize(coarse: Int, detail: Int, output: Int, width: Int, height: Int, threshold: FloatArray) {
        GLES31.glUseProgram(bitmapDenoiseSynthesizeProgram)
        bindComputeSampler(bitmapDenoiseSynthesizeProgram, "uCoarse", 0, coarse)
        bindComputeSampler(bitmapDenoiseSynthesizeProgram, "uDetail", 1, detail)
        GLES31.glBindImageTexture(2, output, 0, false, 0, GLES31.GL_WRITE_ONLY, GLES31.GL_RGBA16F)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(bitmapDenoiseSynthesizeProgram, "uImageSize"), width, height)
        GLES31.glUniform4fv(GLES31.glGetUniformLocation(bitmapDenoiseSynthesizeProgram, "uThreshold"), 1, threshold, 0)
        GLES31.glUniform4f(GLES31.glGetUniformLocation(bitmapDenoiseSynthesizeProgram, "uBoost"), 1f, 1f, 1f, 1f)
        dispatchBitmapDenoiseImage(width, height, "BitmapDenoise synthesize")
    }

    private fun dispatchBitmapDenoiseBacktransform(input: Int, output: Int, width: Int, height: Int, params: BitmapDenoiseParams) {
        GLES31.glUseProgram(bitmapDenoiseBacktransformProgram)
        bindComputeSampler(bitmapDenoiseBacktransformProgram, "uInput", 0, input)
        GLES31.glBindImageTexture(1, output, 0, false, 0, GLES31.GL_WRITE_ONLY, GLES31.GL_RGBA16F)
        setBitmapDenoiseCommonUniforms(bitmapDenoiseBacktransformProgram, width, height, params)
        GLES31.glUniform1f(GLES31.glGetUniformLocation(bitmapDenoiseBacktransformProgram, "uBias"), params.bias - 0.5f * ln(params.scale))
        GLES31.glUniformMatrix3fv(GLES31.glGetUniformLocation(bitmapDenoiseBacktransformProgram, "uToRgb"), 1, false, matrix3ToGl(params.toRgb), 0)
        dispatchBitmapDenoiseImage(width, height, "BitmapDenoise backtransform")
    }

    private fun setBitmapDenoiseCommonUniforms(program: Int, width: Int, height: Int, params: BitmapDenoiseParams) {
        GLES31.glUniform2i(GLES31.glGetUniformLocation(program, "uImageSize"), width, height)
        GLES31.glUniform4fv(GLES31.glGetUniformLocation(program, "uA"), 1, params.aa, 0)
        GLES31.glUniform4fv(GLES31.glGetUniformLocation(program, "uP"), 1, params.p, 0)
        GLES31.glUniform4fv(GLES31.glGetUniformLocation(program, "uB"), 1, params.bb, 0)
        GLES31.glUniform4fv(GLES31.glGetUniformLocation(program, "uWb"), 1, params.wb, 0)
    }

    private fun computeBitmapDenoiseThreshold(textureId: Int, width: Int, height: Int, scale: Int, params: BitmapDenoiseParams): FloatArray {
        val groupsX = roundUp(width, DenoiseProfileShaders.REDUCE_FIRST_LOCAL_X) / DenoiseProfileShaders.REDUCE_FIRST_LOCAL_X
        val groupsY = roundUp(height, DenoiseProfileShaders.REDUCE_FIRST_LOCAL_Y) / DenoiseProfileShaders.REDUCE_FIRST_LOCAL_Y
        GLES31.glUseProgram(bitmapDenoiseReduceFirstProgram)
        bindComputeSampler(bitmapDenoiseReduceFirstProgram, "uInput", 0, textureId)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, bitmapDenoiseReduceMBufferId)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(bitmapDenoiseReduceFirstProgram, "uImageSize"), width, height)
        GLES31.glDispatchCompute(groupsX, groupsY, 1)
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
        GLES31.glUseProgram(bitmapDenoiseReduceSecondProgram)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, bitmapDenoiseReduceMBufferId)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 1, bitmapDenoiseReduceRBufferId)
        GLES31.glUniform1i(GLES31.glGetUniformLocation(bitmapDenoiseReduceSecondProgram, "uLength"), bitmapDenoiseReduceBufSize)
        GLES31.glDispatchCompute(bitmapDenoiseReduceSize, 1, 1)
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT or GLES31.GL_BUFFER_UPDATE_BARRIER_BIT)
        val sumY2 = readBitmapDenoiseReduceResult(bitmapDenoiseReduceSize)
        val npixels = (width * height).toFloat()
        val varf = sqrt(2.0f + 2.0f * 4.0f * 4.0f + 6.0f * 6.0f) / 16.0f
        val sb2 = varf.pow(scale) * varf.pow(scale)
        val std0 = sqrt(max(1e-6f, sumY2[0] / (npixels - 1.0f) - sb2))
        val std1 = sqrt(max(1e-6f, sumY2[1] / (npixels - 1.0f) - sb2))
        val std2 = sqrt(max(1e-6f, sumY2[2] / (npixels - 1.0f) - sb2))
        val adjY = 8.0f * params.lumaForce * params.lumaForce * 4.0f
        val adjC = 8.0f * params.chromaForce * params.chromaForce * 4.0f
        return floatArrayOf(adjY * sb2 / std0, adjC * sb2 / std1, adjC * sb2 / std2, 0.0f)
    }

    private fun readBitmapDenoiseReduceResult(reduceSize: Int): FloatArray {
        val out = FloatArray(4)
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, bitmapDenoiseReduceRBufferId)
        val mapped = GLES31.glMapBufferRange(GLES31.GL_SHADER_STORAGE_BUFFER, 0, reduceSize * 4 * 4, GLES31.GL_MAP_READ_BIT) as? ByteBuffer
        if (mapped != null) {
            mapped.order(ByteOrder.nativeOrder())
            val floats = mapped.asFloatBuffer()
            for (i in 0 until reduceSize) {
                out[0] += floats.get(i * 4)
                out[1] += floats.get(i * 4 + 1)
                out[2] += floats.get(i * 4 + 2)
            }
            GLES31.glUnmapBuffer(GLES31.GL_SHADER_STORAGE_BUFFER)
        }
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
        return out
    }

    private fun bindComputeSampler(program: Int, name: String, unit: Int, textureId: Int) {
        GLES31.glActiveTexture(GLES31.GL_TEXTURE0 + unit)
        GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, textureId)
        GLES31.glUniform1i(GLES31.glGetUniformLocation(program, name), unit)
    }

    private fun dispatchBitmapDenoiseImage(width: Int, height: Int, tag: String) {
        GLES31.glDispatchCompute((width + 15) / 16, (height + 15) / 16, 1)
        GLES31.glMemoryBarrier(
            GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT or
                GLES31.GL_TEXTURE_FETCH_BARRIER_BIT or
                GLES31.GL_FRAMEBUFFER_BARRIER_BIT
        )
        checkGlError(tag)
    }

    private fun roundUp(value: Int, multiple: Int): Int {
        return ((value + multiple - 1) / multiple) * multiple
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

    private fun setupHalationFramebuffers(width: Int, height: Int) {
        val dsW = width / 4
        val dsH = height / 4
        if (halationWidth == dsW && halationHeight == dsH && halationTexId[0] != 0) return
        halationWidth = dsW
        halationHeight = dsH

        for (i in 0..1) {
            if (halationTexId[i] != 0) GLES30.glDeleteTextures(1, intArrayOf(halationTexId[i]), 0)
            if (halationFboId[i] != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(halationFboId[i]), 0)
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
            halationTexId[i] = t[0]
            halationFboId[i] = f[0]
        }
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
    }

    private fun renderHalationBlur(
        sourceTexId: Int,
        width: Int,
        height: Int,
        halation: Float
    ) {
        setupHalationFramebuffers(width, height)
        if (halationExtractBlurHProgram == 0 || halationBlurVProgram == 0) return

        val dsW = width / 4
        val dsH = height / 4
        val texelW = 1.0f / dsW
        val texelH = 1.0f / dsH
        
        val threshold = 0.75f // 恒定高光提取阈值，只让强度随滑块变化

        val identityMatrix = FloatArray(16)
        android.opengl.Matrix.setIdentityM(identityMatrix, 0)

        // Pass 1: Extract + Blur H
        GLES30.glUseProgram(halationExtractBlurHProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, halationFboId[0])
        GLES30.glViewport(0, 0, dsW, dsH)
        
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, sourceTexId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(halationExtractBlurHProgram, "uInputTexture"), 0)
        GLES30.glUniform2f(GLES30.glGetUniformLocation(halationExtractBlurHProgram, "uTexelSize"), texelW, texelH)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(halationExtractBlurHProgram, "uThreshold"), threshold)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(halationExtractBlurHProgram, "uStrength"), halation)
        
        GLES30.glUniformMatrix4fv(
            GLES30.glGetUniformLocation(halationExtractBlurHProgram, "uMVPMatrix"), 1, false, identityMatrix, 0
        )
        drawQuad(halationExtractBlurHProgram)

        // Pass 2: Blur V
        GLES30.glUseProgram(halationBlurVProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, halationFboId[1])
        GLES30.glViewport(0, 0, dsW, dsH)
        
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, halationTexId[0])
        GLES30.glUniform1i(GLES30.glGetUniformLocation(halationBlurVProgram, "uInputTexture"), 0)
        GLES30.glUniform2f(GLES30.glGetUniformLocation(halationBlurVProgram, "uTexelSize"), texelW, texelH)
        
        GLES30.glUniformMatrix4fv(
            GLES30.glGetUniformLocation(halationBlurVProgram, "uMVPMatrix"), 1, false, identityMatrix, 0
        )
        drawQuad(halationBlurVProgram)

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

    private fun createFragmentProgram(vSource: String, fSource: String, name: String): Int {
        val vShader = compileShader(GLES30.GL_VERTEX_SHADER, vSource)
        val fShader = compileShader(GLES30.GL_FRAGMENT_SHADER, fSource)
        if (vShader == 0 || fShader == 0) return 0
        val program = GLES30.glCreateProgram()
        GLES30.glAttachShader(program, vShader)
        GLES30.glAttachShader(program, fShader)
        GLES30.glLinkProgram(program)
        val linked = IntArray(1)
        GLES30.glGetProgramiv(program, GLES30.GL_LINK_STATUS, linked, 0)
        if (linked[0] == 0) {
            PLog.e(TAG, "Program $name linking failed: ${GLES30.glGetProgramInfoLog(program)}")
            GLES30.glDeleteProgram(program)
            GLES30.glDeleteShader(vShader)
            GLES30.glDeleteShader(fShader)
            return 0
        }
        GLES30.glDeleteShader(vShader)
        GLES30.glDeleteShader(fShader)
        return program
    }

    private fun compileComputeProgram(source: String, name: String): Int {
        val shader = GLES31.glCreateShader(GLES31.GL_COMPUTE_SHADER)
        GLES31.glShaderSource(shader, source)
        GLES31.glCompileShader(shader)
        val compiled = IntArray(1)
        GLES31.glGetShaderiv(shader, GLES31.GL_COMPILE_STATUS, compiled, 0)
        if (compiled[0] == 0) {
            PLog.e(TAG, "Compute shader $name compilation failed: ${GLES31.glGetShaderInfoLog(shader)}")
            GLES31.glDeleteShader(shader)
            return 0
        }
        val program = GLES31.glCreateProgram()
        GLES31.glAttachShader(program, shader)
        GLES31.glLinkProgram(program)
        val linked = IntArray(1)
        GLES31.glGetProgramiv(program, GLES31.GL_LINK_STATUS, linked, 0)
        if (linked[0] == 0) {
            PLog.e(TAG, "Compute program $name linking failed: ${GLES31.glGetProgramInfoLog(program)}")
            GLES31.glDeleteProgram(program)
            GLES31.glDeleteShader(shader)
            return 0
        }
        GLES31.glDeleteShader(shader)
        return program
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
        releaseOutputFramebuffer()
        if (pboId != 0) {
            GLES30.glDeleteBuffers(1, intArrayOf(pboId), 0)
            pboId = 0
        }
        releaseReadbackBuffer()

        if (bitmapDenoisePreconditionProgram != 0) GLES31.glDeleteProgram(bitmapDenoisePreconditionProgram)
        if (bitmapDenoiseDecomposeProgram != 0) GLES31.glDeleteProgram(bitmapDenoiseDecomposeProgram)
        if (bitmapDenoiseSynthesizeProgram != 0) GLES31.glDeleteProgram(bitmapDenoiseSynthesizeProgram)
        if (bitmapDenoiseReduceFirstProgram != 0) GLES31.glDeleteProgram(bitmapDenoiseReduceFirstProgram)
        if (bitmapDenoiseReduceSecondProgram != 0) GLES31.glDeleteProgram(bitmapDenoiseReduceSecondProgram)
        if (bitmapDenoiseBacktransformProgram != 0) GLES31.glDeleteProgram(bitmapDenoiseBacktransformProgram)
        if (bitmapDenoisePassthroughProgram != 0) GLES30.glDeleteProgram(bitmapDenoisePassthroughProgram)
        if (bitmapChromaDenoiseProgram != 0) GLES30.glDeleteProgram(bitmapChromaDenoiseProgram)
        for (i in 0..1) {
            if (bitmapDenoiseTexId[i] != 0) GLES30.glDeleteTextures(1, intArrayOf(bitmapDenoiseTexId[i]), 0)
            if (bitmapDenoiseFboId[i] != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(bitmapDenoiseFboId[i]), 0)
        }
        for (i in bitmapDenoiseDetailTexIds.indices) {
            if (bitmapDenoiseDetailTexIds[i] != 0) GLES30.glDeleteTextures(1, intArrayOf(bitmapDenoiseDetailTexIds[i]), 0)
            bitmapDenoiseDetailTexIds[i] = 0
        }
        if (bitmapDenoiseReduceMBufferId != 0) GLES31.glDeleteBuffers(1, intArrayOf(bitmapDenoiseReduceMBufferId), 0)
        if (bitmapDenoiseReduceRBufferId != 0) GLES31.glDeleteBuffers(1, intArrayOf(bitmapDenoiseReduceRBufferId), 0)

        // 释放 HDF 资源
        if (hdfExtractBlurHProgram != 0) GLES30.glDeleteProgram(hdfExtractBlurHProgram)
        if (hdfBlurVProgram != 0) GLES30.glDeleteProgram(hdfBlurVProgram)
        for (i in 0..1) {
            if (hdfTexId[i] != 0) GLES30.glDeleteTextures(1, intArrayOf(hdfTexId[i]), 0)
            if (hdfFboId[i] != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(hdfFboId[i]), 0)
        }
        
        if (halationExtractBlurHProgram != 0) GLES30.glDeleteProgram(halationExtractBlurHProgram)
        if (halationBlurVProgram != 0) GLES30.glDeleteProgram(halationBlurVProgram)
        for (i in 0..1) {
            if (halationTexId[i] != 0) GLES30.glDeleteTextures(1, intArrayOf(halationTexId[i]), 0)
            if (halationFboId[i] != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(halationFboId[i]), 0)
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
        private const val BITMAP_DENOISE_A = 0.008f
        private const val BITMAP_DENOISE_B = 0.0005f
        private const val LCH_COLOR_BAND_COUNT = 9

        // 2D 图片版本的顶点着色器
        val IMAGE_VERTEX_SHADER = """
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

        private val TEXTURE_PASSTHROUGH_SHADER = """
            #version 300 es
            precision mediump float;

            in vec2 vTexCoord;
            out vec4 fragColor;

            uniform sampler2D uInputTexture;

            void main() {
                fragColor = texture(uInputTexture, vTexCoord);
            }
        """.trimIndent()

        private val SHADER_BODY = """
            in vec2 vTexCoord;
            out vec4 fragColor;

            uniform mediump sampler3D uLutTexture;
            uniform float uLutSize;
            uniform float uLutIntensity;
            uniform bool uLutEnabled;
            uniform int uLutMaskType;
            uniform int uLutCurve;
            uniform int uLutColorSpace;
            uniform int uInputColorSpace;
            uniform bool uIsHlgInput;

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
            uniform float uToneToe;       // -1.0 ~ +1.0 (暗部曲线塑形)
            uniform float uToneShoulder;  // -1.0 ~ +1.0 (亮部曲线塑形)
            uniform float uTonePivot;     // -1.0 ~ +1.0 (曲线中点偏移)
            uniform float uFilmGrain;     // 0.0 ~ 1.0 (颗粒强度)
            uniform float uVignette;      // -1.0 ~ +1.0 (晕影)
            uniform float uBleachBypass;  // 0.0 ~ 1.0 (留银冲洗强度)
            uniform float uNoise;         // 0.0 ~ 1.0 (噪点)
            uniform float uNoiseSeed;     // 噪点随机种子
            uniform float uLowRes;        // 0.0 ~ 1.0 (低像素强度)
            uniform float uAspectRatio;   // 图像长宽比
            
            // Primary Calibration
            uniform mat3 uPrimaryCalibrationMatrix;
            
            uniform float uLchHueAdjustments[9];
            uniform float uLchChromaAdjustments[9];
            uniform float uLchLightnessAdjustments[9];
            uniform sampler2D uCurveTexture;
            uniform bool uCurveEnabled;

            // HDF 光晕效果
            uniform float uHalation;      // 0.0 ~ 1.0 (光晕强度)
            uniform sampler2D uHdfTexture; // 光晕合成纹理
            uniform float uRedHalation;      // 0.0 ~ 1.0 (胶片红晕强度)
            uniform sampler2D uRedHalationTexture; // 胶片红晕合成纹理
            
            // 色散效果
            uniform float uChromaticAberration; // 0.0 ~ 1.0 (色散强度)
            
            // 后期处理参数
            uniform float uSharpening;
            uniform vec2 uTexelSize;
            
            // 辅助函数：亮度计算
            const float PI = 3.14159265359;

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

            vec3 hlgToLinear(vec3 e) {
                float ha = 0.17883277;
                float hb = 1.0 - 4.0 * ha;
                float hc = 0.5 - ha * log(4.0 * ha);
                vec3 low = e * e / 3.0;
                vec3 high = (exp((e - hc) / ha) + hb) / 12.0;
                return mix(low, high, step(vec3(0.5), e));
            }

            vec3 bt2020ToLinearSrgb(vec3 rgb) {
                return mat3(
                    1.660491, -0.124550, -0.018151,
                    -0.587641, 1.132900, -0.100579,
                    -0.072850, -0.008350, 1.118730
                ) * rgb;
            }

            vec3 applyExposureInLinearSpace(vec3 srgbColor, float exposureEv) {
                vec3 linearColor = srgbToLinear(max(srgbColor, vec3(0.0)));
                linearColor *= exp2(exposureEv);
                return linearToSrgb(linearColor);
            }

            float sanitizeFloat(float value) {
                if (value != value) return 0.0;
//                if (value > 1.0) return 1.0;
//                if (value < 0.0) return 0.0;
                return value;
            }

            vec3 sanitizeColor(vec3 color) {
                return vec3(
                    sanitizeFloat(color.r),
                    sanitizeFloat(color.g),
                    sanitizeFloat(color.b)
                );
            }

            float applyToneCurveToLuma(float luma, float toe, float shoulder, float pivot) {
                float safeLuma = clamp(luma, 0.0, 1.0);
                float pivotPoint = clamp(0.5 + pivot * 0.12, 0.2, 0.8);
                float toeAmount = clamp(abs(toe), 0.0, 1.0);
                float shoulderAmount = clamp(abs(shoulder), 0.0, 1.0);
                float toeGamma = (toe >= 0.0)
                    ? mix(1.0, 0.68, toeAmount)
                    : mix(1.0, 1.85, toeAmount);
                float shoulderGamma = (shoulder >= 0.0)
                    ? mix(1.0, 0.72, shoulderAmount)
                    : mix(1.0, 1.85, shoulderAmount);

                if (safeLuma <= pivotPoint) {
                    float segment = clamp(safeLuma / max(pivotPoint, 0.0001), 0.0, 1.0);
                    return clamp(pow(segment, toeGamma) * pivotPoint, 0.0, 1.0);
                }

                float segment = clamp((safeLuma - pivotPoint) / max(1.0 - pivotPoint, 0.0001), 0.0, 1.0);
                float result = 1.0 - pow(max(0.0, 1.0 - segment), shoulderGamma) * (1.0 - pivotPoint);
                return clamp(result, 0.0, 1.0);
            }

            vec3 applyToneCurve(vec3 color, float toe, float shoulder, float pivot) {
                if (abs(toe) < 0.001 && abs(shoulder) < 0.001 && abs(pivot) < 0.001) {
                    return color;
                }
                vec3 nonNegativeColor = max(color, vec3(0.0));
                vec3 curveSampleColor = clamp(nonNegativeColor, 0.0, 1.0);
                float luma = getLuma(curveSampleColor);
                float peak = max(curveSampleColor.r, max(curveSampleColor.g, curveSampleColor.b));
                float toneSignal = mix(luma, peak, 0.65);
                float curvedSignal = applyToneCurveToLuma(toneSignal, toe, shoulder, pivot);
                if (toneSignal < 0.0001) {
                    return curveSampleColor;
                }
                float safeRatio = clamp(curvedSignal / max(toneSignal, 0.0001), 0.0, 16.0);
                vec3 scaled = nonNegativeColor * safeRatio;
                return sanitizeColor(mix(vec3(curvedSignal), scaled, 0.96));
            }

            vec3 linearRgbToOklab(vec3 c) {
                vec3 lms = mat3(
                    0.4122214708, 0.2119034982, 0.0883024619,
                    0.5363325363, 0.6806995451, 0.2817188376,
                    0.0514459929, 0.1073969566, 0.6299787005
                ) * c;
                vec3 lmsCbrt = pow(max(lms, vec3(0.0)), vec3(1.0 / 3.0));
                return mat3(
                    0.2104542553, 1.9779984951, 0.0259040371,
                    0.7936177850, -2.4285922050, 0.7827717662,
                    -0.0040720468, 0.4505937099, -0.8086757660
                ) * lmsCbrt;
            }

            vec3 oklabToLinearRgb(vec3 lab) {
                vec3 lms = mat3(
                    1.0, 1.0, 1.0,
                    0.3963377774, -0.1055613458, -0.0894841775,
                    0.2158037573, -0.0638541728, -1.2914855480
                ) * lab;
                vec3 lms3 = lms * lms * lms;
                return mat3(
                    4.0767416621, -1.2684380046, -0.0041960863,
                    -3.3077115913, 2.6097574011, -0.7034186147,
                    0.2309699292, -0.3413193965, 1.7076147010
                ) * lms3;
            }

            vec3 linearRgbToCieLab(vec3 linearRgb) {
                vec3 xyz = mat3(
                    0.4124564, 0.2126729, 0.0193339,
                    0.3575761, 0.7151522, 0.1191920,
                    0.1804375, 0.0721750, 0.9503041
                ) * clamp(linearRgb, 0.0, 1.0);
                xyz /= vec3(0.95047, 1.0, 1.08883);
                vec3 f = mix(7.787037 * xyz + vec3(16.0 / 116.0), pow(max(xyz, vec3(0.0)), vec3(1.0 / 3.0)), step(vec3(0.008856), xyz));
                return vec3(116.0 * f.y - 16.0, 500.0 * (f.x - f.y), 200.0 * (f.y - f.z));
            }

            float wrapAngle(float angle) {
                return mod(angle + PI, 2.0 * PI) - PI;
            }

            float colorBandWeight(float hue, float center, float chroma) {
                float dist = abs(wrapAngle(hue - center));
                float hueWeight = 1.0 - smoothstep(radians(18.0), radians(42.0), dist);
                float chromaWeight = smoothstep(0.02, 0.08, chroma);
                return hueWeight * chromaWeight;
            }

            float fullCoverageBandWeight(float hue, float center, float chroma) {
                float dist = abs(wrapAngle(hue - center));
                // Use smoothstep for a more natural bell-curve falloff. 
                // 85 degrees ensures coverage for wider gaps in Oklab hue space (e.g. Blue-Cyan).
                float hueWeight = smoothstep(radians(85.0), 0.0, dist);
                float chromaWeight = smoothstep(0.005, 0.03, chroma);
                return hueWeight * chromaWeight;
            }

            float rtRange(float value, float minValue, float maxValue) {
                return step(minValue, value) * (1.0 - step(maxValue, value));
            }

            float rtSkinCase(float l, float h, float c, float lMin, float lMax, float hMin, float hMax, float cMin, float cMax, float weight) {
                return rtRange(l, lMin, lMax) * rtRange(h, hMin, hMax) * rtRange(c, cMin, cMax) * weight;
            }

            float skinBandWeight(vec3 linearColor) {
                // Direct port of RawTherapee Color::SkinSat ranges in CIELAB LCh.
                // Weights only rank RT's real / extended / transition categories.
                vec3 lab = linearRgbToCieLab(linearColor);
                float l = lab.x;
                float h = atan(lab.z, lab.y);
                float c = length(lab.yz);
                float core = 1.0;
                float extended = 0.67;
                float transition = 0.33;
                float w = 0.0;

                w = max(w, rtSkinCase(l, h, c, 85.0, 100.0, 0.73, 1.23, 8.0, 22.0, core));
                w = max(w, rtSkinCase(l, h, c, 92.0, 100.0, 0.80, 1.65, 7.0, 15.0, extended));
                w = max(w, rtSkinCase(l, h, c, 92.0, 100.0, -0.10, 1.65, 7.0, 18.0, transition));
                w = max(w, rtSkinCase(l, h, c, 85.0, 92.0, 0.70, 1.40, 7.0, 34.0, extended));
                w = max(w, rtSkinCase(l, h, c, 85.0, 92.0, 0.00, 1.65, 7.0, 43.0, transition));

                w = max(w, rtSkinCase(l, h, c, 70.0, 85.0, 0.40, 1.29, 8.0, 50.0, core));
                w = max(w, rtSkinCase(l, h, c, 70.0, 85.0, -0.18, 1.50, 7.0, 56.0, extended));
                w = max(w, rtSkinCase(l, h, c, 70.0, 85.0, -0.18, 1.65, 7.0, 63.0, transition));

                w = max(w, rtSkinCase(l, h, c, 52.0, 70.0, 0.30, 1.37, 11.0, 47.0, core));
                w = max(w, rtSkinCase(l, h, c, 52.0, 70.0, -0.18, 1.50, 7.0, 56.0, extended));
                w = max(w, rtSkinCase(l, h, c, 52.0, 70.0, -0.18, 1.65, 7.0, 63.0, transition));

                w = max(w, rtSkinCase(l, h, c, 35.0, 52.0, 0.30, 1.27, 13.0, 44.0, core));
                w = max(w, rtSkinCase(l, h, c, 35.0, 52.0, -0.18, 1.50, 7.0, 56.0, extended));
                w = max(w, rtSkinCase(l, h, c, 35.0, 52.0, -0.18, 1.65, 7.0, 63.0, transition));

                w = max(w, rtSkinCase(l, h, c, 20.0, 35.0, 0.30, 1.22, 7.0, 40.0, core));
                w = max(w, rtSkinCase(l, h, c, 20.0, 35.0, -0.18, 1.50, 7.0, 56.0, extended));
                w = max(w, rtSkinCase(l, h, c, 20.0, 35.0, -0.18, 1.65, 7.0, 63.0, transition));

                w = max(w, rtSkinCase(l, h, c, 10.0, 20.0, -0.20, 1.05, 8.0, 28.0, core));
                w = max(w, rtSkinCase(l, h, c, 10.0, 20.0, -0.18, 1.00, 7.0, 40.0, extended));
                w = max(w, rtSkinCase(l, h, c, 10.0, 20.0, -0.18, 1.60, 7.0, 50.0, transition));

                w = max(w, rtSkinCase(l, h, c, 0.0, 10.0, -0.18, 1.00, 8.0, 28.0, core));
                w = max(w, rtSkinCase(l, h, c, 0.0, 10.0, -0.18, 1.00, 7.0, 40.0, extended));
                w = max(w, rtSkinCase(l, h, c, 0.0, 10.0, -0.18, 1.60, 7.0, 50.0, transition));
                return w;
            }

            float skyBandWeight(vec3 linearColor) {
                vec3 lab = linearRgbToCieLab(linearColor);
                float l = lab.x;
                float h = atan(lab.z, lab.y);
                float c = length(lab.yz);
                float rtWaveletSkyHue = rtRange(h, -2.60, -1.30);
                float chromaGate = smoothstep(7.0, 18.0, c);
                float lightnessGate = smoothstep(18.0, 45.0, l);
                return rtWaveletSkyHue * chromaGate * lightnessGate;
            }

            float lutMaskWeight(int maskType, vec3 linearColor) {
                if (maskType == 1) {
                    return skinBandWeight(linearColor);
                }
                if (maskType == 2) {
                    return skyBandWeight(linearColor);
                }
                return 1.0;
            }

            vec3 applyOklchDensity(vec3 srgbColor, float density) {
                if (abs(density) < 0.0001) {
                    return srgbColor;
                }

                vec3 linearColor = srgbToLinear(max(srgbColor, vec3(0.0)));
                vec3 lab = linearRgbToOklab(linearColor);
                float chroma = length(lab.yz);
                float hue = atan(lab.z, lab.y);
                const float CHROMA_BIAS = 0.35;
                float densityScale = max(0.0, 1.0 + density * CHROMA_BIAS);
                float newChroma = chroma * densityScale;
                const float DENSITY_K = 1.85;
                float newLightness = clamp(lab.x * exp(-DENSITY_K * density * chroma), 0.0, 1.0);
                vec3 denseLab = vec3(newLightness, cos(hue) * newChroma, sin(hue) * newChroma);
                vec3 denseLinear = max(oklabToLinearRgb(denseLab), vec3(0.0));
                return linearToSrgb(denseLinear);
            }

            vec3 applyLchColorMixer(vec3 srgbColor) {
                vec3 linearColor = srgbToLinear(max(srgbColor, vec3(0.0)));
                vec3 lab = linearRgbToOklab(linearColor);
                float chroma = length(lab.yz);
                float hue = atan(lab.z, lab.y);
                if (hue < 0.0) hue += 2.0 * PI;

                // Optimized centers mapping LR colors to Oklab hue angles
                float centers[8] = float[](
                    radians(29.0),  // Red
                    radians(52.0),  // Orange
                    radians(86.0),  // Yellow
                    radians(144.0), // Green
                    radians(196.0), // Aqua/Cyan
                    radians(263.0), // Blue
                    radians(304.0), // Purple
                    radians(341.0)  // Magenta
                );

                float hueShift = 0.0;
                float chromaScale = 1.0;
                float lightnessShift = 0.0;
                float bandWeights[8];
                float totalBandWeight = 0.0;

                for (int i = 0; i < 8; i++) {
                    float weight = fullCoverageBandWeight(hue, centers[i], chroma);
                    bandWeights[i] = weight;
                    totalBandWeight += weight;
                }

                if (totalBandWeight > 0.0001) {
                    for (int i = 0; i < 8; i++) {
                        float weight = bandWeights[i] / totalBandWeight;
                        // Reduce hue range to +/- 20 degrees for professional results
                        hueShift += uLchHueAdjustments[i + 1] * weight * radians(20.0);
                        chromaScale += uLchChromaAdjustments[i + 1] * weight;
                        lightnessShift += uLchLightnessAdjustments[i + 1] * weight * 0.15;
                    }

                    // Restore the chroma fade-out that was lost during normalization
                    // This prevents harsh banding (断层) when colors transition to neutral
                    float commonChromaWeight = smoothstep(0.005, 0.03, chroma);
                    hueShift *= commonChromaWeight;
                    chromaScale = mix(1.0, chromaScale, commonChromaWeight);
                    lightnessShift *= commonChromaWeight;
                }

                float skinWeight = skinBandWeight(linearColor);
                if (skinWeight > 0.0001) {
                    hueShift += uLchHueAdjustments[0] * skinWeight * radians(10.0);
                    chromaScale += uLchChromaAdjustments[0] * skinWeight;
                    lightnessShift += uLchLightnessAdjustments[0] * skinWeight * 0.08;
                }

                if (abs(hueShift) < 0.0001 && abs(chromaScale - 1.0) < 0.0001 && abs(lightnessShift) < 0.0001) {
                    return srgbColor;
                }

                float newHue = hue + hueShift;
                float newChroma = max(0.0, chroma * max(0.0, chromaScale));
                float newLightness = clamp(lab.x + lightnessShift, 0.0, 1.0);
                vec3 mixedLab = vec3(newLightness, cos(newHue) * newChroma, sin(newHue) * newChroma);
                vec3 mixedLinear = max(oklabToLinearRgb(mixedLab), vec3(0.0));
                return linearToSrgb(mixedLinear);
            }

            vec3 applyPrimaryCalibration(vec3 color) {
                vec3 linearColor = srgbToLinear(max(color, vec3(0.0)));
                vec3 calibratedLinear = max(uPrimaryCalibrationMatrix * linearColor, vec3(0.0));
                return linearToSrgb(calibratedLinear);
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
                if (curveType == 5) { // LogC4
                    return mix(8.80302 * l + 0.158957, 0.21524584 * log10(2231.8263 * l + 64.0) - 0.29590839, step(-0.018057, l));
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
                if (curveType == 8) { // ACEScct
                    return mix(10.540237 * l + 0.072905536, 0.18955931 * log10(max(l, vec3(1e-6))) + 0.5547945, step(0.0078125, l));
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
                if (colorSpace == 7) { // V-Gamut
                    return mat3(0.585196, 0.078589, 0.022794, 0.322642, 0.819627, 0.114217, 0.092162, 0.101784, 0.862989) * rgb;
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

                if (uIsHlgInput) {
                    color.rgb = hlgToLinear(color.rgb);
                    color.rgb = bt2020ToLinearSrgb(color.rgb);
                    color.rgb = linearToSrgb(color.rgb);
                }

                // === 色彩配方处理（按专业后期流程顺序） ===
                if (uColorRecipeEnabled) {
                    // 1. 曝光调整（在线性空间执行 EV 增益，再回到显示空间）
                    if (abs(uExposure) > 0.001) {
                        color.rgb = applyExposureInLinearSpace(color.rgb, uExposure);
                        color.rgb = sanitizeColor(color.rgb);
                    }

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
                    color.rgb = sanitizeColor(color.rgb);

                    // 3. 对比度（围绕中灰点调整）
                    color.rgb = (color.rgb - 0.5) * uContrast + 0.5;
                    color.rgb = sanitizeColor(color.rgb);

                    // 3.5. 影调曲线（独立塑造高调/低调 profile）
                    color.rgb = applyToneCurve(color.rgb, uToneToe, uToneShoulder, uTonePivot);
                    color.rgb = sanitizeColor(color.rgb);

                    // 4. 白平衡调整（色温 + 色调）
                    color.r += uTemperature * 0.1;
                    color.b -= uTemperature * 0.1;
                    color.g += uTint * 0.05;
                    color.rgb = sanitizeColor(color.rgb);

                    // 5. 饱和度（基于 Luma 的快速算法）
                    float gray = getLuma(color.rgb);
                    color.rgb = mix(vec3(gray), color.rgb, uSaturation);
                    color.rgb = sanitizeColor(color.rgb);

                    // 6. 色彩密度（OkLCh density）
                    if (abs(uVibrance) > 0.001) {
                        color.rgb = applyOklchDensity(color.rgb, uVibrance);
                        color.rgb = sanitizeColor(color.rgb);
                    }

                    // 6.5. 颜色校准 (Camera Calibration)
                    color.rgb = applyPrimaryCalibration(color.rgb);
                    color.rgb = sanitizeColor(color.rgb);

                    color.rgb = applyLchColorMixer(color.rgb);
                    color.rgb = sanitizeColor(color.rgb);

                    // 7. 褪色效果
                    if (uFade > 0.0) {
                        float fadeAmount = uFade * 0.3;
                        color.rgb = mix(color.rgb, vec3(0.5), fadeAmount);
                        color.rgb += fadeAmount * 0.1;
                        color.rgb = sanitizeColor(color.rgb);
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
                    color.rgb = sanitizeColor(color.rgb);
                }

                // === 曲线调整（色彩配方之后、HDF/LUT 之前） ===
                if (uCurveEnabled) {
                    vec3 clamped = clamp(color.rgb, 0.0, 1.0);
                    float r = texture(uCurveTexture, vec2(clamped.r, 0.5)).r;
                    float g = texture(uCurveTexture, vec2(clamped.g, 0.5)).g;
                    float b = texture(uCurveTexture, vec2(clamped.b, 0.5)).b;
                    color.rgb = sanitizeColor(vec3(r, g, b));
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
                
                if (uRedHalation > 0.0) {
                    vec3 redBloom = texture(uRedHalationTexture, uvCoord).rgb;
                    vec3 redBloomEffect = redBloom * uRedHalation * 3.5;
                    color.rgb = vec3(1.0) - (vec3(1.0) - color.rgb) * (vec3(1.0) - redBloomEffect);
                }

                // === LUT 处理（在色彩配方之后） ===
                if (uLutEnabled && uLutIntensity > 0.0) {
                    bool isP3 = (uInputColorSpace == 1);
                    vec3 linearInput = srgbToLinear(color.rgb);
                    
                    if (isP3) {
                         linearInput = mat3(1.22486, -0.04205, -0.01974, -0.22471, 1.04192, -0.07865, 0.00000, 0.00013, 1.09837) * linearInput;
                    }
                    float effectiveLutIntensity = uLutIntensity * lutMaskWeight(uLutMaskType, linearInput);

                    vec3 colorSpaceRGB = applyLutColorSpace(linearInput, uLutColorSpace);
                    vec3 lutInColor = applyLutCurve(colorSpaceRGB, uLutCurve);
                    
                    float scale = (uLutSize - 1.0) / uLutSize;
                    float offset = 1.0 / (2.0 * uLutSize);
                    vec3 lutCoord = lutInColor * scale + offset;
                    vec4 lutColor = texture(uLutTexture, lutCoord);

                    // 在非线性 sRGB 空间进行混合
                    vec3 srgbColor = linearToSrgb(linearInput);
                    color.rgb = mix(srgbColor, lutColor.rgb, effectiveLutIntensity);

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

        val IMAGE_FRAGMENT_SHADER_COLOR_RECIPE = "#version 300 es\n" +
                "precision highp float;\n" +
                "uniform sampler2D uImageTexture;\n" +
                "vec4 sampleImage(vec2 uv) { return texture(uImageTexture, uv); }\n" +
                SHADER_BODY

        // === HDF (Highlight Diffusion Filter) \u0026 Halation Shaders ===

        private val HALATION_EXTRACT_BLUR_H_SHADER = """
            #version 300 es
            precision highp float;
            
            in vec2 vTexCoord;
            out vec4 fragColor;
            
            uniform sampler2D uInputTexture;
            uniform vec2 uTexelSize;
            uniform float uThreshold;
            uniform float uStrength;
            
            void main() {
                vec3 tint = vec3(1.0, 0.15, 0.0);
                
                #define EXTRACT(sampleColor) \
                    (sampleColor * tint * smoothstep(uThreshold, uThreshold + 0.15, mix(dot(sampleColor, vec3(0.2126, 0.7152, 0.0722)), max(sampleColor.r, max(sampleColor.g, sampleColor.b)), 0.6)))
                
                vec3 color = texture(uInputTexture, vTexCoord).rgb;
                vec3 sum = EXTRACT(color) * 0.204164;
                
                float weights[5] = float[](0.204164, 0.304005, 0.093910, 0.010416, 0.000005);
                float offsets[5] = float[](0.0, 1.407333, 3.294215, 5.176470, 7.058823);
                
                for (int i = 1; i < 5; i++) {
                    float offset = offsets[i] * uTexelSize.x * 2.0;
                    sum += EXTRACT(texture(uInputTexture, vTexCoord + vec2(offset, 0.0)).rgb) * weights[i];
                    sum += EXTRACT(texture(uInputTexture, vTexCoord - vec2(offset, 0.0)).rgb) * weights[i];
                }
                
                fragColor = vec4(sum, 1.0);
            }
        """.trimIndent()

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
