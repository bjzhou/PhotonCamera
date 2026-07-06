package com.hinnka.mycamera.raw

import android.content.Context
import android.graphics.Bitmap
import android.graphics.Rect
import android.media.Image
import android.opengl.EGL14
import android.opengl.EGLConfig
import android.opengl.EGLContext
import android.opengl.EGLDisplay
import android.opengl.EGLSurface
import android.opengl.GLES30
import android.opengl.GLES31
import androidx.core.graphics.createBitmap
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.camera.RawBlackBorderCrop
import com.hinnka.mycamera.data.ContentRepository
import com.hinnka.mycamera.lut.ChromaDenoiseDefaults
import com.hinnka.mycamera.lut.ChromaDenoiseShaders
import com.hinnka.mycamera.lut.ShadowsHighlightsShader
import com.hinnka.mycamera.ml.SharedDepthEstimator
import com.hinnka.mycamera.raw.MeteringSystem.ShadowsHighlightsParams
import com.hinnka.mycamera.utils.BitmapUtils
import com.hinnka.mycamera.utils.LargeDirectBuffer
import com.hinnka.mycamera.utils.PLog
import com.hinnka.mycamera.utils.RawProcessor
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.asCoroutineDispatcher
import kotlinx.coroutines.withContext
import java.io.File
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.FloatBuffer
import java.nio.ShortBuffer
import java.util.Locale
import java.util.concurrent.Executors
import kotlin.math.abs
import kotlin.math.ceil
import kotlin.math.floor
import kotlin.math.ln
import kotlin.math.max
import kotlin.math.min
import kotlin.math.pow
import kotlin.math.sqrt
import android.opengl.Matrix as GlMatrix

private typealias ShadowsHighlightsParams = MeteringSystem.ShadowsHighlightsParams
private typealias ProfileExposureUniforms = RawProfileExposureGl.Uniforms

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
        exposureBias: Float,
        baseMetadata: RawMetadata? = null
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
        } else baseMetadata?.activeArray
        val defaultCrop = sanitizeDngDefaultCrop(
            crop = dngRawData.defaultCrop,
            width = dngRawData.width,
            height = dngRawData.height
        )

        return RawMetadata(
            width = dngRawData.width,
            height = dngRawData.height,
            cfaPattern = cfaPattern,
            blackLevel = blackLevel,
            whiteLevel = whiteLevel,
            whiteBalanceGains = whiteBalanceGains,
            preMul = preMul,
            colorCorrectionMatrix = colorCorrectionMatrix,
            cameraWhite = baseMetadata?.cameraWhite ?: floatArrayOf(1f, 1f, 1f),
            lensShadingMap = dngRawData.lensShadingMap,
            lensShadingMapWidth = dngRawData.lensShadingMapWidth,
            lensShadingMapHeight = dngRawData.lensShadingMapHeight,
            lensShadingMapGrid = dngRawData.lensShadingMapGrid,
            baselineExposure = DngBaselineExposure.sanitize(dngRawData.baselineExposure),
            shadowScale = sanitizeDngShadowScale(dngRawData.shadowScale),
            exposureBias = if (dngRawData.exposureBias == 0f) {
                if (baseMetadata != null && baseMetadata.exposureBias != 0f) baseMetadata.exposureBias else exposureBias
            } else dngRawData.exposureBias,
            iso = if (dngRawData.iso == 0) (baseMetadata?.iso ?: 100) else dngRawData.iso,
            shutterSpeed = if (dngRawData.shutterSpeed == 0L) (baseMetadata?.shutterSpeed
                ?: 0L) else dngRawData.shutterSpeed,
            aperture = if (dngRawData.aperture == 0f) (baseMetadata?.aperture
                ?: 0f) else dngRawData.aperture,
            activeArray = activeArray,
            noiseProfile = dngRawData.noiseProfile ?: baseMetadata?.noiseProfile ?: floatArrayOf(
                0f,
                0f
            ),
            postRawSensitivityBoost = baseMetadata?.postRawSensitivityBoost ?: 1.0f,
            exposureCompensation = baseMetadata?.exposureCompensation ?: 0f,
            aeMode = baseMetadata?.aeMode ?: 1,
            afRegions = baseMetadata?.afRegions,
            defaultCrop = defaultCrop,
            frameCount = baseMetadata?.frameCount ?: 1,
            rotation = dngRawData.rotation,
            profileGainTableMap = baseMetadata?.profileGainTableMap
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
        xw: Float, yw: Float,
        useRawAutoWhiteBalanceEstimate: Boolean
    ): DngRawData?

    companion object {
        private const val TAG = "RawDemosaicProcessor"
        private const val EGL_CONTEXT_PRIORITY_LEVEL_IMG = 0x3100
        private const val EGL_CONTEXT_PRIORITY_LOW_IMG = 0x3103
        private const val PROFILE_GAIN_TABLE_TEXTURE_UNIT = 2
        private const val RCD_RAW_TEXTURE_UNIT = 0
        private const val RCD_LENS_SHADING_TEXTURE_UNIT = 1
        private const val RCD_OUTPUT_IMAGE_UNIT = 0
        private const val RCD_PQ_WRITE_BINDING = 5
        private const val RCD_PQ_READ_BINDING = 4
        private const val RCD_VH_DIR_BINDING = 4
        private const val RCD_OUTPUT_MARGIN = 9
        private const val RCD_HIGHLIGHT_RECONSTRUCTION_THRESHOLD = 0.985f
        private const val RCD_HIGHLIGHT_RECONSTRUCTION_CEILING = 8.0f
        private const val RCD_HIGHLIGHT_RECONSTRUCTION_MIN_WB_GAIN = 1e-3f
        private const val RCD_HIGHLIGHT_RECONSTRUCTION_MAX_WB_GAIN = 64.0f
        private const val RAW_TONE_MAPPED_AE_LUMA_FLOOR = 0.001f
        private const val RAW_TONE_MAPPED_AE_LONG_EDGE = 256
        private const val RAW_TONE_MAPPED_AE_MAX_SOLVE_STEPS = 3
        private const val RAW_TONE_MAPPED_AE_EV_TOLERANCE = 0.05f
        private const val RAW_TONE_MAPPED_AE_MIN_STEP_EV = 0.025f
        private const val FILMIC_GREY_SOURCE = 0.1845f
        private const val FILMIC_OUTPUT_POWER = 3.614815775f
        private const val FILMIC_DISPLAY_BLACK = 0.0001517634f
        private const val FILMIC_DEFAULT_DYNAMIC_RANGE = 12.21f
        private const val FILMIC_DEFAULT_CONTRAST = 1.433801098f
        private const val FILMIC_LATITUDE = 0.0001f
        private const val FILMIC_SAFETY_MARGIN = 0.01f
        private const val DARKTABLE_FILMIC_HR_RECONSTRUCT_THRESHOLD_EV = 0f
        private const val DARKTABLE_FILMIC_HR_RECONSTRUCT_FEATHER_EV = 3f
        private const val DARKTABLE_FILMIC_HR_NOISE_LEVEL = 0.2f
        private const val DARKTABLE_FILMIC_HR_GAMMA = 0.5f
        private const val DARKTABLE_FILMIC_HR_GAMMA_COMP = 0.5f
        private const val DARKTABLE_FILMIC_HR_BETA = 1f
        private const val DARKTABLE_FILMIC_HR_BETA_COMP = 0f
        private const val DARKTABLE_FILMIC_HR_DELTA = 1f
        private const val DARKTABLE_FILMIC_HR_HIGH_QUALITY_ITERATIONS = 1
        private const val DNG_DEFAULT_CROP_ASPECT_TOLERANCE = 0.005f
        private val BRADFORD_D65_TO_D50 = floatArrayOf(
            1.0478112f, 0.0228866f, -0.0501270f,
            0.0295424f, 0.9904844f, -0.0170491f,
            -0.0092345f, 0.0150436f, 0.7521316f
        )

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
    private val engineTonePrograms = IntArray(RawRenderingEngine.entries.size)
    private var adjustmentProgram = 0
    private var srgbProgram = 0
    private var sharpenProgram = 0
    private var passthroughProgram = 0
    private var hdrReferenceProgram = 0
    private var chromaDenoiseProgram = 0
    private var loggedShadowsHighlightsUniforms = false

    // RCD Compute Shader Programs
    private var rcdPopulateProgram = 0
    private var rcdStep1Program = 0
    private var rcdStep2Program = 0
    private var rcdStep3Program = 0
    private var rcdStep40Program = 0
    private var rcdStep41Program = 0
    private var rcdStep42Program = 0
    private var rcdStep43Program = 0
    private var rcdWriteOutputProgram = 0
    private var quadPopulateProgram = 0
    private var quadGreenProgram = 0
    private var quadChromaProgram = 0
    private var quadRefineProgram = 0
    private var quadWriteOutputProgram = 0
    private var linearRcdProgram = 0
    private var linearRawRgbProgram = 0
    private var rawHdrLinearAccumulateProgram = 0
    private var rawHdrLinearNormalizeProgram = 0
    private var rawHdrLinearPreviewProgram = 0
    private var filmicHrMaskProgram = 0
    private var filmicHrInpaintNoiseProgram = 0
    private var filmicHrInitReconstructProgram = 0
    private var filmicHrBsplineProgram = 0
    private var filmicHrHighFrequencyProgram = 0
    private var filmicHrWaveletsReconstructProgram = 0
    private var filmicHrComputeNormsProgram = 0
    private var filmicHrComputeRatiosProgram = 0
    private var filmicHrRestoreRatiosProgram = 0

    private var rawTextureId = 0
    private var profileGainTableTextureId = 0
    private var profileGainTableTextureSource: DngProfileGainTableMap? = null

    private var demosaicFramebufferId = 0
    private var demosaicTextureId = 0
    private var demosaicWidth = 0
    private var demosaicHeight = 0
    private var linearOutputFramebufferId = 0
    private var linearOutputTextureId = 0

    private var combinedFramebufferId = 0
    private var combinedTextureId = 0
    private var combinedWidth = 0
    private var combinedHeight = 0
    private var engineToneFramebufferId = 0
    private var engineToneTextureId = 0
    private var engineToneWidth = 0
    private var engineToneHeight = 0
    private var adjustmentFramebufferId = 0
    private var adjustmentTextureId = 0
    private var adjustmentWidth = 0
    private var adjustmentHeight = 0

    private var linearMeteringFramebufferId = 0
    private var linearMeteringTextureId = 0
    private var linearMeteringWidth = 0
    private var linearMeteringHeight = 0
    private var srgbMeteringCropFramebufferId = 0
    private var srgbMeteringCropTextureId = 0
    private var srgbMeteringCropWidth = 0
    private var srgbMeteringCropHeight = 0

    private var hdrReferenceFramebufferId = 0
    private var hdrReferenceTextureId = 0
    private var hdrReferenceWidth = 0
    private var hdrReferenceHeight = 0

    private var sharpenFramebufferId = 0
    private var sharpenTextureId = 0
    private var sharpenWidth = 0
    private var sharpenHeight = 0
    private var outputFramebufferId = 0
    private var outputTextureId = 0
    private var readbackPboSize = 0
    private var readbackBuffer: ByteBuffer? = null
    private var readbackBufferSize = 0

    private var curveTextureId = 0
    private var dcpToneCurveTextureId = 0
    private var dcpHueSatTextureId = 0
    private var dcpLookTableTextureId = 0
    private var spectralFilmTextureId = 0
    private var spectralFilmTextureKey: String? = null
    private var dummyDcp3DTextureId = 0
    private var dummyDcpToneCurveTextureId = 0

    // darktable denoiseprofile 降噪资源
    private var denoisePreconditionV2Program = 0
    private var denoiseNlmInitProgram = 0
    private var denoiseNlmFusedAccuProgram = 0
    private var denoiseNlmFinishProgram = 0

    // denoiseprofile 中间纹理: ping-pong (RGBA16F)
    private var gfTexId = intArrayOf(0, 0)
    private var gfFboId = intArrayOf(0, 0)
    private var gfWidth = 0
    private var gfHeight = 0

    private var filmicHrWidth = 0
    private var filmicHrHeight = 0
    private var filmicHrMaskTextureId = 0
    private var filmicHrMaskFramebufferId = 0
    private var filmicHrWorkingTextureId = 0
    private var filmicHrWorkingFramebufferId = 0
    private var filmicHrTempTextureId = 0
    private var filmicHrTempFramebufferId = 0
    private var filmicHrLfEvenTextureId = 0
    private var filmicHrLfEvenFramebufferId = 0
    private var filmicHrLfOddTextureId = 0
    private var filmicHrLfOddFramebufferId = 0
    private var filmicHrHighFrequencyTextureId = 0
    private var filmicHrHighFrequencyFramebufferId = 0
    private var filmicHrHighFrequencyRgbTextureId = 0
    private var filmicHrHighFrequencyRgbFramebufferId = 0
    private var filmicHrNormsTextureId = 0
    private var filmicHrNormsFramebufferId = 0
    private val filmicHrReconstructedTextureIds = intArrayOf(0, 0)
    private val filmicHrReconstructedFramebufferIds = intArrayOf(0, 0)

    suspend fun prewarmDepthEstimator(context: Context) = withContext(Dispatchers.Default) {
        val start = System.currentTimeMillis()
        SharedDepthEstimator.prewarm(context.applicationContext)
        PLog.d(TAG, "RAW DepthEstimator prewarmed, took=${System.currentTimeMillis() - start}ms")
    }

    private var denoiseNlmU2BufferId = 0
    private var denoiseNlmBufferPixels = 0

    // 缓冲区
    private var vertexBuffer: FloatBuffer? = null
    private var texCoordBuffer: FloatBuffer? = null
    private var indexBuffer: ShortBuffer? = null
    private var pboId = 0

    private var lensShadingTextureId = 0
    private var dummyShadingTextureId = 0

    private val defaultUsmRadius = RawShaders.DEFAULT_USM_RADIUS
    private val defaultUsmThreshold = RawShaders.DEFAULT_USM_THRESHOLD

    data class SceneStats(
        val exposureGain: Float,
        val curveLut: FloatArray? = null
    )

    data class RawAutoAdjustments(
        val exposureCompensation: Float,
        val highlights: Float,
        val shadows: Float
    )

    data class LinearRcdFrame(
        val pixels: ByteBuffer,
        val width: Int,
        val height: Int,
        val rowStrideBytes: Int,
    )

    private data class FilmicToneCurveUniforms(
        val blackRelativeExposure: Float,
        val whiteRelativeExposure: Float,
        val dynamicRange: Float,
        val inputMin: Float,
        val inputMax: Float,
        val latitudeMin: Float,
        val latitudeMax: Float,
        val m1: FloatArray,
        val m2: FloatArray,
        val m3: FloatArray,
        val m4: FloatArray,
        val m5: FloatArray
    )

    private fun SceneStats.toRenderPlan(): RawRenderPlan {
        return RawRenderPlan(
            sceneNormalizationGain = exposureGain,
            sdrCurveLut = curveLut
        )
    }

    private fun resolveWorkingColorSpace(): android.graphics.ColorSpace =
        android.graphics.ColorSpace.get(android.graphics.ColorSpace.Named.SRGB)


    private var isInitialized = false
    private var maxTextureSize = 8192 // default, queried at init

    internal val rawHdrMaxTextureSize: Int
        get() = maxTextureSize

    internal val rawHdrLinearOutputFramebufferId: Int
        get() = linearOutputFramebufferId

    internal val rawHdrLinearOutputTextureId: Int
        get() = linearOutputTextureId

    internal suspend fun ensureRawHdrLinearFusionInitialized(): Boolean {
        return isInitialized || initializeOnGlThread()
    }

    internal fun hasRawHdrLinearFusionPrograms(renderPreview: Boolean): Boolean {
        return rawHdrLinearAccumulateProgram != 0 &&
            rawHdrLinearNormalizeProgram != 0 &&
            (!renderPreview || rawHdrLinearPreviewProgram != 0)
    }

    internal fun setupRawHdrFullResFramebuffer(width: Int, height: Int) {
        setupFullResFramebuffer(width, height)
    }

    internal fun deleteRawHdrUploadTextureIfNeeded() {
        if (rawTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(rawTextureId), 0)
            rawTextureId = 0
        }
    }

    internal fun setRawHdrTextureFilter(textureId: Int, filter: Int) {
        if (textureId == 0) return
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, textureId)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, filter)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, filter)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        checkGlError("setRawHdrTextureFilter")
    }

    fun getRawColorSpace(rawRenderingEngine: RawRenderingEngine = RawRenderingEngine.AdobeCurve): ColorSpace {
        return rawRenderingEngine.workingColorSpace
    }

    private fun applyCfaCorrectionOverride(metadata: RawMetadata, mode: String?): RawMetadata {
        val resolvedCfaPattern = RawCfaCorrection.patternFromMode(mode) ?: return metadata
        if (resolvedCfaPattern == metadata.cfaPattern) {
            return metadata
        }
        PLog.d(TAG, "RAW DNG CFA override mode=$mode cfa=${metadata.cfaPattern}->$resolvedCfaPattern")
        return metadata.copy(cfaPattern = resolvedCfaPattern)
    }

    private fun applyBlackLevelOverride(
        metadata: RawMetadata,
        mode: String?,
        customBlackLevel: Float?
    ): RawMetadata {
        val resolvedBlackLevel = RawProcessor.resolveBlackLevelForMode(
            defaultBlackLevel = metadata.blackLevel,
            blackLevelMode = mode,
            customBlackLevel = customBlackLevel
        )
        if (metadata.blackLevel.contentEquals(resolvedBlackLevel)) {
            return metadata
        }
        PLog.d(TAG, "RAW DNG black level override mode=$mode value=${resolvedBlackLevel.joinToString()}")
        return metadata.copy(blackLevel = resolvedBlackLevel)
    }

    private fun applyWhiteLevelOverride(metadata: RawMetadata, mode: String?): RawMetadata {
        val resolvedWhiteLevel = RawWhiteLevelCorrection.resolveWhiteLevel(
            defaultWhiteLevel = metadata.whiteLevel,
            mode = mode
        )
        if (metadata.whiteLevel == resolvedWhiteLevel) {
            return metadata
        }
        PLog.d(TAG, "RAW DNG white level override mode=$mode value=$resolvedWhiteLevel")
        return metadata.copy(whiteLevel = resolvedWhiteLevel)
    }

    private fun applyDngMetadataOverrides(
        metadata: RawMetadata,
        rawBlackLevelMode: String?,
        rawCustomBlackLevel: Float?,
        rawWhiteLevelMode: String?,
        rawCfaCorrectionMode: String?
    ): RawMetadata {
        return applyCfaCorrectionOverride(
            metadata = applyWhiteLevelOverride(
                metadata = applyBlackLevelOverride(metadata, rawBlackLevelMode, rawCustomBlackLevel),
                mode = rawWhiteLevelMode
            ),
            mode = rawCfaCorrectionMode
        )
    }

    private fun highlightReconstructionWbGains(metadata: RawMetadata): FloatArray {
        val gains = metadata.whiteBalanceGains
        fun safeGain(index: Int, fallback: Float): Float {
            val value = gains.getOrElse(index) { fallback }
            return if (value.isFinite() && value > 0f) value else fallback
        }

        val greenEven = safeGain(1, 1f)
        val greenOdd = safeGain(2, greenEven)
        val greenBase = ((greenEven + greenOdd) * 0.5f)
            .takeIf { it.isFinite() && it > 0f }
            ?: 1f

        fun normalized(value: Float): Float {
            val relative = value / greenBase.coerceAtLeast(1e-6f)
            return if (relative.isFinite()) {
                relative.coerceIn(
                    RCD_HIGHLIGHT_RECONSTRUCTION_MIN_WB_GAIN,
                    RCD_HIGHLIGHT_RECONSTRUCTION_MAX_WB_GAIN
                )
            } else {
                1f
            }
        }

        return floatArrayOf(
            normalized(safeGain(0, greenBase)),
            normalized(greenEven),
            normalized(greenOdd),
            normalized(safeGain(3, greenBase))
        )
    }

    private fun analyzeSrgbThumbnailForMetering(
        bitmap: Bitmap?,
        sourceBounds: Rect? = null
    ): RawAeMeteringImage? {
        if (bitmap == null || bitmap.isRecycled || bitmap.width <= 0 || bitmap.height <= 0) {
            return null
        }
        return try {
            val safeSourceBounds = sanitizeBitmapBounds(sourceBounds, bitmap.width, bitmap.height)
                ?: Rect(0, 0, bitmap.width, bitmap.height)
            val meteringSize = resolveLongEdgeMeteringSize(
                sourceWidth = safeSourceBounds.width(),
                sourceHeight = safeSourceBounds.height(),
                maxLongEdge = RAW_TONE_MAPPED_AE_LONG_EDGE
            )
            val width = meteringSize.width
            val height = meteringSize.height
            val pixels = IntArray(width * height)
            val rowPixels = IntArray(bitmap.width)
            for (y in 0 until height) {
                val sourceY = safeSourceBounds.top +
                    ((y + 0.5f) * safeSourceBounds.height().toFloat() / height.toFloat())
                    .toInt()
                    .coerceIn(0, bitmap.height - 1)
                bitmap.getPixels(rowPixels, 0, bitmap.width, 0, sourceY, bitmap.width, 1)
                for (x in 0 until width) {
                    val sourceX = safeSourceBounds.left +
                        ((x + 0.5f) * safeSourceBounds.width().toFloat() / width.toFloat())
                        .toInt()
                        .coerceIn(0, bitmap.width - 1)
                    pixels[y * width + x] = rowPixels[sourceX]
                }
            }
            val stats = MeteringSystem.analyzeSrgbThumbnail(width, height, pixels)
                ?: return null
            RawAeMeteringImage(
                width = width,
                height = height,
                argbPixels = pixels,
                stats = stats
            )
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to analyze capture preview thumbnail for RAW AE", e)
            null
        }
    }

    private data class RawAeContentBounds(
        val rawRenderBounds: Rect,
        val thumbnailBounds: Rect
    )

    private data class RawAeMeteringImage(
        val width: Int,
        val height: Int,
        val argbPixels: IntArray,
        val stats: MeteringSystem.SrgbThumbnailMeteringStats
    )

    private data class RawAeCenterAverageReference(
        val width: Int,
        val height: Int,
        val bounds: Rect,
        val targetDisplayLuma: Float,
        val pixelCount: Int
    )

    private data class RawAeCenterAverageMatch(
        val errorEv: Float,
        val targetDisplayLuma: Float,
        val renderedDisplayLuma: Float,
        val pixelCount: Int
    )

    private fun buildRawAeCenterAverageReference(
        image: RawAeMeteringImage
    ): RawAeCenterAverageReference? {
        val bounds = rawAeCenterTwoThirdsBounds(image.width, image.height)
            ?: return null
        val targetDisplayLuma = averageSrgbDisplayLuma(image, bounds)
            ?: return null
        val reference = RawAeCenterAverageReference(
            width = image.width,
            height = image.height,
            bounds = bounds,
            targetDisplayLuma = targetDisplayLuma,
            pixelCount = bounds.width() * bounds.height()
        )
        return reference
    }

    private fun matchRawAeCenterAverage(
        reference: RawAeCenterAverageReference,
        rendered: RawAeMeteringImage
    ): RawAeCenterAverageMatch? {
        if (reference.width != rendered.width || reference.height != rendered.height) {
            return null
        }
        val renderedDisplayLuma = averageSrgbDisplayLuma(rendered, reference.bounds)
            ?: return null
        return RawAeCenterAverageMatch(
            errorEv = displayLumaErrorEv(
                renderedLuma = renderedDisplayLuma,
                targetLuma = reference.targetDisplayLuma
            ),
            targetDisplayLuma = reference.targetDisplayLuma,
            renderedDisplayLuma = renderedDisplayLuma,
            pixelCount = reference.pixelCount
        )
    }

    private fun rawAeCenterTwoThirdsBounds(width: Int, height: Int): Rect? {
        if (width <= 0 || height <= 0) return null
        val left = width / 6
        val top = height / 6
        val right = (width * 5 / 6).coerceAtLeast(left + 1)
        val bottom = (height * 5 / 6).coerceAtLeast(top + 1)
        return Rect(
            left.coerceIn(0, width - 1),
            top.coerceIn(0, height - 1),
            right.coerceIn(left + 1, width),
            bottom.coerceIn(top + 1, height)
        )
    }

    private fun averageSrgbDisplayLuma(image: RawAeMeteringImage, bounds: Rect): Float? {
        if (
            image.width <= 0 ||
            image.height <= 0 ||
            image.argbPixels.size < image.width * image.height ||
            bounds.isEmpty
        ) {
            return null
        }
        val safeBounds = Rect(bounds)
        if (!safeBounds.intersect(Rect(0, 0, image.width, image.height)) || safeBounds.isEmpty) {
            return null
        }
        var lumaSum = 0.0
        var pixelCount = 0
        for (y in safeBounds.top until safeBounds.bottom) {
            val rowOffset = y * image.width
            for (x in safeBounds.left until safeBounds.right) {
                lumaSum += srgbDisplayLuma(image.argbPixels[rowOffset + x]).toDouble()
                pixelCount++
            }
        }
        if (pixelCount <= 0) return null
        return (lumaSum / pixelCount.toDouble()).toFloat()
            .coerceAtLeast(RAW_TONE_MAPPED_AE_LUMA_FLOOR)
    }

    private fun srgbDisplayLuma(pixel: Int): Float {
        val alpha = ((pixel ushr 24) and 0xff) / 255f
        if (alpha <= 0f) return 0f
        val r = ((pixel ushr 16) and 0xff) / 255f
        val g = ((pixel ushr 8) and 0xff) / 255f
        val b = (pixel and 0xff) / 255f
        val luma = (0.2126f * r + 0.7152f * g + 0.0722f * b) * alpha
        return if (luma.isFinite()) luma.coerceIn(0f, 1f) else 0f
    }

    private fun resolveRawAeContentBounds(
        rawSourceBounds: Rect,
        outputRotation: Int,
        thumbnail: Bitmap?
    ): RawAeContentBounds? {
        val rawVisualBounds = sourceBoundsToVisualOutputBounds(
            baseSourceBounds = rawSourceBounds,
            sourceBounds = rawSourceBounds,
            rotation = outputRotation
        )
        if (
            rawVisualBounds.isEmpty ||
            thumbnail == null ||
            thumbnail.isRecycled ||
            thumbnail.width <= 0 ||
            thumbnail.height <= 0
        ) {
            return null
        }
        val thumbnailAspect = thumbnail.width.toFloat() / thumbnail.height.toFloat()
        if (!thumbnailAspect.isFinite() || thumbnailAspect <= 0f) return null
        val rawDisplayVisualBounds = centerCropToAspect(rawVisualBounds, thumbnailAspect)
        val rawDisplaySourceBounds = visualOutputBoundsToSourceBounds(
            baseSourceBounds = rawSourceBounds,
            visualBounds = rawDisplayVisualBounds,
            rotation = outputRotation
        ) ?: return null
        val rawRenderBounds = rawDisplaySourceBounds.toOutputBounds(outputRotation)
        val thumbnailBounds = Rect(0, 0, thumbnail.width, thumbnail.height)
        return RawAeContentBounds(
            rawRenderBounds = rawRenderBounds,
            thumbnailBounds = thumbnailBounds
        )
    }

    private fun sourceBoundsToVisualOutputBounds(
        baseSourceBounds: Rect,
        sourceBounds: Rect,
        rotation: Int
    ): Rect {
        val baseOutputBounds = baseSourceBounds.toOutputBounds(rotation)
        val normalizedRotation = ((rotation % 360) + 360) % 360
        return when (normalizedRotation) {
            90 -> Rect(
                baseOutputBounds.left + (baseSourceBounds.bottom - sourceBounds.bottom),
                baseOutputBounds.top + (sourceBounds.left - baseSourceBounds.left),
                baseOutputBounds.left + (baseSourceBounds.bottom - sourceBounds.top),
                baseOutputBounds.top + (sourceBounds.right - baseSourceBounds.left)
            )

            180 -> Rect(
                baseOutputBounds.left + (baseSourceBounds.right - sourceBounds.right),
                baseOutputBounds.top + (baseSourceBounds.bottom - sourceBounds.bottom),
                baseOutputBounds.left + (baseSourceBounds.right - sourceBounds.left),
                baseOutputBounds.top + (baseSourceBounds.bottom - sourceBounds.top)
            )

            270 -> Rect(
                baseOutputBounds.left + (sourceBounds.top - baseSourceBounds.top),
                baseOutputBounds.top + (baseSourceBounds.right - sourceBounds.right),
                baseOutputBounds.left + (sourceBounds.bottom - baseSourceBounds.top),
                baseOutputBounds.top + (baseSourceBounds.right - sourceBounds.left)
            )

            else -> Rect(
                baseOutputBounds.left + (sourceBounds.left - baseSourceBounds.left),
                baseOutputBounds.top + (sourceBounds.top - baseSourceBounds.top),
                baseOutputBounds.left + (sourceBounds.right - baseSourceBounds.left),
                baseOutputBounds.top + (sourceBounds.bottom - baseSourceBounds.top)
            )
        }
    }

    private fun visualOutputBoundsToSourceBounds(
        baseSourceBounds: Rect,
        visualBounds: Rect,
        rotation: Int
    ): Rect? {
        val baseOutputBounds = baseSourceBounds.toOutputBounds(rotation)
        val normalizedRotation = ((rotation % 360) + 360) % 360
        val sourceBounds = when (normalizedRotation) {
            90 -> Rect(
                baseSourceBounds.left + (visualBounds.top - baseOutputBounds.top),
                baseSourceBounds.bottom - (visualBounds.right - baseOutputBounds.left),
                baseSourceBounds.left + (visualBounds.bottom - baseOutputBounds.top),
                baseSourceBounds.bottom - (visualBounds.left - baseOutputBounds.left)
            )

            180 -> Rect(
                baseSourceBounds.right - (visualBounds.right - baseOutputBounds.left),
                baseSourceBounds.bottom - (visualBounds.bottom - baseOutputBounds.top),
                baseSourceBounds.right - (visualBounds.left - baseOutputBounds.left),
                baseSourceBounds.bottom - (visualBounds.top - baseOutputBounds.top)
            )

            270 -> Rect(
                baseSourceBounds.right - (visualBounds.bottom - baseOutputBounds.top),
                baseSourceBounds.top + (visualBounds.left - baseOutputBounds.left),
                baseSourceBounds.right - (visualBounds.top - baseOutputBounds.top),
                baseSourceBounds.top + (visualBounds.right - baseOutputBounds.left)
            )

            else -> Rect(
                baseSourceBounds.left + (visualBounds.left - baseOutputBounds.left),
                baseSourceBounds.top + (visualBounds.top - baseOutputBounds.top),
                baseSourceBounds.left + (visualBounds.right - baseOutputBounds.left),
                baseSourceBounds.top + (visualBounds.bottom - baseOutputBounds.top)
            )
        }
        return Rect(sourceBounds).takeIf {
            it.intersect(baseSourceBounds) && !it.isEmpty
        }
    }

    private fun centerCropToAspect(bounds: Rect, targetAspect: Float): Rect {
        if (bounds.isEmpty || !targetAspect.isFinite() || targetAspect <= 0f) return Rect(bounds)
        val sourceAspect = bounds.width().toFloat() / bounds.height().toFloat()
        val cropWidth: Int
        val cropHeight: Int
        if (sourceAspect > targetAspect) {
            cropHeight = bounds.height()
            cropWidth = (cropHeight * targetAspect).toInt().coerceIn(1, bounds.width())
        } else {
            cropWidth = bounds.width()
            cropHeight = (cropWidth / targetAspect).toInt().coerceIn(1, bounds.height())
        }
        val left = bounds.left + (bounds.width() - cropWidth) / 2
        val top = bounds.top + (bounds.height() - cropHeight) / 2
        return Rect(left, top, left + cropWidth, top + cropHeight)
    }

    private fun sanitizeBitmapBounds(bounds: Rect?, width: Int, height: Int): Rect? {
        if (bounds == null || bounds.isEmpty || width <= 0 || height <= 0) return null
        val imageBounds = Rect(0, 0, width, height)
        return Rect(bounds).takeIf { it.intersect(imageBounds) && !it.isEmpty }
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
        rawExposureCompensation: Float = 0f,
        rawAutoExposure: Boolean = true,
        rawHighlightsAdjustment: Float = 0f,
        rawShadowsAdjustment: Float = 0f,
        rawBlackPointCorrection: Float = 0f,
        rawWhitePointCorrection: Float = 0f,
        rawAutoWhiteBalanceEstimate: Boolean = false,
        applyLensShadingCorrection: Boolean = true,
        rawBlackLevelMode: String? = null,
        rawCustomBlackLevel: Float? = null,
        rawWhiteLevelMode: String? = null,
        sharpeningValue: Float = 0f,
        denoiseValue: Float? = null,
        chromaDenoiseValue: Float? = null,
        rawDcpId: String? = null,
        dcpRenderPlan: DcpRenderPlan? = null,
        spectralFilmStock: String? = null,
        spectralFilmPrint: String? = null,
        spectralFilmTuning: SpectralFilmTuning = SpectralFilmTuning.DEFAULT,
        rawRenderingEngine: RawRenderingEngine = RawRenderingEngine.AdobeCurve,
        rawToneMappingParameters: RawToneMappingParameters = RawToneMappingParameters.DEFAULT,
        rawCfaCorrectionMode: String? = null,
        capturePreviewThumbnail: Bitmap? = null,
        rawBlackBorderCrop: RawBlackBorderCrop = RawBlackBorderCrop(),
        onRawAutoAdjustments: ((RawAutoAdjustments) -> Unit)? = null,
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
                rawExposureCompensation = rawExposureCompensation,
                rawAutoExposure = rawAutoExposure,
                rawHighlightsAdjustment = rawHighlightsAdjustment,
                rawShadowsAdjustment = rawShadowsAdjustment,
                rawBlackPointCorrection = rawBlackPointCorrection,
                rawWhitePointCorrection = rawWhitePointCorrection,
                rawAutoWhiteBalanceEstimate = rawAutoWhiteBalanceEstimate,
                applyLensShadingCorrection = applyLensShadingCorrection,
                rawBlackLevelMode = rawBlackLevelMode,
                rawCustomBlackLevel = rawCustomBlackLevel,
                rawWhiteLevelMode = rawWhiteLevelMode,
                sharpeningValue = sharpeningValue,
                denoiseValue = denoiseValue,
                chromaDenoiseValue = chromaDenoiseValue,
                rawDcpId = rawDcpId,
                dcpRenderPlan = dcpRenderPlan,
                spectralFilmStock = spectralFilmStock,
                spectralFilmPrint = spectralFilmPrint,
                spectralFilmTuning = spectralFilmTuning,
                rawRenderingEngine = rawRenderingEngine,
                rawToneMappingParameters = rawToneMappingParameters,
                rawCfaCorrectionMode = rawCfaCorrectionMode,
                capturePreviewThumbnail = capturePreviewThumbnail,
                rawBlackBorderCrop = rawBlackBorderCrop,
                dngFile = dngFile,
                onRawAutoAdjustments = onRawAutoAdjustments,
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
        rawExposureCompensation: Float = 0f,
        rawAutoExposure: Boolean = true,
        rawHighlightsAdjustment: Float = 0f,
        rawShadowsAdjustment: Float = 0f,
        rawBlackPointCorrection: Float = 0f,
        rawWhitePointCorrection: Float = 0f,
        rawAutoWhiteBalanceEstimate: Boolean = false,
        applyLensShadingCorrection: Boolean = true,
        sharpeningValue: Float = 0f,
        denoiseValue: Float? = null,
        chromaDenoiseValue: Float? = null,
        rawDcpId: String? = null,
        dcpRenderPlan: DcpRenderPlan? = null,
        spectralFilmStock: String? = null,
        spectralFilmPrint: String? = null,
        spectralFilmTuning: SpectralFilmTuning = SpectralFilmTuning.DEFAULT,
        rawRenderingEngine: RawRenderingEngine = RawRenderingEngine.AdobeCurve,
        rawToneMappingParameters: RawToneMappingParameters = RawToneMappingParameters.DEFAULT,
        rawBlackBorderCrop: RawBlackBorderCrop = RawBlackBorderCrop(),
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
                rawExposureCompensation = rawExposureCompensation,
                rawAutoExposure = rawAutoExposure,
                rawHighlightsAdjustment = rawHighlightsAdjustment,
                rawShadowsAdjustment = rawShadowsAdjustment,
                rawBlackPointCorrection = rawBlackPointCorrection,
                rawWhitePointCorrection = rawWhitePointCorrection,
                rawAutoWhiteBalanceEstimate = rawAutoWhiteBalanceEstimate,
                applyLensShadingCorrection = applyLensShadingCorrection,
                sharpeningValue = sharpeningValue,
                denoiseValue = denoiseValue,
                chromaDenoiseValue = chromaDenoiseValue,
                rawDcpId = rawDcpId,
                dcpRenderPlan = dcpRenderPlan,
                spectralFilmStock = spectralFilmStock,
                spectralFilmPrint = spectralFilmPrint,
                spectralFilmTuning = spectralFilmTuning,
                rawRenderingEngine = rawRenderingEngine,
                rawToneMappingParameters = rawToneMappingParameters,
                rawBlackBorderCrop = rawBlackBorderCrop
            )?.sdrBitmap
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to process RAW buffer", e)
            null
        }
    }

    suspend fun renderLinearRcdFrame(
        rawData: ByteBuffer,
        width: Int,
        height: Int,
        rowStride: Int,
        metadata: RawMetadata,
        applyLensShadingCorrection: Boolean = true,
    ): LinearRcdFrame? = withContext(glDispatcher) {
        try {
            if (!isInitialized && !initializeOnGlThread()) {
                PLog.e(TAG, "Failed to initialize processor")
                return@withContext null
            }
            if (width <= 0 || height <= 0 || width > maxTextureSize || height > maxTextureSize) {
                PLog.e(TAG, "Linear RCD input ${width}x${height} exceeds GL_MAX_TEXTURE_SIZE=$maxTextureSize")
                return@withContext null
            }

            val actualMetadata = if (applyLensShadingCorrection) {
                metadata
            } else {
                metadata.copy(
                    lensShadingMap = null,
                    lensShadingMapWidth = 0,
                    lensShadingMapHeight = 0,
                    lensShadingMapGrid = null
                )
            }

            setupFullResFramebuffer(width, height)
            uploadRawTextureFromBuffer(rawData, width, height, rowStride)
            if (RawMetadata.isQuadBayer(actualMetadata.cfaPattern)) {
                runQuadBayerDemosaic(actualMetadata, width, height)
            } else {
                runStandardBayerRcdDemosaic(actualMetadata, width, height)
            }

            renderLinearRcdPass(
                metadata = actualMetadata,
                sourceTextureId = demosaicTextureId,
                targetFramebufferId = linearOutputFramebufferId,
                viewportWidth = width,
                viewportHeight = height,
                rawExposureCompensation = 0f,
                colorCorrectionMatrix = floatArrayOf(
                    1f, 0f, 0f,
                    0f, 1f, 0f,
                    0f, 0f, 1f
                ),
                applyDngBaselineExposure = false,
                applyProfileGainTableMap = false,
                clampProfileRgb = false,
                label = "LinearRcdExport"
            )

            if (rawTextureId != 0) {
                GLES30.glDeleteTextures(1, intArrayOf(rawTextureId), 0)
                rawTextureId = 0
            }

            readLinearRcdPixels(width, height)?.let { pixels ->
                LinearRcdFrame(
                    pixels = pixels,
                    width = width,
                    height = height,
                    rowStrideBytes = width * 8,
                )
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to render linear RCD frame", e)
            null
        }
    }

    suspend fun fuseLinearRcdHdrFrames(
        frames: List<LinearHdrFusionInputFrame>,
        metadata: RawMetadata,
        applyLensShadingCorrection: Boolean,
        aspectRatio: AspectRatio,
        rotation: Int,
        renderPreview: Boolean = true,
    ): LinearHdrFusionResult? = withContext(glDispatcher) {
        RawHdrLinearFusionPipeline.fuse(
            processor = this@RawDemosaicProcessor,
            frames = frames,
            metadata = metadata,
            applyLensShadingCorrection = applyLensShadingCorrection,
            aspectRatio = aspectRatio,
            rotation = rotation,
            renderPreview = renderPreview,
        )
    }

    suspend fun processForHdrSources(
        context: Context,
        dngFilePath: String,
        aspectRatio: AspectRatio?,
        cropRegion: Rect?,
        rotation: Int,
        exposureBias: Float = 0f,
        rawExposureCompensation: Float = 0f,
        rawAutoExposure: Boolean = true,
        rawHighlightsAdjustment: Float = 0f,
        rawShadowsAdjustment: Float = 0f,
        rawBlackPointCorrection: Float = 0f,
        rawWhitePointCorrection: Float = 0f,
        rawAutoWhiteBalanceEstimate: Boolean = false,
        applyLensShadingCorrection: Boolean = true,
        rawBlackLevelMode: String? = null,
        rawCustomBlackLevel: Float? = null,
        rawWhiteLevelMode: String? = null,
        sharpeningValue: Float = 0f,
        denoiseValue: Float? = null,
        chromaDenoiseValue: Float? = null,
        rawDcpId: String? = null,
        dcpRenderPlan: DcpRenderPlan? = null,
        spectralFilmStock: String? = null,
        spectralFilmPrint: String? = null,
        spectralFilmTuning: SpectralFilmTuning = SpectralFilmTuning.DEFAULT,
        rawRenderingEngine: RawRenderingEngine = RawRenderingEngine.AdobeCurve,
        rawToneMappingParameters: RawToneMappingParameters = RawToneMappingParameters.DEFAULT,
        rawCfaCorrectionMode: String? = null,
        capturePreviewThumbnail: Bitmap? = null,
        rawBlackBorderCrop: RawBlackBorderCrop = RawBlackBorderCrop(),
        onRawAutoAdjustments: ((RawAutoAdjustments) -> Unit)? = null,
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
                rawExposureCompensation = rawExposureCompensation,
                rawAutoExposure = rawAutoExposure,
                rawHighlightsAdjustment = rawHighlightsAdjustment,
                rawShadowsAdjustment = rawShadowsAdjustment,
                rawBlackPointCorrection = rawBlackPointCorrection,
                rawWhitePointCorrection = rawWhitePointCorrection,
                rawAutoWhiteBalanceEstimate = rawAutoWhiteBalanceEstimate,
                applyLensShadingCorrection = applyLensShadingCorrection,
                rawBlackLevelMode = rawBlackLevelMode,
                rawCustomBlackLevel = rawCustomBlackLevel,
                rawWhiteLevelMode = rawWhiteLevelMode,
                sharpeningValue = sharpeningValue,
                denoiseValue = denoiseValue,
                chromaDenoiseValue = chromaDenoiseValue,
                rawDcpId = rawDcpId,
                dcpRenderPlan = dcpRenderPlan,
                spectralFilmStock = spectralFilmStock,
                spectralFilmPrint = spectralFilmPrint,
                spectralFilmTuning = spectralFilmTuning,
                rawRenderingEngine = rawRenderingEngine,
                rawToneMappingParameters = rawToneMappingParameters,
                rawCfaCorrectionMode = rawCfaCorrectionMode,
                capturePreviewThumbnail = capturePreviewThumbnail,
                rawBlackBorderCrop = rawBlackBorderCrop,
                dngFile = dngFile,
                onRawAutoAdjustments = onRawAutoAdjustments,
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
        rawExposureCompensation: Float = 0f,
        rawAutoExposure: Boolean = true,
        rawHighlightsAdjustment: Float = 0f,
        rawShadowsAdjustment: Float = 0f,
        rawBlackPointCorrection: Float = 0f,
        rawWhitePointCorrection: Float = 0f,
        rawAutoWhiteBalanceEstimate: Boolean = false,
        applyLensShadingCorrection: Boolean = true,
        rawBlackLevelMode: String? = null,
        rawCustomBlackLevel: Float? = null,
        rawWhiteLevelMode: String? = null,
        sharpeningValue: Float = 0f,
        denoiseValue: Float? = null,
        chromaDenoiseValue: Float? = null,
        rawDcpId: String? = null,
        dcpRenderPlan: DcpRenderPlan? = null,
        spectralFilmStock: String? = null,
        spectralFilmPrint: String? = null,
        spectralFilmTuning: SpectralFilmTuning = SpectralFilmTuning.DEFAULT,
        rawRenderingEngine: RawRenderingEngine = RawRenderingEngine.AdobeCurve,
        rawToneMappingParameters: RawToneMappingParameters = RawToneMappingParameters.DEFAULT,
        rawCfaCorrectionMode: String? = null,
        capturePreviewThumbnail: Bitmap? = null,
        rawBlackBorderCrop: RawBlackBorderCrop = RawBlackBorderCrop(),
        dngFile: File? = null,
        onRawAutoAdjustments: ((RawAutoAdjustments) -> Unit)? = null,
        onMetadata: ((RawMetadata) -> Unit)? = null,
        includeHdrReference: Boolean = false
    ): RawHdrRenderResult? = withContext(glDispatcher) {
        var actualRawData = rawData
        var actualWidth = width
        var actualHeight = height
        var actualRowStride = rowStride
        var actualSamplesPerPixel = 1
        var actualMetadata = metadata
        var actualRotation = rotation
        var dngRawDataCleanup: DngRawData? = null
        val requestedColorEngine = rawRenderingEngine
        val hasDcpSelection = dcpRenderPlan != null || rawDcpId != null
        val profileWorkingColorSpace = ColorSpace.ProPhoto
        var embeddedDngRenderPlan: DcpRenderPlan? = null

        if (dngFile != null) {
            val profileGainTableMap = DngPgtmDiagnostic.applyToEmbeddedMap(
                DngProfileGainTableMap.readFrom(dngFile),
                "DNG render"
            )
            val dngRawData = processDngNative(
                dngFile.absolutePath,
                profileWorkingColorSpace.xr, profileWorkingColorSpace.yr,
                profileWorkingColorSpace.xg, profileWorkingColorSpace.yg,
                profileWorkingColorSpace.xb, profileWorkingColorSpace.yb,
                profileWorkingColorSpace.xw, profileWorkingColorSpace.yw,
                rawAutoWhiteBalanceEstimate
            )
            if (dngRawData == null) {
                return@withContext RawProcessor.processAndToBitmap(
                    dngFile,
                    aspectRatio,
                    cropRegion,
                    rotation
                )?.let {
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
            actualSamplesPerPixel = dngRawData.samplesPerPixel.coerceAtLeast(1)
            actualMetadata = applyDngMetadataOverrides(
                metadata = convertDngRawDataToMetadata(dngRawData, exposureBias, actualMetadata),
                rawBlackLevelMode = rawBlackLevelMode,
                rawCustomBlackLevel = rawCustomBlackLevel,
                rawWhiteLevelMode = rawWhiteLevelMode,
                rawCfaCorrectionMode = rawCfaCorrectionMode
            ).copy(profileGainTableMap = profileGainTableMap ?: actualMetadata?.profileGainTableMap)
            profileGainTableMap?.let {
                PLog.d(
                    TAG,
                    "DNG ProfileGainTableMap loaded: tag=${it.sourceTag} " +
                        "grid=${it.mapPointsH}x${it.mapPointsV} points=${it.mapPointsN} gamma=${it.gamma}"
                )
            }
            actualRotation = if (dngRawData.rotation != 0) dngRawData.rotation else rotation
            embeddedDngRenderPlan = DngEmbeddedProfile.resolveRenderPlan(
                file = dngFile,
                metadata = actualMetadata,
                workingColorSpace = profileWorkingColorSpace
            )
            onMetadata?.invoke(actualMetadata)
        }

        if (actualRawData == null || actualMetadata == null) {
            PLog.e(TAG, "Missing source data or metadata")
            return@withContext null
        }

        if (!applyLensShadingCorrection) {
            if (hasValidLensShadingMap(actualMetadata)) {
                PLog.d(TAG, "RAW lens shading correction disabled by user preference")
            }
            actualMetadata = actualMetadata.copy(
                lensShadingMap = null,
                lensShadingMapWidth = 0,
                lensShadingMapHeight = 0,
                lensShadingMapGrid = null
            )
        }

        val requestedProfilePlanSource = when {
            dcpRenderPlan != null -> "provided"
            rawDcpId != null -> rawDcpId
            !hasDcpSelection && embeddedDngRenderPlan != null -> "embedded-dng"
            else -> null
        }
        val spektrafilmLut =
            if (requestedColorEngine == RawRenderingEngine.Spektrafilm &&
                spectralFilmStock != null && spectralFilmPrint != null
            ) {
                SpectralFilmProfile.loadCombinedLut(
                    context,
                    spectralFilmStock,
                    spectralFilmPrint,
                    spectralFilmTuning
                )
            } else {
                null
            }
        val colorEngine = when {
            requestedColorEngine == RawRenderingEngine.Spektrafilm && spektrafilmLut == null -> {
                PLog.w(TAG, "SpectralFilm LUT unavailable, falling back to AdobeCurve")
                RawRenderingEngine.AdobeCurve
            }

            else -> requestedColorEngine
        }
        val useAdobeProfilePipeline = colorEngine == RawRenderingEngine.AdobeCurve
        val resolvedDcpRenderPlan = if (useAdobeProfilePipeline) {
            resolveRawDcpRenderPlan(
                context = context,
                providedDcpRenderPlan = dcpRenderPlan,
                rawDcpId = rawDcpId,
                metadata = actualMetadata,
                embeddedDngRenderPlan = embeddedDngRenderPlan
            )
        } else {
            null
        }
        val rawBlackBorderDefaultCrop = RawDefaultCropOverride.resolveRawBlackBorderDefaultCrop(
            width = actualWidth,
            height = actualHeight,
            rotation = actualRotation,
            rawBlackBorderCrop = rawBlackBorderCrop,
            metadataDefaultCrop = actualMetadata.defaultCrop
        )
        val effectiveDefaultCrop = rawBlackBorderDefaultCrop ?: actualMetadata.defaultCrop
        val outputSourceBounds = calculateOutputSourceBounds(
            width = actualWidth,
            height = actualHeight,
            aspectRatio = aspectRatio,
            cropRegion = cropRegion,
            metadataDefaultCrop = effectiveDefaultCrop
        )
        val rawOutputBounds = outputSourceBounds.toOutputBounds(actualRotation)
        val rawAeContentBounds = resolveRawAeContentBounds(
            rawSourceBounds = outputSourceBounds,
            outputRotation = actualRotation,
            thumbnail = capturePreviewThumbnail
        )
        val embeddedGoogleToneCurveLut = embeddedDngRenderPlan?.toneCurveLut
            ?.takeIf {
                DngProfileToneCurve.isGoogleHdrToneCurveLut(it) ||
                    DngEmbeddedProfile.isGoogleProfileName(embeddedDngRenderPlan.profileName)
            }
        val embeddedProfileGainTableMap = actualMetadata.profileGainTableMap?.takeIf { it.isValid }
        val embeddedDngHdrToneMapAvailable = embeddedGoogleToneCurveLut != null &&
            embeddedProfileGainTableMap != null
        val normalizedToneMappingParameters = rawToneMappingParameters.normalized()
        val oppoMasterToneMapRequested = useAdobeProfilePipeline &&
            normalizedToneMappingParameters.useOppoMasterToneMap
        val embeddedDngHdrToneMapDisabledByUser = embeddedDngHdrToneMapAvailable &&
            useAdobeProfilePipeline &&
            !oppoMasterToneMapRequested &&
            !normalizedToneMappingParameters.useGooglePixelToneMap
        val embeddedDngHdrToneMapDisabledByOppo = embeddedDngHdrToneMapAvailable &&
            oppoMasterToneMapRequested
        if (embeddedDngHdrToneMapAvailable) {
            PLog.d(
                TAG,
                "Embedded DNG PGTM/ProfileToneCurve available: " +
                    "tag=${embeddedProfileGainTableMap.sourceTag} " +
                    "grid=${embeddedProfileGainTableMap.mapPointsH}x" +
                    "${embeddedProfileGainTableMap.mapPointsV}x${embeddedProfileGainTableMap.mapPointsN} " +
                    "googleTone=${normalizedToneMappingParameters.useGooglePixelToneMap}"
            )
        }
        val embeddedDngHdrToneMapOverriddenByDcp = embeddedDngHdrToneMapAvailable &&
            useAdobeProfilePipeline &&
            hasDcpSelection &&
            resolvedDcpRenderPlan?.toneCurveLut != null
        val embeddedDngHdrToneMapRenderable = embeddedDngHdrToneMapAvailable &&
            useAdobeProfilePipeline &&
            normalizedToneMappingParameters.useGooglePixelToneMap &&
            !embeddedDngHdrToneMapOverriddenByDcp &&
            !embeddedDngHdrToneMapDisabledByUser &&
            !embeddedDngHdrToneMapDisabledByOppo
        if (embeddedDngHdrToneMapAvailable && !embeddedDngHdrToneMapRenderable) {
            val reason = when {
                embeddedDngHdrToneMapDisabledByUser -> "Pixel-style tone map disabled for this photo"
                embeddedDngHdrToneMapDisabledByOppo -> "OPPO master tone map requested"
                !useAdobeProfilePipeline -> "color engine $colorEngine does not use Adobe/DNG profile tone map"
                embeddedDngHdrToneMapOverriddenByDcp -> "selected DCP has tone curve: ${resolvedDcpRenderPlan.profileName}"
                else -> "current render pipeline does not use embedded DNG HDR tone map"
            }
            actualMetadata = actualMetadata.copy(profileGainTableMap = null)
            PLog.d(
                TAG,
                "Embedded DNG PGTM/ProfileToneCurve not rendered: reason=$reason"
            )
        }
        val requestedGeneratedPixelToneMap = useAdobeProfilePipeline &&
            normalizedToneMappingParameters.useGooglePixelToneMap &&
            !embeddedDngHdrToneMapAvailable
        val generatedPixelToneMapOverriddenByDcp = requestedGeneratedPixelToneMap &&
            hasDcpSelection &&
            resolvedDcpRenderPlan?.toneCurveLut != null
        val generatePixelToneMap = requestedGeneratedPixelToneMap &&
            !generatedPixelToneMapOverriddenByDcp
        if (generatedPixelToneMapOverriddenByDcp) {
            PLog.d(
                TAG,
                "Generated Pixel-style PGTM/ProfileToneCurve not rendered because selected DCP has tone curve: " +
                    "profile=${resolvedDcpRenderPlan.profileName}"
            )
        }
        if (embeddedDngHdrToneMapRenderable) {
            PLog.d(TAG, "Using embedded Pixel-style DNG PGTM/ProfileToneCurve")
        }
        if (generatePixelToneMap) {
            val generatedProfileGainTableMap = RawProfileGainTableMapBuilder.build(
                rawData = actualRawData,
                width = actualWidth,
                height = actualHeight,
                rowStride = actualRowStride,
                metadata = actualMetadata,
                samplesPerPixel = actualSamplesPerPixel,
                statsBounds = outputSourceBounds
            )
            if (generatedProfileGainTableMap?.isValid == true) {
                actualMetadata = actualMetadata.copy(profileGainTableMap = generatedProfileGainTableMap)
                PLog.d(
                    TAG,
                    "Generated Google Pixel tone map PGTM for RAW: " +
                        "grid=${generatedProfileGainTableMap.mapPointsH}x" +
                        "${generatedProfileGainTableMap.mapPointsV}x" +
                        "${generatedProfileGainTableMap.mapPointsN}"
                )
                DngPgtmDebugRewriter.rewriteGeneratedPgtmOnRawRefreshIfEnabled(
                    dngFile = dngFile,
                    profileGainTableMap = generatedProfileGainTableMap
                )
            } else {
                PLog.w(TAG, "Google Pixel tone map requested but PGTM stats generation failed")
            }
        }
        val googlePixelToneMapActive = (embeddedDngHdrToneMapRenderable || generatePixelToneMap) &&
            actualMetadata.profileGainTableMap?.isValid == true
        val oppoMasterToneMapActive = oppoMasterToneMapRequested
        val profileBaseDcpRenderPlan = if (
            (embeddedDngHdrToneMapDisabledByUser || embeddedDngHdrToneMapDisabledByOppo) &&
            !hasDcpSelection &&
            useAdobeProfilePipeline
        ) {
            withoutProfileToneCurve(
                resolvedDcpRenderPlan,
                reason = if (embeddedDngHdrToneMapDisabledByOppo) {
                    "OPPO master tone map requested"
                } else {
                    "Pixel-style tone map disabled for this photo"
                }
            )
        } else {
            resolvedDcpRenderPlan
        }
        val activeDcpRenderPlan = when {
            googlePixelToneMapActive -> {
                googlePixelToneMapRenderPlan(
                    basePlan = profileBaseDcpRenderPlan,
                    metadata = actualMetadata,
                    workingColorSpace = profileWorkingColorSpace,
                    preferredToneCurveLut = embeddedGoogleToneCurveLut.takeIf { embeddedDngHdrToneMapRenderable }
                )
            }
            oppoMasterToneMapActive -> {
                oppoMasterToneMapRenderPlan(
                    basePlan = profileBaseDcpRenderPlan,
                    metadata = actualMetadata,
                    workingColorSpace = profileWorkingColorSpace
                )
            }
            else -> profileBaseDcpRenderPlan
        }
        val profilePlanSource = when {
            googlePixelToneMapActive -> when {
                dcpRenderPlan != null -> "provided+google-pixel-tone-map"
                rawDcpId != null -> "$rawDcpId+google-pixel-tone-map"
                !hasDcpSelection && embeddedDngRenderPlan != null -> "embedded-dng+google-pixel-tone-map"
                else -> "google-pixel-tone-map"
            }
            oppoMasterToneMapActive -> when {
                dcpRenderPlan != null -> "provided+oppo-master-tone-map"
                rawDcpId != null -> "$rawDcpId+oppo-master-tone-map"
                !hasDcpSelection && embeddedDngRenderPlan != null -> "embedded-dng+oppo-master-tone-map"
                else -> "oppo-master-tone-map"
            }
            activeDcpRenderPlan == null -> null
            dcpRenderPlan != null -> "provided"
            rawDcpId != null -> rawDcpId
            !hasDcpSelection && embeddedDngRenderPlan != null -> "embedded-dng"
            else -> null
        }
        if (!useAdobeProfilePipeline && requestedProfilePlanSource != null) {
            PLog.d(
                TAG,
                "RAW DCP not resolved for non-Adobe colorEngine=$colorEngine: " +
                    "source=$requestedProfilePlanSource"
            )
        }
        val hasProfileGainTableMap = actualMetadata.profileGainTableMap?.isValid == true
        val applyLinearDngBaselineExposure = shouldApplyLinearDngBaselineExposure(actualMetadata)
        val applyProfileDngBaselineExposure = !applyLinearDngBaselineExposure
        val applyDcpBaselineExposureOffset =
            shouldApplyDcpBaselineExposureOffset(activeDcpRenderPlan)
        val useProfileExposureRamp = useAdobeProfilePipeline
        val engineWorkingColorSpace = colorEngine.workingColorSpace
        val profileToEngineTransform = computeWorkingToOutputTransform(
            profileWorkingColorSpace,
            engineWorkingColorSpace
        )
        val linearColorCorrectionMatrix = resolveLinearColorCorrectionMatrix(
            metadata = actualMetadata,
            dcpRenderPlan = activeDcpRenderPlan
        )
        val linearCameraWhite = resolveLinearCameraWhite(
            metadata = actualMetadata,
            dcpRenderPlan = activeDcpRenderPlan
        )
        logRawDcpPipeline(
            profilePlanSource = profilePlanSource,
            requestedColorEngine = requestedColorEngine,
            colorEngine = colorEngine,
            dcpRenderPlan = activeDcpRenderPlan,
            profileWorkingColorSpace = profileWorkingColorSpace,
            engineWorkingColorSpace = engineWorkingColorSpace,
            profileToEngineTransform = profileToEngineTransform,
            useAdobeProfilePipeline = useAdobeProfilePipeline,
            useProfileExposureRamp = useProfileExposureRamp,
            applyDcpBaselineExposureOffset = applyDcpBaselineExposureOffset
        )
        val viewfinderThumbnailMeteringImage = when {
            !rawAutoExposure -> null
            else -> {
                analyzeSrgbThumbnailForMetering(
                    capturePreviewThumbnail,
                    rawAeContentBounds?.thumbnailBounds
                ).also { image ->
                    if (image == null) {
                        PLog.d(TAG, "RAW auto exposure disabled: capture preview thumbnail unavailable")
                    }
                }
            }
        }
        val viewfinderThumbnailStats = viewfinderThumbnailMeteringImage?.stats
        val viewfinderCenterAverageReference = viewfinderThumbnailMeteringImage
            ?.let { buildRawAeCenterAverageReference(it) }

        PLog.d(
            TAG,
            "Processing RAW image: ${actualWidth}x${actualHeight}, " +
                "colorEngine=$colorEngine profileSpace=$profileWorkingColorSpace " +
                "engineWorkingSpace=$engineWorkingColorSpace"
        )

        try {
            if (!isInitialized) {
                if (!initializeOnGlThread()) {
                    PLog.e(TAG, "Failed to initialize processor")
                    return@withContext null
                }
            }

            // Check GL_MAX_TEXTURE_SIZE. Oversized Bayer RCD inputs are rejected.
            if (actualWidth > maxTextureSize || actualHeight > maxTextureSize) {
                PLog.e(
                    TAG,
                    "Input ${actualWidth}x${actualHeight} exceeds GL_MAX_TEXTURE_SIZE=$maxTextureSize"
                )
                return@withContext null
            }

            val bounds = rawOutputBounds
            val finalWidth = bounds.width()
            val finalHeight = bounds.height()

            // 4. 第一步：全分辨率处理 (Linear CCM / RCD Compute Shader Demosaic)
            setupFullResFramebuffer(actualWidth, actualHeight)
            if (actualSamplesPerPixel == 3) {
                uploadLinearRawRgbTextureFromBuffer(
                    actualRawData,
                    actualWidth,
                    actualHeight,
                    actualRowStride
                )
                actualRawData = null
                renderLinearRawRgbToFramebuffer(
                    sourceTextureId = rawTextureId,
                    targetFramebufferId = demosaicFramebufferId,
                    width = actualWidth,
                    height = actualHeight
                )
                if (rawTextureId != 0) {
                    GLES30.glDeleteTextures(1, intArrayOf(rawTextureId), 0)
                    rawTextureId = 0
                }
                PLog.d(TAG, "LinearRaw RGB input prepared on GPU: ${actualWidth}x${actualHeight}")
            } else {
                uploadRawTextureFromBuffer(
                    actualRawData,
                    actualWidth,
                    actualHeight,
                    actualRowStride
                )
                // GPU 已消费 rawData，立即释放 CPU 侧引用，帮助 GC 回收（超分时约 288 MB）
                actualRawData = null

                // darktable feeds Filmic after the raw highlight reconstruction module;
                // keep the raw-domain repair enabled before Filmic HR.
                val rawDomainHighlightReconstructionEnabled = true
                if (RawMetadata.isQuadBayer(actualMetadata.cfaPattern)) {
                    runQuadBayerDemosaic(
                        actualMetadata,
                        actualWidth,
                        actualHeight,
                        highlightReconstructionEnabled = rawDomainHighlightReconstructionEnabled
                    )
                } else {
            // Bayer RCD Compute Shader 处理路径 (1:1 直接映射自 darktable RCD)
            val ssboIds = IntArray(9)
            GLES31.glGenBuffers(9, ssboIds, 0)
            val extraMargin = 1024 * 1024 // 1MB 额外余量，彻底防止移动端 GPU 推测性越界读取越界崩溃
            val fullSize = actualWidth * actualHeight * 4 + extraMargin
            val sizes = intArrayOf(
                fullSize, // CFA_Buf (0)
                fullSize, // RGB0_Buf (1)
                fullSize, // RGB1_Buf (2)
                fullSize, // RGB2_Buf (3)
                fullSize, // VH_Dir_Buf (4)
                fullSize, // LPF_Buf (5)
                fullSize, // P_Diff_Buf (6)
                fullSize, // Q_Diff_Buf (7)
                fullSize  // PQ_Dir_Buf (8)
            )
            for (i in 0 until 9) {
                GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, ssboIds[i])
                GLES31.glBufferData(
                    GLES31.GL_SHADER_STORAGE_BUFFER,
                    sizes[i],
                    null,
                    GLES31.GL_DYNAMIC_DRAW
                )
                if (i < 8) {
                    GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, i, ssboIds[i])
                }
            }
            GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)

            // 2.0 Populate (黑电平扣除、镜头阴影校正与高光重建；输出保持 camera RGB)
            val blackLevel4 = FloatArray(4) { idx ->
                actualMetadata.blackLevel.getOrElse(idx) {
                    actualMetadata.blackLevel.firstOrNull() ?: 0f
                }
                    .coerceAtLeast(0f)
            }

            GLES31.glUseProgram(rcdPopulateProgram)
            GLES31.glActiveTexture(GLES31.GL_TEXTURE0 + RCD_RAW_TEXTURE_UNIT)
            GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, rawTextureId)
            GLES31.glUniform1i(
                GLES31.glGetUniformLocation(rcdPopulateProgram, "uRawTexture"),
                RCD_RAW_TEXTURE_UNIT
            )
            bindLensShadingForRcdPopulate(actualMetadata)
            GLES31.glUniform2i(
                GLES31.glGetUniformLocation(rcdPopulateProgram, "uImageSize"),
                actualWidth,
                actualHeight
            )
            GLES31.glUniform1i(
                GLES31.glGetUniformLocation(rcdPopulateProgram, "uCfaPattern"),
                actualMetadata.cfaPattern
            )
            GLES31.glUniform4fv(
                GLES31.glGetUniformLocation(rcdPopulateProgram, "uBlackLevel"),
                1,
                blackLevel4,
                0
            )
            GLES31.glUniform1f(
                GLES31.glGetUniformLocation(rcdPopulateProgram, "uWhiteLevel"),
                actualMetadata.whiteLevel
            )
            GLES31.glUniform1f(
                GLES31.glGetUniformLocation(rcdPopulateProgram, "uHighlightClipThreshold"),
                RCD_HIGHLIGHT_RECONSTRUCTION_THRESHOLD
            )
            GLES31.glUniform1f(
                GLES31.glGetUniformLocation(rcdPopulateProgram, "uHighlightCeiling"),
                RCD_HIGHLIGHT_RECONSTRUCTION_CEILING
            )
            GLES31.glUniform1i(
                GLES31.glGetUniformLocation(rcdPopulateProgram, "uHighlightReconstructionEnabled"),
                if (rawDomainHighlightReconstructionEnabled) 1 else 0
            )
            val metadataWbGains = actualMetadata.whiteBalanceGains
            val highlightWbGains = highlightReconstructionWbGains(actualMetadata)
            val lscSize = lensShadingLogString(actualMetadata)
            PLog.d(
                TAG,
                "RCD populate: cfa=${actualMetadata.cfaPattern} black=${blackLevel4.contentToString()} " +
                        "white=${actualMetadata.whiteLevel} metadataWb=${metadataWbGains.contentToString()} " +
                        "highlightWb=${highlightWbGains.contentToString()} " +
                        "lsc=$lscSize " +
                        "highlightReconstruction=$rawDomainHighlightReconstructionEnabled " +
                        "highlightThreshold=$RCD_HIGHLIGHT_RECONSTRUCTION_THRESHOLD " +
                        "highlightCeiling=$RCD_HIGHLIGHT_RECONSTRUCTION_CEILING " +
                        "blacks=${rawBlackPointCorrection.coerceIn(-1f, 1f)} " +
                        "whites=${rawWhitePointCorrection.coerceIn(-1f, 1f)}"
            )
            GLES31.glUniform4fv(
                GLES31.glGetUniformLocation(
                    rcdPopulateProgram,
                    "uWhiteBalanceGains"
                ), 1, highlightWbGains, 0
            )
            GLES31.glDispatchCompute((actualWidth + 15) / 16, (actualHeight + 15) / 16, 1)
            GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
            checkGlError("RCD Populate")

            // 2.1 Step 1 (共享内存垂直与水平梯度估计)
            GLES31.glUseProgram(rcdStep1Program)
            GLES31.glUniform2i(
                GLES31.glGetUniformLocation(rcdStep1Program, "uImageSize"),
                actualWidth,
                actualHeight
            )
            GLES31.glDispatchCompute((actualWidth + 15) / 16, (actualHeight + 15) / 16, 1)
            GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
            checkGlError("RCD Step 1")

            // 2.2 Step 2 (低通滤波 LPF 计算)
            GLES31.glUseProgram(rcdStep2Program)
            GLES31.glUniform2i(
                GLES31.glGetUniformLocation(rcdStep2Program, "uImageSize"),
                actualWidth,
                actualHeight
            )
            GLES31.glUniform1i(
                GLES31.glGetUniformLocation(rcdStep2Program, "uCfaPattern"),
                actualMetadata.cfaPattern
            )
            GLES31.glDispatchCompute((actualWidth / 2 + 15) / 16, (actualHeight + 15) / 16, 1)
            GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
            checkGlError("RCD Step 2")

            // 2.3 Step 3 (绿通道在红蓝位置的边缘自适应插值)
            GLES31.glUseProgram(rcdStep3Program)
            GLES31.glUniform2i(
                GLES31.glGetUniformLocation(rcdStep3Program, "uImageSize"),
                actualWidth,
                actualHeight
            )
            GLES31.glUniform1i(
                GLES31.glGetUniformLocation(rcdStep3Program, "uCfaPattern"),
                actualMetadata.cfaPattern
            )
            GLES31.glDispatchCompute((actualWidth / 2 + 15) / 16, (actualHeight + 15) / 16, 1)
            GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
            checkGlError("RCD Step 3")

            // 2.4 Step 4_0 (对角线高通滤波差分计算)
            GLES31.glUseProgram(rcdStep40Program)
            GLES31.glUniform2i(
                GLES31.glGetUniformLocation(rcdStep40Program, "uImageSize"),
                actualWidth,
                actualHeight
            )
            GLES31.glDispatchCompute((actualWidth / 2 + 15) / 16, (actualHeight + 15) / 16, 1)
            GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
            checkGlError("RCD Step 4_0")

            // 2.5 Step 4_1 (对角线方向强弱度选择)
            GLES31.glBindBufferBase(
                GLES31.GL_SHADER_STORAGE_BUFFER,
                RCD_PQ_WRITE_BINDING,
                ssboIds[8]
            )
            GLES31.glUseProgram(rcdStep41Program)
            GLES31.glUniform2i(
                GLES31.glGetUniformLocation(rcdStep41Program, "uImageSize"),
                actualWidth,
                actualHeight
            )
            GLES31.glUniform1i(
                GLES31.glGetUniformLocation(rcdStep41Program, "uCfaPattern"),
                actualMetadata.cfaPattern
            )
            GLES31.glDispatchCompute((actualWidth / 2 + 15) / 16, (actualHeight + 15) / 16, 1)
            GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
            checkGlError("RCD Step 4_1")

            // 2.6 Step 4_2 (红蓝通道在红蓝位置色差引导插值)
            GLES31.glBindBufferBase(
                GLES31.GL_SHADER_STORAGE_BUFFER,
                RCD_PQ_READ_BINDING,
                ssboIds[8]
            )
            GLES31.glUseProgram(rcdStep42Program)
            GLES31.glUniform2i(
                GLES31.glGetUniformLocation(rcdStep42Program, "uImageSize"),
                actualWidth,
                actualHeight
            )
            GLES31.glUniform1i(
                GLES31.glGetUniformLocation(rcdStep42Program, "uCfaPattern"),
                actualMetadata.cfaPattern
            )
            GLES31.glDispatchCompute((actualWidth / 2 + 15) / 16, (actualHeight + 15) / 16, 1)
            GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
            checkGlError("RCD Step 4_2")

            // 2.7 Step 4_3 (红蓝通道在绿色位置插值)
            GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, RCD_VH_DIR_BINDING, ssboIds[4])
            GLES31.glUseProgram(rcdStep43Program)
            GLES31.glUniform2i(
                GLES31.glGetUniformLocation(rcdStep43Program, "uImageSize"),
                actualWidth,
                actualHeight
            )
            GLES31.glUniform1i(
                GLES31.glGetUniformLocation(rcdStep43Program, "uCfaPattern"),
                actualMetadata.cfaPattern
            )
            GLES31.glDispatchCompute((actualWidth / 2 + 15) / 16, (actualHeight + 15) / 16, 1)
            GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
            checkGlError("RCD Step 4_3")

            // 2.8 Write Output (组合输出到 RGBA16F 纹理)
            GLES31.glUseProgram(rcdWriteOutputProgram)
            GLES31.glUniform2i(
                GLES31.glGetUniformLocation(rcdWriteOutputProgram, "uImageSize"),
                actualWidth,
                actualHeight
            )
            GLES31.glUniform1i(
                GLES31.glGetUniformLocation(rcdWriteOutputProgram, "uCfaPattern"),
                actualMetadata.cfaPattern
            )
            GLES31.glUniform1i(
                GLES31.glGetUniformLocation(rcdWriteOutputProgram, "uBorder"),
                RCD_OUTPUT_MARGIN
            )
            GLES31.glBindImageTexture(
                RCD_OUTPUT_IMAGE_UNIT,
                demosaicTextureId,
                0,
                false,
                0,
                GLES31.GL_WRITE_ONLY,
                GLES31.GL_RGBA16F
            )
            GLES31.glDispatchCompute((actualWidth + 15) / 16, (actualHeight + 15) / 16, 1)
            GLES31.glMemoryBarrier(GLES31.GL_ALL_BARRIER_BITS)
            checkGlError("RCD Write Output")

            GLES31.glBindImageTexture(
                RCD_OUTPUT_IMAGE_UNIT,
                0,
                0,
                false,
                0,
                GLES31.GL_WRITE_ONLY,
                GLES31.GL_RGBA16F
            )

            // 强制等待 GPU 彻底完成所有之前的渲染和计算指令，确保 SSBO 被 GPU 完全读取完毕后再进行安全删除
            GLES30.glFinish()

            // 清理 SSBO
            GLES31.glDeleteBuffers(9, ssboIds, 0)
            for (i in 0 until 8) {
                GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, i, 0)
            }
            }
            }

            // RAW AE 使用低分辨率实际渲染结果测光，使高光压缩和最终输出保持一致。
            val meteringResult = resolveRawAutoExposureEv(
                metadata = actualMetadata,
                sourceTextureId = demosaicTextureId,
                rawBlackPointCorrection = rawBlackPointCorrection,
                rawWhitePointCorrection = rawWhitePointCorrection,
                colorCorrectionMatrix = linearColorCorrectionMatrix,
                cameraWhite = linearCameraWhite,
                dcpRenderPlan = activeDcpRenderPlan,
                applyLinearDngBaselineExposure = applyLinearDngBaselineExposure,
                applyProfileGainTableMap = hasProfileGainTableMap,
                clampProfileRgb = useAdobeProfilePipeline,
                viewfinderThumbnailStats = viewfinderThumbnailStats,
                viewfinderCenterAverageReference = viewfinderCenterAverageReference,
                outputBounds = rawAeContentBounds?.rawRenderBounds ?: bounds,
                outputRotation = actualRotation,
                spectralFilmLut = spektrafilmLut,
                colorEngine = colorEngine,
                outputWorkingColorSpace = engineWorkingColorSpace,
                profileToEngineTransform = profileToEngineTransform,
                rawToneMappingParameters = rawToneMappingParameters,
                useProfileExposureRamp = useProfileExposureRamp,
                applyProfileDcpBaselineExposureOffset = applyDcpBaselineExposureOffset
            )

            val autoDevelopAvailable = rawAutoExposure &&
                viewfinderThumbnailStats != null &&
                meteringResult != MeteringSystem.MeteringResult.EMPTY
            val useAutoExposureAdjustment = autoDevelopAvailable &&
                abs(rawExposureCompensation) <= 0.0001f
            val useAutoHighlightsAdjustment = autoDevelopAvailable &&
                abs(rawHighlightsAdjustment) <= 0.0001f
            val effectiveExposureCompensation = if (useAutoExposureAdjustment) {
                meteringResult.meteredEv
            } else {
                rawExposureCompensation
            }
            // 自动高光只驱动高光滑块，用于恢复已压缩高光区域的细节、色度和对比度；不参与 EV 求解。
            val effectiveHighlightsAdjustment = if (useAutoHighlightsAdjustment) {
                meteringResult.highlightCompression.autoHighlightsAdjustment
            } else {
                rawHighlightsAdjustment
            }
            val engineDefaultExposureCompensation = colorEngine.defaultExposureCompensationEv
            val profileExposureCompensation =
                effectiveExposureCompensation + engineDefaultExposureCompensation
            val profileExposureUniforms = computeProfileExposureUniforms(
                metadata = actualMetadata,
                profileExposureCompensation = profileExposureCompensation,
                dcpRenderPlan = activeDcpRenderPlan,
                applyDcpBaselineExposureOffset = applyDcpBaselineExposureOffset,
                applyDngBaselineExposure = applyProfileDngBaselineExposure,
                useRamp = useProfileExposureRamp
            )
            val profileLinearExposureGain = 2.0f.pow(profileExposureUniforms.exposureEv)
            val linearExposureGain = if (applyLinearDngBaselineExposure) {
                profileLinearExposureGain * exactDngBaselineExposureGain(actualMetadata)
            } else {
                profileLinearExposureGain
            }
            val shadowsHighlightsParams = ShadowsHighlightsParams(
                highlights = effectiveHighlightsAdjustment,
                shadows = rawShadowsAdjustment,
            )
            RawAutoAdjustments(
                exposureCompensation = effectiveExposureCompensation.coerceIn(
                    MeteringSystem.RAW_EXPOSURE_MIN_EV,
                    MeteringSystem.RAW_EXPOSURE_MAX_EV
                ),
                highlights = shadowsHighlightsParams.highlights,
                shadows = shadowsHighlightsParams.shadows
            ).also { adjustments ->
                PLog.d(
                    TAG,
                    "RAW auto develop sliders: exposure=${adjustments.exposureCompensation} " +
                            "highlights=${adjustments.highlights} shadows=${adjustments.shadows} " +
                            "autoExposureApplied=$useAutoExposureAdjustment " +
                            "autoHighlightsApplied=$useAutoHighlightsAdjustment " +
                            "engineDefaultEv=${colorEngine.defaultExposureCompensationEv} " +
                            "engineMeteringEv=${colorEngine.meteringCompensationEv} " +
                            "engineCompensationDomain=${colorEngine.exposureCompensationDomain} " +
                            "highlightCompressionAmount=${meteringResult.highlightCompression.amount} " +
                            "highlightCompressionStrength=${meteringResult.highlightCompression.strength} " +
                            "highlightReductionThreshold=${meteringResult.highlightCompression.reductionThreshold}"
                )
                if (useAutoExposureAdjustment || useAutoHighlightsAdjustment) {
                    onRawAutoAdjustments?.invoke(adjustments)
                }
            }
            PLog.d(
                TAG,
                "RAW render exposure: userOrAutoEv=$effectiveExposureCompensation " +
                    "engineDefaultEv=${colorEngine.defaultExposureCompensationEv} " +
                    "engineMeteringEv=${colorEngine.meteringCompensationEv} " +
                    "engineCompensationDomain=${colorEngine.exposureCompensationDomain} " +
                    "profileExposureEv=${profileExposureUniforms.exposureEv} " +
                    "defaultBlackRender=${if (useProfileExposureRamp) dcpDefaultBlackRenderOrAuto(activeDcpRenderPlan) else DcpDefaultBlackRender.None} " +
                    "profileRampBlack=${profileExposureUniforms.rampBlack} " +
                    "dngShadowScale=${actualMetadata.shadowScale} " +
                    "dngBaselineExposure=${actualMetadata.baselineExposure} " +
                    "dngBaselineExposureInLinear=$applyLinearDngBaselineExposure " +
                    "profileGainTableMapActive=$hasProfileGainTableMap " +
                    "dcpBaselineExposureOffsetApplied=$applyDcpBaselineExposureOffset"
            )

            // 运行 linearRcdProgram 将相机矩阵应用在已解马赛克的浮点 RCD 图像上。
            // DNG BaselineExposure 按规范在线性 ProPhoto/RIMM 阶段应用，PGTM 只作为可选局部 tone map。
            checkGlError("Before LinearRcdPass")

            renderLinearRcdPass(
                metadata = actualMetadata,
                sourceTextureId = demosaicTextureId,
                targetFramebufferId = linearOutputFramebufferId,
                viewportWidth = actualWidth,
                viewportHeight = actualHeight,
                rawExposureCompensation = 0f,
                colorCorrectionMatrix = linearColorCorrectionMatrix,
                cameraWhite = linearCameraWhite,
                applyDngBaselineExposure = applyLinearDngBaselineExposure,
                applyProfileGainTableMap = hasProfileGainTableMap,
                clampProfileRgb = useAdobeProfilePipeline,
                label = "LinearRcdPass"
            )

            // 重点：使用双缓冲交换 (Swap)，既不销毁任何纹理，也不需要 glGenTextures/glDeleteTextures
            val tempTex = demosaicTextureId
            demosaicTextureId = linearOutputTextureId
            linearOutputTextureId = tempTex

            val tempFbo = demosaicFramebufferId
            demosaicFramebufferId = linearOutputFramebufferId
            linearOutputFramebufferId = tempFbo

            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
            checkGlError("After LinearRcdPass Swap")
            // rawTextureId 已被 RCD populate 消费，提前释放 GPU 显存
            if (rawTextureId != 0) {
                GLES30.glDeleteTextures(1, intArrayOf(rawTextureId), 0)
                rawTextureId = 0
            }
            val workingColorSpace = resolveWorkingColorSpace()
            val denoiseSourceTextureId = renderDefaultChromaDenoiseBeforeDenoiseProfile(
                sourceTextureId = demosaicTextureId,
                width = actualWidth,
                height = actualHeight,
                metadata = actualMetadata,
                linearExposureGain = linearExposureGain,
                chromaDenoiseValue = chromaDenoiseValue,
            )

            // darktable denoiseprofile 降噪
            renderDenoiseProfilePass(
                sourceTextureId = denoiseSourceTextureId,
                width = actualWidth,
                height = actualHeight,
                metadata = actualMetadata,
                linearExposureGain = linearExposureGain,
                denoiseValue = denoiseValue,
            )
            val outputTexture = gfTexId[1]

            // 重点：不要在此处销毁常驻双缓冲的 framebuffer，由 setupFullResFramebuffer 或 release() 统一管理其生命周期
            // if (demosaicFramebufferId != 0) {
            //     GLES30.glDeleteFramebuffers(1, intArrayOf(demosaicFramebufferId), 0)
            //     demosaicFramebufferId = 0
            // }
            // demosaicWidth = 0; demosaicHeight = 0
            if (gfTexId[0] != 0) {
                GLES30.glDeleteTextures(1, intArrayOf(gfTexId[0]), 0)
                gfTexId[0] = 0
            }
            if (gfFboId[0] != 0) {
                GLES30.glDeleteFramebuffers(1, intArrayOf(gfFboId[0]), 0)
                gfFboId[0] = 0
            }

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
                val hdrPixels = readPixels(
                    finalWidth,
                    finalHeight,
                    android.graphics.ColorSpace.get(android.graphics.ColorSpace.Named.EXTENDED_SRGB)
                )
                // hdrReferenceTextureId 已被 outputPass 消费
                if (hdrReferenceTextureId != 0) {
                    GLES30.glDeleteTextures(1, intArrayOf(hdrReferenceTextureId), 0)
                    hdrReferenceTextureId = 0
                }
                if (hdrReferenceFramebufferId != 0) {
                    GLES30.glDeleteFramebuffers(1, intArrayOf(hdrReferenceFramebufferId), 0)
                    hdrReferenceFramebufferId = 0
                }
                hdrReferenceWidth = 0; hdrReferenceHeight = 0
                hdrPixels
            } else {
                null
            }

            // 5. 第二步：Combined Pass (HDR Linear -> LDR sRGB + LUT)
            val combinedInputTexture = if (colorEngine == RawRenderingEngine.DarktableFilmic) {
                val reconstructedTexture = renderDarktableFilmicHighlightReconstruction(
                    sourceTextureId = outputTexture,
                    width = actualWidth,
                    height = actualHeight,
                    rawToneMappingParameters = rawToneMappingParameters,
                    profileExposureUniforms = profileExposureUniforms,
                    profileToEngineTransform = profileToEngineTransform
                )
                if (reconstructedTexture == 0) {
                    PLog.e(TAG, "Darktable Filmic highlight reconstruction failed")
                    return@withContext null
                }
                reconstructedTexture
            } else {
                outputTexture
            }
            val combinedProfileExposureUniforms =
                if (colorEngine == RawRenderingEngine.DarktableFilmic) {
                    ProfileExposureUniforms.NEUTRAL
                } else {
                    profileExposureUniforms
                }
            val combinedProfileToEngineTransform =
                if (colorEngine == RawRenderingEngine.DarktableFilmic) {
                    identityMatrix3x3()
                } else {
                    profileToEngineTransform
                }

            setupCombinedFramebuffer(actualWidth, actualHeight)
            val combinedStart = System.currentTimeMillis()
            val combinedRendered = renderCombinedPass(
                metadata = actualMetadata,
                inputTextureId = combinedInputTexture,
                dcpRenderPlan = activeDcpRenderPlan,
                profileExposureUniforms = combinedProfileExposureUniforms,
                spectralFilmLut = spektrafilmLut,
                colorEngine = colorEngine,
                outputWorkingColorSpace = engineWorkingColorSpace,
                profileToEngineTransform = combinedProfileToEngineTransform,
                shadowsHighlightsParams = shadowsHighlightsParams,
                rawBlacksAdjustment = rawBlackPointCorrection,
                rawWhitesAdjustment = rawWhitePointCorrection,
                rawToneMappingParameters = rawToneMappingParameters
            )
            if (colorEngine == RawRenderingEngine.DarktableFilmic) {
                releaseDarktableFilmicHighlightReconstructionFramebuffers()
            }
            if (!combinedRendered) {
                PLog.e(TAG, "Combined Pass failed for colorEngine=$colorEngine")
                return@withContext null
            }
            PLog.d(TAG, "Combined Pass took: ${System.currentTimeMillis() - combinedStart}ms")
            // outputTexture 已被 combinedPass 消费，提前释放
            if (gfTexId[1] != 0) {
                GLES30.glDeleteTextures(1, intArrayOf(gfTexId[1]), 0)
                gfTexId[1] = 0
            }
            if (gfFboId[1] != 0) {
                GLES30.glDeleteFramebuffers(1, intArrayOf(gfFboId[1]), 0)
                gfFboId[1] = 0
            }
            gfWidth = 0; gfHeight = 0

            // 6. 第三步：锐化 (Sharpen Pass)
            setupSharpenFramebuffer(actualWidth, actualHeight)
            val sharpenStart = System.currentTimeMillis()
            renderSharpenPass(actualMetadata, sharpeningValue, combinedTextureId)
            PLog.d(TAG, "Sharpen Pass took: ${System.currentTimeMillis() - sharpenStart}ms")
            // combinedTextureId 已被 sharpenPass 消费，提前释放
            if (combinedTextureId != 0) {
                GLES30.glDeleteTextures(1, intArrayOf(combinedTextureId), 0)
                combinedTextureId = 0
            }
            if (combinedFramebufferId != 0) {
                GLES30.glDeleteFramebuffers(1, intArrayOf(combinedFramebufferId), 0)
                combinedFramebufferId = 0
            }
            combinedWidth = 0; combinedHeight = 0

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
            // sharpenTextureId 已被 outputPass 消费，在 readPixels 前释放以降低峰值内存
            if (sharpenTextureId != 0) {
                GLES30.glDeleteTextures(1, intArrayOf(sharpenTextureId), 0)
                sharpenTextureId = 0
            }
            if (sharpenFramebufferId != 0) {
                GLES30.glDeleteFramebuffers(1, intArrayOf(sharpenFramebufferId), 0)
                sharpenFramebufferId = 0
            }
            sharpenWidth = 0; sharpenHeight = 0

            // 8. 读取结果
            val readStart = System.currentTimeMillis()
            val finalBitmap = readPixels(finalWidth, finalHeight, workingColorSpace)
            PLog.d(TAG, "readPixels took: ${System.currentTimeMillis() - readStart}ms")

            PLog.d(TAG, "RAW processing complete: ${finalBitmap?.width}x${finalBitmap?.height}")
            finalBitmap?.let {
                RawHdrRenderResult(
                    sdrBitmap = it,
                    hdrReferenceBitmap = hdrReferenceBitmap,
                    rawInputWidth = actualWidth,
                    rawInputHeight = actualHeight,
                    outputSourceBounds = Rect(outputSourceBounds),
                    outputRotation = actualRotation,
                    effectiveDefaultCrop = effectiveDefaultCrop?.let(::Rect),
                )
            }
        } finally {
            dngRawDataCleanup?.close()
        }
    }

    private fun calculateOutputSourceBounds(
        width: Int,
        height: Int,
        aspectRatio: AspectRatio?,
        cropRegion: Rect?,
        metadataDefaultCrop: Rect?
    ): Rect {
        val safeMetadataCrop = RawDefaultCropOverride.sanitizeCropWithinImage(metadataDefaultCrop, width, height)
        if (safeMetadataCrop != null) {
            return calculateDngDefaultCropSourceBounds(
                width = width,
                height = height,
                metadataCrop = safeMetadataCrop,
                userCrop = cropRegion,
                aspectRatio = aspectRatio
            )
        }

        return BitmapUtils.calculateProcessedRect(
            width,
            height,
            aspectRatio,
            cropRegion,
            0
        )
    }

    private fun calculateDngDefaultCropSourceBounds(
        width: Int,
        height: Int,
        metadataCrop: Rect,
        userCrop: Rect?,
        aspectRatio: AspectRatio?
    ): Rect {
        val safeUserCrop = sanitizeUserCrop(userCrop, width, height)
        val userCropInsideMetadata = safeUserCrop
            ?.takeUnless { it.isFullImage(width, height) }
            ?.let { user ->
                Rect(metadataCrop).takeIf { it.intersect(user) && !it.isEmpty }
        }
        val baseCrop = userCropInsideMetadata ?: metadataCrop
        val sourceIsLandscape = baseCrop.width() >= baseCrop.height()
        val targetAspectRatio = aspectRatio
        return if (
            targetAspectRatio != null &&
            !baseCrop.hasEquivalentAspect(targetAspectRatio, sourceIsLandscape)
        ) {
            cropSourceBoundsToAspect(baseCrop, targetAspectRatio, sourceIsLandscape)
        } else {
            Rect(baseCrop)
        }
    }

    private fun cropSourceBoundsToAspect(
        bounds: Rect,
        aspectRatio: AspectRatio,
        sourceIsLandscape: Boolean
    ): Rect {
        val targetRatio = aspectRatio.getValue(sourceIsLandscape)
        val srcRatio = bounds.width().toFloat() / bounds.height().toFloat()
        val cropWidth: Int
        val cropHeight: Int
        if (srcRatio > targetRatio) {
            cropHeight = bounds.height()
            cropWidth = alignDownToEven((cropHeight * targetRatio).toInt())
        } else {
            cropWidth = bounds.width()
            cropHeight = alignDownToEven((cropWidth / targetRatio).toInt())
        }
        val left = bounds.left + (bounds.width() - cropWidth).coerceAtLeast(0) / 2
        val top = bounds.top + (bounds.height() - cropHeight).coerceAtLeast(0) / 2
        return Rect(left, top, left + cropWidth, top + cropHeight)
    }

    private fun Rect.hasEquivalentAspect(
        aspectRatio: AspectRatio,
        sourceIsLandscape: Boolean
    ): Boolean {
        if (width() <= 0 || height() <= 0) return false
        val targetRatio = aspectRatio.getValue(sourceIsLandscape)
        val sourceRatio = width().toFloat() / height().toFloat()
        return abs(sourceRatio - targetRatio) / targetRatio <= DNG_DEFAULT_CROP_ASPECT_TOLERANCE
    }

    private fun Rect.toOutputBounds(rotation: Int): Rect {
        return if (rotation == 90 || rotation == 270) {
            Rect(top, left, bottom, right)
        } else {
            Rect(this)
        }
    }

    private fun Rect.isFullImage(width: Int, height: Int): Boolean {
        return left == 0 && top == 0 && right == width && bottom == height
    }

    private fun alignDownToEven(value: Int): Int {
        return if (value <= 1) value else value and 1.inv()
    }

    private fun sanitizeUserCrop(crop: Rect?, width: Int, height: Int): Rect? {
        if (crop == null || crop.isEmpty) return null
        val currentIsLandscape = width >= height
        val cropIsLandscape = crop.width() >= crop.height()
        val alignedCrop = if (cropIsLandscape != currentIsLandscape) {
            Rect(crop.top, crop.left, crop.bottom, crop.right)
        } else {
            Rect(crop)
        }
        val imageBounds = Rect(0, 0, width, height)
        return if (alignedCrop.intersect(imageBounds) && !alignedCrop.isEmpty) {
            alignedCrop
        } else {
            null
        }
    }

    private fun sanitizeDngDefaultCrop(crop: IntArray?, width: Int, height: Int): Rect? {
        if (crop == null || crop.size != 4) return null
        return RawDefaultCropOverride.sanitizeCropWithinImage(
            crop = Rect(crop[0], crop[1], crop[2], crop[3]),
            width = width,
            height = height
        )
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
            val initializeStart = System.currentTimeMillis()
            // 获取 EGL Display
            eglDisplay = EGL14.eglGetDisplay(EGL14.EGL_DEFAULT_DISPLAY)
            if (eglDisplay == EGL14.EGL_NO_DISPLAY) {
                PLog.e(TAG, "Unable to get EGL display")
                return false
            }

            // 初始化 EGL
            val version = IntArray(2)
            val eglInitialized = EGL14.eglInitialize(eglDisplay, version, 0, version, 1)
            if (!eglInitialized) {
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
            val configChosen = EGL14.eglChooseConfig(
                eglDisplay,
                configAttribs,
                0,
                configs,
                0,
                1,
                numConfigs,
                0
            )
            if (!configChosen) {
                PLog.e(TAG, "Unable to choose EGL config")
                return false
            }

            val config = configs[0] ?: return false

            // 创建 EGL Context (ES 3.0)
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
            val madeCurrent = EGL14.eglMakeCurrent(eglDisplay, eglSurface, eglSurface, eglContext)
            if (!madeCurrent) {
                PLog.e(TAG, "Unable to make EGL current")
                return false
            }

            // 初始化着色器和缓冲区
            initShaderProgram()
            if (sharpenProgram == 0 || passthroughProgram == 0 ||
                chromaDenoiseProgram == 0 ||
                rcdPopulateProgram == 0 || rcdStep1Program == 0 || rcdStep2Program == 0 ||
                rcdStep3Program == 0 || rcdStep40Program == 0 || rcdStep41Program == 0 ||
                rcdStep42Program == 0 || rcdStep43Program == 0 || rcdWriteOutputProgram == 0 ||
                quadPopulateProgram == 0 || quadGreenProgram == 0 || quadChromaProgram == 0 ||
                quadRefineProgram == 0 || quadWriteOutputProgram == 0 ||
                linearRcdProgram == 0 || linearRawRgbProgram == 0
            ) {
                PLog.e(
                    TAG, "Critical shader programs failed to compile or link. " +
                            "sharpen=$sharpenProgram pass=$passthroughProgram " +
                            "chromaDenoise=$chromaDenoiseProgram " +
                            "populate=$rcdPopulateProgram step1=$rcdStep1Program step2=$rcdStep2Program " +
                            "step3=$rcdStep3Program step40=$rcdStep40Program step41=$rcdStep41Program " +
                            "step42=$rcdStep42Program step43=$rcdStep43Program write=$rcdWriteOutputProgram " +
                            "quadPopulate=$quadPopulateProgram quadGreen=$quadGreenProgram " +
                            "quadChroma=$quadChromaProgram quadRefine=$quadRefineProgram " +
                            "quadWrite=$quadWriteOutputProgram " +
                            "linearRcd=$linearRcdProgram linearRawRgb=$linearRawRgbProgram"
                )
                return false
            }
            initBuffers()

            // 创建静默遮挡图
            dummyShadingTextureId = createDummyShadingTexture()

            // Query hardware texture size limit
            val maxTexSizeArr = IntArray(1)
            GLES30.glGetIntegerv(GLES30.GL_MAX_TEXTURE_SIZE, maxTexSizeArr, 0)
            maxTextureSize = maxTexSizeArr[0]
            PLog.d(TAG, "GL_MAX_TEXTURE_SIZE = $maxTextureSize")
            logGlResourceLimits()

            isInitialized = true
            PLog.d(TAG, "RawDemosaicProcessor initialized, took=${System.currentTimeMillis() - initializeStart}ms")
            return true

        } catch (e: Exception) {
            PLog.e(TAG, "Failed to initialize", e)
            return false
        }
    }

    private fun initShaderProgram() {
        val vShader = compileShader(
            GLES30.GL_VERTEX_SHADER,
            RawShaders.VERTEX_SHADER,
            "rawVertex"
        )

        // 1. DHT Multi-Pass Programs (替代旧的单 pass AHD)
        // initDhtPrograms(vShader)

        val fShaderHdrReference =
            compileShader(
                GLES30.GL_FRAGMENT_SHADER,
                RawShaders.HDR_REFERENCE_FRAGMENT_SHADER,
                "hdrReferenceFragment"
            )
        if (vShader != 0 && fShaderHdrReference != 0) {
            hdrReferenceProgram = GLES30.glCreateProgram()
            GLES30.glAttachShader(hdrReferenceProgram, vShader)
            GLES30.glAttachShader(hdrReferenceProgram, fShaderHdrReference)
            val linkStart = System.currentTimeMillis()
            GLES30.glLinkProgram(hdrReferenceProgram)
            if (!logProgramLinkResult(hdrReferenceProgram, "hdrReferenceProgram", linkStart)) {
                hdrReferenceProgram = 0
            }

            GLES30.glDeleteShader(fShaderHdrReference)
        }

        // 2.2 Sharpen Program
        val fShaderSharpen =
            compileShader(
                GLES30.GL_FRAGMENT_SHADER,
                RawShaders.SHARPEN_FRAGMENT_SHADER,
                "sharpenFragment"
            )
        if (vShader != 0 && fShaderSharpen != 0) {
            sharpenProgram = GLES30.glCreateProgram()
            GLES30.glAttachShader(sharpenProgram, vShader)
            GLES30.glAttachShader(sharpenProgram, fShaderSharpen)
            val linkStart = System.currentTimeMillis()
            GLES30.glLinkProgram(sharpenProgram)
            if (!logProgramLinkResult(sharpenProgram, "sharpenProgram", linkStart)) {
                sharpenProgram = 0
            }

            GLES30.glDeleteShader(fShaderSharpen)
        }

        // 2.7 NLM Programs
        initNLMPrograms(vShader)

        // 2.75 RAW 默认色度降噪 Program
        val fShaderChromaDenoise =
            compileShader(
                GLES30.GL_FRAGMENT_SHADER,
                ChromaDenoiseShaders.PASS_CHROMA_DENOISE,
                "rawChromaDenoiseFragment"
            )
        if (vShader != 0 && fShaderChromaDenoise != 0) {
            chromaDenoiseProgram = GLES30.glCreateProgram()
            GLES30.glAttachShader(chromaDenoiseProgram, vShader)
            GLES30.glAttachShader(chromaDenoiseProgram, fShaderChromaDenoise)
            val linkStart = System.currentTimeMillis()
            GLES30.glLinkProgram(chromaDenoiseProgram)
            if (!logProgramLinkResult(chromaDenoiseProgram, "rawChromaDenoiseProgram", linkStart)) {
                chromaDenoiseProgram = 0
            }

            GLES30.glDeleteShader(fShaderChromaDenoise)
        }

        // 3. Passthrough Program
        val fShaderPass =
            compileShader(
                GLES30.GL_FRAGMENT_SHADER,
                RawShaders.PASSTHROUGH_FRAGMENT_SHADER,
                "passthroughFragment"
            )
        if (vShader != 0 && fShaderPass != 0) {
            passthroughProgram = GLES30.glCreateProgram()
            GLES30.glAttachShader(passthroughProgram, vShader)
            GLES30.glAttachShader(passthroughProgram, fShaderPass)
            val linkStart = System.currentTimeMillis()
            GLES30.glLinkProgram(passthroughProgram)
            if (!logProgramLinkResult(passthroughProgram, "passthroughProgram", linkStart)) {
                passthroughProgram = 0
            }

            GLES30.glDeleteShader(fShaderPass)
        }

        // 2.8 RCD Programs
        initRcdPrograms(vShader)

        GLES30.glDeleteShader(vShader)
        PLog.d(
            TAG,
            "Shader programs created: passthrough=$passthroughProgram"
        )
    }

    private fun getOrCreateEngineToneProgram(colorEngine: RawRenderingEngine): Int {
        val cachedProgram = engineTonePrograms[colorEngine.ordinal]
        if (cachedProgram != 0) return cachedProgram

        val vShader = compileShader(
            GLES30.GL_VERTEX_SHADER,
            RawShaders.VERTEX_SHADER,
            "engineTone${colorEngine.name}Vertex"
        )
        val fragmentSource = RawEngineTonePassShaders.fragmentShaderFor(colorEngine)
        val fShader = compileShader(
            GLES30.GL_FRAGMENT_SHADER,
            fragmentSource,
            "engineTone${colorEngine.name}Fragment"
        )
        if (vShader == 0 || fShader == 0) {
            if (vShader != 0) GLES30.glDeleteShader(vShader)
            if (fShader != 0) GLES30.glDeleteShader(fShader)
            return 0
        }

        val program = GLES30.glCreateProgram()
        GLES30.glAttachShader(program, vShader)
        GLES30.glAttachShader(program, fShader)
        val linkStart = System.currentTimeMillis()
        GLES30.glLinkProgram(program)
        val linked = logProgramLinkResult(
            program,
            "engineTone${colorEngine.name}Program",
            linkStart
        )
        GLES30.glDeleteShader(vShader)
        GLES30.glDeleteShader(fShader)
        if (!linked) return 0

        engineTonePrograms[colorEngine.ordinal] = program
        return program
    }

    private fun getOrCreateAdjustmentProgram(): Int {
        if (adjustmentProgram != 0) return adjustmentProgram
        val vShader = compileShader(GLES30.GL_VERTEX_SHADER, RawShaders.VERTEX_SHADER, "adjustmentVertex")
        adjustmentProgram = linkFragmentProgram(
            vShader,
            RawAdjustmentPassShaders.FRAGMENT_SHADER,
            "rawAdjustment"
        )
        if (vShader != 0) GLES30.glDeleteShader(vShader)
        return adjustmentProgram
    }

    private fun getOrCreateSrgbProgram(): Int {
        if (srgbProgram != 0) return srgbProgram
        val vShader = compileShader(GLES30.GL_VERTEX_SHADER, RawShaders.VERTEX_SHADER, "srgbVertex")
        srgbProgram = linkFragmentProgram(
            vShader,
            RawSrgbPassShaders.FRAGMENT_SHADER,
            "rawSrgb"
        )
        if (vShader != 0) GLES30.glDeleteShader(vShader)
        return srgbProgram
    }

    private val FRAGMENT_SHADER_LINEAR_RCD = """
        #version 300 es
        precision highp float;
        
        in vec2 vTexCoord;
        out vec4 fragColor;
        
        uniform sampler2D uDemosaickedTexture;
        uniform sampler2D uProfileGainTableMap;
        uniform mat3 uColorCorrectionMatrix;
        uniform vec3 uCameraWhite;
        uniform float uExposureGain;
        uniform int uClampProfileRgb;
        uniform int uProfileGainEnabled;
        uniform ivec3 uProfileGainTableSize;
        uniform vec4 uProfileGainGrid;
        uniform vec4 uProfileGainWeights0;
        uniform float uProfileGainWeightMax;
        uniform float uProfileGainGamma;
        uniform float uProfileGainBaselineGain;
        uniform int uProfileGainDebugOverlay;

        float profileGainTableValue(int tableX, int tableY, float tableIndex) {
            int pointCount = max(uProfileGainTableSize.z, 1);
            float clampedIndex = clamp(tableIndex, 0.0, float(pointCount - 1));
            int i0 = int(floor(clampedIndex));
            int i1 = min(i0 + 1, pointCount - 1);
            float t = clampedIndex - float(i0);
            int tableRow = tableY * max(uProfileGainTableSize.x, 1) + tableX;
            float g0 = texelFetch(uProfileGainTableMap, ivec2(i0, tableRow), 0).r;
            float g1 = texelFetch(uProfileGainTableMap, ivec2(i1, tableRow), 0).r;
            return mix(g0, g1, t);
        }

        float profileGainTableInput(vec3 rgb) {
            float rgbMin = min(rgb.r, min(rgb.g, rgb.b));
            float rgbMax = max(rgb.r, max(rgb.g, rgb.b));
            float weightedInput = dot(vec4(rgb, rgbMin), uProfileGainWeights0) +
                rgbMax * uProfileGainWeightMax;
            return pow(clamp(weightedInput, 0.0, 1.0), uProfileGainGamma);
        }

        float profileGain(vec3 rgb, float tableInput) {
            if (uProfileGainEnabled == 0) {
                return 1.0;
            }
            int mapH = max(uProfileGainTableSize.x, 1);
            int mapV = max(uProfileGainTableSize.y, 1);
            vec2 origin = uProfileGainGrid.xy;
            vec2 spacing = max(uProfileGainGrid.zw, vec2(1e-8));
            vec2 mapPosition = (vTexCoord - origin) / spacing;
            mapPosition = clamp(mapPosition, vec2(0.0), vec2(float(mapH - 1), float(mapV - 1)));
            int x0 = int(floor(mapPosition.x));
            int y0 = int(floor(mapPosition.y));
            int x1 = min(x0 + 1, mapH - 1);
            int y1 = min(y0 + 1, mapV - 1);
            float tx = mapPosition.x - float(x0);
            float ty = mapPosition.y - float(y0);
            float tableIndex = tableInput * float(max(uProfileGainTableSize.z, 1));
            float g00 = profileGainTableValue(x0, y0, tableIndex);
            float g10 = profileGainTableValue(x1, y0, tableIndex);
            float g01 = profileGainTableValue(x0, y1, tableIndex);
            float g11 = profileGainTableValue(x1, y1, tableIndex);
            return max(mix(mix(g00, g10, tx), mix(g01, g11, tx), ty), 0.0);
        }

        vec3 profileGainDebugColor(float tableInput) {
            float bin = floor((tableInput - 0.080) * 200.0);
            if (bin < 0.0 || bin >= 12.0) return vec3(0.0);
            if (bin < 1.0) return vec3(1.0, 0.05, 0.02);   // 0.080..0.085 red
            if (bin < 2.0) return vec3(1.0, 0.32, 0.00);   // 0.085..0.090 orange
            if (bin < 3.0) return vec3(1.0, 0.82, 0.00);   // 0.090..0.095 yellow
            if (bin < 4.0) return vec3(0.62, 1.0, 0.00);   // 0.095..0.100 lime
            if (bin < 5.0) return vec3(0.05, 0.90, 0.10);  // 0.100..0.105 green
            if (bin < 6.0) return vec3(0.00, 0.92, 0.55);  // 0.105..0.110 teal
            if (bin < 7.0) return vec3(0.00, 0.92, 1.0);   // 0.110..0.115 cyan
            if (bin < 8.0) return vec3(0.00, 0.45, 1.0);   // 0.115..0.120 blue
            if (bin < 9.0) return vec3(0.32, 0.10, 1.0);   // 0.120..0.125 violet
            if (bin < 10.0) return vec3(0.82, 0.00, 1.0);  // 0.125..0.130 purple
            if (bin < 11.0) return vec3(1.0, 0.00, 0.68);  // 0.130..0.135 magenta
            return vec3(1.0, 0.75, 0.92);                  // 0.135..0.140 pink
        }
        
        void main() {
            vec3 rgb = texture(uDemosaickedTexture, vTexCoord).rgb;
            if (uClampProfileRgb != 0) {
                rgb = min(rgb, max(uCameraWhite, vec3(0.001)));
            }
            rgb = uColorCorrectionMatrix * rgb;
            vec3 profileInputRgb = rgb * uProfileGainBaselineGain;
            float tableInput = profileGainTableInput(profileInputRgb);
            rgb *= profileGain(profileInputRgb, tableInput);
            if (uClampProfileRgb != 0) {
                rgb = clamp(rgb, vec3(0.0), vec3(1.0));
            }
            rgb *= uExposureGain;
            if (uProfileGainDebugOverlay != 0 && uProfileGainEnabled != 0) {
                vec3 debugColor = profileGainDebugColor(tableInput);
                float inDebugRange = step(0.080, tableInput) * (1.0 - step(0.140, tableInput));
                float luma = dot(clamp(rgb, vec3(0.0), vec3(1.0)), vec3(0.2126, 0.7152, 0.0722));
                rgb = mix(vec3(luma * 0.42), rgb, 0.18);
                rgb = mix(rgb, debugColor, 0.90 * inDebugRange);
            }
            fragColor = vec4(rgb, 1.0);
        }
    """.trimIndent()

    private val FRAGMENT_SHADER_LINEAR_RAW_RGB = """
        #version 300 es
        precision highp float;
        precision highp usampler2D;

        in vec2 vTexCoord;
        out vec4 fragColor;

        uniform usampler2D uLinearRawTexture;

        void main() {
            uvec3 sample16 = texture(uLinearRawTexture, vTexCoord).rgb;
            vec3 rgb = vec3(sample16) * (1.0 / 65535.0);
            fragColor = vec4(rgb, 1.0);
        }
    """.trimIndent()

    private val RAW_HDR_LINEAR_ACCUMULATE_FRAGMENT_SHADER = """
        #version 300 es
        precision highp float;

        in vec2 vTexCoord;
        out vec4 fragColor;

        uniform sampler2D uCurrentTexture;
        uniform sampler2D uNormalTexture;
        uniform sampler2D uLongTexture;
        uniform sampler2D uPreviousAccumulatorTexture;
        uniform sampler2D uAlignmentRobustnessTexture;
        uniform vec2 uTexelSize;
        uniform float uScaleToShort;
        uniform float uLongScaleToShort;
        uniform float uNormalFrameCount;
        uniform float uNoiseAlpha;
        uniform float uNoiseBeta;
        uniform int uFrameRole;
        uniform int uUseAlignmentRobustness;

        const vec3 LUMA = vec3(0.2126, 0.7152, 0.0722);
        const float REFERENCE_CLIP_START = 0.965;
        const float REFERENCE_CLIP_END = 0.995;
        const float SHADOW_LONG_PRIORITY_START = 0.055;
        const float SHADOW_LONG_PRIORITY_END = 0.160;
        const float PRIOR_WEIGHT_READY_START = 0.08;
        const float PRIOR_WEIGHT_READY_END = 0.35;

        float lumaOf(vec3 rgb) {
            return dot(rgb, LUMA);
        }

        float clipAmount(float maxChannel) {
            return smoothstep(REFERENCE_CLIP_START, REFERENCE_CLIP_END, maxChannel);
        }

        vec4 alignmentMapAt(vec2 uv) {
            if (uUseAlignmentRobustness == 0) {
                return vec4(0.0, 0.0, 1.0, 1.0);
            }
            return texture(uAlignmentRobustnessTexture, clamp(uv, vec2(0.0), vec2(1.0)));
        }

        vec2 alignedCurrentUv(vec2 uv) {
            vec4 mapValue = alignmentMapAt(uv);
            return clamp(uv + mapValue.xy * uTexelSize * 2.0, vec2(0.0), vec2(1.0));
        }

        vec3 readCurrentRaw(vec2 uv) {
            return max(texture(uCurrentTexture, alignedCurrentUv(uv)).rgb, vec3(0.0));
        }

        vec3 readCurrentScaled(vec2 uv) {
            return readCurrentRaw(uv) * uScaleToShort;
        }

        vec3 readNormalRaw(vec2 uv) {
            return max(texture(uNormalTexture, clamp(uv, vec2(0.0), vec2(1.0))).rgb, vec3(0.0));
        }

        float normalClipAt(vec2 uv) {
            vec3 normalRaw = readNormalRaw(uv);
            float normalMax = max(normalRaw.r, max(normalRaw.g, normalRaw.b));
            return clipAmount(normalMax);
        }

        vec3 readLongRaw(vec2 uv) {
            return max(texture(uLongTexture, clamp(uv, vec2(0.0), vec2(1.0))).rgb, vec3(0.0));
        }

        vec3 readLongScaled(vec2 uv) {
            return readLongRaw(uv) * uLongScaleToShort;
        }

        float alignmentDeghostWeight(vec2 uv, vec3 currentRaw) {
            if (uUseAlignmentRobustness == 0) {
                return 1.0;
            }
            vec4 mapValue = alignmentMapAt(uv);
            float robust = clamp(mapValue.z, 0.0, 1.0);
            float local = clamp(mapValue.w, 0.0, 1.0);
            float keep = local * max(robust, 0.01 * local);
            if (uFrameRole == 0) {
                float referenceClip = normalClipAt(uv);
                float currentHasSignal = smoothstep(0.010, 0.060, lumaOf(currentRaw));
                float highlightRecovery = referenceClip * currentHasSignal;
                keep = max(keep, highlightRecovery);
            }
            return clamp(keep, 0.0, 1.0);
        }

        float localContrast(vec2 uv) {
            float center = lumaOf(readCurrentScaled(uv));
            float left = lumaOf(readCurrentScaled(uv + vec2(-uTexelSize.x, 0.0)));
            float right = lumaOf(readCurrentScaled(uv + vec2(uTexelSize.x, 0.0)));
            float top = lumaOf(readCurrentScaled(uv + vec2(0.0, -uTexelSize.y)));
            float bottom = lumaOf(readCurrentScaled(uv + vec2(0.0, uTexelSize.y)));
            return abs(center - (left + right + top + bottom) * 0.25);
        }

        float saturationOf(vec3 rgb) {
            float meanValue = (rgb.r + rgb.g + rgb.b) / 3.0;
            vec3 delta = rgb - vec3(meanValue);
            float variance = dot(delta, delta) / 3.0;
            return sqrt(max(variance, 0.0)) / max(meanValue, 0.01);
        }

        float contentWeight(vec2 uv, vec3 rgb) {
            float contrast = localContrast(uv);
            float saturation = saturationOf(rgb);
            float detail = clamp(0.38 + contrast * 3.0, 0.38, 1.0);
            float chroma = clamp(0.72 + 0.28 * (saturation / (saturation + 0.35)), 0.72, 1.0);
            return detail * chroma;
        }

        float snrScore(float signal, float frameCount) {
            float safeSignal = max(signal, 0.0);
            float safeCount = max(frameCount, 1.0);
            const float FALLBACK_READ_NOISE_VAR = 2.25e-6;
            float variance = (uNoiseAlpha > 0.0 || uNoiseBeta > 0.0)
                ? (uNoiseAlpha * safeSignal + max(uNoiseBeta, FALLBACK_READ_NOISE_VAR))
                : (safeSignal + FALLBACK_READ_NOISE_VAR);
            return sqrt(safeCount) * safeSignal / sqrt(max(variance, 1.0e-10));
        }

        float exposureReliability(vec2 uv) {
            vec3 rawRgb = readCurrentRaw(uv);
            float luma = lumaOf(rawRgb);
            float maxChannel = max(rawRgb.r, max(rawRgb.g, rawRgb.b));
            float low = smoothstep(0.004, 0.055, luma);
            float high = 1.0 - smoothstep(0.78, 0.98, maxChannel);
            return clamp(low * high, 0.02, 1.0);
        }

        float roleWeight(vec2 uv, vec3 currentRaw, float previousWeight) {
            vec3 longRaw = uFrameRole == 2 ? currentRaw : readLongRaw(uv);
            float longMax = max(longRaw.r, max(longRaw.g, longRaw.b));
            vec3 normalRaw = uFrameRole == 1 ? currentRaw : readNormalRaw(uv);
            float normalLuma = lumaOf(normalRaw);
            float normalMax = max(normalRaw.r, max(normalRaw.g, normalRaw.b));
            float longLuma = lumaOf(longRaw);
            float longUsable = 1.0 - smoothstep(0.62, 0.92, longMax);
            float normalClip = clipAmount(normalMax);
            float normalUsable = smoothstep(0.015, 0.08, normalLuma) *
                (1.0 - normalClip);
            float longScore = snrScore(longLuma, 1.0) * longUsable;
            float normalScore = snrScore(normalLuma, uNormalFrameCount) * normalUsable;
            float scoreSum = longScore * longScore + normalScore * normalScore + 1.0e-6;
            float normalShare = (normalScore * normalScore) / scoreSum;
            float longShare = (longScore * longScore) / scoreSum;
            float shortNeeded = normalClip;
            float shadowLongPriority = (1.0 - smoothstep(
                SHADOW_LONG_PRIORITY_START,
                SHADOW_LONG_PRIORITY_END,
                normalLuma
            )) * longUsable * (1.0 - normalClip);
            float priorReady = smoothstep(PRIOR_WEIGHT_READY_START, PRIOR_WEIGHT_READY_END, previousWeight);

            if (uFrameRole == 2) {
                return 0.04 * longUsable + 8.0 * max(longShare * longUsable, shadowLongPriority);
            }
            if (uFrameRole == 0) {
                return 8.0 * shortNeeded;
            }
            float normalRole = (0.06 + 8.0 * normalShare) * normalUsable;
            return normalRole * (1.0 - shadowLongPriority * priorReady);
        }

        void main() {
            vec3 currentRaw = readCurrentRaw(vTexCoord);
            vec3 rgb = currentRaw * uScaleToShort;
            float reliability = exposureReliability(vTexCoord);
            float deghost = alignmentDeghostWeight(vTexCoord, currentRaw);
            vec4 previousAccumulator = texture(uPreviousAccumulatorTexture, vTexCoord);
            float role = roleWeight(vTexCoord, currentRaw, previousAccumulator.a);
            float weight = max(contentWeight(vTexCoord, rgb) * reliability * deghost * role, 0.0);
            fragColor = previousAccumulator + vec4(rgb * weight, weight);
        }
    """.trimIndent()

    private val RAW_HDR_LINEAR_NORMALIZE_FRAGMENT_SHADER = """
        #version 300 es
        precision highp float;
        precision highp int;

        in vec2 vTexCoord;
        layout(location = 0) out highp uvec4 fragColor;

        uniform sampler2D uAccumulatorTexture;

        uint encodeUnorm16(float value) {
            return uint(clamp(value, 0.0, 1.0) * 65535.0 + 0.5);
        }

        void main() {
            vec4 accum = texture(uAccumulatorTexture, vTexCoord);
            vec3 rgb = accum.rgb / max(accum.a, 1.0e-6);
            fragColor = uvec4(
                encodeUnorm16(rgb.r),
                encodeUnorm16(rgb.g),
                encodeUnorm16(rgb.b),
                65535u
            );
        }
    """.trimIndent()

    private val RAW_HDR_LINEAR_PREVIEW_FRAGMENT_SHADER = """
        #version 300 es
        precision highp float;
        precision highp int;

        in vec2 vTexCoord;
        out vec4 fragColor;

        uniform highp usampler2D uFusedTexture;
        uniform mat3 uColorCorrectionMatrix;
        uniform float uExposureGain;

        vec3 toneMap(vec3 value) {
            return clamp(vec3(1.0) - exp(-max(value, vec3(0.0))), vec3(0.0), vec3(1.0));
        }

        vec3 linearToSrgb(vec3 value) {
            vec3 low = value * 12.92;
            vec3 high = 1.055 * pow(max(value, vec3(0.0)), vec3(1.0 / 2.4)) - 0.055;
            return vec3(
                value.r <= 0.0031308 ? low.r : high.r,
                value.g <= 0.0031308 ? low.g : high.g,
                value.b <= 0.0031308 ? low.b : high.b
            );
        }

        void main() {
            uvec3 packed = texture(uFusedTexture, vTexCoord).rgb;
            vec3 rgb = vec3(packed) * (1.0 / 65535.0) * uExposureGain;
            rgb = max(uColorCorrectionMatrix * rgb, vec3(0.0));
            rgb = linearToSrgb(toneMap(rgb));
            fragColor = vec4(clamp(rgb, vec3(0.0), vec3(1.0)), 1.0);
        }
    """.trimIndent()

    private fun initRcdPrograms(vShader: Int) {
        rcdPopulateProgram = compileComputeProgram(RcdShaders.POPULATE, "POPULATE")
        rcdStep1Program = compileComputeProgram(RcdShaders.STEP_1, "STEP_1")
        rcdStep2Program = compileComputeProgram(RcdShaders.STEP_2, "STEP_2")
        rcdStep3Program = compileComputeProgram(RcdShaders.STEP_3, "STEP_3")
        rcdStep40Program = compileComputeProgram(RcdShaders.STEP_4_0, "STEP_4_0")
        rcdStep41Program = compileComputeProgram(RcdShaders.STEP_4_1, "STEP_4_1")
        rcdStep42Program = compileComputeProgram(RcdShaders.STEP_4_2, "STEP_4_2")
        rcdStep43Program = compileComputeProgram(RcdShaders.STEP_4_3, "STEP_4_3")
        rcdWriteOutputProgram = compileComputeProgram(RcdShaders.WRITE_OUTPUT, "WRITE_OUTPUT")
        quadPopulateProgram = compileComputeProgram(QuadBayerShaders.POPULATE, "QUAD_POPULATE")
        quadGreenProgram = compileComputeProgram(QuadBayerShaders.GREEN, "QUAD_GREEN")
        quadChromaProgram = compileComputeProgram(QuadBayerShaders.CHROMA, "QUAD_CHROMA")
        quadRefineProgram = compileComputeProgram(QuadBayerShaders.REFINE, "QUAD_REFINE")
        quadWriteOutputProgram = compileComputeProgram(QuadBayerShaders.WRITE_OUTPUT, "QUAD_WRITE_OUTPUT")

        val fShaderLinearRcd = compileShader(
            GLES30.GL_FRAGMENT_SHADER,
            FRAGMENT_SHADER_LINEAR_RCD,
            "linearRcdFragment"
        )
        if (vShader != 0 && fShaderLinearRcd != 0) {
            linearRcdProgram = GLES30.glCreateProgram()
            GLES30.glAttachShader(linearRcdProgram, vShader)
            GLES30.glAttachShader(linearRcdProgram, fShaderLinearRcd)
            val linkStart = System.currentTimeMillis()
            GLES30.glLinkProgram(linearRcdProgram)
            if (!logProgramLinkResult(linearRcdProgram, "linearRcdProgram", linkStart)) {
                linearRcdProgram = 0
            }
            GLES30.glDeleteShader(fShaderLinearRcd)
        }
        linearRawRgbProgram = linkFragmentProgram(
            vShader,
            FRAGMENT_SHADER_LINEAR_RAW_RGB,
            "linearRawRgb"
        )
        rawHdrLinearAccumulateProgram = linkFragmentProgram(
            vShader,
            RAW_HDR_LINEAR_ACCUMULATE_FRAGMENT_SHADER,
            "rawHdrLinearAccumulate"
        )
        rawHdrLinearNormalizeProgram = linkFragmentProgram(
            vShader,
            RAW_HDR_LINEAR_NORMALIZE_FRAGMENT_SHADER,
            "rawHdrLinearNormalize"
        )
        rawHdrLinearPreviewProgram = linkFragmentProgram(
            vShader,
            RAW_HDR_LINEAR_PREVIEW_FRAGMENT_SHADER,
            "rawHdrLinearPreview"
        )
    }

    private fun linkFragmentProgram(
        vShader: Int,
        fragmentSource: String,
        name: String,
    ): Int {
        val fShader = compileShader(GLES30.GL_FRAGMENT_SHADER, fragmentSource, "${name}Fragment")
        if (vShader == 0 || fShader == 0) {
            if (fShader != 0) GLES30.glDeleteShader(fShader)
            return 0
        }
        val program = GLES30.glCreateProgram()
        GLES30.glAttachShader(program, vShader)
        GLES30.glAttachShader(program, fShader)
        val linkStart = System.currentTimeMillis()
        GLES30.glLinkProgram(program)
        if (!logProgramLinkResult(program, "${name}Program", linkStart)) {
            GLES30.glDeleteShader(fShader)
            return 0
        }
        GLES30.glDeleteShader(fShader)
        return program
    }

    private fun ensureDarktableFilmicHighlightReconstructionPrograms(): Boolean {
        if (filmicHrMaskProgram != 0 &&
            filmicHrInpaintNoiseProgram != 0 &&
            filmicHrInitReconstructProgram != 0 &&
            filmicHrBsplineProgram != 0 &&
            filmicHrHighFrequencyProgram != 0 &&
            filmicHrWaveletsReconstructProgram != 0 &&
            filmicHrComputeNormsProgram != 0 &&
            filmicHrComputeRatiosProgram != 0 &&
            filmicHrRestoreRatiosProgram != 0
        ) {
            return true
        }

        releaseDarktableFilmicHighlightReconstructionPrograms()
        val vShader = compileShader(
            GLES30.GL_VERTEX_SHADER,
            RawShaders.VERTEX_SHADER,
            "darktableFilmicHrVertex"
        )
        if (vShader == 0) return false

        filmicHrMaskProgram = linkFragmentProgram(
            vShader,
            DarktableFilmicHighlightReconstructionShaders.MASK_FRAGMENT_SHADER,
            "darktableFilmicHrMask"
        )
        filmicHrInpaintNoiseProgram = linkFragmentProgram(
            vShader,
            DarktableFilmicHighlightReconstructionShaders.INPAINT_NOISE_FRAGMENT_SHADER,
            "darktableFilmicHrInpaintNoise"
        )
        filmicHrInitReconstructProgram = linkFragmentProgram(
            vShader,
            DarktableFilmicHighlightReconstructionShaders.INIT_RECONSTRUCT_FRAGMENT_SHADER,
            "darktableFilmicHrInitReconstruct"
        )
        filmicHrBsplineProgram = linkFragmentProgram(
            vShader,
            DarktableFilmicHighlightReconstructionShaders.BSPLINE_FRAGMENT_SHADER,
            "darktableFilmicHrBspline"
        )
        filmicHrHighFrequencyProgram = linkFragmentProgram(
            vShader,
            DarktableFilmicHighlightReconstructionShaders.HIGH_FREQUENCY_FRAGMENT_SHADER,
            "darktableFilmicHrHighFrequency"
        )
        filmicHrWaveletsReconstructProgram = linkFragmentProgram(
            vShader,
            DarktableFilmicHighlightReconstructionShaders.WAVELETS_RECONSTRUCT_FRAGMENT_SHADER,
            "darktableFilmicHrWaveletsReconstruct"
        )
        filmicHrComputeNormsProgram = linkFragmentProgram(
            vShader,
            DarktableFilmicHighlightReconstructionShaders.COMPUTE_NORMS_FRAGMENT_SHADER,
            "darktableFilmicHrComputeNorms"
        )
        filmicHrComputeRatiosProgram = linkFragmentProgram(
            vShader,
            DarktableFilmicHighlightReconstructionShaders.COMPUTE_RATIOS_FRAGMENT_SHADER,
            "darktableFilmicHrComputeRatios"
        )
        filmicHrRestoreRatiosProgram = linkFragmentProgram(
            vShader,
            DarktableFilmicHighlightReconstructionShaders.RESTORE_RATIOS_FRAGMENT_SHADER,
            "darktableFilmicHrRestoreRatios"
        )
        GLES30.glDeleteShader(vShader)

        val ok = filmicHrMaskProgram != 0 &&
            filmicHrInpaintNoiseProgram != 0 &&
            filmicHrInitReconstructProgram != 0 &&
            filmicHrBsplineProgram != 0 &&
            filmicHrHighFrequencyProgram != 0 &&
            filmicHrWaveletsReconstructProgram != 0 &&
            filmicHrComputeNormsProgram != 0 &&
            filmicHrComputeRatiosProgram != 0 &&
            filmicHrRestoreRatiosProgram != 0
        if (!ok) {
            releaseDarktableFilmicHighlightReconstructionPrograms()
        }
        return ok
    }

    private fun releaseDarktableFilmicHighlightReconstructionPrograms() {
        if (filmicHrMaskProgram != 0) GLES30.glDeleteProgram(filmicHrMaskProgram)
        if (filmicHrInpaintNoiseProgram != 0) GLES30.glDeleteProgram(filmicHrInpaintNoiseProgram)
        if (filmicHrInitReconstructProgram != 0) GLES30.glDeleteProgram(filmicHrInitReconstructProgram)
        if (filmicHrBsplineProgram != 0) GLES30.glDeleteProgram(filmicHrBsplineProgram)
        if (filmicHrHighFrequencyProgram != 0) GLES30.glDeleteProgram(filmicHrHighFrequencyProgram)
        if (filmicHrWaveletsReconstructProgram != 0) GLES30.glDeleteProgram(filmicHrWaveletsReconstructProgram)
        if (filmicHrComputeNormsProgram != 0) GLES30.glDeleteProgram(filmicHrComputeNormsProgram)
        if (filmicHrComputeRatiosProgram != 0) GLES30.glDeleteProgram(filmicHrComputeRatiosProgram)
        if (filmicHrRestoreRatiosProgram != 0) GLES30.glDeleteProgram(filmicHrRestoreRatiosProgram)
        filmicHrMaskProgram = 0
        filmicHrInpaintNoiseProgram = 0
        filmicHrInitReconstructProgram = 0
        filmicHrBsplineProgram = 0
        filmicHrHighFrequencyProgram = 0
        filmicHrWaveletsReconstructProgram = 0
        filmicHrComputeNormsProgram = 0
        filmicHrComputeRatiosProgram = 0
        filmicHrRestoreRatiosProgram = 0
    }

    private fun compileComputeProgram(source: String, name: String): Int {
        val compileStart = System.currentTimeMillis()
        val shader = GLES31.glCreateShader(GLES31.GL_COMPUTE_SHADER)
        GLES31.glShaderSource(shader, source)
        GLES31.glCompileShader(shader)

        val compiled = IntArray(1)
        GLES31.glGetShaderiv(shader, GLES31.GL_COMPILE_STATUS, compiled, 0)
        if (compiled[0] == 0) {
            val error = GLES31.glGetShaderInfoLog(shader)
            PLog.e(
                TAG,
                "Compute Shader $name compilation failed after " +
                    "${System.currentTimeMillis() - compileStart}ms, chars=${source.length}: $error"
            )
            GLES31.glDeleteShader(shader)
            return 0
        }
        val compileEnd = System.currentTimeMillis()
        if (compileEnd - compileStart > 100) {
            PLog.d(
                TAG,
                "Compute Shader $name compile ok, chars=${source.length}, " +
                        "took=${System.currentTimeMillis() - compileStart}ms"
            )
        }

        val program = GLES31.glCreateProgram()
        GLES31.glAttachShader(program, shader)
        val linkStart = System.currentTimeMillis()
        GLES31.glLinkProgram(program)

        val linked = IntArray(1)
        GLES31.glGetProgramiv(program, GLES31.GL_LINK_STATUS, linked, 0)
        if (linked[0] == 0) {
            val error = GLES31.glGetProgramInfoLog(program)
            PLog.e(
                TAG,
                "Compute Program $name linking failed after " +
                    "${System.currentTimeMillis() - linkStart}ms: $error"
            )
            GLES31.glDeleteProgram(program)
            GLES31.glDeleteShader(shader)
            return 0
        }

        GLES31.glDeleteShader(shader)
        val end = System.currentTimeMillis()
        if (end - linkStart > 100) {
            PLog.d(
                TAG,
                "Compute Program $name created: $program, linkTook=${end - linkStart}ms"
            )
        }
        return program
    }

    private fun compileShader(type: Int, source: String, name: String = "shader"): Int {
        val compileStart = System.currentTimeMillis()
        val shader = GLES30.glCreateShader(type)
        GLES30.glShaderSource(shader, source)
        GLES30.glCompileShader(shader)

        val compiled = IntArray(1)
        GLES30.glGetShaderiv(shader, GLES30.GL_COMPILE_STATUS, compiled, 0)
        if (compiled[0] == 0) {
            val error = GLES30.glGetShaderInfoLog(shader)
            PLog.e(
                TAG,
                "Shader $name compilation failed after " +
                    "${System.currentTimeMillis() - compileStart}ms, type=$type, chars=${source.length}: $error"
            )
            GLES30.glDeleteShader(shader)
            return 0
        }
        val end = System.currentTimeMillis()
        if (end - compileStart > 100) {
            PLog.d(
                TAG,
                "Shader $name compile ok, type=$type, chars=${source.length}, " +
                        "took=${end - compileStart}ms"
            )
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
     * 初始化 darktable denoiseprofile compute 着色器。
     */
    private fun initNLMPrograms(vShader: Int) {
        denoisePreconditionV2Program = compileComputeProgram(
            DenoiseProfileShaders.PRECONDITION_V2,
            "DenoiseProfile_Precondition_V2"
        )
        denoiseNlmInitProgram =
            compileComputeProgram(DenoiseProfileShaders.INIT, "DenoiseProfile_NLM_Init")
        denoiseNlmFusedAccuProgram =
            compileComputeProgram(DenoiseProfileShaders.FUSED_ACCU, "DenoiseProfile_NLM_FusedAccu")
        denoiseNlmFinishProgram =
            compileComputeProgram(DenoiseProfileShaders.FINISH_V2, "DenoiseProfile_NLM_FinishV2")

        PLog.d(
            TAG,
            "DenoiseProfile NLM programs: preRgb=$denoisePreconditionV2Program " +
                    "init=$denoiseNlmInitProgram fusedAccu=$denoiseNlmFusedAccuProgram " +
                    "finish=$denoiseNlmFinishProgram"
        )
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

        // 创建双缓冲 (RGBA16F) 用于 denoiseprofile 中间 pass
        for (i in 0..1) {
            val t = IntArray(1)
            val f = IntArray(1)
            GLES30.glGenTextures(1, t, 0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, t[0])
            GLES30.glTexStorage2D(GLES30.GL_TEXTURE_2D, 1, GLES30.GL_RGBA16F, width, height)
            GLES30.glTexParameteri(
                GLES30.GL_TEXTURE_2D,
                GLES30.GL_TEXTURE_MIN_FILTER,
                GLES30.GL_NEAREST
            )
            GLES30.glTexParameteri(
                GLES30.GL_TEXTURE_2D,
                GLES30.GL_TEXTURE_MAG_FILTER,
                GLES30.GL_NEAREST
            )
            GLES30.glTexParameteri(
                GLES30.GL_TEXTURE_2D,
                GLES30.GL_TEXTURE_WRAP_S,
                GLES30.GL_CLAMP_TO_EDGE
            )
            GLES30.glTexParameteri(
                GLES30.GL_TEXTURE_2D,
                GLES30.GL_TEXTURE_WRAP_T,
                GLES30.GL_CLAMP_TO_EDGE
            )
            GLES30.glGenFramebuffers(1, f, 0)
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, f[0])
            GLES30.glFramebufferTexture2D(
                GLES30.GL_FRAMEBUFFER,
                GLES30.GL_COLOR_ATTACHMENT0,
                GLES30.GL_TEXTURE_2D,
                t[0],
                0
            )
            val status = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER)
            if (status != GLES30.GL_FRAMEBUFFER_COMPLETE) {
                PLog.e(TAG, "DenoiseProfile ping-pong FBO $i incomplete: $status")
            }
            gfTexId[i] = t[0]; gfFboId[i] = f[0]
        }
        setupDenoiseProfileResources(width, height)
        checkGlError("setupGuidedFilterFramebuffers")
    }

    private fun setupDenoiseProfileResources(width: Int, height: Int) {
        val pixelCount = width * height
        if (
            denoiseNlmBufferPixels == pixelCount &&
            denoiseNlmU2BufferId != 0
        ) {
            return
        }

        if (denoiseNlmU2BufferId != 0) {
            GLES31.glDeleteBuffers(1, intArrayOf(denoiseNlmU2BufferId), 0)
            denoiseNlmU2BufferId = 0
        }

        val buffers = IntArray(1)
        GLES31.glGenBuffers(buffers.size, buffers, 0)
        denoiseNlmU2BufferId = buffers[0]

        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, denoiseNlmU2BufferId)
        GLES31.glBufferData(
            GLES31.GL_SHADER_STORAGE_BUFFER,
            pixelCount * 4 * 4,
            null,
            GLES31.GL_DYNAMIC_DRAW
        )
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
        denoiseNlmBufferPixels = pixelCount
    }

    private fun renderDefaultChromaDenoiseBeforeDenoiseProfile(
        sourceTextureId: Int,
        width: Int,
        height: Int,
        metadata: RawMetadata,
        linearExposureGain: Float,
        chromaDenoiseValue: Float?,
    ): Int {
        val strength = ChromaDenoiseDefaults.rawDefaultStrength(chromaDenoiseValue ?: 0f)
        if (strength <= 0f || width * height < 2) {
            return sourceTextureId
        }

        if (chromaDenoiseProgram == 0 || linearOutputFramebufferId == 0 || linearOutputTextureId == 0) {
            PLog.w(
                TAG,
                "RAW chroma denoise program not initialized, falling back to denoiseprofile source"
            )
            return sourceTextureId
        }

        val profileGain =
            (metadata.iso / 100.0f * metadata.postRawSensitivityBoost).coerceAtLeast(1f)
        val (noiseA, noiseB) = resolveDenoiseNoiseModel(metadata, linearExposureGain, profileGain)
        val h = strength * strength * ChromaDenoiseShaders.SIGMA_STRENGTH_AT_SLIDER_ONE
        val identityMatrix = FloatArray(16)
        GlMatrix.setIdentityM(identityMatrix, 0)

        GLES30.glUseProgram(chromaDenoiseProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, linearOutputFramebufferId)
        GLES30.glViewport(0, 0, width, height)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, sourceTextureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(chromaDenoiseProgram, "uInputTexture"), 0)
        GLES30.glUniform2f(
            GLES30.glGetUniformLocation(chromaDenoiseProgram, "uTexelSize"),
            1.0f / width,
            1.0f / height
        )
        GLES30.glUniformMatrix4fv(
            GLES30.glGetUniformLocation(chromaDenoiseProgram, "uTexMatrix"),
            1,
            false,
            identityMatrix,
            0
        )
        GLES30.glUniform1f(GLES30.glGetUniformLocation(chromaDenoiseProgram, "uH"), h)
        GLES30.glUniform2f(
            GLES30.glGetUniformLocation(chromaDenoiseProgram, "uNoiseModel"),
            noiseA,
            noiseB
        )
        drawQuad(chromaDenoiseProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        checkGlError("RAW chroma denoise before denoiseprofile")

        PLog.d(
            TAG,
            "RAW chroma denoise before denoiseprofile: strength=$strength h=$h a=$noiseA b=$noiseB"
        )
        return linearOutputTextureId
    }


    /**
     * 渲染 darktable denoiseprofile NLM 降噪。
     *
     * 管线: linear RGB → variance-stabilizing transform → NLM accumulate → inverse transform → gfFboId[1]
     */
    private fun renderDenoiseProfilePass(
        sourceTextureId: Int,
        width: Int,
        height: Int,
        metadata: RawMetadata,
        linearExposureGain: Float,
        denoiseValue: Float?,
    ) {
        setupNLMFramebuffers(width, height)

        if (!isDenoiseProfileReady()) {
            PLog.w(TAG, "DenoiseProfile programs not initialized, falling back to passthrough")
            renderPassthroughToTexture(sourceTextureId, width, height, gfFboId[1])
            return
        }

        val params = buildDenoiseProfileParams(metadata, linearExposureGain, denoiseValue ?: 0f)
        if (params.strength <= 0f || width * height < 2) {
            renderPassthroughToTexture(sourceTextureId, width, height, gfFboId[1])
            return
        }

        PLog.d(
            TAG,
            "DenoiseProfile NLM: strength=${params.strength} a=${params.a} b=${params.b} " +
                    "shadows=${params.shadows} bias=${params.bias} patch=${params.patchRadius} " +
                    "search=${params.searchRadius} norm=${params.norm} center=${params.centralPixelWeight} " +
                    "wb=${params.wb.contentToString()}"
        )

        dispatchDenoisePreconditionV2(sourceTextureId, gfTexId[0], width, height, params)
        dispatchDenoiseNlm(sourceTextureId, gfTexId[0], gfTexId[1], width, height, params)
        checkGlError("renderDenoiseProfile")
    }

    private data class DenoiseProfileParams(
        val strength: Float,
        val a: Float,
        val b: Float,
        val shadows: Float,
        val bias: Float,
        val scale: Float,
        val patchRadius: Int,
        val searchRadius: Int,
        val norm: Float,
        val centralPixelWeight: Float,
        val p: FloatArray,
        val wb: FloatArray,
        val aa: FloatArray,
        val bb: FloatArray
    )

    private fun isDenoiseProfileReady(): Boolean {
        return denoisePreconditionV2Program != 0 &&
                denoiseNlmInitProgram != 0 &&
                denoiseNlmFusedAccuProgram != 0 &&
                denoiseNlmFinishProgram != 0
    }

    private fun buildDenoiseProfileParams(
        metadata: RawMetadata,
        linearExposureGain: Float,
        strengthValue: Float
    ): DenoiseProfileParams {
        val profileGain =
            (metadata.iso / 100.0f * metadata.postRawSensitivityBoost).coerceAtLeast(1f)
        val (noiseA, noiseB) = resolveDenoiseNoiseModel(metadata, linearExposureGain, profileGain)
        val a = noiseA.coerceAtLeast(1e-10f)
        val b = noiseB.coerceAtLeast(1e-10f)
        val strength = strengthValue.coerceAtLeast(0f)
        val scale = 1.0f
        val shadows = inferDenoiseProfileShadows(a)
        val bias = inferDenoiseProfileBias(a)
        val wb = computeDenoiseProfileWb(metadata)
        val p = floatArrayOf(
            max(shadows + 0.1f * ln(scale / wb[0]), 0.0f),
            max(shadows + 0.1f * ln(scale / wb[1]), 0.0f),
            max(shadows + 0.1f * ln(scale / wb[2]), 0.0f),
            1.0f
        )
        val compensateP = 0.05f / 0.05f.pow(shadows)
        val patchRadius = DenoiseProfileShaders.PATCH_RADIUS
        val searchRadius = DenoiseProfileShaders.SEARCH_RADIUS
        val patchWidth = 2 * patchRadius + 1
        val norm = 0.045f / (patchWidth * patchWidth).toFloat()
        val centralPixelWeight = 0.1f * scale
        val nlmStrength = strength.coerceAtLeast(1e-6f)
        val scaledWb = floatArrayOf(
            wb[0] * nlmStrength * scale,
            wb[1] * nlmStrength * scale,
            wb[2] * nlmStrength * scale,
            0.0f
        )
        val aa = floatArrayOf(a * compensateP, a * compensateP, a * compensateP, 1.0f)
        val bb = floatArrayOf(b, b, b, 1.0f)

        return DenoiseProfileParams(
            strength = strength,
            a = a,
            b = b,
            shadows = shadows,
            bias = bias,
            scale = scale,
            patchRadius = patchRadius,
            searchRadius = searchRadius,
            norm = norm,
            centralPixelWeight = centralPixelWeight,
            p = p,
            wb = scaledWb,
            aa = aa,
            bb = bb
        )
    }

    private fun inferDenoiseProfileShadows(a: Float): Float {
        return max(0.1f - 0.1f * ln(a), 0.7f).coerceAtMost(1.8f)
    }

    private fun inferDenoiseProfileBias(a: Float): Float {
        return -max(5f + 0.5f * ln(a), 0.0f)
    }

    private fun computeDenoiseProfileWb(metadata: RawMetadata): FloatArray {
        val r = metadata.whiteBalanceGains.getOrElse(0) { 1f }.coerceAtLeast(1e-6f)
        val g =
            ((metadata.whiteBalanceGains.getOrElse(1) { 1f } + metadata.whiteBalanceGains.getOrElse(
                2
            ) { 1f }) * 0.5f)
                .coerceAtLeast(1e-6f)
        val b = metadata.whiteBalanceGains.getOrElse(3) { 1f }.coerceAtLeast(1e-6f)
        return floatArrayOf(r, g, b, 0f)
    }

    private fun dispatchDenoisePreconditionV2(
        sourceTextureId: Int,
        outputTextureId: Int,
        width: Int,
        height: Int,
        params: DenoiseProfileParams
    ) {
        val program = denoisePreconditionV2Program
        GLES31.glUseProgram(program)
        bindComputeSampler(program, "uInput", 0, sourceTextureId)
        GLES31.glBindImageTexture(
            1,
            outputTextureId,
            0,
            false,
            0,
            GLES31.GL_WRITE_ONLY,
            GLES31.GL_RGBA16F
        )
        setDenoiseCommonUniforms(program, width, height, params)
        dispatchDenoiseImage(width, height, "DenoiseProfile NLM precondition")
    }

    private fun dispatchDenoiseNlm(
        originalTextureId: Int,
        preconditionedTextureId: Int,
        outputTextureId: Int,
        width: Int,
        height: Int,
        params: DenoiseProfileParams
    ) {
        dispatchDenoiseNlmInit(width, height)

        for (qy in -params.searchRadius..0) {
            for (qx in -params.searchRadius..params.searchRadius) {
                dispatchDenoiseNlmFusedAccumulate(
                    preconditionedTextureId,
                    width,
                    height,
                    qx,
                    qy,
                    params
                )
            }
        }

        dispatchDenoiseNlmFinish(originalTextureId, outputTextureId, width, height, params)
    }

    private fun dispatchDenoiseNlmInit(width: Int, height: Int) {
        GLES31.glUseProgram(denoiseNlmInitProgram)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, denoiseNlmU2BufferId)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(denoiseNlmInitProgram, "uImageSize"), width, height)
        dispatchDenoiseImage(width, height, "DenoiseProfile NLM init")
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
    }

    private fun dispatchDenoiseNlmFusedAccumulate(
        inputTextureId: Int,
        width: Int,
        height: Int,
        qx: Int,
        qy: Int,
        params: DenoiseProfileParams
    ) {
        GLES31.glUseProgram(denoiseNlmFusedAccuProgram)
        bindComputeSampler(denoiseNlmFusedAccuProgram, "uInput", 0, inputTextureId)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, denoiseNlmU2BufferId)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(denoiseNlmFusedAccuProgram, "uImageSize"), width, height)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(denoiseNlmFusedAccuProgram, "uQ"), qx, qy)
        GLES31.glUniform1f(GLES31.glGetUniformLocation(denoiseNlmFusedAccuProgram, "uNorm"), params.norm)
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(denoiseNlmFusedAccuProgram, "uCentralPixelWeight"),
            params.centralPixelWeight
        )
        dispatchDenoiseImage(width, height, "DenoiseProfile NLM fused accu q=($qx,$qy)")
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
    }

    private fun dispatchDenoiseNlmFinish(
        originalTextureId: Int,
        outputTextureId: Int,
        width: Int,
        height: Int,
        params: DenoiseProfileParams
    ) {
        val program = denoiseNlmFinishProgram
        GLES31.glUseProgram(program)
        bindComputeSampler(program, "uInput", 0, originalTextureId)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, denoiseNlmU2BufferId)
        GLES31.glBindImageTexture(
            1,
            outputTextureId,
            0,
            false,
            0,
            GLES31.GL_WRITE_ONLY,
            GLES31.GL_RGBA16F
        )
        setDenoiseCommonUniforms(program, width, height, params)
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(program, "uBias"),
            params.bias - 0.5f * ln(params.scale)
        )
        dispatchDenoiseImage(width, height, "DenoiseProfile NLM finish")
    }

    private fun setDenoiseCommonUniforms(
        program: Int,
        width: Int,
        height: Int,
        params: DenoiseProfileParams
    ) {
        GLES31.glUniform2i(GLES31.glGetUniformLocation(program, "uImageSize"), width, height)
        GLES31.glUniform4fv(GLES31.glGetUniformLocation(program, "uA"), 1, params.aa, 0)
        GLES31.glUniform4fv(GLES31.glGetUniformLocation(program, "uP"), 1, params.p, 0)
        GLES31.glUniform4fv(GLES31.glGetUniformLocation(program, "uB"), 1, params.bb, 0)
        GLES31.glUniform4fv(GLES31.glGetUniformLocation(program, "uWb"), 1, params.wb, 0)
    }

    private fun bindComputeSampler(program: Int, name: String, unit: Int, textureId: Int) {
        GLES31.glActiveTexture(GLES31.GL_TEXTURE0 + unit)
        GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, textureId)
        GLES31.glUniform1i(GLES31.glGetUniformLocation(program, name), unit)
    }

    private fun dispatchDenoiseImage(width: Int, height: Int, tag: String) {
        GLES31.glDispatchCompute((width + 15) / 16, (height + 15) / 16, 1)
        GLES31.glMemoryBarrier(
            GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT or
                    GLES31.GL_TEXTURE_FETCH_BARRIER_BIT or
                    GLES31.GL_FRAMEBUFFER_BARRIER_BIT
        )
        checkGlError(tag)
    }

    private fun renderPassthroughToTexture(
        sourceTextureId: Int,
        width: Int,
        height: Int,
        framebufferId: Int
    ) {
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebufferId)
        GLES30.glViewport(0, 0, width, height)
        GLES30.glUseProgram(passthroughProgram)
        val identityMatrix = FloatArray(16)
        GlMatrix.setIdentityM(identityMatrix, 0)
        GLES30.glUniformMatrix4fv(
            GLES30.glGetUniformLocation(passthroughProgram, "uTexMatrix"),
            1,
            false,
            identityMatrix,
            0
        )
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, sourceTextureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(passthroughProgram, "uTexture"), 0)
        drawQuad(passthroughProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        checkGlError("DenoiseProfile passthrough")
    }

    private fun roundUp(value: Int, multiple: Int): Int {
        return ((value + multiple - 1) / multiple) * multiple
    }

    private fun resolveDenoiseNoiseModel(
        metadata: RawMetadata,
        linearExposureGain: Float,
        fallbackGain: Float
    ): Pair<Float, Float> {
        var s = metadata.noiseProfile.getOrElse(0) { 0f }
        var o = metadata.noiseProfile.getOrElse(1) { 0f }

        if (s <= 0f || o <= 0f) {
            s = 1E-4f * fallbackGain
            o = 4.5E-7f * sqrt(fallbackGain)
        }

        val frameNoiseScale = 1f / metadata.frameCount.coerceAtLeast(1).toFloat()
        val gain = linearExposureGain.coerceAtLeast(1e-6f)
        val transformedS = s * frameNoiseScale * gain
        val transformedO = o * frameNoiseScale * gain * gain
        return transformedS.coerceAtLeast(1e-10f) to transformedO.coerceAtLeast(1e-10f)
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
        rowStride: Int
    ) {
        if (rawTextureId == 0) {
            val textures = IntArray(1)
            GLES30.glGenTextures(1, textures, 0)
            rawTextureId = textures[0]
        }

        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, rawTextureId)
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_MIN_FILTER,
            GLES30.GL_NEAREST
        )
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_MAG_FILTER,
            GLES30.GL_NEAREST
        )
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_WRAP_S,
            GLES30.GL_CLAMP_TO_EDGE
        )
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_WRAP_T,
            GLES30.GL_CLAMP_TO_EDGE
        )

        // 确保 buffer 位置从 0 开始
        buffer.position(0)

        // 关键优化：使用 GL_UNPACK_ROW_LENGTH 处理 padding
        val bytesPerPixel = 2 // 16-bit single-channel Bayer
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

        checkGlError("uploadRawTextureFromBuffer")
    }

    private fun uploadLinearRawRgbTextureFromBuffer(
        buffer: ByteBuffer,
        width: Int,
        height: Int,
        rowStride: Int
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

        buffer.position(0)
        val bytesPerPixel = 6
        val rowLength = rowStride / bytesPerPixel
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 2)
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ROW_LENGTH, rowLength)
        GLES30.glTexImage2D(
            GLES30.GL_TEXTURE_2D,
            0,
            GLES30.GL_RGB16UI,
            width,
            height,
            0,
            GLES30.GL_RGB_INTEGER,
            GLES30.GL_UNSIGNED_SHORT,
            buffer
        )
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ROW_LENGTH, 0)
        checkGlError("uploadLinearRawRgbTextureFromBuffer")
    }

    private fun renderLinearRawRgbToFramebuffer(
        sourceTextureId: Int,
        targetFramebufferId: Int,
        width: Int,
        height: Int
    ) {
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, targetFramebufferId)
        GLES30.glViewport(0, 0, width, height)
        GLES30.glUseProgram(linearRawRgbProgram)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, sourceTextureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(linearRawRgbProgram, "uLinearRawTexture"), 0)
        val identityMatrix = FloatArray(16)
        GlMatrix.setIdentityM(identityMatrix, 0)
        GLES30.glUniformMatrix4fv(
            GLES30.glGetUniformLocation(linearRawRgbProgram, "uTexMatrix"),
            1,
            false,
            identityMatrix,
            0
        )
        drawQuad(linearRawRgbProgram)
        GLES31.glMemoryBarrier(GLES31.GL_FRAMEBUFFER_BARRIER_BIT or GLES31.GL_TEXTURE_FETCH_BARRIER_BIT)
        checkGlError("renderLinearRawRgbToFramebuffer")
    }

    internal fun renderLinearHdrInputToFramebuffer(
        frame: LinearHdrFusionInputFrame,
        metadata: RawMetadata,
        targetFramebufferId: Int,
        label: String,
    ) {
        val rawBuffer = frame.rawData.duplicate().order(ByteOrder.nativeOrder())
        rawBuffer.position(0)
        var frameMetadata = metadata
        if (frame.blackLevel != null || frame.whiteLevel != null) {
            frameMetadata = frameMetadata.copy(
                blackLevel = frame.blackLevel ?: frameMetadata.blackLevel,
                whiteLevel = frame.whiteLevel ?: frameMetadata.whiteLevel,
            )
        }
        if (frame.lensShadingAlreadyApplied) {
            frameMetadata = frameMetadata.copy(
                lensShadingMap = null,
                lensShadingMapWidth = 0,
                lensShadingMapHeight = 0,
                lensShadingMapGrid = null,
            )
        }
        uploadRawTextureFromBuffer(rawBuffer, frame.width, frame.height, frame.rowStride)
        if (RawMetadata.isQuadBayer(frameMetadata.cfaPattern)) {
            runQuadBayerDemosaic(frameMetadata, frame.width, frame.height)
        } else {
            runStandardBayerRcdDemosaic(frameMetadata, frame.width, frame.height)
        }
        renderLinearRcdPass(
            metadata = frameMetadata,
            sourceTextureId = demosaicTextureId,
            targetFramebufferId = targetFramebufferId,
            viewportWidth = frame.width,
            viewportHeight = frame.height,
            rawExposureCompensation = 0f,
            colorCorrectionMatrix = floatArrayOf(
                1f, 0f, 0f,
                0f, 1f, 0f,
                0f, 0f, 1f
            ),
            applyDngBaselineExposure = false,
            applyProfileGainTableMap = false,
            clampProfileRgb = false,
            label = label
        )
        if (rawTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(rawTextureId), 0)
            rawTextureId = 0
        }
        GLES31.glMemoryBarrier(GLES31.GL_FRAMEBUFFER_BARRIER_BIT or GLES31.GL_TEXTURE_FETCH_BARRIER_BIT)
        checkGlError(label)
    }

    internal fun createRawHdrLinearTexture(
        width: Int,
        height: Int,
        internalFormat: Int,
        filter: Int = GLES30.GL_NEAREST,
    ): Int {
        val textures = IntArray(1)
        GLES30.glGenTextures(1, textures, 0)
        val textureId = textures[0]
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, textureId)
        GLES30.glTexStorage2D(GLES30.GL_TEXTURE_2D, 1, internalFormat, width, height)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, filter)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, filter)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        checkGlError("createRawHdrLinearTexture")
        return textureId
    }

    internal fun createFramebufferForTexture(textureId: Int, label: String): Int {
        val framebuffers = IntArray(1)
        GLES30.glGenFramebuffers(1, framebuffers, 0)
        val framebufferId = framebuffers[0]
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebufferId)
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER,
            GLES30.GL_COLOR_ATTACHMENT0,
            GLES30.GL_TEXTURE_2D,
            textureId,
            0
        )
        val status = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER)
        if (status != GLES30.GL_FRAMEBUFFER_COMPLETE) {
            throw IllegalStateException("$label framebuffer incomplete: $status")
        }
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        checkGlError("createFramebufferForTexture $label")
        return framebufferId
    }

    internal fun deleteTextureAndFramebuffer(textureId: Int, framebufferId: Int) {
        if (textureId != 0) GLES30.glDeleteTextures(1, intArrayOf(textureId), 0)
        if (framebufferId != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(framebufferId), 0)
    }

    internal fun clearRawHdrAccumulator(framebufferId: Int, width: Int, height: Int) {
        GLES30.glDisable(GLES30.GL_BLEND)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebufferId)
        GLES30.glViewport(0, 0, width, height)
        GLES30.glClearColor(0f, 0f, 0f, 0f)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
        checkGlError("clearRawHdrAccumulator")
    }

    internal fun renderRawHdrLinearAccumulation(
        currentTextureId: Int,
        normalTextureId: Int,
        longTextureId: Int,
        previousAccumulatorTextureId: Int,
        alignmentRobustnessTextureId: Int,
        useAlignmentRobustness: Boolean,
        scaleToShort: Float,
        longScaleToShort: Float,
        normalFrameCount: Float,
        noiseAlpha: Float,
        noiseBeta: Float,
        frameRole: Int,
        targetAccumulatorFramebufferId: Int,
        width: Int,
        height: Int,
        label: String,
    ) {
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, targetAccumulatorFramebufferId)
        GLES30.glViewport(0, 0, width, height)
        GLES30.glUseProgram(rawHdrLinearAccumulateProgram)
        GLES30.glDisable(GLES30.GL_BLEND)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, currentTextureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(rawHdrLinearAccumulateProgram, "uCurrentTexture"), 0)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE1)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, normalTextureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(rawHdrLinearAccumulateProgram, "uNormalTexture"), 1)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE2)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, longTextureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(rawHdrLinearAccumulateProgram, "uLongTexture"), 2)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE3)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, previousAccumulatorTextureId)
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(rawHdrLinearAccumulateProgram, "uPreviousAccumulatorTexture"),
            3
        )
        GLES30.glActiveTexture(GLES30.GL_TEXTURE4)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, alignmentRobustnessTextureId)
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(rawHdrLinearAccumulateProgram, "uAlignmentRobustnessTexture"),
            4
        )
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(rawHdrLinearAccumulateProgram, "uUseAlignmentRobustness"),
            if (useAlignmentRobustness) 1 else 0
        )
        GLES30.glUniform2f(
            GLES30.glGetUniformLocation(rawHdrLinearAccumulateProgram, "uTexelSize"),
            1f / width.toFloat(),
            1f / height.toFloat()
        )
        GLES30.glUniform1f(GLES30.glGetUniformLocation(rawHdrLinearAccumulateProgram, "uScaleToShort"), scaleToShort)
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(rawHdrLinearAccumulateProgram, "uLongScaleToShort"),
            longScaleToShort
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(rawHdrLinearAccumulateProgram, "uNormalFrameCount"),
            normalFrameCount.coerceAtLeast(1f)
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(rawHdrLinearAccumulateProgram, "uNoiseAlpha"),
            noiseAlpha.coerceAtLeast(0f)
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(rawHdrLinearAccumulateProgram, "uNoiseBeta"),
            noiseBeta.coerceAtLeast(0f)
        )
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(rawHdrLinearAccumulateProgram, "uFrameRole"),
            frameRole
        )
        val identityMatrix = FloatArray(16)
        GlMatrix.setIdentityM(identityMatrix, 0)
        GLES30.glUniformMatrix4fv(
            GLES30.glGetUniformLocation(rawHdrLinearAccumulateProgram, "uTexMatrix"),
            1,
            false,
            identityMatrix,
            0
        )
        drawQuad(rawHdrLinearAccumulateProgram)
        GLES31.glMemoryBarrier(GLES31.GL_FRAMEBUFFER_BARRIER_BIT or GLES31.GL_TEXTURE_FETCH_BARRIER_BIT)
        checkGlError(label)
    }

    internal fun renderRawHdrLinearNormalize(
        accumulatorTextureId: Int,
        fusedFramebufferId: Int,
        width: Int,
        height: Int,
    ) {
        GLES30.glDisable(GLES30.GL_BLEND)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, fusedFramebufferId)
        GLES30.glViewport(0, 0, width, height)
        GLES30.glUseProgram(rawHdrLinearNormalizeProgram)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, accumulatorTextureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(rawHdrLinearNormalizeProgram, "uAccumulatorTexture"), 0)
        val identityMatrix = FloatArray(16)
        GlMatrix.setIdentityM(identityMatrix, 0)
        GLES30.glUniformMatrix4fv(
            GLES30.glGetUniformLocation(rawHdrLinearNormalizeProgram, "uTexMatrix"),
            1,
            false,
            identityMatrix,
            0
        )
        drawQuad(rawHdrLinearNormalizeProgram)
        GLES31.glMemoryBarrier(GLES31.GL_FRAMEBUFFER_BARRIER_BIT or GLES31.GL_TEXTURE_FETCH_BARRIER_BIT)
        checkGlError("renderRawHdrLinearNormalize")
    }

    internal fun readRawHdrLinearRgbx16(
        fusedFramebufferId: Int,
        width: Int,
        height: Int,
    ): ByteBuffer? {
        val pixelSize = width.toLong() * height.toLong() * 8L
        if (pixelSize <= 0L || pixelSize > Int.MAX_VALUE) {
            PLog.e(TAG, "RAW HDR RGBX16 readback size invalid: ${width}x$height")
            return null
        }
        val pixelBuffer = LargeDirectBuffer.allocate(pixelSize, "RAW HDR linear RGBX16")
            ?.order(ByteOrder.nativeOrder())
            ?: return null
        return try {
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, fusedFramebufferId)
            GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 8)
            GLES30.glReadPixels(
                0,
                0,
                width,
                height,
                GLES30.GL_RGBA_INTEGER,
                GLES30.GL_UNSIGNED_SHORT,
                pixelBuffer
            )
            pixelBuffer.position(0)
            checkGlError("RAW HDR RGBX16 readback")
            pixelBuffer
        } catch (e: Exception) {
            LargeDirectBuffer.free(pixelBuffer)
            throw e
        } finally {
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        }
    }

    internal fun renderRawHdrLinearPreviewBitmap(
        fusedTextureId: Int,
        width: Int,
        height: Int,
        aspectRatio: AspectRatio,
        rotation: Int,
        baselineExposureEv: Float,
        metadata: RawMetadata,
    ): Bitmap? {
        val bounds = BitmapUtils.calculateProcessedRect(width, height, aspectRatio, null, rotation)
        if (bounds.isEmpty) return null
        setupCombinedFramebuffer(bounds.width(), bounds.height())
        renderRawHdrLinearPreviewPass(
            fusedTextureId = fusedTextureId,
            width = width,
            height = height,
            bounds = bounds,
            rotation = rotation,
            baselineExposureEv = baselineExposureEv,
            metadata = metadata,
        )
        return readCombinedArgb8888Bitmap(bounds.width(), bounds.height())
    }

    private fun renderRawHdrLinearPreviewPass(
        fusedTextureId: Int,
        width: Int,
        height: Int,
        bounds: Rect,
        rotation: Int,
        baselineExposureEv: Float,
        metadata: RawMetadata,
    ) {
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, combinedFramebufferId)
        GLES30.glViewport(0, 0, bounds.width(), bounds.height())
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
        GLES30.glUseProgram(rawHdrLinearPreviewProgram)
        val isSwapped = rotation == 90 || rotation == 270
        val cropW: Float
        val cropH: Float
        val cropCenterX: Float
        val cropCenterY: Float
        if (isSwapped) {
            cropW = bounds.height().toFloat()
            cropH = bounds.width().toFloat()
            cropCenterX = bounds.top + bounds.height() / 2f
            cropCenterY = bounds.left + bounds.width() / 2f
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
            GLES30.glGetUniformLocation(rawHdrLinearPreviewProgram, "uTexMatrix"),
            1,
            false,
            texMatrix,
            0
        )
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, fusedTextureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(rawHdrLinearPreviewProgram, "uFusedTexture"), 0)
        val previewColorMatrix = multiplyMatrix3x3(
            computeWorkingToOutputTransform(RawRenderingEngine.AdobeCurve.workingColorSpace, ColorSpace.SRGB),
            metadata.colorCorrectionMatrix
        )
        GLES30.glUniformMatrix3fv(
            GLES30.glGetUniformLocation(rawHdrLinearPreviewProgram, "uColorCorrectionMatrix"),
            1,
            false,
            transposeMatrix3x3(previewColorMatrix),
            0
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(rawHdrLinearPreviewProgram, "uExposureGain"),
            2.0f.pow(baselineExposureEv)
        )
        drawQuad(rawHdrLinearPreviewProgram)
        checkGlError("renderRawHdrLinearPreviewPass")
    }

    private fun readCombinedArgb8888Bitmap(width: Int, height: Int): Bitmap? {
        val pixelSize = width * height * 4
        val pixelBuffer = try {
            obtainReadbackBuffer(pixelSize)
        } catch (e: OutOfMemoryError) {
            PLog.e(TAG, "OOM allocating RAW HDR preview buffer ($width x $height)", e)
            return null
        }
        pixelBuffer.clear()
        pixelBuffer.limit(pixelSize)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, combinedFramebufferId)
        GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 1)
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
        checkGlError("RAW HDR preview readback")
        return try {
            Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888).also { bitmap ->
                bitmap.copyPixelsFromBuffer(pixelBuffer)
            }
        } catch (e: OutOfMemoryError) {
            PLog.e(TAG, "OOM creating RAW HDR preview bitmap ($width x $height)", e)
            null
        }
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
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_MIN_FILTER,
            GLES30.GL_NEAREST
        )
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_MAG_FILTER,
            GLES30.GL_NEAREST
        )
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_WRAP_S,
            GLES30.GL_CLAMP_TO_EDGE
        )
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_WRAP_T,
            GLES30.GL_CLAMP_TO_EDGE
        )

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
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_WRAP_S,
            GLES30.GL_CLAMP_TO_EDGE
        )
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_WRAP_T,
            GLES30.GL_CLAMP_TO_EDGE
        )

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

    private fun hasValidLensShadingMap(metadata: RawMetadata): Boolean {
        val map = metadata.lensShadingMap ?: return false
        val width = metadata.lensShadingMapWidth
        val height = metadata.lensShadingMapHeight
        return width > 0 && height > 0 && map.size >= width * height * 4
    }

    private fun lensShadingLogString(metadata: RawMetadata): String {
        if (!hasValidLensShadingMap(metadata)) return "none"
        val grid = metadata.lensShadingMapGrid
        return when {
            grid != null && grid.size >= 8 -> {
                "${metadata.lensShadingMapWidth}x${metadata.lensShadingMapHeight},dng," +
                        "bounds=${grid[4]},${grid[5]},${grid[6]},${grid[7]}"
            }
            grid != null && grid.size >= 4 -> {
                "${metadata.lensShadingMapWidth}x${metadata.lensShadingMapHeight},dng"
            }
            else -> {
                "${metadata.lensShadingMapWidth}x${metadata.lensShadingMapHeight},camera2"
            }
        }
    }

    private fun runStandardBayerRcdDemosaic(
        metadata: RawMetadata,
        width: Int,
        height: Int
    ) {
        val ssboIds = IntArray(9)
        GLES31.glGenBuffers(9, ssboIds, 0)
        val extraMargin = 1024 * 1024
        val fullSize = width * height * 4 + extraMargin
        for (i in 0 until 9) {
            GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, ssboIds[i])
            GLES31.glBufferData(
                GLES31.GL_SHADER_STORAGE_BUFFER,
                fullSize,
                null,
                GLES31.GL_DYNAMIC_DRAW
            )
            if (i < 8) {
                GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, i, ssboIds[i])
            }
        }
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)

        val blackLevel4 = FloatArray(4) { idx ->
            metadata.blackLevel.getOrElse(idx) {
                metadata.blackLevel.firstOrNull() ?: 0f
            }.coerceAtLeast(0f)
        }
        val metadataWbGains = metadata.whiteBalanceGains
        val highlightWbGains = highlightReconstructionWbGains(metadata)
        val lscSize = lensShadingLogString(metadata)

        try {
            GLES31.glUseProgram(rcdPopulateProgram)
            GLES31.glActiveTexture(GLES31.GL_TEXTURE0 + RCD_RAW_TEXTURE_UNIT)
            GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, rawTextureId)
            GLES31.glUniform1i(
                GLES31.glGetUniformLocation(rcdPopulateProgram, "uRawTexture"),
                RCD_RAW_TEXTURE_UNIT
            )
            bindLensShadingForRcdPopulate(metadata)
            GLES31.glUniform2i(GLES31.glGetUniformLocation(rcdPopulateProgram, "uImageSize"), width, height)
            GLES31.glUniform1i(GLES31.glGetUniformLocation(rcdPopulateProgram, "uCfaPattern"), metadata.cfaPattern)
            GLES31.glUniform4fv(GLES31.glGetUniformLocation(rcdPopulateProgram, "uBlackLevel"), 1, blackLevel4, 0)
            GLES31.glUniform1f(GLES31.glGetUniformLocation(rcdPopulateProgram, "uWhiteLevel"), metadata.whiteLevel)
            GLES31.glUniform1f(
                GLES31.glGetUniformLocation(rcdPopulateProgram, "uHighlightClipThreshold"),
                RCD_HIGHLIGHT_RECONSTRUCTION_THRESHOLD
            )
            GLES31.glUniform1f(
                GLES31.glGetUniformLocation(rcdPopulateProgram, "uHighlightCeiling"),
                RCD_HIGHLIGHT_RECONSTRUCTION_CEILING
            )
            GLES31.glUniform1i(
                GLES31.glGetUniformLocation(rcdPopulateProgram, "uHighlightReconstructionEnabled"),
                1
            )
            GLES31.glUniform4fv(
                GLES31.glGetUniformLocation(rcdPopulateProgram, "uWhiteBalanceGains"),
                1,
                highlightWbGains,
                0
            )
            PLog.d(
                TAG,
                "Linear RCD populate: cfa=${metadata.cfaPattern} black=${blackLevel4.contentToString()} " +
                    "white=${metadata.whiteLevel} metadataWb=${metadataWbGains.contentToString()} " +
                    "highlightWb=${highlightWbGains.contentToString()} lsc=$lscSize"
            )
            GLES31.glDispatchCompute((width + 15) / 16, (height + 15) / 16, 1)
            GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
            checkGlError("Linear RCD Populate")

            GLES31.glUseProgram(rcdStep1Program)
            GLES31.glUniform2i(GLES31.glGetUniformLocation(rcdStep1Program, "uImageSize"), width, height)
            GLES31.glDispatchCompute((width + 15) / 16, (height + 15) / 16, 1)
            GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
            checkGlError("Linear RCD Step 1")

            GLES31.glUseProgram(rcdStep2Program)
            GLES31.glUniform2i(GLES31.glGetUniformLocation(rcdStep2Program, "uImageSize"), width, height)
            GLES31.glUniform1i(GLES31.glGetUniformLocation(rcdStep2Program, "uCfaPattern"), metadata.cfaPattern)
            GLES31.glDispatchCompute((width / 2 + 15) / 16, (height + 15) / 16, 1)
            GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
            checkGlError("Linear RCD Step 2")

            GLES31.glUseProgram(rcdStep3Program)
            GLES31.glUniform2i(GLES31.glGetUniformLocation(rcdStep3Program, "uImageSize"), width, height)
            GLES31.glUniform1i(GLES31.glGetUniformLocation(rcdStep3Program, "uCfaPattern"), metadata.cfaPattern)
            GLES31.glDispatchCompute((width / 2 + 15) / 16, (height + 15) / 16, 1)
            GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
            checkGlError("Linear RCD Step 3")

            GLES31.glUseProgram(rcdStep40Program)
            GLES31.glUniform2i(GLES31.glGetUniformLocation(rcdStep40Program, "uImageSize"), width, height)
            GLES31.glDispatchCompute((width / 2 + 15) / 16, (height + 15) / 16, 1)
            GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
            checkGlError("Linear RCD Step 4_0")

            GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, RCD_PQ_WRITE_BINDING, ssboIds[8])
            GLES31.glUseProgram(rcdStep41Program)
            GLES31.glUniform2i(GLES31.glGetUniformLocation(rcdStep41Program, "uImageSize"), width, height)
            GLES31.glUniform1i(GLES31.glGetUniformLocation(rcdStep41Program, "uCfaPattern"), metadata.cfaPattern)
            GLES31.glDispatchCompute((width / 2 + 15) / 16, (height + 15) / 16, 1)
            GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
            checkGlError("Linear RCD Step 4_1")

            GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, RCD_PQ_READ_BINDING, ssboIds[8])
            GLES31.glUseProgram(rcdStep42Program)
            GLES31.glUniform2i(GLES31.glGetUniformLocation(rcdStep42Program, "uImageSize"), width, height)
            GLES31.glUniform1i(GLES31.glGetUniformLocation(rcdStep42Program, "uCfaPattern"), metadata.cfaPattern)
            GLES31.glDispatchCompute((width / 2 + 15) / 16, (height + 15) / 16, 1)
            GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
            checkGlError("Linear RCD Step 4_2")

            GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, RCD_VH_DIR_BINDING, ssboIds[4])
            GLES31.glUseProgram(rcdStep43Program)
            GLES31.glUniform2i(GLES31.glGetUniformLocation(rcdStep43Program, "uImageSize"), width, height)
            GLES31.glUniform1i(GLES31.glGetUniformLocation(rcdStep43Program, "uCfaPattern"), metadata.cfaPattern)
            GLES31.glDispatchCompute((width / 2 + 15) / 16, (height + 15) / 16, 1)
            GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
            checkGlError("Linear RCD Step 4_3")

            GLES31.glUseProgram(rcdWriteOutputProgram)
            GLES31.glUniform2i(GLES31.glGetUniformLocation(rcdWriteOutputProgram, "uImageSize"), width, height)
            GLES31.glUniform1i(GLES31.glGetUniformLocation(rcdWriteOutputProgram, "uCfaPattern"), metadata.cfaPattern)
            GLES31.glUniform1i(GLES31.glGetUniformLocation(rcdWriteOutputProgram, "uBorder"), RCD_OUTPUT_MARGIN)
            GLES31.glBindImageTexture(
                RCD_OUTPUT_IMAGE_UNIT,
                demosaicTextureId,
                0,
                false,
                0,
                GLES31.GL_WRITE_ONLY,
                GLES31.GL_RGBA16F
            )
            GLES31.glDispatchCompute((width + 15) / 16, (height + 15) / 16, 1)
            GLES31.glMemoryBarrier(GLES31.GL_ALL_BARRIER_BITS)
            checkGlError("Linear RCD Write Output")
            GLES31.glBindImageTexture(
                RCD_OUTPUT_IMAGE_UNIT,
                0,
                0,
                false,
                0,
                GLES31.GL_WRITE_ONLY,
                GLES31.GL_RGBA16F
            )
            GLES30.glFinish()
        } finally {
            GLES31.glDeleteBuffers(9, ssboIds, 0)
            for (i in 0 until 8) {
                GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, i, 0)
            }
        }
    }

    private fun runQuadBayerDemosaic(
        metadata: RawMetadata,
        width: Int,
        height: Int,
        highlightReconstructionEnabled: Boolean = true
    ) {
        val ssboIds = IntArray(6)
        GLES31.glGenBuffers(6, ssboIds, 0)
        val extraMargin = 1024 * 1024
        val fullSize = width * height * 4 + extraMargin
        for (i in 0 until 6) {
            GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, ssboIds[i])
            GLES31.glBufferData(
                GLES31.GL_SHADER_STORAGE_BUFFER,
                fullSize,
                null,
                GLES31.GL_DYNAMIC_DRAW
            )
            GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, i, ssboIds[i])
        }
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)

        val blackLevel4 = FloatArray(4) { idx ->
            metadata.blackLevel.getOrElse(idx) {
                metadata.blackLevel.firstOrNull() ?: 0f
            }.coerceAtLeast(0f)
        }
        val metadataWbGains = metadata.whiteBalanceGains
        val highlightWbGains = highlightReconstructionWbGains(metadata)
        val lscSize = lensShadingLogString(metadata)
        val expandedBlockSize = RawCfaCorrection.expandedBayerBlockSize(metadata.cfaPattern)

        GLES31.glUseProgram(quadPopulateProgram)
        GLES31.glActiveTexture(GLES31.GL_TEXTURE0 + RCD_RAW_TEXTURE_UNIT)
        GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, rawTextureId)
        GLES31.glUniform1i(
            GLES31.glGetUniformLocation(quadPopulateProgram, "uRawTexture"),
            RCD_RAW_TEXTURE_UNIT
        )
        bindLensShadingForProgram(quadPopulateProgram, metadata)
        GLES31.glUniform2i(
            GLES31.glGetUniformLocation(quadPopulateProgram, "uImageSize"),
            width,
            height
        )
        GLES31.glUniform1i(
            GLES31.glGetUniformLocation(quadPopulateProgram, "uCfaPattern"),
            metadata.cfaPattern
        )
        GLES31.glUniform4fv(
            GLES31.glGetUniformLocation(quadPopulateProgram, "uBlackLevel"),
            1,
            blackLevel4,
            0
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(quadPopulateProgram, "uWhiteLevel"),
            metadata.whiteLevel
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(quadPopulateProgram, "uHighlightClipThreshold"),
            RCD_HIGHLIGHT_RECONSTRUCTION_THRESHOLD
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(quadPopulateProgram, "uHighlightCeiling"),
            RCD_HIGHLIGHT_RECONSTRUCTION_CEILING
        )
        GLES31.glUniform1i(
            GLES31.glGetUniformLocation(quadPopulateProgram, "uHighlightReconstructionEnabled"),
            if (highlightReconstructionEnabled) 1 else 0
        )
        GLES31.glUniform4fv(
            GLES31.glGetUniformLocation(quadPopulateProgram, "uWhiteBalanceGains"),
            1,
            highlightWbGains,
            0
        )
        PLog.d(
            TAG,
            "Expanded Bayer populate: cfa=${metadata.cfaPattern} block=${expandedBlockSize}x$expandedBlockSize " +
                    "black=${blackLevel4.contentToString()} " +
                    "white=${metadata.whiteLevel} metadataWb=${metadataWbGains.contentToString()} " +
                    "highlightWb=${highlightWbGains.contentToString()} lsc=$lscSize " +
                    "highlightReconstruction=$highlightReconstructionEnabled " +
                    "highlightThreshold=$RCD_HIGHLIGHT_RECONSTRUCTION_THRESHOLD " +
                    "highlightCeiling=$RCD_HIGHLIGHT_RECONSTRUCTION_CEILING"
        )
        GLES31.glDispatchCompute((width + 15) / 16, (height + 15) / 16, 1)
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
        checkGlError("Quad Bayer Populate")

        GLES31.glUseProgram(quadGreenProgram)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(quadGreenProgram, "uImageSize"), width, height)
        GLES31.glUniform1i(
            GLES31.glGetUniformLocation(quadGreenProgram, "uCfaPattern"),
            metadata.cfaPattern
        )
        GLES31.glDispatchCompute((width + 15) / 16, (height + 15) / 16, 1)
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
        checkGlError("Quad Bayer Green")

        GLES31.glUseProgram(quadChromaProgram)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(quadChromaProgram, "uImageSize"), width, height)
        GLES31.glUniform1i(
            GLES31.glGetUniformLocation(quadChromaProgram, "uCfaPattern"),
            metadata.cfaPattern
        )
        GLES31.glDispatchCompute((width + 15) / 16, (height + 15) / 16, 1)
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
        checkGlError("Quad Bayer Chroma")

        GLES31.glUseProgram(quadRefineProgram)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(quadRefineProgram, "uImageSize"), width, height)
        GLES31.glUniform1i(
            GLES31.glGetUniformLocation(quadRefineProgram, "uCfaPattern"),
            metadata.cfaPattern
        )
        GLES31.glDispatchCompute((width + 15) / 16, (height + 15) / 16, 1)
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
        checkGlError("Quad Bayer Refine")

        GLES31.glUseProgram(quadWriteOutputProgram)
        GLES31.glUniform2i(
            GLES31.glGetUniformLocation(quadWriteOutputProgram, "uImageSize"),
            width,
            height
        )
        GLES31.glBindImageTexture(
            RCD_OUTPUT_IMAGE_UNIT,
            demosaicTextureId,
            0,
            false,
            0,
            GLES31.GL_WRITE_ONLY,
            GLES31.GL_RGBA16F
        )
        GLES31.glDispatchCompute((width + 15) / 16, (height + 15) / 16, 1)
        GLES31.glMemoryBarrier(GLES31.GL_ALL_BARRIER_BITS)
        checkGlError("Quad Bayer Write Output")

        GLES31.glBindImageTexture(
            RCD_OUTPUT_IMAGE_UNIT,
            0,
            0,
            false,
            0,
            GLES31.GL_WRITE_ONLY,
            GLES31.GL_RGBA16F
        )

        GLES30.glFinish()
        GLES31.glDeleteBuffers(6, ssboIds, 0)
        for (i in 0 until 6) {
            GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, i, 0)
        }
    }

    private fun bindLensShadingForRcdPopulate(metadata: RawMetadata) {
        bindLensShadingForProgram(rcdPopulateProgram, metadata)
    }

    private fun bindLensShadingForProgram(program: Int, metadata: RawMetadata) {
        val enabled = hasValidLensShadingMap(metadata)
        GLES31.glActiveTexture(GLES31.GL_TEXTURE0 + RCD_LENS_SHADING_TEXTURE_UNIT)
        if (enabled) {
            uploadLensShadingTexture(metadata)
            GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, lensShadingTextureId)
        } else {
            GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, 0)
        }
        GLES31.glUniform1i(
            GLES31.glGetUniformLocation(program, "uLensShadingMap"),
            RCD_LENS_SHADING_TEXTURE_UNIT
        )
        GLES31.glUniform1i(
            GLES31.glGetUniformLocation(program, "uLensShadingEnabled"),
            if (enabled) 1 else 0
        )
        GLES31.glUniform2f(
            GLES31.glGetUniformLocation(program, "uLensShadingMapSize"),
            metadata.lensShadingMapWidth.toFloat(),
            metadata.lensShadingMapHeight.toFloat()
        )
        val grid = metadata.lensShadingMapGrid
        val usesDngGrid = enabled && grid != null && grid.size >= 4
        GLES31.glUniform1i(
            GLES31.glGetUniformLocation(program, "uLensShadingUsesDngGrid"),
            if (usesDngGrid) 1 else 0
        )
        GLES31.glUniform4f(
            GLES31.glGetUniformLocation(program, "uLensShadingGrid"),
            grid?.getOrElse(0) { 0f } ?: 0f,
            grid?.getOrElse(1) { 0f } ?: 0f,
            grid?.getOrElse(2) { 1f } ?: 1f,
            grid?.getOrElse(3) { 1f } ?: 1f
        )
        val boundsLeft = grid?.getOrElse(4) { 0f } ?: 0f
        val boundsTop = grid?.getOrElse(5) { 0f } ?: 0f
        val boundsRight = grid?.getOrElse(6) { metadata.width.toFloat() } ?: metadata.width.toFloat()
        val boundsBottom = grid?.getOrElse(7) { metadata.height.toFloat() } ?: metadata.height.toFloat()
        GLES31.glUniform2f(
            GLES31.glGetUniformLocation(program, "uLensShadingBoundsOrigin"),
            boundsLeft,
            boundsTop
        )
        GLES31.glUniform2f(
            GLES31.glGetUniformLocation(program, "uLensShadingBoundsSize"),
            (boundsRight - boundsLeft).coerceAtLeast(1f),
            (boundsBottom - boundsTop).coerceAtLeast(1f)
        )
    }

    private fun logGlResourceLimits() {
        val value = IntArray(1)
        GLES30.glGetIntegerv(GLES30.GL_MAX_TEXTURE_IMAGE_UNITS, value, 0)
        val textureImageUnits = value[0]
        GLES30.glGetIntegerv(GLES31.GL_MAX_IMAGE_UNITS, value, 0)
        val imageUnits = value[0]
        GLES30.glGetIntegerv(GLES31.GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS, value, 0)
        val ssboBindings = value[0]
        GLES30.glGetIntegerv(GLES31.GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS, value, 0)
        val computeSsboBlocks = value[0]
        PLog.d(
            TAG,
            "GL limits: textureImageUnits=$textureImageUnits imageUnits=$imageUnits " +
                    "ssboBindings=$ssboBindings computeSsboBlocks=$computeSsboBlocks"
        )
    }

    private fun createDummyShadingTexture(): Int {
        val textures = IntArray(1)
        GLES30.glGenTextures(1, textures, 0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, textures[0])
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_MIN_FILTER,
            GLES30.GL_NEAREST
        )
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_MAG_FILTER,
            GLES30.GL_NEAREST
        )

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
            GLES30.glDeleteTextures(2, intArrayOf(demosaicTextureId, linearOutputTextureId), 0)
            GLES30.glDeleteFramebuffers(
                2,
                intArrayOf(demosaicFramebufferId, linearOutputFramebufferId),
                0
            )
            demosaicTextureId = 0
            linearOutputTextureId = 0
            demosaicFramebufferId = 0
            linearOutputFramebufferId = 0
        }

        demosaicWidth = width
        demosaicHeight = height

        val textures = IntArray(2)
        GLES30.glGenTextures(2, textures, 0)
        demosaicTextureId = textures[0]
        linearOutputTextureId = textures[1]

        val fbos = IntArray(2)
        GLES30.glGenFramebuffers(2, fbos, 0)
        demosaicFramebufferId = fbos[0]
        linearOutputFramebufferId = fbos[1]

        // 分配并配置第一个 Immutable 纹理
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, demosaicTextureId)
        GLES30.glTexStorage2D(GLES30.GL_TEXTURE_2D, 1, GLES30.GL_RGBA16F, width, height)
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_MIN_FILTER,
            GLES30.GL_NEAREST
        )
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_MAG_FILTER,
            GLES30.GL_NEAREST
        )
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_WRAP_S,
            GLES30.GL_CLAMP_TO_EDGE
        )
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_WRAP_T,
            GLES30.GL_CLAMP_TO_EDGE
        )

        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, demosaicFramebufferId)
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0,
            GLES30.GL_TEXTURE_2D, demosaicTextureId, 0
        )

        // 分配并配置第二个 Immutable 纹理
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, linearOutputTextureId)
        GLES30.glTexStorage2D(GLES30.GL_TEXTURE_2D, 1, GLES30.GL_RGBA16F, width, height)
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_MIN_FILTER,
            GLES30.GL_NEAREST
        )
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_MAG_FILTER,
            GLES30.GL_NEAREST
        )
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_WRAP_S,
            GLES30.GL_CLAMP_TO_EDGE
        )
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_WRAP_T,
            GLES30.GL_CLAMP_TO_EDGE
        )

        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, linearOutputFramebufferId)
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0,
            GLES30.GL_TEXTURE_2D, linearOutputTextureId, 0
        )

        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        checkGlError("setupFullResFramebuffer Double Buffered")
    }

    private fun setupDarktableFilmicHighlightReconstructionFramebuffers(width: Int, height: Int) {
        if (filmicHrWidth == width && filmicHrHeight == height &&
            filmicHrMaskFramebufferId != 0 && filmicHrWorkingFramebufferId != 0 &&
            filmicHrReconstructedFramebufferIds.all { it != 0 }
        ) {
            return
        }

        releaseDarktableFilmicHighlightReconstructionFramebuffers()
        filmicHrWidth = width
        filmicHrHeight = height

        createFilmicHrTextureAndFramebuffer(width, height, GLES30.GL_R16F, "filmicHrMask").also {
            filmicHrMaskTextureId = it.first
            filmicHrMaskFramebufferId = it.second
        }
        createFilmicHrTextureAndFramebuffer(width, height, GLES30.GL_RGBA16F, "filmicHrWorking").also {
            filmicHrWorkingTextureId = it.first
            filmicHrWorkingFramebufferId = it.second
        }
        createFilmicHrTextureAndFramebuffer(width, height, GLES30.GL_RGBA16F, "filmicHrTemp").also {
            filmicHrTempTextureId = it.first
            filmicHrTempFramebufferId = it.second
        }
        createFilmicHrTextureAndFramebuffer(width, height, GLES30.GL_RGBA16F, "filmicHrLfEven").also {
            filmicHrLfEvenTextureId = it.first
            filmicHrLfEvenFramebufferId = it.second
        }
        createFilmicHrTextureAndFramebuffer(width, height, GLES30.GL_RGBA16F, "filmicHrLfOdd").also {
            filmicHrLfOddTextureId = it.first
            filmicHrLfOddFramebufferId = it.second
        }
        createFilmicHrTextureAndFramebuffer(width, height, GLES30.GL_RGBA16F, "filmicHrHighFrequency").also {
            filmicHrHighFrequencyTextureId = it.first
            filmicHrHighFrequencyFramebufferId = it.second
        }
        createFilmicHrTextureAndFramebuffer(width, height, GLES30.GL_RGBA16F, "filmicHrHighFrequencyRgb").also {
            filmicHrHighFrequencyRgbTextureId = it.first
            filmicHrHighFrequencyRgbFramebufferId = it.second
        }
        createFilmicHrTextureAndFramebuffer(width, height, GLES30.GL_R16F, "filmicHrNorms").also {
            filmicHrNormsTextureId = it.first
            filmicHrNormsFramebufferId = it.second
        }
        for (i in filmicHrReconstructedTextureIds.indices) {
            createFilmicHrTextureAndFramebuffer(width, height, GLES30.GL_RGBA16F, "filmicHrReconstructed$i").also {
                filmicHrReconstructedTextureIds[i] = it.first
                filmicHrReconstructedFramebufferIds[i] = it.second
            }
        }
        checkGlError("setupDarktableFilmicHighlightReconstructionFramebuffers")
    }

    private fun createFilmicHrTextureAndFramebuffer(
        width: Int,
        height: Int,
        internalFormat: Int,
        label: String,
    ): Pair<Int, Int> {
        val textures = IntArray(1)
        GLES30.glGenTextures(1, textures, 0)
        val textureId = textures[0]
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, textureId)
        GLES30.glTexStorage2D(GLES30.GL_TEXTURE_2D, 1, internalFormat, width, height)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_NEAREST)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_NEAREST)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        return textureId to createFramebufferForTexture(textureId, label)
    }

    private fun releaseDarktableFilmicHighlightReconstructionFramebuffers() {
        deleteTextureAndFramebuffer(filmicHrMaskTextureId, filmicHrMaskFramebufferId)
        deleteTextureAndFramebuffer(filmicHrWorkingTextureId, filmicHrWorkingFramebufferId)
        deleteTextureAndFramebuffer(filmicHrTempTextureId, filmicHrTempFramebufferId)
        deleteTextureAndFramebuffer(filmicHrLfEvenTextureId, filmicHrLfEvenFramebufferId)
        deleteTextureAndFramebuffer(filmicHrLfOddTextureId, filmicHrLfOddFramebufferId)
        deleteTextureAndFramebuffer(filmicHrHighFrequencyTextureId, filmicHrHighFrequencyFramebufferId)
        deleteTextureAndFramebuffer(filmicHrHighFrequencyRgbTextureId, filmicHrHighFrequencyRgbFramebufferId)
        deleteTextureAndFramebuffer(filmicHrNormsTextureId, filmicHrNormsFramebufferId)
        for (i in filmicHrReconstructedTextureIds.indices) {
            deleteTextureAndFramebuffer(
                filmicHrReconstructedTextureIds[i],
                filmicHrReconstructedFramebufferIds[i]
            )
            filmicHrReconstructedTextureIds[i] = 0
            filmicHrReconstructedFramebufferIds[i] = 0
        }
        filmicHrMaskTextureId = 0
        filmicHrMaskFramebufferId = 0
        filmicHrWorkingTextureId = 0
        filmicHrWorkingFramebufferId = 0
        filmicHrTempTextureId = 0
        filmicHrTempFramebufferId = 0
        filmicHrLfEvenTextureId = 0
        filmicHrLfEvenFramebufferId = 0
        filmicHrLfOddTextureId = 0
        filmicHrLfOddFramebufferId = 0
        filmicHrHighFrequencyTextureId = 0
        filmicHrHighFrequencyFramebufferId = 0
        filmicHrHighFrequencyRgbTextureId = 0
        filmicHrHighFrequencyRgbFramebufferId = 0
        filmicHrNormsTextureId = 0
        filmicHrNormsFramebufferId = 0
        filmicHrWidth = 0
        filmicHrHeight = 0
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

    private fun setupEngineToneFramebuffer(width: Int, height: Int) {
        if (engineToneWidth == width && engineToneHeight == height && engineToneFramebufferId != 0) {
            return
        }

        if (engineToneTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(engineToneTextureId), 0)
        }
        if (engineToneFramebufferId != 0) {
            GLES30.glDeleteFramebuffers(1, intArrayOf(engineToneFramebufferId), 0)
        }

        engineToneWidth = width
        engineToneHeight = height

        val textures = IntArray(1)
        GLES30.glGenTextures(1, textures, 0)
        engineToneTextureId = textures[0]
        configureLinearIntermediateTexture(engineToneTextureId, width, height)

        val framebuffers = IntArray(1)
        GLES30.glGenFramebuffers(1, framebuffers, 0)
        engineToneFramebufferId = framebuffers[0]
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, engineToneFramebufferId)
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER,
            GLES30.GL_COLOR_ATTACHMENT0,
            GLES30.GL_TEXTURE_2D,
            engineToneTextureId,
            0
        )
        checkGlError("setupEngineToneFramebuffer")
    }

    private fun setupAdjustmentFramebuffer(width: Int, height: Int) {
        if (adjustmentWidth == width && adjustmentHeight == height && adjustmentFramebufferId != 0) {
            return
        }

        if (adjustmentTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(adjustmentTextureId), 0)
        }
        if (adjustmentFramebufferId != 0) {
            GLES30.glDeleteFramebuffers(1, intArrayOf(adjustmentFramebufferId), 0)
        }

        adjustmentWidth = width
        adjustmentHeight = height

        val textures = IntArray(1)
        GLES30.glGenTextures(1, textures, 0)
        adjustmentTextureId = textures[0]
        configureLinearIntermediateTexture(adjustmentTextureId, width, height)

        val framebuffers = IntArray(1)
        GLES30.glGenFramebuffers(1, framebuffers, 0)
        adjustmentFramebufferId = framebuffers[0]
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, adjustmentFramebufferId)
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER,
            GLES30.GL_COLOR_ATTACHMENT0,
            GLES30.GL_TEXTURE_2D,
            adjustmentTextureId,
            0
        )
        checkGlError("setupAdjustmentFramebuffer")
    }

    private fun configureLinearIntermediateTexture(textureId: Int, width: Int, height: Int) {
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, textureId)
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
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_NEAREST)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_NEAREST)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
    }

    private fun setupLinearMeteringFramebuffer(width: Int, height: Int) {
        if (linearMeteringWidth == width && linearMeteringHeight == height && linearMeteringFramebufferId != 0) {
            return
        }

        if (linearMeteringTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(linearMeteringTextureId), 0)
        }
        if (linearMeteringFramebufferId != 0) {
            GLES30.glDeleteFramebuffers(1, intArrayOf(linearMeteringFramebufferId), 0)
        }

        linearMeteringWidth = width
        linearMeteringHeight = height

        val textures = IntArray(1)
        GLES30.glGenTextures(1, textures, 0)
        linearMeteringTextureId = textures[0]
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, linearMeteringTextureId)
        GLES30.glTexStorage2D(GLES30.GL_TEXTURE_2D, 1, GLES30.GL_RGBA16F, width, height)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_WRAP_S,
            GLES30.GL_CLAMP_TO_EDGE
        )
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_WRAP_T,
            GLES30.GL_CLAMP_TO_EDGE
        )

        val framebuffers = IntArray(1)
        GLES30.glGenFramebuffers(1, framebuffers, 0)
        linearMeteringFramebufferId = framebuffers[0]
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, linearMeteringFramebufferId)
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER,
            GLES30.GL_COLOR_ATTACHMENT0,
            GLES30.GL_TEXTURE_2D,
            linearMeteringTextureId,
            0
        )
        checkGlError("setupLinearMeteringFramebuffer")
    }

    private fun setupSrgbMeteringCropFramebuffer(width: Int, height: Int) {
        if (
            srgbMeteringCropWidth == width &&
            srgbMeteringCropHeight == height &&
            srgbMeteringCropFramebufferId != 0
        ) {
            return
        }

        if (srgbMeteringCropTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(srgbMeteringCropTextureId), 0)
        }
        if (srgbMeteringCropFramebufferId != 0) {
            GLES30.glDeleteFramebuffers(1, intArrayOf(srgbMeteringCropFramebufferId), 0)
        }

        srgbMeteringCropWidth = width
        srgbMeteringCropHeight = height

        val textures = IntArray(1)
        GLES30.glGenTextures(1, textures, 0)
        srgbMeteringCropTextureId = textures[0]
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, srgbMeteringCropTextureId)
        GLES30.glTexImage2D(
            GLES30.GL_TEXTURE_2D,
            0,
            GLES30.GL_RGBA8,
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
        srgbMeteringCropFramebufferId = framebuffers[0]
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, srgbMeteringCropFramebufferId)
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER,
            GLES30.GL_COLOR_ATTACHMENT0,
            GLES30.GL_TEXTURE_2D,
            srgbMeteringCropTextureId,
            0
        )
        checkGlError("setupSrgbMeteringCropFramebuffer")
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

    // 辅助函数: 3x3 矩阵转置 (行主序 -> 列主序)
    private fun transposeMatrix3x3(matrix: FloatArray): FloatArray {
        require(matrix.size >= 9) { "Matrix must have at least 9 elements" }
        return floatArrayOf(
            matrix[0], matrix[3], matrix[6],
            matrix[1], matrix[4], matrix[7],
            matrix[2], matrix[5], matrix[8]
        )
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
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_WRAP_S,
            GLES30.GL_CLAMP_TO_EDGE
        )
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_WRAP_T,
            GLES30.GL_CLAMP_TO_EDGE
        )

        GLES30.glTexImage2D(
            GLES30.GL_TEXTURE_2D, 0, GLES30.GL_R16F,
            curveLut.size, 1, 0, GLES30.GL_RED, GLES30.GL_FLOAT, buffer
        )
    }

    private fun uploadDcpToneCurveTexture(curveLut: FloatArray) {
        if (dcpToneCurveTextureId == 0) {
            val textures = IntArray(1)
            GLES30.glGenTextures(1, textures, 0)
            dcpToneCurveTextureId = textures[0]
        }

        val buffer = ByteBuffer.allocateDirect(curveLut.size * 4)
            .order(ByteOrder.nativeOrder())
            .asFloatBuffer()
        buffer.put(curveLut)
        buffer.position(0)

        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, dcpToneCurveTextureId)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_WRAP_S,
            GLES30.GL_CLAMP_TO_EDGE
        )
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_WRAP_T,
            GLES30.GL_CLAMP_TO_EDGE
        )
        GLES30.glTexImage2D(
            GLES30.GL_TEXTURE_2D, 0, GLES30.GL_R16F,
            curveLut.size, 1, 0, GLES30.GL_RED, GLES30.GL_FLOAT, buffer
        )
        checkGlError("uploadDcpToneCurveTexture")
    }

    private fun ensureDummyDcp3DTexture(): Int {
        if (dummyDcp3DTextureId != 0) return dummyDcp3DTextureId
        val textures = IntArray(1)
        GLES30.glGenTextures(1, textures, 0)
        dummyDcp3DTextureId = textures[0]
        val buffer = ByteBuffer.allocateDirect(4 * 4)
            .order(ByteOrder.nativeOrder())
            .asFloatBuffer()
        buffer.put(floatArrayOf(0f, 1f, 1f, 1f))
        buffer.position(0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, dummyDcp3DTextureId)
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_3D,
            GLES30.GL_TEXTURE_MIN_FILTER,
            GLES30.GL_NEAREST
        )
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_3D,
            GLES30.GL_TEXTURE_MAG_FILTER,
            GLES30.GL_NEAREST
        )
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_3D,
            GLES30.GL_TEXTURE_WRAP_S,
            GLES30.GL_CLAMP_TO_EDGE
        )
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_3D,
            GLES30.GL_TEXTURE_WRAP_T,
            GLES30.GL_CLAMP_TO_EDGE
        )
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_3D,
            GLES30.GL_TEXTURE_WRAP_R,
            GLES30.GL_CLAMP_TO_EDGE
        )
        GLES30.glTexImage3D(
            GLES30.GL_TEXTURE_3D,
            0,
            GLES30.GL_RGBA16F,
            1,
            1,
            1,
            0,
            GLES30.GL_RGBA,
            GLES30.GL_FLOAT,
            buffer
        )
        checkGlError("ensureDummyDcp3DTexture")
        return dummyDcp3DTextureId
    }

    private fun ensureDummyDcpToneCurveTexture(): Int {
        if (dummyDcpToneCurveTextureId != 0) return dummyDcpToneCurveTextureId
        val textures = IntArray(1)
        GLES30.glGenTextures(1, textures, 0)
        dummyDcpToneCurveTextureId = textures[0]
        val buffer = ByteBuffer.allocateDirect(4)
            .order(ByteOrder.nativeOrder())
            .asFloatBuffer()
        buffer.put(floatArrayOf(0f))
        buffer.position(0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, dummyDcpToneCurveTextureId)
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_MIN_FILTER,
            GLES30.GL_NEAREST
        )
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_MAG_FILTER,
            GLES30.GL_NEAREST
        )
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_WRAP_S,
            GLES30.GL_CLAMP_TO_EDGE
        )
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_WRAP_T,
            GLES30.GL_CLAMP_TO_EDGE
        )
        GLES30.glTexImage2D(
            GLES30.GL_TEXTURE_2D,
            0,
            GLES30.GL_R16F,
            1,
            1,
            0,
            GLES30.GL_RED,
            GLES30.GL_FLOAT,
            buffer
        )
        checkGlError("ensureDummyDcpToneCurveTexture")
        return dummyDcpToneCurveTextureId
    }

    private fun uploadDcp3DTexture(
        textureIdProvider: () -> Int,
        assignTextureId: (Int) -> Unit,
        table: DcpHueSatMap
    ): Int {
        var textureId = textureIdProvider()
        if (textureId == 0) {
            val textures = IntArray(1)
            GLES30.glGenTextures(1, textures, 0)
            textureId = textures[0]
            assignTextureId(textureId)
        }

        val rgbaValues =
            FloatArray(table.hueDivisions * table.satDivisions * table.valueDivisions * 4)
        var srcIndex = 0
        var dstIndex = 0
        while (srcIndex < table.values.size && dstIndex < rgbaValues.size) {
            rgbaValues[dstIndex++] = table.values[srcIndex++]
            rgbaValues[dstIndex++] = table.values[srcIndex++]
            rgbaValues[dstIndex++] = table.values[srcIndex++]
            rgbaValues[dstIndex++] = 1.0f
        }

        val buffer = ByteBuffer.allocateDirect(rgbaValues.size * 4)
            .order(ByteOrder.nativeOrder())
            .asFloatBuffer()
        buffer.put(rgbaValues)
        buffer.position(0)

        GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, textureId)
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_3D,
            GLES30.GL_TEXTURE_MIN_FILTER,
            GLES30.GL_NEAREST
        )
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_3D,
            GLES30.GL_TEXTURE_MAG_FILTER,
            GLES30.GL_NEAREST
        )
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_3D,
            GLES30.GL_TEXTURE_WRAP_S,
            GLES30.GL_CLAMP_TO_EDGE
        )
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_3D,
            GLES30.GL_TEXTURE_WRAP_T,
            GLES30.GL_CLAMP_TO_EDGE
        )
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_3D,
            GLES30.GL_TEXTURE_WRAP_R,
            GLES30.GL_CLAMP_TO_EDGE
        )
        GLES30.glTexImage3D(
            GLES30.GL_TEXTURE_3D,
            0,
            GLES30.GL_RGBA16F,
            table.satDivisions,
            table.hueDivisions,
            table.valueDivisions,
            0,
            GLES30.GL_RGBA,
            GLES30.GL_FLOAT,
            buffer
        )
        checkGlError("uploadDcp3DTexture")
        return textureId
    }

    private fun bindDcpCombinedResources(program: Int, dcpRenderPlan: DcpRenderPlan?) {
        val hueSatMap = dcpRenderPlan?.hueSatMap?.takeIf { it.isValid }
        val lookTable = dcpRenderPlan?.lookTable?.takeIf { it.isValid }

        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uDcpHueSatTexture"), 2)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uDcpLookTableTexture"), 3)
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(program, "uDcpHueSatEnabled"),
            if (hueSatMap != null) 1 else 0
        )
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(program, "uDcpLookTableEnabled"),
            if (lookTable != null) 1 else 0
        )

        if (hueSatMap != null) {
            GLES30.glActiveTexture(GLES30.GL_TEXTURE2)
            val textureId =
                uploadDcp3DTexture({ dcpHueSatTextureId }, { dcpHueSatTextureId = it }, hueSatMap)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, textureId)
            GLES30.glUniform3i(
                GLES30.glGetUniformLocation(program, "uDcpHueSatDivisions"),
                hueSatMap.hueDivisions,
                hueSatMap.satDivisions,
                hueSatMap.valueDivisions
            )
            GLES30.glUniform1i(
                GLES30.glGetUniformLocation(program, "uDcpHueSatEncoding"),
                hueSatMap.encoding
            )
        } else {
            GLES30.glActiveTexture(GLES30.GL_TEXTURE2)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, ensureDummyDcp3DTexture())
            GLES30.glUniform3i(
                GLES30.glGetUniformLocation(program, "uDcpHueSatDivisions"),
                1,
                1,
                1
            )
            GLES30.glUniform1i(
                GLES30.glGetUniformLocation(program, "uDcpHueSatEncoding"),
                DcpHueSatMap.ENCODING_LINEAR
            )
        }

        if (lookTable != null) {
            GLES30.glActiveTexture(GLES30.GL_TEXTURE3)
            val textureId = uploadDcp3DTexture(
                { dcpLookTableTextureId },
                { dcpLookTableTextureId = it },
                lookTable
            )
            GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, textureId)
            GLES30.glUniform3i(
                GLES30.glGetUniformLocation(program, "uDcpLookTableDivisions"),
                lookTable.hueDivisions,
                lookTable.satDivisions,
                lookTable.valueDivisions
            )
            GLES30.glUniform1i(
                GLES30.glGetUniformLocation(program, "uDcpLookTableEncoding"),
                lookTable.encoding
            )
        } else {
            GLES30.glActiveTexture(GLES30.GL_TEXTURE3)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, ensureDummyDcp3DTexture())
            GLES30.glUniform3i(
                GLES30.glGetUniformLocation(program, "uDcpLookTableDivisions"),
                1,
                1,
                1
            )
            GLES30.glUniform1i(
                GLES30.glGetUniformLocation(program, "uDcpLookTableEncoding"),
                DcpHueSatMap.ENCODING_LINEAR
            )
        }
        checkGlError("bindDcpCombinedResources")
    }

    private fun bindProfileExposureUniforms(program: Int, exposure: ProfileExposureUniforms) {
        RawProfileExposureGl.bindUniforms(program, exposure)
        checkGlError("bindProfileExposureUniforms")
    }

    private fun bindProfileExposureLinearGainUniform(program: Int, exposure: ProfileExposureUniforms) {
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(program, "uProfileExposureLinearGain"),
            exposure.linearGain
        )
        checkGlError("bindProfileExposureLinearGainUniform")
    }

    private fun uploadSpectralFilmTexture(lut: SpectralFilmLut): Int {
        val key = "${lut.sourceKey}:${lut.size}:${lut.values.size}"
        if (spectralFilmTextureId == 0) {
            val textures = IntArray(1)
            GLES30.glGenTextures(1, textures, 0)
            spectralFilmTextureId = textures[0]
            spectralFilmTextureKey = null
        }
        if (spectralFilmTextureKey == key) {
            return spectralFilmTextureId
        }

        val buffer = ByteBuffer.allocateDirect(lut.values.size * 4)
            .order(ByteOrder.nativeOrder())
            .asFloatBuffer()
        buffer.put(lut.values)
        buffer.position(0)

        GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, spectralFilmTextureId)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_3D,
            GLES30.GL_TEXTURE_WRAP_S,
            GLES30.GL_CLAMP_TO_EDGE
        )
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_3D,
            GLES30.GL_TEXTURE_WRAP_T,
            GLES30.GL_CLAMP_TO_EDGE
        )
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_3D,
            GLES30.GL_TEXTURE_WRAP_R,
            GLES30.GL_CLAMP_TO_EDGE
        )
        GLES30.glTexImage3D(
            GLES30.GL_TEXTURE_3D,
            0,
            GLES30.GL_RGBA16F,
            lut.size,
            lut.size,
            lut.size,
            0,
            GLES30.GL_RGBA,
            GLES30.GL_FLOAT,
            buffer
        )
        spectralFilmTextureKey = key
        PLog.d(
            TAG,
            "Uploaded spectral film LUT: ${lut.name}, type=${lut.type}, refLight=${lut.referenceIlluminant}, viewLight=${lut.viewingIlluminant}"
        )
        checkGlError("uploadSpectralFilmTexture")
        return spectralFilmTextureId
    }

    private fun bindSpectralFilmCombinedResource(program: Int, lut: SpectralFilmLut?) {
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uSpectralFilmTexture"), 6)
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(program, "uSpectralFilmSize"),
            lut?.size ?: 1
        )
        GLES30.glActiveTexture(GLES30.GL_TEXTURE6)
        if (lut != null) {
            GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, uploadSpectralFilmTexture(lut))
        } else {
            GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, ensureDummyDcp3DTexture())
        }
        checkGlError("bindSpectralFilmCombinedResource")
    }

    /**
     * RAW tone processing coordinator.
     *
     * Pass order:
     * 1. engine tone pass: linear RAW working RGB -> linear output RGB
     * 2. optional adjustment pass: shadows/highlights + black/white levels in linear output RGB
     * 3. sRGB pass: linear output RGB -> sRGB encoded RGBA8 for sharpen/output
     */
    private fun renderCombinedPass(
        metadata: RawMetadata,
        inputTextureId: Int = demosaicTextureId,
        dcpRenderPlan: DcpRenderPlan? = null,
        spectralFilmLut: SpectralFilmLut? = null,
        colorEngine: RawRenderingEngine = RawRenderingEngine.AdobeCurve,
        outputWorkingColorSpace: ColorSpace = ColorSpace.ProPhoto,
        profileToEngineTransform: FloatArray = identityMatrix3x3(),
        profileExposureUniforms: ProfileExposureUniforms = ProfileExposureUniforms.NEUTRAL,
        shadowsHighlightsParams: ShadowsHighlightsParams = ShadowsHighlightsParams.NEUTRAL,
        rawBlacksAdjustment: Float = 0f,
        rawWhitesAdjustment: Float = 0f,
        rawToneMappingParameters: RawToneMappingParameters = RawToneMappingParameters.DEFAULT,
        viewportWidth: Int = metadata.width,
        viewportHeight: Int = metadata.height
    ): Boolean {
        val outputTransform = computeWorkingToOutputTransform(outputWorkingColorSpace, ColorSpace.SRGB)
        setupEngineToneFramebuffer(viewportWidth, viewportHeight)
        if (!renderEngineTonePass(
                inputTextureId = inputTextureId,
                dcpRenderPlan = dcpRenderPlan,
                spectralFilmLut = spectralFilmLut,
                colorEngine = colorEngine,
                profileToEngineTransform = profileToEngineTransform,
                profileExposureUniforms = profileExposureUniforms,
                rawToneMappingParameters = rawToneMappingParameters,
                outputTransform = outputTransform,
                viewportWidth = viewportWidth,
                viewportHeight = viewportHeight
            )
        ) {
            return false
        }

        val srgbInputTextureId = if (needsAdjustmentPass(
                shadowsHighlightsParams = shadowsHighlightsParams,
                rawBlacksAdjustment = rawBlacksAdjustment,
                rawWhitesAdjustment = rawWhitesAdjustment
            )
        ) {
            setupAdjustmentFramebuffer(viewportWidth, viewportHeight)
            if (!renderAdjustmentPass(
                    inputTextureId = engineToneTextureId,
                    shadowsHighlightsParams = shadowsHighlightsParams,
                    rawBlacksAdjustment = rawBlacksAdjustment,
                    rawWhitesAdjustment = rawWhitesAdjustment,
                    viewportWidth = viewportWidth,
                    viewportHeight = viewportHeight
                )
            ) {
                return false
            }
            adjustmentTextureId
        } else {
            engineToneTextureId
        }

        setupCombinedFramebuffer(viewportWidth, viewportHeight)
        return renderSrgbPass(
            inputTextureId = srgbInputTextureId,
            viewportWidth = viewportWidth,
            viewportHeight = viewportHeight
        )
    }

    private fun renderEngineTonePass(
        inputTextureId: Int,
        dcpRenderPlan: DcpRenderPlan?,
        spectralFilmLut: SpectralFilmLut?,
        colorEngine: RawRenderingEngine,
        profileToEngineTransform: FloatArray,
        profileExposureUniforms: ProfileExposureUniforms,
        rawToneMappingParameters: RawToneMappingParameters,
        outputTransform: FloatArray,
        viewportWidth: Int,
        viewportHeight: Int
    ): Boolean {
        val program = getOrCreateEngineToneProgram(colorEngine)
        if (program == 0) {
            PLog.e(TAG, "Unable to create engine tone program for colorEngine=$colorEngine")
            return false
        }

        GLES30.glUseProgram(program)
        checkGlError("renderEngineTonePass glUseProgram")
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, engineToneFramebufferId)
        checkGlError("renderEngineTonePass glBindFramebuffer")

        GLES30.glViewport(0, 0, viewportWidth, viewportHeight)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
        checkGlError("renderEngineTonePass clear")

        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, inputTextureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uInputTexture"), 0)

        bindRawToneMappingUniforms(program, rawToneMappingParameters)
        checkGlError("renderEngineTonePass base uniforms")

        when (colorEngine) {
            RawRenderingEngine.AdobeCurve -> {
                bindDcpCombinedResources(program, dcpRenderPlan)
                bindProfileExposureUniforms(program, profileExposureUniforms)
                val baseCurve = dcpRenderPlan?.toneCurveLut ?: ACR3Curve.samples()
                bindCurveCombinedResource(program, baseCurve)
            }

            RawRenderingEngine.AgX -> bindProfileExposureLinearGainUniform(
                program,
                profileExposureUniforms
            )

            RawRenderingEngine.Spektrafilm -> {
                bindProfileExposureLinearGainUniform(program, profileExposureUniforms)
                bindSpectralFilmCombinedResource(program, spectralFilmLut)
            }

            RawRenderingEngine.DarktableSigmoid,
            RawRenderingEngine.DarktableFilmic -> bindProfileExposureLinearGainUniform(
                program,
                profileExposureUniforms
            )
        }

        GLES30.glUniformMatrix3fv(
            GLES30.glGetUniformLocation(program, "uOutputTransform"),
            1, false, transposeMatrix3x3(outputTransform), 0
        )
        GLES30.glUniformMatrix3fv(
            GLES30.glGetUniformLocation(program, "uProfileToEngineTransform"),
            1, false, transposeMatrix3x3(profileToEngineTransform), 0
        )

        bindIdentityTexMatrix(program)
        checkGlError("renderEngineTonePass matrices")
        drawQuad(program)
        checkGlError("renderEngineTonePass")
        return true
    }

    private fun needsAdjustmentPass(
        shadowsHighlightsParams: ShadowsHighlightsParams,
        rawBlacksAdjustment: Float,
        rawWhitesAdjustment: Float
    ): Boolean {
        return abs(shadowsHighlightsParams.highlights) >= 0.001f ||
            abs(shadowsHighlightsParams.shadows) >= 0.001f ||
            abs(rawBlacksAdjustment) >= 0.001f ||
            abs(rawWhitesAdjustment) >= 0.001f
    }

    private fun renderAdjustmentPass(
        inputTextureId: Int,
        shadowsHighlightsParams: ShadowsHighlightsParams,
        rawBlacksAdjustment: Float,
        rawWhitesAdjustment: Float,
        viewportWidth: Int,
        viewportHeight: Int
    ): Boolean {
        val program = getOrCreateAdjustmentProgram()
        if (program == 0) {
            PLog.e(TAG, "Unable to create RAW adjustment program")
            return false
        }

        GLES30.glUseProgram(program)
        checkGlError("renderAdjustmentPass glUseProgram")
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, adjustmentFramebufferId)
        checkGlError("renderAdjustmentPass glBindFramebuffer")
        GLES30.glViewport(0, 0, viewportWidth, viewportHeight)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)

        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, inputTextureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uInputTexture"), 0)
        GLES30.glUniform2f(
            GLES30.glGetUniformLocation(program, "uTexelSize"),
            1.0f / maxOf(1, viewportWidth).toFloat(),
            1.0f / maxOf(1, viewportHeight).toFloat()
        )
        bindShadowsHighlightsUniforms(program, shadowsHighlightsParams)
        bindBlacksWhitesUniforms(
            program = program,
            blacks = rawBlacksAdjustment,
            whites = rawWhitesAdjustment
        )
        bindIdentityTexMatrix(program)

        drawQuad(program)
        checkGlError("renderAdjustmentPass")
        return true
    }

    private fun renderSrgbPass(
        inputTextureId: Int,
        viewportWidth: Int,
        viewportHeight: Int
    ): Boolean {
        val program = getOrCreateSrgbProgram()
        if (program == 0) {
            PLog.e(TAG, "Unable to create RAW sRGB program")
            return false
        }

        GLES30.glUseProgram(program)
        checkGlError("renderSrgbPass glUseProgram")
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, combinedFramebufferId)
        checkGlError("renderSrgbPass glBindFramebuffer")
        GLES30.glViewport(0, 0, viewportWidth, viewportHeight)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)

        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, inputTextureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uInputTexture"), 0)
        bindIdentityTexMatrix(program)

        drawQuad(program)
        checkGlError("renderSrgbPass")
        return true
    }

    private fun bindIdentityTexMatrix(program: Int) {
        val identityMatrix = FloatArray(16)
        GlMatrix.setIdentityM(identityMatrix, 0)
        GLES30.glUniformMatrix4fv(
            GLES30.glGetUniformLocation(program, "uTexMatrix"),
            1,
            false,
            identityMatrix,
            0
        )
    }

    private fun bindCurveCombinedResource(program: Int, baseCurve: FloatArray) {
        GLES30.glActiveTexture(GLES30.GL_TEXTURE1)
        uploadCurveTexture(baseCurve)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, curveTextureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uCurveTexture"), 1)
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(program, "uCurveSize"),
            baseCurve.size.toFloat()
        )
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(program, "uCurveEnabled"),
            1
        )
    }

    private fun bindRawToneMappingUniforms(program: Int, params: RawToneMappingParameters) {
        RawToneMappingGl.bindRawToneMappingUniforms(program, params)
    }

    private fun renderDarktableFilmicHighlightReconstruction(
        sourceTextureId: Int,
        width: Int,
        height: Int,
        rawToneMappingParameters: RawToneMappingParameters,
        profileExposureUniforms: ProfileExposureUniforms,
        profileToEngineTransform: FloatArray,
    ): Int {
        if (!ensureDarktableFilmicHighlightReconstructionPrograms()) {
            PLog.e(TAG, "Darktable Filmic highlight reconstruction programs unavailable")
            return 0
        }

        setupDarktableFilmicHighlightReconstructionFramebuffers(width, height)

        val normalizedTone = rawToneMappingParameters.normalized()
        val reconstructThreshold = max(
            2.0f.pow(
                normalizedTone.filmicWhiteRelativeExposure +
                    DARKTABLE_FILMIC_HR_RECONSTRUCT_THRESHOLD_EV
            ) * FILMIC_GREY_SOURCE,
            1e-8f
        )
        val reconstructFeather = 2.0f.pow(12f / DARKTABLE_FILMIC_HR_RECONSTRUCT_FEATHER_EV)
        val normalize = reconstructFeather / reconstructThreshold
        val scales = darktableFilmicHighlightScaleCount(width, height)

        PLog.d(
            TAG,
            "Darktable Filmic highlight reconstruction: ${width}x$height " +
                "scales=$scales whiteSourceEv=${normalizedTone.filmicWhiteRelativeExposure} " +
                "threshold=$reconstructThreshold exposureEv=${profileExposureUniforms.exposureEv} " +
                "exposureGain=${profileExposureUniforms.linearGain} " +
                "feather=$reconstructFeather"
        )

        renderFilmicHrPass(
            program = filmicHrMaskProgram,
            framebufferId = filmicHrMaskFramebufferId,
            width = width,
            height = height,
            label = "darktableFilmicHrMask"
        ) { program ->
            bindFilmicHrTexture(program, "uInputTexture", 0, sourceTextureId)
            bindFilmicHrPreparedInputUniforms(program, profileExposureUniforms, profileToEngineTransform)
            GLES30.glUniform1f(GLES30.glGetUniformLocation(program, "uNormalize"), normalize)
            GLES30.glUniform1f(GLES30.glGetUniformLocation(program, "uFeathering"), reconstructFeather)
        }

        renderFilmicHrPass(
            program = filmicHrInpaintNoiseProgram,
            framebufferId = filmicHrWorkingFramebufferId,
            width = width,
            height = height,
            label = "darktableFilmicHrInpaintNoise"
        ) { program ->
            bindFilmicHrTexture(program, "uInputTexture", 0, sourceTextureId)
            bindFilmicHrTexture(program, "uMaskTexture", 1, filmicHrMaskTextureId)
            bindFilmicHrPreparedInputUniforms(program, profileExposureUniforms, profileToEngineTransform)
            GLES30.glUniform1f(
                GLES30.glGetUniformLocation(program, "uNoiseLevel"),
                DARKTABLE_FILMIC_HR_NOISE_LEVEL
            )
            GLES30.glUniform1f(GLES30.glGetUniformLocation(program, "uThreshold"), reconstructThreshold)
        }

        var reconstructedTextureId = reconstructDarktableFilmicHighlightsWavelets(
            inputTextureId = filmicHrWorkingTextureId,
            width = width,
            height = height,
            scales = scales,
            variant = DarktableFilmicHighlightReconstructionShaders.RECONSTRUCT_RGB
        )

        repeat(DARKTABLE_FILMIC_HR_HIGH_QUALITY_ITERATIONS) {
            renderFilmicHrPass(
                program = filmicHrComputeNormsProgram,
                framebufferId = filmicHrNormsFramebufferId,
                width = width,
                height = height,
                label = "darktableFilmicHrComputeNorms"
            ) { program ->
                bindFilmicHrTexture(program, "uInputTexture", 0, reconstructedTextureId)
            }
            renderFilmicHrPass(
                program = filmicHrComputeRatiosProgram,
                framebufferId = filmicHrWorkingFramebufferId,
                width = width,
                height = height,
                label = "darktableFilmicHrComputeRatios"
            ) { program ->
                bindFilmicHrTexture(program, "uInputTexture", 0, reconstructedTextureId)
                bindFilmicHrTexture(program, "uNormsTexture", 1, filmicHrNormsTextureId)
            }
            reconstructedTextureId = reconstructDarktableFilmicHighlightsWavelets(
                inputTextureId = filmicHrWorkingTextureId,
                width = width,
                height = height,
                scales = scales,
                variant = DarktableFilmicHighlightReconstructionShaders.RECONSTRUCT_RATIOS
            )
            reconstructedTextureId = restoreDarktableFilmicHighlightRatios(
                ratiosTextureId = reconstructedTextureId,
                width = width,
                height = height
            )
        }

        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        checkGlError("renderDarktableFilmicHighlightReconstruction")
        return reconstructedTextureId
    }

    private fun darktableFilmicHighlightScaleCount(width: Int, height: Int): Int {
        val size = max(width, height).coerceAtLeast(1).toDouble()
        val filterSize = DarktableFilmicHighlightReconstructionShaders.BSPLINE_FSIZE.toDouble()
        val argument = (2.0 * size / ((filterSize - 1.0) * filterSize)) - 1.0
        val scales = floor(ln(max(argument, 1.0)) / ln(2.0)).toInt()
        return scales.coerceIn(1, DarktableFilmicHighlightReconstructionShaders.MAX_NUM_SCALES)
    }

    private fun reconstructDarktableFilmicHighlightsWavelets(
        inputTextureId: Int,
        width: Int,
        height: Int,
        scales: Int,
        variant: Int,
    ): Int {
        renderFilmicHrPass(
            program = filmicHrInitReconstructProgram,
            framebufferId = filmicHrReconstructedFramebufferIds[0],
            width = width,
            height = height,
            label = "darktableFilmicHrInitReconstruct"
        ) { program ->
            bindFilmicHrTexture(program, "uInputTexture", 0, inputTextureId)
            bindFilmicHrTexture(program, "uMaskTexture", 1, filmicHrMaskTextureId)
        }

        var reconstructedReadIndex = 0
        var previousLowFrequencyTextureId = 0
        for (scale in 0 until scales) {
            val detailTextureId = if (scale == 0) inputTextureId else previousLowFrequencyTextureId
            val lowFrequencyTextureId = if (scale % 2 == 0) {
                filmicHrLfOddTextureId
            } else {
                filmicHrLfEvenTextureId
            }
            val lowFrequencyFramebufferId = if (scale % 2 == 0) {
                filmicHrLfOddFramebufferId
            } else {
                filmicHrLfEvenFramebufferId
            }
            val mult = 1 shl scale

            renderDarktableFilmicBsplineBlur(
                inputTextureId = detailTextureId,
                outputFramebufferId = lowFrequencyFramebufferId,
                width = width,
                height = height,
                mult = mult,
                label = "darktableFilmicHrLfScale$scale"
            )
            renderFilmicHrPass(
                program = filmicHrHighFrequencyProgram,
                framebufferId = filmicHrHighFrequencyFramebufferId,
                width = width,
                height = height,
                label = "darktableFilmicHrHighFrequency$scale"
            ) { program ->
                bindFilmicHrTexture(program, "uDetailTexture", 0, detailTextureId)
                bindFilmicHrTexture(program, "uLowFrequencyTexture", 1, lowFrequencyTextureId)
            }
            renderDarktableFilmicBsplineBlur(
                inputTextureId = filmicHrHighFrequencyTextureId,
                outputFramebufferId = filmicHrHighFrequencyRgbFramebufferId,
                width = width,
                height = height,
                mult = 1,
                label = "darktableFilmicHrHighFrequencyRgb$scale"
            )

            val reconstructedWriteIndex = 1 - reconstructedReadIndex
            renderFilmicHrPass(
                program = filmicHrWaveletsReconstructProgram,
                framebufferId = filmicHrReconstructedFramebufferIds[reconstructedWriteIndex],
                width = width,
                height = height,
                label = "darktableFilmicHrWaveletsReconstruct$scale"
            ) { program ->
                bindFilmicHrTexture(program, "uHighFrequencyTexture", 0, filmicHrHighFrequencyRgbTextureId)
                bindFilmicHrTexture(program, "uLowFrequencyTexture", 1, lowFrequencyTextureId)
                bindFilmicHrTexture(program, "uTextureTexture", 2, filmicHrHighFrequencyTextureId)
                bindFilmicHrTexture(program, "uMaskTexture", 3, filmicHrMaskTextureId)
                bindFilmicHrTexture(
                    program,
                    "uReconstructedTexture",
                    4,
                    filmicHrReconstructedTextureIds[reconstructedReadIndex]
                )
                GLES30.glUniform1f(GLES30.glGetUniformLocation(program, "uGamma"), DARKTABLE_FILMIC_HR_GAMMA)
                GLES30.glUniform1f(
                    GLES30.glGetUniformLocation(program, "uGammaComp"),
                    DARKTABLE_FILMIC_HR_GAMMA_COMP
                )
                GLES30.glUniform1f(GLES30.glGetUniformLocation(program, "uBeta"), DARKTABLE_FILMIC_HR_BETA)
                GLES30.glUniform1f(
                    GLES30.glGetUniformLocation(program, "uBetaComp"),
                    DARKTABLE_FILMIC_HR_BETA_COMP
                )
                GLES30.glUniform1f(GLES30.glGetUniformLocation(program, "uDelta"), DARKTABLE_FILMIC_HR_DELTA)
                GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uScaleIndex"), scale)
                GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uScaleCount"), scales)
                GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uVariant"), variant)
            }

            reconstructedReadIndex = reconstructedWriteIndex
            previousLowFrequencyTextureId = lowFrequencyTextureId
        }

        return filmicHrReconstructedTextureIds[reconstructedReadIndex]
    }

    private fun renderDarktableFilmicBsplineBlur(
        inputTextureId: Int,
        outputFramebufferId: Int,
        width: Int,
        height: Int,
        mult: Int,
        label: String,
    ) {
        renderFilmicHrPass(
            program = filmicHrBsplineProgram,
            framebufferId = filmicHrTempFramebufferId,
            width = width,
            height = height,
            label = "$label-vertical"
        ) { program ->
            bindFilmicHrTexture(program, "uInputTexture", 0, inputTextureId)
            GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uWidth"), width)
            GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uHeight"), height)
            GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uMult"), mult)
            GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uDirection"), 0)
        }
        renderFilmicHrPass(
            program = filmicHrBsplineProgram,
            framebufferId = outputFramebufferId,
            width = width,
            height = height,
            label = "$label-horizontal"
        ) { program ->
            bindFilmicHrTexture(program, "uInputTexture", 0, filmicHrTempTextureId)
            GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uWidth"), width)
            GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uHeight"), height)
            GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uMult"), mult)
            GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uDirection"), 1)
        }
    }

    private fun restoreDarktableFilmicHighlightRatios(
        ratiosTextureId: Int,
        width: Int,
        height: Int,
    ): Int {
        val outputIndex = if (ratiosTextureId == filmicHrReconstructedTextureIds[0]) 1 else 0
        renderFilmicHrPass(
            program = filmicHrRestoreRatiosProgram,
            framebufferId = filmicHrReconstructedFramebufferIds[outputIndex],
            width = width,
            height = height,
            label = "darktableFilmicHrRestoreRatios"
        ) { program ->
            bindFilmicHrTexture(program, "uRatiosTexture", 0, ratiosTextureId)
            bindFilmicHrTexture(program, "uNormsTexture", 1, filmicHrNormsTextureId)
        }
        return filmicHrReconstructedTextureIds[outputIndex]
    }

    private fun renderFilmicHrPass(
        program: Int,
        framebufferId: Int,
        width: Int,
        height: Int,
        label: String,
        bindUniforms: (Int) -> Unit,
    ) {
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebufferId)
        GLES30.glDrawBuffers(1, intArrayOf(GLES30.GL_COLOR_ATTACHMENT0), 0)
        GLES30.glViewport(0, 0, width, height)
        GLES30.glDisable(GLES30.GL_BLEND)
        GLES30.glUseProgram(program)

        val identityMatrix = FloatArray(16)
        GlMatrix.setIdentityM(identityMatrix, 0)
        GLES30.glUniformMatrix4fv(
            GLES30.glGetUniformLocation(program, "uTexMatrix"),
            1,
            false,
            identityMatrix,
            0
        )
        bindUniforms(program)
        drawQuad(program)
        GLES31.glMemoryBarrier(GLES31.GL_FRAMEBUFFER_BARRIER_BIT or GLES31.GL_TEXTURE_FETCH_BARRIER_BIT)
        checkGlError(label)
    }

    private fun bindFilmicHrTexture(program: Int, name: String, unit: Int, textureId: Int) {
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + unit)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, textureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, name), unit)
    }

    private fun bindFilmicHrPreparedInputUniforms(
        program: Int,
        exposure: ProfileExposureUniforms,
        profileToEngineTransform: FloatArray,
    ) {
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(program, "uProfileExposureLinearGain"),
            exposure.linearGain
        )
        GLES30.glUniformMatrix3fv(
            GLES30.glGetUniformLocation(program, "uProfileToEngineTransform"),
            1,
            false,
            transposeMatrix3x3(profileToEngineTransform),
            0
        )
    }

    private fun computeFilmicToneCurveUniforms(params: RawToneMappingParameters): FilmicToneCurveUniforms {
        val blackSource = min(
            params.filmicBlackRelativeExposure,
            params.filmicWhiteRelativeExposure - RawToneMappingParameters.MIN_DYNAMIC_RANGE_EV
        )
        val whiteSource = max(
            params.filmicWhiteRelativeExposure,
            blackSource + RawToneMappingParameters.MIN_DYNAMIC_RANGE_EV
        )
        val dynamicRange = max(RawToneMappingParameters.MIN_DYNAMIC_RANGE_EV, whiteSource - blackSource)
        val inputMin = 2.0f.pow(blackSource) * FILMIC_GREY_SOURCE
        val inputMax = 2.0f.pow(whiteSource) * FILMIC_GREY_SOURCE

        val blackDisplay = FILMIC_DISPLAY_BLACK.pow(1f / FILMIC_OUTPUT_POWER)
        val whiteDisplay = 1f
        val greyDisplay = FILMIC_GREY_SOURCE.pow(1f / FILMIC_OUTPUT_POWER)
        val greyLog = (abs(blackSource) / dynamicRange).coerceIn(0.001f, 0.999f)

        var contrast = FILMIC_DEFAULT_CONTRAST * (dynamicRange / FILMIC_DEFAULT_DYNAMIC_RANGE)
        var minContrast = 1f
        minContrast = max(minContrast, (whiteDisplay - greyDisplay) / max(1f - greyLog, 1e-5f))
        minContrast = max(minContrast, (greyDisplay - blackDisplay) / max(greyLog, 1e-5f))
        contrast = contrast.coerceIn(minContrast + FILMIC_SAFETY_MARGIN, 100f)

        val linearIntercept = greyDisplay - contrast * greyLog
        val displayRange = whiteDisplay - blackDisplay
        val xmin = (
            blackDisplay + FILMIC_SAFETY_MARGIN * displayRange - linearIntercept
            ) / contrast
        val xmax = (
            whiteDisplay - FILMIC_SAFETY_MARGIN * displayRange - linearIntercept
            ) / contrast

        val toeLog = ((1f - FILMIC_LATITUDE) * greyLog + FILMIC_LATITUDE * xmin)
            .coerceIn(0f, greyLog)
        val shoulderLog = ((1f - FILMIC_LATITUDE) * greyLog + FILMIC_LATITUDE * xmax)
            .coerceIn(greyLog, 1f)
        val toeDisplay = toeLog * contrast + linearIntercept
        val shoulderDisplay = shoulderLog * contrast + linearIntercept

        val m1 = FloatArray(3)
        val m2 = FloatArray(3)
        val m3 = FloatArray(3)
        val m4 = FloatArray(3)
        val m5 = FloatArray(3)

        val toe = solveFilmicToe(toeLog.toDouble(), toeDisplay.toDouble(), blackDisplay.toDouble(), contrast.toDouble())
        val shoulder = solveFilmicShoulder(
            shoulderLog.toDouble(),
            shoulderDisplay.toDouble(),
            whiteDisplay.toDouble(),
            contrast.toDouble()
        )
        m5[0] = toe[0].toFloat()
        m4[0] = toe[1].toFloat()
        m3[0] = toe[2].toFloat()
        m2[0] = toe[3].toFloat()
        m1[0] = toe[4].toFloat()

        m5[1] = shoulder[0].toFloat()
        m4[1] = shoulder[1].toFloat()
        m3[1] = shoulder[2].toFloat()
        m2[1] = shoulder[3].toFloat()
        m1[1] = shoulder[4].toFloat()

        m1[2] = (toeDisplay - contrast * toeLog)
        m2[2] = contrast
        m3[2] = 0f
        m4[2] = 0f
        m5[2] = 0f

        return FilmicToneCurveUniforms(
            blackRelativeExposure = blackSource,
            whiteRelativeExposure = whiteSource,
            dynamicRange = dynamicRange,
            inputMin = max(inputMin, 1e-8f),
            inputMax = max(inputMax, inputMin + 1e-8f),
            latitudeMin = toeLog,
            latitudeMax = shoulderLog,
            m1 = m1,
            m2 = m2,
            m3 = m3,
            m4 = m4,
            m5 = m5
        )
    }

    private fun solveFilmicToe(
        toeLog: Double,
        toeDisplay: Double,
        blackDisplay: Double,
        contrast: Double
    ): DoubleArray {
        val x2 = toeLog * toeLog
        val x3 = x2 * toeLog
        val x4 = x3 * toeLog
        return solveLinearSystem(
            arrayOf(
                doubleArrayOf(0.0, 0.0, 0.0, 0.0, 1.0),
                doubleArrayOf(0.0, 0.0, 0.0, 1.0, 0.0),
                doubleArrayOf(x4, x3, x2, toeLog, 1.0),
                doubleArrayOf(4.0 * x3, 3.0 * x2, 2.0 * toeLog, 1.0, 0.0),
                doubleArrayOf(12.0 * x2, 6.0 * toeLog, 2.0, 0.0, 0.0)
            ),
            doubleArrayOf(blackDisplay, 0.0, toeDisplay, contrast, 0.0)
        )
    }

    private fun solveFilmicShoulder(
        shoulderLog: Double,
        shoulderDisplay: Double,
        whiteDisplay: Double,
        contrast: Double
    ): DoubleArray {
        val x2 = shoulderLog * shoulderLog
        val x3 = x2 * shoulderLog
        val x4 = x3 * shoulderLog
        return solveLinearSystem(
            arrayOf(
                doubleArrayOf(1.0, 1.0, 1.0, 1.0, 1.0),
                doubleArrayOf(4.0, 3.0, 2.0, 1.0, 0.0),
                doubleArrayOf(x4, x3, x2, shoulderLog, 1.0),
                doubleArrayOf(4.0 * x3, 3.0 * x2, 2.0 * shoulderLog, 1.0, 0.0),
                doubleArrayOf(12.0 * x2, 6.0 * shoulderLog, 2.0, 0.0, 0.0)
            ),
            doubleArrayOf(whiteDisplay, 0.0, shoulderDisplay, contrast, 0.0)
        )
    }

    private fun solveLinearSystem(matrix: Array<DoubleArray>, values: DoubleArray): DoubleArray {
        val size = values.size
        for (column in 0 until size) {
            var pivot = column
            for (row in column + 1 until size) {
                if (abs(matrix[row][column]) > abs(matrix[pivot][column])) {
                    pivot = row
                }
            }
            if (pivot != column) {
                val tmpRow = matrix[column]
                matrix[column] = matrix[pivot]
                matrix[pivot] = tmpRow
                val tmpValue = values[column]
                values[column] = values[pivot]
                values[pivot] = tmpValue
            }

            val pivotValue = matrix[column][column]
            if (abs(pivotValue) < 1e-12) {
                PLog.w(TAG, "Filmic spline solve hit a near-singular matrix; using neutral row")
                continue
            }

            for (row in column + 1 until size) {
                val factor = matrix[row][column] / pivotValue
                for (col in column until size) {
                    matrix[row][col] -= factor * matrix[column][col]
                }
                values[row] -= factor * values[column]
            }
        }

        val result = DoubleArray(size)
        for (row in size - 1 downTo 0) {
            var sum = values[row]
            for (col in row + 1 until size) {
                sum -= matrix[row][col] * result[col]
            }
            val denominator = matrix[row][row]
            result[row] = if (abs(denominator) < 1e-12) 0.0 else sum / denominator
        }
        return result
    }

    private fun bindShadowsHighlightsUniforms(program: Int, params: ShadowsHighlightsParams) {
        val highlightsLocation = GLES30.glGetUniformLocation(program, "uHighlights")
        val shadowsLocation = GLES30.glGetUniformLocation(program, "uShadows")
        ShadowsHighlightsShader.bindUniformLocations(
            highlightsLocation = highlightsLocation,
            shadowsLocation = shadowsLocation,
            highlights = params.highlights,
            shadows = params.shadows
        )
        if (!loggedShadowsHighlightsUniforms) {
            loggedShadowsHighlightsUniforms = true
            PLog.d(
                TAG,
                "RAW Shadows/Highlights uniforms: " +
                    "uHighlightsLoc=$highlightsLocation uShadowsLoc=$shadowsLocation " +
                    "highlights=${params.highlights} shadows=${params.shadows}"
            )
        }
    }

    private fun bindBlacksWhitesUniforms(program: Int, blacks: Float, whites: Float) {
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(program, "uBlacks"),
            blacks.coerceIn(-1f, 1f)
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(program, "uWhites"),
            whites.coerceIn(-1f, 1f)
        )
    }

    private fun logProgramLinkResult(
        program: Int,
        name: String,
        linkStart: Long = System.currentTimeMillis()
    ): Boolean {
        if (program == 0) {
            PLog.e(TAG, "$name creation failed")
            return false
        }
        val linked = IntArray(1)
        GLES30.glGetProgramiv(program, GLES30.GL_LINK_STATUS, linked, 0)
        if (linked[0] == 0) {
            PLog.e(
                TAG,
                "$name link failed after ${System.currentTimeMillis() - linkStart}ms: " +
                    GLES30.glGetProgramInfoLog(program)
            )
            GLES30.glDeleteProgram(program)
            return false
        } else {
            PLog.d(TAG, "$name link ok, took=${System.currentTimeMillis() - linkStart}ms")
            return true
        }
    }

    private fun computeWorkingToOutputTransform(
        workingSpace: ColorSpace,
        outputSpace: ColorSpace
    ): FloatArray {
        val workingFromXyz = computeXyzD50ToGamut(workingSpace) ?: return identityMatrix3x3()
        val xyzFromWorking = invertMatrix3x3(workingFromXyz) ?: return identityMatrix3x3()
        val outputFromXyz = computeXyzD50ToGamut(outputSpace) ?: return identityMatrix3x3()
        return multiplyMatrix3x3(outputFromXyz, xyzFromWorking)
    }

    private fun computeXyzD50ToGamut(colorSpace: ColorSpace): FloatArray? {
        val primaries = colorSpace.primaries
        val whitePoint = colorSpace.whitePoint
        if (primaries.size != 6 || whitePoint.size != 2) return null

        val xr = primaries[0]
        val yr = primaries[1]
        val xg = primaries[2]
        val yg = primaries[3]
        val xb = primaries[4]
        val yb = primaries[5]
        val xw = whitePoint[0]
        val yw = whitePoint[1]

        val mS = floatArrayOf(
            xr / yr, xg / yg, xb / yb,
            1f, 1f, 1f,
            (1 - xr - yr) / yr, (1 - xg - yg) / yg, (1 - xb - yb) / yb
        )
        val invS = invertMatrix3x3(mS) ?: return null

        val xWhite = xw / yw
        val yWhite = 1f
        val zWhite = (1 - xw - yw) / yw

        val sR = invS[0] * xWhite + invS[1] * yWhite + invS[2] * zWhite
        val sG = invS[3] * xWhite + invS[4] * yWhite + invS[5] * zWhite
        val sB = invS[6] * xWhite + invS[7] * yWhite + invS[8] * zWhite

        val gamutToXyzNative = floatArrayOf(
            mS[0] * sR, mS[1] * sG, mS[2] * sB,
            mS[3] * sR, mS[4] * sG, mS[5] * sB,
            mS[6] * sR, mS[7] * sG, mS[8] * sB
        )

        val gamutToXyzD50 = if (isD50WhitePoint(xw, yw)) {
            gamutToXyzNative
        } else {
            multiplyMatrix3x3(BRADFORD_D65_TO_D50, gamutToXyzNative)
        }
        return invertMatrix3x3(gamutToXyzD50)
    }

    private fun isD50WhitePoint(x: Float, y: Float): Boolean {
        return abs(x - 0.3457f) < 0.002f && abs(y - 0.3585f) < 0.002f
    }

    private fun multiplyMatrix3x3(lhs: FloatArray, rhs: FloatArray): FloatArray {
        return FloatArray(9) { index ->
            val row = index / 3
            val col = index % 3
            lhs[row * 3] * rhs[col] +
                    lhs[row * 3 + 1] * rhs[3 + col] +
                    lhs[row * 3 + 2] * rhs[6 + col]
        }
    }

    private fun invertMatrix3x3(matrix: FloatArray): FloatArray? {
        val det = matrix[0] * (matrix[4] * matrix[8] - matrix[5] * matrix[7]) -
                matrix[1] * (matrix[3] * matrix[8] - matrix[5] * matrix[6]) +
                matrix[2] * (matrix[3] * matrix[7] - matrix[4] * matrix[6])

        if (abs(det) < 1e-12f) {
            PLog.e(TAG, "Matrix is singular, cannot invert")
            return null
        }

        val invDet = 1.0f / det
        return floatArrayOf(
            (matrix[4] * matrix[8] - matrix[5] * matrix[7]) * invDet,
            (matrix[2] * matrix[7] - matrix[1] * matrix[8]) * invDet,
            (matrix[1] * matrix[5] - matrix[2] * matrix[4]) * invDet,
            (matrix[5] * matrix[6] - matrix[3] * matrix[8]) * invDet,
            (matrix[0] * matrix[8] - matrix[2] * matrix[6]) * invDet,
            (matrix[2] * matrix[3] - matrix[0] * matrix[5]) * invDet,
            (matrix[3] * matrix[7] - matrix[4] * matrix[6]) * invDet,
            (matrix[1] * matrix[6] - matrix[0] * matrix[7]) * invDet,
            (matrix[0] * matrix[4] - matrix[1] * matrix[3]) * invDet
        )
    }

    private fun identityMatrix3x3(): FloatArray = floatArrayOf(
        1f, 0f, 0f,
        0f, 1f, 0f,
        0f, 0f, 1f
    )

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
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(hdrReferenceProgram, "uHighlightStart"),
            RawHdrReferenceMath.HIGHLIGHT_START
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(hdrReferenceProgram, "uWhitePointSceneLuma"),
            RawHdrReferenceMath.WHITE_POINT_SCENE_LUMA
        )

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
            sharpeningValue.coerceIn(0f, 1f)
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(sharpenProgram, "uRadius"),
            defaultUsmRadius
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(sharpenProgram, "uThreshold"),
            defaultUsmThreshold
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

    private fun resolveRawDcpRenderPlan(
        context: Context,
        providedDcpRenderPlan: DcpRenderPlan?,
        rawDcpId: String?,
        metadata: RawMetadata,
        embeddedDngRenderPlan: DcpRenderPlan? = null
    ): DcpRenderPlan? {
        providedDcpRenderPlan?.let { plan ->
            PLog.d(TAG, "Using provided RAW DCP plan: ${plan.profileName}")
            return plan
        }

        val dcpId = rawDcpId ?: return embeddedDngRenderPlan?.also { plan ->
            PLog.d(TAG, "Using embedded DNG profile plan: ${plan.profileName}")
        }
        val dcpInfo = ContentRepository.getInstance(context).getAvailableDcps()
            .firstOrNull { it.id == dcpId }
        if (dcpInfo == null) {
            PLog.w(TAG, "RAW DCP not found: $dcpId")
            return null
        }

        return DcpProfileParser.resolveRenderPlan(
            context,
            dcpInfo,
            metadata,
            ColorSpace.ProPhoto
        ).also { plan ->
            if (plan == null) {
                PLog.w(TAG, "Failed to resolve RAW DCP render plan: $dcpId")
            } else {
                PLog.d(TAG, "Resolved RAW DCP plan in ProPhoto: ${plan.profileName}")
            }
        }
    }

    private fun googlePixelToneMapRenderPlan(
        basePlan: DcpRenderPlan?,
        metadata: RawMetadata,
        workingColorSpace: ColorSpace,
        preferredToneCurveLut: FloatArray? = null,
    ): DcpRenderPlan {
        val googleToneCurve = preferredToneCurveLut?.copyOf() ?: DngProfileToneCurve.googleHdrToneCurveLut()
        return DcpRenderPlan(
            profileName = basePlan?.profileName?.let { "$it + Google Pixel Tone Map" }
                ?: "Google Pixel Tone Map",
            workingColorSpace = basePlan?.workingColorSpace ?: workingColorSpace,
            baselineExposureOffset = basePlan?.baselineExposureOffset ?: 0f,
            defaultBlackRender = DcpDefaultBlackRender.None,
            colorCorrectionMatrix = basePlan?.colorCorrectionMatrix ?: metadata.colorCorrectionMatrix,
            cameraWhite = basePlan?.cameraWhite ?: metadata.cameraWhite,
            hueSatMap = basePlan?.hueSatMap,
            lookTable = basePlan?.lookTable,
            toneCurveLut = googleToneCurve
        )
    }

    private fun oppoMasterToneMapRenderPlan(
        basePlan: DcpRenderPlan?,
        metadata: RawMetadata,
        workingColorSpace: ColorSpace
    ): DcpRenderPlan {
        return DcpRenderPlan(
            profileName = basePlan?.profileName?.let { "$it + OPPO Master Tone Map" }
                ?: "OPPO Master Tone Map",
            workingColorSpace = basePlan?.workingColorSpace ?: workingColorSpace,
            baselineExposureOffset = basePlan?.baselineExposureOffset ?: 0f,
            defaultBlackRender = basePlan?.defaultBlackRender ?: DcpDefaultBlackRender.Auto,
            colorCorrectionMatrix = basePlan?.colorCorrectionMatrix ?: metadata.colorCorrectionMatrix,
            cameraWhite = basePlan?.cameraWhite ?: metadata.cameraWhite,
            hueSatMap = basePlan?.hueSatMap,
            lookTable = basePlan?.lookTable,
            toneCurveLut = DngProfileToneCurve.oppoEmbeddedToneCurveLut()
        )
    }

    private fun withoutProfileToneCurve(
        plan: DcpRenderPlan?,
        reason: String
    ): DcpRenderPlan? {
        if (plan?.toneCurveLut == null) return plan
        PLog.d(TAG, "Ignoring RAW profile tone curve: profile=${plan.profileName}, reason=$reason")
        return plan.copy(toneCurveLut = null)
    }

    private fun resolveLinearColorCorrectionMatrix(
        metadata: RawMetadata,
        dcpRenderPlan: DcpRenderPlan?
    ): FloatArray {
        return dcpRenderPlan?.colorCorrectionMatrix ?: metadata.colorCorrectionMatrix
    }

    private fun resolveLinearCameraWhite(
        metadata: RawMetadata,
        dcpRenderPlan: DcpRenderPlan?
    ): FloatArray {
        return sanitizeCameraWhite(dcpRenderPlan?.cameraWhite ?: metadata.cameraWhite)
    }

    private fun sanitizeCameraWhite(cameraWhite: FloatArray?): FloatArray {
        if (cameraWhite == null || cameraWhite.size < 3) {
            return floatArrayOf(1f, 1f, 1f)
        }
        val red = cameraWhite[0]
        val green = cameraWhite[1]
        val blue = cameraWhite[2]
        if (!red.isFinite() || !green.isFinite() || !blue.isFinite()) {
            return floatArrayOf(1f, 1f, 1f)
        }
        return floatArrayOf(
            red.coerceIn(0.001f, 1f),
            green.coerceIn(0.001f, 1f),
            blue.coerceIn(0.001f, 1f)
        )
    }

    private fun logRawDcpPipeline(
        profilePlanSource: String?,
        requestedColorEngine: RawRenderingEngine,
        colorEngine: RawRenderingEngine,
        dcpRenderPlan: DcpRenderPlan?,
        profileWorkingColorSpace: ColorSpace,
        engineWorkingColorSpace: ColorSpace,
        profileToEngineTransform: FloatArray,
        useAdobeProfilePipeline: Boolean,
        useProfileExposureRamp: Boolean,
        applyDcpBaselineExposureOffset: Boolean
    ) {
        if (profilePlanSource == null) return

        val planSpace = dcpRenderPlan?.workingColorSpace
        if (planSpace != null && planSpace != ColorSpace.ProPhoto) {
            PLog.w(TAG, "RAW DCP render plan is not ProPhoto: planSpace=$planSpace")
        }
        val hueSatEnabled = dcpRenderPlan?.hueSatMap?.isValid == true
        val lookEnabled = dcpRenderPlan?.lookTable?.isValid == true
        val profileToneCurveEnabled = useAdobeProfilePipeline && dcpRenderPlan?.toneCurveLut != null
        val defaultBlackRender = dcpDefaultBlackRenderOrAuto(dcpRenderPlan)
        val dcpBaselineExposureOffset = if (applyDcpBaselineExposureOffset) {
            dcpBaselineExposureOffsetOrZero(dcpRenderPlan)
        } else {
            0f
        }
        val cameraWhite = sanitizeCameraWhite(dcpRenderPlan?.cameraWhite)
        val matrixSource = if (dcpRenderPlan != null) "DCP" else "metadata-fallback"
        val profileMapsBeforeEngine = dcpRenderPlan != null
        PLog.d(
            TAG,
            "RAW DCP pipeline: source=$profilePlanSource " +
                "profile=${dcpRenderPlan?.profileName ?: "none"} " +
                "matrixSource=$matrixSource planSpace=$planSpace " +
                "profileSpace=$profileWorkingColorSpace engineSpace=$engineWorkingColorSpace " +
                "requestedEngine=$requestedColorEngine actualEngine=$colorEngine " +
                "profileMapsBeforeEngine=$profileMapsBeforeEngine " +
                "hueSat=$hueSatEnabled look=$lookEnabled " +
                "profileToneCurve=$profileToneCurveEnabled " +
                "profileExposureRamp=$useProfileExposureRamp " +
                "defaultBlackRender=$defaultBlackRender " +
                "baselineExposureOffset=$dcpBaselineExposureOffset " +
                "cameraWhite=${cameraWhite.contentToString()} " +
                "profileToEngine=${formatMatrix3x3(profileToEngineTransform)}"
        )
    }

    private fun shouldApplyDcpBaselineExposureOffset(dcpRenderPlan: DcpRenderPlan?): Boolean {
        return dcpBaselineExposureOffsetOrZero(dcpRenderPlan) != 0f
    }

    private fun shouldApplyLinearDngBaselineExposure(metadata: RawMetadata): Boolean {
        return DngBaselineExposure.sanitize(metadata.baselineExposure) != 0f
    }

    private fun dcpBaselineExposureOffsetOrZero(dcpRenderPlan: DcpRenderPlan?): Float {
        val offset = dcpRenderPlan?.baselineExposureOffset ?: return 0f
        return if (offset.isFinite() && abs(offset) > 1e-6f) offset else 0f
    }

    private fun sanitizeDngShadowScale(shadowScale: Float): Float {
        return if (shadowScale.isFinite() && shadowScale > 0f && shadowScale <= 1f) {
            shadowScale
        } else {
            1f
        }
    }

    private fun dcpDefaultBlackRenderOrAuto(dcpRenderPlan: DcpRenderPlan?): DcpDefaultBlackRender {
        return dcpRenderPlan?.defaultBlackRender ?: DcpDefaultBlackRender.Auto
    }

    private fun formatMatrix3x3(matrix: FloatArray): String {
        if (matrix.size != 9) return "invalid"
        return matrix.joinToString(prefix = "[", postfix = "]") { value ->
            String.format(Locale.US, "%.4f", value)
        }
    }

    private fun computeProfileExposureUniforms(
        metadata: RawMetadata,
        profileExposureCompensation: Float,
        dcpRenderPlan: DcpRenderPlan?,
        applyDcpBaselineExposureOffset: Boolean,
        applyDngBaselineExposure: Boolean,
        useRamp: Boolean
    ): ProfileExposureUniforms {
        val dngBaselineExposure = if (applyDngBaselineExposure) {
            DngBaselineExposure.sanitize(metadata.baselineExposure)
        } else {
            0f
        }
        val dcpBaselineExposureOffset = if (applyDcpBaselineExposureOffset) {
            dcpBaselineExposureOffsetOrZero(dcpRenderPlan)
        } else {
            0f
        }
        return RawProfileExposureGl.compute(
            profileExposureCompensation = profileExposureCompensation,
            dngBaselineExposure = dngBaselineExposure,
            dcpBaselineExposureOffset = dcpBaselineExposureOffset,
            defaultBlackRender = if (useRamp) {
                dcpDefaultBlackRenderOrAuto(dcpRenderPlan)
            } else {
                DcpDefaultBlackRender.None
            },
            shadowScale = metadata.shadowScale,
            useRamp = useRamp
        )
    }

    private fun computeLinearExposureGain(
        metadata: RawMetadata,
        rawExposureCompensation: Float,
        applyDngBaselineExposure: Boolean
    ): Float {
        val normalizationGain = if (applyDngBaselineExposure) {
            exactDngBaselineExposureGain(metadata)
        } else {
            1f
        }
        return normalizationGain * 2.0f.pow(rawExposureCompensation)
    }

    private fun exactDngBaselineExposureGain(metadata: RawMetadata): Float {
        return DngBaselineExposure.exactGain(metadata.baselineExposure)
    }

    private fun renderLinearRcdPass(
        metadata: RawMetadata,
        sourceTextureId: Int,
        targetFramebufferId: Int,
        viewportWidth: Int,
        viewportHeight: Int,
        rawExposureCompensation: Float,
        colorCorrectionMatrix: FloatArray,
        cameraWhite: FloatArray = metadata.cameraWhite,
        applyDngBaselineExposure: Boolean,
        applyProfileGainTableMap: Boolean,
        clampProfileRgb: Boolean,
        label: String
    ) {
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, targetFramebufferId)
        checkGlError("$label setup framebuffer")

        GLES30.glUseProgram(linearRcdProgram)
        GLES30.glViewport(0, 0, viewportWidth, viewportHeight)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, sourceTextureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(linearRcdProgram, "uDemosaickedTexture"), 0)

        val transposedCCM = transposeMatrix3x3(colorCorrectionMatrix)
        GLES30.glUniformMatrix3fv(
            GLES30.glGetUniformLocation(linearRcdProgram, "uColorCorrectionMatrix"),
            1,
            false,
            transposedCCM,
            0
        )
        val linearCameraWhite = sanitizeCameraWhite(cameraWhite)
        GLES30.glUniform3f(
            GLES30.glGetUniformLocation(linearRcdProgram, "uCameraWhite"),
            linearCameraWhite[0],
            linearCameraWhite[1],
            linearCameraWhite[2]
        )
        val hasActiveProfileGainTableMap = metadata.profileGainTableMap?.isValid == true &&
            applyProfileGainTableMap
        val exposureGain = computeLinearExposureGain(
            metadata,
            rawExposureCompensation,
            applyDngBaselineExposure
        )
        bindProfileGainTableMapForLinearRcd(
            linearRcdProgram,
            metadata,
            hasActiveProfileGainTableMap
        )
        GLES30.glUniform1f(GLES30.glGetUniformLocation(linearRcdProgram, "uExposureGain"), exposureGain)
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(linearRcdProgram, "uClampProfileRgb"),
            if (clampProfileRgb) 1 else 0
        )

        val identityMatrix = FloatArray(16)
        GlMatrix.setIdentityM(identityMatrix, 0)
        GLES30.glUniformMatrix4fv(
            GLES30.glGetUniformLocation(linearRcdProgram, "uTexMatrix"),
            1,
            false,
            identityMatrix,
            0
        )

        drawQuad(linearRcdProgram)
        checkGlError("$label drawQuad")
    }

    private fun bindProfileGainTableMapForLinearRcd(
        program: Int,
        metadata: RawMetadata,
        applyProfileGainTableMap: Boolean
    ) {
        val profileGainTableMap = metadata.profileGainTableMap?.takeIf { it.isValid }
        if (profileGainTableMap == null || !applyProfileGainTableMap) {
            GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uProfileGainEnabled"), 0)
            GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uProfileGainDebugOverlay"), 0)
            return
        }
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + PROFILE_GAIN_TABLE_TEXTURE_UNIT)
        val textureId = ensureProfileGainTableTexture(profileGainTableMap)
        if (textureId == 0) {
            GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uProfileGainEnabled"), 0)
            GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uProfileGainDebugOverlay"), 0)
            return
        }

        GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + PROFILE_GAIN_TABLE_TEXTURE_UNIT)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, textureId)
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(program, "uProfileGainTableMap"),
            PROFILE_GAIN_TABLE_TEXTURE_UNIT
        )
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uProfileGainEnabled"), 1)
        GLES30.glUniform3i(
            GLES30.glGetUniformLocation(program, "uProfileGainTableSize"),
            profileGainTableMap.mapPointsH,
            profileGainTableMap.mapPointsV,
            profileGainTableMap.mapPointsN
        )
        GLES30.glUniform4f(
            GLES30.glGetUniformLocation(program, "uProfileGainGrid"),
            profileGainTableMap.mapOriginH.toFloat(),
            profileGainTableMap.mapOriginV.toFloat(),
            profileGainTableMap.mapSpacingH.toFloat(),
            profileGainTableMap.mapSpacingV.toFloat()
        )
        val weights = profileGainTableMap.mapInputWeights
        GLES30.glUniform4f(
            GLES30.glGetUniformLocation(program, "uProfileGainWeights0"),
            weights.getOrElse(0) { 0f },
            weights.getOrElse(1) { 0f },
            weights.getOrElse(2) { 0f },
            weights.getOrElse(3) { 0f }
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(program, "uProfileGainWeightMax"),
            weights.getOrElse(4) { 0f }
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(program, "uProfileGainGamma"),
            profileGainTableMap.gamma.coerceIn(0.125f, 8.0f)
        )
        // Match the DNG SDK PGTM path: scale table input by DNG baseline exposure only.
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(program, "uProfileGainBaselineGain"),
            exactDngBaselineExposureGain(metadata)
        )
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(program, "uProfileGainDebugOverlay"),
            DngPgtmDiagnostic.visualOverlayModeForSource(TAG)
        )
    }

    private fun ensureProfileGainTableTexture(profileGainTableMap: DngProfileGainTableMap): Int {
        if (profileGainTableTextureId != 0 && profileGainTableTextureSource == profileGainTableMap) {
            return profileGainTableTextureId
        }
        if (profileGainTableTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(profileGainTableTextureId), 0)
            profileGainTableTextureId = 0
            profileGainTableTextureSource = null
        }
        val textureWidth = profileGainTableMap.mapPointsN
        val textureHeight = profileGainTableMap.mapPointsH * profileGainTableMap.mapPointsV
        if (textureWidth <= 0 || textureHeight <= 0 ||
            textureWidth > maxTextureSize || textureHeight > maxTextureSize
        ) {
            PLog.w(
                TAG,
                "ProfileGainTableMap texture too large: ${textureWidth}x$textureHeight max=$maxTextureSize"
            )
            return 0
        }

        val textures = IntArray(1)
        GLES30.glGenTextures(1, textures, 0)
        val textureId = textures[0]
        val buffer = ByteBuffer
            .allocateDirect(profileGainTableMap.gains.size * 4)
            .order(ByteOrder.nativeOrder())
            .asFloatBuffer()
        var gainMin = Float.POSITIVE_INFINITY
        var gainMax = Float.NEGATIVE_INFINITY
        profileGainTableMap.gains.forEach { rawGain ->
            val gain = rawGain.takeIf { it.isFinite() } ?: 1f
            gainMin = min(gainMin, gain)
            gainMax = max(gainMax, gain)
            buffer.put(gain)
        }
        buffer.position(0)

        GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + PROFILE_GAIN_TABLE_TEXTURE_UNIT)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, textureId)
        GLES30.glTexImage2D(
            GLES30.GL_TEXTURE_2D,
            0,
            GLES30.GL_R32F,
            textureWidth,
            textureHeight,
            0,
            GLES30.GL_RED,
            GLES30.GL_FLOAT,
            buffer
        )
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_NEAREST)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_NEAREST)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        checkGlError("ensureProfileGainTableTexture")

        profileGainTableTextureId = textureId
        profileGainTableTextureSource = profileGainTableMap
        PLog.d(
            TAG,
            "ProfileGainTableMap texture uploaded: ${profileGainTableMap.mapPointsH}x" +
                "${profileGainTableMap.mapPointsV}x${profileGainTableMap.mapPointsN} " +
                "texture=${textureWidth}x${textureHeight} format=R32F " +
                "gainMin=$gainMin gainMax=$gainMax tag=${profileGainTableMap.sourceTag}"
        )
        return textureId
    }

    private suspend fun resolveRawAutoExposureEv(
        metadata: RawMetadata,
        sourceTextureId: Int,
        rawBlackPointCorrection: Float,
        rawWhitePointCorrection: Float,
        colorCorrectionMatrix: FloatArray,
        cameraWhite: FloatArray,
        dcpRenderPlan: DcpRenderPlan?,
        applyLinearDngBaselineExposure: Boolean,
        applyProfileGainTableMap: Boolean,
        clampProfileRgb: Boolean,
        viewfinderThumbnailStats: MeteringSystem.SrgbThumbnailMeteringStats?,
        viewfinderCenterAverageReference: RawAeCenterAverageReference?,
        outputBounds: Rect,
        outputRotation: Int,
        spectralFilmLut: SpectralFilmLut?,
        colorEngine: RawRenderingEngine,
        outputWorkingColorSpace: ColorSpace,
        profileToEngineTransform: FloatArray,
        rawToneMappingParameters: RawToneMappingParameters,
        useProfileExposureRamp: Boolean,
        applyProfileDcpBaselineExposureOffset: Boolean
    ): MeteringSystem.MeteringResult {
        if (viewfinderThumbnailStats == null) {
            return MeteringSystem.MeteringResult.EMPTY
        }
        val meteringSize = resolveLongEdgeMeteringSize(
            sourceWidth = metadata.width,
            sourceHeight = metadata.height,
            maxLongEdge = RAW_TONE_MAPPED_AE_LONG_EDGE
        )
        val meteringWidth = meteringSize.width
        val meteringHeight = meteringSize.height
        return try {
            setupLinearMeteringFramebuffer(meteringWidth, meteringHeight)
            renderLinearRcdPass(
                metadata = metadata,
                sourceTextureId = sourceTextureId,
                targetFramebufferId = linearMeteringFramebufferId,
                viewportWidth = meteringWidth,
                viewportHeight = meteringHeight,
                rawExposureCompensation = 0f,
                colorCorrectionMatrix = colorCorrectionMatrix,
                cameraWhite = cameraWhite,
                applyDngBaselineExposure = applyLinearDngBaselineExposure,
                applyProfileGainTableMap = applyProfileGainTableMap,
                clampProfileRgb = clampProfileRgb,
                label = "LinearMeteringPass"
            )
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
            GLES31.glMemoryBarrier(
                GLES31.GL_FRAMEBUFFER_BARRIER_BIT or GLES31.GL_TEXTURE_FETCH_BARRIER_BIT
            )
            setupCombinedFramebuffer(meteringWidth, meteringHeight)
            val meteringBounds = scaleMeteringBounds(
                bounds = outputBounds,
                sourceWidth = metadata.width,
                sourceHeight = metadata.height,
                targetWidth = meteringWidth,
                targetHeight = meteringHeight,
                outputRotation = outputRotation
            )
            setupSrgbMeteringCropFramebuffer(
                viewfinderThumbnailStats.width.coerceAtLeast(1),
                viewfinderThumbnailStats.height.coerceAtLeast(1)
            )
            resolveToneMappedRawAutoExposureEv(
                metadata = metadata,
                linearTextureId = linearMeteringTextureId,
                width = meteringWidth,
                height = meteringHeight,
                meteringBounds = meteringBounds,
                readbackWidth = viewfinderThumbnailStats.width.coerceAtLeast(1),
                readbackHeight = viewfinderThumbnailStats.height.coerceAtLeast(1),
                outputRotation = outputRotation,
                viewfinderThumbnailStats = viewfinderThumbnailStats,
                viewfinderCenterAverageReference = viewfinderCenterAverageReference,
                dcpRenderPlan = dcpRenderPlan,
                spectralFilmLut = spectralFilmLut,
                colorEngine = colorEngine,
                outputWorkingColorSpace = outputWorkingColorSpace,
                profileToEngineTransform = profileToEngineTransform,
                rawToneMappingParameters = rawToneMappingParameters,
                rawBlacksAdjustment = rawBlackPointCorrection,
                rawWhitesAdjustment = rawWhitePointCorrection,
                useProfileExposureRamp = useProfileExposureRamp,
                applyProfileDcpBaselineExposureOffset = applyProfileDcpBaselineExposureOffset,
                applyProfileDngBaselineExposure = !applyLinearDngBaselineExposure
            ) ?: MeteringSystem.MeteringResult.EMPTY
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to resolve RAW auto exposure", e)
            MeteringSystem.MeteringResult.EMPTY
        }
    }

    private data class ToneMappedRawAeSample(
        val autoEv: Float,
        val profileExposureEv: Float,
        val renderedLuma: Float,
        val errorEv: Float,
        val centerAverageMatch: RawAeCenterAverageMatch,
        val stats: MeteringSystem.SrgbThumbnailMeteringStats,
        val argbPixels: IntArray
    )

    private data class ToneMappedRawAeSolveResult(
        val meteredEv: Float,
        val finalSample: ToneMappedRawAeSample,
        val renderedStepCount: Int
    )

    private data class RawAeMeteringSize(
        val width: Int,
        val height: Int
    )

    private fun resolveLongEdgeMeteringSize(
        sourceWidth: Int,
        sourceHeight: Int,
        maxLongEdge: Int
    ): RawAeMeteringSize {
        if (sourceWidth <= 0 || sourceHeight <= 0) {
            return RawAeMeteringSize(1, 1)
        }
        val longEdge = minOf(max(sourceWidth, sourceHeight), maxLongEdge.coerceAtLeast(1))
            .coerceAtLeast(1)
        return if (sourceWidth >= sourceHeight) {
            RawAeMeteringSize(
                width = longEdge,
                height = ((longEdge.toFloat() * sourceHeight.toFloat() / sourceWidth.toFloat()) + 0.5f)
                    .toInt()
                    .coerceAtLeast(1)
            )
        } else {
            RawAeMeteringSize(
                width = ((longEdge.toFloat() * sourceWidth.toFloat() / sourceHeight.toFloat()) + 0.5f)
                    .toInt()
                    .coerceAtLeast(1),
                height = longEdge
            )
        }
    }

    private fun scaleMeteringBounds(
        bounds: Rect,
        sourceWidth: Int,
        sourceHeight: Int,
        targetWidth: Int,
        targetHeight: Int,
        outputRotation: Int
    ): Rect {
        if (sourceWidth <= 0 || sourceHeight <= 0 || targetWidth <= 0 || targetHeight <= 0) {
            return Rect(0, 0, targetWidth.coerceAtLeast(1), targetHeight.coerceAtLeast(1))
        }
        if (outputRotation == 90 || outputRotation == 270) {
            val scaleRotatedX = targetHeight.toFloat() / sourceHeight.toFloat()
            val scaleRotatedY = targetWidth.toFloat() / sourceWidth.toFloat()
            val left = floor(bounds.left * scaleRotatedX).toInt().coerceIn(0, targetHeight - 1)
            val top = floor(bounds.top * scaleRotatedY).toInt().coerceIn(0, targetWidth - 1)
            val right = ceil(bounds.right * scaleRotatedX).toInt().coerceIn(left + 1, targetHeight)
            val bottom = ceil(bounds.bottom * scaleRotatedY).toInt().coerceIn(top + 1, targetWidth)
            return Rect(left, top, right, bottom)
        }
        val scaleX = targetWidth.toFloat() / sourceWidth.toFloat()
        val scaleY = targetHeight.toFloat() / sourceHeight.toFloat()
        val left = floor(bounds.left * scaleX).toInt().coerceIn(0, targetWidth - 1)
        val top = floor(bounds.top * scaleY).toInt().coerceIn(0, targetHeight - 1)
        val right = ceil(bounds.right * scaleX).toInt().coerceIn(left + 1, targetWidth)
        val bottom = ceil(bounds.bottom * scaleY).toInt().coerceIn(top + 1, targetHeight)
        return Rect(left, top, right, bottom)
    }

    private fun resolveToneMappedRawAutoExposureEv(
        metadata: RawMetadata,
        linearTextureId: Int,
        width: Int,
        height: Int,
        meteringBounds: Rect,
        readbackWidth: Int,
        readbackHeight: Int,
        outputRotation: Int,
        viewfinderThumbnailStats: MeteringSystem.SrgbThumbnailMeteringStats,
        viewfinderCenterAverageReference: RawAeCenterAverageReference?,
        dcpRenderPlan: DcpRenderPlan?,
        spectralFilmLut: SpectralFilmLut?,
        colorEngine: RawRenderingEngine,
        outputWorkingColorSpace: ColorSpace,
        profileToEngineTransform: FloatArray,
        rawToneMappingParameters: RawToneMappingParameters,
        rawBlacksAdjustment: Float,
        rawWhitesAdjustment: Float,
        useProfileExposureRamp: Boolean,
        applyProfileDcpBaselineExposureOffset: Boolean,
        applyProfileDngBaselineExposure: Boolean
    ): MeteringSystem.MeteringResult? {
        val centerAverageReference = viewfinderCenterAverageReference ?: run {
            PLog.d(TAG, "RAW auto exposure disabled: center average reference unavailable")
            return null
        }
        val pixelCount = readbackWidth * readbackHeight
        val readbackBuffer = LargeDirectBuffer.allocate(
            pixelCount.toLong() * 4L,
            "tone-mapped RAW AE readback"
        ) ?: return null

        return try {
            val zero = renderToneMappedRawAeSample(
                metadata = metadata,
                linearTextureId = linearTextureId,
                width = width,
                height = height,
                autoEv = 0f,
                centerAverageReference = centerAverageReference,
                dcpRenderPlan = dcpRenderPlan,
                spectralFilmLut = spectralFilmLut,
                colorEngine = colorEngine,
                outputWorkingColorSpace = outputWorkingColorSpace,
                profileToEngineTransform = profileToEngineTransform,
                rawToneMappingParameters = rawToneMappingParameters,
                rawBlacksAdjustment = rawBlacksAdjustment,
                rawWhitesAdjustment = rawWhitesAdjustment,
                useProfileExposureRamp = useProfileExposureRamp,
                applyProfileDcpBaselineExposureOffset = applyProfileDcpBaselineExposureOffset,
                applyProfileDngBaselineExposure = applyProfileDngBaselineExposure,
                readbackBounds = meteringBounds,
                readbackWidth = readbackWidth,
                readbackHeight = readbackHeight,
                outputRotation = outputRotation,
                readbackBuffer = readbackBuffer
            ) ?: return null
            val solved = solveToneMappedRawAutoExposure(zero) { autoEv ->
                renderToneMappedRawAeSample(
                    metadata = metadata,
                    linearTextureId = linearTextureId,
                    width = width,
                    height = height,
                    autoEv = autoEv,
                    centerAverageReference = centerAverageReference,
                    dcpRenderPlan = dcpRenderPlan,
                    spectralFilmLut = spectralFilmLut,
                    colorEngine = colorEngine,
                    outputWorkingColorSpace = outputWorkingColorSpace,
                    profileToEngineTransform = profileToEngineTransform,
                    rawToneMappingParameters = rawToneMappingParameters,
                    rawBlacksAdjustment = rawBlacksAdjustment,
                    rawWhitesAdjustment = rawWhitesAdjustment,
                    useProfileExposureRamp = useProfileExposureRamp,
                    applyProfileDcpBaselineExposureOffset = applyProfileDcpBaselineExposureOffset,
                    applyProfileDngBaselineExposure = applyProfileDngBaselineExposure,
                    readbackBounds = meteringBounds,
                    readbackWidth = readbackWidth,
                    readbackHeight = readbackHeight,
                    outputRotation = outputRotation,
                    readbackBuffer = readbackBuffer
                )
            }
            val finalSample = solved.finalSample
            val meteredEv = solved.meteredEv
            val highlightCompression = viewfinderThumbnailStats.highlightCompression

            MeteringSystem.MeteringResult(
                meteredEv = meteredEv,
                dynamicRangeGap = 0f,
                avgLuma = finalSample.renderedLuma,
                clipLow = finalSample.stats.clipLow,
                clipHigh = finalSample.stats.clipHigh,
                curveWhitePoint = 1f,
                highlightCompression = highlightCompression
            )
        } finally {
            LargeDirectBuffer.free(readbackBuffer)
        }
    }

    private fun solveToneMappedRawAutoExposure(
        zero: ToneMappedRawAeSample,
        renderSample: (Float) -> ToneMappedRawAeSample?
    ): ToneMappedRawAeSolveResult {
        if (abs(zero.errorEv) <= RAW_TONE_MAPPED_AE_EV_TOLERANCE) {
            return ToneMappedRawAeSolveResult(
                meteredEv = zero.autoEv,
                finalSample = zero,
                renderedStepCount = 0
            )
        }

        val samples = mutableListOf(zero)
        var bestSample = zero
        var renderedStepCount = 0
        var nextEv = rawAutoExposureEvForSample(zero)

        while (renderedStepCount < RAW_TONE_MAPPED_AE_MAX_SOLVE_STEPS) {
            val candidateEv = distinctRawAutoExposureCandidate(nextEv, samples) ?: break
            val sample = renderSample(candidateEv)
                ?: return ToneMappedRawAeSolveResult(
                    meteredEv = if (renderedStepCount == 0) candidateEv else bestSample.autoEv,
                    finalSample = bestSample,
                    renderedStepCount = renderedStepCount
                )
            renderedStepCount++
            samples += sample

            if (abs(sample.errorEv) < abs(bestSample.errorEv)) {
                bestSample = sample
            }
            if (abs(sample.errorEv) <= RAW_TONE_MAPPED_AE_EV_TOLERANCE) {
                return ToneMappedRawAeSolveResult(
                    meteredEv = sample.autoEv,
                    finalSample = sample,
                    renderedStepCount = renderedStepCount
                )
            }

            nextEv = nextRawAutoExposureCandidate(samples, sample)
        }

        return ToneMappedRawAeSolveResult(
            meteredEv = bestSample.autoEv,
            finalSample = bestSample,
            renderedStepCount = renderedStepCount
        )
    }

    private fun nextRawAutoExposureCandidate(
        samples: List<ToneMappedRawAeSample>,
        latest: ToneMappedRawAeSample
    ): Float {
        bracketedRawAutoExposureCandidate(samples)?.let { return it }
        val previous = samples
            .asReversed()
            .firstOrNull {
                it !== latest && abs(it.errorEv - latest.errorEv) > 0.0001f
            }
        val secantEv = previous?.let { interpolatedRawAutoExposureEv(it, latest) }
        return secantEv ?: rawAutoExposureEvForSample(latest)
    }

    private fun bracketedRawAutoExposureCandidate(
        samples: List<ToneMappedRawAeSample>
    ): Float? {
        val sortedSamples = samples.sortedBy { it.autoEv }
        for (index in 0 until sortedSamples.lastIndex) {
            val lower = sortedSamples[index]
            val upper = sortedSamples[index + 1]
            val crossesTarget =
                (lower.errorEv <= 0f && upper.errorEv >= 0f) ||
                    (lower.errorEv >= 0f && upper.errorEv <= 0f)
            if (!crossesTarget) continue

            val interpolatedEv = interpolatedRawAutoExposureEv(lower, upper)
            return if (interpolatedEv != null &&
                interpolatedEv >= lower.autoEv &&
                interpolatedEv <= upper.autoEv
            ) {
                interpolatedEv
            } else {
                ((lower.autoEv + upper.autoEv) * 0.5f).coerceIn(
                    MeteringSystem.RAW_EXPOSURE_MIN_EV,
                    MeteringSystem.RAW_EXPOSURE_MAX_EV
                )
            }
        }
        return null
    }

    private fun interpolatedRawAutoExposureEv(
        a: ToneMappedRawAeSample,
        b: ToneMappedRawAeSample
    ): Float? {
        val errorDelta = b.errorEv - a.errorEv
        if (!errorDelta.isFinite() || abs(errorDelta) <= 0.0001f) {
            return null
        }
        return sanitizeRawAutoExposureEv(
            a.autoEv - a.errorEv * (b.autoEv - a.autoEv) / errorDelta
        )
    }

    private fun rawAutoExposureEvForSample(sample: ToneMappedRawAeSample): Float {
        return sanitizeRawAutoExposureEv(sample.autoEv - sample.errorEv) ?: sample.autoEv
    }

    private fun distinctRawAutoExposureCandidate(
        candidateEv: Float,
        samples: List<ToneMappedRawAeSample>
    ): Float? {
        val safeEv = sanitizeRawAutoExposureEv(candidateEv) ?: return null
        return if (samples.any { abs(it.autoEv - safeEv) < RAW_TONE_MAPPED_AE_MIN_STEP_EV }) {
            null
        } else {
            safeEv
        }
    }

    private fun sanitizeRawAutoExposureEv(value: Float): Float? {
        return if (value.isFinite()) {
            value.coerceIn(
                MeteringSystem.RAW_EXPOSURE_MIN_EV,
                MeteringSystem.RAW_EXPOSURE_MAX_EV
            )
        } else {
            null
        }
    }

    private fun renderToneMappedRawAeSample(
        metadata: RawMetadata,
        linearTextureId: Int,
        width: Int,
        height: Int,
        autoEv: Float,
        centerAverageReference: RawAeCenterAverageReference,
        dcpRenderPlan: DcpRenderPlan?,
        spectralFilmLut: SpectralFilmLut?,
        colorEngine: RawRenderingEngine,
        outputWorkingColorSpace: ColorSpace,
        profileToEngineTransform: FloatArray,
        rawToneMappingParameters: RawToneMappingParameters,
        rawBlacksAdjustment: Float,
        rawWhitesAdjustment: Float,
        useProfileExposureRamp: Boolean,
        applyProfileDcpBaselineExposureOffset: Boolean,
        applyProfileDngBaselineExposure: Boolean,
        readbackBounds: Rect,
        readbackWidth: Int,
        readbackHeight: Int,
        outputRotation: Int,
        readbackBuffer: ByteBuffer
    ): ToneMappedRawAeSample? {
        val clampedAutoEv = autoEv.coerceIn(
            MeteringSystem.RAW_EXPOSURE_MIN_EV,
            MeteringSystem.RAW_EXPOSURE_MAX_EV
        )
        val profileExposureUniforms = computeProfileExposureUniforms(
            metadata = metadata,
            profileExposureCompensation = clampedAutoEv + colorEngine.defaultExposureCompensationEv,
            dcpRenderPlan = dcpRenderPlan,
            applyDcpBaselineExposureOffset = applyProfileDcpBaselineExposureOffset,
            applyDngBaselineExposure = applyProfileDngBaselineExposure,
            useRamp = useProfileExposureRamp
        )
        val rendered = renderCombinedPass(
            metadata = metadata,
            inputTextureId = linearTextureId,
            dcpRenderPlan = dcpRenderPlan,
            spectralFilmLut = spectralFilmLut,
            colorEngine = colorEngine,
            outputWorkingColorSpace = outputWorkingColorSpace,
            profileToEngineTransform = profileToEngineTransform,
            profileExposureUniforms = profileExposureUniforms,
            shadowsHighlightsParams = ShadowsHighlightsParams.NEUTRAL,
            rawBlacksAdjustment = rawBlacksAdjustment,
            rawWhitesAdjustment = rawWhitesAdjustment,
            rawToneMappingParameters = rawToneMappingParameters,
            viewportWidth = width,
            viewportHeight = height
        )
        if (!rendered) {
            PLog.e(TAG, "Tone-mapped RAW AE render failed for ev=$clampedAutoEv")
            return null
        }
        if (!renderSrgbMeteringCropPass(
                sourceTextureId = combinedTextureId,
                sourceWidth = width,
                sourceHeight = height,
                bounds = readbackBounds,
                targetWidth = readbackWidth,
                targetHeight = readbackHeight,
                rotation = outputRotation
            )
        ) {
            return null
        }
        val image = readSrgbMeteringCropImage(
            width = readbackWidth,
            height = readbackHeight,
            pixelBuffer = readbackBuffer
        ) ?: return null
        val stats = image.stats
        val centerAverageMatch = matchRawAeCenterAverage(centerAverageReference, image)
            ?: return null
        val renderedLuma = centerAverageMatch.renderedDisplayLuma
        val errorEv = centerAverageMatch.errorEv
        return ToneMappedRawAeSample(
            autoEv = clampedAutoEv,
            profileExposureEv = profileExposureUniforms.exposureEv,
            renderedLuma = renderedLuma,
            errorEv = errorEv,
            centerAverageMatch = centerAverageMatch,
            stats = stats,
            argbPixels = image.argbPixels
        )
    }

    private fun renderSrgbMeteringCropPass(
        sourceTextureId: Int,
        sourceWidth: Int,
        sourceHeight: Int,
        bounds: Rect,
        targetWidth: Int,
        targetHeight: Int,
        rotation: Int
    ): Boolean {
        if (passthroughProgram == 0 || srgbMeteringCropFramebufferId == 0) {
            PLog.e(
                TAG,
                "Tone-mapped RAW AE crop unavailable: program=$passthroughProgram " +
                    "fbo=$srgbMeteringCropFramebufferId"
            )
            return false
        }
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, srgbMeteringCropFramebufferId)
        GLES30.glViewport(0, 0, targetWidth, targetHeight)
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
            cropCenterX = bounds.top + bounds.height() / 2f
            cropCenterY = bounds.left + bounds.width() / 2f
        } else {
            cropW = bounds.width().toFloat()
            cropH = bounds.height().toFloat()
            cropCenterX = bounds.centerX().toFloat()
            cropCenterY = bounds.centerY().toFloat()
        }

        val texMatrix = FloatArray(16)
        GlMatrix.setIdentityM(texMatrix, 0)
        GlMatrix.translateM(texMatrix, 0, cropCenterX / sourceWidth, cropCenterY / sourceHeight, 0f)
        GlMatrix.scaleM(texMatrix, 0, cropW / sourceWidth, cropH / sourceHeight, 1.0f)
        GlMatrix.rotateM(texMatrix, 0, -rotation.toFloat(), 0f, 0f, 1f)
        GlMatrix.translateM(texMatrix, 0, -0.5f, -0.5f, 0f)
        GLES30.glUniformMatrix4fv(
            GLES30.glGetUniformLocation(passthroughProgram, "uTexMatrix"),
            1,
            false,
            texMatrix,
            0
        )
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, sourceTextureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(passthroughProgram, "uTexture"), 0)
        drawQuad(passthroughProgram)
        checkGlError("tone-mapped RAW AE crop pass")
        return true
    }

    private fun readSrgbMeteringCropImage(
        width: Int,
        height: Int,
        pixelBuffer: ByteBuffer
    ): RawAeMeteringImage? {
        if (width <= 0 || height <= 0) {
            return null
        }
        val pixelCount = width * height
        pixelBuffer.clear()
        pixelBuffer.limit(pixelCount * 4)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, srgbMeteringCropFramebufferId)
        GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 1)
        GLES30.glReadPixels(
            0,
            0,
            width,
            height,
            GLES30.GL_RGBA,
            GLES30.GL_UNSIGNED_BYTE,
            pixelBuffer
        )
        checkGlError("tone-mapped RAW AE readback")
        pixelBuffer.position(0)

        val argbPixels = IntArray(pixelCount)
        for (i in 0 until pixelCount) {
            val r = pixelBuffer.get().toInt() and 0xff
            val g = pixelBuffer.get().toInt() and 0xff
            val b = pixelBuffer.get().toInt() and 0xff
            val a = pixelBuffer.get().toInt() and 0xff
            argbPixels[i] = (a shl 24) or (r shl 16) or (g shl 8) or b
        }
        val stats = MeteringSystem.analyzeSrgbThumbnail(width, height, argbPixels)
            ?: return null
        return RawAeMeteringImage(
            width = width,
            height = height,
            argbPixels = argbPixels,
            stats = stats
        )
    }

    private fun displayLumaErrorEv(renderedLuma: Float, targetLuma: Float): Float {
        val safeRendered = renderedLuma
            .takeIf { it.isFinite() }
            ?.coerceAtLeast(RAW_TONE_MAPPED_AE_LUMA_FLOOR)
            ?: RAW_TONE_MAPPED_AE_LUMA_FLOOR
        val safeTarget = targetLuma
            .takeIf { it.isFinite() }
            ?.coerceAtLeast(RAW_TONE_MAPPED_AE_LUMA_FLOOR)
            ?: RAW_TONE_MAPPED_AE_LUMA_FLOOR
        return (ln(safeRendered.toDouble() / safeTarget.toDouble()) / ln(2.0)).toFloat()
    }

    private fun renderOutputPass(
        rotation: Int,
        width: Int,
        height: Int,
        bounds: Rect,
        sourceTextureId: Int
    ) {
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

    private fun readLinearRcdPixels(width: Int, height: Int): ByteBuffer? {
        val pixelSize = width.toLong() * height.toLong() * 8L
        if (pixelSize <= 0L || pixelSize > Int.MAX_VALUE) {
            PLog.e(TAG, "Linear RCD readback size invalid: ${width}x$height")
            return null
        }
        val pixelBuffer = LargeDirectBuffer.allocate(pixelSize, "linear RCD RGBA16F")
            ?.order(ByteOrder.nativeOrder())
            ?: return null
        return try {
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, linearOutputFramebufferId)
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
            checkGlError("Linear RCD readback")
            pixelBuffer
        } catch (e: Exception) {
            LargeDirectBuffer.free(pixelBuffer)
            throw e
        } finally {
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        }
    }

    /**
     * 从当前 outputFramebuffer 读取像素并创建 Bitmap。
     *
     * 优先使用 PBO（Pixel Buffer Object）：像素数据存放在 GPU 内存（通过 glMapBufferRange 映射为
     * native ByteBuffer），完全不占用 Java 堆，避免超分时 fusedBayerBuffer +
     * pixelBuffer 同时存活导致 Java 堆 OOM（512 MB 设备上三者合计可达 768 MB）。
     * 若 PBO 分配或 map 失败则降级为直接分配 ByteBuffer。
     */
    private fun readPixels(
        width: Int,
        height: Int,
        colorSpace: android.graphics.ColorSpace
    ): Bitmap? {
        val pixelSize = width * height * 8

        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, outputFramebufferId)
        GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 8)

        // --- PBO 路径（避免 Java 堆分配）---
        if (pboId == 0) {
            val ids = IntArray(1)
            GLES30.glGenBuffers(1, ids, 0)
            pboId = ids[0]
        }
        GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, pboId)
        if (readbackPboSize != pixelSize) {
            GLES30.glBufferData(GLES30.GL_PIXEL_PACK_BUFFER, pixelSize, null, GLES30.GL_STREAM_READ)
            readbackPboSize = if (GLES30.glGetError() == GLES30.GL_NO_ERROR) pixelSize else 0
        }
        val pboReady = readbackPboSize == pixelSize
        if (pboReady) {
            // offset=0：读取写入已绑定的 PBO（GPU→GPU DMA，不阻塞 Java 堆）
            GLES30.glReadPixels(0, 0, width, height, GLES30.GL_RGBA, GLES30.GL_HALF_FLOAT, 0)
            checkGlError("readPixels PBO glReadPixels")
            // 映射 PBO 为 native ByteBuffer（不占用 Java 堆）
            val mappedBuffer = GLES30.glMapBufferRange(
                GLES30.GL_PIXEL_PACK_BUFFER, 0, pixelSize, GLES30.GL_MAP_READ_BIT
            ) as? ByteBuffer
            if (mappedBuffer != null) {
                return try {
                    createBitmap(
                        width,
                        height,
                        Bitmap.Config.RGBA_F16,
                        colorSpace = colorSpace
                    ).also { bmp ->
                        bmp.copyPixelsFromBuffer(mappedBuffer.order(ByteOrder.nativeOrder()))
                    }
                } catch (e: OutOfMemoryError) {
                    PLog.e(TAG, "OOM creating output bitmap ($width x $height)", e)
                    null
                } finally {
                    GLES30.glUnmapBuffer(GLES30.GL_PIXEL_PACK_BUFFER)
                    GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, 0)
                }
            }
            PLog.w(TAG, "glMapBufferRange returned null, falling back to direct readPixels")
        } else {
            PLog.w(
                TAG,
                "PBO glBufferData failed for ${pixelSize}B, falling back to direct readPixels"
            )
        }
        GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, 0)

        // --- 降级路径：直接读到复用的 native ByteBuffer ---
        val pixelBuffer = try {
            obtainReadbackBuffer(pixelSize)
        } catch (e: OutOfMemoryError) {
            PLog.e(TAG, "OOM allocating pixel buffer ($width x $height, ${pixelSize}B)", e)
            return null
        }

        GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, 0)
        GLES30.glReadPixels(0, 0, width, height, GLES30.GL_RGBA, GLES30.GL_HALF_FLOAT, pixelBuffer)
        pixelBuffer.position(0)
        checkGlError("readPixels direct")
        return try {
            createBitmap(
                width,
                height,
                Bitmap.Config.RGBA_F16,
                colorSpace = colorSpace
            ).also { bitmap ->
                bitmap.copyPixelsFromBuffer(pixelBuffer)
            }
        } catch (e: OutOfMemoryError) {
            PLog.e(TAG, "OOM creating output bitmap ($width x $height)", e)
            null
        }
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

        for (i in engineTonePrograms.indices) {
            if (engineTonePrograms[i] != 0) {
                GLES30.glDeleteProgram(engineTonePrograms[i])
                engineTonePrograms[i] = 0
            }
        }
        if (adjustmentProgram != 0) GLES30.glDeleteProgram(adjustmentProgram)
        if (srgbProgram != 0) GLES30.glDeleteProgram(srgbProgram)
        if (sharpenProgram != 0) GLES30.glDeleteProgram(sharpenProgram)
        if (passthroughProgram != 0) GLES30.glDeleteProgram(passthroughProgram)
        if (hdrReferenceProgram != 0) GLES30.glDeleteProgram(hdrReferenceProgram)
        if (chromaDenoiseProgram != 0) GLES30.glDeleteProgram(chromaDenoiseProgram)
        releaseDarktableFilmicHighlightReconstructionPrograms()

        // RCD Compute Programs
        if (rcdPopulateProgram != 0) GLES31.glDeleteProgram(rcdPopulateProgram)
        if (rcdStep1Program != 0) GLES31.glDeleteProgram(rcdStep1Program)
        if (rcdStep2Program != 0) GLES31.glDeleteProgram(rcdStep2Program)
        if (rcdStep3Program != 0) GLES31.glDeleteProgram(rcdStep3Program)
        if (rcdStep40Program != 0) GLES31.glDeleteProgram(rcdStep40Program)
        if (rcdStep41Program != 0) GLES31.glDeleteProgram(rcdStep41Program)
        if (rcdStep42Program != 0) GLES31.glDeleteProgram(rcdStep42Program)
        if (rcdStep43Program != 0) GLES31.glDeleteProgram(rcdStep43Program)
        if (rcdWriteOutputProgram != 0) GLES31.glDeleteProgram(rcdWriteOutputProgram)
        if (quadPopulateProgram != 0) GLES31.glDeleteProgram(quadPopulateProgram)
        if (quadGreenProgram != 0) GLES31.glDeleteProgram(quadGreenProgram)
        if (quadChromaProgram != 0) GLES31.glDeleteProgram(quadChromaProgram)
        if (quadRefineProgram != 0) GLES31.glDeleteProgram(quadRefineProgram)
        if (quadWriteOutputProgram != 0) GLES31.glDeleteProgram(quadWriteOutputProgram)
        if (linearRcdProgram != 0) GLES31.glDeleteProgram(linearRcdProgram)
        if (linearRawRgbProgram != 0) GLES31.glDeleteProgram(linearRawRgbProgram)
        if (rawHdrLinearAccumulateProgram != 0) GLES31.glDeleteProgram(rawHdrLinearAccumulateProgram)
        if (rawHdrLinearNormalizeProgram != 0) GLES31.glDeleteProgram(rawHdrLinearNormalizeProgram)
        if (rawHdrLinearPreviewProgram != 0) GLES31.glDeleteProgram(rawHdrLinearPreviewProgram)

        // darktable denoiseprofile compute programs
        if (denoisePreconditionV2Program != 0) GLES31.glDeleteProgram(denoisePreconditionV2Program)
        if (denoiseNlmInitProgram != 0) GLES31.glDeleteProgram(denoiseNlmInitProgram)
        if (denoiseNlmFusedAccuProgram != 0) GLES31.glDeleteProgram(denoiseNlmFusedAccuProgram)
        if (denoiseNlmFinishProgram != 0) GLES31.glDeleteProgram(denoiseNlmFinishProgram)
        // denoiseprofile textures and FBOs
        for (i in 0..1) {
            if (gfTexId[i] != 0) GLES30.glDeleteTextures(1, intArrayOf(gfTexId[i]), 0)
            if (gfFboId[i] != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(gfFboId[i]), 0)
        }
        if (denoiseNlmU2BufferId != 0) {
            GLES31.glDeleteBuffers(1, intArrayOf(denoiseNlmU2BufferId), 0)
            denoiseNlmU2BufferId = 0
        }
        denoiseNlmBufferPixels = 0
        releaseDarktableFilmicHighlightReconstructionFramebuffers()

        if (rawTextureId != 0) GLES30.glDeleteTextures(1, intArrayOf(rawTextureId), 0)
        if (profileGainTableTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(profileGainTableTextureId), 0)
            profileGainTableTextureId = 0
            profileGainTableTextureSource = null
        }
        if (demosaicTextureId != 0) GLES30.glDeleteTextures(1, intArrayOf(demosaicTextureId), 0)
        if (linearOutputTextureId != 0) GLES30.glDeleteTextures(
            1,
            intArrayOf(linearOutputTextureId),
            0
        )
        if (demosaicFramebufferId != 0) GLES30.glDeleteFramebuffers(
            1,
            intArrayOf(demosaicFramebufferId),
            0
        )
        if (linearOutputFramebufferId != 0) GLES30.glDeleteFramebuffers(
            1,
            intArrayOf(linearOutputFramebufferId),
            0
        )
        if (combinedTextureId != 0) GLES30.glDeleteTextures(1, intArrayOf(combinedTextureId), 0)
        if (combinedFramebufferId != 0) GLES30.glDeleteFramebuffers(
            1,
            intArrayOf(combinedFramebufferId),
            0
        )
        if (engineToneTextureId != 0) GLES30.glDeleteTextures(1, intArrayOf(engineToneTextureId), 0)
        if (engineToneFramebufferId != 0) GLES30.glDeleteFramebuffers(
            1,
            intArrayOf(engineToneFramebufferId),
            0
        )
        if (adjustmentTextureId != 0) GLES30.glDeleteTextures(1, intArrayOf(adjustmentTextureId), 0)
        if (adjustmentFramebufferId != 0) GLES30.glDeleteFramebuffers(
            1,
            intArrayOf(adjustmentFramebufferId),
            0
        )
        if (linearMeteringTextureId != 0) GLES30.glDeleteTextures(
            1,
            intArrayOf(linearMeteringTextureId),
            0
        )
        if (linearMeteringFramebufferId != 0) GLES30.glDeleteFramebuffers(
            1,
            intArrayOf(linearMeteringFramebufferId),
            0
        )
        if (srgbMeteringCropTextureId != 0) GLES30.glDeleteTextures(
            1,
            intArrayOf(srgbMeteringCropTextureId),
            0
        )
        if (srgbMeteringCropFramebufferId != 0) GLES30.glDeleteFramebuffers(
            1,
            intArrayOf(srgbMeteringCropFramebufferId),
            0
        )
        if (hdrReferenceTextureId != 0) GLES30.glDeleteTextures(
            1,
            intArrayOf(hdrReferenceTextureId),
            0
        )
        if (hdrReferenceFramebufferId != 0) GLES30.glDeleteFramebuffers(
            1,
            intArrayOf(hdrReferenceFramebufferId),
            0
        )
        if (sharpenTextureId != 0) GLES30.glDeleteTextures(1, intArrayOf(sharpenTextureId), 0)
        if (sharpenFramebufferId != 0) GLES30.glDeleteFramebuffers(
            1,
            intArrayOf(sharpenFramebufferId),
            0
        )
        if (curveTextureId != 0) GLES30.glDeleteTextures(1, intArrayOf(curveTextureId), 0)
        if (dcpToneCurveTextureId != 0) GLES30.glDeleteTextures(
            1,
            intArrayOf(dcpToneCurveTextureId),
            0
        )
        if (dcpHueSatTextureId != 0) GLES30.glDeleteTextures(1, intArrayOf(dcpHueSatTextureId), 0)
        if (dcpLookTableTextureId != 0) GLES30.glDeleteTextures(
            1,
            intArrayOf(dcpLookTableTextureId),
            0
        )
        if (spectralFilmTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(spectralFilmTextureId), 0)
            spectralFilmTextureId = 0
            spectralFilmTextureKey = null
        }
        if (dummyDcp3DTextureId != 0) GLES30.glDeleteTextures(1, intArrayOf(dummyDcp3DTextureId), 0)
        if (dummyDcpToneCurveTextureId != 0) GLES30.glDeleteTextures(
            1,
            intArrayOf(dummyDcpToneCurveTextureId),
            0
        )
        if (outputTextureId != 0) GLES30.glDeleteTextures(1, intArrayOf(outputTextureId), 0)

        if (outputFramebufferId != 0) GLES30.glDeleteFramebuffers(
            1,
            intArrayOf(outputFramebufferId),
            0
        )
        if (pboId != 0) {
            GLES30.glDeleteBuffers(1, intArrayOf(pboId), 0)
            pboId = 0
            readbackPboSize = 0
        }
        releaseReadbackBuffer()

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
