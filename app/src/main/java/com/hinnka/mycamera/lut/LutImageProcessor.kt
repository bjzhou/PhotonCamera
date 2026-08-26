package com.hinnka.mycamera.lut

import android.content.Context
import android.graphics.Bitmap
import android.graphics.ColorSpace
import android.opengl.EGL14
import android.opengl.EGLConfig
import android.opengl.EGLContext
import android.opengl.EGLDisplay
import android.opengl.EGLSurface
import android.opengl.GLES30
import android.opengl.GLES31
import androidx.core.graphics.createBitmap
import com.hinnka.mycamera.model.ColorPaletteMapper
import com.hinnka.mycamera.model.ColorRecipeParams
import com.hinnka.mycamera.lut.ChromaDenoiseShaders
import com.hinnka.mycamera.processor.GlesComputeWorkGroup
import com.hinnka.mycamera.processor.DenoiseStrength
import com.hinnka.mycamera.raw.DenoiseProfileNlmConfig
import com.hinnka.mycamera.raw.DenoiseProfileShaders
import com.hinnka.mycamera.raw.RawSharpenPass
import com.hinnka.mycamera.utils.LargeDirectBuffer
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.asCoroutineDispatcher
import kotlinx.coroutines.currentCoroutineContext
import kotlinx.coroutines.ensureActive
import kotlinx.coroutines.runBlocking
import kotlinx.coroutines.withContext
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.FloatBuffer
import java.nio.ShortBuffer
import java.util.concurrent.Executors
import kotlin.math.ln
import kotlin.math.max
import kotlin.math.pow
import kotlin.math.sqrt

data class LutStackRenderResult(
    val bitmap: Bitmap,
    /** RGBA_F16 sidecar; R stores the unbounded linear-light luminance ratio. */
    val luminanceGainMap: Bitmap?,
)

/**
 * LUT 图片处理器
 * 
 * 使用 EGL 离屏渲染对静态图片应用 3D LUT
 * 所有 GPU 操作在独立单线程完成，确保 EGL 上下文线程安全
 */
class LutImageProcessor(context: Context? = null) {
    private val appContext = context?.applicationContext

    @Volatile
    private var glThread: Thread? = null

    @Volatile
    private var isReleased = false

    // 单线程调度器，确保所有 EGL 操作在同一线程
    private val glDispatcher = Executors.newSingleThreadExecutor { r ->
        Thread(r, "LutImageProcessor-GL").apply {
            isDaemon = true
            glThread = this
        }
    }.asCoroutineDispatcher()

    private var eglDisplay: EGLDisplay = EGL14.EGL_NO_DISPLAY
    private var eglContext: EGLContext = EGL14.EGL_NO_CONTEXT
    private var eglSurface: EGLSurface = EGL14.EGL_NO_SURFACE

    private var shaderProgram = 0
    private var imageTextureId = 0
    private var lutTextureId = 0
    private val basicToneTextures = BasicToneGlTextures()
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
    private var bitmapDenoiseNlmInitProgram = 0
    private var bitmapDenoiseNlmFusedAccuProgram = 0
    private var bitmapDenoiseNlmFinishProgram = 0
    private var bitmapDenoisePassthroughProgram = 0
    private var computeCapabilitiesChecked = false
    private var computeCapabilitiesSupported = false
    private var bitmapChromaDenoiseGuideProgram = 0
    private var bitmapChromaDenoiseProgram = 0
    private var lutSharpenProgram = 0
    private var lutLuminanceGainProgram = 0

    private val bitmapDenoiseTexId = IntArray(2)
    private val bitmapDenoiseFboId = IntArray(2)
    private var bitmapDenoiseNlmU2BufferId = 0
    private var bitmapDenoiseNlmBufferPixels = 0
    private var bitmapDenoiseWidth = 0
    private var bitmapDenoiseHeight = 0
    private var lutSharpenTextureId = 0
    private var lutSharpenFboId = 0
    private var lutSharpenWidth = 0
    private var lutSharpenHeight = 0
    private val filmGrainGl = FilmGrainGl(TAG)

    // HDF (Highlight Diffusion) 光晕效果资源
    private var hdfExtractBlurHProgram = 0
    private var hdfBlurVProgram = 0
    private var hdfTexId = IntArray(2)      // 1/4 分辨率模糊纹理
    private var hdfFboId = IntArray(2)      // 1/4 分辨率模糊 FBO
    private var hdfWidth = 0
    private var hdfHeight = 0
    private var softLightBlurHProgram = 0
    private var softLightTexId = IntArray(2)
    private var softLightFboId = IntArray(2)
    private var softLightWidth = 0
    private var softLightHeight = 0

    // Still-image clarity resources. Preview uses the same shaders with its own GL context/resources.
    private var clarityDownsampleProgram = 0
    private var clarityCompositeProgram = 0
    private val clarityPyramidTexId = IntArray(CLARITY_PYRAMID_LEVELS)
    private val clarityPyramidFboId = IntArray(CLARITY_PYRAMID_LEVELS)
    private val clarityPyramidWidths = IntArray(CLARITY_PYRAMID_LEVELS)
    private val clarityPyramidHeights = IntArray(CLARITY_PYRAMID_LEVELS)
    private var clarityOutputTextureId = 0
    private var clarityOutputFboId = 0
    private var clarityOutputWidth = 0
    private var clarityOutputHeight = 0

    // Halation (胶片红晕) 效果资源
    private var halationExtractBlurHProgram = 0
    private var halationBlurVProgram = 0
    private var halationTexId = IntArray(2)
    private var halationFboId = IntArray(2)
    private var halationWidth = 0
    private var halationHeight = 0
    private var bloomDownsampleFirstProgram = 0
    private var bloomDownsampleProgram = 0
    private var bloomUpsampleProgram = 0
    private var bloomCompositeProgram = 0
    private var bloomTexId = IntArray(0)
    private var bloomFboId = IntArray(0)
    private var bloomMipWidths = IntArray(0)
    private var bloomMipHeights = IntArray(0)
    private var bloomMipCount = 0
    private var bloomSourceWidth = 0
    private var bloomSourceHeight = 0
    private var bloomOutputTextureId = 0
    private var bloomOutputFboId = 0
    private var bloomOutputWidth = 0
    private var bloomOutputHeight = 0

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

    // 曲线纹理
    private var curveTextureId = 0

    /** Initializes only the persistent EGL context and core color pipeline. */
    suspend fun prewarmCapturePipeline(): Boolean = withContext(glDispatcher) {
        if (isReleased) return@withContext false
        val start = System.currentTimeMillis()
        val ready = initialize()
        PLog.d(
            TAG,
            "LUT core capture pipeline initialized ready=$ready, " +
                "took=${System.currentTimeMillis() - start}ms",
        )
        ready
    }

    /**
     * 初始化 EGL 环境
     */
    fun initialize(): Boolean {
        if (isInitialized) return true
        if (isOnGlThread()) {
            return initializeInternal()
        }
        return runBlocking(glDispatcher) {
            initializeInternal()
        }
    }

    private fun initializeInternal(): Boolean {
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
            val eglExtensions = EGL14.eglQueryString(eglDisplay, EGL14.EGL_EXTENSIONS).orEmpty()
            val supportsLowPriorityContext =
                eglExtensions.split(' ').contains("EGL_IMG_context_priority")

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
            val normalContextAttribs = intArrayOf(
                EGL14.EGL_CONTEXT_CLIENT_VERSION, 3,
                EGL14.EGL_NONE
            )
            val lowPriorityContextAttribs = intArrayOf(
                EGL14.EGL_CONTEXT_CLIENT_VERSION, 3,
                EGL_CONTEXT_PRIORITY_LEVEL_IMG, EGL_CONTEXT_PRIORITY_LOW_IMG,
                EGL14.EGL_NONE
            )
            val contextAttribs = if (supportsLowPriorityContext) {
                lowPriorityContextAttribs
            } else {
                normalContextAttribs
            }
            eglContext = EGL14.eglCreateContext(eglDisplay, config, EGL14.EGL_NO_CONTEXT, contextAttribs, 0)
            if (eglContext == EGL14.EGL_NO_CONTEXT && supportsLowPriorityContext) {
                val eglError = EGL14.eglGetError()
                PLog.w(
                    TAG,
                    "Low-priority EGL context unavailable, falling back to normal priority: error=$eglError"
                )
                eglContext = EGL14.eglCreateContext(
                    eglDisplay,
                    config,
                    EGL14.EGL_NO_CONTEXT,
                    normalContextAttribs,
                    0
                )
            }
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
        val halation = 0f
        val softLight = effectiveRecipeParams?.softLight ?: 0f
        val redHalation = effectiveRecipeParams?.redHalation ?: 0f

        // 后期处理参数
        val sharpening: Float = sharpeningValue
        val noiseReduction: Float = noiseReductionValue
        val chromaNoiseReduction: Float = chromaNoiseReductionValue
        val chromaDenoiseStrength = DenoiseStrength.clamp(chromaNoiseReduction)

        // 激活上下文
        EGL14.eglMakeCurrent(eglDisplay, eglSurface, eglSurface, eglContext)

        // 创建/更新帧缓冲
        setupFramebuffer(width, height)
        currentCoroutineContext().ensureActive()

        // 上传 RGBA 16-bit 数据作为图片纹理
        uploadImageTextureFromArgb(argbData, width, height)
        currentCoroutineContext().ensureActive()

        if (chromaDenoiseStrength > 0) {
            renderBitmapChromaDenoise(imageTextureId, width, height, chromaDenoiseStrength)
            currentCoroutineContext().ensureActive()
        }

        val chromaDenoisedTexId = if (chromaDenoiseStrength > 0) bitmapDenoiseTexId[0] else imageTextureId
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
        if (softLight > 0f) {
            renderSoftLightBlur(inputTexId, width, height)
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
                    lutConfig = baselineLayer.lutConfig,
                    colorRecipeParams = baselineLayer.colorRecipeParams,
                    noiseReductionValue = 0f,
                    chromaNoiseReductionValue = 0f,
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
                argbData = argbData,
                width = width,
                height = height,
                colorSpace = colorSpace,
                isHlgInput = isHlgInput,
                lutConfig = baselineLayer.lutConfig,
                colorRecipeParams = baselineLayer.colorRecipeParams,
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
        val halation = 0f
        val softLight = effectiveRecipeParams?.softLight ?: 0f
        val redHalation = effectiveRecipeParams?.redHalation ?: 0f

        // 后期处理参数（仅在软件处理模式下生效）
        val sharpening: Float = sharpeningValue
        val noiseReduction: Float = noiseReductionValue
        val chromaNoiseReduction: Float = chromaNoiseReductionValue
        val chromaDenoiseStrength = DenoiseStrength.clamp(chromaNoiseReduction)

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

        if (chromaDenoiseStrength > 0) {
            renderBitmapChromaDenoise(imageTextureId, width, height, chromaDenoiseStrength)
            currentCoroutineContext().ensureActive()
        }

        val chromaDenoisedTexId = if (chromaDenoiseStrength > 0) bitmapDenoiseTexId[0] else imageTextureId
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
        val renderColorSpace = bitmap.colorSpace ?: ColorSpace.get(ColorSpace.Named.SRGB)

        // HDF 光晕效果预处理
        if (halation > 0f) {
            renderHDFBlur(inputTexId, width, height, halation)
            currentCoroutineContext().ensureActive()
        }
        if (softLight > 0f) {
            renderSoftLightBlur(inputTexId, width, height)
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
            renderColorSpace,
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
                    noiseReductionValue = 0f,
                    chromaNoiseReductionValue = 0f,
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

    /**
     * Applies the complete LUT stack and emits its pixel-aligned linear-light luminance ratio as
     * an RGBA_F16 sidecar. The sidecar is context-independent and can be consumed by the later HDR
     * gainmap EGL context without retaining the full pre-LUT SDR bitmap.
     */
    suspend fun applyLutStackWithLuminanceGain(
        bitmap: Bitmap,
        isHlgInput: Boolean = false,
        baselineLayer: LutRenderLayer?,
        creativeLayer: LutRenderLayer?,
        sharpeningValue: Float = 0f,
        noiseReductionValue: Float = 0f,
        chromaNoiseReductionValue: Float = 0f,
        luminanceGainDownsample: Int = 1,
    ): LutStackRenderResult {
        val rendered = applyLutStack(
            bitmap = bitmap,
            isHlgInput = isHlgInput,
            baselineLayer = baselineLayer,
            creativeLayer = creativeLayer,
            sharpeningValue = sharpeningValue,
            noiseReductionValue = noiseReductionValue,
            chromaNoiseReductionValue = chromaNoiseReductionValue,
        )
        val luminanceGainMap = if (isHlgInput || !bitmap.colorSpace.isEncodedSrgbFamily() ||
            !rendered.colorSpace.isEncodedSrgbFamily()
        ) {
            PLog.e(
                TAG,
                "LUT luminance sidecar requires encoded sRGB input/output: " +
                    "isHlg=$isHlgInput, before=${bitmap.colorSpace}, after=${rendered.colorSpace}"
            )
            null
        } else withContext(glDispatcher) {
            currentCoroutineContext().ensureActive()
            if (!isInitialized || lutLuminanceGainProgram == 0) {
                PLog.e(TAG, "Cannot create LUT luminance sidecar: GL program unavailable")
                null
            } else {
                createLutLuminanceGainMap(bitmap, rendered, luminanceGainDownsample)
            }
        }
        return LutStackRenderResult(rendered, luminanceGainMap)
    }

    private fun ColorSpace?.isEncodedSrgbFamily(): Boolean {
        val colorSpaceId = this?.id ?: return false
        return colorSpaceId == ColorSpace.get(ColorSpace.Named.SRGB).id ||
            colorSpaceId == ColorSpace.get(ColorSpace.Named.EXTENDED_SRGB).id
    }

    private fun createLutLuminanceGainMap(
        beforeLut: Bitmap,
        afterLut: Bitmap,
        downsample: Int,
    ): Bitmap? {
        if (beforeLut.width != afterLut.width || beforeLut.height != afterLut.height ||
            beforeLut.width <= 0 || beforeLut.height <= 0
        ) {
            PLog.e(
                TAG,
                "LUT luminance sidecar inputs are not aligned: " +
                    "before=${beforeLut.width}x${beforeLut.height}, " +
                    "after=${afterLut.width}x${afterLut.height}"
            )
            return null
        }
        EGL14.eglMakeCurrent(eglDisplay, eglSurface, eglSurface, eglContext)
        val safeDownsample = downsample.coerceAtLeast(1)
        val outputWidth = ((beforeLut.width + safeDownsample - 1) / safeDownsample).coerceAtLeast(1)
        val outputHeight = ((beforeLut.height + safeDownsample - 1) / safeDownsample).coerceAtLeast(1)

        val textures = IntArray(3)
        val framebuffers = IntArray(1)
        GLES30.glGenTextures(3, textures, 0)
        GLES30.glGenFramebuffers(1, framebuffers, 0)
        try {
            uploadLuminanceSidecarInput(textures[0], beforeLut)
            uploadLuminanceSidecarInput(textures[1], afterLut)

            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, textures[2])
            GLES30.glTexImage2D(
                GLES30.GL_TEXTURE_2D,
                0,
                GLES30.GL_RGBA16F,
                outputWidth,
                outputHeight,
                0,
                GLES30.GL_RGBA,
                GLES30.GL_HALF_FLOAT,
                null,
            )
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_NEAREST)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_NEAREST)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)

            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebuffers[0])
            GLES30.glFramebufferTexture2D(
                GLES30.GL_FRAMEBUFFER,
                GLES30.GL_COLOR_ATTACHMENT0,
                GLES30.GL_TEXTURE_2D,
                textures[2],
                0,
            )
            val framebufferStatus = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER)
            if (framebufferStatus != GLES30.GL_FRAMEBUFFER_COMPLETE) {
                PLog.e(TAG, "LUT luminance sidecar framebuffer incomplete: $framebufferStatus")
                return null
            }

            GLES30.glViewport(0, 0, outputWidth, outputHeight)
            GLES30.glUseProgram(lutLuminanceGainProgram)
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, textures[0])
            GLES30.glUniform1i(
                GLES30.glGetUniformLocation(lutLuminanceGainProgram, "uBeforeLutTexture"),
                0,
            )
            GLES30.glActiveTexture(GLES30.GL_TEXTURE1)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, textures[1])
            GLES30.glUniform1i(
                GLES30.glGetUniformLocation(lutLuminanceGainProgram, "uAfterLutTexture"),
                1,
            )
            GLES30.glUniform1f(
                GLES30.glGetUniformLocation(lutLuminanceGainProgram, "uOffset"),
                LUT_LUMINANCE_OFFSET,
            )
            drawQuad(lutLuminanceGainProgram)
            checkGlError("renderLutLuminanceGainMap")

            val byteCount = outputWidth.toLong() * outputHeight.toLong() * 8L
            val readback = LargeDirectBuffer.allocate(byteCount, "LUT luminance gain RGBA16F")
                ?: return null
            try {
                GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 4)
                GLES30.glReadPixels(
                    0,
                    0,
                    outputWidth,
                    outputHeight,
                    GLES30.GL_RGBA,
                    GLES30.GL_HALF_FLOAT,
                    readback,
                )
                checkGlError("readLutLuminanceGainMap")
                readback.position(0)
                return Bitmap.createBitmap(
                    outputWidth,
                    outputHeight,
                    Bitmap.Config.RGBA_F16,
                    true,
                    ColorSpace.get(ColorSpace.Named.LINEAR_EXTENDED_SRGB),
                ).also { it.copyPixelsFromBuffer(readback) }
            } finally {
                LargeDirectBuffer.free(readback)
            }
        } finally {
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
            GLES30.glDeleteFramebuffers(1, framebuffers, 0)
            GLES30.glDeleteTextures(3, textures, 0)
        }
    }

    private fun uploadLuminanceSidecarInput(textureId: Int, bitmap: Bitmap) {
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, textureId)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        val uploadBitmap = bitmap.asGlUploadCompatibleBitmap()
        android.opengl.GLUtils.texImage2D(GLES30.GL_TEXTURE_2D, 0, uploadBitmap, 0)
        if (uploadBitmap !== bitmap) uploadBitmap.recycle()
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
        performRender(
            width = width,
            height = height,
            inputTextureId = bitmapDenoiseTexId[0],
            inputColorSpace = bitmap.colorSpace ?: ColorSpace.get(ColorSpace.Named.SRGB),
            isHlgInput = false,
            lutConfig = null,
            effectiveRecipeParams = null,
            sharpening = 0f,
            lutMaskType = 0
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
        val flash = effectiveRecipeParams?.flash ?: 0f
        val bleachBypass = effectiveRecipeParams?.bleachBypass ?: 0f
        val clarity = effectiveRecipeParams?.clarity ?: 0f
        val bloom = effectiveRecipeParams?.bloom ?: 0f
        val halation = 0f
        val softLight = effectiveRecipeParams?.softLight ?: 0f
        val redHalation = effectiveRecipeParams?.redHalation ?: 0f
        val chromaticAberration = effectiveRecipeParams?.chromaticAberration ?: 0f
        val noise = effectiveRecipeParams?.noise ?: 0f
        val lowRes = effectiveRecipeParams?.lowRes ?: 0f
        val intensity = effectiveRecipeParams?.lutIntensity ?: 1f
        val lchAdjustments = ColorRecipeGl.lchAdjustments(effectiveRecipeParams)
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
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uLutCurve"), LutShaderMappings.transferCurveId(lutConfig?.curve))
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(program, "uLutColorSpace"),
            lutConfig?.colorSpace?.let(LutShaderMappings::colorSpaceId) ?: 0
        )

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
            ShadowsHighlightsShader.bindUniforms(program, highlights, shadows)
            GLES30.glUniform1f(GLES30.glGetUniformLocation(program, "uToneToe"), toneToe)
            GLES30.glUniform1f(GLES30.glGetUniformLocation(program, "uToneShoulder"), toneShoulder)
            GLES30.glUniform1f(GLES30.glGetUniformLocation(program, "uTonePivot"), tonePivot)
            GLES30.glUniform1f(GLES30.glGetUniformLocation(program, "uVignette"), vignette)
            GLES30.glUniform1f(GLES30.glGetUniformLocation(program, "uFlash"), flash)
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
            GLES30.glUniform3f(
                GLES30.glGetUniformLocation(program, "uGradingHues"),
                effectiveRecipeParams.gradingShadowHue,
                effectiveRecipeParams.gradingMidtoneHue,
                effectiveRecipeParams.gradingHighlightHue
            )
            GLES30.glUniform3f(
                GLES30.glGetUniformLocation(program, "uGradingAmounts"),
                effectiveRecipeParams.gradingShadowAmount,
                effectiveRecipeParams.gradingMidtoneAmount,
                effectiveRecipeParams.gradingHighlightAmount
            )
            GLES30.glUniform3f(
                GLES30.glGetUniformLocation(program, "uGradingLuminances"),
                effectiveRecipeParams.gradingShadowLuminance,
                effectiveRecipeParams.gradingMidtoneLuminance,
                effectiveRecipeParams.gradingHighlightLuminance,
            )
            GLES30.glUniform1f(
                GLES30.glGetUniformLocation(program, "uGradingBalance"),
                effectiveRecipeParams.gradingBalance
            )
            GLES30.glUniform1f(
                GLES30.glGetUniformLocation(program, "uGradingBlending"),
                effectiveRecipeParams.gradingBlending
            )
            ColorRecipeGl.bindLchAdjustments(
                uLchHueAdjustmentsLoc,
                uLchChromaAdjustmentsLoc,
                uLchLightnessAdjustmentsLoc,
                lchAdjustments
            )
            GLES30.glUniformMatrix3fv(uPrimaryCalibrationMatrixLoc, 1, false, primaryCalibrationMatrix, 0)
        }

        // 设置曲线纹理（Unit 3）
        val masterPts = effectiveRecipeParams?.masterCurvePoints
        val redPts = effectiveRecipeParams?.redCurvePoints
        val greenPts = effectiveRecipeParams?.greenCurvePoints
        val bluePts = effectiveRecipeParams?.blueCurvePoints
        val curveActive = !CurveUtils.isIdentity(masterPts, redPts, greenPts, bluePts)
        if (curveActive) {
            val curveBuffer = CurveUtils.buildCurveTextureBuffer(masterPts, redPts, greenPts, bluePts)
            curveTextureId = ColorRecipeGl.ensureCurveTextureUploaded(curveTextureId, curveBuffer)
        }
        GLES30.glActiveTexture(GLES30.GL_TEXTURE3)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, if (curveActive) curveTextureId else 0)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uCurveTexture"), 3)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uCurveEnabled"), if (curveActive) 1 else 0)

        basicToneTextures.bind(
            context = appContext,
            textureUnit = 6,
            samplerLocation = GLES30.glGetUniformLocation(program, "uBasicToneLut"),
            intensityLocation = GLES30.glGetUniformLocation(program, "uBasicToneIntensity"),
            amount = effectiveRecipeParams?.let(ColorPaletteMapper::basicToneAmount) ?: 0f,
        )

        // 设置 HDF 参数
        GLES30.glUniform1f(GLES30.glGetUniformLocation(program, "uHalation"), halation)
        if (halation > 0f) {
            GLES30.glActiveTexture(GLES30.GL_TEXTURE2)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, hdfTexId[1])
            GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uHdfTexture"), 2)
        }
        GLES30.glUniform1f(GLES30.glGetUniformLocation(program, "uSoftLight"), softLight)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE5)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, if (softLight > 0f) softLightTexId[1] else 0)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uSoftLightTexture"), 5)

        // 设置 Halation 参数
        GLES30.glUniform1f(GLES30.glGetUniformLocation(program, "uRedHalation"), redHalation)
        if (redHalation > 0f) {
            GLES30.glActiveTexture(GLES30.GL_TEXTURE4)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, halationTexId[1])
            GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uRedHalationTexture"), 4)
        }

        // 设置色散参数
        GLES30.glUniform1f(GLES30.glGetUniformLocation(program, "uChromaticAberration"), chromaticAberration)
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

        val clarityApplied = kotlin.math.abs(clarity) > 0.001f &&
            renderClarity(outputTextureId, width, height, clarity)
        val postClarityTextureId = if (clarityApplied) clarityOutputTextureId else outputTextureId
        val postClarityFramebufferId = if (clarityApplied) clarityOutputFboId else framebufferId

        val sharpened = sharpening > 0f &&
            renderLutSharpenPass(postClarityTextureId, width, height, sharpening)
        val postSharpenTextureId = if (sharpened) lutSharpenTextureId else postClarityTextureId
        val postSharpenFramebufferId = if (sharpened) lutSharpenFboId else postClarityFramebufferId

        val bloomApplied = bloom > 0.001f && renderLdrBloom(postSharpenTextureId, width, height, bloom)
        val postBloomTextureId = if (bloomApplied) bloomOutputTextureId else postSharpenTextureId
        val postBloomFramebufferId = if (bloomApplied) bloomOutputFboId else postSharpenFramebufferId
        val filmGrainOutput = if (filmGrain > 0.001f) {
            filmGrainGl.renderToTexture(
                sourceTextureId = postBloomTextureId,
                width = width,
                height = height,
                amount = filmGrain,
                frameSeed = 0f,
                drawQuad = ::drawQuad,
            )
        } else {
            null
        }
        val readFramebufferId = filmGrainOutput?.framebufferId ?: postBloomFramebufferId

        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, readFramebufferId)
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
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)

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
        releaseLutSharpenFramebuffer()
    }

    private fun setUniform1i(program: Int, name: String, value: Int) {
        val location = GLES30.glGetUniformLocation(program, name)
        if (location >= 0) GLES30.glUniform1i(location, value)
    }

    private fun setUniform1f(program: Int, name: String, value: Float) {
        val location = GLES30.glGetUniformLocation(program, name)
        if (location >= 0) GLES30.glUniform1f(location, value)
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

        val uploadBitmap = bitmap.asGlUploadCompatibleBitmap()
        android.opengl.GLUtils.texImage2D(GLES30.GL_TEXTURE_2D, 0, uploadBitmap, 0)
        if (uploadBitmap !== bitmap) {
            uploadBitmap.recycle()
        }
    }

    private fun Bitmap.asGlUploadCompatibleBitmap(): Bitmap {
        if (config == Bitmap.Config.ARGB_8888 || config == Bitmap.Config.RGB_565) return this
        return runCatching { copy(Bitmap.Config.ARGB_8888, false) }.getOrNull()
            ?: runCatching {
                Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888).also { converted ->
                    android.graphics.Canvas(converted).drawBitmap(this, 0f, 0f, null)
                }
            }.getOrNull()
            ?: this
    }

    private fun uploadImageTextureFromArgb(argbData: ShortBuffer, width: Int, height: Int) {
        if (imageTextureId == 0) {
            val textures = IntArray(1)
            GLES30.glGenTextures(1, textures, 0)
            imageTextureId = textures[0]
        }

        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, imageTextureId)
        // 内部高质量源导出路径希望保持与源像素 1:1 对应，避免在首个 pass 之前先发生隐式重采样。
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
        lutLuminanceGainProgram = createFragmentProgram(
            Shaders.SIMPLE_VERTEX_SHADER,
            LUT_LUMINANCE_GAIN_SHADER,
            "LutLuminanceGain",
        )
    }

    private fun ensureBitmapDenoiseProfilePrograms() {
        if (!computeCapabilitiesChecked) {
            computeCapabilitiesSupported = logAndValidateComputeCapabilities()
            computeCapabilitiesChecked = true
        }
        if (!computeCapabilitiesSupported) {
            ensureBitmapDenoisePassthroughProgram()
            return
        }
        if (bitmapDenoisePreconditionProgram == 0) {
            bitmapDenoisePreconditionProgram = compileComputeProgram(
                DenoiseProfileShaders.PRECONDITION_V2,
                "BitmapDenoise_PreconditionV2",
            )
        }
        if (bitmapDenoiseNlmInitProgram == 0) {
            bitmapDenoiseNlmInitProgram = compileComputeProgram(
                DenoiseProfileShaders.INIT,
                "BitmapDenoise_NLM_Init",
            )
        }
        if (bitmapDenoiseNlmFusedAccuProgram == 0) {
            bitmapDenoiseNlmFusedAccuProgram = compileComputeProgram(
                DenoiseProfileShaders.FUSED_ACCU,
                "BitmapDenoise_NLM_FusedAccu",
            )
        }
        if (bitmapDenoiseNlmFinishProgram == 0) {
            bitmapDenoiseNlmFinishProgram = compileComputeProgram(
                DenoiseProfileShaders.FINISH_V2,
                "BitmapDenoise_NLM_FinishV2",
            )
        }
        ensureBitmapDenoisePassthroughProgram()
        PLog.d(
            TAG,
            "Bitmap denoiseprofile programs initialized: pre=$bitmapDenoisePreconditionProgram " +
                "init=$bitmapDenoiseNlmInitProgram fusedAccu=$bitmapDenoiseNlmFusedAccuProgram " +
                "finish=$bitmapDenoiseNlmFinishProgram " +
                "pass=$bitmapDenoisePassthroughProgram"
        )
    }

    private fun ensureBitmapDenoisePassthroughProgram() {
        if (bitmapDenoisePassthroughProgram == 0) {
            bitmapDenoisePassthroughProgram = createFragmentProgram(
                IMAGE_VERTEX_SHADER,
                TEXTURE_PASSTHROUGH_SHADER,
                "BitmapDenoise_Passthrough",
            )
        }
    }

    private fun ensureBitmapChromaDenoisePrograms() {
        ensureBitmapDenoisePassthroughProgram()
        if (bitmapChromaDenoiseGuideProgram == 0) {
            bitmapChromaDenoiseGuideProgram = createFragmentProgram(
                IMAGE_VERTEX_SHADER,
                ChromaDenoiseShaders.PASS_EDGE_GUIDE,
                "BitmapChromaDenoise_EdgeGuide",
            )
        }
        if (bitmapChromaDenoiseProgram == 0) {
            bitmapChromaDenoiseProgram = createFragmentProgram(
                IMAGE_VERTEX_SHADER,
                ChromaDenoiseShaders.PASS_CHROMA_DENOISE,
                "BitmapChromaDenoise_MultiScale",
            )
        }
    }

    private fun ensureLutSharpenProgram() {
        if (lutSharpenProgram == 0) {
            lutSharpenProgram = createFragmentProgram(
                IMAGE_VERTEX_SHADER,
                RawSharpenPass.FRAGMENT_SHADER,
                "LutSharpen",
            )
        }
    }

    private fun ensureHdfPrograms() {
        if (hdfExtractBlurHProgram == 0) {
            hdfExtractBlurHProgram = createFragmentProgram(
                IMAGE_VERTEX_SHADER,
                HDF_EXTRACT_BLUR_H_SHADER,
                "HdfExtractBlurH",
            )
        }
        ensureHdfBlurVProgram()
    }

    private fun ensureSoftLightPrograms() {
        if (softLightBlurHProgram == 0) {
            softLightBlurHProgram = createFragmentProgram(
                IMAGE_VERTEX_SHADER,
                Shaders.SOFT_LIGHT_PREVIEW_BLUR_H,
                "SoftLightBlurH",
            )
        }
        ensureHdfBlurVProgram()
    }

    private fun ensureHdfBlurVProgram() {
        if (hdfBlurVProgram == 0) {
            hdfBlurVProgram = createFragmentProgram(
                IMAGE_VERTEX_SHADER,
                HDF_BLUR_V_SHADER,
                "HdfBlurV",
            )
        }
    }

    private fun ensureHalationPrograms() {
        if (halationExtractBlurHProgram == 0) {
            halationExtractBlurHProgram = createFragmentProgram(
                IMAGE_VERTEX_SHADER,
                HALATION_EXTRACT_BLUR_H_SHADER,
                "HalationExtractBlurH",
            )
        }
        if (halationBlurVProgram == 0) {
            halationBlurVProgram = createFragmentProgram(
                IMAGE_VERTEX_SHADER,
                HDF_BLUR_V_SHADER,
                "HalationBlurV",
            )
        }
    }

    private fun ensureBloomPrograms() {
        if (bloomDownsampleFirstProgram == 0) {
            bloomDownsampleFirstProgram = createFragmentProgram(
                Shaders.SIMPLE_VERTEX_SHADER,
                Shaders.BEVY_BLOOM_DOWNSAMPLE_FIRST,
                "BloomDownsampleFirst",
            )
        }
        if (bloomDownsampleProgram == 0) {
            bloomDownsampleProgram = createFragmentProgram(
                Shaders.SIMPLE_VERTEX_SHADER,
                Shaders.BEVY_BLOOM_DOWNSAMPLE,
                "BloomDownsample",
            )
        }
        if (bloomUpsampleProgram == 0) {
            bloomUpsampleProgram = createFragmentProgram(
                Shaders.SIMPLE_VERTEX_SHADER,
                Shaders.BEVY_BLOOM_UPSAMPLE,
                "BloomUpsample",
            )
        }
        if (bloomCompositeProgram == 0) {
            bloomCompositeProgram = createFragmentProgram(
                Shaders.SIMPLE_VERTEX_SHADER,
                Shaders.BEVY_BLOOM_COMPOSITE,
                "BloomComposite",
            )
        }
    }

    private fun ensureClarityPrograms() {
        if (clarityDownsampleProgram == 0) {
            clarityDownsampleProgram = createFragmentProgram(
                IMAGE_VERTEX_SHADER,
                ClarityShaders.DOWNSAMPLE,
                "ClarityDownsample",
            )
        }
        if (clarityCompositeProgram == 0) {
            clarityCompositeProgram = createFragmentProgram(
                IMAGE_VERTEX_SHADER,
                ClarityShaders.COMPOSITE,
                "ClarityComposite",
            )
        }
        PLog.d(
            TAG,
            "Static clarity programs initialized: " +
                "downsample=$clarityDownsampleProgram composite=$clarityCompositeProgram",
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
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
    }

    private fun renderBitmapDenoiseProfile(
        sourceTextureId: Int,
        width: Int,
        height: Int,
        noiseReduction: Float
    ) {
        ensureBitmapDenoiseProfilePrograms()
        setupBitmapDenoiseFramebuffers(width, height)

        val strength = DenoiseStrength.clamp(noiseReduction)
        if (strength <= 0f || width * height < 2) {
            renderTexturePassthrough(sourceTextureId, bitmapDenoiseFboId[1], width, height)
            return
        }
        if (!isBitmapDenoiseProfileReady()) {
            renderTexturePassthrough(sourceTextureId, bitmapDenoiseFboId[1], width, height)
            return
        }
        setupBitmapDenoiseResources(width, height)

        val preconditionTextureId = if (sourceTextureId == bitmapDenoiseTexId[0]) {
            bitmapDenoiseTexId[1]
        } else {
            bitmapDenoiseTexId[0]
        }
        val params = buildBitmapDenoiseParams(strength)
        dispatchBitmapDenoisePreconditionV2(sourceTextureId, preconditionTextureId, width, height, params)
        dispatchBitmapDenoiseNlm(sourceTextureId, preconditionTextureId, bitmapDenoiseTexId[1], width, height, params)
        checkGlError("renderBitmapDenoiseProfile")
    }

    private fun renderBitmapChromaDenoise(
        sourceTextureId: Int,
        width: Int,
        height: Int,
        chromaNoiseReduction: Float,
        targetIndex: Int = 0
    ) {
        ensureBitmapChromaDenoisePrograms()
        setupBitmapDenoiseFramebuffers(width, height)

        val strength = DenoiseStrength.clamp(chromaNoiseReduction)
        val target = targetIndex.coerceIn(0, bitmapDenoiseTexId.lastIndex)
        val edgeGuidanceRelaxation =
            ChromaDenoiseDefaults.edgeGuidanceRelaxation(strength)
        if (strength <= 0f || bitmapChromaDenoiseProgram == 0 ||
            bitmapChromaDenoiseGuideProgram == 0
        ) {
            renderTexturePassthrough(sourceTextureId, bitmapDenoiseFboId[target], width, height)
            return
        }

        val identityMatrix = FloatArray(16)
        android.opengl.Matrix.setIdentityM(identityMatrix, 0)
        val h = ChromaDenoiseDefaults.noiseBandwidth(strength)
        val guideIndex = if (target == 0) 1 else 0
        renderBitmapChromaDenoiseEdgeGuide(
            sourceTextureId,
            bitmapDenoiseFboId[guideIndex],
            width,
            height
        )
        val guideTextureId = bitmapDenoiseTexId[guideIndex]

        GLES30.glUseProgram(bitmapChromaDenoiseProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, bitmapDenoiseFboId[target])
        GLES30.glViewport(0, 0, width, height)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, sourceTextureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(bitmapChromaDenoiseProgram, "uInputTexture"), 0)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE1)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, guideTextureId)
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(bitmapChromaDenoiseProgram, "uGuideTexture"),
            1
        )
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
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(bitmapChromaDenoiseProgram, "uOutputStrength"),
            ChromaDenoiseDefaults.outputStrength(strength)
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(
                bitmapChromaDenoiseProgram,
                "uEdgeGuidanceRelaxation"
            ),
            edgeGuidanceRelaxation
        )
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(bitmapChromaDenoiseProgram, "uCameraRgbInput"),
            0
        )
        GLES30.glUniform1f(GLES30.glGetUniformLocation(bitmapChromaDenoiseProgram, "uH"), h)
        GLES30.glUniform4f(
            GLES30.glGetUniformLocation(bitmapChromaDenoiseProgram, "uNoiseModelRB"),
            BITMAP_DENOISE_A * 2f,
            BITMAP_DENOISE_B * 2f,
            BITMAP_DENOISE_A * 2f,
            BITMAP_DENOISE_B * 2f
        )
        GLES30.glUniform2f(
            GLES30.glGetUniformLocation(bitmapChromaDenoiseProgram, "uNoiseModelG"),
            BITMAP_DENOISE_A * 2f,
            BITMAP_DENOISE_B * 2f
        )
        drawQuad(bitmapChromaDenoiseProgram)
        checkGlError("renderBitmapChromaDenoise")
    }

    private fun renderBitmapChromaDenoiseEdgeGuide(
        sourceTextureId: Int,
        targetFramebufferId: Int,
        width: Int,
        height: Int,
    ) {
        GLES30.glUseProgram(bitmapChromaDenoiseGuideProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, targetFramebufferId)
        GLES30.glViewport(0, 0, width, height)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, sourceTextureId)
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(bitmapChromaDenoiseGuideProgram, "uInputTexture"),
            0
        )
        GLES30.glUniform2f(
            GLES30.glGetUniformLocation(bitmapChromaDenoiseGuideProgram, "uTexelSize"),
            1.0f / width,
            1.0f / height
        )
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(bitmapChromaDenoiseGuideProgram, "uCameraRgbInput"),
            0
        )
        val identityMatrix = FloatArray(16)
        android.opengl.Matrix.setIdentityM(identityMatrix, 0)
        GLES30.glUniformMatrix4fv(
            GLES30.glGetUniformLocation(bitmapChromaDenoiseGuideProgram, "uMVPMatrix"),
            1,
            false,
            identityMatrix,
            0
        )
        drawQuad(bitmapChromaDenoiseGuideProgram)
        checkGlError("renderBitmapChromaDenoiseEdgeGuide")
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

    private fun setupLutSharpenFramebuffer(width: Int, height: Int): Boolean {
        if (lutSharpenFboId != 0 &&
            lutSharpenTextureId != 0 &&
            lutSharpenWidth == width &&
            lutSharpenHeight == height
        ) {
            return true
        }

        releaseLutSharpenFramebuffer()

        val textures = IntArray(1)
        GLES30.glGenTextures(1, textures, 0)
        lutSharpenTextureId = textures[0]
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, lutSharpenTextureId)
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
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)

        val framebuffers = IntArray(1)
        GLES30.glGenFramebuffers(1, framebuffers, 0)
        lutSharpenFboId = framebuffers[0]
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, lutSharpenFboId)
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER,
            GLES30.GL_COLOR_ATTACHMENT0,
            GLES30.GL_TEXTURE_2D,
            lutSharpenTextureId,
            0
        )

        val status = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER)
        if (status != GLES30.GL_FRAMEBUFFER_COMPLETE) {
            PLog.e(TAG, "LUT sharpen FBO incomplete: $status")
            releaseLutSharpenFramebuffer()
            return false
        }

        lutSharpenWidth = width
        lutSharpenHeight = height
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        return true
    }

    private fun renderLutSharpenPass(
        sourceTextureId: Int,
        width: Int,
        height: Int,
        sharpening: Float
    ): Boolean {
        if (sharpening <= 0f) return false
        ensureLutSharpenProgram()
        if (lutSharpenProgram == 0 || !setupLutSharpenFramebuffer(width, height)) {
            return false
        }

        val identityMatrix = FloatArray(16)
        android.opengl.Matrix.setIdentityM(identityMatrix, 0)

        GLES30.glDisable(GLES30.GL_BLEND)
        GLES30.glUseProgram(lutSharpenProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, lutSharpenFboId)
        GLES30.glViewport(0, 0, width, height)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, sourceTextureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(lutSharpenProgram, "uInputTexture"), 0)
        GLES30.glUniform2f(
            GLES30.glGetUniformLocation(lutSharpenProgram, "uTexelSize"),
            1.0f / width,
            1.0f / height
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(lutSharpenProgram, "uSharpening"),
            sharpening
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(lutSharpenProgram, "uRadius"),
            RawSharpenPass.DEFAULT_RADIUS
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(lutSharpenProgram, "uThreshold"),
            RawSharpenPass.DEFAULT_THRESHOLD
        )
        GLES30.glUniformMatrix4fv(
            GLES30.glGetUniformLocation(lutSharpenProgram, "uMVPMatrix"),
            1,
            false,
            identityMatrix,
            0
        )
        drawQuad(lutSharpenProgram)

        val error = GLES30.glGetError()
        if (error != GLES30.GL_NO_ERROR) {
            PLog.e(TAG, "renderLutSharpenPass: glError $error")
            return false
        }
        return true
    }

    private fun releaseLutSharpenFramebuffer() {
        if (lutSharpenFboId != 0) {
            GLES30.glDeleteFramebuffers(1, intArrayOf(lutSharpenFboId), 0)
            lutSharpenFboId = 0
        }
        if (lutSharpenTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(lutSharpenTextureId), 0)
            lutSharpenTextureId = 0
        }
        lutSharpenWidth = 0
        lutSharpenHeight = 0
    }

    private data class BitmapDenoiseParams(
        val strength: Float,
        val patchRadius: Int,
        val expectedFineDistance: Float,
        val expectedGuideDistance: Float,
        val inverseBandwidth: Float,
        val coarseGuideWeight: Float,
        val centralPixelWeight: Float,
        val p: FloatArray,
        val signalScale: FloatArray,
        val aa: FloatArray,
        val bb: FloatArray,
        val bias: Float,
        val scale: Float
    )

    private fun isBitmapDenoiseProfileReady(): Boolean {
        return bitmapDenoisePreconditionProgram != 0 &&
            bitmapDenoiseNlmInitProgram != 0 &&
            bitmapDenoiseNlmFusedAccuProgram != 0 &&
            bitmapDenoiseNlmFinishProgram != 0 &&
            bitmapDenoisePassthroughProgram != 0
    }

    private fun setupBitmapDenoiseResources(width: Int, height: Int) {
        val pixelCount = width * height
        if (
            bitmapDenoiseNlmBufferPixels == pixelCount &&
            bitmapDenoiseNlmU2BufferId != 0
        ) {
            return
        }

        if (bitmapDenoiseNlmU2BufferId != 0) {
            GLES31.glDeleteBuffers(1, intArrayOf(bitmapDenoiseNlmU2BufferId), 0)
            bitmapDenoiseNlmU2BufferId = 0
        }

        val buffers = IntArray(1)
        GLES31.glGenBuffers(buffers.size, buffers, 0)
        bitmapDenoiseNlmU2BufferId = buffers[0]

        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, bitmapDenoiseNlmU2BufferId)
        GLES31.glBufferData(GLES31.GL_SHADER_STORAGE_BUFFER, pixelCount * 4 * 4, null, GLES31.GL_DYNAMIC_DRAW)
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
        bitmapDenoiseNlmBufferPixels = pixelCount
    }

    private fun buildBitmapDenoiseParams(strengthValue: Float): BitmapDenoiseParams {
        val strength = DenoiseStrength.clamp(strengthValue)
        val varianceScale = DenoiseStrength.noiseVarianceScale(strength)
        val a = BITMAP_DENOISE_A * varianceScale
        val b = BITMAP_DENOISE_B * varianceScale
        val scale = 1.0f
        val shadows = max(0.1f - 0.1f * ln(a), 0.7f).coerceAtMost(1.8f)
        val bias = -max(5f + 0.5f * ln(a), 0.0f)
        val compensateP = 0.05f / 0.05f.pow(shadows)
        val patchRadius = DenoiseProfileShaders.PATCH_RADIUS
        val weightTuning = DenoiseProfileNlmConfig.weightTuning(patchRadius)
        val centralPixelWeight = 0.1f * scale
        return BitmapDenoiseParams(
            strength = DenoiseStrength.outputMix(strength),
            patchRadius = patchRadius,
            expectedFineDistance = weightTuning.expectedFineDistance,
            expectedGuideDistance = weightTuning.expectedGuideDistance,
            inverseBandwidth = weightTuning.inverseBandwidth,
            coarseGuideWeight = weightTuning.coarseGuideWeight,
            centralPixelWeight = centralPixelWeight,
            p = floatArrayOf(shadows, shadows, shadows, 1.0f),
            signalScale = floatArrayOf(
                scale,
                scale,
                scale,
                1.0f
            ),
            aa = floatArrayOf(a * compensateP, a * compensateP, a * compensateP, 1.0f),
            bb = floatArrayOf(b, b, b, 1.0f),
            bias = bias,
            scale = scale
        )
    }

    private fun dispatchBitmapDenoisePreconditionV2(input: Int, output: Int, width: Int, height: Int, params: BitmapDenoiseParams) {
        GLES31.glUseProgram(bitmapDenoisePreconditionProgram)
        bindComputeSampler(bitmapDenoisePreconditionProgram, "uInput", 0, input)
        GLES31.glBindImageTexture(1, output, 0, false, 0, GLES31.GL_WRITE_ONLY, GLES31.GL_RGBA16F)
        setBitmapDenoiseCommonUniforms(bitmapDenoisePreconditionProgram, width, height, params)
        dispatchBitmapDenoiseImage(width, height, "BitmapDenoise NLM precondition")
    }

    private fun dispatchBitmapDenoiseNlm(
        originalTextureId: Int,
        preconditionedTextureId: Int,
        outputTextureId: Int,
        width: Int,
        height: Int,
        params: BitmapDenoiseParams
    ) {
        dispatchBitmapDenoiseNlmInit(width, height)

        for (offset in DenoiseProfileNlmConfig.searchOffsets) {
            dispatchBitmapDenoiseNlmFusedAccumulate(
                preconditionedTextureId,
                width,
                height,
                offset.x,
                offset.y,
                params
            )
        }

        dispatchBitmapDenoiseNlmFinish(originalTextureId, outputTextureId, width, height, params)
    }

    private fun dispatchBitmapDenoiseNlmInit(width: Int, height: Int) {
        GLES31.glUseProgram(bitmapDenoiseNlmInitProgram)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, bitmapDenoiseNlmU2BufferId)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(bitmapDenoiseNlmInitProgram, "uImageSize"), width, height)
        setBitmapDenoiseStripeUniforms(bitmapDenoiseNlmInitProgram, height)
        dispatchBitmapDenoiseImage(width, height, "BitmapDenoise NLM init")
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
    }

    private fun dispatchBitmapDenoiseNlmFusedAccumulate(
        input: Int,
        width: Int,
        height: Int,
        qx: Int,
        qy: Int,
        params: BitmapDenoiseParams
    ) {
        GLES31.glUseProgram(bitmapDenoiseNlmFusedAccuProgram)
        bindComputeSampler(bitmapDenoiseNlmFusedAccuProgram, "uInput", 0, input)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, bitmapDenoiseNlmU2BufferId)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(bitmapDenoiseNlmFusedAccuProgram, "uImageSize"), width, height)
        setBitmapDenoiseStripeUniforms(bitmapDenoiseNlmFusedAccuProgram, height)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(bitmapDenoiseNlmFusedAccuProgram, "uQ"), qx, qy)
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(bitmapDenoiseNlmFusedAccuProgram, "uExpectedFineDistance"),
            params.expectedFineDistance
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(bitmapDenoiseNlmFusedAccuProgram, "uExpectedGuideDistance"),
            params.expectedGuideDistance
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(bitmapDenoiseNlmFusedAccuProgram, "uInverseBandwidth"),
            params.inverseBandwidth
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(bitmapDenoiseNlmFusedAccuProgram, "uCoarseGuideWeight"),
            params.coarseGuideWeight
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(bitmapDenoiseNlmFusedAccuProgram, "uCentralPixelWeight"),
            params.centralPixelWeight
        )
        dispatchBitmapDenoiseImage(width, height, "BitmapDenoise NLM fused accu q=($qx,$qy)")
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
    }

    private fun dispatchBitmapDenoiseNlmFinish(input: Int, output: Int, width: Int, height: Int, params: BitmapDenoiseParams) {
        GLES31.glUseProgram(bitmapDenoiseNlmFinishProgram)
        bindComputeSampler(bitmapDenoiseNlmFinishProgram, "uInput", 0, input)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, bitmapDenoiseNlmU2BufferId)
        GLES31.glBindImageTexture(1, output, 0, false, 0, GLES31.GL_WRITE_ONLY, GLES31.GL_RGBA16F)
        setBitmapDenoiseCommonUniforms(bitmapDenoiseNlmFinishProgram, width, height, params)
        setBitmapDenoiseStripeUniforms(bitmapDenoiseNlmFinishProgram, height)
        GLES31.glUniform1f(GLES31.glGetUniformLocation(bitmapDenoiseNlmFinishProgram, "uBias"), params.bias - 0.5f * ln(params.scale))
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(bitmapDenoiseNlmFinishProgram, "uDenoiseMix"),
            params.strength
        )
        dispatchBitmapDenoiseImage(width, height, "BitmapDenoise NLM finish")
    }

    private fun setBitmapDenoiseStripeUniforms(program: Int, height: Int) {
        GLES31.glUniform1i(GLES31.glGetUniformLocation(program, "uStripeRowOffset"), 0)
        GLES31.glUniform1i(GLES31.glGetUniformLocation(program, "uStripeRowCount"), height)
    }

    private fun setBitmapDenoiseCommonUniforms(program: Int, width: Int, height: Int, params: BitmapDenoiseParams) {
        GLES31.glUniform2i(GLES31.glGetUniformLocation(program, "uImageSize"), width, height)
        GLES31.glUniform4fv(GLES31.glGetUniformLocation(program, "uA"), 1, params.aa, 0)
        GLES31.glUniform4fv(GLES31.glGetUniformLocation(program, "uP"), 1, params.p, 0)
        GLES31.glUniform4fv(GLES31.glGetUniformLocation(program, "uB"), 1, params.bb, 0)
        GLES31.glUniform4fv(
            GLES31.glGetUniformLocation(program, "uSignalScale"),
            1,
            params.signalScale,
            0
        )
    }

    private fun bindComputeSampler(program: Int, name: String, unit: Int, textureId: Int) {
        GLES31.glActiveTexture(GLES31.GL_TEXTURE0 + unit)
        GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, textureId)
        GLES31.glUniform1i(GLES31.glGetUniformLocation(program, name), unit)
    }

    private fun dispatchBitmapDenoiseImage(width: Int, height: Int, tag: String) {
        GLES31.glDispatchCompute(
            GlesComputeWorkGroup.imageGroupCount(width),
            GlesComputeWorkGroup.imageGroupCount(height),
            1,
        )
        GLES31.glMemoryBarrier(
            GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT or
                GLES31.GL_TEXTURE_FETCH_BARRIER_BIT or
                GLES31.GL_FRAMEBUFFER_BARRIER_BIT
        )
        checkGlError(tag)
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

    private fun setupSoftLightFramebuffers(width: Int, height: Int) {
        val dsW = max(1, width / 4)
        val dsH = max(1, height / 4)
        if (softLightWidth == dsW && softLightHeight == dsH && softLightTexId[0] != 0) return
        softLightWidth = dsW
        softLightHeight = dsH

        for (i in 0..1) {
            if (softLightTexId[i] != 0) GLES30.glDeleteTextures(1, intArrayOf(softLightTexId[i]), 0)
            if (softLightFboId[i] != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(softLightFboId[i]), 0)
        }

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
            softLightTexId[i] = t[0]
            softLightFboId[i] = f[0]
        }

        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
    }

    private fun setupClarityFramebuffers(width: Int, height: Int): Boolean {
        if (
            clarityOutputWidth == width &&
            clarityOutputHeight == height &&
            clarityOutputTextureId != 0 &&
            clarityPyramidTexId.all { it != 0 }
        ) {
            return true
        }

        val maxTextureSize = IntArray(1)
        GLES30.glGetIntegerv(GLES30.GL_MAX_TEXTURE_SIZE, maxTextureSize, 0)
        if (width <= 0 || height <= 0 || width > maxTextureSize[0] || height > maxTextureSize[0]) {
            PLog.e(
                TAG,
                "Clarity target ${width}x$height exceeds GL_MAX_TEXTURE_SIZE=${maxTextureSize[0]}",
            )
            return false
        }

        releaseClarityFramebuffers()
        var levelWidth = width
        var levelHeight = height
        for (level in 0 until CLARITY_PYRAMID_LEVELS) {
            levelWidth = max(1, (levelWidth + 1) / 2)
            levelHeight = max(1, (levelHeight + 1) / 2)
            val target = createClarityFramebuffer(
                width = levelWidth,
                height = levelHeight,
                internalFormat = GLES30.GL_RGBA16F,
                label = "pyramid[$level]",
            ) ?: run {
                releaseClarityFramebuffers()
                return false
            }
            clarityPyramidTexId[level] = target.first
            clarityPyramidFboId[level] = target.second
            clarityPyramidWidths[level] = levelWidth
            clarityPyramidHeights[level] = levelHeight
        }

        val output = createClarityFramebuffer(
            width = width,
            height = height,
            internalFormat = GLES30.GL_RGBA8,
            label = "output",
        ) ?: run {
            releaseClarityFramebuffers()
            return false
        }
        clarityOutputTextureId = output.first
        clarityOutputFboId = output.second
        clarityOutputWidth = width
        clarityOutputHeight = height
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        return true
    }

    private fun createClarityFramebuffer(
        width: Int,
        height: Int,
        internalFormat: Int,
        label: String,
    ): Pair<Int, Int>? {
        val texture = IntArray(1)
        val framebuffer = IntArray(1)
        GLES30.glGenTextures(1, texture, 0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture[0])
        GLES30.glTexStorage2D(GLES30.GL_TEXTURE_2D, 1, internalFormat, width, height)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)

        GLES30.glGenFramebuffers(1, framebuffer, 0)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebuffer[0])
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER,
            GLES30.GL_COLOR_ATTACHMENT0,
            GLES30.GL_TEXTURE_2D,
            texture[0],
            0,
        )
        val status = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER)
        val error = GLES30.glGetError()
        if (status != GLES30.GL_FRAMEBUFFER_COMPLETE || error != GLES30.GL_NO_ERROR) {
            PLog.e(
                TAG,
                "Clarity $label framebuffer allocation failed: status=$status glError=$error",
            )
            GLES30.glDeleteFramebuffers(1, framebuffer, 0)
            GLES30.glDeleteTextures(1, texture, 0)
            return null
        }
        return texture[0] to framebuffer[0]
    }

    private fun releaseClarityFramebuffers() {
        for (level in 0 until CLARITY_PYRAMID_LEVELS) {
            if (clarityPyramidTexId[level] != 0) {
                GLES30.glDeleteTextures(1, intArrayOf(clarityPyramidTexId[level]), 0)
                clarityPyramidTexId[level] = 0
            }
            if (clarityPyramidFboId[level] != 0) {
                GLES30.glDeleteFramebuffers(1, intArrayOf(clarityPyramidFboId[level]), 0)
                clarityPyramidFboId[level] = 0
            }
            clarityPyramidWidths[level] = 0
            clarityPyramidHeights[level] = 0
        }
        if (clarityOutputTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(clarityOutputTextureId), 0)
            clarityOutputTextureId = 0
        }
        if (clarityOutputFboId != 0) {
            GLES30.glDeleteFramebuffers(1, intArrayOf(clarityOutputFboId), 0)
            clarityOutputFboId = 0
        }
        clarityOutputWidth = 0
        clarityOutputHeight = 0
    }

    private fun renderClarity(
        sourceTextureId: Int,
        width: Int,
        height: Int,
        clarity: Float,
    ): Boolean {
        ensureClarityPrograms()
        if (clarityDownsampleProgram == 0 || clarityCompositeProgram == 0) {
            return false
        }
        val upstreamError = GLES30.glGetError()
        if (upstreamError != GLES30.GL_NO_ERROR) {
            PLog.e(TAG, "renderClarity skipped after upstream glError $upstreamError")
            return false
        }
        if (!setupClarityFramebuffers(width, height)) return false

        val identityMatrix = FloatArray(16)
        android.opengl.Matrix.setIdentityM(identityMatrix, 0)
        GLES30.glDisable(GLES30.GL_BLEND)

        var inputTextureId = sourceTextureId
        var inputWidth = width
        var inputHeight = height
        for (level in 0 until CLARITY_PYRAMID_LEVELS) {
            GLES30.glUseProgram(clarityDownsampleProgram)
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, clarityPyramidFboId[level])
            GLES30.glViewport(0, 0, clarityPyramidWidths[level], clarityPyramidHeights[level])
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, inputTextureId)
            GLES30.glUniform1i(
                GLES30.glGetUniformLocation(clarityDownsampleProgram, "uInputTexture"),
                0,
            )
            GLES30.glUniform2f(
                GLES30.glGetUniformLocation(clarityDownsampleProgram, "uInputTexelSize"),
                1f / inputWidth,
                1f / inputHeight,
            )
            GLES30.glUniform1i(
                GLES30.glGetUniformLocation(clarityDownsampleProgram, "uInputIsLuma"),
                if (level == 0) 0 else 1,
            )
            GLES30.glUniformMatrix4fv(
                GLES30.glGetUniformLocation(clarityDownsampleProgram, "uMVPMatrix"),
                1,
                false,
                identityMatrix,
                0,
            )
            drawQuad(clarityDownsampleProgram)
            val error = GLES30.glGetError()
            if (error != GLES30.GL_NO_ERROR) {
                GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
                PLog.e(TAG, "renderClarity pyramid[$level] glError $error")
                return false
            }
            inputTextureId = clarityPyramidTexId[level]
            inputWidth = clarityPyramidWidths[level]
            inputHeight = clarityPyramidHeights[level]
        }

        GLES30.glUseProgram(clarityCompositeProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, clarityOutputFboId)
        GLES30.glViewport(0, 0, width, height)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, sourceTextureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(clarityCompositeProgram, "uInputTexture"), 0)
        val lumaUniforms = arrayOf(
            "uFineLumaTexture",
            "uMediumLumaTexture",
            "uCoarseLumaTexture",
        )
        for (level in 0 until CLARITY_PYRAMID_LEVELS) {
            val textureUnit = level + 1
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + textureUnit)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, clarityPyramidTexId[level])
            GLES30.glUniform1i(
                GLES30.glGetUniformLocation(clarityCompositeProgram, lumaUniforms[level]),
                textureUnit,
            )
        }
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(clarityCompositeProgram, "uClarity"),
            clarity.coerceIn(-1f, 1f),
        )
        GLES30.glUniformMatrix4fv(
            GLES30.glGetUniformLocation(clarityCompositeProgram, "uMVPMatrix"),
            1,
            false,
            identityMatrix,
            0,
        )
        drawQuad(clarityCompositeProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        val error = GLES30.glGetError()
        if (error != GLES30.GL_NO_ERROR) {
            PLog.e(TAG, "renderClarity glError $error")
            return false
        }
        return true
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

    private fun renderSoftLightBlur(
        sourceTexId: Int,
        width: Int,
        height: Int
    ) {
        ensureSoftLightPrograms()
        setupSoftLightFramebuffers(width, height)
        if (softLightBlurHProgram == 0 || hdfBlurVProgram == 0) return

        val dsW = softLightWidth
        val dsH = softLightHeight
        val texelW = 1.0f / dsW
        val texelH = 1.0f / dsH

        val identityMatrix = FloatArray(16)
        android.opengl.Matrix.setIdentityM(identityMatrix, 0)

        GLES30.glUseProgram(softLightBlurHProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, softLightFboId[0])
        GLES30.glViewport(0, 0, dsW, dsH)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, sourceTexId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(softLightBlurHProgram, "uInputTexture"), 0)
        GLES30.glUniform2f(GLES30.glGetUniformLocation(softLightBlurHProgram, "uTexelSize"), texelW, texelH)
        GLES30.glUniformMatrix4fv(
            GLES30.glGetUniformLocation(softLightBlurHProgram, "uMVPMatrix"), 1, false, identityMatrix, 0
        )
        drawQuad(softLightBlurHProgram)

        GLES30.glUseProgram(hdfBlurVProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, softLightFboId[1])
        GLES30.glViewport(0, 0, dsW, dsH)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, softLightTexId[0])
        GLES30.glUniform1i(GLES30.glGetUniformLocation(hdfBlurVProgram, "uInputTexture"), 0)
        GLES30.glUniform2f(GLES30.glGetUniformLocation(hdfBlurVProgram, "uTexelSize"), texelW, texelH)
        GLES30.glUniformMatrix4fv(
            GLES30.glGetUniformLocation(hdfBlurVProgram, "uMVPMatrix"), 1, false, identityMatrix, 0
        )
        drawQuad(hdfBlurVProgram)

        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        checkGlError("renderSoftLightBlur")
    }

    private fun renderHalationBlur(
        sourceTexId: Int,
        width: Int,
        height: Int,
        halation: Float
    ) {
        ensureHalationPrograms()
        setupHalationFramebuffers(width, height)
        if (halationExtractBlurHProgram == 0 || halationBlurVProgram == 0) return

        val dsW = width / 4
        val dsH = height / 4
        val texelW = 1.0f / dsW
        val texelH = 1.0f / dsH
        
        val threshold = 0.72f - halation.coerceIn(0f, 1f) * 0.22f

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
        ensureHdfPrograms()
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

    private fun setupBloomOutputFramebuffer(width: Int, height: Int): Boolean {
        if (bloomOutputFboId != 0 &&
            bloomOutputTextureId != 0 &&
            bloomOutputWidth == width &&
            bloomOutputHeight == height
        ) {
            return true
        }
        if (bloomOutputFboId != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(bloomOutputFboId), 0)
        if (bloomOutputTextureId != 0) GLES30.glDeleteTextures(1, intArrayOf(bloomOutputTextureId), 0)
        val f = IntArray(1)
        val t = IntArray(1)
        GLES30.glGenTextures(1, t, 0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, t[0])
        GLES30.glTexImage2D(GLES30.GL_TEXTURE_2D, 0, GLES30.GL_RGBA, width, height, 0, GLES30.GL_RGBA, GLES30.GL_UNSIGNED_BYTE, null)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glGenFramebuffers(1, f, 0)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, f[0])
        GLES30.glFramebufferTexture2D(GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0, GLES30.GL_TEXTURE_2D, t[0], 0)
        val status = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER)
        if (status != GLES30.GL_FRAMEBUFFER_COMPLETE) {
            PLog.e(TAG, "Bloom output framebuffer not complete: $status")
            if (f[0] != 0) GLES30.glDeleteFramebuffers(1, f, 0)
            if (t[0] != 0) GLES30.glDeleteTextures(1, t, 0)
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
            return false
        }
        bloomOutputTextureId = t[0]
        bloomOutputFboId = f[0]
        bloomOutputWidth = width
        bloomOutputHeight = height
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        return true
    }

    private fun setupBloomFramebuffers(width: Int, height: Int): Boolean {
        val maxMipDimension = BloomLdrSettings.MAX_MIP_DIMENSION
        val scale = maxMipDimension.toFloat() / maxOf(1, height).toFloat()
        var mipWidth = (width * scale).toInt().coerceAtLeast(1)
        var mipHeight = (height * scale).toInt().coerceAtLeast(1)
        val widths = mutableListOf<Int>()
        val heights = mutableListOf<Int>()
        repeat(BloomLdrSettings.MIP_COUNT) {
            widths += mipWidth
            heights += mipHeight
            mipWidth = maxOf(1, mipWidth / 2)
            mipHeight = maxOf(1, mipHeight / 2)
        }
        val nextWidths = widths.toIntArray()
        val nextHeights = heights.toIntArray()
        if (bloomSourceWidth == width &&
            bloomSourceHeight == height &&
            bloomTexId.isNotEmpty() &&
            bloomMipWidths.contentEquals(nextWidths) &&
            bloomMipHeights.contentEquals(nextHeights)
        ) {
            return true
        }
        releaseBloomFramebuffers()
        bloomSourceWidth = width
        bloomSourceHeight = height
        bloomMipCount = nextWidths.size
        bloomMipWidths = nextWidths
        bloomMipHeights = nextHeights
        bloomTexId = IntArray(bloomMipCount)
        bloomFboId = IntArray(bloomMipCount)
        for (i in 0 until bloomMipCount) {
            val t = IntArray(1)
            val f = IntArray(1)
            GLES30.glGenTextures(1, t, 0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, t[0])
            GLES30.glTexImage2D(
                GLES30.GL_TEXTURE_2D,
                0,
                GLES30.GL_RGBA16F,
                bloomMipWidths[i],
                bloomMipHeights[i],
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
            GLES30.glFramebufferTexture2D(GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0, GLES30.GL_TEXTURE_2D, t[0], 0)
            bloomTexId[i] = t[0]
            bloomFboId[i] = f[0]
            val status = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER)
            if (status != GLES30.GL_FRAMEBUFFER_COMPLETE) {
                PLog.e(TAG, "Bloom mip framebuffer[$i] not complete: $status")
                releaseBloomFramebuffers()
                GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
                GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
                return false
            }
        }
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        return true
    }

    private fun releaseBloomFramebuffers() {
        for (textureId in bloomTexId) {
            if (textureId != 0) GLES30.glDeleteTextures(1, intArrayOf(textureId), 0)
        }
        for (fboId in bloomFboId) {
            if (fboId != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(fboId), 0)
        }
        bloomTexId = IntArray(0)
        bloomFboId = IntArray(0)
        bloomMipWidths = IntArray(0)
        bloomMipHeights = IntArray(0)
        bloomMipCount = 0
        bloomSourceWidth = 0
        bloomSourceHeight = 0
    }

    private fun renderLdrBloom(sourceTextureId: Int, width: Int, height: Int, bloomStrength: Float): Boolean {
        ensureBloomPrograms()
        if (!setupBloomFramebuffers(width, height)) {
            return false
        }
        if (!setupBloomOutputFramebuffer(width, height)) {
            return false
        }
        if (bloomMipCount <= 0 || bloomDownsampleFirstProgram == 0 || bloomDownsampleProgram == 0 || bloomUpsampleProgram == 0 || bloomCompositeProgram == 0) {
            return false
        }

        GLES30.glDisable(GLES30.GL_BLEND)
        GLES30.glUseProgram(bloomDownsampleFirstProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, bloomFboId[0])
        GLES30.glViewport(0, 0, bloomMipWidths[0], bloomMipHeights[0])
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, sourceTextureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(bloomDownsampleFirstProgram, "uInputTexture"), 0)
        GLES30.glUniform2f(GLES30.glGetUniformLocation(bloomDownsampleFirstProgram, "uInputTexelSize"), 1f / width, 1f / height)
        val thresholdPrecomputations = BloomLdrSettings.thresholdPrecomputations()
        GLES30.glUniform4f(
            GLES30.glGetUniformLocation(bloomDownsampleFirstProgram, "uThreshold"),
            thresholdPrecomputations[0],
            thresholdPrecomputations[1],
            thresholdPrecomputations[2],
            thresholdPrecomputations[3]
        )
        drawQuad(bloomDownsampleFirstProgram)

        for (mip in 1 until bloomMipCount) {
            GLES30.glUseProgram(bloomDownsampleProgram)
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, bloomFboId[mip])
            GLES30.glViewport(0, 0, bloomMipWidths[mip], bloomMipHeights[mip])
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, bloomTexId[mip - 1])
            GLES30.glUniform1i(GLES30.glGetUniformLocation(bloomDownsampleProgram, "uInputTexture"), 0)
            GLES30.glUniform2f(GLES30.glGetUniformLocation(bloomDownsampleProgram, "uInputTexelSize"), 1f / bloomMipWidths[mip - 1], 1f / bloomMipHeights[mip - 1])
            drawQuad(bloomDownsampleProgram)
        }

        GLES30.glEnable(GLES30.GL_BLEND)
        GLES30.glBlendEquation(GLES30.GL_FUNC_ADD)
        GLES30.glBlendFunc(GLES30.GL_CONSTANT_COLOR, GLES30.GL_ONE)
        GLES30.glUseProgram(bloomUpsampleProgram)
        for (mip in bloomMipCount - 1 downTo 1) {
            val blend = BloomLdrSettings.mipAddWeight(mip, bloomMipCount, bloomStrength)
            GLES30.glBlendColor(blend, blend, blend, blend)
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, bloomFboId[mip - 1])
            GLES30.glViewport(0, 0, bloomMipWidths[mip - 1], bloomMipHeights[mip - 1])
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, bloomTexId[mip])
            GLES30.glUniform1i(GLES30.glGetUniformLocation(bloomUpsampleProgram, "uInputTexture"), 0)
            GLES30.glUniform2f(GLES30.glGetUniformLocation(bloomUpsampleProgram, "uInputTexelSize"), 1f / bloomMipWidths[mip], 1f / bloomMipHeights[mip])
            drawQuad(bloomUpsampleProgram)
        }
        GLES30.glDisable(GLES30.GL_BLEND)

        val finalBlend = BloomLdrSettings.compositeStrength(bloomStrength)
        val compositeMipLower = BloomLdrSettings.compositeMipLowerIndex(bloomMipCount, bloomStrength)
        val compositeMipUpper = BloomLdrSettings.compositeMipUpperIndex(bloomMipCount, bloomStrength)
        val compositeMipBlend = BloomLdrSettings.compositeMipBlend(bloomMipCount, bloomStrength)
        if (bitmapDenoisePassthroughProgram == 0) {
            return false
        }
        renderTexturePassthrough(sourceTextureId, bloomOutputFboId, width, height)
        GLES30.glEnable(GLES30.GL_BLEND)
        GLES30.glBlendEquation(GLES30.GL_FUNC_ADD)
        GLES30.glBlendFunc(GLES30.GL_ONE, GLES30.GL_ONE)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, bloomOutputFboId)
        GLES30.glViewport(0, 0, width, height)
        GLES30.glUseProgram(bloomCompositeProgram)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, bloomTexId[compositeMipLower])
        GLES30.glUniform1i(GLES30.glGetUniformLocation(bloomCompositeProgram, "uBloomTexture"), 0)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE1)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, bloomTexId[compositeMipUpper])
        GLES30.glUniform1i(GLES30.glGetUniformLocation(bloomCompositeProgram, "uBloomTextureNext"), 1)
        GLES30.glUniform2f(
            GLES30.glGetUniformLocation(bloomCompositeProgram, "uBloomTexelSize"),
            1f / bloomMipWidths[compositeMipLower],
            1f / bloomMipHeights[compositeMipLower]
        )
        GLES30.glUniform2f(
            GLES30.glGetUniformLocation(bloomCompositeProgram, "uBloomTexelSizeNext"),
            1f / bloomMipWidths[compositeMipUpper],
            1f / bloomMipHeights[compositeMipUpper]
        )
        GLES30.glUniform1f(GLES30.glGetUniformLocation(bloomCompositeProgram, "uBlend"), finalBlend)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(bloomCompositeProgram, "uMipBlend"), compositeMipBlend)
        drawQuad(bloomCompositeProgram)
        GLES30.glDisable(GLES30.GL_BLEND)
        val error = GLES30.glGetError()
        if (error != GLES30.GL_NO_ERROR) {
            PLog.e(TAG, "renderLdrBloom final composite glError $error")
            return false
        }
        return true
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
        GlesComputeWorkGroup.requireBaselineCompatible(source, name)
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

    private fun logAndValidateComputeCapabilities(): Boolean {
        val vendor = GLES30.glGetString(GLES30.GL_VENDOR).orEmpty()
        val renderer = GLES30.glGetString(GLES30.GL_RENDERER).orEmpty()
        val version = GLES30.glGetString(GLES30.GL_VERSION).orEmpty()
        val shadingLanguageVersion =
            GLES30.glGetString(GLES30.GL_SHADING_LANGUAGE_VERSION).orEmpty()
        PLog.i(
            TAG,
            "GL compute device: vendor=$vendor renderer=$renderer version=$version " +
                "glsl=$shadingLanguageVersion",
        )
        if (!version.contains("OpenGL ES 3.1") && !version.contains("OpenGL ES 3.2")) {
            PLog.e(TAG, "Bitmap denoise requires OpenGL ES 3.1+, got: $version")
            return false
        }

        val value = IntArray(1)
        GLES30.glGetIntegerv(GLES31.GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS, value, 0)
        val maxInvocations = value[0]
        GLES30.glGetIntegerv(GLES31.GL_MAX_COMPUTE_SHARED_MEMORY_SIZE, value, 0)
        val maxSharedMemory = value[0]
        val maxSize = IntArray(3)
        for (axis in maxSize.indices) {
            GLES30.glGetIntegeri_v(
                GLES31.GL_MAX_COMPUTE_WORK_GROUP_SIZE,
                axis,
                value,
                0,
            )
            maxSize[axis] = value[0]
        }
        PLog.i(
            TAG,
            "GL compute limits: workGroupInvocations=$maxInvocations " +
                "workGroupSize=${maxSize.contentToString()} sharedMemory=$maxSharedMemory",
        )
        val supported =
            maxInvocations >= GlesComputeWorkGroup.BASELINE_MAX_INVOCATIONS &&
                maxSize[0] >= GlesComputeWorkGroup.LINEAR_SIZE &&
                maxSize[1] >= GlesComputeWorkGroup.IMAGE_TILE_SIZE &&
                maxSize[2] >= 1
        if (!supported) {
            PLog.e(
                TAG,
                "Bitmap denoise requires the OpenGL ES 3.1 compute baseline; " +
                    "got invocations=$maxInvocations size=${maxSize.contentToString()}",
            )
        }
        return supported
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
        if (isReleased) return

        if (Thread.currentThread() === glThread) {
            releaseOnGlThread()
        } else {
            runBlocking(glDispatcher) {
                releaseOnGlThread()
            }
        }

        isReleased = true
        glDispatcher.close()
    }

    private fun releaseOnGlThread() {
        if (!isInitialized) return
        if (isOnGlThread()) {
            releaseInternal()
            return
        }
        runBlocking(glDispatcher) {
            releaseInternal()
        }
    }

    private fun releaseInternal() {
        if (!isInitialized) return
        EGL14.eglMakeCurrent(eglDisplay, eglSurface, eglSurface, eglContext)
        GLES30.glFinish()

        if (shaderProgram != 0) {
            GLES30.glDeleteProgram(shaderProgram)
        }
        if (imageTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(imageTextureId), 0)
        }
        if (lutTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(lutTextureId), 0)
        }
        basicToneTextures.release()
        releaseOutputFramebuffer()
        if (pboId != 0) {
            GLES30.glDeleteBuffers(1, intArrayOf(pboId), 0)
            pboId = 0
        }
        releaseReadbackBuffer()

        if (bitmapDenoisePreconditionProgram != 0) GLES31.glDeleteProgram(bitmapDenoisePreconditionProgram)
        if (bitmapDenoiseNlmInitProgram != 0) GLES31.glDeleteProgram(bitmapDenoiseNlmInitProgram)
        if (bitmapDenoiseNlmFusedAccuProgram != 0) GLES31.glDeleteProgram(bitmapDenoiseNlmFusedAccuProgram)
        if (bitmapDenoiseNlmFinishProgram != 0) GLES31.glDeleteProgram(bitmapDenoiseNlmFinishProgram)
        if (bitmapDenoisePassthroughProgram != 0) GLES30.glDeleteProgram(bitmapDenoisePassthroughProgram)
        if (bitmapChromaDenoiseGuideProgram != 0) GLES30.glDeleteProgram(bitmapChromaDenoiseGuideProgram)
        if (bitmapChromaDenoiseProgram != 0) GLES30.glDeleteProgram(bitmapChromaDenoiseProgram)
        if (lutSharpenProgram != 0) {
            GLES30.glDeleteProgram(lutSharpenProgram)
            lutSharpenProgram = 0
        }
        if (lutLuminanceGainProgram != 0) {
            GLES30.glDeleteProgram(lutLuminanceGainProgram)
            lutLuminanceGainProgram = 0
        }
        for (i in 0..1) {
            if (bitmapDenoiseTexId[i] != 0) GLES30.glDeleteTextures(1, intArrayOf(bitmapDenoiseTexId[i]), 0)
            if (bitmapDenoiseFboId[i] != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(bitmapDenoiseFboId[i]), 0)
        }
        releaseLutSharpenFramebuffer()
        if (bitmapDenoiseNlmU2BufferId != 0) {
            GLES31.glDeleteBuffers(1, intArrayOf(bitmapDenoiseNlmU2BufferId), 0)
            bitmapDenoiseNlmU2BufferId = 0
        }
        bitmapDenoiseNlmBufferPixels = 0

        // 释放 HDF 资源
        if (hdfExtractBlurHProgram != 0) GLES30.glDeleteProgram(hdfExtractBlurHProgram)
        if (hdfBlurVProgram != 0) GLES30.glDeleteProgram(hdfBlurVProgram)
        if (softLightBlurHProgram != 0) GLES30.glDeleteProgram(softLightBlurHProgram)
        if (clarityDownsampleProgram != 0) GLES30.glDeleteProgram(clarityDownsampleProgram)
        if (clarityCompositeProgram != 0) GLES30.glDeleteProgram(clarityCompositeProgram)
        releaseClarityFramebuffers()
        filmGrainGl.release()
        for (i in 0..1) {
            if (hdfTexId[i] != 0) GLES30.glDeleteTextures(1, intArrayOf(hdfTexId[i]), 0)
            if (hdfFboId[i] != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(hdfFboId[i]), 0)
            if (softLightTexId[i] != 0) GLES30.glDeleteTextures(1, intArrayOf(softLightTexId[i]), 0)
            if (softLightFboId[i] != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(softLightFboId[i]), 0)
        }
        
        if (halationExtractBlurHProgram != 0) GLES30.glDeleteProgram(halationExtractBlurHProgram)
        if (halationBlurVProgram != 0) GLES30.glDeleteProgram(halationBlurVProgram)
        for (i in 0..1) {
            if (halationTexId[i] != 0) GLES30.glDeleteTextures(1, intArrayOf(halationTexId[i]), 0)
            if (halationFboId[i] != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(halationFboId[i]), 0)
        }
        if (bloomDownsampleFirstProgram != 0) GLES30.glDeleteProgram(bloomDownsampleFirstProgram)
        if (bloomDownsampleProgram != 0) GLES30.glDeleteProgram(bloomDownsampleProgram)
        if (bloomUpsampleProgram != 0) GLES30.glDeleteProgram(bloomUpsampleProgram)
        if (bloomCompositeProgram != 0) GLES30.glDeleteProgram(bloomCompositeProgram)
        releaseBloomFramebuffers()
        if (bloomOutputFboId != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(bloomOutputFboId), 0)
        if (bloomOutputTextureId != 0) GLES30.glDeleteTextures(1, intArrayOf(bloomOutputTextureId), 0)

        EGL14.eglMakeCurrent(eglDisplay, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_CONTEXT)
        EGL14.eglDestroySurface(eglDisplay, eglSurface)
        EGL14.eglDestroyContext(eglDisplay, eglContext)
        EGL14.eglTerminate(eglDisplay)

        isInitialized = false
        PLog.d(TAG, "LutImageProcessor released")
    }

    private fun isOnGlThread(): Boolean = Thread.currentThread() === glThread

    companion object {
        private const val TAG = "LutImageProcessor"
        private const val BITMAP_DENOISE_A = 0.008f
        private const val BITMAP_DENOISE_B = 0.0005f
        private const val LUT_LUMINANCE_OFFSET = 1e-4f
        private const val CLARITY_PYRAMID_LEVELS = 3
        private const val EGL_CONTEXT_PRIORITY_LEVEL_IMG = 0x3100
        private const val EGL_CONTEXT_PRIORITY_LOW_IMG = 0x3103

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

        private val LUT_LUMINANCE_GAIN_SHADER = """
            #version 300 es
            precision highp float;

            in vec2 vTexCoord;
            out vec4 fragColor;
            uniform sampler2D uBeforeLutTexture;
            uniform sampler2D uAfterLutTexture;
            uniform float uOffset;

            float srgbToLinear(float value) {
                float magnitude = abs(value);
                float linearMagnitude = magnitude <= 0.04045
                    ? magnitude / 12.92
                    : pow((magnitude + 0.055) / 1.055, 2.4);
                return sign(value) * linearMagnitude;
            }

            vec3 srgbToLinear(vec3 value) {
                return vec3(
                    srgbToLinear(value.r),
                    srgbToLinear(value.g),
                    srgbToLinear(value.b)
                );
            }

            void main() {
                const vec3 LINEAR_SRGB_LUMA = vec3(0.2126, 0.7152, 0.0722);
                vec3 beforeLinear = srgbToLinear(texture(uBeforeLutTexture, vTexCoord).rgb);
                vec3 afterLinear = srgbToLinear(texture(uAfterLutTexture, vTexCoord).rgb);
                float beforeLuma = max(dot(beforeLinear, LINEAR_SRGB_LUMA), 0.0);
                float afterLuma = max(dot(afterLinear, LINEAR_SRGB_LUMA), 0.0);
                float gain = (afterLuma + uOffset) / (beforeLuma + uOffset);
                fragColor = vec4(gain, 0.0, 0.0, 1.0);
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
            uniform float uVignette;      // -1.0 ~ +1.0 (晕影)
            uniform float uFlash;         // 0.0 ~ 1.0 (镜头轴向直闪模拟)
            uniform float uBleachBypass;  // 0.0 ~ 1.0 (留银冲洗强度)
            uniform float uNoise;         // 0.0 ~ 1.0 (噪点)
            uniform float uNoiseSeed;     // 噪点随机种子
            uniform float uLowRes;        // 0.0 ~ 1.0 (低像素强度)
            uniform float uAspectRatio;   // 图像长宽比
            uniform vec3 uGradingHues;
            uniform vec3 uGradingAmounts;
            uniform vec3 uGradingLuminances;
            uniform float uGradingBalance;
            uniform float uGradingBlending;
            
            // Primary Calibration
            uniform mat3 uPrimaryCalibrationMatrix;
            
            uniform sampler2D uCurveTexture;
            uniform bool uCurveEnabled;

            // HDF 光晕效果
            uniform float uHalation;      // 0.0 ~ 1.0 (光晕强度)
            uniform sampler2D uHdfTexture; // 光晕合成纹理
            uniform float uSoftLight;      // 0.0 ~ 1.0 (柔光扩散强度)
            uniform sampler2D uSoftLightTexture; // 柔光扩散纹理
            uniform float uRedHalation;      // 0.0 ~ 1.0 (胶片红晕强度)
            uniform sampler2D uRedHalationTexture; // 胶片红晕合成纹理
            
            // 色散效果
            uniform float uChromaticAberration; // 0.0 ~ 1.0 (色散强度)
            uniform vec2 uTexelSize;
            
            // 辅助函数：亮度计算
            const float PI = 3.14159265359;

            float getLuma(vec3 color) {
                vec3 weights = (uInputColorSpace == 1) ? vec3(0.2290, 0.6917, 0.0793) : vec3(0.2126, 0.7152, 0.0722);
                return dot(color, weights);
            }

            ${PreviewColorShaderModules.COLOR_TRANSFER_CORE}
            ${PreviewColorShaderModules.HLG_TO_LINEAR}
            ${PreviewColorShaderModules.EXPOSURE}
            ${DirectFlashShader.GLSL}
            ${ThreeWayColorGradingShader.GLSL}
            ${PreviewColorShaderModules.SANITIZE}
            ${BasicToneLutShader.GLSL}

            vec3 prepareToneSample(vec3 sampleColor) {
                vec3 prepared = sampleColor;
                if (uIsHlgInput) {
                    prepared = hlgToLinear(prepared);
                    prepared = linearToSrgb(prepared);
                }
                if (abs(uExposure) > 0.001) {
                    prepared = applyExposureInLinearSpace(prepared, uExposure);
                }
                return sanitizeColor(prepared);
            }

            vec3 sampleToneSource(vec2 uv) {
                return prepareToneSample(sampleImage(clamp(uv, vec2(0.0), vec2(1.0))).rgb);
            }

            vec3 shRgbToXyz(vec3 rgb) {
                vec3 linearRgb = srgbToLinear(rgb);
                return mat3(
                    0.4360747, 0.2225045, 0.0139322,
                    0.3850649, 0.7168786, 0.0971045,
                    0.1430804, 0.0606169, 0.7141733
                ) * linearRgb;
            }

            vec3 shXyzToRgb(vec3 xyz) {
                vec3 linearRgb = mat3(
                     3.1338561, -0.9787684,  0.0719453,
                    -1.6168667,  1.9161415, -0.2289914,
                    -0.4906146,  0.0334540,  1.4052427
                ) * xyz;
                return linearToSrgb(linearRgb);
            }

            ${ShadowsHighlightsShader.GLSL}


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

            ${PreviewColorShaderModules.OKLAB}

            ${PreviewColorShaderModules.LCH_CLASSIFIERS}

            ${PreviewColorShaderModules.LUT_MASK}
            ${PreviewColorShaderModules.OKLCH_DENSITY}

            ${PreviewColorShaderModules.LCH_MIXER}

            ${PreviewColorShaderModules.PRIMARY_CALIBRATION}
            ${PreviewColorShaderModules.EXTENDED_LUT_CURVES}
            ${PreviewColorShaderModules.LUT_COLOR_SPACE}
            
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
                    color.rgb = linearToSrgb(color.rgb);
                }

                // === 色彩配方处理（按专业后期流程顺序） ===
                if (uColorRecipeEnabled) {
                    // 1. 曝光调整（在线性空间执行 EV 增益，再回到显示空间）
                    if (abs(uExposure) > 0.001) {
                        color.rgb = applyExposureInLinearSpace(color.rgb, uExposure);
                        color.rgb = sanitizeColor(color.rgb);
                    }

                    // 2. 高光/阴影调整：RT 风格 tonal width + 局部 base mask，避免线性乘法洗白全图
                    color.rgb = applyShadowsHighlights(color.rgb, uvCoord);
                    color.rgb = sanitizeColor(color.rgb);

                    // 3. 对比度（围绕中灰点调整）
                    color.rgb = (color.rgb - 0.5) * uContrast + 0.5;
                    color.rgb = sanitizeColor(color.rgb);

                    // 3.5. 影调曲线（独立塑造高调/低调 profile）
                    color.rgb = applyToneCurve(color.rgb, uToneToe, uToneShoulder, uTonePivot);
                    color.rgb = sanitizeColor(color.rgb);

                    // 3.6. Oplus BasicTone 端点 LUT（符号在 CPU 侧选端点，绝对值控制强度）
                    color.rgb = applyBasicToneLut(color.rgb);
                    color.rgb = sanitizeColor(color.rgb);

                    // 4. 白平衡调整（色温 + 色调）
                    color.r += uTemperature * 0.1;
                    color.b -= uTemperature * 0.1;
                    color.g -= uTint * 0.05;
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

                    color.rgb = applyThreeWayColorGrading(
                        color.rgb,
                        uGradingHues,
                        uGradingAmounts,
                        uGradingLuminances,
                        uGradingBalance,
                        uGradingBlending,
                        (uInputColorSpace == 1)
                            ? vec3(0.2290, 0.6917, 0.0793)
                            : vec3(0.2126, 0.7152, 0.0722)
                    );
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

                    if (uFlash > 0.001) {
                        color.rgb = applyDirectFlash(color.rgb, uvCoord, uAspectRatio, uFlash);
                        color.rgb = sanitizeColor(color.rgb);
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

                    // 10. 随机噪点 (增强的亮度和彩色噪点，动态刷新)
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
                    vec3 halationBlur = texture(uRedHalationTexture, uvCoord).rgb;
                    float halationMask = smoothstep(0.001, 0.06, dot(halationBlur, vec3(0.2126, 0.7152, 0.0722)));
                    vec3 halationStrength = vec3(0.42, 0.14, 0.02) * uRedHalation;
                    color.rgb += halationBlur * halationStrength * halationMask;
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

                // === 柔光效果（LUT 之后，保持和实时预览一致） ===
                if (uSoftLight > 0.0) {
                    vec3 softBlur = texture(uSoftLightTexture, uvCoord).rgb;
                    vec3 screen = vec3(1.0) - (vec3(1.0) - color.rgb) * (vec3(1.0) - softBlur);
                    vec3 softGlow = mix(color.rgb, screen, 0.42);
                    color.rgb = mix(color.rgb, softGlow, uSoftLight * 0.75);
                    float softLuma = dot(softBlur, vec3(0.2126, 0.7152, 0.0722));
                    color.rgb += vec3(softLuma) * (uSoftLight * 0.025);
                    color.rgb = (color.rgb - 0.5) * (1.0 - uSoftLight * 0.05) + 0.5;
                }
                fragColor = clamp(color, 0.0, 1.0);
            }
        """.trimIndent()

        private val IMAGE_FRAGMENT_SHADER_COLOR_RECIPE = "#version 300 es\n" +
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
                vec3 tint = vec3(1.0, 0.28, 0.04);
                
                #define EXTRACT(sampleColor) \
                    (max(sampleColor - vec3(uThreshold), vec3(0.0)) * tint * (1.5 + uStrength * 3.0) * smoothstep(uThreshold - 0.24, uThreshold + 0.36, max(sampleColor.r, max(sampleColor.g, sampleColor.b))))
                
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
