package com.hinnka.mycamera.raw

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BlendMode
import android.graphics.Canvas
import android.graphics.Paint
import android.graphics.Rect
import android.media.Image
import android.opengl.EGL14
import android.opengl.EGLConfig
import android.opengl.EGLContext
import android.opengl.EGLDisplay
import android.opengl.EGLSurface
import android.opengl.GLES30
import android.opengl.GLES31
import android.util.Half
import android.util.Log
import androidx.core.graphics.createBitmap
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.camera.RawBlackBorderCrop
import com.hinnka.mycamera.data.ContentRepository
import com.hinnka.mycamera.lut.ChromaDenoiseDefaults
import com.hinnka.mycamera.lut.ChromaDenoiseAlgorithm
import com.hinnka.mycamera.ml.SharedDepthEstimator
import com.hinnka.mycamera.processor.GlesGpuCompletion
import com.hinnka.mycamera.processor.GlesGpuScheduler
import com.hinnka.mycamera.processor.GlesComputeWorkGroup
import com.hinnka.mycamera.processor.DenoiseStrength
import com.hinnka.mycamera.processor.GlesMgcRawSpatialStacker
import com.hinnka.mycamera.processor.GlesPixelBufferTransfer
import com.hinnka.mycamera.processor.GpuBayerSource
import com.hinnka.mycamera.processor.GpuLinearRgbSource
import com.hinnka.mycamera.processor.PhotonCoreImagingTuning
import com.hinnka.mycamera.processor.GpuLinearRgbStorage
import com.hinnka.mycamera.processor.GpuStackCompletionTimeline
import com.hinnka.mycamera.processor.MgcSpatialOutputMode
import com.hinnka.mycamera.processor.MgcMergeMethod
import com.hinnka.mycamera.processor.MgcRawProcessorPipeline
import com.hinnka.mycamera.processor.RawNoiseModel
import com.hinnka.mycamera.processor.CalibratedRawNoiseProfile
import com.hinnka.mycamera.processor.RawNoiseProfileSelection
import com.hinnka.mycamera.processor.RawStackResult
import com.hinnka.mycamera.utils.BitmapUtils
import com.hinnka.mycamera.utils.DirectBufferPixelPacker
import com.hinnka.mycamera.utils.LargeDirectBuffer
import com.hinnka.mycamera.utils.PLog
import com.hinnka.mycamera.utils.RawProcessor
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.asCoroutineDispatcher
import kotlinx.coroutines.currentCoroutineContext
import kotlinx.coroutines.ensureActive
import kotlinx.coroutines.withContext
import java.io.File
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.util.Locale
import java.util.concurrent.Executors
import kotlin.math.abs
import kotlin.math.ceil
import kotlin.math.exp
import kotlin.math.floor
import kotlin.math.max
import kotlin.math.min
import kotlin.math.pow
import kotlin.math.sqrt
import android.opengl.Matrix as GlMatrix

private typealias ProfileExposureUniforms = RawProfileExposureGl.Uniforms

private data class ShadowsHighlightsParams(
    val highlights: Float,
    val shadows: Float,
) {
    companion object {
        val NEUTRAL = ShadowsHighlightsParams(highlights = 0f, shadows = 0f)
    }
}

internal data class MgcSpatialGpuDenoiseResult(
    val gpuLinearRgbSource: GpuLinearRgbSource,
    val pixelsIncludeLensShadingCorrection: Boolean,
)

internal enum class MgcSpatialGpuDenoiseMode {
    SPATIAL_DEFAULT,
    SABRE_DEFAULT,
    BYPASS_DEFAULT_DENOISE,
}

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
        val cameraWhite = dngRawData.cameraWhite
            .takeIf { values ->
                values.size >= 3 && values.take(3).all { value -> value.isFinite() && value > 0f }
            }
            ?.copyOf(3)
            ?: baseMetadata?.cameraWhite
            ?: floatArrayOf(1f, 1f, 1f)

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
        val channelNoiseProfile =
            dngRawData.noiseProfile ?: baseMetadata?.channelNoiseProfile ?: FloatArray(0)
        val noiseProfileLayout = if (dngRawData.noiseProfile != null) {
            RawNoiseProfileLayout.DNG_RGB
        } else {
            baseMetadata?.noiseProfileLayout ?: RawNoiseProfileLayout.NONE
        }
        return RawMetadata(
            width = dngRawData.width,
            height = dngRawData.height,
            cfaPattern = cfaPattern,
            blackLevel = blackLevel,
            whiteLevel = whiteLevel,
            whiteBalanceGains = whiteBalanceGains,
            preMul = preMul,
            colorCorrectionMatrix = colorCorrectionMatrix,
            cameraWhite = cameraWhite,
            whitePointXy = dngRawData.whitePointXy
                .takeIf { it.size >= 2 && it.take(2).all(Float::isFinite) }
                ?.copyOf(2)
                ?: baseMetadata?.whitePointXy,
            colorTemperature = DngSdkColorSpec.colorTemperatureForXy(
                dngRawData.whitePointXy
            ) ?: baseMetadata?.colorTemperature,
            cameraMake = dngRawData.cameraMake.takeIf(String::isNotBlank)
                ?: baseMetadata?.cameraMake,
            cameraModel = dngRawData.cameraModel.takeIf(String::isNotBlank)
                ?: baseMetadata?.cameraModel,
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
            maxAnalogSensitivity = baseMetadata?.maxAnalogSensitivity ?: 0,
            shutterSpeed = if (dngRawData.shutterSpeed == 0L) (baseMetadata?.shutterSpeed
                ?: 0L) else dngRawData.shutterSpeed,
            aperture = if (dngRawData.aperture == 0f) (baseMetadata?.aperture
                ?: 0f) else dngRawData.aperture,
            activeArray = activeArray,
            channelNoiseProfile = channelNoiseProfile,
            noiseProfileLayout = noiseProfileLayout,
            postRawSensitivityBoost = baseMetadata?.postRawSensitivityBoost ?: 1.0f,
            exposureCompensation = baseMetadata?.exposureCompensation ?: 0f,
            aeMode = baseMetadata?.aeMode ?: 1,
            afRegions = baseMetadata?.afRegions,
            defaultCrop = defaultCrop,
            frameCount = baseMetadata?.frameCount ?: 1,
            mgcDenoiseCorrelation = baseMetadata?.mgcDenoiseCorrelation,
            mgcDenoiseReadNoise = baseMetadata?.mgcDenoiseReadNoise,
            mgcDenoiseShotNoise = baseMetadata?.mgcDenoiseShotNoise,
            mgcSpatialStrengthMap = baseMetadata?.mgcSpatialStrengthMap,
            mgcSabreNoiseModelScale = baseMetadata?.mgcSabreNoiseModelScale,
            mgcDenoiseTuningSnr = baseMetadata?.mgcDenoiseTuningSnr,
            mgcSharpenTuningSnr = baseMetadata?.mgcSharpenTuningSnr,
            mgcSharpenAttenuationScale = baseMetadata?.mgcSharpenAttenuationScale,
            coreImagingTuning = baseMetadata?.coreImagingTuning
                ?: PhotonCoreImagingTuning.DEFAULT,
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
        // Engine tone programs already reserve 0..6 for input/profile/HNCS/SpectralFilm LUTs.
        private const val PROFILE_GAIN_TABLE_TEXTURE_UNIT = 7
        private const val LINEAR_DCP_HUE_SAT_TEXTURE_UNIT = 3
        private const val RCD_RAW_TEXTURE_UNIT = 0
        private const val RCD_LENS_SHADING_TEXTURE_UNIT = 1
        private const val RCD_OUTPUT_IMAGE_UNIT = 0
        private const val RCD_PQ_WRITE_BINDING = 5
        private const val RCD_PQ_READ_BINDING = 4
        private const val RCD_VH_DIR_BINDING = 4
        private const val CAPTURE_PROGRAM_PREWARM_LONG_EDGE = 256
        private const val LINEAR_RAW_RGB_EXPANSION_ROWS = 128
        private const val RCD_HIGHLIGHT_RECONSTRUCTION_MIN_WB_GAIN = 1e-3f
        private const val RCD_HIGHLIGHT_RECONSTRUCTION_MAX_WB_GAIN = 64.0f
        private const val MGC_SIGNAL_LINEAR_HISTOGRAM_BITS = 10
        private const val MGC_SIGNAL_LINEAR_HISTOGRAM_BINS =
            1 shl MGC_SIGNAL_LINEAR_HISTOGRAM_BITS
        private const val MGC_SIGNAL_ROW_STEP = 8
        private const val RAW_TILE_MAX_CORE_EDGE_PX = 3072
        private const val RAW_PREWARM_CORE_EDGE_PX = 2048
        // Phocus GetStripMargin(50) returns 60 pixels for gradient/color-noise interpolation.
        // The remaining 52 pixels cover chroma denoise, NLM, shadows/highlights and sharpening.
        private const val RAW_TILE_SUPPORT_PX = 112
        private const val FILMIC_GREY_SOURCE = 0.1845f
        private const val FILMIC_OUTPUT_POWER = 3.614815775f
        private const val FILMIC_DISPLAY_BLACK = 0.0001517634f
        private const val FILMIC_DEFAULT_DYNAMIC_RANGE = 12.21f
        private const val FILMIC_DEFAULT_CONTRAST = 1.433801098f
        private const val FILMIC_LATITUDE = 0.0001f
        private const val FILMIC_SAFETY_MARGIN = 0.01f
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
        Thread(
            {
                GlesGpuScheduler.lowerCurrentThreadPriority(TAG)
                r.run()
            },
            "RawDemosaicProcessor-GL",
        ).apply { isDaemon = true }
    }.asCoroutineDispatcher()

    private val exportedStackTextureIds = mutableSetOf<Int>()

    /** Prepares the persistent RAW renderer and first-use capture passes during camera idle time. */
    suspend fun prewarmCapturePipeline(
        context: Context,
        colorEngine: RawRenderingEngine,
        photonHdrEnabled: Boolean,
        captureWidth: Int,
        captureHeight: Int,
        rawMaxFrameCount: Int,
        rawMaxEnabled: Boolean,
        rawMaxSpatialOutputMode: MgcSpatialOutputMode,
        rawMaxMergeMethod: MgcMergeMethod = MgcMergeMethod.SPATIAL_BAYER,
        rawMaxHdrCompositionEnabled: Boolean,
    ): Boolean =
        withContext(glDispatcher) {
            val start = System.currentTimeMillis()
            val warmupWidth = captureWidth.coerceAtLeast(1)
            val warmupHeight = captureHeight.coerceAtLeast(1)
            if (!isInitialized && !initialize()) {
                PLog.e(TAG, "Unable to prewarm RAW capture pipeline")
                return@withContext false
            }
            val captureProfileReady = runCatching {
                prewarmCaptureProfilePasses(
                    captureWidth = warmupWidth,
                    captureHeight = warmupHeight,
                    frameCount = rawMaxFrameCount,
                )
            }.onFailure { error ->
                PLog.w(TAG, "RAW capture profile pass prewarm failed", error)
            }.getOrDefault(false)
            currentCoroutineContext().ensureActive()
            val renderEngineReady = runCatching {
                prewarmRenderEnginePass(
                    context = context.applicationContext,
                    colorEngine = colorEngine,
                    captureWidth = warmupWidth,
                    captureHeight = warmupHeight,
                    inputTextureId = linearOutputTextureId,
                )
            }.onFailure { error ->
                PLog.w(TAG, "RAW render engine prewarm failed", error)
            }.getOrDefault(false)
            currentCoroutineContext().ensureActive()
            val photonHdrReady = if (photonHdrEnabled) {
                profileGainTableAlgorithm.initialize()
            } else {
                true
            }
            currentCoroutineContext().ensureActive()
            val rawMaxReady = if (rawMaxEnabled) {
                runCatching {
                    GlesMgcRawSpatialStacker(
                        width = warmupWidth,
                        height = warmupHeight,
                        cfaPattern = 0,
                        blackLevel = FloatArray(4),
                        whiteLevel = 1023,
                        whiteBalanceGains = FloatArray(4) { 1f },
                        noiseProfileSelection = RawNoiseProfileSelection.Calibrated(
                            CalibratedRawNoiseProfile.MGC_GOOGLE_BLUELINE_REAR,
                        ),
                        lensShading = null,
                        lensShadingWidth = 0,
                        lensShadingHeight = 0,
                        outputMode = rawMaxSpatialOutputMode,
                        mergeMethod = rawMaxMergeMethod,
                        outputScale = 1f,
                        useCurrentGlContext = true,
                        exportGpuLinearRgbSource = true,
                        gpuLinearRgbStorage = GpuLinearRgbStorage.RGBA16F,
                        processorPipeline = if (rawMaxMergeMethod == MgcMergeMethod.SABRE) {
                            MgcRawProcessorPipeline.SABRE
                        } else {
                            MgcRawProcessorPipeline.SPATIAL
                        },
                    ).prewarmCapturePipeline(
                        frameCount = rawMaxFrameCount,
                        includeBento = rawMaxHdrCompositionEnabled &&
                            rawMaxMergeMethod != MgcMergeMethod.SABRE,
                    )
                    true
                }.onFailure { error ->
                    PLog.w(TAG, "MGC Spatial program prewarm failed", error)
                }.getOrDefault(false)
            } else {
                true
            }
            GLES30.glFinish()
            val ready = captureProfileReady && renderEngineReady && photonHdrReady && rawMaxReady
            PLog.d(
                TAG,
                "RAW capture pipeline prewarmed ready=$ready engine=$colorEngine " +
                    "photonHdr=$photonHdrEnabled " +
                    "capture=${warmupWidth}x$warmupHeight rawMax=$rawMaxEnabled " +
                    "rawMaxLayout=${rawMaxSpatialOutputMode.name} " +
                    "rawMaxHdr=$rawMaxHdrCompositionEnabled frames=$rawMaxFrameCount " +
                    "took=${System.currentTimeMillis() - start}ms",
            )
            ready
        }

    /** Executes the capture-time metering shader paths that drivers may compile lazily. */
    private fun prewarmCaptureProfilePasses(
        captureWidth: Int,
        captureHeight: Int,
        frameCount: Int,
    ): Boolean {
        val programSize = resolveLongEdgePreviewSize(
            captureWidth,
            captureHeight,
            CAPTURE_PROGRAM_PREWARM_LONG_EDGE,
        )
        val resourceSize = resolveRawRenderResourceSize(captureWidth, captureHeight)
        val identity = identityMatrix3x3()
        val metadata = RawMetadata(
            width = programSize.width,
            height = programSize.height,
            cfaPattern = RawMetadata.CFA_RGGB,
            blackLevel = FloatArray(4),
            whiteLevel = 65535f,
            whiteBalanceGains = FloatArray(4) { 1f },
            colorCorrectionMatrix = identity,
            cameraWhite = floatArrayOf(1f, 1f, 1f),
            frameCount = frameCount.coerceAtLeast(1),
        )
        val textures = IntArray(2)
        GLES30.glGenTextures(textures.size, textures, 0)
        val previousRawTextureId = rawTextureId
        return try {
            val linearRawTexture = textures[0]
            val meteringRawTexture = textures[1]
            createCaptureWarmupTexture(
                textureId = linearRawTexture,
                internalFormat = GLES30.GL_RGBA16UI,
                format = GLES30.GL_RGBA_INTEGER,
                type = GLES30.GL_UNSIGNED_SHORT,
                width = programSize.width,
                height = programSize.height,
                pixels = null,
            )
            createCaptureWarmupTexture(
                textureId = meteringRawTexture,
                internalFormat = GLES30.GL_R16UI,
                format = GLES30.GL_RED_INTEGER,
                type = GLES30.GL_UNSIGNED_SHORT,
                width = programSize.width,
                height = programSize.height,
                pixels = null,
            )
            rawTextureId = meteringRawTexture
            setupFullResFramebuffer(
                (programSize.width + 1) / 2,
                (programSize.height + 1) / 2,
            )
            runHalfResolutionMeteringDemosaic(
                metadata = metadata,
                width = programSize.width,
                height = programSize.height,
            )
            rawTextureId = previousRawTextureId
            // High-resolution capture uses the same bounded tile capacity as rendering. Prewarm
            // must not allocate whole-frame intermediates merely to compile a small viewport.
            setupFullResFramebuffer(resourceSize.width, resourceSize.height)
            renderLinearRawRgbToTexture(
                sourceTextureId = linearRawTexture,
                sourceSamplesPerPixel = 4,
                targetTextureId = demosaicTextureId,
                width = programSize.width,
                height = programSize.height,
            )

            val exposureReady = renderSceneExposureRequest(
                request = RawSceneExposureRequest { 0f },
                metadata = metadata,
                sourceTextureId = demosaicTextureId,
                colorCorrectionMatrix = identity,
                cameraWhite = metadata.cameraWhite,
                profileToLinearSrgbTransform = identity,
                outputSourceBounds = Rect(0, 0, programSize.width, programSize.height),
            ) != null
            // Execute only a small viewport to force deferred driver compilation.
            renderLinearRcdPass(
                metadata = metadata,
                sourceTextureId = demosaicTextureId,
                targetFramebufferId = linearOutputFramebufferId,
                viewportWidth = programSize.width,
                viewportHeight = programSize.height,
                rawExposureCompensation = 0f,
                colorCorrectionMatrix = identity,
                cameraWhite = metadata.cameraWhite,
                hueSatMap = null,
                applyDngBaselineExposure = false,
                clampProfileRgb = true,
                hueSatMapSupportsOverrange = false,
                label = "CaptureWarmupLinearRcdPass",
            )
            PLog.d(
                TAG,
                "RAW reusable capture state prewarmed: capture=${captureWidth}x$captureHeight " +
                    "resource=${resourceSize.width}x${resourceSize.height} " +
                    "programViewport=${programSize.width}x${programSize.height}",
            )
            exposureReady
        } finally {
            rawTextureId = previousRawTextureId
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
            GLES30.glDeleteTextures(textures.size, textures, 0)
        }
    }

    private fun prewarmRenderEnginePass(
        context: Context,
        colorEngine: RawRenderingEngine,
        captureWidth: Int,
        captureHeight: Int,
        inputTextureId: Int,
    ): Boolean {
        check(inputTextureId != 0) { "Full-resolution RAW warmup input is unavailable" }
        val warmupColorEngine = if (colorEngine == RawRenderingEngine.HncsLut) {
            // Both HNCS branches share one shader source. A camera LUT cannot be
            // selected before capture metadata/profile selection exists.
            RawRenderingEngine.HncsCcm
        } else {
            colorEngine
        }
        val programSize = resolveLongEdgePreviewSize(
            captureWidth,
            captureHeight,
            CAPTURE_PROGRAM_PREWARM_LONG_EDGE,
        )
        val resourceSize = resolveRawRenderResourceSize(captureWidth, captureHeight)
        setupEngineToneFramebuffer(resourceSize.width, resourceSize.height)
        val outputTransform = computeWorkingToOutputTransform(
            warmupColorEngine.workingColorSpace,
            ColorSpace.SRGB,
        )
        val engineToneReady = renderEngineTonePass(
            inputTextureId = inputTextureId,
            dcpRenderPlan = null,
            applyDcpHueSatMap = false,
            spectralFilmLut = null,
            hncsRenderPlan = if (warmupColorEngine.isHncs) {
                HncsProfileManager(context).createCcmRenderPlan()
            } else {
                null
            },
            colorEngine = warmupColorEngine,
            profileToEngineTransform = identityMatrix3x3(),
            profileExposureUniforms = ProfileExposureUniforms.NEUTRAL,
            metadata = null,
            applyProfileGainTableMap = false,
            profileBaselineExposureOffsetEv = 0f,
            globalOriginX = 0,
            globalOriginY = 0,
            fullImageWidth = programSize.width,
            fullImageHeight = programSize.height,
            rawToneMappingParameters = RawToneMappingParameters.DEFAULT,
            outputTransform = outputTransform,
            viewportWidth = programSize.width,
            viewportHeight = programSize.height,
        )
        val srgbInputTextureId = if (engineToneReady && warmupColorEngine.isHncs) {
            setupAdjustmentFramebuffer(resourceSize.width, resourceSize.height)
            val outputReady = renderHncsOutputLinearPass(
                inputTextureId = engineToneTextureId,
                outputTransform = outputTransform,
                targetFramebufferId = adjustmentFramebufferId,
                viewportWidth = programSize.width,
                viewportHeight = programSize.height,
            )
            if (!outputReady) return false
            adjustmentTextureId
        } else {
            engineToneTextureId
        }
        setupCombinedFramebuffer(resourceSize.width, resourceSize.height)
        return engineToneReady && renderSrgbPass(
            inputTextureId = srgbInputTextureId,
            viewportWidth = programSize.width,
            viewportHeight = programSize.height,
        )
    }

    private fun createCaptureWarmupTexture(
        textureId: Int,
        internalFormat: Int,
        format: Int,
        type: Int,
        width: Int,
        height: Int,
        pixels: ByteBuffer?,
    ) {
        check(textureId != 0) { "Unable to allocate capture warmup texture" }
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, textureId)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_NEAREST)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_NEAREST)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 2)
        // This texture is consumed through glBindImageTexture during prewarm. OpenGL ES 3.1
        // requires image-bound textures to have immutable storage.
        GLES30.glTexStorage2D(
            GLES30.GL_TEXTURE_2D,
            1,
            internalFormat,
            width,
            height,
        )
        if (pixels != null) {
            GLES30.glTexSubImage2D(
                GLES30.GL_TEXTURE_2D,
                0,
                0,
                0,
                width,
                height,
                format,
                type,
                pixels,
            )
        }
        checkGlError("createCaptureWarmupTexture")
    }

    /** Runs the stacker in this renderer's persistent EGL context and registers its GPU result. */
    internal suspend fun runStackingOnGlContext(
        block: () -> RawStackResult?,
    ): RawStackResult? = withContext(glDispatcher) {
        if (!isInitialized && !initialize()) {
            PLog.e(TAG, "Unable to initialize shared RAW stacking context")
            return@withContext null
        }
        block()?.also { result ->
            result.gpuLinearRgbSource?.let { source ->
                check(source.textureId != 0)
                exportedStackTextureIds += source.textureId
            }
            result.gpuBayerSource?.let { source ->
                check(source.textureId != 0)
                exportedStackTextureIds += source.textureId
            }
        }
    }

    internal suspend fun releaseGpuLinearRgbSource(source: GpuLinearRgbSource?) {
        if (source == null) return
        withContext(glDispatcher) {
            source.stackCompletionTimeline?.releasePending()
            if (exportedStackTextureIds.remove(source.textureId)) {
                GLES30.glDeleteTextures(1, intArrayOf(source.textureId), 0)
                checkGlError("release stacked LinearRaw texture")
            }
        }
    }

    internal suspend fun releaseGpuBayerSource(source: GpuBayerSource?) {
        if (source == null) return
        withContext(glDispatcher) {
            source.stackCompletionTimeline?.releasePending()
            if (exportedStackTextureIds.remove(source.textureId)) {
                GLES30.glDeleteTextures(1, intArrayOf(source.textureId), 0)
                checkGlError("release stacked Bayer texture")
            }
        }
    }

    /**
     * Materializes a stacked RGBA16UI texture as packed RGB16 only when a CPU/DNG consumer asks
     * for it. The foreground RAW renderer consumes the texture directly before this work starts.
     */
    internal suspend fun materializeGpuLinearRgbSource(
        source: GpuLinearRgbSource,
    ): ByteBuffer? = withContext(glDispatcher) {
        val valid = source.textureId != 0 &&
            source.width > 0 && source.height > 0 &&
            source.samplesPerPixel == 4 &&
            source.storage == GpuLinearRgbStorage.RGBA16UI &&
            exportedStackTextureIds.contains(source.textureId)
        if (!valid) {
            PLog.e(
                TAG,
                "Unable to materialize invalid stacked GPU source texture=${source.textureId} " +
                    "size=${source.width}x${source.height}x${source.samplesPerPixel}",
            )
            return@withContext null
        }

        val totalStartNs = System.nanoTime()
        GLES31.glMemoryBarrier(
            GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT or
                GLES31.GL_FRAMEBUFFER_BARRIER_BIT or
                GLES31.GL_TEXTURE_FETCH_BARRIER_BIT,
        )
        val upstreamStackTiming = source.stackCompletionTimeline?.awaitPending(
            syncPoint = "DNG_MATERIALIZATION",
            checkGlError = ::checkGlError,
        )
        val gpuQueueWaitMs = GlesGpuCompletion.awaitSubmittedWork(
            label = "stacked LinearRaw before DNG materialization",
            checkGlError = ::checkGlError,
        )

        val tileEdge = 1024
        val scratchWidth = min(source.width, tileEdge)
        val scratchHeight = min(source.height, tileEdge)
        val outputBytes = source.width.toLong() * source.height.toLong() * 3L * Short.SIZE_BYTES
        val scratchBytes = scratchWidth.toLong() * scratchHeight.toLong() * 4L * Short.SIZE_BYTES
        val allocationStartNs = System.nanoTime()
        val output = LargeDirectBuffer.allocate(
            outputBytes,
            "Stacked LinearRaw deferred RGB16 materialization",
        )?.order(ByteOrder.nativeOrder()) ?: return@withContext null
        val scratch = LargeDirectBuffer.allocate(
            scratchBytes,
            "Stacked LinearRaw deferred RGBA16 tile",
        )?.order(ByteOrder.nativeOrder())
        if (scratch == null) {
            LargeDirectBuffer.free(output)
            return@withContext null
        }
        val allocationMs = (System.nanoTime() - allocationStartNs) / 1_000_000L

        val framebufferIds = IntArray(1)
        GLES30.glGenFramebuffers(1, framebufferIds, 0)
        val framebuffer = framebufferIds[0]
        if (framebuffer == 0) {
            LargeDirectBuffer.free(scratch)
            LargeDirectBuffer.free(output)
            return@withContext null
        }

        var pixelTransferMs = 0L
        var cpuPackMs = 0L
        var completed = false
        try {
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebuffer)
            GLES30.glFramebufferTexture2D(
                GLES30.GL_FRAMEBUFFER,
                GLES30.GL_COLOR_ATTACHMENT0,
                GLES30.GL_TEXTURE_2D,
                source.textureId,
                0,
            )
            GLES30.glReadBuffer(GLES30.GL_COLOR_ATTACHMENT0)
            check(
                GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER) ==
                    GLES30.GL_FRAMEBUFFER_COMPLETE
            ) { "Stacked LinearRaw materialization framebuffer is incomplete" }
            GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 8)

            for (top in 0 until source.height step tileEdge) {
                val tileHeight = min(tileEdge, source.height - top)
                for (left in 0 until source.width step tileEdge) {
                    val tileWidth = min(tileEdge, source.width - left)
                    scratch.clear()
                    val transferStartNs = System.nanoTime()
                    GLES30.glReadPixels(
                        left,
                        top,
                        tileWidth,
                        tileHeight,
                        GLES30.GL_RGBA_INTEGER,
                        GLES30.GL_UNSIGNED_SHORT,
                        scratch,
                    )
                    pixelTransferMs += (System.nanoTime() - transferStartNs) / 1_000_000L
                    checkGlError("materialize stacked LinearRaw tile ($left,$top)")

                    val packStartNs = System.nanoTime()
                    check(
                        DirectBufferPixelPacker.unpackRgba16TileToRgb16(
                            source = scratch,
                            sourceWidth = tileWidth,
                            sourceHeight = tileHeight,
                            destination = output,
                            destinationWidth = source.width,
                            destinationHeight = source.height,
                            destinationLeft = left,
                            destinationTop = top,
                        )
                    ) { "Unable to pack stacked LinearRaw tile ($left,$top)" }
                    cpuPackMs += (System.nanoTime() - packStartNs) / 1_000_000L
                    GlesGpuScheduler.yieldToUiRenderer()
                }
            }
            output.rewind()
            completed = true
            val totalMs = (System.nanoTime() - totalStartNs) / 1_000_000L
            val upstreamStackWaitMs = upstreamStackTiming?.totalWaitMs ?: 0L
            val accountedMs = upstreamStackWaitMs + gpuQueueWaitMs + allocationMs +
                pixelTransferMs + cpuPackMs
            PLog.i(
                TAG,
                "Stacked LinearRaw DNG materialization timing total=${totalMs}ms " +
                    "upstreamStackGpuWait=${upstreamStackWaitMs}ms " +
                    "materializationGpuWait=${gpuQueueWaitMs}ms " +
                    "pixelTransfer=${pixelTransferMs}ms " +
                    "cpuPack=${cpuPackMs}ms allocation=${allocationMs}ms " +
                    "setup=${(totalMs - accountedMs).coerceAtLeast(0L)}ms " +
                    "bytes=$outputBytes",
            )
            output
        } catch (error: Exception) {
            PLog.e(TAG, "Failed to materialize stacked LinearRaw GPU source", error)
            null
        } finally {
            GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 1)
            GLES30.glFramebufferTexture2D(
                GLES30.GL_FRAMEBUFFER,
                GLES30.GL_COLOR_ATTACHMENT0,
                GLES30.GL_TEXTURE_2D,
                0,
                0,
            )
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
            GLES30.glDeleteFramebuffers(1, framebufferIds, 0)
            LargeDirectBuffer.free(scratch)
            if (!completed) {
                LargeDirectBuffer.free(output)
            }
        }
    }

    /**
     * Produces normalized RGBA16UI LinearRaw while keeping the MGC merge pipeline GPU-resident.
     * Bayer input is converted to un-white-balanced camera RGB first; merged RGB input stays in
     * the same camera domain. A default-denoise mode crosses the GPU boundary through one mapped PBO
     * while the retained CPU AOT black box runs in place, then immediately returns its RGBA16F
     * result to GPU. BYPASS_DEFAULT_DENOISE never leaves GPU.
     */
    internal suspend fun processMgcSpatialGpuLinearRgb(
        context: Context,
        rawData: ByteBuffer?,
        width: Int,
        height: Int,
        rowStride: Int,
        samplesPerPixel: Int,
        gpuLinearRgbSource: GpuLinearRgbSource?,
        gpuBayerSource: GpuBayerSource?,
        metadata: RawMetadata,
        outputScale: Float,
        sourcePixelsIncludeLensShadingCorrection: Boolean,
        applyLensShadingCorrection: Boolean,
        mode: MgcSpatialGpuDenoiseMode = MgcSpatialGpuDenoiseMode.SPATIAL_DEFAULT,
        lumaStrengthScale: Float = RawDenoiseDefaults.RAW_MAX_LUMA_STRENGTH,
        chromaStrengthScale: Float = RawDenoiseDefaults.RAW_MAX_CHROMA_STRENGTH,
    ): MgcSpatialGpuDenoiseResult? = withContext(glDispatcher) {
        val requestedLumaStrength = DenoiseStrength.clamp(lumaStrengthScale)
        val requestedChromaStrength = DenoiseStrength.clamp(chromaStrengthScale)
        val applyDefaultDenoise = mode != MgcSpatialGpuDenoiseMode.BYPASS_DEFAULT_DENOISE &&
            (requestedLumaStrength > 0f || requestedChromaStrength > 0f)
        val resolvedLumaStrength = if (applyDefaultDenoise) {
            requestedLumaStrength
        } else {
            0f
        }
        val resolvedChromaStrength = if (applyDefaultDenoise) {
            requestedChromaStrength
        } else {
            0f
        }
        val rgbaBytes = width.toLong() * height.toLong() * 4L * Short.SIZE_BYTES
        val rgbBytes = width.toLong() * height.toLong() * 3L * Short.SIZE_BYTES
        val validGeometry = width > 0 && height > 0 &&
            rgbaBytes in 1..Int.MAX_VALUE.toLong() &&
            rgbBytes in 1..Int.MAX_VALUE.toLong()
        val validLayout = samplesPerPixel == 1 || samplesPerPixel in 3..4
        val validSource =
            rawData != null || gpuLinearRgbSource != null || gpuBayerSource != null
        if (!validGeometry || !validLayout || !validSource || rowStride <= 0) {
            PLog.e(
                TAG,
                "MGC Spatial GPU denoise rejected input: size=${width}x$height " +
                    "rowStride=$rowStride samples=$samplesPerPixel source=${when {
                        gpuLinearRgbSource != null -> "GPU"
                        gpuBayerSource != null -> "GPU_BAYER"
                        rawData != null -> "CPU"
                        else -> "none"
                    }}",
            )
            return@withContext null
        }
        if (mode == MgcSpatialGpuDenoiseMode.SABRE_DEFAULT &&
            (samplesPerPixel !in 3..4 || gpuBayerSource != null)
        ) {
            PLog.e(
                TAG,
                "MGC Sabre default denoise requires the Sabre linear-RGB resolve output",
            )
            return@withContext null
        }
        if (gpuLinearRgbSource != null) {
            // The stacker exports either transient RGBA16F for the CPU black-box handoff or
            // persistent RGBA16UI. samplesPerPixel still describes the logical/persisted
            // LinearRaw layout (normally packed RGB16), so the storage alpha channel must not
            // leak into the LinearRaw/DNG contract.
            val validGpuSource = samplesPerPixel in 3..4 &&
                gpuLinearRgbSource.textureId != 0 &&
                gpuLinearRgbSource.width == width &&
                gpuLinearRgbSource.height == height &&
                gpuLinearRgbSource.samplesPerPixel == 4 &&
                exportedStackTextureIds.contains(gpuLinearRgbSource.textureId)
            if (!validGpuSource) {
                PLog.e(
                    TAG,
                    "MGC Spatial default denoise rejected GPU source " +
                        "texture=${gpuLinearRgbSource.textureId} " +
                        "source=${gpuLinearRgbSource.width}x${gpuLinearRgbSource.height}" +
                        "x${gpuLinearRgbSource.samplesPerPixel} " +
                        "expected=${width}x${height}x4 " +
                        "logicalSamples=$samplesPerPixel",
                )
                return@withContext null
            }
        }
        if (gpuBayerSource != null) {
            val validGpuSource = samplesPerPixel == 1 &&
                gpuBayerSource.textureId != 0 &&
                gpuBayerSource.width == width &&
                gpuBayerSource.height == height &&
                exportedStackTextureIds.contains(gpuBayerSource.textureId)
            if (!validGpuSource) {
                PLog.e(
                    TAG,
                    "MGC Spatial GPU denoise rejected GPU Bayer source " +
                        "texture=${gpuBayerSource.textureId} " +
                        "source=${gpuBayerSource.width}x${gpuBayerSource.height} " +
                        "expected=${width}x$height logicalSamples=$samplesPerPixel",
                )
                return@withContext null
            }
        }
        if (!isInitialized && !initializeOnGlThread()) {
            PLog.e(TAG, "Unable to initialize RAW context for MGC $mode denoise")
            return@withContext null
        }
        if (width > maxTextureSize || height > maxTextureSize) {
            PLog.e(
                TAG,
                "MGC $mode denoise input ${width}x$height exceeds " +
                    "GL_MAX_TEXTURE_SIZE=$maxTextureSize",
            )
            return@withContext null
        }
        if (applyDefaultDenoise && !MgcFullResolutionDenoise.ensureInitialized(context)) {
            PLog.e(TAG, "MGC $mode denoise kernels are unavailable")
            return@withContext null
        }

        val hasLensShading = hasValidLensShadingMap(metadata)
        val isBayerInput = samplesPerPixel == 1
        val applyLensShadingToBayer =
            isBayerInput && applyLensShadingCorrection && hasLensShading
        if (!isBayerInput && applyLensShadingCorrection && hasLensShading &&
            !sourcePixelsIncludeLensShadingCorrection
        ) {
            PLog.e(
                TAG,
                "Spatial RGB requested LSC but its pixels do not contain LSC; " +
                    "refusing to invent a second RGB correction path",
            )
            return@withContext null
        }
        val outputIncludesLensShading =
            sourcePixelsIncludeLensShadingCorrection || applyLensShadingToBayer
        val pixelPreparationMetadata = if (applyLensShadingToBayer) {
            metadata
        } else {
            metadata.copy(
                lensShadingMap = null,
                lensShadingMapWidth = 0,
                lensShadingMapHeight = 0,
                lensShadingMapGrid = null,
            )
        }
        val denoiseMetadata = if (outputIncludesLensShading && hasLensShading) {
            metadata
        } else {
            metadata.copy(
                lensShadingMap = null,
                lensShadingMapWidth = 0,
                lensShadingMapHeight = 0,
                lensShadingMapGrid = null,
            )
        }
        val rgbaByteCount = rgbaBytes.toInt()
        var transferBuffer = 0
        var transferBufferMapped = false
        var blackBoxFramebuffer = 0
        var exportedTexture = 0
        var createdExportedTexture = false
        var completed = false
        var borrowedTexture = false
        var workingFloatTexture = 0
        var demosaicNoiseTransfer: DemosaicNoiseTransfer? = null
        val totalStartNs = System.nanoTime()
        try {
            val hasDirectFloatSource =
                gpuLinearRgbSource?.storage == GpuLinearRgbStorage.RGBA16F
            if (!hasDirectFloatSource) {
                setupFullResFramebuffer(width, height)
            }
            val preparationStartNs = System.nanoTime()
            val sourceLabel = when {
                gpuLinearRgbSource != null -> {
                    GLES31.glMemoryBarrier(
                        GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT or
                            GLES31.GL_FRAMEBUFFER_BARRIER_BIT or
                            GLES31.GL_TEXTURE_FETCH_BARRIER_BIT,
                    )
                    // Producer and consumer share this GL context. Command ordering carries the
                    // texture dependency; the PBO map at the CPU black-box boundary is the wait.
                    gpuLinearRgbSource.stackCompletionTimeline?.releasePending()
                    if (gpuLinearRgbSource.storage == GpuLinearRgbStorage.RGBA16F) {
                        workingFloatTexture = gpuLinearRgbSource.textureId
                        "SPATIAL_RGB16F_GPU"
                    } else {
                        if (rawTextureId != 0 &&
                            rawTextureId != gpuLinearRgbSource.textureId
                        ) {
                            GLES30.glDeleteTextures(1, intArrayOf(rawTextureId), 0)
                        }
                        rawTextureId = gpuLinearRgbSource.textureId
                        borrowedTexture = true
                        renderLinearRawRgbToTexture(
                            sourceTextureId = rawTextureId,
                            sourceSamplesPerPixel = gpuLinearRgbSource.samplesPerPixel,
                            targetTextureId = demosaicTextureId,
                            width = width,
                            height = height,
                        )
                        workingFloatTexture = demosaicTextureId
                        "SPATIAL_RGB16UI_GPU"
                    }
                }

                gpuBayerSource != null -> {
                    GLES31.glMemoryBarrier(
                        GLES31.GL_FRAMEBUFFER_BARRIER_BIT or
                            GLES31.GL_TEXTURE_FETCH_BARRIER_BIT,
                    )
                    gpuBayerSource.stackCompletionTimeline?.releasePending()
                    if (rawTextureId != 0 && rawTextureId != gpuBayerSource.textureId) {
                        GLES30.glDeleteTextures(1, intArrayOf(rawTextureId), 0)
                    }
                    rawTextureId = gpuBayerSource.textureId
                    borrowedTexture = true
                    if (RawMetadata.isQuadBayer(metadata.cfaPattern)) {
                        check(ensureQuadBayerPrograms()) {
                            "Unable to initialize Quad Bayer programs for Spatial GPU denoise"
                        }
                        val quadMetadata = if (applyDefaultDenoise) {
                            spatialOutputNoiseMetadata(pixelPreparationMetadata)
                        } else {
                            pixelPreparationMetadata
                        }
                        if (applyDefaultDenoise) {
                            demosaicNoiseTransfer = checkNotNull(
                                demosaicNoisePropagationCalibrator.measure(
                                    quadMetadata,
                                    demosaicCalculationWbGains(quadMetadata),
                                ),
                            ) { "Unable to propagate Spatial noise through Quad Bayer demosaic" }
                        }
                        runQuadBayerDemosaic(
                            metadata = quadMetadata,
                            width = width,
                            height = height,
                            highlightReconstructionEnabled = true,
                        )
                        "SPATIAL_QUAD_BAYER_GPU"
                    } else {
                        check(metadata.cfaPattern in RawMetadata.CFA_RGGB..RawMetadata.CFA_BGGR) {
                            "Unsupported Spatial Bayer CFA=${metadata.cfaPattern}"
                        }
                        check(ensureVgnPrograms()) {
                            "Unable to initialize Standard Bayer VGN programs for Spatial GPU denoise"
                        }
                        val vgnMetadata = if (applyDefaultDenoise) {
                            spatialOutputNoiseMetadata(pixelPreparationMetadata)
                        } else {
                            pixelPreparationMetadata
                        }
                        if (applyDefaultDenoise) {
                            demosaicNoiseTransfer = checkNotNull(
                                demosaicNoisePropagationCalibrator.measure(
                                    vgnMetadata,
                                    demosaicCalculationWbGains(vgnMetadata),
                                ),
                            ) { "Unable to propagate Spatial noise through VGN" }
                        }
                        runStandardBayerVgnDemosaic(
                            metadata = vgnMetadata,
                            width = width,
                            height = height,
                            highlightReconstructionEnabled = true,
                        )
                        if (applyDefaultDenoise) {
                            "SPATIAL_BAYER_VGN_MGC_DENOISE_GPU"
                        } else {
                            "SPATIAL_BAYER_VGN_GPU"
                        }
                    }
                }

                samplesPerPixel in 3..4 -> {
                    uploadLinearRawRgbTextureFromBuffer(
                        buffer = requireNotNull(rawData).duplicate()
                            .order(ByteOrder.nativeOrder()),
                        width = width,
                        height = height,
                        rowStride = rowStride,
                        samplesPerPixel = samplesPerPixel,
                    )
                    renderLinearRawRgbToTexture(
                        sourceTextureId = rawTextureId,
                        sourceSamplesPerPixel = samplesPerPixel,
                        targetTextureId = demosaicTextureId,
                        width = width,
                        height = height,
                    )
                    "SPATIAL_RGB_CPU"
                }

                RawMetadata.isQuadBayer(metadata.cfaPattern) -> {
                    uploadRawTextureFromBuffer(
                        buffer = requireNotNull(rawData).duplicate()
                            .order(ByteOrder.nativeOrder()),
                        width = width,
                        height = height,
                        rowStride = rowStride,
                    )
                    check(ensureQuadBayerPrograms()) {
                        "Unable to initialize Quad Bayer programs for Spatial default denoise"
                    }
                    val quadMetadata = if (applyDefaultDenoise) {
                        spatialOutputNoiseMetadata(pixelPreparationMetadata)
                    } else {
                        pixelPreparationMetadata
                    }
                    if (applyDefaultDenoise) {
                        demosaicNoiseTransfer = checkNotNull(
                            demosaicNoisePropagationCalibrator.measure(
                                quadMetadata,
                                demosaicCalculationWbGains(quadMetadata),
                            ),
                        ) { "Unable to propagate Spatial noise through Quad Bayer demosaic" }
                    }
                    runQuadBayerDemosaic(
                        metadata = quadMetadata,
                        width = width,
                        height = height,
                        highlightReconstructionEnabled = true,
                    )
                    "SPATIAL_QUAD_BAYER"
                }

                else -> {
                    check(metadata.cfaPattern in RawMetadata.CFA_RGGB..RawMetadata.CFA_BGGR) {
                        "Unsupported Spatial Bayer CFA=${metadata.cfaPattern}"
                    }
                    uploadRawTextureFromBuffer(
                        buffer = requireNotNull(rawData).duplicate()
                            .order(ByteOrder.nativeOrder()),
                        width = width,
                        height = height,
                        rowStride = rowStride,
                    )
                    check(ensureVgnPrograms()) {
                        "Unable to initialize Standard Bayer VGN programs for Spatial GPU denoise"
                    }
                    val vgnMetadata = if (applyDefaultDenoise) {
                        spatialOutputNoiseMetadata(pixelPreparationMetadata)
                    } else {
                        pixelPreparationMetadata
                    }
                    if (applyDefaultDenoise) {
                        demosaicNoiseTransfer = checkNotNull(
                            demosaicNoisePropagationCalibrator.measure(
                                vgnMetadata,
                                demosaicCalculationWbGains(vgnMetadata),
                            ),
                        ) { "Unable to propagate Spatial noise through VGN" }
                    }
                    runStandardBayerVgnDemosaic(
                        metadata = vgnMetadata,
                        width = width,
                        height = height,
                        highlightReconstructionEnabled = true,
                    )
                    if (applyDefaultDenoise) {
                        "SPATIAL_BAYER_VGN_MGC_DENOISE"
                    } else {
                        "SPATIAL_BAYER_VGN"
                    }
                }
            }
            if (workingFloatTexture == 0) {
                workingFloatTexture = demosaicTextureId
            }
            val preparationMs = (System.nanoTime() - preparationStartNs) / 1_000_000L
            var blackBoxReadSubmitMs = 0L
            var blackBoxParameterMs = 0L
            var blackBoxMapWaitMs = 0L
            var blackBoxUploadSubmitMs = 0L
            var nativeMs = 0L
            if (applyDefaultDenoise) {
                val bufferIds = IntArray(1)
                GLES30.glGenBuffers(1, bufferIds, 0)
                transferBuffer = bufferIds[0]
                check(transferBuffer != 0) {
                    "Unable to allocate MGC Spatial black-box transfer buffer"
                }
                val transferFramebuffer = if (workingFloatTexture == demosaicTextureId) {
                    demosaicFramebufferId
                } else {
                    val framebufferIds = IntArray(1)
                    GLES30.glGenFramebuffers(1, framebufferIds, 0)
                    blackBoxFramebuffer = framebufferIds[0]
                    GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, blackBoxFramebuffer)
                    GLES30.glFramebufferTexture2D(
                        GLES30.GL_FRAMEBUFFER,
                        GLES30.GL_COLOR_ATTACHMENT0,
                        GLES30.GL_TEXTURE_2D,
                        workingFloatTexture,
                        0,
                    )
                    blackBoxFramebuffer
                }
                GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, transferFramebuffer)
                check(
                    GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER) ==
                        GLES30.GL_FRAMEBUFFER_COMPLETE
                ) { "MGC Spatial black-box framebuffer is incomplete" }
                GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, transferBuffer)
                GLES30.glBufferData(
                    GLES30.GL_PIXEL_PACK_BUFFER,
                    rgbaByteCount,
                    null,
                    GLES30.GL_STREAM_COPY,
                )
                GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 8)
                val transferStartNs = System.nanoTime()
                GLES30.glReadPixels(
                    0,
                    0,
                    width,
                    height,
                    GLES30.GL_RGBA,
                    GLES30.GL_HALF_FLOAT,
                    0,
                )
                checkGlError("MGC Spatial black-box PBO readback")
                blackBoxReadSubmitMs =
                    (System.nanoTime() - transferStartNs) / 1_000_000L

                // Do all CPU-only setup after queuing the readback and before mapping. This lets
                // parameter preparation overlap the GPU transfer without creating another wait.
                val parameterStartNs = System.nanoTime()
                val defaultDenoiseMetadata = when (mode) {
                    MgcSpatialGpuDenoiseMode.SPATIAL_DEFAULT ->
                        spatialOutputNoiseMetadata(denoiseMetadata)
                    MgcSpatialGpuDenoiseMode.SABRE_DEFAULT ->
                        sabreOutputNoiseMetadata(denoiseMetadata)
                    MgcSpatialGpuDenoiseMode.BYPASS_DEFAULT_DENOISE ->
                        error("Bypass mode entered the MGC default-denoise boundary")
                }
                val defaultDenoisePass = when (mode) {
                    MgcSpatialGpuDenoiseMode.SPATIAL_DEFAULT ->
                        MgcFullResolutionDenoise.Pass.SPATIAL_DEFAULT
                    MgcSpatialGpuDenoiseMode.SABRE_DEFAULT ->
                        MgcFullResolutionDenoise.Pass.SABRE_DEFAULT
                    MgcSpatialGpuDenoiseMode.BYPASS_DEFAULT_DENOISE ->
                        error("Bypass mode has no MGC full-resolution pass")
                }
                val tuningSnr = checkNotNull(metadata.mgcDenoiseTuningSnr?.takeIf {
                    it.isFinite() && it >= 0f
                }) {
                    "MGC $mode default denoise is missing output-frame SNR"
                }
                blackBoxParameterMs =
                    (System.nanoTime() - parameterStartNs) / 1_000_000L

                val mapStartNs = System.nanoTime()
                val mapped = GLES30.glMapBufferRange(
                    GLES30.GL_PIXEL_PACK_BUFFER,
                    0,
                    rgbaByteCount,
                    GLES30.GL_MAP_READ_BIT or GLES30.GL_MAP_WRITE_BIT,
                ) as? ByteBuffer ?: error("Unable to map MGC Spatial black-box PBO")
                transferBufferMapped = true
                mapped.order(ByteOrder.nativeOrder()).apply {
                    position(0)
                    limit(rgbaByteCount)
                }
                blackBoxMapWaitMs =
                    (System.nanoTime() - mapStartNs) / 1_000_000L
                GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, 0)
                val nativeStartNs = System.nanoTime()
                check(
                    MgcFullResolutionDenoise.denoise(
                        rgba16f = mapped,
                        width = width,
                        height = height,
                        globalOriginX = 0,
                        globalOriginY = 0,
                        fullWidth = width,
                        fullHeight = height,
                        outputScale = outputScale,
                        metadata = defaultDenoiseMetadata,
                        preparedYuvNoiseModel = demosaicNoiseTransfer.takeIf {
                            mode == MgcSpatialGpuDenoiseMode.SPATIAL_DEFAULT
                        },
                        applyLensShadingToDenoiseStrength =
                            mode == MgcSpatialGpuDenoiseMode.SABRE_DEFAULT,
                        tuningSnr = tuningSnr,
                        pass = defaultDenoisePass,
                        lumaStrengthScale = resolvedLumaStrength,
                        chromaStrengthScale = resolvedChromaStrength,
                    )
                ) { "MGC $mode luma/chroma denoise failed" }
                nativeMs = (System.nanoTime() - nativeStartNs) / 1_000_000L

                GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, transferBuffer)
                check(GLES30.glUnmapBuffer(GLES30.GL_PIXEL_PACK_BUFFER)) {
                    "MGC Spatial black-box transfer contents became invalid"
                }
                transferBufferMapped = false
                GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, 0)

                val returnStartNs = System.nanoTime()
                GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
                check(
                    GlesPixelBufferTransfer.uploadRgba16fPboToTexture(
                        pixelBufferObject = transferBuffer,
                        textureId = workingFloatTexture,
                        width = width,
                        height = height,
                    )
                ) { "Unable to return MGC black-box output to GPU" }
                GLES31.glMemoryBarrier(
                    GLES31.GL_TEXTURE_UPDATE_BARRIER_BIT or
                        GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT,
                )
                checkGlError("MGC Spatial black-box PBO return")
                blackBoxUploadSubmitMs =
                    (System.nanoTime() - returnStartNs) / 1_000_000L
                // Deleting a referenced GL buffer is deferred by the driver until the queued
                // texture upload completes, while releasing application ownership immediately.
                GLES30.glDeleteBuffers(1, intArrayOf(transferBuffer), 0)
                transferBuffer = 0
            } else {
                PLog.i(
                    TAG,
                    "MGC GPU handoff: default luma/chroma denoise bypassed",
                )
            }

            val gpuReturnStartNs = System.nanoTime()
            exportedTexture = gpuLinearRgbSource
                ?.takeIf { it.storage == GpuLinearRgbStorage.RGBA16UI }
                ?.textureId
                ?: createNormalizedLinearRawTexture(width, height).also {
                    createdExportedTexture = true
                }
            renderLinearRawFloatToUint(
                sourceTextureId = workingFloatTexture,
                targetTextureId = exportedTexture,
                width = width,
                height = height,
            )
            exportedStackTextureIds += exportedTexture
            val gpuReturnSubmitMs =
                (System.nanoTime() - gpuReturnStartNs) / 1_000_000L
            completed = true
            PLog.i(
                TAG,
                "MGC Spatial GPU LinearRaw ready: source=$sourceLabel " +
                    "size=${width}x$height outputScale=$outputScale " +
                    "pass=${if (applyDefaultDenoise) {
                        mode.name
                    } else {
                        MgcSpatialGpuDenoiseMode.BYPASS_DEFAULT_DENOISE.name
                    }} " +
                    "luma=$resolvedLumaStrength " +
                    "chroma=$resolvedChromaStrength " +
                    "frames=${metadata.frameCount} " +
                    "readNoise=${metadata.mgcDenoiseReadNoise?.contentToString()} " +
                    "shotNoise=${metadata.mgcDenoiseShotNoise?.contentToString()} " +
                    "sabreNoiseModelScale=${metadata.mgcSabreNoiseModelScale} " +
                    "strengthMap=${metadata.mgcSpatialStrengthMap?.let {
                        "${it.width}x${it.height}"
                    } ?: "none"} " +
                    "lscIn=$sourcePixelsIncludeLensShadingCorrection " +
                    "lscAppliedToBayer=$applyLensShadingToBayer " +
                    "lscOut=$outputIncludesLensShading " +
                    "demosaicNoiseTransfer=${demosaicNoiseTransfer?.let {
                        "yuvRead=${it.normalizedRead.contentToString()}," +
                            "lumaShot=${it.normalizedLumaShot}," +
                            "chromaShot=${it.normalizedChromaShot}"
                    } ?: if (applyDefaultDenoise) {
                        "analytic-rgb-to-yuv-chroma-envelope"
                    } else {
                        "not-applied"
                    }} " +
                    "prepareSubmitMs=$preparationMs " +
                    "blackBoxReadSubmitMs=$blackBoxReadSubmitMs " +
                    "blackBoxParameterMs=$blackBoxParameterMs " +
                    "blackBoxMapWaitMs=$blackBoxMapWaitMs " +
                    "blackBoxUploadSubmitMs=$blackBoxUploadSubmitMs " +
                    "nativeMs=$nativeMs gpuReturnSubmitMs=$gpuReturnSubmitMs " +
                    "cpuPackMs=0 textureReuse=${!createdExportedTexture} " +
                    "result=RGBA16UI_GPU " +
                    "totalMs=${(System.nanoTime() - totalStartNs) / 1_000_000L}",
            )
            MgcSpatialGpuDenoiseResult(
                gpuLinearRgbSource = GpuLinearRgbSource(
                    textureId = exportedTexture,
                    width = width,
                    height = height,
                    samplesPerPixel = 4,
                    stackCompletionTimeline = null,
                    storage = GpuLinearRgbStorage.RGBA16UI,
                ),
                pixelsIncludeLensShadingCorrection = outputIncludesLensShading,
            )
        } catch (error: Exception) {
            PLog.e(TAG, "Failed to process MGC Spatial GPU output", error)
            null
        } finally {
            GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 1)
            GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 1)
            if (transferBufferMapped) {
                GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, transferBuffer)
                GLES30.glUnmapBuffer(GLES30.GL_PIXEL_PACK_BUFFER)
                transferBufferMapped = false
            }
            GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, 0)
            GLES30.glBindBuffer(GLES30.GL_PIXEL_UNPACK_BUFFER, 0)
            if (transferBuffer != 0) {
                GLES30.glDeleteBuffers(1, intArrayOf(transferBuffer), 0)
            }
            if (blackBoxFramebuffer != 0) {
                GLES30.glDeleteFramebuffers(1, intArrayOf(blackBoxFramebuffer), 0)
            }
            if (demosaicFramebufferId != 0 && demosaicTextureId != 0) {
                GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, demosaicFramebufferId)
                GLES30.glFramebufferTexture2D(
                    GLES30.GL_FRAMEBUFFER,
                    GLES30.GL_COLOR_ATTACHMENT0,
                    GLES30.GL_TEXTURE_2D,
                    demosaicTextureId,
                    0,
                )
            }
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
            if (borrowedTexture) {
                rawTextureId = 0
            }
            if (!completed && createdExportedTexture && exportedTexture != 0) {
                exportedStackTextureIds.remove(exportedTexture)
                GLES30.glDeleteTextures(1, intArrayOf(exportedTexture), 0)
            }
        }
    }

    // EGL 资源
    private var eglDisplay: EGLDisplay = EGL14.EGL_NO_DISPLAY
    private var eglContext: EGLContext = EGL14.EGL_NO_CONTEXT
    private var eglSurface: EGLSurface = EGL14.EGL_NO_SURFACE

    // Fullscreen passes own their shader programs and lifecycle.
    private val fullscreenQuad = RawFullscreenQuad()
    private val chromaDenoiseAlgorithm = ChromaDenoiseAlgorithm(fullscreenQuad)
    private val denoiseProfileAlgorithm = DenoiseProfileAlgorithm()
    private val profileGainTableAlgorithm = DngPhotonProfileGainTableAlgorithm()
    private val filmicHighlightReconstructionAlgorithm =
        DarktableFilmicHighlightReconstructionAlgorithm(fullscreenQuad)
    private val dcpTextureResources = DcpTextureResources()
    private val curveTextureResources = RawCurveTextureResources()
    private val engineTonePass = RawEngineTonePass(
        fullscreenQuad,
        dcpTextureResources,
        curveTextureResources,
    )
    private val hncsOutputLinearPass = HncsOutputLinearPass(fullscreenQuad)
    private val adjustmentPass = RawAdjustmentPass(fullscreenQuad)
    private val srgbPass = RawSrgbPass(fullscreenQuad)
    private val sharpenPass = RawSharpenPass(fullscreenQuad)
    private val outputPass = RawOutputPass(fullscreenQuad)
    private val linearUintToFloatPass = RawLinearUintToFloatPass()
    private val linearRgbExpandPass = RawLinearRgbExpandPass()
    private val linearFloatToUintPass = RawLinearFloatToUintPass()
    private val warpRectilinearPass = RawWarpRectilinearPass(fullscreenQuad)
    private val linearRcdPass = RawLinearRcdPass(fullscreenQuad)
    private val photonDehazePipeline = PhotonDehazePipeline(fullscreenQuad)
    private val hdrReferencePass = RawHdrReferencePass(fullscreenQuad)
    private val meteringDemosaicAlgorithm = RawMeteringDemosaicAlgorithm()
    private val quadBayerDemosaicAlgorithm = QuadBayerDemosaicAlgorithm()
    private val vgnDemosaicAlgorithm = VgnDemosaicAlgorithm()
    private val demosaicNoisePropagationCalibrator = DemosaicNoisePropagationCalibrator(
        initializePipeline = { cfaPattern ->
            if (RawMetadata.isQuadBayer(cfaPattern)) {
                ensureQuadBayerPrograms()
            } else {
                ensureVgnPrograms()
            }
        },
        renderDemosaic = { request ->
            if (RawMetadata.isQuadBayer(request.metadata.cfaPattern)) {
                runQuadBayerDemosaic(
                    metadata = request.metadata,
                    width = request.width,
                    height = request.height,
                    highlightReconstructionEnabled = false,
                    rawInputTextureId = request.rawTextureId,
                    outputTargetTextureId = request.outputTextureId,
                )
            } else {
                runStandardBayerVgnDemosaic(
                    metadata = request.metadata,
                    width = request.width,
                    height = request.height,
                    highlightReconstructionEnabled = false,
                    rawInputTextureId = request.rawTextureId,
                    linearOutputTargetTextureId = request.linearOutputTextureId,
                    outputTargetTextureId = request.outputTextureId,
                )
            }
        },
    )

    private var rawTextureId = 0
    private var rawTileTextureWidth = 0
    private var rawTileTextureHeight = 0
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

    private var linearExposurePreviewFramebufferId = 0
    private var linearExposurePreviewTextureId = 0
    private var linearExposurePreviewWidth = 0
    private var linearExposurePreviewHeight = 0

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

    // denoiseprofile 中间纹理: ping-pong (RGBA16F)
    private var gfTexId = intArrayOf(0, 0)
    private var gfFboId = intArrayOf(0, 0)
    private var gfWidth = 0
    private var gfHeight = 0


    suspend fun prewarmDepthEstimator(context: Context) = withContext(Dispatchers.Default) {
        val start = System.currentTimeMillis()
        SharedDepthEstimator.prewarm(context.applicationContext)
        PLog.d(TAG, "RAW DepthEstimator prewarmed, took=${System.currentTimeMillis() - start}ms")
    }

    private var pboId = 0

    private var lensShadingTextureId = 0
    private var dummyShadingTextureId = 0

    data class SceneStats(
        val exposureGain: Float,
        val curveLut: FloatArray? = null
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

    private data class RawTileRenderConfig(
        val context: Context,
        val rowStride: Int,
        val fullWidth: Int,
        val fullHeight: Int,
        val samplesPerPixel: Int,
        val metadata: RawMetadata,
        val tiles: List<RawRenderTile>,
        val outputSourceBounds: Rect,
        val rotation: Int,
        val includeHdrReference: Boolean,
        val rawExposureCompensation: Float,
        val chromaDenoiseValue: Float?,
        val denoiseValue: Float?,
        val sharpeningValue: Float,
        val linearColorCorrectionMatrix: FloatArray,
        val linearCameraWhite: FloatArray,
        val hueSatMap: DcpHueSatMap?,
        val profileToLinearSrgbTransform: FloatArray,
        val applyLinearDngBaselineExposure: Boolean,
        val hasProfileGainTableMap: Boolean,
        val applyDcpBaselineExposureOffset: Boolean,
        val clampProfileRgb: Boolean,
        val supportProfileOverrange: Boolean,
        val hueSatMapSupportsOverrange: Boolean,
        val hncsCameraDomainGains: FloatArray?,
        val colorEngine: RawRenderingEngine,
        val activeDcpRenderPlan: DcpRenderPlan?,
        val profileExposureUniforms: ProfileExposureUniforms,
        val spectralFilmLut: SpectralFilmLut?,
        val hncsRenderPlan: HncsRenderPlan?,
        val engineWorkingColorSpace: ColorSpace,
        val profileToEngineTransform: FloatArray,
        val shadowsHighlightsParams: ShadowsHighlightsParams,
        val rawBlackPointCorrection: Float,
        val rawWhitePointCorrection: Float,
        val rawToneMappingParameters: RawToneMappingParameters,
    )

    private data class RawTileBitmapResult(
        val sdrBitmap: Bitmap,
        val hdrReferenceBitmap: Bitmap?,
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

    private fun applyWhiteLevelOverride(
        metadata: RawMetadata,
        mode: String?,
        customWhiteLevel: Float?
    ): RawMetadata {
        val resolvedWhiteLevel = RawWhiteLevelCorrection.resolveWhiteLevel(
            defaultWhiteLevel = metadata.whiteLevel,
            mode = mode,
            customWhiteLevel = customWhiteLevel
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
        rawCustomWhiteLevel: Float?,
        rawCfaCorrectionMode: String?
    ): RawMetadata {
        return applyCfaCorrectionOverride(
            metadata = applyWhiteLevelOverride(
                metadata = applyBlackLevelOverride(metadata, rawBlackLevelMode, rawCustomBlackLevel),
                mode = rawWhiteLevelMode,
                customWhiteLevel = rawCustomWhiteLevel
            ),
            mode = rawCfaCorrectionMode
        )
    }

    private fun demosaicCalculationWbGains(metadata: RawMetadata): FloatArray {
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
            1f,
            1f,
            normalized(safeGain(3, greenBase))
        )
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
        rawHighlightsAdjustment: Float = 0f,
        rawShadowsAdjustment: Float = 0f,
        rawBlackPointCorrection: Float = 0f,
        rawWhitePointCorrection: Float = 0f,
        rawAutoWhiteBalanceEstimate: Boolean = false,
        applyLensShadingCorrection: Boolean = true,
        rawBlackLevelMode: String? = null,
        rawCustomBlackLevel: Float? = null,
        rawWhiteLevelMode: String? = null,
        rawCustomWhiteLevel: Float? = null,
        sharpeningValue: Float = 0f,
        processLocalCoreImagingTuning: PhotonCoreImagingTuning = PhotonCoreImagingTuning.DEFAULT,
        denoiseValue: Float? = null,
        chromaDenoiseValue: Float? = null,
        rawDcpId: String? = null,
        rawNoiseProfileId: String = RawNoiseProfileManager.DEFAULT_PROFILE_ID,
        rawHncsProfileId: String? = null,
        rawHncsRenderIntent: HncsRenderIntent = HncsRenderIntent.Standard,
        rawHncsFilmCurveMode: HncsFilmCurveMode = HncsFilmCurveMode.Standard,
        dcpRenderPlan: DcpRenderPlan? = null,
        spectralFilmStock: String? = null,
        spectralFilmPrint: String? = null,
        spectralFilmTuning: SpectralFilmTuning = SpectralFilmTuning.DEFAULT,
        rawRenderingEngine: RawRenderingEngine = RawRenderingEngine.AdobeCurve,
        rawToneMappingParameters: RawToneMappingParameters = RawToneMappingParameters.DEFAULT,
        rawCfaCorrectionMode: String? = null,
        rawBlackBorderCrop: RawBlackBorderCrop = RawBlackBorderCrop(),
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
                rawHighlightsAdjustment = rawHighlightsAdjustment,
                rawShadowsAdjustment = rawShadowsAdjustment,
                rawBlackPointCorrection = rawBlackPointCorrection,
                rawWhitePointCorrection = rawWhitePointCorrection,
                rawAutoWhiteBalanceEstimate = rawAutoWhiteBalanceEstimate,
                applyLensShadingCorrection = applyLensShadingCorrection,
                rawBlackLevelMode = rawBlackLevelMode,
                rawCustomBlackLevel = rawCustomBlackLevel,
                rawWhiteLevelMode = rawWhiteLevelMode,
                rawCustomWhiteLevel = rawCustomWhiteLevel,
                sharpeningValue = sharpeningValue,
                processLocalCoreImagingTuning = processLocalCoreImagingTuning,
                denoiseValue = denoiseValue,
                chromaDenoiseValue = chromaDenoiseValue,
                rawDcpId = rawDcpId,
                rawNoiseProfileId = rawNoiseProfileId,
                rawHncsProfileId = rawHncsProfileId,
                rawHncsRenderIntent = rawHncsRenderIntent,
                rawHncsFilmCurveMode = rawHncsFilmCurveMode,
                dcpRenderPlan = dcpRenderPlan,
                spectralFilmStock = spectralFilmStock,
                spectralFilmPrint = spectralFilmPrint,
                spectralFilmTuning = spectralFilmTuning,
                rawRenderingEngine = rawRenderingEngine,
                rawToneMappingParameters = rawToneMappingParameters,
                rawCfaCorrectionMode = rawCfaCorrectionMode,
                rawBlackBorderCrop = rawBlackBorderCrop,
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
        rawExposureCompensation: Float = 0f,
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
        rawNoiseProfileId: String = RawNoiseProfileManager.DEFAULT_PROFILE_ID,
        rawHncsProfileId: String? = null,
        rawHncsRenderIntent: HncsRenderIntent = HncsRenderIntent.Standard,
        rawHncsFilmCurveMode: HncsFilmCurveMode = HncsFilmCurveMode.Standard,
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
                rawNoiseProfileId = rawNoiseProfileId,
                rawHncsProfileId = rawHncsProfileId,
                rawHncsRenderIntent = rawHncsRenderIntent,
                rawHncsFilmCurveMode = rawHncsFilmCurveMode,
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

    /** Solves the optional scene exposure from the exact capture RAW in the capture GL context. */
    internal suspend fun prepareCaptureProfile(
        context: Context,
        input: RawDngCaptureProfileInput,
        aspectRatio: AspectRatio?,
        cropRegion: Rect?,
        rotation: Int,
        request: RawSceneExposureRequest?,
        generatePhotonPgtm: Boolean,
        statsBounds: Rect?,
        rawBlackPointCorrection: Float = 0f,
        rawWhitePointCorrection: Float = 0f,
        rawAutoWhiteBalanceEstimate: Boolean = false,
        applyLensShadingCorrection: Boolean = true,
        rawBlackBorderCrop: RawBlackBorderCrop = RawBlackBorderCrop(),
        rawNoiseProfileId: String = RawNoiseProfileManager.DEFAULT_PROFILE_ID,
    ): RawDngCaptureProfileResult? = withContext(glDispatcher) {
        var preparedResult: RawDngCaptureProfileResult? = null
        try {
            processInternal(
                context = context,
                rawData = input.rawData,
                width = input.width,
                height = input.height,
                rowStride = input.rowStride,
                samplesPerPixel = input.samplesPerPixel,
                gpuLinearRgbSource = input.gpuLinearRgbSource,
                metadata = input.metadata.copy(profileGainTableMap = null),
                aspectRatio = aspectRatio,
                cropRegion = cropRegion,
                rotation = rotation,
                rawExposureCompensation = 0f,
                rawHighlightsAdjustment = 0f,
                rawShadowsAdjustment = 0f,
                rawBlackPointCorrection = rawBlackPointCorrection,
                rawWhitePointCorrection = rawWhitePointCorrection,
                rawAutoWhiteBalanceEstimate = rawAutoWhiteBalanceEstimate,
                applyLensShadingCorrection = applyLensShadingCorrection,
                rawDcpId = null,
                rawNoiseProfileId = rawNoiseProfileId,
                dcpRenderPlan = input.meteringRenderPlan,
                spectralFilmStock = null,
                spectralFilmPrint = null,
                rawRenderingEngine = RawRenderingEngine.AdobeCurve,
                rawToneMappingParameters = RawToneMappingParameters.DEFAULT.withProfileToneMapMode(
                    RawProfileToneMapMode.Default
                ).withPhotonHdr(false),
                rawBlackBorderCrop = rawBlackBorderCrop,
                sceneExposureRequest = request,
                captureProfilePreparationRequested = true,
                capturePhotonPgtmRequested = generatePhotonPgtm,
                captureProfileStatsBounds = statsBounds,
                onCaptureProfilePrepared = { preparedResult = it },
            )
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to prepare RAW capture profile", e)
        }
        preparedResult
    }

    suspend fun processForHdrSources(
        context: Context,
        dngFilePath: String,
        aspectRatio: AspectRatio?,
        cropRegion: Rect?,
        rotation: Int,
        exposureBias: Float = 0f,
        rawExposureCompensation: Float = 0f,
        rawHighlightsAdjustment: Float = 0f,
        rawShadowsAdjustment: Float = 0f,
        rawBlackPointCorrection: Float = 0f,
        rawWhitePointCorrection: Float = 0f,
        rawAutoWhiteBalanceEstimate: Boolean = false,
        applyLensShadingCorrection: Boolean = true,
        rawBlackLevelMode: String? = null,
        rawCustomBlackLevel: Float? = null,
        rawWhiteLevelMode: String? = null,
        rawCustomWhiteLevel: Float? = null,
        sharpeningValue: Float = 0f,
        processLocalMgcSharpenTuningSnr: Float? = null,
        processLocalMgcSharpenAttenuationScale: Float? = null,
        processLocalCoreImagingTuning: PhotonCoreImagingTuning = PhotonCoreImagingTuning.DEFAULT,
        denoiseValue: Float? = null,
        chromaDenoiseValue: Float? = null,
        rawDcpId: String? = null,
        rawNoiseProfileId: String = RawNoiseProfileManager.DEFAULT_PROFILE_ID,
        rawHncsProfileId: String? = null,
        rawHncsRenderIntent: HncsRenderIntent = HncsRenderIntent.Standard,
        rawHncsFilmCurveMode: HncsFilmCurveMode = HncsFilmCurveMode.Standard,
        dcpRenderPlan: DcpRenderPlan? = null,
        spectralFilmStock: String? = null,
        spectralFilmPrint: String? = null,
        spectralFilmTuning: SpectralFilmTuning = SpectralFilmTuning.DEFAULT,
        rawRenderingEngine: RawRenderingEngine = RawRenderingEngine.AdobeCurve,
        rawToneMappingParameters: RawToneMappingParameters = RawToneMappingParameters.DEFAULT,
        rawCfaCorrectionMode: String? = null,
        rawBlackBorderCrop: RawBlackBorderCrop = RawBlackBorderCrop(),
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
                rawHighlightsAdjustment = rawHighlightsAdjustment,
                rawShadowsAdjustment = rawShadowsAdjustment,
                rawBlackPointCorrection = rawBlackPointCorrection,
                rawWhitePointCorrection = rawWhitePointCorrection,
                rawAutoWhiteBalanceEstimate = rawAutoWhiteBalanceEstimate,
                applyLensShadingCorrection = applyLensShadingCorrection,
                rawBlackLevelMode = rawBlackLevelMode,
                rawCustomBlackLevel = rawCustomBlackLevel,
                rawWhiteLevelMode = rawWhiteLevelMode,
                rawCustomWhiteLevel = rawCustomWhiteLevel,
                sharpeningValue = sharpeningValue,
                processLocalMgcSharpenTuningSnr = processLocalMgcSharpenTuningSnr,
                processLocalMgcSharpenAttenuationScale =
                    processLocalMgcSharpenAttenuationScale,
                processLocalCoreImagingTuning = processLocalCoreImagingTuning,
                denoiseValue = denoiseValue,
                chromaDenoiseValue = chromaDenoiseValue,
                rawDcpId = rawDcpId,
                rawNoiseProfileId = rawNoiseProfileId,
                rawHncsProfileId = rawHncsProfileId,
                rawHncsRenderIntent = rawHncsRenderIntent,
                rawHncsFilmCurveMode = rawHncsFilmCurveMode,
                dcpRenderPlan = dcpRenderPlan,
                spectralFilmStock = spectralFilmStock,
                spectralFilmPrint = spectralFilmPrint,
                spectralFilmTuning = spectralFilmTuning,
                rawRenderingEngine = rawRenderingEngine,
                rawToneMappingParameters = rawToneMappingParameters,
                rawCfaCorrectionMode = rawCfaCorrectionMode,
                rawBlackBorderCrop = rawBlackBorderCrop,
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
     * Renders the original CFA or LinearRaw buffer with the same prepared metadata/profile passed
     * to the DNG writer. This keeps the established DNG rendering contract while avoiding TIFF
     * decompression and the native pixel-buffer copy performed by [processDngNative].
     */
    suspend fun processDngBufferForHdrSources(
        context: Context,
        rawData: ByteBuffer?,
        width: Int,
        height: Int,
        rowStride: Int,
        samplesPerPixel: Int,
        gpuLinearRgbSource: GpuLinearRgbSource? = null,
        metadata: RawMetadata,
        aspectRatio: AspectRatio?,
        cropRegion: Rect?,
        rotation: Int,
        exposureBias: Float = 0f,
        rawExposureCompensation: Float = 0f,
        rawHighlightsAdjustment: Float = 0f,
        rawShadowsAdjustment: Float = 0f,
        rawBlackPointCorrection: Float = 0f,
        rawWhitePointCorrection: Float = 0f,
        rawAutoWhiteBalanceEstimate: Boolean = false,
        applyLensShadingCorrection: Boolean = true,
        rawBlackLevelMode: String? = null,
        rawCustomBlackLevel: Float? = null,
        rawWhiteLevelMode: String? = null,
        rawCustomWhiteLevel: Float? = null,
        sharpeningValue: Float = 0f,
        denoiseValue: Float? = null,
        chromaDenoiseValue: Float? = null,
        rawDcpId: String? = null,
        rawNoiseProfileId: String = RawNoiseProfileManager.DEFAULT_PROFILE_ID,
        rawHncsProfileId: String? = null,
        rawHncsRenderIntent: HncsRenderIntent = HncsRenderIntent.Standard,
        rawHncsFilmCurveMode: HncsFilmCurveMode = HncsFilmCurveMode.Standard,
        dcpRenderPlan: DcpRenderPlan? = null,
        embeddedDngRenderPlan: DcpRenderPlan,
        spectralFilmStock: String? = null,
        spectralFilmPrint: String? = null,
        spectralFilmTuning: SpectralFilmTuning = SpectralFilmTuning.DEFAULT,
        rawRenderingEngine: RawRenderingEngine = RawRenderingEngine.AdobeCurve,
        rawToneMappingParameters: RawToneMappingParameters = RawToneMappingParameters.DEFAULT,
        rawCfaCorrectionMode: String? = null,
        rawBlackBorderCrop: RawBlackBorderCrop = RawBlackBorderCrop(),
        onMetadata: ((RawMetadata) -> Unit)? = null,
    ): RawHdrRenderResult? = withContext(glDispatcher) {
        if ((rawData == null && gpuLinearRgbSource == null) ||
            samplesPerPixel !in setOf(1, 3, 4) || width <= 0 || height <= 0 || rowStride <= 0
        ) {
            PLog.e(
                TAG,
                "Invalid in-memory DNG source: ${width}x$height " +
                    "samplesPerPixel=$samplesPerPixel rowStride=$rowStride"
            )
            return@withContext null
        }
        val renderMetadata = applyDngMetadataOverrides(
            metadata = metadata,
            rawBlackLevelMode = rawBlackLevelMode,
            rawCustomBlackLevel = rawCustomBlackLevel,
            rawWhiteLevelMode = rawWhiteLevelMode,
            rawCustomWhiteLevel = rawCustomWhiteLevel,
            rawCfaCorrectionMode = rawCfaCorrectionMode,
        ).copy(
            colorCorrectionMatrix = embeddedDngRenderPlan.colorCorrectionMatrix.copyOf(),
            cameraWhite = embeddedDngRenderPlan.cameraWhite.copyOf(),
            exposureBias = exposureBias,
        )
        onMetadata?.invoke(renderMetadata)
        PLog.i(
            TAG,
            "RAW_DNG_BUFFER_BYPASS source=" +
                "${when {
                    gpuLinearRgbSource != null -> "GPU_STACK_TEXTURE"
                    samplesPerPixel == 1 -> "CPU_CFA16_BUFFER"
                    else -> "CPU_RGB16_BUFFER"
                }} " +
                "metadata=SHARED_DNG_PARAMS " +
                "size=${width}x$height samplesPerPixel=$samplesPerPixel rowStride=$rowStride " +
                "baselineExposure=${renderMetadata.baselineExposure} " +
                "defaultCrop=${renderMetadata.defaultCrop} " +
                "black=${renderMetadata.blackLevel.contentToString()} white=${renderMetadata.whiteLevel} " +
                "wb=${renderMetadata.whiteBalanceGains.contentToString()} " +
                "cameraWhite=${renderMetadata.cameraWhite.contentToString()} " +
                "ccm=${renderMetadata.colorCorrectionMatrix.contentToString()} " +
                "noise=${renderMetadata.channelNoiseProfile.contentToString()} " +
                "pgtm=${renderMetadata.profileGainTableMap?.let {
                    "${it.mapPointsH}x${it.mapPointsV}x${it.mapPointsN}:tag=${it.sourceTag}"
                } ?: "none"} profile=${embeddedDngRenderPlan.profileName} " +
                "rawAwbIgnoredForEmbeddedDng=$rawAutoWhiteBalanceEstimate"
        )

        try {
            processInternal(
                context = context,
                rawData = rawData?.duplicate()?.order(ByteOrder.nativeOrder()),
                width = width,
                height = height,
                rowStride = rowStride,
                samplesPerPixel = samplesPerPixel,
                gpuLinearRgbSource = gpuLinearRgbSource,
                metadata = renderMetadata,
                aspectRatio = aspectRatio,
                cropRegion = cropRegion,
                rotation = rotation,
                exposureBias = exposureBias,
                rawExposureCompensation = rawExposureCompensation,
                rawHighlightsAdjustment = rawHighlightsAdjustment,
                rawShadowsAdjustment = rawShadowsAdjustment,
                rawBlackPointCorrection = rawBlackPointCorrection,
                rawWhitePointCorrection = rawWhitePointCorrection,
                rawAutoWhiteBalanceEstimate = rawAutoWhiteBalanceEstimate,
                applyLensShadingCorrection = applyLensShadingCorrection,
                rawBlackLevelMode = rawBlackLevelMode,
                rawCustomBlackLevel = rawCustomBlackLevel,
                rawWhiteLevelMode = rawWhiteLevelMode,
                rawCustomWhiteLevel = rawCustomWhiteLevel,
                sharpeningValue = sharpeningValue,
                denoiseValue = denoiseValue,
                chromaDenoiseValue = chromaDenoiseValue,
                rawDcpId = rawDcpId,
                rawNoiseProfileId = rawNoiseProfileId,
                rawHncsProfileId = rawHncsProfileId,
                rawHncsRenderIntent = rawHncsRenderIntent,
                rawHncsFilmCurveMode = rawHncsFilmCurveMode,
                dcpRenderPlan = dcpRenderPlan,
                spectralFilmStock = spectralFilmStock,
                spectralFilmPrint = spectralFilmPrint,
                spectralFilmTuning = spectralFilmTuning,
                rawRenderingEngine = rawRenderingEngine,
                rawToneMappingParameters = rawToneMappingParameters,
                rawCfaCorrectionMode = rawCfaCorrectionMode,
                rawBlackBorderCrop = rawBlackBorderCrop,
                includeHdrReference = true,
                sourceDngRenderPlan = embeddedDngRenderPlan,
                defaultCropIsAuthoritative = true,
            )
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to process in-memory DNG source", e)
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
        samplesPerPixel: Int = 1,
        gpuLinearRgbSource: GpuLinearRgbSource? = null,
        metadata: RawMetadata? = null,
        aspectRatio: AspectRatio?,
        cropRegion: Rect?,
        rotation: Int,
        exposureBias: Float = 0f,
        rawExposureCompensation: Float = 0f,
        rawHighlightsAdjustment: Float = 0f,
        rawShadowsAdjustment: Float = 0f,
        rawBlackPointCorrection: Float = 0f,
        rawWhitePointCorrection: Float = 0f,
        rawAutoWhiteBalanceEstimate: Boolean = false,
        applyLensShadingCorrection: Boolean = true,
        rawBlackLevelMode: String? = null,
        rawCustomBlackLevel: Float? = null,
        rawWhiteLevelMode: String? = null,
        rawCustomWhiteLevel: Float? = null,
        sharpeningValue: Float = 0f,
        processLocalMgcSharpenTuningSnr: Float? = null,
        processLocalMgcSharpenAttenuationScale: Float? = null,
        processLocalCoreImagingTuning: PhotonCoreImagingTuning = PhotonCoreImagingTuning.DEFAULT,
        denoiseValue: Float? = null,
        chromaDenoiseValue: Float? = null,
        rawDcpId: String? = null,
        rawNoiseProfileId: String = RawNoiseProfileManager.DEFAULT_PROFILE_ID,
        rawHncsProfileId: String? = null,
        rawHncsRenderIntent: HncsRenderIntent = HncsRenderIntent.Standard,
        rawHncsFilmCurveMode: HncsFilmCurveMode = HncsFilmCurveMode.Standard,
        dcpRenderPlan: DcpRenderPlan? = null,
        spectralFilmStock: String? = null,
        spectralFilmPrint: String? = null,
        spectralFilmTuning: SpectralFilmTuning = SpectralFilmTuning.DEFAULT,
        rawRenderingEngine: RawRenderingEngine = RawRenderingEngine.AdobeCurve,
        rawToneMappingParameters: RawToneMappingParameters = RawToneMappingParameters.DEFAULT,
        rawCfaCorrectionMode: String? = null,
        rawBlackBorderCrop: RawBlackBorderCrop = RawBlackBorderCrop(),
        dngFile: File? = null,
        onMetadata: ((RawMetadata) -> Unit)? = null,
        includeHdrReference: Boolean = false,
        sceneExposureRequest: RawSceneExposureRequest? = null,
        captureProfilePreparationRequested: Boolean = false,
        capturePhotonPgtmRequested: Boolean = false,
        captureProfileStatsBounds: Rect? = null,
        onCaptureProfilePrepared: ((RawDngCaptureProfileResult?) -> Unit)? = null,
        sourceDngRenderPlan: DcpRenderPlan? = null,
        defaultCropIsAuthoritative: Boolean = false,
    ): RawHdrRenderResult? = withContext(glDispatcher) {
        var actualRawData = rawData
        var actualWidth = width
        var actualHeight = height
        var actualRowStride = rowStride
        var actualSamplesPerPixel = samplesPerPixel.coerceAtLeast(1)
        val borrowedGpuSource = gpuLinearRgbSource?.takeIf { source ->
            val valid = source.textureId != 0 &&
                source.width == width && source.height == height &&
                source.samplesPerPixel in 3..4 &&
                source.storage == GpuLinearRgbStorage.RGBA16UI &&
                exportedStackTextureIds.contains(source.textureId)
            if (!valid) {
                PLog.w(
                    TAG,
                    "Ignoring invalid or stale stacked GPU source texture=${source.textureId} " +
                        "source=${source.width}x${source.height}x${source.samplesPerPixel} " +
                        "buffer=${width}x${height}x$samplesPerPixel",
                )
            }
            valid
        }
        if (borrowedGpuSource != null) {
            actualSamplesPerPixel = borrowedGpuSource.samplesPerPixel
        }
        var actualMetadata = metadata
        var actualRotation = rotation
        var dngRawDataCleanup: DngRawData? = null
        var embeddedDngJpegPreview: Bitmap? = null
        var dngWarpRectilinear: FloatArray? = null
        var dngWarpRectilinearFlags: IntArray? = null
        val requestedColorEngine = rawRenderingEngine
        val hasDcpSelection = dcpRenderPlan != null || rawDcpId != null
        val profileWorkingColorSpace = if (requestedColorEngine.isHncs) {
            ColorSpace.HNCS
        } else {
            ColorSpace.ProPhoto
        }
        var embeddedDngRenderPlan: DcpRenderPlan? = sourceDngRenderPlan

        if (dngFile != null) {
            val hasClassicTiffHeader = DngProfileGainTableMap.hasClassicTiffHeader(dngFile)
            val profileGainTableMap = if (hasClassicTiffHeader) {
                DngProfileGainTableMap.readFrom(dngFile)
            } else {
                PLog.d(TAG, "Skipping DNG-only metadata for non-classic-TIFF RAW: ${dngFile.name}")
                null
            }
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
                    // Platform DNG decoding already consumes DefaultCrop.
                    null,
                    rotation
                )?.let {
                    RawHdrRenderResult(
                        sdrBitmap = it,
                        hdrReferenceBitmap = null,
                    )
                }
            }
            dngRawDataCleanup = dngRawData
            PLog.i(
                TAG,
                "RAW_CROP_TRACE stage=DNG_READ raw=${dngRawData.width}x${dngRawData.height} " +
                    "activeArray=${dngRawData.activeArray?.contentToString()} " +
                    "defaultCrop=${dngRawData.defaultCrop?.contentToString()} " +
                    "warpCount=${dngRawData.warpRectilinear?.size?.div(8) ?: 0} " +
                    "warpFlags=${dngRawData.warpRectilinearFlags?.contentToString()}"
            )
            embeddedDngJpegPreview = dngRawData.embeddedPreview
            dngWarpRectilinear = dngRawData.warpRectilinear
            dngWarpRectilinearFlags = dngRawData.warpRectilinearFlags
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
                rawCustomWhiteLevel = rawCustomWhiteLevel,
                rawCfaCorrectionMode = rawCfaCorrectionMode
            ).copy(
                profileGainTableMap = profileGainTableMap ?: actualMetadata?.profileGainTableMap,
                // A persisted DNG is a new editing source. Spatial merge state is consumed only
                // by the pre-write default pass and must never leak into later slider edits.
                frameCount = 1,
                mgcDenoiseCorrelation = null,
                mgcDenoiseReadNoise = null,
                mgcDenoiseShotNoise = null,
                mgcSpatialStrengthMap = null,
                mgcSabreNoiseModelScale = null,
                mgcDenoiseTuningSnr = null,
                mgcSharpenTuningSnr = processLocalMgcSharpenTuningSnr,
                mgcSharpenAttenuationScale =
                    processLocalMgcSharpenAttenuationScale,
                coreImagingTuning = processLocalCoreImagingTuning.normalized(),
            )
            profileGainTableMap?.let {
                PLog.d(
                    TAG,
                    "DNG ProfileGainTableMap loaded: tag=${it.sourceTag} " +
                        "grid=${it.mapPointsH}x${it.mapPointsV} points=${it.mapPointsN} gamma=${it.gamma}"
                )
            }
            actualRotation = if (dngRawData.rotation != 0) dngRawData.rotation else rotation
            embeddedDngRenderPlan = if (hasClassicTiffHeader) {
                DngEmbeddedProfile.resolveRenderPlan(
                    file = dngFile,
                    metadata = actualMetadata,
                    workingColorSpace = profileWorkingColorSpace
                )
            } else {
                null
            }
            onMetadata?.invoke(actualMetadata)
        }

        actualMetadata = actualMetadata?.withNoiseProfileSelection(
            ContentRepository.getInstance(context.applicationContext)
                .rawNoiseProfileManager
                .resolveSelection(rawNoiseProfileId),
        )
        actualMetadata = actualMetadata?.withMgcRenderTuning(
            rawData = actualRawData,
            rowStride = actualRowStride,
            samplesPerPixel = actualSamplesPerPixel,
        )

        if ((actualRawData == null && borrowedGpuSource == null) || actualMetadata == null) {
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
        val hncsRenderIntent = rawHncsRenderIntent
        val activeHncsCameraGains = if (requestedColorEngine.isHncs) {
            HncsCameraDomain.fromWhiteBalanceGains(actualMetadata.whiteBalanceGains)
        } else {
            null
        }
        val hncsRenderPlan = when (requestedColorEngine) {
            RawRenderingEngine.HncsCcm ->
                HncsProfileManager(context.applicationContext).createCcmRenderPlan(
                    filmCurveMode = rawHncsFilmCurveMode
                )

            RawRenderingEngine.HncsLut ->
                HncsProfileManager(context.applicationContext).resolveLutRenderPlan(
                    colorTemperature = actualMetadata.colorTemperature,
                    activeCameraGains = requireNotNull(activeHncsCameraGains),
                    requestedProfileId = rawHncsProfileId,
                    renderIntent = hncsRenderIntent,
                    filmCurveMode = rawHncsFilmCurveMode
                )

            else -> null
        }
        if (requestedColorEngine.isHncs && hncsRenderPlan == null) {
            PLog.e(
                TAG,
                "HNCS rendering rejected: branch=$requestedColorEngine " +
                    "profile=$rawHncsProfileId intent=${hncsRenderIntent.assetValue} " +
                    "cct=${actualMetadata.colorTemperature}"
            )
            return@withContext null
        }
        val colorEngine = when {
            requestedColorEngine == RawRenderingEngine.Spektrafilm && spektrafilmLut == null -> {
                PLog.w(TAG, "SpectralFilm LUT unavailable, falling back to AdobeCurve")
                RawRenderingEngine.AdobeCurve
            }

            else -> requestedColorEngine
        }
        val normalizedToneMappingParameters = rawToneMappingParameters.normalized()
        val photonHdrRequested = normalizedToneMappingParameters.usePhotonHdr
        val useAdobeProfilePipeline = colorEngine == RawRenderingEngine.AdobeCurve
        val embeddedProfileDecision = EmbeddedDngProfilePolicy.resolve(
            hasEmbeddedProfile = embeddedDngRenderPlan != null ||
                actualMetadata.profileGainTableMap?.isValid == true,
            colorEngine = colorEngine,
            profileToneMapMode = normalizedToneMappingParameters.profileToneMapMode,
            hasDcpSelection = hasDcpSelection,
        )
        val resolvedDcpRenderPlan = if (useAdobeProfilePipeline) {
            resolveRawDcpRenderPlan(
                context = context,
                providedDcpRenderPlan = dcpRenderPlan,
                rawDcpId = rawDcpId,
                metadata = actualMetadata,
                embeddedDngRenderPlan = embeddedDngRenderPlan
                    ?.takeIf { embeddedProfileDecision.applyEmbeddedProfile }
            )
        } else {
            null
        }
        val rawBlackBorderDefaultCrop = RawDefaultCropOverride.resolveRawBlackBorderDefaultCrop(
            width = actualWidth,
            height = actualHeight,
            rawBlackBorderCrop = rawBlackBorderCrop,
            metadataDefaultCrop = actualMetadata.defaultCrop
        )
        val effectiveDefaultCrop = rawBlackBorderDefaultCrop ?: actualMetadata.defaultCrop
        val renderCropRegion = if (
            (dngFile != null || defaultCropIsAuthoritative) && effectiveDefaultCrop != null
        ) {
            if (cropRegion != null) {
                PLog.d(TAG, "DNG DefaultCrop is authoritative; ignoring legacy Camera2 crop=$cropRegion")
            }
            null
        } else {
            cropRegion
        }
        val outputSourceBounds = calculateOutputSourceBounds(
            width = actualWidth,
            height = actualHeight,
            aspectRatio = aspectRatio,
            cropRegion = renderCropRegion,
            metadataDefaultCrop = effectiveDefaultCrop
        )
        PLog.i(
            TAG,
            "RAW_CROP_TRACE stage=RENDER_BOUNDS raw=${actualWidth}x$actualHeight " +
                "metadataDefaultCrop=${actualMetadata.defaultCrop} " +
                "blackBorderOverride=$rawBlackBorderDefaultCrop effectiveDefaultCrop=$effectiveDefaultCrop " +
                "legacyCrop=$cropRegion appliedLegacyCrop=$renderCropRegion " +
                "aspectRatio=$aspectRatio rotation=$actualRotation outputSourceBounds=$outputSourceBounds"
        )
        val rawOutputBounds = outputSourceBounds.toOutputBounds(actualRotation)
        val applicableDngWarpRectilinear = filterApplicableWarpRectilinear(
            warps = dngWarpRectilinear,
            flags = dngWarpRectilinearFlags,
            width = actualWidth,
            height = actualHeight,
            outputSourceBounds = outputSourceBounds,
        )
        // Photon has historically processed the whole sensor before the final crop, so a small
        // output crop does not make a 100 MP input cheap. Trigger on either effective output or
        // source processing footprint.
        val highResolutionOutput =
            RawTilePlanner.shouldTile(outputSourceBounds.width(), outputSourceBounds.height()) ||
                RawTilePlanner.shouldTile(actualWidth, actualHeight)
        val hasActiveWarp = applicableDngWarpRectilinear?.isNotEmpty() == true
        val prepareCaptureProfile =
            sceneExposureRequest != null || captureProfilePreparationRequested
        val useHalfResolutionMeteringDemosaic =
            sceneExposureRequest != null &&
                actualSamplesPerPixel == 1 &&
                actualMetadata.frameCount == 1 &&
                actualMetadata.cfaPattern in RawMetadata.CFA_RGGB..RawMetadata.CFA_BGGR &&
                !hasActiveWarp
        val tileBlockingReason = when {
            !highResolutionOutput -> null
            actualSamplesPerPixel !in setOf(1, 3, 4) ->
                "unsupported samplesPerPixel=$actualSamplesPerPixel"
            borrowedGpuSource != null -> "GPU-resident stacked source"
            actualMetadata.coreImagingTuning.dehaze.isActive ->
                "Photon dehaze requires one continuous low-frequency image"
            hasActiveWarp && !(captureProfilePreparationRequested && sceneExposureRequest == null) ->
                "DNG WarpRectilinear requires a displacement-aware render source region"
            colorEngine == RawRenderingEngine.DarktableFilmic ->
                "Darktable Filmic wavelet reconstruction requires scale-by-scale tiling"
            sceneExposureRequest != null -> "capture scene exposure"
            else -> null
        }
        val rawRenderTiles = if (highResolutionOutput && tileBlockingReason == null) {
            RawTilePlanner.plan(
                sourceWidth = actualWidth,
                sourceHeight = actualHeight,
                outputSourceBounds = RawTileRect(
                    outputSourceBounds.left,
                    outputSourceBounds.top,
                    outputSourceBounds.right,
                    outputSourceBounds.bottom,
                ),
                rotation = actualRotation,
                coreEdgePx = RAW_TILE_MAX_CORE_EDGE_PX,
                supportPx = RAW_TILE_SUPPORT_PX,
                cfaPeriod = RawCfaCorrection.repeatPatternDim(actualMetadata.cfaPattern)[0],
            )
        } else {
            emptyList()
        }
        if (highResolutionOutput && borrowedGpuSource != null) {
            PLog.i(
                TAG,
                "RAW render path=GPU_FULL_FRAME source=STACKED_TEXTURE " +
                    "size=${outputSourceBounds.width()}x${outputSourceBounds.height()} " +
                    "tiledCpuUpload=false",
            )
        } else if (highResolutionOutput && tileBlockingReason != null) {
            if (tileBlockingReason == "capture scene exposure") {
                PLog.i(
                    TAG,
                    "RAW capture scene exposure path=FULL_FRAME " +
                        "source=${actualWidth}x$actualHeight " +
                        "output=${outputSourceBounds.width()}x${outputSourceBounds.height()}",
                )
            } else {
                PLog.w(
                    TAG,
                    "RAW tiled rendering unavailable for this pipeline: $tileBlockingReason; " +
                        "size=${outputSourceBounds.width()}x${outputSourceBounds.height()}",
                )
            }
        }
        val tiledRawData = rawRenderTiles.takeIf { it.isNotEmpty() }?.let {
            requireNotNull(actualRawData).duplicate().order(ByteOrder.nativeOrder())
        }
        try {
            if (!isInitialized && !initializeOnGlThread()) {
                PLog.e(TAG, "Failed to initialize processor")
                return@withContext null
            }
            if (rawRenderTiles.isNotEmpty()) {
                // A singleton renderer may still own size-cached intermediates from the previous
                // image. They are not part of this tile pool and must not overlap the bounded RAW
                // uploads used by PGTM sampling and final rendering.
                releaseTiledRenderFramebuffers()
            }
            if (rawRenderTiles.isEmpty() &&
                (actualWidth > maxTextureSize || actualHeight > maxTextureSize)
            ) {
                PLog.e(
                    TAG,
                    "Input ${actualWidth}x$actualHeight exceeds GL_MAX_TEXTURE_SIZE=$maxTextureSize",
                )
                return@withContext null
            }
            var userAdjustmentNoiseTransfer: DemosaicNoiseTransfer? = null
            val userAdjustmentDenoiseEnabled =
                (denoiseValue ?: 0f) > 0f || (chromaDenoiseValue ?: 0f) > 0f
            if (rawRenderTiles.isEmpty()) {
                when {
                    useHalfResolutionMeteringDemosaic -> setupFullResFramebuffer(
                        (actualWidth + 1) / 2,
                        (actualHeight + 1) / 2,
                    )

                    !captureProfilePreparationRequested || sceneExposureRequest != null ->
                        setupFullResFramebuffer(actualWidth, actualHeight)
                }
            }
            if (rawRenderTiles.isNotEmpty()) {
                PLog.i(
                    TAG,
                    "RAW full upload deferred to bounded tiles: source=${actualWidth}x$actualHeight " +
                        "tiles=${rawRenderTiles.size} photonPgtm=$photonHdrRequested " +
                        "capturePgtm=$capturePhotonPgtmRequested",
                )
            } else if (borrowedGpuSource != null) {
                if (rawTextureId != 0 && rawTextureId != borrowedGpuSource.textureId) {
                    GLES30.glDeleteTextures(1, intArrayOf(rawTextureId), 0)
                }
                rawTextureId = borrowedGpuSource.textureId
                PLog.d(
                    TAG,
                    "Using GPU-resident LinearRaw input: ${actualWidth}x${actualHeight} " +
                        "samplesPerPixel=$actualSamplesPerPixel texture=$rawTextureId",
                )
            } else if (actualSamplesPerPixel in 3..4) {
                uploadLinearRawRgbTextureFromBuffer(
                    requireNotNull(actualRawData),
                    actualWidth,
                    actualHeight,
                    actualRowStride,
                    actualSamplesPerPixel,
                )
            } else {
                uploadRawTextureFromBuffer(
                    requireNotNull(actualRawData),
                    actualWidth,
                    actualHeight,
                    actualRowStride,
                )
            }
            // Ordinary rendering is GPU-resident from this point onward. Tiled rendering keeps
            // the native decoder buffer alive and re-uploads one CFA-aligned source region.
            if (rawRenderTiles.isEmpty()) {
                actualRawData = null
            }

        val oppoMasterToneMapActive = useAdobeProfilePipeline &&
            normalizedToneMappingParameters.useOppoMasterToneMap
        val validEmbeddedProfileGainTableMap = actualMetadata.profileGainTableMap
            ?.takeIf { it.isValid }
        val embeddedProfileGainTableMap = validEmbeddedProfileGainTableMap
            ?.takeIf {
                embeddedProfileDecision.shouldRetainEmbeddedPgtm()
            }
        if (embeddedProfileDecision.hasEmbeddedProfile) {
            PLog.i(
                TAG,
                "DNG embedded profile: " +
                    "action=${if (embeddedProfileDecision.applyEmbeddedProfile) "apply" else "disable"} " +
                    "engine=$colorEngine profileToneMap=${normalizedToneMappingParameters.profileToneMapMode} " +
                    "customDcp=$hasDcpSelection " +
                    "photonHdr=${when {
                        embeddedProfileDecision.applyEmbeddedProfile -> "replaced-by-embedded-profile"
                        photonHdrRequested -> "generate-independent-pgtm"
                        else -> "disabled"
                    }}"
            )
        } else if (!photonHdrRequested && validEmbeddedProfileGainTableMap != null) {
            PLog.i(TAG, "DNG ProfileGainTableMap disabled by Photon HDR setting")
        }
        actualMetadata = actualMetadata.copy(
            profileGainTableMap = embeddedProfileGainTableMap
        )
        val profileBaseDcpRenderPlan = resolvedDcpRenderPlan
        val activeDcpRenderPlan = when {
            oppoMasterToneMapActive -> {
                oppoMasterToneMapRenderPlan(
                    basePlan = profileBaseDcpRenderPlan,
                    metadata = actualMetadata,
                    workingColorSpace = profileWorkingColorSpace
                )
            }
            else -> profileBaseDcpRenderPlan
        }
        if (embeddedProfileDecision.shouldGeneratePhotonPgtm(photonHdrRequested) &&
            actualMetadata.profileGainTableMap == null
        ) {
            val generatedProfileGainTableMap = generateProfileGainTableMapOnGpu(
                rawTextureId = rawTextureId,
                streamingRawData = tiledRawData,
                streamingRowStride = actualRowStride,
                width = actualWidth,
                height = actualHeight,
                samplesPerPixel = actualSamplesPerPixel,
                metadata = actualMetadata.copy(profileGainTableMap = null),
                statsBounds = outputSourceBounds,
                baselineExposureEv = DngBaselineExposure.sanitize(actualMetadata.baselineExposure) +
                    dcpBaselineExposureOffsetOrZero(activeDcpRenderPlan),
                colorCorrectionMatrix = activeDcpRenderPlan?.colorCorrectionMatrix
                    ?: actualMetadata.colorCorrectionMatrix,
                hueSatMap = activeDcpRenderPlan?.hueSatMap,
                hueSatMapSupportsOverrange = activeDcpRenderPlan?.supportsOverrange == true,
                warpRectilinear = applicableDngWarpRectilinear,
            )?.takeIf { it.isValid }
            if (generatedProfileGainTableMap == null) {
                PLog.e(TAG, "Photon HDR PGTM generation failed")
                return@withContext null
            }
            actualMetadata = actualMetadata.copy(
                profileGainTableMap = generatedProfileGainTableMap,
            )
        }
        val profilePlanSource = when {
            oppoMasterToneMapActive -> when {
                dcpRenderPlan != null -> "provided+oppo-master-tone-map"
                rawDcpId != null -> "$rawDcpId+oppo-master-tone-map"
                else -> "oppo-master-tone-map"
            }
            activeDcpRenderPlan == null -> null
            dcpRenderPlan != null -> "provided"
            rawDcpId != null -> rawDcpId
            !hasDcpSelection && embeddedProfileDecision.applyEmbeddedProfile -> "embedded-dng"
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
        val hasDngBaselineExposure = shouldApplyLinearDngBaselineExposure(actualMetadata)
        // Match dng_render: PGTM is evaluated first with TotalBaselineExposure folded into its
        // MapInputWeights coordinate, then every engine consumes BaselineExposure in its own
        // exposure preparation immediately after PGTM.
        val applyLinearDngBaselineExposure = false
        val applyProfileDngBaselineExposure = hasDngBaselineExposure
        val applyDcpBaselineExposureOffset =
            shouldApplyDcpBaselineExposureOffset(activeDcpRenderPlan)
        val useProfileExposureRamp = useAdobeProfilePipeline
        val supportProfileOverrange =
            useAdobeProfilePipeline &&
                activeDcpRenderPlan?.supportsOverrange == true
        val hueSatMapSupportsOverrange = useAdobeProfilePipeline &&
            activeDcpRenderPlan?.supportsOverrange == true
        val clampProfileRgb = useAdobeProfilePipeline
        val engineWorkingColorSpace = colorEngine.workingColorSpace
        val profileToEngineTransform = computeWorkingToOutputTransform(
            profileWorkingColorSpace,
            engineWorkingColorSpace
        )
        val profileToLinearSrgbTransform = computeWorkingToOutputTransform(
            profileWorkingColorSpace,
            ColorSpace.SRGB,
        )
        val linearColorCorrectionMatrix =
            if (colorEngine.usesHncsColorMap) {
                requireNotNull(hncsRenderPlan?.cameraToHncsMatrix) {
                    "HNCS LUT branch requires its source camera matrix"
                }
            } else {
                resolveLinearColorCorrectionMatrix(
                    metadata = actualMetadata,
                    dcpRenderPlan = activeDcpRenderPlan
                )
        }
        val hncsCameraDomainGains = when {
            colorEngine.usesHncsColorMap -> requireNotNull(hncsRenderPlan?.cameraDomainGains) {
                "HNCS LUT branch requires the active RAW camera gains baked into its matrix"
            }

            colorEngine.isHncs -> requireNotNull(activeHncsCameraGains)

            else -> null
        }
        val linearCameraWhite = resolveLinearCameraWhite(
            metadata = actualMetadata,
            dcpRenderPlan = activeDcpRenderPlan
        )
        if (colorEngine.isHncs) {
            PLog.i(
                TAG,
                "HNCS pipeline: branch=${if (colorEngine.usesHncsColorMap) "CbYCrY_LUT" else "CCM"} " +
                    "profile=${hncsRenderPlan?.profileId} intent=${hncsRenderPlan?.renderIntent} " +
                    "cct=${hncsRenderPlan?.colorTemperature} " +
                    "source=${hncsRenderPlan?.sourceFile} " +
                    "profileSpace=$profileWorkingColorSpace " +
                    "colorMap=${colorEngine.usesHncsColorMap} " +
                    "gammaFilter=${hncsRenderPlan?.gamma?.filterEnabled}"
            )
        }
        logRawDcpPipeline(
            metadata = actualMetadata,
            profilePlanSource = profilePlanSource,
            requestedColorEngine = requestedColorEngine,
            colorEngine = colorEngine,
            dcpRenderPlan = activeDcpRenderPlan,
            profileWorkingColorSpace = profileWorkingColorSpace,
            engineWorkingColorSpace = engineWorkingColorSpace,
            profileToEngineTransform = profileToEngineTransform,
            useAdobeProfilePipeline = useAdobeProfilePipeline,
            useProfileExposureRamp = useProfileExposureRamp,
            applyDcpBaselineExposureOffset = applyDcpBaselineExposureOffset,
            hueSatMapSupportsOverrange = hueSatMapSupportsOverrange,
        )
        PLog.d(
            TAG,
            "Processing RAW image: ${actualWidth}x${actualHeight}, " +
                "colorEngine=$colorEngine profileSpace=$profileWorkingColorSpace " +
                "engineWorkingSpace=$engineWorkingColorSpace"
        )

            val bounds = rawOutputBounds
            val finalWidth = bounds.width()
            val finalHeight = bounds.height()

            if (rawRenderTiles.isEmpty()) {
                // 4. Full-frame demosaic is only valid for the legacy path. High-resolution
                // rendering performs the same work from renderRawTiles() after all shared
                // profile/exposure state has been resolved.
                if (useHalfResolutionMeteringDemosaic) {
                    runHalfResolutionMeteringDemosaic(
                        metadata = actualMetadata,
                        width = actualWidth,
                        height = actualHeight,
                    )
                } else if (captureProfilePreparationRequested && sceneExposureRequest == null) {
                    PLog.d(
                        TAG,
                        "RAW capture profile preparation skipped demosaic: scene exposure disabled",
                    )
                } else if (actualSamplesPerPixel in 3..4) {
                    renderLinearRawRgbToTexture(
                        sourceTextureId = rawTextureId,
                        sourceSamplesPerPixel = actualSamplesPerPixel,
                        targetTextureId = demosaicTextureId,
                        width = actualWidth,
                        height = actualHeight,
                    )
                    PLog.d(
                        TAG,
                        "LinearRaw input prepared on GPU: ${actualWidth}x${actualHeight} " +
                            "samplesPerPixel=$actualSamplesPerPixel rowStride=$actualRowStride"
                    )
                } else {
                    // darktable feeds Filmic after the raw highlight reconstruction module;
                    // keep the raw-domain repair enabled before Filmic HR.
                    val rawDomainHighlightReconstructionEnabled = true
                    if (!captureProfilePreparationRequested && userAdjustmentDenoiseEnabled) {
                        userAdjustmentNoiseTransfer =
                            demosaicNoisePropagationCalibrator.prepareUserAdjustment(
                                actualMetadata,
                                demosaicCalculationWbGains(actualMetadata),
                            )
                    }
                    PLog.i(
                        TAG,
                        "RAW fused input layout=CFA frameCount=${actualMetadata.frameCount} " +
                            "demosaic=${when {
                                RawMetadata.isQuadBayer(actualMetadata.cfaPattern) -> "QUAD_BAYER"
                                else -> "STANDARD_BAYER_VGN"
                            }}",
                    )
                    if (RawMetadata.isQuadBayer(actualMetadata.cfaPattern)) {
                        check(ensureQuadBayerPrograms()) {
                            "Unable to initialize Quad Bayer demosaic programs"
                        }
                        runQuadBayerDemosaic(
                            actualMetadata,
                            actualWidth,
                            actualHeight,
                            highlightReconstructionEnabled = rawDomainHighlightReconstructionEnabled
                        )
                    } else {
                        check(ensureVgnPrograms()) {
                            "Unable to initialize Standard Bayer VGN demosaic programs"
                        }
                        runStandardBayerVgnDemosaic(
                            metadata = actualMetadata,
                            width = actualWidth,
                            height = actualHeight,
                            highlightReconstructionEnabled = rawDomainHighlightReconstructionEnabled,
                        )
                    }
                }
                applicableDngWarpRectilinear
                    ?.takeUnless {
                        useHalfResolutionMeteringDemosaic ||
                            (captureProfilePreparationRequested && sceneExposureRequest == null)
                    }
                    ?.let { warps ->
                    var appliedWarpCount = 0
                    for (offset in warps.indices step 8) {
                        val parameters = warps.copyOfRange(offset, offset + 8)
                        // dng_opcode_BaseWarpRectilinear::IsNOP skips an identity radial
                        // transform with zero tangential terms. Preserve that Stage 3 behavior.
                        if (isNoOpWarpRectilinear(parameters)) {
                            PLog.d(TAG, "Skipping no-op DNG WarpRectilinear")
                            continue
                        }
                        PLog.d(TAG, "Applying DNG WarpRectilinear: ${parameters.contentToString()}")
                        val warped = renderWarpRectilinearPass(
                            sourceTextureId = demosaicTextureId,
                            targetFramebufferId = linearOutputFramebufferId,
                            width = actualWidth,
                            height = actualHeight,
                            parameters = parameters,
                        )
                        if (!warped) break
                        val tempTex = demosaicTextureId
                        demosaicTextureId = linearOutputTextureId
                        linearOutputTextureId = tempTex
                        val tempFbo = demosaicFramebufferId
                        demosaicFramebufferId = linearOutputFramebufferId
                        linearOutputFramebufferId = tempFbo
                        appliedWarpCount++
                    }
                    PLog.d(TAG, "Applied $appliedWarpCount/${warps.size / 8} DNG WarpRectilinear opcode(s) before color conversion")
                }
            }

            if (prepareCaptureProfile) {
                val solvedExposureEv = sceneExposureRequest?.let { request ->
                    renderSceneExposureRequest(
                        request = request,
                        metadata = actualMetadata,
                        sourceTextureId = demosaicTextureId,
                        colorCorrectionMatrix = linearColorCorrectionMatrix,
                        cameraWhite = linearCameraWhite,
                        profileToLinearSrgbTransform = profileToLinearSrgbTransform,
                        outputSourceBounds = outputSourceBounds,
                        outputRotation = actualRotation,
                        stackCompletionTimeline = borrowedGpuSource?.stackCompletionTimeline,
                    )
                }
                solvedExposureEv?.let { exposureEv ->
                    PLog.i(
                        TAG,
                        "RAW_SCENE_EXPOSURE stage=INFERENCE_COMPLETE " +
                            "pgtm=$capturePhotonPgtmRequested " +
                            "sourceBaselineEv=${actualMetadata.baselineExposure} " +
                            "sceneBaselineEv=$exposureEv",
                    )
                }
                val finalBaselineExposureEv = DngBaselineExposure.resolveCaptureBaseline(
                    sourceBaselineEv = actualMetadata.baselineExposure,
                    sceneBaselineEv = solvedExposureEv,
                )
                val captureProfileGainTableMap = if (capturePhotonPgtmRequested) {
                    generateProfileGainTableMapOnGpu(
                        rawTextureId = rawTextureId,
                        streamingRawData = tiledRawData,
                        streamingRowStride = actualRowStride,
                        width = actualWidth,
                        height = actualHeight,
                        samplesPerPixel = actualSamplesPerPixel,
                        metadata = actualMetadata.copy(profileGainTableMap = null),
                        statsBounds = captureProfileStatsBounds,
                        baselineExposureEv = finalBaselineExposureEv +
                            dcpBaselineExposureOffsetOrZero(activeDcpRenderPlan),
                        colorCorrectionMatrix = linearColorCorrectionMatrix,
                        hueSatMap = activeDcpRenderPlan?.hueSatMap,
                        hueSatMapSupportsOverrange = hueSatMapSupportsOverrange,
                        warpRectilinear = applicableDngWarpRectilinear,
                    )
                } else {
                    null
                }
                val profileRequired = capturePhotonPgtmRequested
                val captureResult = if (profileRequired && captureProfileGainTableMap == null) {
                    null
                } else {
                    RawDngCaptureProfileResult(
                        exposureOffsetEv = solvedExposureEv,
                        profileGainTableMap = captureProfileGainTableMap,
                    )
                }
                onCaptureProfilePrepared?.invoke(captureResult)
                return@withContext null
            }

            // BaselineExposure already contains the capture-time scene estimate. Rendering only
            // applies explicit edit controls.
            val effectiveExposureCompensation = rawExposureCompensation
            val effectiveHighlightsAdjustment = rawHighlightsAdjustment
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
            val shadowsHighlightsParams = ShadowsHighlightsParams(
                highlights = effectiveHighlightsAdjustment,
                shadows = rawShadowsAdjustment,
            )
            PLog.d(
                TAG,
                "RAW render exposure: manualEv=$effectiveExposureCompensation " +
                    "engineDefaultEv=${colorEngine.defaultExposureCompensationEv} " +
                    "engineCompensationDomain=${colorEngine.exposureCompensationDomain} " +
                    "profileExposureEv=${profileExposureUniforms.exposureEv} " +
                    "defaultBlackRender=${resolveProfileDefaultBlackRender(
                        metadata = actualMetadata,
                        dcpRenderPlan = activeDcpRenderPlan,
                        applyDngBaselineExposure = applyProfileDngBaselineExposure,
                        useRamp = useProfileExposureRamp,
                    )} " +
                    "profileRampBlack=${profileExposureUniforms.rampBlack} " +
                    "profileSupportOverrange=${profileExposureUniforms.supportOverrange} " +
                    "dngShadowScale=${actualMetadata.shadowScale} " +
                    "dngBaselineExposure=${actualMetadata.baselineExposure} " +
                    "linearCameraWhite=${linearCameraWhite.contentToString()} " +
                    "dngBaselineExposureInLinear=$applyLinearDngBaselineExposure " +
                    "dngBaselineExposureInProfileRamp=$applyProfileDngBaselineExposure " +
                    "profileGainTableMapActive=$hasProfileGainTableMap " +
                    "dcpBaselineExposureOffsetApplied=$applyDcpBaselineExposureOffset"
            )

            if (rawRenderTiles.isNotEmpty()) {
                val tiledResult = renderRawTiles(
                    rawData = requireNotNull(tiledRawData),
                    config = RawTileRenderConfig(
                        context = context.applicationContext,
                        rowStride = actualRowStride,
                        fullWidth = actualWidth,
                        fullHeight = actualHeight,
                        samplesPerPixel = actualSamplesPerPixel,
                        metadata = actualMetadata,
                        tiles = rawRenderTiles,
                        outputSourceBounds = outputSourceBounds,
                        rotation = actualRotation,
                        includeHdrReference = includeHdrReference,
                        rawExposureCompensation = effectiveExposureCompensation,
                        chromaDenoiseValue = chromaDenoiseValue,
                        denoiseValue = denoiseValue,
                        sharpeningValue = sharpeningValue,
                        linearColorCorrectionMatrix = linearColorCorrectionMatrix,
                        linearCameraWhite = linearCameraWhite,
                        hueSatMap = activeDcpRenderPlan?.hueSatMap,
                        profileToLinearSrgbTransform = profileToLinearSrgbTransform,
                        applyLinearDngBaselineExposure = applyLinearDngBaselineExposure,
                        hasProfileGainTableMap = hasProfileGainTableMap,
                        applyDcpBaselineExposureOffset = applyDcpBaselineExposureOffset,
                        clampProfileRgb = clampProfileRgb,
                        supportProfileOverrange = supportProfileOverrange,
                        hueSatMapSupportsOverrange = hueSatMapSupportsOverrange,
                        hncsCameraDomainGains = hncsCameraDomainGains,
                        colorEngine = colorEngine,
                        activeDcpRenderPlan = activeDcpRenderPlan,
                        profileExposureUniforms = profileExposureUniforms,
                        spectralFilmLut = spektrafilmLut,
                        hncsRenderPlan = hncsRenderPlan,
                        engineWorkingColorSpace = engineWorkingColorSpace,
                        profileToEngineTransform = profileToEngineTransform,
                        shadowsHighlightsParams = shadowsHighlightsParams,
                        rawBlackPointCorrection = rawBlackPointCorrection,
                        rawWhitePointCorrection = rawWhitePointCorrection,
                        rawToneMappingParameters = rawToneMappingParameters,
                    ),
                ) ?: return@withContext null
                return@withContext RawHdrRenderResult(
                    sdrBitmap = tiledResult.sdrBitmap,
                    hdrReferenceBitmap = tiledResult.hdrReferenceBitmap,
                    rawInputWidth = actualWidth,
                    rawInputHeight = actualHeight,
                    outputSourceBounds = Rect(outputSourceBounds),
                    outputRotation = actualRotation,
                    effectiveDefaultCrop = effectiveDefaultCrop?.let(::Rect),
                )
            }

            // Preserve the undenoised camera-RGB source identity for the lower-priority HDR
            // branch. LinearRcdPass swaps the full-resolution ping-pong members below, so looking
            // up demosaicTextureId after the SDR render would select the post-CCM texture instead.
            // The source texture itself remains read-only and alive until the complete render ends.
            val hdrReferenceSourceTextureId = if (includeHdrReference) {
                check(demosaicTextureId != 0) { "HDR reference source texture is unavailable" }
                demosaicTextureId
            } else {
                0
            }
            var hdrReferencePreparedBeforeDehaze = false

            val denoiseProfileTextureId = renderMgcUserAdjustmentDenoise(
                context = context.applicationContext,
                sourceTextureId = demosaicTextureId,
                width = actualWidth,
                height = actualHeight,
                metadata = actualMetadata,
                demosaicNoiseTransfer = userAdjustmentNoiseTransfer,
                denoiseValue = denoiseValue,
                chromaDenoiseValue = chromaDenoiseValue,
                globalOriginX = 0,
                globalOriginY = 0,
                fullImageWidth = actualWidth,
                fullImageHeight = actualHeight,
            ) ?: run {
                val fallbackChromaTextureId = renderDefaultChromaDenoise(
                    sourceTextureId = demosaicTextureId,
                    width = actualWidth,
                    height = actualHeight,
                    metadata = actualMetadata,
                    chromaDenoiseValue = chromaDenoiseValue,
                )
                renderDenoiseProfilePass(
                    sourceTextureId = fallbackChromaTextureId,
                    width = actualWidth,
                    height = actualHeight,
                    metadata = actualMetadata,
                    denoiseValue = denoiseValue,
                )
            }
            // AdobeCurve keeps BaselineExposure for the DNG SDK exposure ramp. HNCS consumes
            // it through ColorCorrectAll's camera-domain inputEV; other linear engines retain
            // the exact post-matrix 2^EV gain.
            checkGlError("Before LinearRcdPass")
            val dehazeTuning = actualMetadata.coreImagingTuning.dehaze.normalized()

            renderLinearRcdPass(
                metadata = actualMetadata,
                sourceTextureId = denoiseProfileTextureId,
                targetFramebufferId = linearOutputFramebufferId,
                viewportWidth = actualWidth,
                viewportHeight = actualHeight,
                rawExposureCompensation = 0f,
                colorCorrectionMatrix = linearColorCorrectionMatrix,
                cameraWhite = linearCameraWhite,
                // MGC ProcessLowFrequency runs DehazeAndDha before ApplyColorMap. Defer the DCP
                // hue/sat map to a second linear pass only while standalone dehaze is active.
                hueSatMap = activeDcpRenderPlan?.hueSatMap
                    ?.takeUnless { dehazeTuning.isActive },
                applyDngBaselineExposure = applyLinearDngBaselineExposure,
                clampProfileRgb = clampProfileRgb,
                hueSatMapSupportsOverrange = hueSatMapSupportsOverrange,
                hncsCameraDomainGains = hncsCameraDomainGains,
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
            if (dehazeTuning.isActive) {
                // The next ping-pong target is the original camera-RGB texture. Preserve the HDR
                // reference first because that branch intentionally excludes dehaze/tone/sharpen.
                if (includeHdrReference) {
                    setupHdrReferenceFramebuffer(actualWidth, actualHeight)
                    renderHdrReferencePass(
                        metadata = actualMetadata,
                        rawExposureCompensation = effectiveExposureCompensation,
                        inputTextureId = hdrReferenceSourceTextureId,
                        colorCorrectionMatrix = linearColorCorrectionMatrix,
                        cameraWhite = linearCameraWhite,
                        hueSatMap = activeDcpRenderPlan?.hueSatMap,
                        profileToLinearSrgb = profileToLinearSrgbTransform,
                    )
                    hdrReferencePreparedBeforeDehaze = true
                }
                checkNotNull(
                    photonDehazePipeline.render(
                        sourceTextureId = demosaicTextureId,
                        targetFramebufferId = linearOutputFramebufferId,
                        targetTextureId = linearOutputTextureId,
                        width = actualWidth,
                        height = actualHeight,
                        tuning = dehazeTuning,
                    ),
                ) { "Photon dehaze pipeline failed" }

                val dehazeTempTexture = demosaicTextureId
                demosaicTextureId = linearOutputTextureId
                linearOutputTextureId = dehazeTempTexture
                val dehazeTempFramebuffer = demosaicFramebufferId
                demosaicFramebufferId = linearOutputFramebufferId
                linearOutputFramebufferId = dehazeTempFramebuffer
                GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
                checkGlError("After PhotonDehazePass Swap")

                activeDcpRenderPlan?.hueSatMap?.takeIf { it.isValid }?.let { hueSatMap ->
                    renderLinearRcdPass(
                        metadata = actualMetadata,
                        sourceTextureId = demosaicTextureId,
                        targetFramebufferId = linearOutputFramebufferId,
                        viewportWidth = actualWidth,
                        viewportHeight = actualHeight,
                        rawExposureCompensation = 0f,
                        colorCorrectionMatrix = identityMatrix3x3(),
                        cameraWhite = floatArrayOf(1f, 1f, 1f),
                        hueSatMap = hueSatMap,
                        applyDngBaselineExposure = false,
                        clampProfileRgb = false,
                        hueSatMapSupportsOverrange = hueSatMapSupportsOverrange,
                        hncsCameraDomainGains = null,
                        label = "PostDehazeColorMapPass",
                    )
                    val colorMapTempTexture = demosaicTextureId
                    demosaicTextureId = linearOutputTextureId
                    linearOutputTextureId = colorMapTempTexture
                    val colorMapTempFramebuffer = demosaicFramebufferId
                    demosaicFramebufferId = linearOutputFramebufferId
                    linearOutputFramebufferId = colorMapTempFramebuffer
                    GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
                    checkGlError("After PostDehazeColorMapPass Swap")
                }
            }
            // LinearRcdPass has consumed the camera-RGB NLM result. The post-CCM pipeline uses
            // the full-resolution ping-pong textures, so both denoiseprofile textures can go.
            releaseDenoiseProfileFramebuffers()
            // rawTextureId 已被 RCD populate 消费，提前释放 GPU 显存
            if (rawTextureId != 0) {
                if (rawTextureId != borrowedGpuSource?.textureId) {
                    GLES30.glDeleteTextures(1, intArrayOf(rawTextureId), 0)
                }
                rawTextureId = 0
            }
            val workingColorSpace = resolveWorkingColorSpace()
            // 重点：不要在此处销毁常驻双缓冲的 framebuffer，由 setupFullResFramebuffer 或 release() 统一管理其生命周期
            // if (demosaicFramebufferId != 0) {
            //     GLES30.glDeleteFramebuffers(1, intArrayOf(demosaicFramebufferId), 0)
            //     demosaicFramebufferId = 0
            // }
            // demosaicWidth = 0; demosaicHeight = 0
            // 5. 第二步：Combined Pass (HDR Linear -> LDR sRGB + LUT)
            val combinedInputTexture = if (colorEngine == RawRenderingEngine.DarktableFilmic) {
                val reconstructedTexture = renderDarktableFilmicHighlightReconstruction(
                    sourceTextureId = demosaicTextureId,
                    width = actualWidth,
                    height = actualHeight,
                    rawToneMappingParameters = rawToneMappingParameters,
                    profileExposureUniforms = profileExposureUniforms,
                    profileToEngineTransform = profileToEngineTransform,
                    metadata = actualMetadata,
                    applyProfileGainTableMap = hasProfileGainTableMap,
                    profileBaselineExposureOffsetEv =
                        dcpBaselineExposureOffsetOrZero(activeDcpRenderPlan),
                )
                if (reconstructedTexture == 0) {
                    PLog.e(TAG, "Darktable Filmic highlight reconstruction failed")
                    return@withContext null
                }
                reconstructedTexture
            } else {
                demosaicTextureId
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
            val combinedRendered = try {
                renderCombinedPass(
                    metadata = actualMetadata,
                    inputTextureId = combinedInputTexture,
                    dcpRenderPlan = activeDcpRenderPlan,
                    applyDcpHueSatMap = false,
                    profileExposureUniforms = combinedProfileExposureUniforms,
                    spectralFilmLut = spektrafilmLut,
                    hncsRenderPlan = hncsRenderPlan,
                    colorEngine = colorEngine,
                    outputWorkingColorSpace = engineWorkingColorSpace,
                    profileToEngineTransform = combinedProfileToEngineTransform,
                    shadowsHighlightsParams = shadowsHighlightsParams,
                    rawBlacksAdjustment = rawBlackPointCorrection,
                    rawWhitesAdjustment = rawWhitePointCorrection,
                    rawToneMappingParameters = rawToneMappingParameters,
                    applyProfileGainTableMap =
                        hasProfileGainTableMap && colorEngine != RawRenderingEngine.DarktableFilmic,
                )
            } finally {
                if (colorEngine == RawRenderingEngine.DarktableFilmic) {
                    filmicHighlightReconstructionAlgorithm.releaseFramebuffers()
                }
            }
            if (!combinedRendered) {
                PLog.e(TAG, "Combined Pass failed for colorEngine=$colorEngine")
                return@withContext null
            }
            PLog.d(TAG, "Combined Pass took: ${System.currentTimeMillis() - combinedStart}ms")
            // 6. 第三步：锐化 (Sharpen Pass)
            setupSharpenFramebuffer(actualWidth, actualHeight)
            val sharpenStart = System.currentTimeMillis()
            renderFinalSharpenPass(actualMetadata, sharpeningValue, combinedTextureId)
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

            // 8. 读取结果。先单独等待 GPU，避免把前面所有异步 shader 工作记到 readPixels。
            val upstreamStackTiming = borrowedGpuSource?.stackCompletionTimeline?.awaitPending(
                syncPoint = "RAW_DISPLAY_OUTPUT",
                checkGlError = ::checkGlError,
            )
            val outputGpuQueueWaitMs = GlesGpuCompletion.awaitSubmittedWork(
                label = "RAW display output",
                checkGlError = ::checkGlError,
            )
            val readStart = System.currentTimeMillis()
            val finalBitmap = readPixels(finalWidth, finalHeight, workingColorSpace)
            val outputMaterializationMs = System.currentTimeMillis() - readStart
            PLog.d(
                TAG,
                "RAW output materialization timing target=SDR " +
                    "upstreamStackGpuWait=${upstreamStackTiming?.totalWaitMs ?: 0L}ms " +
                    "renderGpuQueueWait=${outputGpuQueueWaitMs}ms " +
                    "pixelTransferAndBitmap=${outputMaterializationMs}ms",
            )

            if (finalBitmap == null) {
                PLog.e(TAG, "Unable to materialize RAW SDR output")
                return@withContext null
            }
            PLog.i(
                TAG,
                "RAW output schedule stage=SDR_BITMAP_COMPLETE size=" +
                    "${finalBitmap.width}x${finalBitmap.height}",
            )

            // Keep both output materializations contiguous: HDR follows the completed SDR readback
            // without yielding to JPEG encoding or another CPU consumer in between.
            // It branches from the preserved undenoised camera RGB, excludes the SDR denoise/tone/
            // sharpen chain, and reuses the existing rotated Output FBO after its SDR pixels have
            // already been copied into the bitmap.
            val hdrReferenceBitmap = if (includeHdrReference) {
                val hdrStartNs = System.nanoTime()
                try {
                    if (!hdrReferencePreparedBeforeDehaze) {
                        setupHdrReferenceFramebuffer(actualWidth, actualHeight)
                        renderHdrReferencePass(
                            metadata = actualMetadata,
                            rawExposureCompensation = effectiveExposureCompensation,
                            inputTextureId = hdrReferenceSourceTextureId,
                            colorCorrectionMatrix = linearColorCorrectionMatrix,
                            cameraWhite = linearCameraWhite,
                            hueSatMap = activeDcpRenderPlan?.hueSatMap,
                            profileToLinearSrgb = profileToLinearSrgbTransform,
                        )
                    }
                    renderOutputPass(
                        actualRotation,
                        actualWidth,
                        actualHeight,
                        bounds,
                        hdrReferenceTextureId,
                    )
                    val hdrGpuQueueWaitMs = GlesGpuCompletion.awaitSubmittedWork(
                        label = "RAW HDR reference output",
                        checkGlError = ::checkGlError,
                    )
                    val hdrReadStartNs = System.nanoTime()
                    val hdrPixels = readPixels(
                        finalWidth,
                        finalHeight,
                        android.graphics.ColorSpace.get(
                            android.graphics.ColorSpace.Named.LINEAR_EXTENDED_SRGB
                        ),
                    )
                    val hdrMaterializationMs =
                        (System.nanoTime() - hdrReadStartNs) / 1_000_000L
                    PLog.i(
                        TAG,
                        "RAW output materialization timing target=HDR " +
                            "renderGpuQueueWait=${hdrGpuQueueWaitMs}ms " +
                            "pixelTransferAndBitmap=${hdrMaterializationMs}ms " +
                            "total=${(System.nanoTime() - hdrStartNs) / 1_000_000L}ms",
                    )
                    hdrPixels
                } catch (cancellation: CancellationException) {
                    throw cancellation
                } catch (error: OutOfMemoryError) {
                    PLog.e(
                        TAG,
                        "Unable to allocate RAW HDR output; preserving SDR",
                        error,
                    )
                    null
                } catch (error: Exception) {
                    PLog.e(
                        TAG,
                        "Unable to materialize RAW HDR output; preserving SDR",
                        error,
                    )
                    null
                } finally {
                    releaseHdrReferenceFramebuffer()
                }
            } else {
                null
            }
            PLog.i(
                TAG,
                "RAW output schedule stage=HDR_BITMAP_COMPLETE enabled=$includeHdrReference " +
                    "success=${hdrReferenceBitmap != null}",
            )

            PLog.d(TAG, "RAW processing complete: ${finalBitmap.width}x${finalBitmap.height}")
            RawHdrRenderResult(
                sdrBitmap = finalBitmap,
                hdrReferenceBitmap = hdrReferenceBitmap,
                rawInputWidth = actualWidth,
                rawInputHeight = actualHeight,
                outputSourceBounds = Rect(outputSourceBounds),
                outputRotation = actualRotation,
                effectiveDefaultCrop = effectiveDefaultCrop?.let(::Rect),
            )
        } finally {
            if (rawTextureId == borrowedGpuSource?.textureId) {
                rawTextureId = 0
            }
            embeddedDngJpegPreview?.takeIf { !it.isRecycled }?.recycle()
            dngRawDataCleanup?.close()
        }
    }

    private suspend fun renderRawTiles(
        rawData: ByteBuffer,
        config: RawTileRenderConfig,
    ): RawTileBitmapResult? {
        val firstWorking = config.tiles.firstOrNull()?.sourceWorking ?: return null
        check(config.tiles.all {
            it.sourceWorking.width == firstWorking.width &&
                it.sourceWorking.height == firstWorking.height
        }) {
            "RAW tile resource reuse requires a stable working size"
        }
        val outputWidth = if (config.rotation == 90 || config.rotation == 270) {
            config.outputSourceBounds.height()
        } else {
            config.outputSourceBounds.width()
        }
        val outputHeight = if (config.rotation == 90 || config.rotation == 270) {
            config.outputSourceBounds.width()
        } else {
            config.outputSourceBounds.height()
        }
        val workingColorSpace = resolveWorkingColorSpace()
        val hdrColorSpace = android.graphics.ColorSpace.get(
            android.graphics.ColorSpace.Named.LINEAR_EXTENDED_SRGB
        )
        // Evict full-frame intermediates retained by a previous render before either tiled
        // destination is allocated.
        releaseTiledRenderFramebuffers()
        val sdrBitmap = try {
            createBitmap(
                outputWidth,
                outputHeight,
                Bitmap.Config.RGBA_F16,
                colorSpace = workingColorSpace,
            ).apply { density = Bitmap.DENSITY_NONE }
        } catch (error: OutOfMemoryError) {
            PLog.e(TAG, "Unable to allocate tiled RAW destination ${outputWidth}x$outputHeight", error)
            return null
        }
        val hdrBitmap = if (config.includeHdrReference) {
            try {
                createBitmap(
                    outputWidth,
                    outputHeight,
                    Bitmap.Config.RGBA_F16,
                    colorSpace = hdrColorSpace,
                ).apply { density = Bitmap.DENSITY_NONE }
            } catch (error: OutOfMemoryError) {
                PLog.e(
                    TAG,
                    "Unable to allocate tiled HDR reference destination ${outputWidth}x$outputHeight",
                    error,
                )
                sdrBitmap.recycle()
                return null
            }
        } else {
            null
        }
        val sdrCanvas = Canvas(sdrBitmap)
        val hdrCanvas = hdrBitmap?.let(::Canvas)
        val copyPaint = Paint().apply {
            isFilterBitmap = false
            blendMode = BlendMode.SRC
        }
        val maximumOutputWidth = config.tiles.maxOf { it.outputCore.width }
        val maximumOutputHeight = config.tiles.maxOf { it.outputCore.height }
        val estimatedTileGpuBytes =
            firstWorking.width.toLong() * firstWorking.height.toLong() * 96L
        val destinationBytes = outputWidth.toLong() * outputHeight.toLong() * 8L *
            if (config.includeHdrReference) 2L else 1L
        PLog.i(
            TAG,
            "RAW_TILE_PLAN mode=phocus-output-threaded tiles=${config.tiles.size} " +
                "core=${maximumOutputWidth}x$maximumOutputHeight " +
                "maxCoreEdge=$RAW_TILE_MAX_CORE_EDGE_PX support=${RAW_TILE_SUPPORT_PX}px " +
                "work=${firstWorking.width}x${firstWorking.height} " +
                "output=${outputWidth}x$outputHeight serialGpu=true queueDepth=1 " +
                "estimatedTileGpuMiB=${estimatedTileGpuBytes / (1024L * 1024L)} " +
                "destinationMiB=${destinationBytes / (1024L * 1024L)}",
        )

        var completed = false
        var userAdjustmentNoiseTransfer: DemosaicNoiseTransfer? = null
        val userAdjustmentDenoiseEnabled =
            (config.denoiseValue ?: 0f) > 0f || (config.chromaDenoiseValue ?: 0f) > 0f
        try {
            if (userAdjustmentDenoiseEnabled && config.samplesPerPixel == 1) {
                // The calibration atlas runs once. Do not retain its 1024x256 intermediates in
                // the full-size tile pool for the remainder of this render.
                vgnDemosaicAlgorithm.setTileTexturePoolingEnabled(false)
                userAdjustmentNoiseTransfer =
                    demosaicNoisePropagationCalibrator.prepareUserAdjustment(
                        config.metadata,
                        demosaicCalculationWbGains(config.metadata),
                    )
            }
            vgnDemosaicAlgorithm.setTileTexturePoolingEnabled(true)
            setupOutputFramebuffer(maximumOutputWidth, maximumOutputHeight)

            for (tile in config.tiles) {
                currentCoroutineContext().ensureActive()
                val tileStartNs = System.nanoTime()
                val working = tile.sourceWorking
                val workWidth = working.width
                val workHeight = working.height
                uploadRawTextureRegion(
                    buffer = rawData,
                    rowStride = config.rowStride,
                    region = working,
                    samplesPerPixel = config.samplesPerPixel,
                )
                setupFullResFramebuffer(workWidth, workHeight)

                when {
                    config.samplesPerPixel in 3..4 -> {
                        renderLinearRawRgbToTexture(
                            sourceTextureId = rawTextureId,
                            sourceSamplesPerPixel = config.samplesPerPixel,
                            targetTextureId = demosaicTextureId,
                            width = workWidth,
                            height = workHeight,
                        )
                    }

                    RawMetadata.isQuadBayer(config.metadata.cfaPattern) -> {
                        check(ensureQuadBayerPrograms()) {
                            "Unable to initialize Quad Bayer tile programs"
                        }
                        runQuadBayerDemosaic(
                            metadata = config.metadata,
                            width = workWidth,
                            height = workHeight,
                            highlightReconstructionEnabled = true,
                            globalOriginX = working.left,
                            globalOriginY = working.top,
                        )
                    }

                    else -> {
                        check(ensureVgnPrograms()) {
                            "Unable to initialize Standard Bayer VGN tile programs"
                        }
                        runStandardBayerVgnDemosaic(
                            metadata = config.metadata,
                            width = workWidth,
                            height = workHeight,
                            highlightReconstructionEnabled = true,
                            globalOriginX = working.left,
                            globalOriginY = working.top,
                        )
                    }
                }

                val localSourceCore = Rect(
                    tile.sourceCore.left - working.left,
                    tile.sourceCore.top - working.top,
                    tile.sourceCore.right - working.left,
                    tile.sourceCore.bottom - working.top,
                )
                val localOutputBounds = localSourceCore.toOutputBounds(config.rotation)
                check(
                    localOutputBounds.width() == tile.outputCore.width &&
                        localOutputBounds.height() == tile.outputCore.height
                ) {
                    "RAW tile rotation mapping mismatch: output=${tile.outputCore} " +
                        "source=${tile.sourceCore}"
                }

                if (config.includeHdrReference) {
                    setupHdrReferenceFramebuffer(workWidth, workHeight)
                    renderHdrReferencePass(
                        metadata = config.metadata,
                        rawExposureCompensation = config.rawExposureCompensation,
                        inputTextureId = demosaicTextureId,
                        colorCorrectionMatrix = config.linearColorCorrectionMatrix,
                        cameraWhite = config.linearCameraWhite,
                        hueSatMap = config.hueSatMap,
                        profileToLinearSrgb = config.profileToLinearSrgbTransform,
                        viewportWidth = workWidth,
                        viewportHeight = workHeight,
                    )
                    renderOutputPass(
                        rotation = config.rotation,
                        width = workWidth,
                        height = workHeight,
                        bounds = localOutputBounds,
                        sourceTextureId = hdrReferenceTextureId,
                    )
                    val tileBitmap = readTilePixels(
                        width = tile.outputCore.width,
                        height = tile.outputCore.height,
                        colorSpace = hdrColorSpace,
                    ) ?: return null
                    try {
                        hdrCanvas?.drawBitmap(
                            tileBitmap,
                            tile.outputCore.left.toFloat(),
                            tile.outputCore.top.toFloat(),
                            copyPaint,
                        )
                    } finally {
                        tileBitmap.recycle()
                    }
                }

                val denoisedTextureId = renderMgcUserAdjustmentDenoise(
                    context = config.context,
                    sourceTextureId = demosaicTextureId,
                    width = workWidth,
                    height = workHeight,
                    metadata = config.metadata,
                    demosaicNoiseTransfer = userAdjustmentNoiseTransfer,
                    denoiseValue = config.denoiseValue,
                    chromaDenoiseValue = config.chromaDenoiseValue,
                    globalOriginX = working.left,
                    globalOriginY = working.top,
                    fullImageWidth = config.fullWidth,
                    fullImageHeight = config.fullHeight,
                ) ?: run {
                    val fallbackChromaTextureId = renderDefaultChromaDenoise(
                        sourceTextureId = demosaicTextureId,
                        width = workWidth,
                        height = workHeight,
                        metadata = config.metadata,
                        chromaDenoiseValue = config.chromaDenoiseValue,
                    )
                    renderDenoiseProfilePass(
                        sourceTextureId = fallbackChromaTextureId,
                        width = workWidth,
                        height = workHeight,
                        metadata = config.metadata,
                        denoiseValue = config.denoiseValue,
                    )
                }
                renderLinearRcdPass(
                    metadata = config.metadata,
                    sourceTextureId = denoisedTextureId,
                    targetFramebufferId = linearOutputFramebufferId,
                    viewportWidth = workWidth,
                    viewportHeight = workHeight,
                    rawExposureCompensation = 0f,
                    colorCorrectionMatrix = config.linearColorCorrectionMatrix,
                    cameraWhite = config.linearCameraWhite,
                    hueSatMap = config.hueSatMap,
                    applyDngBaselineExposure = config.applyLinearDngBaselineExposure,
                    clampProfileRgb = config.clampProfileRgb,
                    hueSatMapSupportsOverrange = config.hueSatMapSupportsOverrange,
                    hncsCameraDomainGains = config.hncsCameraDomainGains,
                    label = "LinearRcdTilePass",
                )

                val tempTexture = demosaicTextureId
                demosaicTextureId = linearOutputTextureId
                linearOutputTextureId = tempTexture
                val tempFramebuffer = demosaicFramebufferId
                demosaicFramebufferId = linearOutputFramebufferId
                linearOutputFramebufferId = tempFramebuffer

                val combinedRendered = renderCombinedPass(
                    metadata = config.metadata,
                    inputTextureId = demosaicTextureId,
                    dcpRenderPlan = config.activeDcpRenderPlan,
                    applyDcpHueSatMap = false,
                    profileExposureUniforms = config.profileExposureUniforms,
                    spectralFilmLut = config.spectralFilmLut,
                    hncsRenderPlan = config.hncsRenderPlan,
                    colorEngine = config.colorEngine,
                    outputWorkingColorSpace = config.engineWorkingColorSpace,
                    profileToEngineTransform = config.profileToEngineTransform,
                    shadowsHighlightsParams = config.shadowsHighlightsParams,
                    rawBlacksAdjustment = config.rawBlackPointCorrection,
                    rawWhitesAdjustment = config.rawWhitePointCorrection,
                    rawToneMappingParameters = config.rawToneMappingParameters,
                    applyProfileGainTableMap = config.hasProfileGainTableMap,
                    globalOriginX = working.left,
                    globalOriginY = working.top,
                    fullImageWidth = config.fullWidth,
                    fullImageHeight = config.fullHeight,
                    viewportWidth = workWidth,
                    viewportHeight = workHeight,
                )
                if (!combinedRendered) {
                    PLog.e(TAG, "Combined tile pass failed at tile=${tile.index}")
                    return null
                }
                setupSharpenFramebuffer(workWidth, workHeight)
                renderFinalSharpenPass(
                    metadata = config.metadata.copy(width = workWidth, height = workHeight),
                    sharpeningValue = config.sharpeningValue,
                    inputTextureId = combinedTextureId,
                )
                renderOutputPass(
                    rotation = config.rotation,
                    width = workWidth,
                    height = workHeight,
                    bounds = localOutputBounds,
                    sourceTextureId = sharpenTextureId,
                )
                val tileBitmap = readTilePixels(
                    width = tile.outputCore.width,
                    height = tile.outputCore.height,
                    colorSpace = workingColorSpace,
                ) ?: return null
                try {
                    sdrCanvas.drawBitmap(
                        tileBitmap,
                        tile.outputCore.left.toFloat(),
                        tile.outputCore.top.toFloat(),
                        copyPaint,
                    )
                } finally {
                    tileBitmap.recycle()
                }
                GlesGpuScheduler.waitForGpuCheckpoint(TAG, "RAW tile ${tile.index + 1}")
                PLog.d(
                    TAG,
                    "RAW_TILE_DONE index=${tile.index + 1}/${config.tiles.size} " +
                        "output=${tile.outputCore} source=${tile.sourceCore} work=$working " +
                        "tookMs=${(System.nanoTime() - tileStartNs) / 1_000_000}",
                )
            }
            completed = true
            PLog.i(
                TAG,
                "RAW_TILE_COMPLETE tiles=${config.tiles.size} output=${outputWidth}x$outputHeight",
            )
            return RawTileBitmapResult(
                sdrBitmap = sdrBitmap,
                hdrReferenceBitmap = hdrBitmap,
            )
        } finally {
            releaseTiledRenderFramebuffers()
            if (!completed) {
                if (!sdrBitmap.isRecycled) sdrBitmap.recycle()
                hdrBitmap?.takeIf { !it.isRecycled }?.recycle()
            }
        }
    }

    private fun uploadRawTextureRegion(
        buffer: ByteBuffer,
        rowStride: Int,
        region: RawTileRect,
        samplesPerPixel: Int,
    ) {
        require(samplesPerPixel == 1 || samplesPerPixel == 3 || samplesPerPixel == 4)
        val bytesPerPixel = samplesPerPixel * Short.SIZE_BYTES
        require(rowStride >= region.right * bytesPerPixel && rowStride % bytesPerPixel == 0)
        val requiredLimit = (region.bottom - 1).toLong() * rowStride.toLong() +
            region.right.toLong() * bytesPerPixel
        require(requiredLimit <= buffer.limit().toLong()) {
            "RAW tile $region exceeds source buffer: required=$requiredLimit limit=${buffer.limit()}"
        }
        val byteOffset = region.top.toLong() * rowStride.toLong() +
            region.left.toLong() * bytesPerPixel
        val uploadBuffer = buffer.duplicate().order(ByteOrder.nativeOrder()).apply {
            position(byteOffset.toInt())
        }
        val internalFormat = when (samplesPerPixel) {
            4 -> GLES30.GL_RGBA16UI
            3 -> GLES30.GL_RGB16UI
            else -> GLES30.GL_R16UI
        }
        val format = when (samplesPerPixel) {
            4 -> GLES30.GL_RGBA_INTEGER
            3 -> GLES30.GL_RGB_INTEGER
            else -> GLES30.GL_RED_INTEGER
        }
        if (rawTextureId == 0) {
            val textures = IntArray(1)
            GLES30.glGenTextures(1, textures, 0)
            rawTextureId = textures[0]
            rawTileTextureWidth = region.width
            rawTileTextureHeight = region.height
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, rawTextureId)
            GLES30.glTexStorage2D(
                GLES30.GL_TEXTURE_2D,
                1,
                internalFormat,
                rawTileTextureWidth,
                rawTileTextureHeight,
            )
        }
        require(
            rawTileTextureWidth == region.width && rawTileTextureHeight == region.height
        ) {
            "RAW tile upload changed dimensions: texture=${rawTileTextureWidth}x" +
                "$rawTileTextureHeight region=${region.width}x${region.height}"
        }
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, rawTextureId)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_NEAREST)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_NEAREST)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 2)
        GLES30.glPixelStorei(
            GLES30.GL_UNPACK_ROW_LENGTH,
            rowStride / bytesPerPixel,
        )
        GLES30.glTexSubImage2D(
            GLES30.GL_TEXTURE_2D,
            0,
            0,
            0,
            region.width,
            region.height,
            format,
            GLES30.GL_UNSIGNED_SHORT,
            uploadBuffer,
        )
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ROW_LENGTH, 0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        checkGlError("uploadRawTextureRegion")
    }

    private fun readTilePixels(
        width: Int,
        height: Int,
        colorSpace: android.graphics.ColorSpace,
    ): Bitmap? {
        val pixelSize = width * height * 8
        val pixelBuffer = try {
            obtainReadbackBuffer(pixelSize)
        } catch (error: OutOfMemoryError) {
            PLog.e(TAG, "Unable to allocate RAW tile readback ${width}x$height", error)
            return null
        }
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, outputFramebufferId)
        GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, 0)
        GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 8)
        pixelBuffer.clear()
        pixelBuffer.limit(pixelSize)
        GLES30.glReadPixels(
            0,
            0,
            width,
            height,
            GLES30.GL_RGBA,
            GLES30.GL_HALF_FLOAT,
            pixelBuffer,
        )
        checkGlError("readTilePixels")
        pixelBuffer.position(0)
        return try {
            createBitmap(
                width,
                height,
                Bitmap.Config.RGBA_F16,
                colorSpace = colorSpace,
            ).apply {
                density = Bitmap.DENSITY_NONE
                copyPixelsFromBuffer(pixelBuffer)
            }
        } catch (error: OutOfMemoryError) {
            PLog.e(TAG, "Unable to allocate RAW tile bitmap ${width}x$height", error)
            null
        }
    }

    private fun releaseTiledRenderFramebuffers() {
        vgnDemosaicAlgorithm.setTileTexturePoolingEnabled(false)
        if (rawTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(rawTextureId), 0)
            rawTextureId = 0
        }
        rawTileTextureWidth = 0
        rawTileTextureHeight = 0
        if (demosaicTextureId != 0 || linearOutputTextureId != 0) {
            GLES30.glDeleteTextures(
                2,
                intArrayOf(demosaicTextureId, linearOutputTextureId),
                0,
            )
        }
        if (demosaicFramebufferId != 0 || linearOutputFramebufferId != 0) {
            GLES30.glDeleteFramebuffers(
                2,
                intArrayOf(demosaicFramebufferId, linearOutputFramebufferId),
                0,
            )
        }
        demosaicTextureId = 0
        linearOutputTextureId = 0
        demosaicFramebufferId = 0
        linearOutputFramebufferId = 0
        demosaicWidth = 0
        demosaicHeight = 0

        releaseDenoiseProfileFramebuffers()
        releaseHdrReferenceFramebuffer()

        if (combinedTextureId != 0) GLES30.glDeleteTextures(1, intArrayOf(combinedTextureId), 0)
        if (combinedFramebufferId != 0) {
            GLES30.glDeleteFramebuffers(1, intArrayOf(combinedFramebufferId), 0)
        }
        combinedTextureId = 0
        combinedFramebufferId = 0
        combinedWidth = 0
        combinedHeight = 0

        if (engineToneTextureId != 0) GLES30.glDeleteTextures(1, intArrayOf(engineToneTextureId), 0)
        if (engineToneFramebufferId != 0) {
            GLES30.glDeleteFramebuffers(1, intArrayOf(engineToneFramebufferId), 0)
        }
        engineToneTextureId = 0
        engineToneFramebufferId = 0
        engineToneWidth = 0
        engineToneHeight = 0

        if (adjustmentTextureId != 0) GLES30.glDeleteTextures(1, intArrayOf(adjustmentTextureId), 0)
        if (adjustmentFramebufferId != 0) {
            GLES30.glDeleteFramebuffers(1, intArrayOf(adjustmentFramebufferId), 0)
        }
        adjustmentTextureId = 0
        adjustmentFramebufferId = 0
        adjustmentWidth = 0
        adjustmentHeight = 0

        if (sharpenTextureId != 0) GLES30.glDeleteTextures(1, intArrayOf(sharpenTextureId), 0)
        if (sharpenFramebufferId != 0) {
            GLES30.glDeleteFramebuffers(1, intArrayOf(sharpenFramebufferId), 0)
        }
        sharpenTextureId = 0
        sharpenFramebufferId = 0
        sharpenWidth = 0
        sharpenHeight = 0

        if (outputTextureId != 0) GLES30.glDeleteTextures(1, intArrayOf(outputTextureId), 0)
        if (outputFramebufferId != 0) {
            GLES30.glDeleteFramebuffers(1, intArrayOf(outputFramebufferId), 0)
        }
        outputTextureId = 0
        outputFramebufferId = 0
        if (pboId != 0) {
            GLES30.glDeleteBuffers(1, intArrayOf(pboId), 0)
            pboId = 0
            readbackPboSize = 0
        }
        releaseReadbackBuffer()
        checkGlError("releaseTiledRenderFramebuffers")
    }

    private fun generateProfileGainTableMapOnGpu(
        rawTextureId: Int,
        streamingRawData: ByteBuffer? = null,
        streamingRowStride: Int = 0,
        width: Int,
        height: Int,
        rawTextureWidth: Int = width,
        rawTextureHeight: Int = height,
        samplesPerPixel: Int,
        metadata: RawMetadata,
        statsBounds: Rect?,
        baselineExposureEv: Float,
        colorCorrectionMatrix: FloatArray,
        hueSatMap: DcpHueSatMap?,
        hueSatMapSupportsOverrange: Boolean,
        warpRectilinear: FloatArray? = null,
    ): DngProfileGainTableMap? {
        val streamingUploader = streamingRawData?.let {
            DngPhotonProfileGainTableAlgorithm.StreamingRawUploader {
                    buffer,
                    rowStride,
                    region,
                    inputSamplesPerPixel,
                ->
                uploadRawTextureRegion(
                    buffer = buffer,
                    rowStride = rowStride,
                    region = region,
                    samplesPerPixel = inputSamplesPerPixel,
                )
                this.rawTextureId
            }
        }
        return profileGainTableAlgorithm.execute(
            DngPhotonProfileGainTableAlgorithm.Input(
                rawTextureId = rawTextureId,
                streamingRawData = streamingRawData,
                streamingRowStride = streamingRowStride,
                width = width,
                height = height,
                rawTextureWidth = rawTextureWidth,
                rawTextureHeight = rawTextureHeight,
                samplesPerPixel = samplesPerPixel,
                metadata = metadata,
                statsBounds = statsBounds,
                baselineExposureEv = baselineExposureEv,
                colorCorrectionMatrix = colorCorrectionMatrix,
                hueSatMap = hueSatMap,
                hueSatMapSupportsOverrange = hueSatMapSupportsOverrange,
                warpRectilinear = warpRectilinear,
                lensShadingDescription = lensShadingLogString(metadata),
                bindLensShading = { program ->
                    bindLensShadingForProgram(program, metadata)
                },
                ensureHueSatTexture = dcpTextureResources::ensureHueSatTexture,
                ensureDummyHueSatTexture = dcpTextureResources::ensureDummyTexture,
                installProfileGainTableTexture = ::installProfileGainTableTexture,
                isNoOpWarp = ::isNoOpWarpRectilinear,
                streamingRawUploader = streamingUploader,
                releaseStreamingRawTexture = {
                    if (this.rawTextureId != 0) {
                        GLES30.glDeleteTextures(1, intArrayOf(this.rawTextureId), 0)
                        this.rawTextureId = 0
                        rawTileTextureWidth = 0
                        rawTileTextureHeight = 0
                    }
                },
            ),
        )?.map
    }

    private fun calculateOutputSourceBounds(
        width: Int,
        height: Int,
        aspectRatio: AspectRatio?,
        cropRegion: Rect?,
        metadataDefaultCrop: Rect?
    ): Rect {
        return RawDefaultCropOverride.resolveOutputSourceBounds(
            width = width,
            height = height,
            aspectRatio = aspectRatio,
            userCrop = cropRegion,
            metadataDefaultCrop = metadataDefaultCrop,
        )
    }

    private fun Rect.toOutputBounds(rotation: Int): Rect {
        return if (rotation == 90 || rotation == 270) {
            Rect(top, left, bottom, right)
        } else {
            Rect(this)
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

            if (!logGlResourceLimits()) {
                return false
            }

            // 初始化着色器和缓冲区
            initShaderProgram()
            val sharpenReady = sharpenPass.initialize()
            val outputReady = outputPass.initialize()
            val meteringReady = meteringDemosaicAlgorithm.initialize()
            val chromaDenoiseReady = chromaDenoiseAlgorithm.initialize()
            val pgtmReady = profileGainTableAlgorithm.initialize()
            if (!sharpenReady || !outputReady ||
                !chromaDenoiseReady ||
                !pgtmReady ||
                !meteringReady ||
                !linearRcdPass.isReady || !linearUintToFloatPass.isReady ||
                !linearFloatToUintPass.isReady || !linearRgbExpandPass.isReady
            ) {
                PLog.e(
                    TAG, "Critical shader programs failed to compile or link. " +
                            "sharpenReady=$sharpenReady outputReady=$outputReady " +
                            "chromaDenoiseReady=$chromaDenoiseReady " +
                            "pgtmReady=$pgtmReady " +
                            "meteringHalfReady=$meteringReady " +
                            "linearRcd=${linearRcdPass.isReady} " +
                            "linearRawUintToFloat=${linearUintToFloatPass.isReady} " +
                            "linearRawFloatToUint=${linearFloatToUintPass.isReady} " +
                            "linearRawRgbExpand=${linearRgbExpandPass.isReady}"
                )
                return false
            }

            // 创建静默遮挡图
            dummyShadingTextureId = createDummyShadingTexture()

            isInitialized = true
            PLog.d(TAG, "RawDemosaicProcessor initialized, took=${System.currentTimeMillis() - initializeStart}ms")
            return true

        } catch (e: Exception) {
            PLog.e(TAG, "Failed to initialize", e)
            return false
        }
    }

    private fun initShaderProgram() {
        hdrReferencePass.initialize()
        chromaDenoiseAlgorithm.initialize()
        // LinearRaw/Profile programs are common to both CFA and pre-demosaiced inputs.
        // Expensive CFA demosaic programs are compiled only if a CFA input actually needs them.
        initLinearRawPrograms()
        PLog.d(TAG, "Common RAW shader programs created")
    }

    private fun initLinearRawPrograms() {
        profileGainTableAlgorithm.initialize()
        meteringDemosaicAlgorithm.initialize()
        linearRcdPass.initialize()
        linearUintToFloatPass.initialize()
        linearFloatToUintPass.initialize()
        linearRgbExpandPass.initialize()
        warpRectilinearPass.initialize()
    }

    private fun ensureVgnPrograms(): Boolean {
        return vgnDemosaicAlgorithm.initialize()
    }

    private fun ensureQuadBayerPrograms(): Boolean {
        return quadBayerDemosaicAlgorithm.initialize()
    }

    /**
     * 初始化 darktable denoiseprofile compute 着色器。
     */
    private fun setupNLMFramebuffers(
        width: Int,
        height: Int,
        @Suppress("UNUSED_PARAMETER") setupLegacyAccumulator: Boolean = false,
    ) {
        if (gfWidth == width && gfHeight == height && gfTexId[0] != 0) return
        releaseDenoiseProfileFramebuffers()
        gfWidth = width
        gfHeight = height
        for (index in 0..1) {
            val textures = IntArray(1)
            val framebuffers = IntArray(1)
            GLES30.glGenTextures(1, textures, 0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, textures[0])
            GLES30.glTexStorage2D(
                GLES30.GL_TEXTURE_2D,
                1,
                GLES30.GL_RGBA16F,
                width,
                height,
            )
            GLES30.glTexParameteri(
                GLES30.GL_TEXTURE_2D,
                GLES30.GL_TEXTURE_MIN_FILTER,
                GLES30.GL_NEAREST,
            )
            GLES30.glTexParameteri(
                GLES30.GL_TEXTURE_2D,
                GLES30.GL_TEXTURE_MAG_FILTER,
                GLES30.GL_NEAREST,
            )
            GLES30.glTexParameteri(
                GLES30.GL_TEXTURE_2D,
                GLES30.GL_TEXTURE_WRAP_S,
                GLES30.GL_CLAMP_TO_EDGE,
            )
            GLES30.glTexParameteri(
                GLES30.GL_TEXTURE_2D,
                GLES30.GL_TEXTURE_WRAP_T,
                GLES30.GL_CLAMP_TO_EDGE,
            )
            GLES30.glGenFramebuffers(1, framebuffers, 0)
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebuffers[0])
            GLES30.glFramebufferTexture2D(
                GLES30.GL_FRAMEBUFFER,
                GLES30.GL_COLOR_ATTACHMENT0,
                GLES30.GL_TEXTURE_2D,
                textures[0],
                0,
            )
            check(GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER) ==
                GLES30.GL_FRAMEBUFFER_COMPLETE) {
                "RAW denoise scratch framebuffer $index is incomplete"
            }
            gfTexId[index] = textures[0]
            gfFboId[index] = framebuffers[0]
        }
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        checkGlError("setup RAW denoise scratch textures")
    }

    private fun releaseDenoiseProfileFramebuffers() {
        for (index in 0..1) {
            if (gfTexId[index] != 0) {
                GLES30.glDeleteTextures(1, intArrayOf(gfTexId[index]), 0)
                gfTexId[index] = 0
            }
            if (gfFboId[index] != 0) {
                GLES30.glDeleteFramebuffers(1, intArrayOf(gfFboId[index]), 0)
                gfFboId[index] = 0
            }
        }
        gfWidth = 0
        gfHeight = 0
    }

    private fun renderDefaultChromaDenoise(
        sourceTextureId: Int,
        width: Int,
        height: Int,
        metadata: RawMetadata,
        chromaDenoiseValue: Float?,
    ): Int {
        val strength = DenoiseStrength.clamp(chromaDenoiseValue)
        if (strength <= 0f || width * height < 2) return sourceTextureId
        if (linearOutputFramebufferId == 0 || linearOutputTextureId == 0) {
            PLog.w(TAG, "RAW chroma denoise target is unavailable")
            return sourceTextureId
        }

        setupNLMFramebuffers(width, height, setupLegacyAccumulator = false)
        val profileGain =
            (metadata.iso / 100f * metadata.postRawSensitivityBoost).coerceAtLeast(1f)
        val noise = resolveChromaDenoiseNoiseModel(metadata, profileGain)
        val output = chromaDenoiseAlgorithm.execute(
            ChromaDenoiseAlgorithm.Input(
                sourceTextureId = sourceTextureId,
                guideFramebufferId = gfFboId[0],
                guideTextureId = gfTexId[0],
                outputFramebufferId = linearOutputFramebufferId,
                outputTextureId = linearOutputTextureId,
                width = width,
                height = height,
                strength = strength,
                cameraRgbInput = true,
                noiseModel = ChromaDenoiseAlgorithm.NoiseModel(
                    redSlope = noise.redSlope,
                    redOffset = noise.redOffset,
                    greenSlope = noise.greenSlope,
                    greenOffset = noise.greenOffset,
                    blueSlope = noise.blueSlope,
                    blueOffset = noise.blueOffset,
                ),
            ),
        ) ?: return sourceTextureId
        return output.textureId
    }

    /**
     * Executes the extracted non-AI MGC chroma pyramid and/or Pecan luma stage.
     *
     * Camera RGB is already lens-shading corrected by demosaic. The LSC grid is
     * consumed only by ComputeDenoiseStrengthMaps and is never multiplied into
     * pixels again. Chroma and luma retain independent user switches.
     */
    private fun renderMgcUserAdjustmentDenoise(
        context: Context,
        sourceTextureId: Int,
        width: Int,
        height: Int,
        metadata: RawMetadata,
        demosaicNoiseTransfer: DemosaicNoiseTransfer?,
        denoiseValue: Float?,
        chromaDenoiseValue: Float?,
        globalOriginX: Int,
        globalOriginY: Int,
        fullImageWidth: Int,
        fullImageHeight: Int,
    ): Int? {
        val lumaStrength = DenoiseStrength.clamp(denoiseValue)
        val chromaStrength = DenoiseStrength.clamp(chromaDenoiseValue)
        val lumaEnabled = lumaStrength > 0f
        val chromaEnabled = chromaStrength > 0f
        val enabled = lumaEnabled || chromaEnabled
        if (!enabled || width * height < 2) {
            return sourceTextureId
        }
        if (!MgcFullResolutionDenoise.ensureInitialized(context)) {
            PLog.w(TAG, "MGC RunFullResolutionDenoise is not initialized")
            return null
        }
        setupNLMFramebuffers(
            width,
            height,
            setupLegacyAccumulator = false,
        )

        renderPassthroughToTexture(
            sourceTextureId,
            width,
            height,
            gfFboId[0],
        )
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, gfFboId[0])
        checkGlError("MGC denoise prepare camera RGB")

        val byteCountLong =
            width.toLong() * height.toLong() * 4L * Short.SIZE_BYTES
        if (byteCountLong <= 0L || byteCountLong > Int.MAX_VALUE) {
            PLog.e(TAG, "MGC denoise readback size is invalid: $byteCountLong")
            return null
        }
        val byteCount = byteCountLong.toInt()
        val readback = try {
            obtainReadbackBuffer(byteCount)
        } catch (error: OutOfMemoryError) {
            PLog.e(
                TAG,
                "Unable to allocate MGC denoise readback ${width}x$height",
                error,
            )
            return null
        }
        GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, 0)
        GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 8)
        readback.clear()
        readback.limit(byteCount)
        val readbackStartNs = System.nanoTime()
        GLES30.glReadPixels(
            0,
            0,
            width,
            height,
            GLES30.GL_RGBA,
            GLES30.GL_HALF_FLOAT,
            readback,
        )
        checkGlError("MGC denoise camera RGB readback")
        readback.position(0)

        val nativeStartNs = System.nanoTime()
        // Ordinary CFA RAW sources receive a measured single-frame SNR in withMgcRenderTuning().
        // Keep the legacy coordinate only for editing sources whose layout/noise profile cannot
        // produce that physical measurement; Spatial/Sabre defaults never enter this fallback.
        val tuningSnr = metadata.mgcDenoiseTuningSnr ?: (
                metadata.iso.toFloat() / 100.0f *
                    metadata.postRawSensitivityBoost
                ).coerceAtLeast(0.001f).also { fallbackSnr ->
                PLog.w(
                    TAG,
                    "MGC USER_ADJUSTMENT uses legacy tuning coordinate: " +
                        "layout=${metadata.noiseProfileLayout} iso=${metadata.iso} " +
                        "postRawBoost=${metadata.postRawSensitivityBoost} snr=$fallbackSnr",
                )
            }
        if (!MgcFullResolutionDenoise.denoise(
                rgba16f = readback,
                width = width,
                height = height,
                globalOriginX = globalOriginX,
                globalOriginY = globalOriginY,
                fullWidth = fullImageWidth,
                fullHeight = fullImageHeight,
                metadata = metadata,
                preparedYuvNoiseModel = demosaicNoiseTransfer,
                applyLensShadingToDenoiseStrength = hasValidLensShadingMap(metadata),
                tuningSnr = tuningSnr,
                pass = MgcFullResolutionDenoise.Pass.USER_ADJUSTMENT,
                lumaStrengthScale = lumaStrength,
                chromaStrengthScale = chromaStrength,
            )
        ) {
            return null
        }

        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, gfTexId[0])
        readback.position(0)
        readback.limit(byteCount)
        GLES30.glBindBuffer(GLES30.GL_PIXEL_UNPACK_BUFFER, 0)
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ROW_LENGTH, 0)
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 8)
        try {
            GLES30.glTexSubImage2D(
                GLES30.GL_TEXTURE_2D,
                0,
                0,
                0,
                width,
                height,
                GLES30.GL_RGBA,
                GLES30.GL_HALF_FLOAT,
                readback,
            )
        } finally {
            GLES30.glPixelStorei(GLES30.GL_UNPACK_ROW_LENGTH, 0)
            GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 1)
        }
        checkGlError("MGC denoise camera RGB upload")

        renderPassthroughToTexture(
            gfTexId[0],
            width,
            height,
            gfFboId[1],
        )
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        checkGlError("MGC denoise output RGB")
        PLog.d(
            TAG,
            "MGC static denoise timing size=${width}x$height " +
                "pass=USER_ADJUSTMENT " +
                "luma=$lumaEnabled($lumaStrength) " +
                "chroma=$chromaEnabled($chromaStrength) " +
                "noiseTransfer=${demosaicNoiseTransfer?.let {
                    if (RawMetadata.isQuadBayer(metadata.cfaPattern)) {
                        "QUAD_BAYER"
                    } else {
                        "STANDARD_BAYER_VGN"
                    }
                } ?: "identity"} " +
                "lscStrength=${lensShadingLogString(metadata)} " +
                "readbackMs=${(nativeStartNs - readbackStartNs) / 1_000_000L} " +
                "nativeMs=${(System.nanoTime() - nativeStartNs) / 1_000_000L}",
        )
        return gfTexId[1]
    }

    /**
     * 渲染 darktable denoiseprofile NLM 降噪。
     *
     * 管线: 未白平衡 camera RGB → variance-stabilizing transform → NLM accumulate
     * → inverse transform → 未白平衡 camera RGB (gfFboId[1])。
     */
    private fun renderDenoiseProfilePass(
        sourceTextureId: Int,
        width: Int,
        height: Int,
        metadata: RawMetadata,
        denoiseValue: Float?,
    ): Int {
        val strength = DenoiseStrength.clamp(denoiseValue)
        if (strength <= 0f || width * height < 2) return sourceTextureId
        val profileGain =
            (metadata.iso / 100f * metadata.postRawSensitivityBoost).coerceAtLeast(1f)
        val (noiseSlope, noiseOffset) =
            resolveDenoiseProfileNoiseModel(metadata, profileGain)
        val wb = demosaicCalculationWbGains(metadata)
        return denoiseProfileAlgorithm.execute(
            DenoiseProfileAlgorithm.Input(
                sourceTextureId = sourceTextureId,
                width = width,
                height = height,
                strength = strength,
                noiseSlope = noiseSlope,
                noiseOffset = noiseOffset,
                adaptiveWhiteBalance = floatArrayOf(wb[0], 1f, wb[3]),
            ),
        )?.textureId ?: sourceTextureId
    }

    private fun renderPassthroughToTexture(
        sourceTextureId: Int,
        width: Int,
        height: Int,
        framebufferId: Int
    ) {
        checkNotNull(
            outputPass.copy(
                textureId = sourceTextureId,
                targetFramebufferId = framebufferId,
                targetTextureId = 0,
                width = width,
                height = height,
            ),
        ) { "RAW passthrough copy failed" }
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        checkGlError("DenoiseProfile passthrough")
    }

    private fun renderWarpRectilinearPass(
        sourceTextureId: Int,
        targetFramebufferId: Int,
        width: Int,
        height: Int,
        parameters: FloatArray,
    ): Boolean {
        return warpRectilinearPass.render(
            RawWarpRectilinearPass.Input(
                textureId = sourceTextureId,
                targetFramebufferId = targetFramebufferId,
                targetTextureId = linearOutputTextureId,
                width = width,
                height = height,
                parameters = parameters,
            ),
        ) != null
    }

    private fun isNoOpWarpRectilinear(parameters: FloatArray): Boolean {
        if (parameters.size != 8) return false
        return parameters[0] == 1f && (1..5).all { index -> parameters[index] == 0f }
    }

    private fun filterApplicableWarpRectilinear(
        warps: FloatArray?,
        flags: IntArray?,
        width: Int,
        height: Int,
        outputSourceBounds: Rect,
    ): FloatArray? {
        if (warps == null || warps.isEmpty()) return null
        if (warps.size % 8 != 0) {
            PLog.w(TAG, "Ignoring malformed DNG WarpRectilinear array size=${warps.size}")
            return null
        }
        val opcodeCount = warps.size / 8
        if (flags != null && flags.size != opcodeCount) {
            PLog.w(
                TAG,
                "DNG WarpRectilinear flags count=${flags.size} does not match opcodes=$opcodeCount",
            )
        }

        val applicable = ArrayList<Float>(warps.size)
        for (opcodeIndex in 0 until opcodeCount) {
            val offset = opcodeIndex * 8
            val parameters = warps.copyOfRange(offset, offset + 8)
            if (isNoOpWarpRectilinear(parameters)) {
                PLog.d(TAG, "Skipping no-op DNG WarpRectilinear")
                continue
            }
            val opcodeFlags = flags?.getOrNull(opcodeIndex) ?: 0
            val decision = DngWarpRectilinear.decide(
                parameters = parameters,
                flags = opcodeFlags,
                width = width,
                height = height,
                left = outputSourceBounds.left,
                top = outputSourceBounds.top,
                right = outputSourceBounds.right,
                bottom = outputSourceBounds.bottom,
            )
            when (decision.rejection) {
                DngWarpRectilinear.Rejection.NONE -> {
                    parameters.forEach(applicable::add)
                }
                DngWarpRectilinear.Rejection.MALFORMED_OR_UNSAFE -> {
                    PLog.w(
                        TAG,
                        "Skipping malformed or numerically unsafe DNG WarpRectilinear " +
                            "flags=$opcodeFlags parameters=${parameters.contentToString()}",
                    )
                }
                DngWarpRectilinear.Rejection.OPTIONAL_REQUIRES_EDGE_CLAMPING -> {
                    PLog.w(
                        TAG,
                        "Skipping optional DNG WarpRectilinear without source coverage for " +
                            "DefaultCrop=$outputSourceBounds; applying it would repeat edge pixels. " +
                            "parameters=${parameters.contentToString()}",
                    )
                }
            }
        }
        return applicable.takeIf { it.isNotEmpty() }?.toFloatArray()
    }

    private fun roundUp(value: Int, multiple: Int): Int {
        return ((value + multiple - 1) / multiple) * multiple
    }

    private fun resolveDenoiseProfileNoiseModel(
        metadata: RawMetadata,
        fallbackGain: Float
    ): Pair<Float, Float> {
        val greenProfile = RawMetadata.greenNoiseProfile(
            metadata.channelNoiseProfile,
            metadata.cfaPattern,
            metadata.noiseProfileLayout,
        )
        val averageProfile = averageLegacyNoiseProfile(metadata.channelNoiseProfile)
        var slope = greenProfile[0].takeIf { it > 0f }
            ?: averageProfile[0]
        var offset = greenProfile[1].takeIf { it > 0f }
            ?: averageProfile[1]

        if (!slope.isFinite() || slope <= 0f) {
            slope = 1E-4f * fallbackGain
        }
        if (!offset.isFinite() || offset <= 0f) {
            offset = 4.5E-7f * sqrt(fallbackGain)
        }

        // An average of N registered RAW frames reduces both Poisson and read variance by N.
        val frameNoiseScale = 1f / metadata.frameCount.coerceAtLeast(1).toFloat()
        return (slope * frameNoiseScale).coerceAtLeast(1e-10f) to
            (offset * frameNoiseScale).coerceAtLeast(1e-10f)
    }

    private data class ChromaDenoiseNoiseModel(
        val redSlope: Float,
        val redOffset: Float,
        val greenSlope: Float,
        val greenOffset: Float,
        val blueSlope: Float,
        val blueOffset: Float
    )

    private fun resolveChromaDenoiseNoiseModel(
        metadata: RawMetadata,
        fallbackGain: Float
    ): ChromaDenoiseNoiseModel {
        val redBlueProfile = RawMetadata.redBlueNoiseProfile(
            metadata.channelNoiseProfile,
            metadata.cfaPattern,
            metadata.noiseProfileLayout,
        )
        val averageProfile = averageLegacyNoiseProfile(metadata.channelNoiseProfile)
        val fallbackSlope = averageProfile[0]
            .takeIf { it.isFinite() && it > 0f }
            ?: (1E-4f * fallbackGain)
        val fallbackOffset = averageProfile[1]
            .takeIf { it.isFinite() && it > 0f }
            ?: (4.5E-7f * sqrt(fallbackGain))

        fun coefficient(index: Int, fallback: Float): Float {
            return redBlueProfile.getOrElse(index) { 0f }
                .takeIf { it.isFinite() && it > 0f }
                ?: fallback
        }

        val (greenSlope, greenOffset) =
            resolveDenoiseProfileNoiseModel(metadata, fallbackGain)
        val frameNoiseScale = 1f / metadata.frameCount.coerceAtLeast(1).toFloat()
        return ChromaDenoiseNoiseModel(
            redSlope =
                (coefficient(0, fallbackSlope) * frameNoiseScale)
                    .coerceAtLeast(1e-10f),
            redOffset =
                (coefficient(1, fallbackOffset) * frameNoiseScale)
                    .coerceAtLeast(1e-10f),
            greenSlope = greenSlope,
            greenOffset = greenOffset,
            blueSlope =
                (coefficient(2, fallbackSlope) * frameNoiseScale)
                    .coerceAtLeast(1e-10f),
            blueOffset =
                (coefficient(3, fallbackOffset) * frameNoiseScale)
                    .coerceAtLeast(1e-10f)
        )
    }

    /** Scalar fallback kept local to the legacy darktable-style denoise path. */
    private fun averageLegacyNoiseProfile(channelNoiseProfile: FloatArray): FloatArray {
        var sumShot = 0.0
        var sumRead = 0.0
        var count = 0
        var index = 0
        while (index + 1 < channelNoiseProfile.size) {
            val shot = channelNoiseProfile[index]
                .takeIf { it.isFinite() && it >= 0f } ?: 0f
            val read = channelNoiseProfile[index + 1]
                .takeIf { it.isFinite() && it >= 0f } ?: 0f
            if (shot > 0f || read > 0f) {
                sumShot += shot
                sumRead += read
                count++
            }
            index += 2
        }
        return if (count > 0) {
            floatArrayOf((sumShot / count).toFloat(), (sumRead / count).toFloat())
        } else {
            floatArrayOf(0f, 0f)
        }
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
        rowStride: Int,
        samplesPerPixel: Int,
    ) {
        require(samplesPerPixel == 3 || samplesPerPixel == 4) {
            "LinearRaw upload requires RGB or RGBX input, got samplesPerPixel=$samplesPerPixel"
        }
        // LinearRaw may be consumed through glBindImageTexture. Recreate it because immutable
        // texture storage cannot be resized or have its internal format changed in place.
        if (rawTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(rawTextureId), 0)
        }
        val textures = IntArray(1)
        GLES30.glGenTextures(1, textures, 0)
        rawTextureId = textures[0]

        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, rawTextureId)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_NEAREST)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_NEAREST)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)

        buffer.position(0)
        val bytesPerPixel = samplesPerPixel * Short.SIZE_BYTES
        val rowLength = rowStride / bytesPerPixel
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 2)
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ROW_LENGTH, rowLength)
        // Only the combinations listed by the ES texture-upload table are legal. RGB16UI is
        // expanded into image-load-compatible RGBA16UI later by an integer-only compute pass.
        val internalFormat = if (samplesPerPixel == 4) GLES30.GL_RGBA16UI else GLES30.GL_RGB16UI
        val format = if (samplesPerPixel == 4) GLES30.GL_RGBA_INTEGER else GLES30.GL_RGB_INTEGER
        GLES30.glTexStorage2D(
            GLES30.GL_TEXTURE_2D,
            1,
            internalFormat,
            width,
            height,
        )
        GLES30.glTexSubImage2D(
            GLES30.GL_TEXTURE_2D,
            0,
            0,
            0,
            width,
            height,
            format,
            GLES30.GL_UNSIGNED_SHORT,
            buffer
        )
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ROW_LENGTH, 0)
        checkGlError("uploadLinearRawRgbTextureFromBuffer samplesPerPixel=$samplesPerPixel")
    }

    private fun renderLinearRawRgbToTexture(
        sourceTextureId: Int,
        sourceSamplesPerPixel: Int,
        targetTextureId: Int,
        width: Int,
        height: Int
    ) {
        require(sourceSamplesPerPixel == 3 || sourceSamplesPerPixel == 4) {
            "LinearRaw rendering requires RGB or RGBA, got $sourceSamplesPerPixel samples"
        }
        if (sourceSamplesPerPixel == 4) {
            checkNotNull(
                linearUintToFloatPass.render(
                    RawLinearUintToFloatPass.Input(
                        textureId = sourceTextureId,
                        targetTextureId = targetTextureId,
                        outputY = 0,
                        rowCount = height,
                        width = width,
                        waitForCpuReuse = false,
                        label = "LinearRaw RGBA16UI to RGBA16F ${width}x$height",
                    ),
                ),
            ) { "Linear RAW uint-to-float pass failed" }
            return
        }

        val expansionHeight = minOf(height, LINEAR_RAW_RGB_EXPANSION_ROWS)
        val expandedTexture = IntArray(1)
        GLES30.glGenTextures(1, expandedTexture, 0)
        val expandedTextureId = expandedTexture[0]
        try {
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, expandedTextureId)
            GLES30.glTexParameteri(
                GLES30.GL_TEXTURE_2D,
                GLES30.GL_TEXTURE_MIN_FILTER,
                GLES30.GL_NEAREST,
            )
            GLES30.glTexParameteri(
                GLES30.GL_TEXTURE_2D,
                GLES30.GL_TEXTURE_MAG_FILTER,
                GLES30.GL_NEAREST,
            )
            GLES30.glTexParameteri(
                GLES30.GL_TEXTURE_2D,
                GLES30.GL_TEXTURE_WRAP_S,
                GLES30.GL_CLAMP_TO_EDGE,
            )
            GLES30.glTexParameteri(
                GLES30.GL_TEXTURE_2D,
                GLES30.GL_TEXTURE_WRAP_T,
                GLES30.GL_CLAMP_TO_EDGE,
            )
            GLES30.glTexStorage2D(
                GLES30.GL_TEXTURE_2D,
                1,
                GLES30.GL_RGBA16UI,
                width,
                expansionHeight,
            )

            var sourceY = 0
            while (sourceY < height) {
                val rowCount = minOf(expansionHeight, height - sourceY)
                checkNotNull(
                    linearRgbExpandPass.render(
                        RawLinearRgbExpandPass.Input(
                            textureId = sourceTextureId,
                            targetTextureId = expandedTextureId,
                            sourceY = sourceY,
                            rowCount = rowCount,
                            width = width,
                        ),
                    ),
                ) { "Linear RAW RGB expansion pass failed" }
                checkNotNull(
                    linearUintToFloatPass.render(
                        RawLinearUintToFloatPass.Input(
                            textureId = expandedTextureId,
                            targetTextureId = targetTextureId,
                            outputY = sourceY,
                            rowCount = rowCount,
                            width = width,
                            waitForCpuReuse = true,
                            label =
                                "LinearRaw RGB16UI to RGBA16F rows=$sourceY..${sourceY + rowCount}",
                        ),
                    ),
                ) { "Linear RAW uint-to-float pass failed" }
                sourceY += rowCount
            }
        } finally {
            GLES31.glBindImageTexture(
                0,
                0,
                0,
                false,
                0,
                GLES31.GL_READ_ONLY,
                GLES31.GL_RGBA16UI,
            )
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
            GLES30.glDeleteTextures(1, expandedTexture, 0)
        }
    }

    private fun createNormalizedLinearRawTexture(width: Int, height: Int): Int {
        val textures = IntArray(1)
        GLES30.glGenTextures(1, textures, 0)
        val texture = textures[0]
        check(texture != 0) { "Unable to allocate normalized LinearRaw output texture" }
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_MIN_FILTER,
            GLES30.GL_NEAREST,
        )
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_MAG_FILTER,
            GLES30.GL_NEAREST,
        )
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_WRAP_S,
            GLES30.GL_CLAMP_TO_EDGE,
        )
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_WRAP_T,
            GLES30.GL_CLAMP_TO_EDGE,
        )
        GLES30.glTexStorage2D(
            GLES30.GL_TEXTURE_2D,
            1,
            GLES30.GL_RGBA16UI,
            width,
            height,
        )
        checkGlError("allocate normalized LinearRaw ${width}x$height")
        return texture
    }

    private fun renderLinearRawFloatToUint(
        sourceTextureId: Int,
        targetTextureId: Int,
        width: Int,
        height: Int,
    ) {
        checkNotNull(
            linearFloatToUintPass.render(
                RawLinearFloatToUintPass.Input(
                    textureId = sourceTextureId,
                    targetTextureId = targetTextureId,
                    width = width,
                    height = height,
                ),
            ),
        ) { "Linear RAW float-to-uint pass failed" }
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



    /**
     * Exposes Spatial AOT's already propagated output model as the noise profile of the one
     * merged Bayer image. frameCount is one here only to prevent VGN's single-frame threshold
     * resolver from dividing the AOT coefficients by the burst count a second time.
     */
    private fun spatialOutputNoiseMetadata(metadata: RawMetadata): RawMetadata {
        val read = checkNotNull(metadata.mgcDenoiseReadNoise) {
            "Spatial AOT output read coefficients are unavailable"
        }
        val shot = checkNotNull(metadata.mgcDenoiseShotNoise) {
            "Spatial AOT output shot coefficients are unavailable"
        }
        check(
            read.size == 3 && shot.size == 3 &&
                read.all { it.isFinite() && it >= 0f } &&
                shot.all { it.isFinite() && it >= 0f } &&
                (read.any { it > 0f } || shot.any { it > 0f }),
        ) { "Spatial AOT output noise coefficients are malformed" }
        PLog.i(
            TAG,
            "MGC Spatial default denoise noise source=spatial-aot " +
                "captureFrames=${metadata.frameCount} " +
                "read=${read.contentToString()} shot=${shot.contentToString()}",
        )
        return metadata.copy(
            frameCount = 1,
            channelNoiseProfile = floatArrayOf(
                shot[0], read[0],
                shot[1], read[1],
                shot[2], read[2],
            ),
            noiseProfileLayout = RawNoiseProfileLayout.DNG_RGB,
        )
    }

    /**
     * Reproduces classic Sabre's MergeRaw metadata branch. Sabre's merge first derives an output
     * NoiseModel from its accumulated frame weights; MergeRaw then applies the SNR-table variance
     * reduction at libgcastartup.so+0x388396c. Photon transports both scalar stages through
     * [RawMetadata.mgcSabreNoiseModelScale]. Sabre does not expose Spatial correlation data.
     */
    private fun sabreOutputNoiseMetadata(metadata: RawMetadata): RawMetadata {
        val scale = checkNotNull(metadata.mgcSabreNoiseModelScale) {
            "Sabre NoiseModel coefficient scale is unavailable"
        }
        check(scale.isFinite() && scale > 0f) {
            "Sabre NoiseModel coefficient scale is malformed: $scale"
        }
        val rgbNoise = checkNotNull(
            MgcFullResolutionDenoise.resolveUserAdjustmentCameraRgbNoise(metadata),
        ) { "Sabre physical Bayer noise model is unavailable" }
        PLog.i(
            TAG,
            "MGC Sabre default denoise noise source=reference-bayer*merge-factor*sabre-snr-scale " +
                "captureFrames=${metadata.frameCount} scale=$scale " +
                "read=${rgbNoise.read.contentToString()} " +
                "shot=${rgbNoise.shot.contentToString()}",
        )
        return metadata.copy(
            frameCount = 1,
            mgcDenoiseCorrelation = null,
            mgcDenoiseReadNoise = null,
            mgcDenoiseShotNoise = null,
            mgcSpatialStrengthMap = null,
        )
    }

    /**
     * Collapses each standard Bayer 2x2 cell to one camera-RGB texel for capture-side exposure
     * matching. The result stays in the same un-white-balanced, lens-shading-corrected domain as
     * the full VGN output, so the existing DCP/default-curve preview path remains authoritative.
     */
    private fun runHalfResolutionMeteringDemosaic(
        metadata: RawMetadata,
        width: Int,
        height: Int,
    ) {
        val outputWidth = (width + 1) / 2
        val outputHeight = (height + 1) / 2
        check(demosaicWidth == outputWidth && demosaicHeight == outputHeight) {
            "RAW metering target mismatch: ${demosaicWidth}x$demosaicHeight, " +
                "expected=${outputWidth}x$outputHeight"
        }
        val blackLevel4 = FloatArray(4) { index ->
            metadata.blackLevel.getOrElse(index) {
                metadata.blackLevel.firstOrNull() ?: 0f
            }.coerceAtLeast(0f)
        }
        checkNotNull(
            meteringDemosaicAlgorithm.execute(
                RawMeteringDemosaicAlgorithm.Input(
                    rawTextureId = rawTextureId,
                    outputTextureId = demosaicTextureId,
                    width = width,
                    height = height,
                    cfaPattern = metadata.cfaPattern,
                    blackLevel = blackLevel4,
                    whiteLevel = metadata.whiteLevel,
                    bindLensShading = { program ->
                        bindLensShadingForProgram(program, metadata)
                    },
                ),
            )
        ) { "RAW metering half-resolution program is unavailable" }
    }

    private fun runStandardBayerVgnDemosaic(
        metadata: RawMetadata,
        width: Int,
        height: Int,
        highlightReconstructionEnabled: Boolean,
        globalOriginX: Int = 0,
        globalOriginY: Int = 0,
        rawInputTextureId: Int = rawTextureId,
        linearOutputTargetTextureId: Int = linearOutputTextureId,
        outputTargetTextureId: Int = demosaicTextureId,
    ) {
        val hotPixelNoise = resolveChromaDenoiseNoiseModel(metadata, 1f)
        val (_, denoiseReadNoiseOffset) = resolveDenoiseProfileNoiseModel(metadata, 1f)
        checkNotNull(
            vgnDemosaicAlgorithm.execute(
                VgnDemosaicAlgorithm.Input(
                    metadata = metadata,
                    rawTextureId = rawInputTextureId,
                    linearOutputTextureId = linearOutputTargetTextureId,
                    outputTextureId = outputTargetTextureId,
                    lensShadingTextureId = lensShadingTextureId,
                    width = width,
                    height = height,
                    highlightReconstructionEnabled = highlightReconstructionEnabled,
                    globalOriginX = globalOriginX,
                    globalOriginY = globalOriginY,
                    calculationWhiteBalanceGains = demosaicCalculationWbGains(metadata),
                    denoiseReadNoiseOffset = denoiseReadNoiseOffset,
                    hotPixelNoiseSlope = floatArrayOf(
                        hotPixelNoise.redSlope,
                        hotPixelNoise.greenSlope,
                        hotPixelNoise.blueSlope,
                    ),
                    hotPixelNoiseOffset = floatArrayOf(
                        hotPixelNoise.redOffset,
                        hotPixelNoise.greenOffset,
                        hotPixelNoise.blueOffset,
                    ),
                    lensShadingDescription = lensShadingLogString(metadata),
                    bindLensShading = { program, originX, originY ->
                        bindLensShadingForProgram(
                            program = program,
                            metadata = metadata,
                            globalOriginX = originX,
                            globalOriginY = originY,
                        )
                    },
                ),
            )
        ) { "Standard Bayer VGN demosaic programs are unavailable" }
    }

    private fun runQuadBayerDemosaic(
        metadata: RawMetadata,
        width: Int,
        height: Int,
        highlightReconstructionEnabled: Boolean = true,
        globalOriginX: Int = 0,
        globalOriginY: Int = 0,
        rawInputTextureId: Int = rawTextureId,
        outputTargetTextureId: Int = demosaicTextureId,
    ) {
        val blackLevel4 = FloatArray(4) { index ->
            metadata.blackLevel.getOrElse(index) {
                metadata.blackLevel.firstOrNull() ?: 0f
            }.coerceAtLeast(0f)
        }
        checkNotNull(
            quadBayerDemosaicAlgorithm.execute(
                QuadBayerDemosaicAlgorithm.Input(
                    rawTextureId = rawInputTextureId,
                    outputTextureId = outputTargetTextureId,
                    width = width,
                    height = height,
                    cfaPattern = metadata.cfaPattern,
                    blackLevel = blackLevel4,
                    whiteLevel = metadata.whiteLevel,
                    metadataWhiteBalanceGains = metadata.whiteBalanceGains,
                    calculationWhiteBalanceGains = demosaicCalculationWbGains(metadata),
                    expandedBlockSize = RawCfaCorrection.expandedBayerBlockSize(
                        metadata.cfaPattern,
                    ),
                    highlightReconstructionEnabled = highlightReconstructionEnabled,
                    globalOriginX = globalOriginX,
                    globalOriginY = globalOriginY,
                    lensShadingDescription = lensShadingLogString(metadata),
                    bindLensShading = { program, originX, originY ->
                        bindLensShadingForProgram(
                            program = program,
                            metadata = metadata,
                            globalOriginX = originX,
                            globalOriginY = originY,
                        )
                    },
                ),
            )
        ) { "Quad Bayer demosaic programs are unavailable" }
    }

    private fun bindLensShadingForProgram(
        program: Int,
        metadata: RawMetadata,
        globalOriginX: Int = 0,
        globalOriginY: Int = 0,
    ) {
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
        GLES31.glGetUniformLocation(program, "uFullImageSize").takeIf { it >= 0 }?.let { location ->
            GLES31.glUniform2i(location, metadata.width, metadata.height)
        }
        GLES31.glGetUniformLocation(program, "uGlobalOrigin").takeIf { it >= 0 }?.let { location ->
            GLES31.glUniform2i(location, globalOriginX, globalOriginY)
        }
    }

    private fun logGlResourceLimits(): Boolean {
        val vendor = GLES30.glGetString(GLES30.GL_VENDOR).orEmpty()
        val renderer = GLES30.glGetString(GLES30.GL_RENDERER).orEmpty()
        val version = GLES30.glGetString(GLES30.GL_VERSION).orEmpty()
        val shadingLanguageVersion =
            GLES30.glGetString(GLES30.GL_SHADING_LANGUAGE_VERSION).orEmpty()
        PLog.i(
            TAG,
            "GL device: vendor=$vendor renderer=$renderer version=$version " +
                "glsl=$shadingLanguageVersion linearRawDecode=phocus-uimage-load"
        )

        val value = IntArray(1)
        GLES30.glGetIntegerv(GLES30.GL_MAX_TEXTURE_SIZE, value, 0)
        maxTextureSize = value[0]
        GLES30.glGetIntegerv(GLES30.GL_MAX_TEXTURE_IMAGE_UNITS, value, 0)
        val textureImageUnits = value[0]
        GLES30.glGetIntegerv(GLES31.GL_MAX_IMAGE_UNITS, value, 0)
        val imageUnits = value[0]
        GLES30.glGetIntegerv(GLES31.GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS, value, 0)
        val ssboBindings = value[0]
        GLES30.glGetIntegerv(GLES31.GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS, value, 0)
        val computeSsboBlocks = value[0]
        GLES30.glGetIntegerv(GLES31.GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS, value, 0)
        val maxWorkGroupInvocations = value[0]
        GLES30.glGetIntegerv(GLES31.GL_MAX_COMPUTE_SHARED_MEMORY_SIZE, value, 0)
        val maxComputeSharedMemory = value[0]
        val maxWorkGroupSize = IntArray(3)
        for (axis in maxWorkGroupSize.indices) {
            GLES30.glGetIntegeri_v(
                GLES31.GL_MAX_COMPUTE_WORK_GROUP_SIZE,
                axis,
                value,
                0,
            )
            maxWorkGroupSize[axis] = value[0]
        }
        PLog.d(
            TAG,
            "GL limits: maxTextureSize=$maxTextureSize textureImageUnits=$textureImageUnits " +
                "imageUnits=$imageUnits ssboBindings=$ssboBindings " +
                "computeSsboBlocks=$computeSsboBlocks " +
                "computeWorkGroupInvocations=$maxWorkGroupInvocations " +
                "computeWorkGroupSize=${maxWorkGroupSize.contentToString()} " +
                "computeSharedMemory=$maxComputeSharedMemory",
        )
        val supportsRequiredWorkGroups =
            maxWorkGroupInvocations >= GlesComputeWorkGroup.BASELINE_MAX_INVOCATIONS &&
                maxWorkGroupSize[0] >= GlesComputeWorkGroup.LINEAR_SIZE &&
                maxWorkGroupSize[1] >= GlesComputeWorkGroup.IMAGE_TILE_SIZE &&
                maxWorkGroupSize[2] >= 1
        if (!supportsRequiredWorkGroups) {
            PLog.e(
                TAG,
                "GLES compute limits do not satisfy the OpenGL ES 3.1 baseline required by " +
                    "the RAW pipeline: invocations=$maxWorkGroupInvocations " +
                    "size=${maxWorkGroupSize.contentToString()}",
            )
        }
        return supportsRequiredWorkGroups
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
        requireFramebufferComplete(
            label = "Combined",
            framebufferId = combinedFramebufferId,
            textureId = combinedTextureId,
            width = width,
            height = height,
            internalFormat = "RGBA8",
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
        requireFramebufferComplete(
            label = "EngineTone",
            framebufferId = engineToneFramebufferId,
            textureId = engineToneTextureId,
            width = width,
            height = height,
            internalFormat = "RGBA16F",
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
        requireFramebufferComplete(
            label = "Adjustment",
            framebufferId = adjustmentFramebufferId,
            textureId = adjustmentTextureId,
            width = width,
            height = height,
            internalFormat = "RGBA16F",
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

    private fun setupLinearExposurePreviewFramebuffer(width: Int, height: Int) {
        if (linearExposurePreviewWidth == width &&
            linearExposurePreviewHeight == height &&
            linearExposurePreviewFramebufferId != 0
        ) {
            return
        }

        if (linearExposurePreviewTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(linearExposurePreviewTextureId), 0)
        }
        if (linearExposurePreviewFramebufferId != 0) {
            GLES30.glDeleteFramebuffers(1, intArrayOf(linearExposurePreviewFramebufferId), 0)
        }

        linearExposurePreviewWidth = width
        linearExposurePreviewHeight = height

        val textures = IntArray(1)
        GLES30.glGenTextures(1, textures, 0)
        linearExposurePreviewTextureId = textures[0]
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, linearExposurePreviewTextureId)
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
        linearExposurePreviewFramebufferId = framebuffers[0]
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, linearExposurePreviewFramebufferId)
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER,
            GLES30.GL_COLOR_ATTACHMENT0,
            GLES30.GL_TEXTURE_2D,
            linearExposurePreviewTextureId,
            0
        )
        checkGlError("setupLinearExposurePreviewFramebuffer")
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

    private fun releaseHdrReferenceFramebuffer() {
        if (hdrReferenceTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(hdrReferenceTextureId), 0)
            hdrReferenceTextureId = 0
        }
        if (hdrReferenceFramebufferId != 0) {
            GLES30.glDeleteFramebuffers(1, intArrayOf(hdrReferenceFramebufferId), 0)
            hdrReferenceFramebufferId = 0
        }
        hdrReferenceWidth = 0
        hdrReferenceHeight = 0
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
        requireFramebufferComplete(
            label = "Sharpen",
            framebufferId = sharpenFramebufferId,
            textureId = sharpenTextureId,
            width = width,
            height = height,
            internalFormat = "RGBA8",
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
        requireFramebufferComplete(
            label = "Output",
            framebufferId = outputFramebufferId,
            textureId = outputTextureId,
            width = width,
            height = height,
            internalFormat = "RGBA16F",
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

    /**
     * RAW tone processing coordinator.
     *
     * Pass order:
     * 1. engine tone pass
     * 2. HNCS only: decode FilmCurve companding + HNCS -> linear output RGB
     * 3. optional adjustment pass: shadows/highlights + black/white levels in linear output RGB
     * 4. sRGB pass: linear output RGB -> sRGB encoded RGBA8 for sharpen/output
     */
    private fun renderCombinedPass(
        metadata: RawMetadata,
        inputTextureId: Int = demosaicTextureId,
        dcpRenderPlan: DcpRenderPlan? = null,
        applyDcpHueSatMap: Boolean = true,
        spectralFilmLut: SpectralFilmLut? = null,
        hncsRenderPlan: HncsRenderPlan? = null,
        colorEngine: RawRenderingEngine = RawRenderingEngine.AdobeCurve,
        outputWorkingColorSpace: ColorSpace = ColorSpace.ProPhoto,
        profileToEngineTransform: FloatArray = identityMatrix3x3(),
        profileExposureUniforms: ProfileExposureUniforms = ProfileExposureUniforms.NEUTRAL,
        shadowsHighlightsParams: ShadowsHighlightsParams = ShadowsHighlightsParams.NEUTRAL,
        rawBlacksAdjustment: Float = 0f,
        rawWhitesAdjustment: Float = 0f,
        rawToneMappingParameters: RawToneMappingParameters = RawToneMappingParameters.DEFAULT,
        applyProfileGainTableMap: Boolean = metadata.profileGainTableMap?.isValid == true,
        globalOriginX: Int = 0,
        globalOriginY: Int = 0,
        fullImageWidth: Int = metadata.width,
        fullImageHeight: Int = metadata.height,
        viewportWidth: Int = metadata.width,
        viewportHeight: Int = metadata.height
    ): Boolean {
        val outputTransform = computeWorkingToOutputTransform(outputWorkingColorSpace, ColorSpace.SRGB)
        setupEngineToneFramebuffer(viewportWidth, viewportHeight)
        if (!renderEngineTonePass(
                inputTextureId = inputTextureId,
                dcpRenderPlan = dcpRenderPlan,
                applyDcpHueSatMap = applyDcpHueSatMap,
                spectralFilmLut = spectralFilmLut,
                hncsRenderPlan = hncsRenderPlan,
                colorEngine = colorEngine,
                profileToEngineTransform = profileToEngineTransform,
                profileExposureUniforms = profileExposureUniforms,
                metadata = metadata,
                applyProfileGainTableMap = applyProfileGainTableMap,
                profileBaselineExposureOffsetEv = dcpBaselineExposureOffsetOrZero(dcpRenderPlan),
                globalOriginX = globalOriginX,
                globalOriginY = globalOriginY,
                fullImageWidth = fullImageWidth,
                fullImageHeight = fullImageHeight,
                rawToneMappingParameters = rawToneMappingParameters,
                outputTransform = outputTransform,
                viewportWidth = viewportWidth,
                viewportHeight = viewportHeight
            )
        ) {
            return false
        }
        var linearOutputTextureId = engineToneTextureId
        if (colorEngine.isHncs) {
            setupAdjustmentFramebuffer(viewportWidth, viewportHeight)
            if (!renderHncsOutputLinearPass(
                    inputTextureId = engineToneTextureId,
                    outputTransform = outputTransform,
                    targetFramebufferId = adjustmentFramebufferId,
                    viewportWidth = viewportWidth,
                    viewportHeight = viewportHeight,
                )
            ) {
                return false
            }
            linearOutputTextureId = adjustmentTextureId
        }

        val srgbInputTextureId = if (needsAdjustmentPass(
                shadowsHighlightsParams = shadowsHighlightsParams,
                rawBlacksAdjustment = rawBlacksAdjustment,
                rawWhitesAdjustment = rawWhitesAdjustment
            )
        ) {
            val adjustmentTargetFramebufferId = if (colorEngine.isHncs) {
                engineToneFramebufferId
            } else {
                setupAdjustmentFramebuffer(viewportWidth, viewportHeight)
                adjustmentFramebufferId
            }
            if (!renderAdjustmentPass(
                    inputTextureId = linearOutputTextureId,
                    shadowsHighlightsParams = shadowsHighlightsParams,
                    rawBlacksAdjustment = rawBlacksAdjustment,
                    rawWhitesAdjustment = rawWhitesAdjustment,
                    targetFramebufferId = adjustmentTargetFramebufferId,
                    viewportWidth = viewportWidth,
                    viewportHeight = viewportHeight
                )
            ) {
                return false
            }
            if (colorEngine.isHncs) engineToneTextureId else adjustmentTextureId
        } else {
            linearOutputTextureId
        }

        setupCombinedFramebuffer(viewportWidth, viewportHeight)
        return renderSrgbPass(
            inputTextureId = srgbInputTextureId,
            viewportWidth = viewportWidth,
            viewportHeight = viewportHeight
        )
    }

    /**
     * Matches the SDR branch of Phocus colorspaceconvert:
     * Gamma22_EOTF -> source RGB to XYZ -> Bradford -> XYZ to destination RGB.
     *
     * [outputTransform] already contains the three linear matrix operations, so
     * this pass keeps their original order while avoiding an unnecessary XYZ
     * intermediate.
     */
    private fun renderHncsOutputLinearPass(
        inputTextureId: Int,
        outputTransform: FloatArray,
        targetFramebufferId: Int,
        viewportWidth: Int,
        viewportHeight: Int,
    ): Boolean {
        val targetTextureId = when (targetFramebufferId) {
            adjustmentFramebufferId -> adjustmentTextureId
            engineToneFramebufferId -> engineToneTextureId
            else -> 0
        }
        return hncsOutputLinearPass.render(
            HncsOutputLinearPass.Input(
                textureId = inputTextureId,
                targetFramebufferId = targetFramebufferId,
                targetTextureId = targetTextureId,
                outputTransform = outputTransform,
                width = viewportWidth,
                height = viewportHeight,
            ),
        ) != null
    }

    private fun renderEngineTonePass(
        inputTextureId: Int,
        dcpRenderPlan: DcpRenderPlan?,
        applyDcpHueSatMap: Boolean,
        spectralFilmLut: SpectralFilmLut?,
        hncsRenderPlan: HncsRenderPlan?,
        colorEngine: RawRenderingEngine,
        profileToEngineTransform: FloatArray,
        profileExposureUniforms: ProfileExposureUniforms,
        metadata: RawMetadata?,
        applyProfileGainTableMap: Boolean,
        profileBaselineExposureOffsetEv: Float,
        globalOriginX: Int,
        globalOriginY: Int,
        fullImageWidth: Int,
        fullImageHeight: Int,
        rawToneMappingParameters: RawToneMappingParameters,
        outputTransform: FloatArray,
        viewportWidth: Int,
        viewportHeight: Int
    ): Boolean {
        return engineTonePass.render(
            RawEngineTonePass.Input(
                textureId = inputTextureId,
                targetFramebufferId = engineToneFramebufferId,
                targetTextureId = engineToneTextureId,
                colorEngine = colorEngine,
                profileToEngineTransform = profileToEngineTransform,
                outputTransform = outputTransform,
                globalOriginX = globalOriginX,
                globalOriginY = globalOriginY,
                fullImageWidth = fullImageWidth,
                fullImageHeight = fullImageHeight,
                width = viewportWidth,
                height = viewportHeight,
                toneMappingParameters = rawToneMappingParameters,
                profileExposure = profileExposureUniforms,
                dcpRenderPlan = dcpRenderPlan,
                applyDcpHueSatMap = applyDcpHueSatMap,
                spectralFilmLut = spectralFilmLut,
                hncsRenderPlan = hncsRenderPlan,
                bindProfileGainTable = { program ->
                    if (metadata != null) {
                        bindProfileGainTableMap(
                            program = program,
                            metadata = metadata,
                            applyProfileGainTableMap = applyProfileGainTableMap,
                            profileBaselineExposureOffsetEv = profileBaselineExposureOffsetEv,
                        )
                    } else {
                        GLES30.glUniform1i(
                            GLES30.glGetUniformLocation(program, "uProfileGainEnabled"),
                            0,
                        )
                    }
                },
            ),
        ) != null
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
        targetFramebufferId: Int = adjustmentFramebufferId,
        viewportWidth: Int,
        viewportHeight: Int
    ): Boolean {
        val targetTextureId = when (targetFramebufferId) {
            adjustmentFramebufferId -> adjustmentTextureId
            engineToneFramebufferId -> engineToneTextureId
            else -> 0
        }
        return adjustmentPass.render(
            RawAdjustmentPass.Input(
                textureId = inputTextureId,
                targetFramebufferId = targetFramebufferId,
                targetTextureId = targetTextureId,
                width = viewportWidth,
                height = viewportHeight,
                highlights = shadowsHighlightsParams.highlights,
                shadows = shadowsHighlightsParams.shadows,
                blacks = rawBlacksAdjustment,
                whites = rawWhitesAdjustment,
            ),
        ) != null
    }

    private fun renderSrgbPass(
        inputTextureId: Int,
        viewportWidth: Int,
        viewportHeight: Int
    ): Boolean {
        return srgbPass.render(
            RawSrgbPass.Input(
                textureId = inputTextureId,
                targetFramebufferId = combinedFramebufferId,
                targetTextureId = combinedTextureId,
                width = viewportWidth,
                height = viewportHeight,
            ),
        ) != null
    }

    private fun renderDarktableFilmicHighlightReconstruction(
        sourceTextureId: Int,
        width: Int,
        height: Int,
        rawToneMappingParameters: RawToneMappingParameters,
        profileExposureUniforms: ProfileExposureUniforms,
        profileToEngineTransform: FloatArray,
        metadata: RawMetadata,
        applyProfileGainTableMap: Boolean,
        profileBaselineExposureOffsetEv: Float,
    ): Int {
        return filmicHighlightReconstructionAlgorithm.execute(
            DarktableFilmicHighlightReconstructionAlgorithm.Input(
                sourceTextureId = sourceTextureId,
                width = width,
                height = height,
                rawToneMappingParameters = rawToneMappingParameters,
                profileExposureEv = profileExposureUniforms.exposureEv,
                profileExposureLinearGain = profileExposureUniforms.linearGain,
                bindPreparedInput = { program ->
                    bindProfileGainTableMap(
                        program = program,
                        metadata = metadata,
                        applyProfileGainTableMap = applyProfileGainTableMap,
                        profileBaselineExposureOffsetEv = profileBaselineExposureOffsetEv,
                    )
                    GLES30.glUniform2f(
                        GLES30.glGetUniformLocation(program, "uGlobalUvOrigin"),
                        0f,
                        0f,
                    )
                    GLES30.glUniform2f(
                        GLES30.glGetUniformLocation(program, "uGlobalUvScale"),
                        1f,
                        1f,
                    )
                    GLES30.glUniform1f(
                        GLES30.glGetUniformLocation(program, "uProfileExposureLinearGain"),
                        profileExposureUniforms.linearGain,
                    )
                    GLES30.glUniformMatrix3fv(
                        GLES30.glGetUniformLocation(program, "uProfileToEngineTransform"),
                        1,
                        false,
                        transposeMatrix3x3(profileToEngineTransform),
                        0,
                    )
                },
            ),
        )?.textureId ?: 0
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
        if (colorSpace == ColorSpace.HNCS) {
            return invertMatrix3x3(HncsProfileManager.HNCS_RGB_TO_XYZ_D50)
        }
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
        rawExposureCompensation: Float,
        inputTextureId: Int,
        colorCorrectionMatrix: FloatArray,
        cameraWhite: FloatArray,
        hueSatMap: DcpHueSatMap?,
        profileToLinearSrgb: FloatArray,
        viewportWidth: Int = metadata.width,
        viewportHeight: Int = metadata.height,
    ) {
        val safeCameraWhite = sanitizeCameraWhite(cameraWhite)
        val acr3Curve = ACR3Curve.samples()
        checkNotNull(
            hdrReferencePass.render(
                RawHdrReferencePass.Input(
                    textureId = inputTextureId,
                    targetFramebufferId = hdrReferenceFramebufferId,
                    targetTextureId = hdrReferenceTextureId,
                    width = viewportWidth,
                    height = viewportHeight,
                    cameraToProfile = colorCorrectionMatrix,
                    profileToLinearSrgb = profileToLinearSrgb,
                    cameraWhite = safeCameraWhite,
                    exposureGain = RawHdrReferenceMath.exposureGain(
                        baselineExposureEv = metadata.baselineExposure,
                        rawExposureCompensationEv = rawExposureCompensation,
                    ),
                    bindCurve = { program -> curveTextureResources.bind(program, acr3Curve) },
                    bindHueSatMap = { program -> bindLinearDcpHueSatMap(program, hueSatMap) },
                ),
            ),
        ) { "RAW HDR reference pass failed" }
    }

    /**
     * Measures the render source once for MGC's single-frame FinishRaw tuning. CFA sources use
     * that physical SNR for both luma/chroma denoise and sharpen; a process-local merged LinearRaw
     * already carries its own sharpen tuning and has baked its default denoise before DNG write.
     */
    private fun RawMetadata.withMgcRenderTuning(
        rawData: ByteBuffer?,
        rowStride: Int,
        samplesPerPixel: Int,
    ): RawMetadata {
        val needsSingleFrameDenoiseSnr =
            samplesPerPixel == 1 && frameCount == 1 && mgcDenoiseTuningSnr == null
        val needsSharpenTuning =
            mgcSharpenTuningSnr == null || mgcSharpenAttenuationScale == null
        if (!needsSingleFrameDenoiseSnr && !needsSharpenTuning) {
            return this
        }
        val source = rawData ?: return this
        val signal = estimateMgcReferenceSignal(
            rawData = source,
            rowStride = rowStride,
            samplesPerPixel = samplesPerPixel,
        ) ?: return this
        val noiseModel = when (noiseProfileLayout) {
            RawNoiseProfileLayout.CAMERA2_CFA ->
                RawNoiseModel.fromCamera2NoiseProfile(channelNoiseProfile)
            RawNoiseProfileLayout.CANONICAL_BAYER -> {
                val shot = FloatArray(4) { channel ->
                    channelNoiseProfile.getOrElse(channel * 2) { 0f }
                }
                val read = FloatArray(4) { channel ->
                    channelNoiseProfile.getOrElse(channel * 2 + 1) { 0f }
                }
                RawNoiseModel.fromCanonicalBayerChannels(shot, read)
            }
            RawNoiseProfileLayout.DNG_RGB ->
                RawNoiseModel.fromDngNoiseProfile(channelNoiseProfile)
            RawNoiseProfileLayout.NONE -> RawNoiseModel.EMPTY
        }
        val shot = noiseModel.normalizedShotNoiseForShader(cfaPattern)
        val read = noiseModel.normalizedReadNoiseForShader(cfaPattern)
        val greenShot = 0.5f * (shot[1] + shot[2])
        val greenRead = 0.5f * (read[1] + read[2])
        val variance = greenShot * signal + greenRead
        val snr = if (variance.isFinite() && variance > 1e-12f) {
            signal / sqrt(variance)
        } else {
            Float.NaN
        }
        if (!snr.isFinite() || snr <= 0f) {
            PLog.w(
                TAG,
                "MGC RAW render tuning unavailable: signal=$signal " +
                    "greenShot=$greenShot greenRead=$greenRead layout=$noiseProfileLayout",
            )
            return this
        }
        PLog.i(
            TAG,
            "MGC RAW render tuning signal=$signal snr=$snr " +
                "greenShot=$greenShot greenRead=$greenRead " +
                "singleFrameDenoise=$needsSingleFrameDenoiseSnr " +
                "sharpen=$needsSharpenTuning attenuation=1.0",
        )
        return copy(
            mgcDenoiseTuningSnr = if (needsSingleFrameDenoiseSnr) {
                snr
            } else {
                mgcDenoiseTuningSnr
            },
            mgcSharpenTuningSnr = mgcSharpenTuningSnr ?: snr,
            // A single frame has identical requested/reference TET, so MGC's
            // min(FinalTet / referenceActualTet, 1) evaluates to one.
            mgcSharpenAttenuationScale = mgcSharpenAttenuationScale ?: 1f,
        )
    }

    private fun RawMetadata.estimateMgcReferenceSignal(
        rawData: ByteBuffer,
        rowStride: Int,
        samplesPerPixel: Int,
    ): Float? {
        if (width <= 0 || height <= 0 || samplesPerPixel !in 1..4) return null
        val pixelStride = samplesPerPixel * Short.SIZE_BYTES
        if (rowStride < width * pixelStride) return null
        val cropLeft = (width / 8) and -4
        val cropRight = ((width * 7) / 8) and -4
        val cropTop = (height / 8) and -2
        val cropBottom = ((height * 7) / 8) and -2
        if (cropRight <= cropLeft || cropBottom <= cropTop) return null

        val phaseToCanonical = when (cfaPattern.mod(4)) {
            1 -> intArrayOf(1, 0, 3, 2)
            2 -> intArrayOf(2, 3, 0, 1)
            3 -> intArrayOf(3, 2, 1, 0)
            else -> intArrayOf(0, 1, 2, 3)
        }
        val firstRowGreenPhase = when (cfaPattern.mod(4)) {
            0, 3 -> 1
            else -> 0
        }
        val greenChannel = if (samplesPerPixel == 1) {
            phaseToCanonical[firstRowGreenPhase]
        } else {
            1
        }
        val black = blackLevel.getOrElse(greenChannel) {
            blackLevel.firstOrNull() ?: 0f
        }
        val range = whiteLevel - black
        if (!black.isFinite() || !range.isFinite() || range <= 0f) return null

        val white = whiteLevel.toInt().coerceAtLeast(0)
        val histogramShift = run {
            val tail = white - MGC_SIGNAL_LINEAR_HISTOGRAM_BINS
            if (tail < MGC_SIGNAL_LINEAR_HISTOGRAM_BINS) {
                0
            } else {
                Int.SIZE_BITS - Integer.numberOfLeadingZeros(
                    tail ushr MGC_SIGNAL_LINEAR_HISTOGRAM_BITS,
                )
            }
        }
        val quantizationWidth = 1 shl histogramShift
        val quantizationHalf = quantizationWidth / 2
        fun histogramBinCenter(raw: Int): Int {
            if (histogramShift == 0 || raw < MGC_SIGNAL_LINEAR_HISTOGRAM_BINS) {
                return raw
            }
            val bucket = (raw - MGC_SIGNAL_LINEAR_HISTOGRAM_BINS) shr histogramShift
            return MGC_SIGNAL_LINEAR_HISTOGRAM_BINS +
                (bucket shl histogramShift) + quantizationHalf
        }

        val buffer = rawData.duplicate().order(ByteOrder.nativeOrder())
        val bufferStart = buffer.position()
        val componentOffset = if (samplesPerPixel == 1) 0 else Short.SIZE_BYTES
        var sqrtSignalSum = 0.0
        var sampleCount = 0
        var y = cropTop
        while (y < cropBottom) {
            var x = if (samplesPerPixel == 1) {
                cropLeft + (firstRowGreenPhase and 1)
            } else {
                cropLeft
            }
            while (x < cropRight) {
                val offset = bufferStart + y * rowStride + x * pixelStride + componentOffset
                if (offset >= bufferStart && offset + 1 < buffer.limit()) {
                    val raw = buffer.getShort(offset).toInt() and 0xffff
                    val stabilizedSignal = max(histogramBinCenter(raw) - black, 0f)
                    sqrtSignalSum += sqrt(stabilizedSignal.toDouble())
                    sampleCount += 1
                }
                x += 2
            }
            y += MGC_SIGNAL_ROW_STEP
        }
        if (sampleCount <= 0) return null
        val meanSqrtSignal = sqrtSignalSum / sampleCount.toDouble()
        return ((meanSqrtSignal * meanSqrtSignal) / range.toDouble())
            .toFloat()
            .takeIf { it.isFinite() && it >= 0f }
    }

    private fun renderFinalSharpenPass(
        metadata: RawMetadata,
        sharpeningValue: Float,
        inputTextureId: Int,
    ) {
        val mgcSnr = metadata.mgcSharpenTuningSnr
        val mgcAttenuation = metadata.mgcSharpenAttenuationScale
        val sliderValue = RawSharpeningDefaults.normalize(sharpeningValue)
        val algorithmStrength = RawSharpeningDefaults.toAlgorithmStrength(sliderValue)
        if (mgcSnr == null && mgcAttenuation == null) {
            renderSharpenPass(metadata, algorithmStrength, inputTextureId)
            return
        }
        checkNotNull(mgcSnr?.takeIf { it.isFinite() && it > 0f }) {
            "MGC sharpen tuning SNR is missing or invalid"
        }
        checkNotNull(mgcAttenuation?.takeIf { it.isFinite() && it >= 0f }) {
            "MGC sharpen attenuation is missing or invalid"
        }
        if (algorithmStrength <= 0f) {
            renderSharpenPass(metadata, 0f, inputTextureId)
            return
        }
        val effectiveAttenuation = mgcAttenuation * algorithmStrength
        renderMgcSharpenPass(
            metadata = metadata,
            inputTextureId = inputTextureId,
            snr = mgcSnr,
            runtimeAttenuation = mgcAttenuation,
            sliderValue = sliderValue,
            algorithmStrength = algorithmStrength,
            effectiveAttenuation = effectiveAttenuation,
        )
    }

    /**
     * Replaces the legacy 5x5 USM for process-local MGC output. The readback adapter preserves
     * the already-rendered RGBA values and invokes the lifted FinishRaw SharpenTo16Bit kernel;
     * no tone, gamma, white-balance, denoise or color-rendering operation is added here.
     */
    private fun renderMgcSharpenPass(
        metadata: RawMetadata,
        inputTextureId: Int,
        snr: Float,
        runtimeAttenuation: Float,
        sliderValue: Float,
        algorithmStrength: Float,
        effectiveAttenuation: Float,
    ) {
        check(inputTextureId == combinedTextureId) {
            "MGC sharpen source is not the Combined Pass texture"
        }
        val byteCount = metadata.width.toLong() * metadata.height * 4L
        val rgba = checkNotNull(
            LargeDirectBuffer.allocate(byteCount, "MGC final sharpen RGBA8"),
        ) { "Unable to allocate MGC final sharpen readback" }
        val interpolationScales = metadata.coreImagingTuning.sharpen
            .snrInterpolationScale
            .toFloatArray()
        try {
            rgba.clear()
            rgba.limit(byteCount.toInt())
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, combinedFramebufferId)
            GLES30.glReadBuffer(GLES30.GL_COLOR_ATTACHMENT0)
            GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 1)
            GLES30.glReadPixels(
                0,
                0,
                metadata.width,
                metadata.height,
                GLES30.GL_RGBA,
                GLES30.GL_UNSIGNED_BYTE,
                rgba,
            )
            checkGlError("MGC sharpen RGBA8 readback")
            rgba.position(0)
            MgcSharpen.sharpenRgba8(
                rgba = rgba,
                width = metadata.width,
                height = metadata.height,
                snr = snr,
                sharpenAttenuationScale = effectiveAttenuation,
                interpolationScales = interpolationScales,
            )
            GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 1)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, sharpenTextureId)
            GLES30.glTexSubImage2D(
                GLES30.GL_TEXTURE_2D,
                0,
                0,
                0,
                metadata.width,
                metadata.height,
                GLES30.GL_RGBA,
                GLES30.GL_UNSIGNED_BYTE,
                rgba,
            )
            checkGlError("MGC sharpen RGBA8 upload")
            PLog.i(
                TAG,
                "MGC final sharpen replaced legacy USM size=${metadata.width}x${metadata.height} " +
                    "snr=$snr runtimeAttenuation=$runtimeAttenuation " +
                    "slider=$sliderValue algorithmStrength=$algorithmStrength " +
                    "effectiveAttenuation=$effectiveAttenuation " +
                    "frequencyInterpolationScales=${interpolationScales.contentToString()}",
            )
        } finally {
            LargeDirectBuffer.free(rgba)
        }
    }

    private fun renderSharpenPass(
        metadata: RawMetadata,
        sharpeningValue: Float,
        inputTextureId: Int
    ) {
        checkNotNull(
            sharpenPass.render(
                RawSharpenPass.Input(
                    textureId = inputTextureId,
                    targetFramebufferId = sharpenFramebufferId,
                    targetTextureId = sharpenTextureId,
                    width = metadata.width,
                    height = metadata.height,
                    strength = sharpeningValue,
                ),
            ),
        ) { "RAW sharpen pass failed" }
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
            supportsOverrange = basePlan?.supportsOverrange ?: false,
            colorCorrectionMatrix = basePlan?.colorCorrectionMatrix ?: metadata.colorCorrectionMatrix,
            cameraWhite = basePlan?.cameraWhite ?: metadata.cameraWhite,
            hueSatMap = basePlan?.hueSatMap,
            lookTable = basePlan?.lookTable,
            toneCurveLut = DngProfileToneCurve.oppoEmbeddedToneCurveLut()
        )
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
        metadata: RawMetadata,
        profilePlanSource: String?,
        requestedColorEngine: RawRenderingEngine,
        colorEngine: RawRenderingEngine,
        dcpRenderPlan: DcpRenderPlan?,
        profileWorkingColorSpace: ColorSpace,
        engineWorkingColorSpace: ColorSpace,
        profileToEngineTransform: FloatArray,
        useAdobeProfilePipeline: Boolean,
        useProfileExposureRamp: Boolean,
        applyDcpBaselineExposureOffset: Boolean,
        hueSatMapSupportsOverrange: Boolean,
    ) {
        if (profilePlanSource == null) return

        val planSpace = dcpRenderPlan?.workingColorSpace
        if (planSpace != null && planSpace != ColorSpace.ProPhoto) {
            PLog.w(TAG, "RAW DCP render plan is not ProPhoto: planSpace=$planSpace")
        }
        val hueSatEnabled = dcpRenderPlan?.hueSatMap?.isValid == true
        val hueSatMap = dcpRenderPlan?.hueSatMap?.takeIf { it.isValid }
        val lookEnabled = dcpRenderPlan?.lookTable?.isValid == true
        val profileToneCurveEnabled = useAdobeProfilePipeline && dcpRenderPlan?.toneCurveLut != null
        val defaultBlackRender = resolveProfileDefaultBlackRender(
            metadata = metadata,
            dcpRenderPlan = dcpRenderPlan,
            applyDngBaselineExposure = useAdobeProfilePipeline,
            useRamp = useProfileExposureRamp,
        )
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
                "hueSat=$hueSatEnabled " +
                "hueSatDims=${hueSatMap?.let { "${it.hueDivisions}x${it.satDivisions}x${it.valueDivisions}" } ?: "none"} " +
                "hueSatEncoding=${hueSatMap?.encoding ?: DcpHueSatMap.ENCODING_LINEAR} " +
                "look=$lookEnabled " +
                "profileToneCurve=$profileToneCurveEnabled " +
                "profileExposureRamp=$useProfileExposureRamp " +
                "profileSupportsOverrange=${dcpRenderPlan?.supportsOverrange == true} " +
                "hueSatSupportsOverrange=$hueSatMapSupportsOverrange " +
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
        return if (shadowScale.isFinite() && shadowScale > 0f) {
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
        useRamp: Boolean,
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
            defaultBlackRender = resolveProfileDefaultBlackRender(
                metadata = metadata,
                dcpRenderPlan = dcpRenderPlan,
                applyDngBaselineExposure = applyDngBaselineExposure,
                useRamp = useRamp,
            ),
            shadowScale = metadata.shadowScale,
            supportOverrange = useRamp && dcpRenderPlan?.supportsOverrange == true,
            useRamp = useRamp
        )
    }

    private fun resolveProfileDefaultBlackRender(
        metadata: RawMetadata,
        dcpRenderPlan: DcpRenderPlan?,
        applyDngBaselineExposure: Boolean,
        useRamp: Boolean,
    ): DcpDefaultBlackRender {
        if (!useRamp) return DcpDefaultBlackRender.None
        val dngBaselineExposure = if (applyDngBaselineExposure) {
            DngBaselineExposure.sanitize(metadata.baselineExposure)
        } else {
            0f
        }
        return RawProfileExposureGl.resolveDefaultBlackRender(
            dngBaselineExposure = dngBaselineExposure,
            requested = dcpDefaultBlackRenderOrAuto(dcpRenderPlan),
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
        hueSatMap: DcpHueSatMap? = null,
        applyDngBaselineExposure: Boolean,
        clampProfileRgb: Boolean,
        hueSatMapSupportsOverrange: Boolean,
        hncsCameraDomainGains: FloatArray? = null,
        textureBounds: FloatArray = floatArrayOf(0f, 0f, 1f, 1f),
        areaSampleFootprint: FloatArray = floatArrayOf(0f, 0f),
        textureRotation: Int = 0,
        label: String
    ) {
        val hncsCameraDomain = hncsCameraDomainGains?.let { gains ->
            HncsCameraDomain.resolve(
                compositeCameraToWorkingMatrix = colorCorrectionMatrix,
                cameraGains = gains,
                baselineExposureEv = if (applyDngBaselineExposure) {
                    metadata.baselineExposure
                } else {
                    0f
                },
                additionalExposureEv = rawExposureCompensation,
            )
        }
        val linearCameraWhite = sanitizeCameraWhite(cameraWhite)
        val exposureGain = computeLinearExposureGain(
            metadata,
            rawExposureCompensation = if (hncsCameraDomain == null) {
                rawExposureCompensation
            } else {
                0f
            },
            applyDngBaselineExposure = hncsCameraDomain == null && applyDngBaselineExposure
        )
        checkNotNull(
            linearRcdPass.render(
                RawLinearRcdPass.Input(
                    textureId = sourceTextureId,
                    targetFramebufferId = targetFramebufferId,
                    targetTextureId = 0,
                    width = viewportWidth,
                    height = viewportHeight,
                    colorCorrectionMatrix =
                        hncsCameraDomain?.cameraToWorkingMatrix ?: colorCorrectionMatrix,
                    cameraWhite = linearCameraWhite,
                    exposureGain = exposureGain,
                    hncsCameraDomainGain = hncsCameraDomain?.normalizedGain,
                    hncsInputEv = hncsCameraDomain?.inputEv ?: 1f,
                    hncsHighlightTruncation = hncsCameraDomain?.hrTrunc ?: 1f,
                    hncsHighlightMaximum = hncsCameraDomain?.hrMax ?: 1f,
                    clampProfileRgb = clampProfileRgb,
                    hueSatMapSupportsOverrange = hueSatMapSupportsOverrange,
                    textureBounds = textureBounds,
                    areaSampleFootprint = areaSampleFootprint,
                    textureRotation = textureRotation,
                    bindHueSatMap = { program -> bindLinearDcpHueSatMap(program, hueSatMap) },
                    label = label,
                ),
            ),
        ) { "$label failed" }
    }

    private fun bindLinearDcpHueSatMap(
        program: Int,
        hueSatMap: DcpHueSatMap?,
    ) {
        val activeMap = hueSatMap?.takeIf { it.isValid }
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(program, "uLinearDcpHueSatEnabled"),
            if (activeMap != null) 1 else 0,
        )
        GLES30.glUniform3i(
            GLES30.glGetUniformLocation(program, "uLinearDcpHueSatDivisions"),
            activeMap?.hueDivisions ?: 1,
            activeMap?.satDivisions ?: 1,
            activeMap?.valueDivisions ?: 1,
        )
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(program, "uLinearDcpHueSatEncoding"),
            activeMap?.encoding ?: DcpHueSatMap.ENCODING_LINEAR,
        )
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + LINEAR_DCP_HUE_SAT_TEXTURE_UNIT)
        val textureId = activeMap?.let { map ->
            dcpTextureResources.ensureHueSatTexture(map)
        } ?: dcpTextureResources.ensureDummyTexture()
        GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, textureId)
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(program, "uLinearDcpHueSatMap"),
            LINEAR_DCP_HUE_SAT_TEXTURE_UNIT,
        )
    }

    private fun bindProfileGainTableMap(
        program: Int,
        metadata: RawMetadata,
        applyProfileGainTableMap: Boolean,
        profileBaselineExposureOffsetEv: Float,
    ) {
        val profileGainTableMap = metadata.profileGainTableMap?.takeIf { it.isValid }
        if (profileGainTableMap == null || !applyProfileGainTableMap) {
            GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uProfileGainEnabled"), 0)
            return
        }
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + PROFILE_GAIN_TABLE_TEXTURE_UNIT)
        val textureId = ensureProfileGainTableTexture(profileGainTableMap)
        if (textureId == 0) {
            GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uProfileGainEnabled"), 0)
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
        val totalBaselineExposureEv = DngBaselineExposure.sanitize(metadata.baselineExposure) +
            (profileBaselineExposureOffsetEv.takeIf { it.isFinite() } ?: 0f)
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(program, "uProfileGainBaselineGain"),
            DngBaselineExposure.exactGain(totalBaselineExposureEv)
        )
    }

    private fun ensureProfileGainTableTexture(profileGainTableMap: DngProfileGainTableMap): Int {
        if (profileGainTableTextureId != 0 &&
            (profileGainTableTextureSource === profileGainTableMap ||
                profileGainTableTextureSource == profileGainTableMap)
        ) {
            return profileGainTableTextureId
        }
        releaseProfileGainTableTexture()
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
        // Pixel-store state is global to the GL context. The 257-wide R32F table has a
        // tightly-packed 1028-byte row, which an inherited 8-byte alignment would advance as
        // 1032 bytes and shift every following spatial cell's curve by one float.
        GLES30.glBindBuffer(GLES30.GL_PIXEL_UNPACK_BUFFER, 0)
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ROW_LENGTH, 0)
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 1)
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

    private fun installProfileGainTableTexture(
        profileGainTableMap: DngProfileGainTableMap,
        textureId: Int,
    ) {
        require(textureId != 0) { "GPU-authored ProfileGainTableMap texture is unavailable" }
        releaseProfileGainTableTexture()
        profileGainTableTextureId = textureId
        profileGainTableTextureSource = profileGainTableMap
        PLog.d(
            TAG,
            "ProfileGainTableMap texture retained from GPU: " +
                "${profileGainTableMap.mapPointsH}x${profileGainTableMap.mapPointsV}x" +
                "${profileGainTableMap.mapPointsN} texture=$textureId",
        )
    }

    private fun releaseProfileGainTableTexture() {
        if (profileGainTableTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(profileGainTableTextureId), 0)
        }
        profileGainTableTextureId = 0
        profileGainTableTextureSource = null
    }

    private fun renderSceneExposureRequest(
        request: RawSceneExposureRequest,
        metadata: RawMetadata,
        sourceTextureId: Int,
        colorCorrectionMatrix: FloatArray,
        cameraWhite: FloatArray,
        profileToLinearSrgbTransform: FloatArray,
        outputSourceBounds: Rect,
        outputRotation: Int = 0,
        stackCompletionTimeline: GpuStackCompletionTimeline? = null,
    ): Float? {
        return try {
            val width = RawSceneExposureMath.INPUT_WIDTH
            val height = RawSceneExposureMath.INPUT_HEIGHT
            setupLinearExposurePreviewFramebuffer(width, height)
            val normalizedBounds = floatArrayOf(
                outputSourceBounds.left.toFloat() / metadata.width.toFloat(),
                outputSourceBounds.top.toFloat() / metadata.height.toFloat(),
                outputSourceBounds.right.toFloat() / metadata.width.toFloat(),
                outputSourceBounds.bottom.toFloat() / metadata.height.toFloat(),
            )
            val areaSampleFootprint = floatArrayOf(
                (normalizedBounds[2] - normalizedBounds[0]) / width.toFloat(),
                (normalizedBounds[3] - normalizedBounds[1]) / height.toFloat(),
            )
            val cameraToLinearSrgb = multiplyMatrix3x3(
                profileToLinearSrgbTransform,
                colorCorrectionMatrix,
            )
            renderLinearRcdPass(
                metadata = metadata,
                sourceTextureId = sourceTextureId,
                targetFramebufferId = linearExposurePreviewFramebufferId,
                viewportWidth = width,
                viewportHeight = height,
                rawExposureCompensation = 0f,
                colorCorrectionMatrix = cameraToLinearSrgb,
                cameraWhite = cameraWhite,
                hueSatMap = null,
                applyDngBaselineExposure = false,
                clampProfileRgb = false,
                hueSatMapSupportsOverrange = false,
                textureBounds = normalizedBounds,
                areaSampleFootprint = areaSampleFootprint,
                textureRotation = outputRotation,
                label = "RawSceneExposureLinearPass",
            )
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
            GLES31.glMemoryBarrier(
                GLES31.GL_FRAMEBUFFER_BARRIER_BIT or GLES31.GL_TEXTURE_FETCH_BARRIER_BIT,
            )
            readSceneExposureFrame(
                width = width,
                height = height,
                stackCompletionTimeline = stackCompletionTimeline,
            )?.let(request::solve)
        } catch (error: Throwable) {
            PLog.e(TAG, "Failed to prepare RAW scene exposure input", error)
            null
        }
    }

    private fun readSceneExposureFrame(
        width: Int,
        height: Int,
        stackCompletionTimeline: GpuStackCompletionTimeline?,
    ): RawSceneLinearFrame? {
        val pixelCount = width * height
        val byteCount = pixelCount * 4 * Short.SIZE_BYTES
        val readback = LargeDirectBuffer.allocate(
            byteCount.toLong(),
            "RAW scene exposure readback",
        ) ?: return null
        return try {
            readback.clear()
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, linearExposurePreviewFramebufferId)
            GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, 0)
            GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 1)
            val upstreamTiming = stackCompletionTimeline?.awaitPending(
                syncPoint = "RAW_SCENE_EXPOSURE",
                checkGlError = ::checkGlError,
            )
            val queueWaitMs = GlesGpuCompletion.awaitSubmittedWork(
                label = "RAW scene exposure ${width}x$height",
                checkGlError = ::checkGlError,
            )
            val transferStartNs = System.nanoTime()
            GLES30.glReadPixels(
                0,
                0,
                width,
                height,
                GLES30.GL_RGBA,
                GLES30.GL_HALF_FLOAT,
                readback,
            )
            val transferMs = (System.nanoTime() - transferStartNs) / 1_000_000L
            checkGlError("RAW scene exposure readback")
            readback.position(0)
            val half = readback.order(ByteOrder.nativeOrder()).asShortBuffer()
            val rgb = FloatArray(pixelCount * 3)
            for (pixel in 0 until pixelCount) {
                val sourceOffset = pixel * 4
                val targetOffset = pixel * 3
                rgb[targetOffset] = Half.toFloat(half.get(sourceOffset))
                rgb[targetOffset + 1] = Half.toFloat(half.get(sourceOffset + 1))
                rgb[targetOffset + 2] = Half.toFloat(half.get(sourceOffset + 2))
            }
            PLog.d(
                TAG,
                "RAW scene exposure timing size=${width}x$height " +
                    "upstreamStackGpuWait=${upstreamTiming?.totalWaitMs ?: 0L}ms " +
                    "gpuQueueWait=${queueWaitMs}ms pixelTransfer=${transferMs}ms",
            )
            RawSceneLinearFrame(width = width, height = height, rgb = rgb)
        } finally {
            LargeDirectBuffer.free(readback)
        }
    }

    private data class ExposurePreviewSize(
        val width: Int,
        val height: Int
    )

    private fun resolveRawRenderResourceSize(
        sourceWidth: Int,
        sourceHeight: Int,
    ): ExposurePreviewSize {
        if (!RawTilePlanner.shouldTile(sourceWidth, sourceHeight)) {
            return ExposurePreviewSize(sourceWidth, sourceHeight)
        }
        val working = RawTilePlanner.plan(
            sourceWidth = sourceWidth,
            sourceHeight = sourceHeight,
            outputSourceBounds = RawTileRect(0, 0, sourceWidth, sourceHeight),
            rotation = 0,
            coreEdgePx = RAW_PREWARM_CORE_EDGE_PX,
            supportPx = RAW_TILE_SUPPORT_PX,
            cfaPeriod = 2,
        ).first().sourceWorking
        return ExposurePreviewSize(working.width, working.height)
    }

    private fun resolveLongEdgePreviewSize(
        sourceWidth: Int,
        sourceHeight: Int,
        maxLongEdge: Int
    ): ExposurePreviewSize {
        if (sourceWidth <= 0 || sourceHeight <= 0) {
            return ExposurePreviewSize(1, 1)
        }
        val longEdge = minOf(max(sourceWidth, sourceHeight), maxLongEdge.coerceAtLeast(1))
            .coerceAtLeast(1)
        return if (sourceWidth >= sourceHeight) {
            ExposurePreviewSize(
                width = longEdge,
                height = ((longEdge.toFloat() * sourceHeight.toFloat() / sourceWidth.toFloat()) + 0.5f)
                    .toInt()
                    .coerceAtLeast(1)
            )
        } else {
            ExposurePreviewSize(
                width = ((longEdge.toFloat() * sourceWidth.toFloat() / sourceHeight.toFloat()) + 0.5f)
                    .toInt()
                    .coerceAtLeast(1),
                height = longEdge
            )
        }
    }

    private fun renderOutputPass(
        rotation: Int,
        width: Int,
        height: Int,
        bounds: Rect,
        sourceTextureId: Int
    ) {
        checkNotNull(
            outputPass.render(
                RawOutputPass.Input(
                    textureId = sourceTextureId,
                    sourceWidth = width,
                    sourceHeight = height,
                    rotation = rotation,
                    bounds = bounds,
                    targetFramebufferId = outputFramebufferId,
                    targetTextureId = outputTextureId,
                ),
            ),
        ) { "RAW output pass failed" }
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

    private fun requireFramebufferComplete(
        label: String,
        framebufferId: Int,
        textureId: Int,
        width: Int,
        height: Int,
        internalFormat: String,
    ) {
        val status = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER)
        if (status != GLES30.GL_FRAMEBUFFER_COMPLETE) {
            val message =
                "$label framebuffer incomplete: status=0x${status.toString(16)} " +
                    "fbo=$framebufferId texture=$textureId size=${width}x$height " +
                    "format=$internalFormat"
            PLog.e(TAG, message)
            throw IllegalStateException(message)
        }
        PLog.d(
            TAG,
            "RAW_GL target=$label fbo=$framebufferId texture=$textureId " +
                "size=${width}x$height format=$internalFormat status=complete",
        )
    }

    /**
     * 释放资源
     */
    fun release() {
        if (!isInitialized) return

        EGL14.eglMakeCurrent(eglDisplay, eglSurface, eglSurface, eglContext)

        engineTonePass.release()
        hncsOutputLinearPass.release()
        adjustmentPass.release()
        srgbPass.release()
        sharpenPass.release()
        outputPass.release()
        hdrReferencePass.release()
        chromaDenoiseAlgorithm.release()
        filmicHighlightReconstructionAlgorithm.release()

        demosaicNoisePropagationCalibrator.release()
        vgnDemosaicAlgorithm.release()
        quadBayerDemosaicAlgorithm.release()
        profileGainTableAlgorithm.release()
        meteringDemosaicAlgorithm.release()
        linearRcdPass.release()
        photonDehazePipeline.release()
        warpRectilinearPass.release()
        linearUintToFloatPass.release()
        linearFloatToUintPass.release()
        linearRgbExpandPass.release()
        denoiseProfileAlgorithm.release()
        releaseDenoiseProfileFramebuffers()

        if (exportedStackTextureIds.isNotEmpty()) {
            if (rawTextureId in exportedStackTextureIds) {
                rawTextureId = 0
            }
            GLES30.glDeleteTextures(
                exportedStackTextureIds.size,
                exportedStackTextureIds.toIntArray(),
                0,
            )
            exportedStackTextureIds.clear()
        }
        if (rawTextureId != 0) GLES30.glDeleteTextures(1, intArrayOf(rawTextureId), 0)
        releaseProfileGainTableTexture()
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
        if (linearExposurePreviewTextureId != 0) GLES30.glDeleteTextures(
            1,
            intArrayOf(linearExposurePreviewTextureId),
            0
        )
        if (linearExposurePreviewFramebufferId != 0) GLES30.glDeleteFramebuffers(
            1,
            intArrayOf(linearExposurePreviewFramebufferId),
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
