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
import androidx.core.graphics.createBitmap
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.camera.RawBlackBorderCrop
import com.hinnka.mycamera.data.ContentRepository
import com.hinnka.mycamera.lut.ChromaDenoiseDefaults
import com.hinnka.mycamera.lut.ChromaDenoiseShaders
import com.hinnka.mycamera.lut.ShadowsHighlightsShader
import com.hinnka.mycamera.ml.SharedDepthEstimator
import com.hinnka.mycamera.processor.GlesGpuCompletion
import com.hinnka.mycamera.processor.GlesGpuScheduler
import com.hinnka.mycamera.processor.GlesComputeWorkGroup
import com.hinnka.mycamera.processor.GlesRawRadianceStacker
import com.hinnka.mycamera.processor.GpuLinearRgbSource
import com.hinnka.mycamera.processor.GpuStackCompletionTimeline
import com.hinnka.mycamera.processor.RawNoiseModel
import com.hinnka.mycamera.processor.RawStackResult
import com.hinnka.mycamera.utils.BitmapUtils
import com.hinnka.mycamera.utils.DirectBufferPixelPacker
import com.hinnka.mycamera.utils.LargeDirectBuffer
import com.hinnka.mycamera.utils.PLog
import com.hinnka.mycamera.utils.RawProcessor
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.asCoroutineDispatcher
import kotlinx.coroutines.currentCoroutineContext
import kotlinx.coroutines.ensureActive
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
import kotlin.math.exp
import kotlin.math.floor
import kotlin.math.ln
import kotlin.math.max
import kotlin.math.min
import kotlin.math.pow
import kotlin.math.roundToInt
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
            dngRawData.noiseProfile ?: baseMetadata?.channelNoiseProfile ?: floatArrayOf(0f, 0f)
        val dngAverageNoiseProfile = dngRawData.noiseProfile
            ?.let(RawMetadata::averageNoiseProfile)
            ?.takeIf { profile -> profile[0] > 0f || profile[1] > 0f }
        val noiseProfile =
            dngAverageNoiseProfile ?: baseMetadata?.noiseProfile ?: floatArrayOf(0f, 0f)

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
            shutterSpeed = if (dngRawData.shutterSpeed == 0L) (baseMetadata?.shutterSpeed
                ?: 0L) else dngRawData.shutterSpeed,
            aperture = if (dngRawData.aperture == 0f) (baseMetadata?.aperture
                ?: 0f) else dngRawData.aperture,
            activeArray = activeArray,
            noiseProfile = noiseProfile,
            channelNoiseProfile = channelNoiseProfile,
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
        // PASS_3 needs 16 pixels, and the following color-noise stages consume another
        // three one-pixel neighborhoods before the final ROI crop. Keep the offset a
        // multiple of four so the packed RGBA Bayer layout remains aligned.
        private const val VGN_WORK_HALO = 20
        // Phocus' color-noise control is an integer level. Level 50 selects 4LP table entry
        // min(level, 40) + 4 = 44 for pass 1 and entry min(level, 74) - 30 = 20 for pass 3.
        // It is also above the native level-35 gate, so the complete IIR2 pass 1/2/3 chain runs.
        private const val VGN_COLOR_NOISE_LEVEL = 50
        private const val VGN_ADVANCED_COLOR_NOISE_ENABLED = true
        private const val RAW_TILE_CORE_EDGE_PX = 3072
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
        private const val DARKTABLE_FILMIC_HR_RECONSTRUCT_THRESHOLD_EV = 0f
        private const val DARKTABLE_FILMIC_HR_RECONSTRUCT_FEATHER_EV = 3f
        private const val DARKTABLE_FILMIC_HR_NOISE_LEVEL = 0.2f
        private const val DARKTABLE_FILMIC_HR_GAMMA = 0.5f
        private const val DARKTABLE_FILMIC_HR_GAMMA_COMP = 0.5f
        private const val DARKTABLE_FILMIC_HR_BETA = 1f
        private const val DARKTABLE_FILMIC_HR_BETA_COMP = 0f
        private const val DARKTABLE_FILMIC_HR_DELTA = 1f
        private const val DARKTABLE_FILMIC_HR_HIGH_QUALITY_ITERATIONS = 1
        private const val DENOISE_PROFILE_GLES31_MIN_SSBO_BYTES = 128L * 1024L * 1024L
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
        profileToneMapMode: RawProfileToneMapMode,
        captureWidth: Int,
        captureHeight: Int,
        rawMaxFrameCount: Int,
        rawMaxEnabled: Boolean,
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
                    profileToneMapMode = profileToneMapMode,
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
            val rawMaxReady = if (rawMaxEnabled) {
                runCatching {
                    GlesRawRadianceStacker(
                        width = warmupWidth,
                        height = warmupHeight,
                        cfaPattern = 0,
                        blackLevel = FloatArray(4),
                        whiteLevel = 1023,
                        noiseModel = FloatArray(2),
                        rawNoiseModel = RawNoiseModel.EMPTY,
                        lensShading = null,
                        lensShadingWidth = 0,
                        lensShadingHeight = 0,
                        useCurrentGlContext = true,
                        exportGpuLinearRgbSource = true,
                        prewarmHighlightPrograms = rawMaxHdrCompositionEnabled,
                        prewarmLongPrograms = rawMaxHdrCompositionEnabled,
                    ).prewarmCapturePipeline(rawMaxFrameCount)
                    true
                }.onFailure { error ->
                    PLog.w(TAG, "RAW Max program prewarm failed", error)
                }.getOrDefault(false)
            } else {
                true
            }
            GLES30.glFinish()
            val ready = captureProfileReady && renderEngineReady && rawMaxReady
            PLog.d(
                TAG,
                "RAW capture pipeline prewarmed ready=$ready engine=$colorEngine " +
                    "profileToneMap=$profileToneMapMode " +
                    "capture=${warmupWidth}x$warmupHeight rawMax=$rawMaxEnabled " +
                    "rawMaxHdr=$rawMaxHdrCompositionEnabled frames=$rawMaxFrameCount " +
                    "took=${System.currentTimeMillis() - start}ms",
            )
            ready
        }

    /**
     * Executes the same shader paths used by capture-time exposure matching and PGTM generation.
     * Linking alone is insufficient on drivers that defer pipeline compilation until first draw.
     */
    private fun prewarmCaptureProfilePasses(
        profileToneMapMode: RawProfileToneMapMode,
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

            val exposureReady = renderExposurePreviewRequest(
                request = RawExposurePreviewRequest(
                    width = programSize.width,
                    height = programSize.height,
                    solve = { renderSample -> if (renderSample(0f) != null) 0f else null },
                ),
                metadata = metadata,
                samplesPerPixel = 4,
                sourceTextureId = demosaicTextureId,
                rawBlackPointCorrection = 0f,
                rawWhitePointCorrection = 0f,
                colorCorrectionMatrix = identity,
                cameraWhite = metadata.cameraWhite,
                dcpRenderPlan = null,
                applyLinearDngBaselineExposure = false,
                applyProfileDngBaselineExposure = false,
                applyProfileGainTableMap = false,
                clampProfileRgb = true,
                outputBounds = Rect(0, 0, programSize.width, programSize.height),
                outputRotation = 0,
                spectralFilmLut = null,
                hncsRenderPlan = null,
                colorEngine = RawRenderingEngine.AdobeCurve,
                outputWorkingColorSpace = ColorSpace.ProPhoto,
                profileToEngineTransform = identity,
                rawToneMappingParameters = RawToneMappingParameters.DEFAULT,
                useProfileExposureRamp = true,
                applyProfileDcpBaselineExposureOffset = false,
                supportProfileOverrange = false,
                hueSatMapSupportsOverrange = false,
            ) != null
            val warmedProfileMap = when (profileToneMapMode) {
                RawProfileToneMapMode.Photon -> generateProfileGainTableMapOnGpu(
                    rawTextureId = linearRawTexture,
                    width = programSize.width,
                    height = programSize.height,
                    samplesPerPixel = 4,
                    metadata = metadata,
                    statsBounds = Rect(0, 0, programSize.width, programSize.height),
                    baselineExposureEv = 0f,
                    colorCorrectionMatrix = identity,
                    cameraWhite = metadata.cameraWhite,
                    hueSatMap = null,
                    hueSatMapSupportsOverrange = false,
                )

                else -> null
            }
            val profileReady = when (profileToneMapMode) {
                RawProfileToneMapMode.Photon -> warmedProfileMap != null

                else -> true
            }

            // Execute only a small viewport to force deferred driver compilation. PGTM output is
            // scene-dependent, so the synthetic map is deliberately not uploaded or retained.
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
                applyProfileGainTableMap = false,
                profileBaselineExposureOffsetEv = 0f,
                clampProfileRgb = true,
                supportProfileOverrange = false,
                hueSatMapSupportsOverrange = false,
                label = "CaptureWarmupLinearRcdPass",
            )
            PLog.d(
                TAG,
                "RAW reusable capture state prewarmed: capture=${captureWidth}x$captureHeight " +
                    "resource=${resourceSize.width}x${resourceSize.height} " +
                    "programViewport=${programSize.width}x${programSize.height} " +
                    "profile=$profileToneMapMode",
            )
            exposureReady && profileReady
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

    // EGL 资源
    private var eglDisplay: EGLDisplay = EGL14.EGL_NO_DISPLAY
    private var eglContext: EGLContext = EGL14.EGL_NO_CONTEXT
    private var eglSurface: EGLSurface = EGL14.EGL_NO_SURFACE

    // GL 资源
    private val engineTonePrograms = IntArray(RawRenderingEngine.entries.size)
    private var hncsOutputLinearProgram = 0
    private var adjustmentProgram = 0
    private var srgbProgram = 0
    private var sharpenProgram = 0
    private var passthroughProgram = 0
    private var hdrReferenceProgram = 0
    private var chromaDenoiseGuideProgram = 0
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
    private val vgnPrograms = IntArray(VgnShaders.PROGRAM_SOURCES.size)
    private var quadPopulateProgram = 0
    private var quadGreenProgram = 0
    private var quadChromaProgram = 0
    private var quadRefineProgram = 0
    private var quadWriteOutputProgram = 0
    private var pgtmCellSamplesProgram = 0
    private val pgtmPhotonPrograms =
        IntArray(DngPhotonLocalToneMapGpuShaders.Pass.entries.size)
    private var meteringHalfResolutionProgram = 0
    private var linearRcdProgram = 0
    private var warpRectilinearProgram = 0
    private var linearRawRgbProgram = 0
    private var linearRawRgbExpandProgram = 0
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
    private var srgbExposurePreviewFramebufferId = 0
    private var srgbExposurePreviewTextureId = 0
    private var srgbExposurePreviewWidth = 0
    private var srgbExposurePreviewHeight = 0

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
    private var dcpHueSatTextureSource: DcpHueSatMap? = null
    private var dcpLookTableTextureId = 0
    private var spectralFilmTextureId = 0
    private var spectralFilmTextureKey: String? = null
    private var hncsColorMapTextureId = 0
    private var hncsCurveTextureId = 0
    private var hncsColorMapTextureKey: String? = null
    private var hncsCurveTextureKey: String? = null
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
    private var denoiseNlmBufferWidth = 0
    private var denoiseNlmBufferRows = 0
    private var denoiseNlmMaxSsboBytes = 0L

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
        val rowStride: Int,
        val fullWidth: Int,
        val fullHeight: Int,
        val samplesPerPixel: Int,
        val metadata: RawMetadata,
        val tiles: List<RawRenderTile>,
        val outputSourceBounds: Rect,
        val rotation: Int,
        val includeHdrReference: Boolean,
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
        denoiseValue: Float? = null,
        chromaDenoiseValue: Float? = null,
        rawDcpId: String? = null,
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
                denoiseValue = denoiseValue,
                chromaDenoiseValue = chromaDenoiseValue,
                rawDcpId = rawDcpId,
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

    /** Solves optional viewfinder exposure and prepares the capture PGTM in the same GL pass. */
    internal suspend fun prepareCaptureProfile(
        context: Context,
        input: RawDngCaptureProfileInput,
        aspectRatio: AspectRatio?,
        cropRegion: Rect?,
        rotation: Int,
        request: RawExposurePreviewRequest?,
        profileToneMapMode: RawProfileToneMapMode,
        statsBounds: Rect?,
        rawBlackPointCorrection: Float = 0f,
        rawWhitePointCorrection: Float = 0f,
        rawAutoWhiteBalanceEstimate: Boolean = false,
        applyLensShadingCorrection: Boolean = true,
        rawBlackBorderCrop: RawBlackBorderCrop = RawBlackBorderCrop(),
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
                dcpRenderPlan = input.meteringRenderPlan,
                spectralFilmStock = null,
                spectralFilmPrint = null,
                rawRenderingEngine = RawRenderingEngine.AdobeCurve,
                rawToneMappingParameters = RawToneMappingParameters.DEFAULT.withProfileToneMapMode(
                    RawProfileToneMapMode.Default
                ),
                rawBlackBorderCrop = rawBlackBorderCrop,
                exposurePreviewRequest = request,
                captureProfileToneMapMode = profileToneMapMode,
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
        denoiseValue: Float? = null,
        chromaDenoiseValue: Float? = null,
        rawDcpId: String? = null,
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
                denoiseValue = denoiseValue,
                chromaDenoiseValue = chromaDenoiseValue,
                rawDcpId = rawDcpId,
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
     * Renders the original LinearRaw RGB buffer with the same prepared metadata/profile passed
     * to the DNG writer. This keeps the established DNG rendering contract while avoiding
     * lossless-JPEG decompression and the native pixel-buffer copy performed by [processDngNative].
     *
     * BaselineExposure, PGTM and the embedded color/tone plan are prepared once and shared by
     * both consumers; the only permitted difference is numeric quantization during TIFF write.
     */
    suspend fun processLinearDngBufferForHdrSources(
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
            samplesPerPixel !in 3..4 || width <= 0 || height <= 0 || rowStride <= 0
        ) {
            PLog.e(
                TAG,
                "Invalid in-memory LinearRaw DNG source: ${width}x$height " +
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
            "RAW_LINEAR_DNG_BYPASS source=" +
                "${if (gpuLinearRgbSource != null) "GPU_STACK_TEXTURE" else "CPU_RGB16_BUFFER"} " +
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
                "rawAwbIgnoredForLinear=$rawAutoWhiteBalanceEstimate"
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
            PLog.e(TAG, "Failed to process in-memory LinearRaw DNG source", e)
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
        denoiseValue: Float? = null,
        chromaDenoiseValue: Float? = null,
        rawDcpId: String? = null,
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
        exposurePreviewRequest: RawExposurePreviewRequest? = null,
        captureProfileToneMapMode: RawProfileToneMapMode? = null,
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
            ).copy(profileGainTableMap = profileGainTableMap ?: actualMetadata?.profileGainTableMap)
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
        val captureProfilePreparationRequested =
            exposurePreviewRequest != null || captureProfileToneMapMode != null
        val useHalfResolutionMeteringDemosaic =
            exposurePreviewRequest != null &&
                actualSamplesPerPixel == 1 &&
                actualMetadata.frameCount == 1 &&
                actualMetadata.cfaPattern in RawMetadata.CFA_RGGB..RawMetadata.CFA_BGGR &&
                !hasActiveWarp
        val tileBlockingReason = when {
            !highResolutionOutput -> null
            actualSamplesPerPixel !in setOf(1, 3, 4) ->
                "unsupported samplesPerPixel=$actualSamplesPerPixel"
            borrowedGpuSource != null -> "GPU-resident stacked source"
            hasActiveWarp -> "DNG WarpRectilinear requires a displacement-aware source region"
            colorEngine == RawRenderingEngine.DarktableFilmic ->
                "Darktable Filmic wavelet reconstruction requires scale-by-scale tiling"
            captureProfilePreparationRequested ->
                "capture metering/profile preparation"
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
                coreEdgePx = RAW_TILE_CORE_EDGE_PX,
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
            PLog.w(
                TAG,
                "RAW tiled rendering unavailable for this pipeline: $tileBlockingReason; " +
                    "size=${outputSourceBounds.width()}x${outputSourceBounds.height()}",
            )
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
                // image. They are not part of this tile pool and must not overlap the full RAW
                // upload used for global profile statistics.
                releaseTiledRenderFramebuffers()
            }
            if (actualWidth > maxTextureSize || actualHeight > maxTextureSize) {
                PLog.e(
                    TAG,
                    "Input ${actualWidth}x$actualHeight exceeds GL_MAX_TEXTURE_SIZE=$maxTextureSize",
                )
                return@withContext null
            }
            if (rawRenderTiles.isEmpty()) {
                when {
                    useHalfResolutionMeteringDemosaic -> setupFullResFramebuffer(
                        (actualWidth + 1) / 2,
                        (actualHeight + 1) / 2,
                    )

                    !captureProfilePreparationRequested || exposurePreviewRequest != null ->
                        setupFullResFramebuffer(actualWidth, actualHeight)
                }
            }
            if (borrowedGpuSource != null) {
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

        val embeddedProfileToneCurveLut = embeddedDngRenderPlan?.toneCurveLut
        val embeddedProfileToneMapMode = when {
            embeddedProfileToneCurveLut != null &&
                DngProfileToneCurve.isPhotonPgtmToneCurveLut(embeddedProfileToneCurveLut) -> {
                RawProfileToneMapMode.Photon
            }

            else -> RawProfileToneMapMode.Default
        }
        val normalizedToneMappingParameters = rawToneMappingParameters.normalized()
        val photonPgtmToneMapRequested = useAdobeProfilePipeline &&
            normalizedToneMappingParameters.usePhotonPgtmToneMap
        val oppoMasterToneMapRequested = useAdobeProfilePipeline &&
            normalizedToneMappingParameters.useOppoMasterToneMap
        val requestedProfileToneMapMode = when {
            photonPgtmToneMapRequested -> RawProfileToneMapMode.Photon
            else -> RawProfileToneMapMode.Default
        }
        val profileGainToneMapRequested =
            requestedProfileToneMapMode == RawProfileToneMapMode.Photon
        val embeddedProfileGainTableMap = actualMetadata.profileGainTableMap?.takeIf { it.isValid }
        var profileGainTableMap = embeddedProfileGainTableMap
        var profileToneCurveLut = embeddedProfileToneCurveLut
        var profileToneMapMode = embeddedProfileToneMapMode
        var profileGainTableMapSource = "embedded"

        if (profileGainToneMapRequested &&
            (profileGainTableMap == null || profileToneMapMode != requestedProfileToneMapMode)
        ) {
            val generated = generateProfileGainTableMapOnGpu(
                rawTextureId = rawTextureId,
                width = actualWidth,
                height = actualHeight,
                samplesPerPixel = actualSamplesPerPixel,
                metadata = actualMetadata.copy(profileGainTableMap = null),
                statsBounds = outputSourceBounds,
                baselineExposureEv = DngBaselineExposure.sanitize(actualMetadata.baselineExposure),
                colorCorrectionMatrix = resolvedDcpRenderPlan?.colorCorrectionMatrix
                    ?: actualMetadata.colorCorrectionMatrix,
                cameraWhite = resolvedDcpRenderPlan?.cameraWhite ?: actualMetadata.cameraWhite,
                hueSatMap = resolvedDcpRenderPlan?.hueSatMap,
                hueSatMapSupportsOverrange = false,
                warpRectilinear = applicableDngWarpRectilinear,
            )?.takeIf { it.isValid }
            if (generated != null) {
                profileGainTableMap = generated
                profileGainTableMapSource = "generated-gpu"
            } else if (profileToneMapMode != requestedProfileToneMapMode) {
                profileGainTableMap = null
                profileGainTableMapSource = "generation-failed"
            }
            if (profileGainTableMap != null) {
                profileToneMapMode = requestedProfileToneMapMode
                profileToneCurveLut = null
            }
        }

        val profileGainToneMapActive = useAdobeProfilePipeline &&
            profileGainToneMapRequested &&
            !oppoMasterToneMapRequested &&
            profileGainTableMap != null
        actualMetadata = actualMetadata.copy(
            profileGainTableMap = profileGainTableMap.takeIf { profileGainToneMapActive }
        )
        if (profileGainToneMapActive) {
            PLog.d(
                TAG,
                "RAW PGTM/ProfileToneCurve ready: " +
                    "mode=$requestedProfileToneMapMode source=$profileGainTableMapSource " +
                    "tag=${profileGainTableMap.sourceTag} " +
                    "grid=${profileGainTableMap.mapPointsH}x" +
                    "${profileGainTableMap.mapPointsV}x${profileGainTableMap.mapPointsN} " +
                    "requested=${normalizedToneMappingParameters.profileToneMapMode}"
            )
        } else if (profileGainToneMapRequested) {
            PLog.e(
                TAG,
                "RAW PGTM generation failed: mode=$requestedProfileToneMapMode " +
                    "size=${actualWidth}x$actualHeight samplesPerPixel=$actualSamplesPerPixel"
            )
        }
        val oppoMasterToneMapActive = oppoMasterToneMapRequested
        val embeddedProfileToneCurveDisabled = embeddedProfileToneMapMode != RawProfileToneMapMode.Default &&
            !profileGainToneMapActive
        val profileBaseDcpRenderPlan = if (
            embeddedProfileToneCurveDisabled &&
            !hasDcpSelection &&
            useAdobeProfilePipeline
        ) {
            withoutProfileToneCurve(
                resolvedDcpRenderPlan,
                reason = when {
                    embeddedProfileToneCurveDisabled && oppoMasterToneMapRequested ->
                        "OPPO master tone map requested"
                    else -> "profile tone map disabled for this photo"
                }
            )
        } else {
            resolvedDcpRenderPlan
        }
        val activeDcpRenderPlan = when {
            profileGainToneMapActive -> {
                profileGainToneMapRenderPlan(
                    basePlan = profileBaseDcpRenderPlan,
                    metadata = actualMetadata,
                    workingColorSpace = profileWorkingColorSpace,
                    mode = requestedProfileToneMapMode,
                    preferredToneCurveLut = profileToneCurveLut.takeIf {
                        profileToneMapMode == requestedProfileToneMapMode
                    }
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
            profileGainToneMapActive -> when {
                dcpRenderPlan != null -> "provided+${requestedProfileToneMapMode.name.lowercase()}-tone-map"
                rawDcpId != null -> "$rawDcpId+${requestedProfileToneMapMode.name.lowercase()}-tone-map"
                !hasDcpSelection && embeddedDngRenderPlan != null -> "embedded-dng+${requestedProfileToneMapMode.name.lowercase()}-tone-map"
                else -> "${requestedProfileToneMapMode.name.lowercase()}-tone-map"
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
        val hasDngBaselineExposure = shouldApplyLinearDngBaselineExposure(actualMetadata)
        // Photon curves are authored in the physical BaselineExposure domain. Apply that exact
        // 2^EV gain after PGTM in the linear pass for both EV signs; the generic Adobe negative
        // exposure tone preserves white and would otherwise invalidate the analytic curve.
        val photonPgtmExactBaseline = profileGainToneMapActive &&
            requestedProfileToneMapMode == RawProfileToneMapMode.Photon
        val applyLinearDngBaselineExposure = hasDngBaselineExposure &&
            (!useAdobeProfilePipeline || photonPgtmExactBaseline)
        val applyProfileDngBaselineExposure = useAdobeProfilePipeline &&
            !photonPgtmExactBaseline
        val applyDcpBaselineExposureOffset =
            shouldApplyDcpBaselineExposureOffset(activeDcpRenderPlan)
        val useProfileExposureRamp = useAdobeProfilePipeline
        val photonPgtmNormalizedSdr = profileGainToneMapActive &&
            requestedProfileToneMapMode == RawProfileToneMapMode.Photon
        val supportProfileOverrange =
            useAdobeProfilePipeline &&
                !photonPgtmNormalizedSdr &&
                activeDcpRenderPlan?.supportsOverrange == true
        val hueSatMapSupportsOverrange = useAdobeProfilePipeline && if (
            photonPgtmNormalizedSdr
        ) {
            false
        } else if (
            profileGainToneMapActive
        ) {
            profileBaseDcpRenderPlan?.supportsOverrange == true
        } else {
            activeDcpRenderPlan?.supportsOverrange == true
        }
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
                } else if (captureProfilePreparationRequested && exposurePreviewRequest == null) {
                    PLog.d(
                        TAG,
                        "RAW capture profile preparation skipped demosaic: exposure matching disabled",
                    )
                } else if (actualSamplesPerPixel in 3..4) {
                    renderLinearRawRgbToTexture(
                        sourceTextureId = rawTextureId,
                        sourceSamplesPerPixel = actualSamplesPerPixel,
                        targetTextureId = demosaicTextureId,
                        width = actualWidth,
                        height = actualHeight
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
                    } else if (actualMetadata.frameCount > 1) {
                        check(ensureStandardBayerRcdPrograms()) {
                            "Unable to initialize Standard Bayer RCD programs"
                        }
                        runStandardBayerRcdDemosaic(actualMetadata, actualWidth, actualHeight)
                    } else {
                        check(ensureVgnPrograms()) {
                            "Unable to initialize single-frame VGN demosaic programs"
                        }
                        runSingleFrameVgnDemosaic(
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
                            (captureProfilePreparationRequested && exposurePreviewRequest == null)
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

            if (captureProfilePreparationRequested) {
                val solvedExposureEv = exposurePreviewRequest?.let { request ->
                    renderExposurePreviewRequest(
                        request = request,
                        metadata = actualMetadata,
                        samplesPerPixel = actualSamplesPerPixel,
                        sourceTextureId = demosaicTextureId,
                        rawBlackPointCorrection = rawBlackPointCorrection,
                        rawWhitePointCorrection = rawWhitePointCorrection,
                        colorCorrectionMatrix = linearColorCorrectionMatrix,
                        cameraWhite = linearCameraWhite,
                        dcpRenderPlan = activeDcpRenderPlan,
                        applyLinearDngBaselineExposure = applyLinearDngBaselineExposure,
                        applyProfileDngBaselineExposure = applyProfileDngBaselineExposure,
                        applyProfileGainTableMap = false,
                        clampProfileRgb = clampProfileRgb,
                        outputBounds = bounds,
                        outputRotation = actualRotation,
                        spectralFilmLut = spektrafilmLut,
                        hncsRenderPlan = hncsRenderPlan,
                        colorEngine = colorEngine,
                        outputWorkingColorSpace = engineWorkingColorSpace,
                        profileToEngineTransform = profileToEngineTransform,
                        rawToneMappingParameters = rawToneMappingParameters,
                        useProfileExposureRamp = useProfileExposureRamp,
                        applyProfileDcpBaselineExposureOffset = applyDcpBaselineExposureOffset,
                        supportProfileOverrange = supportProfileOverrange,
                        hueSatMapSupportsOverrange = hueSatMapSupportsOverrange,
                        hncsCameraDomainGains = hncsCameraDomainGains,
                        stackCompletionTimeline = borrowedGpuSource?.stackCompletionTimeline,
                    )
                }
                solvedExposureEv?.let { exposureEv ->
                    PLog.i(
                        TAG,
                        "RAW_VIEWFINDER_BASELINE stage=METERING_COMPLETE curve=DEFAULT " +
                            "pgtm=false sourceBaselineEv=${actualMetadata.baselineExposure} " +
                            "meteredExposureOffsetEv=$exposureEv",
                    )
                }
                val finalBaselineExposureEv = DngBaselineExposure.sanitize(
                    actualMetadata.baselineExposure + (solvedExposureEv ?: 0f)
                )
                val captureProfileGainTableMap = when (captureProfileToneMapMode) {
                    RawProfileToneMapMode.Photon -> generateProfileGainTableMapOnGpu(
                        rawTextureId = rawTextureId,
                        width = actualWidth,
                        height = actualHeight,
                        samplesPerPixel = actualSamplesPerPixel,
                        metadata = actualMetadata,
                        statsBounds = captureProfileStatsBounds,
                        baselineExposureEv = finalBaselineExposureEv,
                        colorCorrectionMatrix = linearColorCorrectionMatrix,
                        cameraWhite = linearCameraWhite,
                        hueSatMap = activeDcpRenderPlan?.hueSatMap,
                        hueSatMapSupportsOverrange = hueSatMapSupportsOverrange,
                        warpRectilinear = applicableDngWarpRectilinear,
                    )
                    else -> null
                }
                val profileRequired = captureProfileToneMapMode == RawProfileToneMapMode.Photon
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

            // BaselineExposure already contains the capture-time viewfinder match. Rendering only
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
                        rowStride = actualRowStride,
                        fullWidth = actualWidth,
                        fullHeight = actualHeight,
                        samplesPerPixel = actualSamplesPerPixel,
                        metadata = actualMetadata,
                        tiles = rawRenderTiles,
                        outputSourceBounds = outputSourceBounds,
                        rotation = actualRotation,
                        includeHdrReference = includeHdrReference,
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

            // The HDR reference branches directly from undenoised, demosaicked camera RGB.
            // It intentionally excludes denoise, ProfileGainMap, edit exposure, rendering engines,
            // their additional tone mapping, and output sharpening. The complete ACR3 reference
            // curve is applied. Its output contract is linear extended sRGB.
            val hdrReferenceBitmap = if (includeHdrReference) {
                setupHdrReferenceFramebuffer(actualWidth, actualHeight)
                renderHdrReferencePass(
                    metadata = actualMetadata,
                    inputTextureId = demosaicTextureId,
                    colorCorrectionMatrix = linearColorCorrectionMatrix,
                    cameraWhite = linearCameraWhite,
                    hueSatMap = activeDcpRenderPlan?.hueSatMap,
                    profileToLinearSrgb = profileToLinearSrgbTransform,
                )
                setupOutputFramebuffer(finalWidth, finalHeight)
                renderOutputPass(
                    actualRotation,
                    actualWidth,
                    actualHeight,
                    bounds,
                    hdrReferenceTextureId,
                )
                val hdrPixels = readPixels(
                    finalWidth,
                    finalHeight,
                    android.graphics.ColorSpace.get(
                        android.graphics.ColorSpace.Named.LINEAR_EXTENDED_SRGB
                    ),
                )
                releaseHdrReferenceFramebuffer()
                hdrPixels
            } else {
                null
            }

            // Chroma denoise runs first in the un-white-balanced camera RGB domain,
            // where the DNG/Camera2 R/B noise model is valid. It writes to the spare
            // full-resolution texture and preserves green while filtering R-G/B-G.
            val chromaDenoiseTextureId = renderDefaultChromaDenoise(
                sourceTextureId = demosaicTextureId,
                width = actualWidth,
                height = actualHeight,
                metadata = actualMetadata,
                chromaDenoiseValue = chromaDenoiseValue,
            )

            // darktable denoiseprofile follows chroma denoise and still runs before
            // input color conversion. Its VST returns un-white-balanced camera RGB.
            renderDenoiseProfilePass(
                sourceTextureId = chromaDenoiseTextureId,
                width = actualWidth,
                height = actualHeight,
                metadata = actualMetadata,
                denoiseValue = denoiseValue,
            )
            val denoiseProfileTextureId = gfTexId[1]
            // AdobeCurve keeps BaselineExposure for the DNG SDK exposure ramp. HNCS consumes
            // it through ColorCorrectAll's camera-domain inputEV; other linear engines retain
            // the exact post-matrix 2^EV gain.
            checkGlError("Before LinearRcdPass")

            renderLinearRcdPass(
                metadata = actualMetadata,
                sourceTextureId = denoiseProfileTextureId,
                targetFramebufferId = linearOutputFramebufferId,
                viewportWidth = actualWidth,
                viewportHeight = actualHeight,
                rawExposureCompensation = 0f,
                colorCorrectionMatrix = linearColorCorrectionMatrix,
                cameraWhite = linearCameraWhite,
                hueSatMap = activeDcpRenderPlan?.hueSatMap,
                applyDngBaselineExposure = applyLinearDngBaselineExposure,
                applyProfileGainTableMap = hasProfileGainTableMap,
                profileBaselineExposureOffsetEv = if (applyDcpBaselineExposureOffset) {
                    dcpBaselineExposureOffsetOrZero(activeDcpRenderPlan)
                } else {
                    0f
                },
                clampProfileRgb = clampProfileRgb,
                supportProfileOverrange = supportProfileOverrange,
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
            val outputTexture = demosaicTextureId

            // 重点：不要在此处销毁常驻双缓冲的 framebuffer，由 setupFullResFramebuffer 或 release() 统一管理其生命周期
            // if (demosaicFramebufferId != 0) {
            //     GLES30.glDeleteFramebuffers(1, intArrayOf(demosaicFramebufferId), 0)
            //     demosaicFramebufferId = 0
            // }
            // demosaicWidth = 0; demosaicHeight = 0
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
                "RAW output materialization timing " +
                    "upstreamStackGpuWait=${upstreamStackTiming?.totalWaitMs ?: 0L}ms " +
                    "renderGpuQueueWait=${outputGpuQueueWaitMs}ms " +
                    "pixelTransferAndBitmap=${outputMaterializationMs}ms",
            )

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
        // PGTM/global statistics have consumed the full RAW texture. Also evict any full-frame
        // intermediates retained by a previous render before either destination is allocated.
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
                "core=${RAW_TILE_CORE_EDGE_PX}px support=${RAW_TILE_SUPPORT_PX}px " +
                "work=${firstWorking.width}x${firstWorking.height} " +
                "output=${outputWidth}x$outputHeight serialGpu=true queueDepth=1 " +
                "estimatedTileGpuMiB=${estimatedTileGpuBytes / (1024L * 1024L)} " +
                "destinationMiB=${destinationBytes / (1024L * 1024L)}",
        )

        var completed = false
        try {
            vgnTileTexturePoolingEnabled = true
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

                    config.metadata.frameCount > 1 -> {
                        check(ensureStandardBayerRcdPrograms()) {
                            "Unable to initialize Standard Bayer RCD tile programs"
                        }
                        runStandardBayerRcdDemosaic(
                            metadata = config.metadata,
                            width = workWidth,
                            height = workHeight,
                            globalOriginX = working.left,
                            globalOriginY = working.top,
                        )
                    }

                    else -> {
                        check(ensureVgnPrograms()) {
                            "Unable to initialize VGN tile programs"
                        }
                        runSingleFrameVgnDemosaic(
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

                val chromaDenoiseTextureId = renderDefaultChromaDenoise(
                    sourceTextureId = demosaicTextureId,
                    width = workWidth,
                    height = workHeight,
                    metadata = config.metadata,
                    chromaDenoiseValue = config.chromaDenoiseValue,
                )
                renderDenoiseProfilePass(
                    sourceTextureId = chromaDenoiseTextureId,
                    width = workWidth,
                    height = workHeight,
                    metadata = config.metadata,
                    denoiseValue = config.denoiseValue,
                )
                renderLinearRcdPass(
                    metadata = config.metadata,
                    sourceTextureId = gfTexId[1],
                    targetFramebufferId = linearOutputFramebufferId,
                    viewportWidth = workWidth,
                    viewportHeight = workHeight,
                    rawExposureCompensation = 0f,
                    colorCorrectionMatrix = config.linearColorCorrectionMatrix,
                    cameraWhite = config.linearCameraWhite,
                    hueSatMap = config.hueSatMap,
                    applyDngBaselineExposure = config.applyLinearDngBaselineExposure,
                    applyProfileGainTableMap = config.hasProfileGainTableMap,
                    profileBaselineExposureOffsetEv = if (
                        config.applyDcpBaselineExposureOffset
                    ) {
                        dcpBaselineExposureOffsetOrZero(config.activeDcpRenderPlan)
                    } else {
                        0f
                    },
                    clampProfileRgb = config.clampProfileRgb,
                    supportProfileOverrange = config.supportProfileOverrange,
                    hueSatMapSupportsOverrange = config.hueSatMapSupportsOverrange,
                    hncsCameraDomainGains = config.hncsCameraDomainGains,
                    globalOriginX = working.left,
                    globalOriginY = working.top,
                    fullImageWidth = config.fullWidth,
                    fullImageHeight = config.fullHeight,
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
                    viewportWidth = workWidth,
                    viewportHeight = workHeight,
                )
                if (!combinedRendered) {
                    PLog.e(TAG, "Combined tile pass failed at tile=${tile.index}")
                    return null
                }
                setupSharpenFramebuffer(workWidth, workHeight)
                renderSharpenPass(
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
        vgnTileTexturePoolingEnabled = false
        releaseVgnTileTexturePool()
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
        releaseDenoiseProfileAccumulator()
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
        width: Int,
        height: Int,
        rawTextureWidth: Int = width,
        rawTextureHeight: Int = height,
        samplesPerPixel: Int,
        metadata: RawMetadata,
        statsBounds: Rect?,
        baselineExposureEv: Float,
        colorCorrectionMatrix: FloatArray,
        cameraWhite: FloatArray,
        hueSatMap: DcpHueSatMap?,
        hueSatMapSupportsOverrange: Boolean,
        warpRectilinear: FloatArray? = null,
    ): DngProfileGainTableMap? {
        if (rawTextureId == 0 || width <= 0 || height <= 0 ||
            rawTextureWidth <= 0 || rawTextureHeight <= 0 || metadata.whiteLevel <= 0f
        ) {
            PLog.e(
                TAG,
                "GPU RAW PGTM input invalid: texture=$rawTextureId size=${width}x$height " +
                    "source=${rawTextureWidth}x$rawTextureHeight white=${metadata.whiteLevel}",
            )
            return null
        }
        val photonProgramsReady = pgtmPhotonPrograms.all { it != 0 }
        if (pgtmCellSamplesProgram == 0 || !photonProgramsReady) {
            PLog.e(
                TAG,
                "GPU RAW PGTM programs unavailable: samples=$pgtmCellSamplesProgram " +
                    "photonProgramsReady=$photonProgramsReady",
            )
            return null
        }
        val safeStatsBounds = sanitizePgtmStatsBounds(
            statsBounds,
            rawTextureWidth,
            rawTextureHeight,
        ) ?: run {
            PLog.e(
                TAG,
                "GPU RAW PGTM stats bounds invalid: source=${rawTextureWidth}x$rawTextureHeight " +
                    "bounds=$statsBounds",
            )
            return null
        }
        val gridSize = DngPhotonProfileGainTableGenerator.gridSizeFor(width, height)
        val gridWidth = gridSize.getOrElse(0) { 0 }
        val gridHeight = gridSize.getOrElse(1) { 0 }
        if (gridWidth <= 0 || gridHeight <= 0) return null
        val activeWarpParameters = ArrayList<Float>()
        warpRectilinear
            ?.takeIf { it.isNotEmpty() && it.size % 8 == 0 }
            ?.let { warps ->
                for (offset in warps.indices step 8) {
                    val parameters = warps.copyOfRange(offset, offset + 8)
                    if (isNoOpWarpRectilinear(parameters)) continue
                    parameters.forEach { activeWarpParameters += it }
                }
        }

        val cellCount = gridWidth * gridHeight
        val sampleFloatCount = cellCount * DngPhotonLocalToneMapper.SAMPLES_PER_CELL
        val bufferIds = IntArray(2)
        val totalStartNs = System.nanoTime()
        GLES31.glGenBuffers(bufferIds.size, bufferIds, 0)
        try {
            val sampleBufferId = bufferIds[0]
            GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, sampleBufferId)
            GLES31.glBufferData(
                GLES31.GL_SHADER_STORAGE_BUFFER,
                sampleFloatCount * Float.SIZE_BYTES,
                null,
                GLES31.GL_DYNAMIC_READ,
            )
            GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, sampleBufferId)

            val warpBufferId = bufferIds[1]
            val warpBuffer = ByteBuffer.allocateDirect(
                max(activeWarpParameters.size, 1) * Float.SIZE_BYTES
            )
                .order(ByteOrder.nativeOrder())
                .asFloatBuffer()
            if (activeWarpParameters.isEmpty()) {
                warpBuffer.put(0f)
            } else {
                activeWarpParameters.forEach { warpBuffer.put(it) }
            }
            warpBuffer.position(0)
            GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, warpBufferId)
            GLES31.glBufferData(
                GLES31.GL_SHADER_STORAGE_BUFFER,
                max(activeWarpParameters.size, 1) * Float.SIZE_BYTES,
                warpBuffer,
                GLES31.GL_STATIC_DRAW,
            )
            GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 1, warpBufferId)

            GLES31.glUseProgram(pgtmCellSamplesProgram)
            GLES31.glActiveTexture(GLES31.GL_TEXTURE0 + RCD_RAW_TEXTURE_UNIT)
            GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, rawTextureId)
            GLES31.glUniform1i(
                GLES31.glGetUniformLocation(pgtmCellSamplesProgram, "uRawTexture"),
                RCD_RAW_TEXTURE_UNIT,
            )
            // PGTM is later applied to the demosaicked camera-linear image, whose RAW samples
            // already include lens-shading correction. Build its samples in the same domain;
            // otherwise the local map reintroduces lens vignetting into already-corrected flats.
            bindLensShadingForProgram(pgtmCellSamplesProgram, metadata)
            val activeHueSatMap = hueSatMap?.takeIf { it.isValid }
            GLES31.glActiveTexture(GLES31.GL_TEXTURE0 + LINEAR_DCP_HUE_SAT_TEXTURE_UNIT)
            val hueSatTextureId = activeHueSatMap?.let { map ->
                ensureDcpHueSatTexture(map)
            } ?: ensureDummyDcp3DTexture()
            GLES31.glBindTexture(GLES31.GL_TEXTURE_3D, hueSatTextureId)
            GLES31.glUniform1i(
                GLES31.glGetUniformLocation(pgtmCellSamplesProgram, "uHueSatMap"),
                LINEAR_DCP_HUE_SAT_TEXTURE_UNIT,
            )
            GLES31.glUniform1i(
                GLES31.glGetUniformLocation(pgtmCellSamplesProgram, "uHueSatEnabled"),
                if (activeHueSatMap != null) 1 else 0,
            )
            GLES31.glUniform3i(
                GLES31.glGetUniformLocation(pgtmCellSamplesProgram, "uHueSatDivisions"),
                activeHueSatMap?.hueDivisions ?: 1,
                activeHueSatMap?.satDivisions ?: 1,
                activeHueSatMap?.valueDivisions ?: 1,
            )
            GLES31.glUniform1i(
                GLES31.glGetUniformLocation(pgtmCellSamplesProgram, "uHueSatEncoding"),
                activeHueSatMap?.encoding ?: DcpHueSatMap.ENCODING_LINEAR,
            )
            GLES31.glUniform1i(
                GLES31.glGetUniformLocation(pgtmCellSamplesProgram, "uHueSatSupportOverrange"),
                if (hueSatMapSupportsOverrange) 1 else 0,
            )
            GLES31.glUniform2i(
                GLES31.glGetUniformLocation(pgtmCellSamplesProgram, "uImageSize"),
                rawTextureWidth,
                rawTextureHeight,
            )
            GLES31.glUniform4i(
                GLES31.glGetUniformLocation(pgtmCellSamplesProgram, "uStatsBounds"),
                safeStatsBounds.left,
                safeStatsBounds.top,
                safeStatsBounds.right,
                safeStatsBounds.bottom,
            )
            GLES31.glUniform2i(
                GLES31.glGetUniformLocation(pgtmCellSamplesProgram, "uGridSize"),
                gridWidth,
                gridHeight,
            )
            GLES31.glUniform1i(
                GLES31.glGetUniformLocation(pgtmCellSamplesProgram, "uSamplesPerPixel"),
                samplesPerPixel.coerceAtLeast(1),
            )
            GLES31.glUniform1i(
                GLES31.glGetUniformLocation(pgtmCellSamplesProgram, "uCfaPattern"),
                metadata.cfaPattern,
            )
            val blackLevel4 = FloatArray(4) { index ->
                metadata.blackLevel.getOrElse(index) {
                    metadata.blackLevel.firstOrNull() ?: 0f
                }
            }
            GLES31.glUniform4fv(
                GLES31.glGetUniformLocation(pgtmCellSamplesProgram, "uBlackLevel"),
                1,
                blackLevel4,
                0,
            )
            GLES31.glUniform1f(
                GLES31.glGetUniformLocation(pgtmCellSamplesProgram, "uWhiteLevel"),
                metadata.whiteLevel,
            )
            GLES31.glUniform1i(
                GLES31.glGetUniformLocation(pgtmCellSamplesProgram, "uWarpCount"),
                activeWarpParameters.size / 8,
            )
            GLES31.glUniform3fv(
                GLES31.glGetUniformLocation(pgtmCellSamplesProgram, "uCameraWhite"),
                1,
                sanitizeCameraWhite(cameraWhite),
                0,
            )
            val safeColorCorrectionMatrix = colorCorrectionMatrix.takeIf { matrix ->
                matrix.size >= 9 && matrix.take(9).all { it.isFinite() }
            } ?: floatArrayOf(
                1f, 0f, 0f,
                0f, 1f, 0f,
                0f, 0f, 1f,
            )
            GLES31.glUniformMatrix3fv(
                GLES31.glGetUniformLocation(pgtmCellSamplesProgram, "uColorCorrectionMatrix"),
                1,
                false,
                transposeMatrix3x3(safeColorCorrectionMatrix),
                0,
            )
            val samplesGpuStartNs = System.nanoTime()
            GLES31.glDispatchCompute(gridWidth, gridHeight, 1)
            GLES31.glMemoryBarrier(
                GLES31.GL_SHADER_STORAGE_BARRIER_BIT or GLES31.GL_BUFFER_UPDATE_BARRIER_BIT,
            )
            checkGlError("generateProfileGainTableMapOnGpu sample dispatch")
            val samplesGpuReadyNs = System.nanoTime()

            val plan = DngPhotonProfileGainTableGenerator.plan(
                width = width,
                height = height,
                baselineExposureEv = baselineExposureEv,
                diagnosticBand = DngPgtmDiagnostic.activeBandForSource("$TAG GPU capture"),
                samplingArea = PhotonPgtmSamplingArea(
                    originH = safeStatsBounds.left.toDouble() / rawTextureWidth,
                    originV = safeStatsBounds.top.toDouble() / rawTextureHeight,
                    extentH = safeStatsBounds.width().toDouble() / rawTextureWidth,
                    extentV = safeStatsBounds.height().toDouble() / rawTextureHeight,
                ),
            ) ?: return null
            val planReadyNs = System.nanoTime()
            if (plan.cellCount != cellCount) {
                PLog.e(
                    TAG,
                    "GPU RAW PGTM plan count=${plan.cellCount}, expected=$cellCount",
                )
                return null
            }

            val localToneMapGpuStartNs = System.nanoTime()
            val gains = generatePhotonProfileGainCurvesOnGpu(
                plan = plan,
                sampleBufferId = sampleBufferId,
            ) ?: return null
            val localToneMapGpuReadyNs = System.nanoTime()
            val map =
                DngPhotonProfileGainTableGenerator.mapFromGpuGains(plan, gains) ?: return null
            val photonPlan = plan.photonPlan
            val photonPreToneMapGain = photonPlan.exposureGain *
                2.0f.pow(photonPlan.parameters.preToneMapExposureBoostEv)
            PLog.d(
                TAG,
                "GPU Photon HDR prepared: size=${width}x$height " +
                    "source=${rawTextureWidth}x$rawTextureHeight " +
                    "statsBounds=$safeStatsBounds " +
                    "grid=${gridWidth}x$gridHeight samplesPerPixel=$samplesPerPixel " +
                    "lsc=${lensShadingLogString(metadata)} " +
                    "warpCount=${activeWarpParameters.size / 8} " +
                    "photonGuide=maxRgb " +
                    "hueSatOverrange=$hueSatMapSupportsOverrange " +
                    "photonBaselineGain=${photonPlan.exposureGain} " +
                    "photonPreToneMapGain=$photonPreToneMapGain " +
                    "photonLlfLevels=${photonPlan.parameters.localLaplacianIntensityLevels} " +
                    "photonRangeSigma=${photonPlan.parameters.localLaplacianRangeSigma} " +
                    "photonBguRangeSigma=${photonPlan.parameters.bilateralRangeSigma} " +
                    "samplesGpuMs=${(samplesGpuReadyNs - samplesGpuStartNs) / 1_000_000.0} " +
                    "planCpuMs=${(planReadyNs - samplesGpuReadyNs) / 1_000_000.0} " +
                    "localToneMapGpuMs=" +
                    "${(localToneMapGpuReadyNs - localToneMapGpuStartNs) / 1_000_000.0} " +
                    "totalMs=${(localToneMapGpuReadyNs - totalStartNs) / 1_000_000.0}",
            )
            return map
        } catch (error: Exception) {
            PLog.e(TAG, "GPU RAW PGTM preparation failed", error)
            return null
        } finally {
            GLES31.glUseProgram(0)
            GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, 0)
            GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 1, 0)
            GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
            GLES31.glActiveTexture(GLES31.GL_TEXTURE0 + LINEAR_DCP_HUE_SAT_TEXTURE_UNIT)
            GLES31.glBindTexture(GLES31.GL_TEXTURE_3D, 0)
            GLES31.glActiveTexture(GLES31.GL_TEXTURE0 + RCD_LENS_SHADING_TEXTURE_UNIT)
            GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, 0)
            GLES31.glActiveTexture(GLES31.GL_TEXTURE0 + RCD_RAW_TEXTURE_UNIT)
            GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, 0)
            GLES31.glDeleteBuffers(bufferIds.size, bufferIds, 0)
        }
    }

    private fun generatePhotonProfileGainCurvesOnGpu(
        plan: PhotonProfileGainTablePlan,
        sampleBufferId: Int,
    ): FloatArray? {
        val photonPlan = plan.photonPlan
        val parameters = photonPlan.parameters
        val preToneMapExposureGain = photonPlan.exposureGain *
            2.0f.pow(parameters.preToneMapExposureBoostEv)
        val gridWidth = plan.grid.mapPointsH
        val gridHeight = plan.grid.mapPointsV
        val sampleWidth = gridWidth * DngPhotonLocalToneMapper.SAMPLES_PER_CELL_SIDE
        val sampleHeight = gridHeight * DngPhotonLocalToneMapper.SAMPLES_PER_CELL_SIDE
        val sampleCount = sampleWidth * sampleHeight
        val pyramid = PhotonGpuPyramidLayout.create(sampleWidth, sampleHeight)
        val rangeBinCount = (1f / parameters.bilateralRangeSigma).roundToInt()
        val rangePlaneCount = rangeBinCount + 2
        val extendedGridWidth =
            gridWidth + 2 * DngPhotonLocalToneMapGpuShaders.BGU_FILTER_RADIUS
        val extendedGridHeight =
            gridHeight + 2 * DngPhotonLocalToneMapGpuShaders.BGU_FILTER_RADIUS
        val componentCount = DngPhotonLocalToneMapGpuShaders.BGU_COMPONENT_COUNT
        val extendedBguFloatCount =
            extendedGridWidth * extendedGridHeight * rangePlaneCount * componentCount
        val yBlurFloatCount =
            extendedGridWidth * gridHeight * rangePlaneCount * componentCount
        val fittedBguFloatCount =
            gridWidth * gridHeight * rangePlaneCount * componentCount
        val coefficientCount = gridWidth * gridHeight * rangePlaneCount
        val gainFloatCount = plan.cellCount * plan.pointCount

        val sourceBuffer = 0
        val gaussianBuffer = 1
        val remappedBuffer = 2
        val laplacianBuffer = 3
        val reconstructedBuffer = 4
        val sourceRangeBuffer = 5
        val histogramRangeBuffer = 6
        val histogramBuffer = 7
        val targetBuffer = 8
        val bguBufferA = 9
        val bguBufferB = 10
        val buffers = IntArray(11)
        val uniformLocations = HashMap<Int, MutableMap<String, Int>>()

        fun program(pass: DngPhotonLocalToneMapGpuShaders.Pass): Int =
            pgtmPhotonPrograms[pass.ordinal]

        fun bindStorage(binding: Int, bufferId: Int) {
            GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, binding, bufferId)
        }

        fun allocate(bufferId: Int, byteCount: Int, usage: Int = GLES31.GL_DYNAMIC_DRAW) {
            GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, bufferId)
            GLES31.glBufferData(
                GLES31.GL_SHADER_STORAGE_BUFFER,
                byteCount,
                null,
                usage,
            )
        }

        fun uploadTwoInts(bufferId: Int, first: Int, second: Int) {
            val values = ByteBuffer.allocateDirect(2 * Int.SIZE_BYTES)
                .order(ByteOrder.nativeOrder())
            values.putInt(first)
            values.putInt(second)
            values.position(0)
            GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, bufferId)
            GLES31.glBufferData(
                GLES31.GL_SHADER_STORAGE_BUFFER,
                2 * Int.SIZE_BYTES,
                values,
                GLES31.GL_DYNAMIC_DRAW,
            )
        }

        fun uniformLocation(activeProgram: Int, name: String): Int {
            val locations = uniformLocations.getOrPut(activeProgram) { HashMap() }
            return locations.getOrPut(name) {
                GLES31.glGetUniformLocation(activeProgram, name)
            }
        }

        fun uniform1i(activeProgram: Int, name: String, value: Int) {
            GLES31.glUniform1i(uniformLocation(activeProgram, name), value)
        }

        fun uniform1f(activeProgram: Int, name: String, value: Float) {
            GLES31.glUniform1f(uniformLocation(activeProgram, name), value)
        }

        fun uniform2i(activeProgram: Int, name: String, x: Int, y: Int) {
            GLES31.glUniform2i(uniformLocation(activeProgram, name), x, y)
        }

        fun dispatch1d(count: Int, localSize: Int) {
            GLES31.glDispatchCompute((count + localSize - 1) / localSize, 1, 1)
        }

        fun dispatch2d(width: Int, height: Int, localWidth: Int, localHeight: Int) {
            GLES31.glDispatchCompute(
                (width + localWidth - 1) / localWidth,
                (height + localHeight - 1) / localHeight,
                1,
            )
        }

        fun storageBarrier() {
            GLES31.glMemoryBarrier(
                GLES31.GL_SHADER_STORAGE_BARRIER_BIT or
                    GLES31.GL_BUFFER_UPDATE_BARRIER_BIT,
            )
        }

        fun clearUintBuffer(bufferId: Int, count: Int, value: Int = 0) {
            val activeProgram = program(DngPhotonLocalToneMapGpuShaders.Pass.CLEAR_UINT)
            GLES31.glUseProgram(activeProgram)
            bindStorage(0, bufferId)
            uniform1i(activeProgram, "uCount", count)
            GLES30.glUniform1ui(
                uniformLocation(activeProgram, "uValue"),
                value,
            )
            dispatch1d(count, GlesComputeWorkGroup.LINEAR_SIZE)
            storageBarrier()
        }

        GLES31.glGenBuffers(buffers.size, buffers, 0)
        try {
            allocate(buffers[sourceBuffer], sampleCount * Float.SIZE_BYTES)
            allocate(buffers[gaussianBuffer], pyramid.floatCount * Float.SIZE_BYTES)
            allocate(buffers[remappedBuffer], pyramid.floatCount * Float.SIZE_BYTES)
            allocate(buffers[laplacianBuffer], pyramid.floatCount * Float.SIZE_BYTES)
            allocate(buffers[reconstructedBuffer], pyramid.floatCount * Float.SIZE_BYTES)
            allocate(buffers[targetBuffer], sampleCount * Float.SIZE_BYTES)
            uploadTwoInts(
                buffers[sourceRangeBuffer],
                Float.MAX_VALUE.toRawBits(),
                0f.toRawBits(),
            )

            var activeProgram =
                program(DngPhotonLocalToneMapGpuShaders.Pass.PREPARE_SOURCE)
            GLES31.glUseProgram(activeProgram)
            bindStorage(0, sampleBufferId)
            bindStorage(1, buffers[sourceBuffer])
            bindStorage(2, buffers[sourceRangeBuffer])
            uniform2i(activeProgram, "uGridSize", gridWidth, gridHeight)
            uniform2i(activeProgram, "uSampleSize", sampleWidth, sampleHeight)
            dispatch2d(sampleWidth, sampleHeight, GlesComputeWorkGroup.IMAGE_TILE_SIZE, GlesComputeWorkGroup.IMAGE_TILE_SIZE)
            storageBarrier()

            activeProgram = program(DngPhotonLocalToneMapGpuShaders.Pass.NORMALIZE_LOG)
            GLES31.glUseProgram(activeProgram)
            bindStorage(0, buffers[sourceBuffer])
            bindStorage(1, buffers[sourceRangeBuffer])
            bindStorage(2, buffers[gaussianBuffer])
            uniform2i(activeProgram, "uSampleSize", sampleWidth, sampleHeight)
            uniform1i(activeProgram, "uOutputOffset", pyramid.levels.first().offset)
            uniform1f(activeProgram, "uExposureGain", preToneMapExposureGain)
            dispatch2d(sampleWidth, sampleHeight, GlesComputeWorkGroup.IMAGE_TILE_SIZE, GlesComputeWorkGroup.IMAGE_TILE_SIZE)
            storageBarrier()

            val sourceRange = readUintStorageBuffer(
                bufferId = buffers[sourceRangeBuffer],
                intCount = 2,
                label = "Photon source range",
            ) ?: return null
            val sourceMinimum = Float.fromBits(sourceRange[0])
            val sourceMaximum = Float.fromBits(sourceRange[1])
            if (!sourceMinimum.isFinite() || !sourceMaximum.isFinite() ||
                sourceMinimum < 0f || sourceMaximum < sourceMinimum
            ) {
                PLog.e(
                    TAG,
                    "Photon source range invalid: $sourceMinimum..$sourceMaximum",
                )
                return null
            }
            val sourceMinimumLog = ln(
                preToneMapExposureGain * sourceMinimum +
                    DngPhotonLocalToneMapper.SOURCE_EPSILON
            )
            val sourceMaximumLog = ln(
                preToneMapExposureGain * sourceMaximum +
                    DngPhotonLocalToneMapper.SOURCE_EPSILON
            )
            if (!sourceMinimumLog.isFinite() || !sourceMaximumLog.isFinite() ||
                sourceMaximumLog < sourceMinimumLog
            ) {
                PLog.e(
                    TAG,
                    "Photon source-log range invalid: $sourceMinimumLog..$sourceMaximumLog",
                )
                return null
            }
            val histogramBinCount =
                DngPhotonLocalToneMapGpuShaders.HISTOGRAM_BIN_COUNT
            allocate(buffers[histogramBuffer], histogramBinCount * Int.SIZE_BYTES)
            uploadTwoInts(
                buffers[histogramRangeBuffer],
                floatToOrderedBits(sourceMinimumLog),
                floatToOrderedBits(sourceMaximumLog),
            )
            clearUintBuffer(buffers[histogramBuffer], histogramBinCount)
            activeProgram = program(
                DngPhotonLocalToneMapGpuShaders.Pass.LOG_HISTOGRAM
            )
            GLES31.glUseProgram(activeProgram)
            bindStorage(0, buffers[gaussianBuffer])
            bindStorage(1, buffers[sourceRangeBuffer])
            bindStorage(2, buffers[histogramRangeBuffer])
            bindStorage(3, buffers[histogramBuffer])
            uniform1i(activeProgram, "uCount", sampleCount)
            uniform1i(activeProgram, "uSourceOffset", pyramid.levels.first().offset)
            uniform1i(activeProgram, "uBinCount", histogramBinCount)
            uniform1f(activeProgram, "uExposureGain", preToneMapExposureGain)
            dispatch1d(sampleCount, GlesComputeWorkGroup.LINEAR_SIZE)
            storageBarrier()

            val sourceHistogram = readUintStorageBuffer(
                bufferId = buffers[histogramBuffer],
                intCount = histogramBinCount,
                label = "Photon source-log histogram",
            ) ?: return null
            val sourceHistogramCpuStartNs = System.nanoTime()
            val sourceDistribution = summarizePhotonLogHistogram(
                histogram = sourceHistogram,
                rangeMinimum = sourceMinimumLog,
                rangeMaximum = sourceMaximumLog,
                percentileClip = parameters.percentileClip,
                expectedSampleCount = sampleCount,
                label = "source",
            ) ?: return null
            val targetLogDynamicRange =
                ln(parameters.targetDynamicRange.toDouble()).toFloat()
            val sourceLogDynamicRange =
                sourceDistribution.upperLog - sourceDistribution.lowerLog
            val edgeSlope = if (!sourceLogDynamicRange.isFinite() ||
                sourceLogDynamicRange <= DngPhotonLocalToneMapper.SOURCE_EPSILON
            ) {
                1f
            } else {
                min(1f, targetLogDynamicRange / sourceLogDynamicRange)
            }
            val sourceHistogramCpuReadyNs = System.nanoTime()

            activeProgram = program(DngPhotonLocalToneMapGpuShaders.Pass.DOWNSAMPLE)
            GLES31.glUseProgram(activeProgram)
            bindStorage(0, buffers[gaussianBuffer])
            bindStorage(1, buffers[gaussianBuffer])
            for (levelIndex in 1 until pyramid.levels.size) {
                val sourceLevel = pyramid.levels[levelIndex - 1]
                val destinationLevel = pyramid.levels[levelIndex]
                uniform2i(
                    activeProgram,
                    "uSourceSize",
                    sourceLevel.width,
                    sourceLevel.height,
                )
                uniform2i(
                    activeProgram,
                    "uDestinationSize",
                    destinationLevel.width,
                    destinationLevel.height,
                )
                uniform1i(activeProgram, "uSourceOffset", sourceLevel.offset)
                uniform1i(activeProgram, "uDestinationOffset", destinationLevel.offset)
                dispatch2d(
                    destinationLevel.width,
                    destinationLevel.height,
                    GlesComputeWorkGroup.IMAGE_TILE_SIZE,
                    GlesComputeWorkGroup.IMAGE_TILE_SIZE,
                )
                storageBarrier()
            }

            clearUintBuffer(
                bufferId = buffers[laplacianBuffer],
                count = pyramid.floatCount,
            )
            val intensityLevels = parameters.localLaplacianIntensityLevels
            val intensityStep = 1f / (intensityLevels - 1)
            repeat(intensityLevels) { referenceIndex ->
                val reference = referenceIndex * intensityStep
                activeProgram = program(DngPhotonLocalToneMapGpuShaders.Pass.REMAP)
                GLES31.glUseProgram(activeProgram)
                bindStorage(0, buffers[gaussianBuffer])
                bindStorage(1, buffers[remappedBuffer])
                bindStorage(2, buffers[sourceRangeBuffer])
                uniform1i(activeProgram, "uCount", sampleCount)
                uniform1i(activeProgram, "uSourceOffset", pyramid.levels.first().offset)
                uniform1i(
                    activeProgram,
                    "uDestinationOffset",
                    pyramid.levels.first().offset,
                )
                uniform1f(activeProgram, "uReference", reference)
                uniform1f(
                    activeProgram,
                    "uRangeSigma",
                    parameters.localLaplacianRangeSigma,
                )
                uniform1f(
                    activeProgram,
                    "uDetailExponent",
                    parameters.localLaplacianDetailExponent,
                )
                uniform1f(activeProgram, "uEdgeSlope", edgeSlope)
                uniform1f(activeProgram, "uExposureGain", preToneMapExposureGain)
                dispatch1d(sampleCount, GlesComputeWorkGroup.LINEAR_SIZE)
                storageBarrier()

                activeProgram = program(DngPhotonLocalToneMapGpuShaders.Pass.DOWNSAMPLE)
                GLES31.glUseProgram(activeProgram)
                bindStorage(0, buffers[remappedBuffer])
                bindStorage(1, buffers[remappedBuffer])
                for (levelIndex in 1 until pyramid.levels.size) {
                    val sourceLevel = pyramid.levels[levelIndex - 1]
                    val destinationLevel = pyramid.levels[levelIndex]
                    uniform2i(
                        activeProgram,
                        "uSourceSize",
                        sourceLevel.width,
                        sourceLevel.height,
                    )
                    uniform2i(
                        activeProgram,
                        "uDestinationSize",
                        destinationLevel.width,
                        destinationLevel.height,
                    )
                    uniform1i(activeProgram, "uSourceOffset", sourceLevel.offset)
                    uniform1i(
                        activeProgram,
                        "uDestinationOffset",
                        destinationLevel.offset,
                    )
                    dispatch2d(
                        destinationLevel.width,
                        destinationLevel.height,
                        GlesComputeWorkGroup.IMAGE_TILE_SIZE,
                        GlesComputeWorkGroup.IMAGE_TILE_SIZE,
                    )
                    storageBarrier()
                }

                activeProgram = program(
                    DngPhotonLocalToneMapGpuShaders.Pass.ACCUMULATE_LAPLACIAN
                )
                GLES31.glUseProgram(activeProgram)
                bindStorage(0, buffers[gaussianBuffer])
                bindStorage(1, buffers[remappedBuffer])
                bindStorage(2, buffers[laplacianBuffer])
                for (levelIndex in 0 until pyramid.levels.lastIndex) {
                    val currentLevel = pyramid.levels[levelIndex]
                    val nextLevel = pyramid.levels[levelIndex + 1]
                    uniform2i(
                        activeProgram,
                        "uCurrentSize",
                        currentLevel.width,
                        currentLevel.height,
                    )
                    uniform2i(
                        activeProgram,
                        "uNextSize",
                        nextLevel.width,
                        nextLevel.height,
                    )
                    uniform1i(activeProgram, "uGuideOffset", currentLevel.offset)
                    uniform1i(activeProgram, "uCurrentOffset", currentLevel.offset)
                    uniform1i(activeProgram, "uNextOffset", nextLevel.offset)
                    uniform1i(activeProgram, "uOutputOffset", currentLevel.offset)
                    uniform1f(activeProgram, "uReference", reference)
                    uniform1f(activeProgram, "uIntensityStep", intensityStep)
                    dispatch2d(currentLevel.width, currentLevel.height, GlesComputeWorkGroup.IMAGE_TILE_SIZE, GlesComputeWorkGroup.IMAGE_TILE_SIZE)
                }
                storageBarrier()
            }

            val coarsestLevel = pyramid.levels.last()
            activeProgram = program(DngPhotonLocalToneMapGpuShaders.Pass.COPY_RANGE)
            GLES31.glUseProgram(activeProgram)
            bindStorage(0, buffers[gaussianBuffer])
            bindStorage(1, buffers[reconstructedBuffer])
            uniform1i(activeProgram, "uCount", coarsestLevel.size)
            uniform1i(activeProgram, "uSourceOffset", coarsestLevel.offset)
            uniform1i(activeProgram, "uDestinationOffset", coarsestLevel.offset)
            dispatch1d(coarsestLevel.size, GlesComputeWorkGroup.LINEAR_SIZE)
            storageBarrier()

            activeProgram = program(DngPhotonLocalToneMapGpuShaders.Pass.RECONSTRUCT)
            GLES31.glUseProgram(activeProgram)
            bindStorage(0, buffers[laplacianBuffer])
            bindStorage(1, buffers[reconstructedBuffer])
            for (levelIndex in pyramid.levels.lastIndex - 1 downTo 0) {
                val currentLevel = pyramid.levels[levelIndex]
                val nextLevel = pyramid.levels[levelIndex + 1]
                uniform2i(
                    activeProgram,
                    "uCurrentSize",
                    currentLevel.width,
                    currentLevel.height,
                )
                uniform2i(
                    activeProgram,
                    "uNextSize",
                    nextLevel.width,
                    nextLevel.height,
                )
                uniform1i(activeProgram, "uLaplacianOffset", currentLevel.offset)
                uniform1i(activeProgram, "uCurrentOffset", currentLevel.offset)
                uniform1i(activeProgram, "uNextOffset", nextLevel.offset)
                dispatch2d(currentLevel.width, currentLevel.height, GlesComputeWorkGroup.IMAGE_TILE_SIZE, GlesComputeWorkGroup.IMAGE_TILE_SIZE)
                storageBarrier()
            }

            PLog.d(
                TAG,
                "Photon PGTM adaptation: sourceLog=$sourceMinimumLog..$sourceMaximumLog " +
                    "sourcePercentiles=${sourceDistribution.lowerLog}.." +
                    "${sourceDistribution.upperLog} sourceMedian=${sourceDistribution.medianLog} " +
                    "edgeSlope=$edgeSlope " +
                    "preToneMapExposureBoostEv=${parameters.preToneMapExposureBoostEv} " +
                    "preToneMapExposureGain=$preToneMapExposureGain " +
                    "histogramCpuMs=" +
                    "${(sourceHistogramCpuReadyNs - sourceHistogramCpuStartNs) / 1_000_000.0}",
            )

            activeProgram = program(
                DngPhotonLocalToneMapGpuShaders.Pass.FINALIZE_SDR_TARGET
            )
            GLES31.glUseProgram(activeProgram)
            bindStorage(0, buffers[reconstructedBuffer])
            bindStorage(1, buffers[sourceRangeBuffer])
            bindStorage(2, buffers[targetBuffer])
            uniform1i(activeProgram, "uCount", sampleCount)
            uniform1i(activeProgram, "uSourceOffset", pyramid.levels.first().offset)
            uniform1f(
                activeProgram,
                "uPreToneMapExposureGain",
                preToneMapExposureGain,
            )
            dispatch1d(sampleCount, GlesComputeWorkGroup.LINEAR_SIZE)
            storageBarrier()

            allocate(buffers[bguBufferA], extendedBguFloatCount * Float.SIZE_BYTES)
            allocate(buffers[bguBufferB], extendedBguFloatCount * Float.SIZE_BYTES)
            activeProgram = program(DngPhotonLocalToneMapGpuShaders.Pass.BGU_HISTOGRAM)
            GLES31.glUseProgram(activeProgram)
            bindStorage(0, buffers[sourceBuffer])
            bindStorage(1, buffers[targetBuffer])
            bindStorage(2, buffers[bguBufferA])
            uniform2i(activeProgram, "uSampleSize", sampleWidth, sampleHeight)
            uniform2i(
                activeProgram,
                "uExtendedGridSize",
                extendedGridWidth,
                extendedGridHeight,
            )
            uniform1i(activeProgram, "uRangeBinCount", rangeBinCount)
            uniform1i(activeProgram, "uRangePlaneCount", rangePlaneCount)
            uniform1f(
                activeProgram,
                "uGuideAlpha",
                parameters.bilateralGuideCurveAlpha,
            )
            uniform1f(
                activeProgram,
                "uBaselineExposureGain",
                photonPlan.exposureGain,
            )
            GLES31.glDispatchCompute(extendedGridWidth, extendedGridHeight, 1)
            storageBarrier()

            activeProgram = program(DngPhotonLocalToneMapGpuShaders.Pass.BGU_BLUR_Z)
            GLES31.glUseProgram(activeProgram)
            bindStorage(0, buffers[bguBufferA])
            bindStorage(1, buffers[bguBufferB])
            uniform2i(
                activeProgram,
                "uGridSize",
                extendedGridWidth,
                extendedGridHeight,
            )
            uniform1i(activeProgram, "uRangePlaneCount", rangePlaneCount)
            uniform1i(activeProgram, "uElementCount", extendedBguFloatCount)
            dispatch1d(extendedBguFloatCount, GlesComputeWorkGroup.LINEAR_SIZE)
            storageBarrier()

            activeProgram = program(DngPhotonLocalToneMapGpuShaders.Pass.BGU_BLUR_Y)
            GLES31.glUseProgram(activeProgram)
            bindStorage(0, buffers[bguBufferB])
            bindStorage(1, buffers[bguBufferA])
            uniform2i(
                activeProgram,
                "uExtendedGridSize",
                extendedGridWidth,
                extendedGridHeight,
            )
            uniform1i(activeProgram, "uOutputHeight", gridHeight)
            uniform1i(activeProgram, "uRangePlaneCount", rangePlaneCount)
            uniform1i(activeProgram, "uElementCount", yBlurFloatCount)
            dispatch1d(yBlurFloatCount, GlesComputeWorkGroup.LINEAR_SIZE)
            storageBarrier()

            activeProgram = program(DngPhotonLocalToneMapGpuShaders.Pass.BGU_BLUR_X)
            GLES31.glUseProgram(activeProgram)
            bindStorage(0, buffers[bguBufferA])
            bindStorage(1, buffers[bguBufferB])
            uniform2i(activeProgram, "uOutputGridSize", gridWidth, gridHeight)
            uniform1i(activeProgram, "uInputWidth", extendedGridWidth)
            uniform1i(activeProgram, "uRangePlaneCount", rangePlaneCount)
            uniform1i(activeProgram, "uElementCount", fittedBguFloatCount)
            dispatch1d(fittedBguFloatCount, GlesComputeWorkGroup.LINEAR_SIZE)
            storageBarrier()

            activeProgram = program(DngPhotonLocalToneMapGpuShaders.Pass.BGU_SOLVE)
            GLES31.glUseProgram(activeProgram)
            bindStorage(0, buffers[bguBufferB])
            bindStorage(1, buffers[bguBufferA])
            uniform1i(activeProgram, "uCoefficientCount", coefficientCount)
            uniform1f(
                activeProgram,
                "uRegularization",
                parameters.bilateralRegularization,
            )
            uniform1f(
                activeProgram,
                "uIdentitySlope",
                1f,
            )
            dispatch1d(coefficientCount, GlesComputeWorkGroup.LINEAR_SIZE)
            storageBarrier()

            allocate(
                buffers[bguBufferB],
                gainFloatCount * Float.SIZE_BYTES,
                GLES31.GL_DYNAMIC_READ,
            )
            activeProgram = program(DngPhotonLocalToneMapGpuShaders.Pass.GAIN_CURVES)
            GLES31.glUseProgram(activeProgram)
            bindStorage(0, buffers[bguBufferA])
            bindStorage(1, buffers[bguBufferB])
            uniform1i(activeProgram, "uCellCount", plan.cellCount)
            uniform1i(activeProgram, "uPointCount", plan.pointCount)
            uniform1i(activeProgram, "uRangeBinCount", rangeBinCount)
            uniform1i(activeProgram, "uRangePlaneCount", rangePlaneCount)
            uniform1f(
                activeProgram,
                "uGuideAlpha",
                parameters.bilateralGuideCurveAlpha,
            )
            uniform1f(activeProgram, "uMinTableGain", photonPlan.minTableGain)
            uniform1f(activeProgram, "uMaxTableGain", photonPlan.maxTableGain)
            val diagnosticMode = when (plan.diagnosticBand?.mode) {
                DngPhotonProfileGainTableGenerator.DiagnosticMode.PASS_ONLY -> 0
                DngPhotonProfileGainTableGenerator.DiagnosticMode.BLOCK_ONLY -> 1
                null -> -1
            }
            uniform1i(activeProgram, "uDiagnosticMode", diagnosticMode)
            uniform1f(
                activeProgram,
                "uDiagnosticStart",
                plan.diagnosticBand?.start ?: 0f,
            )
            uniform1f(
                activeProgram,
                "uDiagnosticEnd",
                plan.diagnosticBand?.end ?: 1f,
            )
            uniform1f(
                activeProgram,
                "uDiagnosticFeather",
                plan.diagnosticBand?.feather ?: 0f,
            )
            dispatch1d(gainFloatCount, GlesComputeWorkGroup.LINEAR_SIZE)
            storageBarrier()

            checkGlError("generatePhotonProfileGainCurvesOnGpu")
            val gains = readFloatStorageBuffer(
                bufferId = buffers[bguBufferB],
                floatCount = gainFloatCount,
                label = "Photon PGTM gain curves",
            ) ?: return null
            PLog.d(TAG, summarizePhotonGainCurves(plan, gains))
            return gains
        } finally {
            GLES31.glUseProgram(0)
            repeat(4) { binding ->
                GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, binding, 0)
            }
            GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
            GLES31.glDeleteBuffers(buffers.size, buffers, 0)
        }
    }

    /**
     * Diagnoses the actual GPU-authored DNG table. Output reversals identify an intensity contour;
     * adjacent range/spatial gain ratios distinguish that from a misplaced spatial grid.
     */
    private fun summarizePhotonGainCurves(
        plan: PhotonProfileGainTablePlan,
        gains: FloatArray,
    ): String {
        val photonPlan = plan.photonPlan
        val pointCount = plan.pointCount
        val gridWidth = plan.grid.mapPointsH
        val gridHeight = plan.grid.mapPointsV
        val firstVisiblePoint = max(1, ceil(0.02f * pointCount).toInt())
        var gainMinimum = Float.POSITIVE_INFINITY
        var gainMaximum = Float.NEGATIVE_INFINITY
        var reversalCount = 0
        var worstOutputDrop = 0f
        var worstOutputDropCell = -1
        var worstOutputDropPoint = -1
        var maximumRangeGainRatio = 1f
        var maximumRangeGainCell = -1
        var maximumRangeGainPoint = -1
        var maximumSpatialGainRatio = 1f
        var maximumSpatialGainCell = -1
        var maximumSpatialGainPoint = -1

        fun gainRatio(first: Float, second: Float): Float {
            val low = min(first, second).coerceAtLeast(1e-12f)
            return max(first, second) / low
        }

        repeat(plan.cellCount) { cell ->
            val curveOffset = cell * pointCount
            var previousOutput = 0f
            for (point in 0 until pointCount) {
                val gain = gains[curveOffset + point]
                gainMinimum = min(gainMinimum, gain)
                gainMaximum = max(gainMaximum, gain)
                val sourceInput = when (point) {
                    0 -> 0f
                    pointCount - 1 -> 1f
                    else -> point.toFloat() / pointCount
                }
                val output = photonPlan.exposureGain * sourceInput * gain
                if (point > 0 && output < previousOutput) {
                    reversalCount++
                    val drop = previousOutput - output
                    if (drop > worstOutputDrop) {
                        worstOutputDrop = drop
                        worstOutputDropCell = cell
                        worstOutputDropPoint = point
                    }
                }
                if (point >= firstVisiblePoint) {
                    val previousGain = gains[curveOffset + point - 1]
                    val ratio = gainRatio(previousGain, gain)
                    if (ratio > maximumRangeGainRatio) {
                        maximumRangeGainRatio = ratio
                        maximumRangeGainCell = cell
                        maximumRangeGainPoint = point
                    }
                }
                previousOutput = output
            }
        }

        repeat(gridHeight) { y ->
            repeat(gridWidth) { x ->
                val cell = y * gridWidth + x
                for (point in firstVisiblePoint until pointCount) {
                    val gain = gains[cell * pointCount + point]
                    if (x > 0) {
                        val ratio = gainRatio(
                            gain,
                            gains[(cell - 1) * pointCount + point],
                        )
                        if (ratio > maximumSpatialGainRatio) {
                            maximumSpatialGainRatio = ratio
                            maximumSpatialGainCell = cell
                            maximumSpatialGainPoint = point
                        }
                    }
                    if (y > 0) {
                        val ratio = gainRatio(
                            gain,
                            gains[(cell - gridWidth) * pointCount + point],
                        )
                        if (ratio > maximumSpatialGainRatio) {
                            maximumSpatialGainRatio = ratio
                            maximumSpatialGainCell = cell
                            maximumSpatialGainPoint = point
                        }
                    }
                }
            }
        }

        fun ratioToEv(ratio: Float): Float =
            (ln(ratio.coerceAtLeast(1f).toDouble()) / ln(2.0)).toFloat()

        return "Photon PGTM curve diagnostics: gain=$gainMinimum..$gainMaximum " +
            "outputReversals=$reversalCount worstOutputDrop=$worstOutputDrop " +
            "atCell=$worstOutputDropCell point=$worstOutputDropPoint " +
            "maxRangeGainStep=${ratioToEv(maximumRangeGainRatio)}EV " +
            "atCell=$maximumRangeGainCell point=$maximumRangeGainPoint " +
            "maxSpatialNeighborStep=${ratioToEv(maximumSpatialGainRatio)}EV " +
            "atCell=$maximumSpatialGainCell point=$maximumSpatialGainPoint"
    }

    private data class PhotonLogHistogramDistribution(
        val lowerLog: Float,
        val medianLog: Float,
        val upperLog: Float,
    )

    private fun summarizePhotonLogHistogram(
        histogram: IntArray,
        rangeMinimum: Float,
        rangeMaximum: Float,
        percentileClip: Float,
        expectedSampleCount: Int,
        label: String,
    ): PhotonLogHistogramDistribution? {
        if (histogram.isEmpty() ||
            !rangeMinimum.isFinite() ||
            !rangeMaximum.isFinite() ||
            rangeMaximum < rangeMinimum
        ) {
            PLog.e(TAG, "Photon $label histogram range invalid: $rangeMinimum..$rangeMaximum")
            return null
        }
        val sampleCount = histogram.sumOf { it.toLong() and 0xffff_ffffL }
        if (sampleCount != expectedSampleCount.toLong()) {
            PLog.e(
                TAG,
                "Photon $label histogram count=$sampleCount expected=$expectedSampleCount",
            )
            return null
        }

        fun valueAtRank(rank: Long): Float {
            var cumulative = 0L
            val boundedRank = rank.coerceIn(0L, sampleCount - 1L)
            for (bin in histogram.indices) {
                cumulative += histogram[bin].toLong() and 0xffff_ffffL
                if (cumulative <= boundedRank) continue
                if (bin == 0) return rangeMinimum
                if (bin == histogram.lastIndex) return rangeMaximum
                val coordinate = (bin + 0.5f) / (histogram.size - 1f)
                return rangeMinimum + coordinate * (rangeMaximum - rangeMinimum)
            }
            return rangeMaximum
        }

        fun percentileLog(quantile: Float): Float {
            if (sampleCount <= 1L) return rangeMinimum
            val position =
                quantile.coerceIn(0f, 1f) * (sampleCount - 1L).toDouble()
            val lowerRank = floor(position).toLong()
            val upperRank = min(lowerRank + 1L, sampleCount - 1L)
            val lowerValue = valueAtRank(lowerRank)
            val upperValue = valueAtRank(upperRank)
            val amount = position - lowerRank
            // lapfilter.m interpolates sorted radiance rather than sorted log-radiance.
            val radiance = exp(lowerValue.toDouble()) +
                (exp(upperValue.toDouble()) - exp(lowerValue.toDouble())) * amount
            return ln(radiance).toFloat()
        }

        return PhotonLogHistogramDistribution(
            lowerLog = percentileLog(percentileClip),
            medianLog = percentileLog(0.5f),
            upperLog = percentileLog(1f - percentileClip),
        )
    }

    private fun floatToOrderedBits(value: Float): Int {
        val bits = value.toRawBits()
        return if ((bits and Int.MIN_VALUE) != 0) bits.inv() else bits xor Int.MIN_VALUE
    }

    private fun readUintStorageBuffer(
        bufferId: Int,
        intCount: Int,
        label: String,
    ): IntArray? {
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, bufferId)
        val byteCount = intCount * Int.SIZE_BYTES
        val mapped = GLES31.glMapBufferRange(
            GLES31.GL_SHADER_STORAGE_BUFFER,
            0,
            byteCount,
            GLES31.GL_MAP_READ_BIT,
        ) ?: run {
            PLog.e(TAG, "$label buffer map failed")
            return null
        }
        return try {
            val byteBuffer = mapped as? ByteBuffer ?: run {
                PLog.e(TAG, "$label mapped buffer is not a ByteBuffer")
                return null
            }
            IntArray(intCount).also { values ->
                byteBuffer.order(ByteOrder.nativeOrder()).asIntBuffer().get(values)
            }
        } finally {
            GLES31.glUnmapBuffer(GLES31.GL_SHADER_STORAGE_BUFFER)
        }
    }

    private fun readFloatStorageBuffer(
        bufferId: Int,
        floatCount: Int,
        label: String,
    ): FloatArray? {
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, bufferId)
        val byteCount = floatCount * Float.SIZE_BYTES
        val mapped = GLES31.glMapBufferRange(
            GLES31.GL_SHADER_STORAGE_BUFFER,
            0,
            byteCount,
            GLES31.GL_MAP_READ_BIT,
        ) ?: run {
            PLog.e(TAG, "$label buffer map failed")
            return null
        }
        return try {
            val byteBuffer = mapped as? ByteBuffer ?: run {
                PLog.e(TAG, "$label mapped buffer is not a ByteBuffer")
                return null
            }
            FloatArray(floatCount).also { values ->
                byteBuffer.order(ByteOrder.nativeOrder()).asFloatBuffer().get(values)
            }
        } finally {
            GLES31.glUnmapBuffer(GLES31.GL_SHADER_STORAGE_BUFFER)
        }
    }

    private fun sanitizePgtmStatsBounds(bounds: Rect?, width: Int, height: Int): Rect? {
        val imageBounds = Rect(0, 0, width, height)
        if (bounds == null) return imageBounds
        if (bounds.isEmpty) return null
        return Rect(bounds).takeIf {
            it.intersect(imageBounds) && it.width() >= 2 && it.height() >= 2
        }
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
            if (sharpenProgram == 0 || passthroughProgram == 0 ||
                chromaDenoiseGuideProgram == 0 || chromaDenoiseProgram == 0 ||
                meteringHalfResolutionProgram == 0 ||
                linearRcdProgram == 0 || linearRawRgbProgram == 0 ||
                linearRawRgbExpandProgram == 0
            ) {
                PLog.e(
                    TAG, "Critical shader programs failed to compile or link. " +
                            "sharpen=$sharpenProgram pass=$passthroughProgram " +
                            "chromaGuide=$chromaDenoiseGuideProgram " +
                            "chromaDenoise=$chromaDenoiseProgram " +
                            "meteringHalf=$meteringHalfResolutionProgram " +
                            "linearRcd=$linearRcdProgram linearRawRgb=$linearRawRgbProgram " +
                            "linearRawRgbExpand=$linearRawRgbExpandProgram"
                )
                return false
            }
            initBuffers()

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
                RawHdrReferenceShaders.FRAGMENT_SHADER,
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

        // 2.75 RAW 默认色度降噪 Programs
        val fShaderChromaDenoiseGuide =
            compileShader(
                GLES30.GL_FRAGMENT_SHADER,
                ChromaDenoiseShaders.PASS_EDGE_GUIDE,
                "rawChromaDenoiseGuideFragment"
            )
        if (vShader != 0 && fShaderChromaDenoiseGuide != 0) {
            chromaDenoiseGuideProgram = GLES30.glCreateProgram()
            GLES30.glAttachShader(chromaDenoiseGuideProgram, vShader)
            GLES30.glAttachShader(chromaDenoiseGuideProgram, fShaderChromaDenoiseGuide)
            val linkStart = System.currentTimeMillis()
            GLES30.glLinkProgram(chromaDenoiseGuideProgram)
            if (!logProgramLinkResult(
                    chromaDenoiseGuideProgram,
                    "rawChromaDenoiseGuideProgram",
                    linkStart
                )
            ) {
                chromaDenoiseGuideProgram = 0
            }
            GLES30.glDeleteShader(fShaderChromaDenoiseGuide)
        }

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

        // LinearRaw/Profile programs are common to both CFA and pre-demosaiced inputs.
        // Expensive CFA demosaic programs are compiled only if a CFA input actually needs them.
        initLinearRawPrograms(vShader)

        GLES30.glDeleteShader(vShader)
        PLog.d(
            TAG,
            "Shader programs created: passthrough=$passthroughProgram " +
                "meteringHalf=$meteringHalfResolutionProgram " +
                "pgtmSamples=$pgtmCellSamplesProgram " +
                "photonPgtm=localLaplacianBgu",
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

    private fun getOrCreateHncsOutputLinearProgram(): Int {
        if (hncsOutputLinearProgram != 0) return hncsOutputLinearProgram
        val vShader = compileShader(
            GLES30.GL_VERTEX_SHADER,
            RawShaders.VERTEX_SHADER,
            "hncsOutputLinearVertex"
        )
        hncsOutputLinearProgram = linkFragmentProgram(
            vShader,
            HncsOutputLinearPassShaders.FRAGMENT_SHADER,
            "hncsOutputLinear"
        )
        if (vShader != 0) GLES30.glDeleteShader(vShader)
        return hncsOutputLinearProgram
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
        precision highp sampler3D;
        
        in vec2 vTexCoord;
        out vec4 fragColor;
        
        uniform sampler2D uDemosaickedTexture;
        uniform sampler2D uProfileGainTableMap;
        uniform sampler3D uLinearDcpHueSatMap;
        uniform mat3 uColorCorrectionMatrix;
        uniform vec3 uCameraWhite;
        uniform float uExposureGain;
        uniform int uHncsCameraDomainEnabled;
        uniform vec3 uHncsCameraDomainGain;
        uniform float uHncsInputEV;
        uniform float uHncsHrTrunc;
        uniform float uHncsHrMax;
        uniform int uClampProfileRgb;
        uniform int uClampProfileGainOutput;
        uniform int uHueSatSupportOverrange;
        uniform int uProfileGainEnabled;
        uniform ivec3 uProfileGainTableSize;
        uniform vec4 uProfileGainGrid;
        uniform vec4 uProfileGainWeights0;
        uniform float uProfileGainWeightMax;
        uniform float uProfileGainGamma;
        uniform float uProfileGainBaselineGain;
        uniform int uProfileGainDebugOverlay;
        uniform int uLinearDcpHueSatEnabled;
        uniform ivec3 uLinearDcpHueSatDivisions;
        uniform int uLinearDcpHueSatEncoding;
        uniform vec2 uGlobalUvOrigin;
        uniform vec2 uGlobalUvScale;

        ${DcpHueSatMapGl.SHADER_FUNCTIONS}

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
            vec2 globalUv = uGlobalUvOrigin + vTexCoord * uGlobalUvScale;
            vec2 mapPosition = (globalUv - origin) / spacing;
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
            if (uHncsCameraDomainEnabled != 0) {
                rgb *= uHncsCameraDomainGain;
                rgb /= uHncsHrTrunc;
                rgb = clamp(rgb, vec3(0.0), vec3(uHncsHrMax));
                rgb *= uHncsInputEV;
            }
            if (uClampProfileRgb != 0) {
                rgb = min(rgb, max(uCameraWhite, vec3(0.001)));
            }
            rgb = uColorCorrectionMatrix * rgb;
            if (uClampProfileRgb != 0) {
                // dng_reference::RefBaselineABCtoRGB pins RIMM before Hue/Sat Map and PGTM.
                rgb = clamp(rgb, vec3(0.0), vec3(1.0));
            }
            if (uLinearDcpHueSatEnabled != 0) {
                rgb = dngApplyHueSatMap(
                    rgb,
                    uLinearDcpHueSatMap,
                    uLinearDcpHueSatDivisions,
                    uLinearDcpHueSatEncoding,
                    uHueSatSupportOverrange != 0
                );
            }
            vec3 profileInputRgb = rgb * uProfileGainBaselineGain;
            float tableInput = profileGainTableInput(profileInputRgb);
            rgb *= profileGain(profileInputRgb, tableInput);
            if (uClampProfileGainOutput != 0) {
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

    private val COMPUTE_SHADER_LINEAR_RAW_RGB = """
        #version 310 es
        precision highp float;
        precision highp int;
        precision highp image2D;
        precision highp uimage2D;

        layout(local_size_x = 8, local_size_y = 8) in;
        layout(rgba16ui, binding = 0) readonly uniform highp uimage2D uLinearRawInput;
        layout(rgba16f, binding = 1) writeonly uniform highp image2D uLinearRawOutput;
        uniform int uOutputY;
        uniform int uRowCount;

        void main() {
            ivec2 position = ivec2(gl_GlobalInvocationID.xy);
            ivec2 inputSize = imageSize(uLinearRawInput);
            ivec2 outputPosition = ivec2(position.x, position.y + uOutputY);
            ivec2 outputSize = imageSize(uLinearRawOutput);
            if (position.x >= inputSize.x || position.y >= uRowCount ||
                any(greaterThanEqual(outputPosition, outputSize))) return;
            uvec4 sample16 = imageLoad(uLinearRawInput, position);
            imageStore(uLinearRawOutput, outputPosition, vec4(sample16) / 65535.0);
        }
    """.trimIndent()

    /**
     * RGB16UI cannot be bound to a GLSL image because ES exposes no rgb16ui image qualifier.
     * Expand a bounded strip into RGBA16UI using integer-only texture fetches, then let the
     * Phocus image-load shader perform the only integer-to-float conversion.
     */
    private val COMPUTE_SHADER_LINEAR_RAW_RGB_EXPAND = """
        #version 310 es
        precision highp float;
        precision highp int;
        precision highp usampler2D;
        precision highp uimage2D;

        layout(local_size_x = 8, local_size_y = 8) in;
        uniform highp usampler2D uLinearRawRgbInput;
        layout(rgba16ui, binding = 0) writeonly uniform highp uimage2D uLinearRawRgbaOutput;
        uniform int uSourceY;
        uniform int uRowCount;

        void main() {
            ivec2 position = ivec2(gl_GlobalInvocationID.xy);
            ivec2 inputSize = textureSize(uLinearRawRgbInput, 0);
            if (position.x >= inputSize.x || position.y >= uRowCount) return;
            ivec2 sourcePosition = ivec2(position.x, position.y + uSourceY);
            uvec3 rgb = texelFetch(uLinearRawRgbInput, sourcePosition, 0).rgb;
            imageStore(uLinearRawRgbaOutput, position, uvec4(rgb, 65535u));
        }
    """.trimIndent()

    private val WARP_RECTILINEAR_FRAGMENT_SHADER = """
        #version 300 es
        precision highp float;

        in vec2 vTexCoord;
        out vec4 fragColor;

        uniform sampler2D uSourceTexture;
        uniform vec2 uImageSize;
        uniform vec4 uRadial;
        uniform vec2 uTangential;
        uniform vec2 uCenter;

        float bicubicWeight(float x) {
            const float A = -0.75;
            x = abs(x);
            if (x >= 2.0) return 0.0;
            if (x >= 1.0) return ((A * x - 5.0 * A) * x + 8.0 * A) * x - 4.0 * A;
            return ((A + 2.0) * x - (A + 3.0)) * x * x + 1.0;
        }

        vec4 sampleDngBicubic(vec2 sourcePixel) {
            ivec2 imageMax = ivec2(uImageSize) - ivec2(1);
            sourcePixel = clamp(sourcePixel, vec2(0.0), uImageSize - vec2(1.0));
            vec2 base = floor(sourcePixel);
            // dng_filter_warp uses a 32-entry fractional weight table.
            vec2 fraction = floor((sourcePixel - base) * 32.0) * (1.0 / 32.0);
            vec4 total = vec4(0.0);
            float totalWeight = 0.0;
            for (int y = -1; y <= 2; ++y) {
                float wy = bicubicWeight(float(y) - fraction.y);
                for (int x = -1; x <= 2; ++x) {
                    float weight = bicubicWeight(float(x) - fraction.x) * wy;
                    ivec2 pixel = clamp(ivec2(base) + ivec2(x, y), ivec2(0), imageMax);
                    total += texelFetch(uSourceTexture, pixel, 0) * weight;
                    totalWeight += weight;
                }
            }
            return total / max(totalWeight, 1e-8);
        }

        void main() {
            vec2 centerPx = uCenter * uImageSize;
            // DNG pixel centers are integer coordinates; fragment centers are n + 0.5.
            vec2 dstPx = gl_FragCoord.xy - vec2(0.5);
            vec2 diff = dstPx - centerPx;
            vec2 farthest = max(centerPx, uImageSize - centerPx);
            float normRadius = max(length(farthest), 1.0);
            vec2 normalized = diff / normRadius;
            float r2 = min(dot(normalized, normalized), 1.0);
            float ratio = uRadial.x + uRadial.y * r2 +
                uRadial.z * r2 * r2 + uRadial.w * r2 * r2 * r2;
            float dh = normalized.x;
            float dv = normalized.y;
            vec2 tangent = vec2(
                uTangential.y * (r2 + 2.0 * dh * dh) + 2.0 * uTangential.x * dh * dv,
                uTangential.x * (r2 + 2.0 * dv * dv) + 2.0 * uTangential.y * dh * dv
            );
            vec2 srcPx = centerPx + normRadius * (normalized * ratio + tangent);
            fragColor = sampleDngBicubic(srcPx);
        }
    """.trimIndent()

    private fun initLinearRawPrograms(vShader: Int) {
        pgtmCellSamplesProgram = compileComputeProgram(
            DngPhotonProfileGainTableInputShader.CELL_SAMPLES,
            "DNG_PGTM_CELL_SAMPLES",
        )
        DngPhotonLocalToneMapGpuShaders.sources.forEachIndexed { index, source ->
            val pass = DngPhotonLocalToneMapGpuShaders.Pass.entries[index]
            pgtmPhotonPrograms[index] = compileComputeProgram(
                source,
                "DNG_PHOTON_PGTM_${pass.name}",
            )
        }
        meteringHalfResolutionProgram = compileComputeProgram(
            RawMeteringDemosaicShaders.HALF_RESOLUTION,
            "RAW_METERING_HALF_RESOLUTION",
        )
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
        linearRawRgbProgram = compileComputeProgram(
            COMPUTE_SHADER_LINEAR_RAW_RGB,
            "LinearRawRgbToFloat"
        )
        linearRawRgbExpandProgram = compileComputeProgram(
            COMPUTE_SHADER_LINEAR_RAW_RGB_EXPAND,
            "LinearRawRgbExpand"
        )
        warpRectilinearProgram = linkFragmentProgram(
            vShader,
            WARP_RECTILINEAR_FRAGMENT_SHADER,
            "warpRectilinear"
        )
    }

    private fun ensureStandardBayerRcdPrograms(): Boolean {
        if (rcdPopulateProgram != 0 && rcdStep1Program != 0 && rcdStep2Program != 0 &&
            rcdStep3Program != 0 && rcdStep40Program != 0 && rcdStep41Program != 0 &&
            rcdStep42Program != 0 && rcdStep43Program != 0 && rcdWriteOutputProgram != 0
        ) {
            return true
        }
        val start = System.currentTimeMillis()
        if (rcdPopulateProgram == 0) {
            rcdPopulateProgram = compileComputeProgram(RcdShaders.POPULATE, "POPULATE")
        }
        if (rcdStep1Program == 0) {
            rcdStep1Program = compileComputeProgram(RcdShaders.STEP_1, "STEP_1")
        }
        if (rcdStep2Program == 0) {
            rcdStep2Program = compileComputeProgram(RcdShaders.STEP_2, "STEP_2")
        }
        if (rcdStep3Program == 0) {
            rcdStep3Program = compileComputeProgram(RcdShaders.STEP_3, "STEP_3")
        }
        if (rcdStep40Program == 0) {
            rcdStep40Program = compileComputeProgram(RcdShaders.STEP_4_0, "STEP_4_0")
        }
        if (rcdStep41Program == 0) {
            rcdStep41Program = compileComputeProgram(RcdShaders.STEP_4_1, "STEP_4_1")
        }
        if (rcdStep42Program == 0) {
            rcdStep42Program = compileComputeProgram(RcdShaders.STEP_4_2, "STEP_4_2")
        }
        if (rcdStep43Program == 0) {
            rcdStep43Program = compileComputeProgram(RcdShaders.STEP_4_3, "STEP_4_3")
        }
        if (rcdWriteOutputProgram == 0) {
            rcdWriteOutputProgram = compileComputeProgram(RcdShaders.WRITE_OUTPUT, "WRITE_OUTPUT")
        }
        val ready = rcdPopulateProgram != 0 && rcdStep1Program != 0 && rcdStep2Program != 0 &&
            rcdStep3Program != 0 && rcdStep40Program != 0 && rcdStep41Program != 0 &&
            rcdStep42Program != 0 && rcdStep43Program != 0 && rcdWriteOutputProgram != 0
        PLog.d(TAG, "Standard Bayer RCD programs ready=$ready, took=${System.currentTimeMillis() - start}ms")
        return ready
    }

    private fun ensureVgnPrograms(): Boolean {
        if (vgnPrograms.all { it != 0 }) return true
        val start = System.currentTimeMillis()
        VgnShaders.PROGRAM_SOURCES.forEachIndexed { index, (label, source) ->
            if (vgnPrograms[index] == 0) {
                vgnPrograms[index] = compileComputeProgram(
                    source,
                    "VGN_${label.uppercase(Locale.ROOT)}",
                )
            }
        }
        val ready = vgnPrograms.all { it != 0 }
        PLog.d(TAG, "Single-frame VGN programs ready=$ready, took=${System.currentTimeMillis() - start}ms")
        return ready
    }

    private fun ensureQuadBayerPrograms(): Boolean {
        if (quadPopulateProgram != 0 && quadGreenProgram != 0 && quadChromaProgram != 0 &&
            quadRefineProgram != 0 && quadWriteOutputProgram != 0
        ) {
            return true
        }
        val start = System.currentTimeMillis()
        if (quadPopulateProgram == 0) {
            quadPopulateProgram = compileComputeProgram(QuadBayerShaders.POPULATE, "QUAD_POPULATE")
        }
        if (quadGreenProgram == 0) {
            quadGreenProgram = compileComputeProgram(QuadBayerShaders.GREEN, "QUAD_GREEN")
        }
        if (quadChromaProgram == 0) {
            quadChromaProgram = compileComputeProgram(QuadBayerShaders.CHROMA, "QUAD_CHROMA")
        }
        if (quadRefineProgram == 0) {
            quadRefineProgram = compileComputeProgram(QuadBayerShaders.REFINE, "QUAD_REFINE")
        }
        if (quadWriteOutputProgram == 0) {
            quadWriteOutputProgram = compileComputeProgram(QuadBayerShaders.WRITE_OUTPUT, "QUAD_WRITE_OUTPUT")
        }
        val ready = quadPopulateProgram != 0 && quadGreenProgram != 0 && quadChromaProgram != 0 &&
            quadRefineProgram != 0 && quadWriteOutputProgram != 0
        PLog.d(TAG, "Quad Bayer programs ready=$ready, took=${System.currentTimeMillis() - start}ms")
        return ready
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
        GlesComputeWorkGroup.requireBaselineCompatible(source, name)
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
        if (gfWidth == width && gfHeight == height && gfTexId[0] != 0) {
            setupDenoiseProfileResources(width, height)
            return
        }
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
        checkGlError("setup DenoiseProfile textures")
        setupDenoiseProfileResources(width, height)
        checkGlError("setup DenoiseProfile resources")
    }

    private fun setupDenoiseProfileResources(width: Int, height: Int) {
        val maxSsboBytes = queryDenoiseProfileMaxSsboBytes()
        val plannedRows = DenoiseProfileStripePlanner.capacityRows(width, height, maxSsboBytes)
        if (plannedRows <= 0) {
            PLog.e(
                TAG,
                "DenoiseProfile cannot fit one accumulator row: width=$width " +
                    "GL_MAX_SHADER_STORAGE_BLOCK_SIZE=$maxSsboBytes"
            )
            releaseDenoiseProfileAccumulator()
            return
        }
        if (denoiseNlmBufferWidth == width && denoiseNlmBufferRows > 0 &&
            denoiseNlmU2BufferId != 0
        ) return

        releaseDenoiseProfileAccumulator()

        val buffers = IntArray(1)
        GLES31.glGenBuffers(buffers.size, buffers, 0)
        denoiseNlmU2BufferId = buffers[0]
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, denoiseNlmU2BufferId)
        checkGlError("before DenoiseProfile accumulator allocation")

        var capacityRows = plannedRows
        while (capacityRows > 0) {
            val byteCount = DenoiseProfileStripePlanner.requiredBytes(width, capacityRows)
            GLES31.glBufferData(
                GLES31.GL_SHADER_STORAGE_BUFFER,
                byteCount.toInt(),
                null,
                GLES31.GL_DYNAMIC_DRAW
            )
            val allocationError = GLES30.glGetError()
            if (allocationError == GLES30.GL_NO_ERROR) {
                denoiseNlmBufferWidth = width
                denoiseNlmBufferRows = capacityRows
                PLog.i(
                    TAG,
                    "DenoiseProfile accumulator stripe=${width}x$capacityRows " +
                        "bytes=$byteCount maxSsbo=$maxSsboBytes"
                )
                break
            }

            PLog.w(
                TAG,
                "DenoiseProfile accumulator ${width}x$capacityRows allocation failed: " +
                    "bytes=$byteCount glError=$allocationError"
            )
            capacityRows = nextSmallerDenoiseProfileStripeRows(capacityRows)
        }
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
        if (denoiseNlmBufferRows == 0) {
            releaseDenoiseProfileAccumulator()
        }
    }

    private fun queryDenoiseProfileMaxSsboBytes(): Long {
        if (denoiseNlmMaxSsboBytes > 0L) return denoiseNlmMaxSsboBytes
        val value = LongArray(1)
        GLES30.glGetInteger64v(GLES31.GL_MAX_SHADER_STORAGE_BLOCK_SIZE, value, 0)
        val queryError = GLES30.glGetError()
        denoiseNlmMaxSsboBytes = if (queryError == GLES30.GL_NO_ERROR && value[0] > 0L) {
            value[0]
        } else {
            PLog.w(
                TAG,
                "Failed to query GL_MAX_SHADER_STORAGE_BLOCK_SIZE: " +
                    "value=${value[0]} glError=$queryError; using GLES 3.1 minimum"
            )
            DENOISE_PROFILE_GLES31_MIN_SSBO_BYTES
        }
        return denoiseNlmMaxSsboBytes
    }

    private fun nextSmallerDenoiseProfileStripeRows(currentRows: Int): Int {
        if (currentRows <= 1) return 0
        val half = currentRows / 2
        val workgroupRows = DenoiseProfileShaders.IMAGE_LOCAL_Y
        return if (half >= workgroupRows) half - half % workgroupRows else half
    }

    private fun releaseDenoiseProfileAccumulator() {
        if (denoiseNlmU2BufferId != 0) {
            GLES31.glDeleteBuffers(1, intArrayOf(denoiseNlmU2BufferId), 0)
            denoiseNlmU2BufferId = 0
        }
        denoiseNlmBufferWidth = 0
        denoiseNlmBufferRows = 0
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
        val strength = chromaDenoiseValue?.coerceIn(0f, 1f) ?: 0f
        if (strength <= 0f || width * height < 2) {
            return sourceTextureId
        }

        if (chromaDenoiseGuideProgram == 0 || chromaDenoiseProgram == 0 ||
            linearOutputFramebufferId == 0 || linearOutputTextureId == 0
        ) {
            PLog.w(
                TAG,
                "RAW chroma denoise program not initialized, falling back to source"
            )
            return sourceTextureId
        }

        val profileGain =
            (metadata.iso / 100.0f * metadata.postRawSensitivityBoost).coerceAtLeast(1f)
        val noiseModel = resolveChromaDenoiseNoiseModel(metadata, profileGain)
        val h = ChromaDenoiseDefaults.noiseBandwidth(strength)
        val edgeGuidanceRelaxation =
            ChromaDenoiseDefaults.edgeGuidanceRelaxation(strength)
        setupNLMFramebuffers(width, height)
        renderChromaDenoiseLuminanceGuide(sourceTextureId, width, height)
        val guideTextureId = gfTexId[0]
        val identityMatrix = FloatArray(16)
        GlMatrix.setIdentityM(identityMatrix, 0)

        GLES30.glUseProgram(chromaDenoiseProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, linearOutputFramebufferId)
        GLES30.glViewport(0, 0, width, height)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, sourceTextureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(chromaDenoiseProgram, "uInputTexture"), 0)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE1)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, guideTextureId)
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(chromaDenoiseProgram, "uGuideTexture"),
            1
        )
        GLES30.glUniformMatrix4fv(
            GLES30.glGetUniformLocation(chromaDenoiseProgram, "uTexMatrix"),
            1,
            false,
            identityMatrix,
            0
        )
        GLES30.glUniform2f(
            GLES30.glGetUniformLocation(chromaDenoiseProgram, "uTexelSize"),
            1.0f / width,
            1.0f / height
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(chromaDenoiseProgram, "uOutputStrength"),
            ChromaDenoiseDefaults.outputStrength(strength)
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(chromaDenoiseProgram, "uEdgeGuidanceRelaxation"),
            edgeGuidanceRelaxation
        )
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(chromaDenoiseProgram, "uCameraRgbInput"),
            1
        )
        GLES30.glUniform1f(GLES30.glGetUniformLocation(chromaDenoiseProgram, "uH"), h)
        GLES30.glUniform4f(
            GLES30.glGetUniformLocation(chromaDenoiseProgram, "uNoiseModelRB"),
            noiseModel.redSlope,
            noiseModel.redOffset,
            noiseModel.blueSlope,
            noiseModel.blueOffset
        )
        GLES30.glUniform2f(
            GLES30.glGetUniformLocation(chromaDenoiseProgram, "uNoiseModelG"),
            noiseModel.greenSlope,
            noiseModel.greenOffset
        )
        drawQuad(chromaDenoiseProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        checkGlError("RAW chroma denoise")

        PLog.d(
            TAG,
            "RAW chroma denoise before luma: strength=$strength h=$h " +
                "edgeGuidanceRelaxation=$edgeGuidanceRelaxation " +
                "red=(${noiseModel.redSlope}, ${noiseModel.redOffset}) " +
                "green=(${noiseModel.greenSlope}, ${noiseModel.greenOffset}) " +
                "blue=(${noiseModel.blueSlope}, ${noiseModel.blueOffset})"
        )
        return linearOutputTextureId
    }

    private fun renderChromaDenoiseLuminanceGuide(
        sourceTextureId: Int,
        width: Int,
        height: Int,
    ) {
        GLES30.glUseProgram(chromaDenoiseGuideProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, gfFboId[0])
        GLES30.glViewport(0, 0, width, height)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, sourceTextureId)
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(chromaDenoiseGuideProgram, "uInputTexture"),
            0
        )
        GLES30.glUniform2f(
            GLES30.glGetUniformLocation(chromaDenoiseGuideProgram, "uTexelSize"),
            1.0f / width,
            1.0f / height
        )
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(chromaDenoiseGuideProgram, "uCameraRgbInput"),
            1
        )
        val identityMatrix = FloatArray(16)
        GlMatrix.setIdentityM(identityMatrix, 0)
        GLES30.glUniformMatrix4fv(
            GLES30.glGetUniformLocation(chromaDenoiseGuideProgram, "uTexMatrix"),
            1,
            false,
            identityMatrix,
            0
        )
        drawQuad(chromaDenoiseGuideProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        checkGlError("RAW chroma denoise luminance guide")
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
    ) {
        setupNLMFramebuffers(width, height)

        if (!isDenoiseProfileReady()) {
            PLog.w(TAG, "DenoiseProfile programs not initialized, falling back to passthrough")
            renderPassthroughToTexture(sourceTextureId, width, height, gfFboId[1])
            return
        }

        val params = buildDenoiseProfileParams(metadata, denoiseValue ?: 0f)
        if (params.strength <= 0f || width * height < 2) {
            renderPassthroughToTexture(sourceTextureId, width, height, gfFboId[1])
            return
        }

        PLog.d(
            TAG,
            "DenoiseProfile NLM: strength=${params.strength} a=${params.a} b=${params.b} " +
                    "shadows=${params.shadows} bias=${params.bias} patch=${params.patchRadius} " +
                    "search=${params.searchRadius} fineNoise=${params.expectedFineDistance} " +
                    "guideNoise=${params.expectedGuideDistance} bandwidth=${params.inverseBandwidth} " +
                    "guideWeight=${params.coarseGuideWeight} center=${params.centralPixelWeight} " +
                    "greenNoise=true adaptiveWb=${params.adaptiveWb.contentToString()} " +
                    "signalScale=${params.signalScale.contentToString()}"
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
        val expectedFineDistance: Float,
        val expectedGuideDistance: Float,
        val inverseBandwidth: Float,
        val coarseGuideWeight: Float,
        val centralPixelWeight: Float,
        val p: FloatArray,
        val adaptiveWb: FloatArray,
        val signalScale: FloatArray,
        val aa: FloatArray,
        val bb: FloatArray
    )

    private fun isDenoiseProfileReady(): Boolean {
        return denoisePreconditionV2Program != 0 &&
                denoiseNlmInitProgram != 0 &&
                denoiseNlmFusedAccuProgram != 0 &&
                denoiseNlmFinishProgram != 0 &&
                denoiseNlmU2BufferId != 0 &&
                denoiseNlmBufferRows > 0
    }

    private fun buildDenoiseProfileParams(
        metadata: RawMetadata,
        strengthValue: Float
    ): DenoiseProfileParams {
        val profileGain =
            (metadata.iso / 100.0f * metadata.postRawSensitivityBoost).coerceAtLeast(1f)
        val (noiseA, noiseB) = resolveDenoiseProfileNoiseModel(metadata, profileGain)
        val a = noiseA.coerceAtLeast(1e-10f)
        val b = noiseB.coerceAtLeast(1e-10f)
        val strength = strengthValue.coerceAtLeast(0f)
        val scale = 1.0f
        val shadows = inferDenoiseProfileShadows(a)
        val bias = DenoiseProfileShaders.BLACK_PRESERVING_BIAS
        val adaptiveWb = computeDenoiseProfileWb(metadata)
        val p = floatArrayOf(
            max(shadows + 0.1f * ln(scale / adaptiveWb[0]), 0.0f),
            max(shadows + 0.1f * ln(scale / adaptiveWb[1]), 0.0f),
            max(shadows + 0.1f * ln(scale / adaptiveWb[2]), 0.0f),
            1.0f
        )
        val compensateP = 0.05f / 0.05f.pow(shadows)
        val patchRadius = DenoiseProfileShaders.PATCH_RADIUS
        val searchRadius = DenoiseProfileShaders.SEARCH_RADIUS
        val weightTuning = DenoiseProfileNlmConfig.weightTuning(patchRadius)
        val centralPixelWeight = 0.1f * scale
        val signalScale = floatArrayOf(
            scale,
            scale,
            scale,
            1.0f
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
            expectedFineDistance = weightTuning.expectedFineDistance,
            expectedGuideDistance = weightTuning.expectedGuideDistance,
            inverseBandwidth = weightTuning.inverseBandwidth,
            coarseGuideWeight = weightTuning.coarseGuideWeight,
            centralPixelWeight = centralPixelWeight,
            p = p,
            adaptiveWb = adaptiveWb,
            signalScale = signalScale,
            aa = aa,
            bb = bb
        )
    }

    private fun inferDenoiseProfileShadows(a: Float): Float {
        return max(0.1f - 0.1f * ln(a), 0.7f).coerceAtMost(1.8f)
    }

    private fun computeDenoiseProfileWb(metadata: RawMetadata): FloatArray {
        val normalized = demosaicCalculationWbGains(metadata)
        return floatArrayOf(normalized[0], 1f, normalized[3])
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
        val stripes = DenoiseProfileStripePlanner.plan(height, denoiseNlmBufferRows)
        for (stripe in stripes) {
            dispatchDenoiseNlmInit(width, height, stripe)

            for (offset in DenoiseProfileNlmConfig.searchOffsets) {
                dispatchDenoiseNlmFusedAccumulate(
                    preconditionedTextureId,
                    width,
                    height,
                    stripe,
                    offset.x,
                    offset.y,
                    params
                )
            }

            dispatchDenoiseNlmFinish(
                originalTextureId,
                outputTextureId,
                width,
                height,
                stripe,
                params
            )
            GlesGpuScheduler.yieldToUiRenderer()
        }
    }

    private fun dispatchDenoiseNlmInit(
        width: Int,
        height: Int,
        stripe: DenoiseProfileStripe,
    ) {
        GLES31.glUseProgram(denoiseNlmInitProgram)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, denoiseNlmU2BufferId)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(denoiseNlmInitProgram, "uImageSize"), width, height)
        GLES31.glUniform1i(
            GLES31.glGetUniformLocation(denoiseNlmInitProgram, "uStripeRowCount"),
            stripe.rowCount
        )
        dispatchDenoiseImage(
            width,
            stripe.rowCount,
            "DenoiseProfile NLM init row=${stripe.rowOffset}"
        )
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
    }

    private fun dispatchDenoiseNlmFusedAccumulate(
        inputTextureId: Int,
        width: Int,
        height: Int,
        stripe: DenoiseProfileStripe,
        qx: Int,
        qy: Int,
        params: DenoiseProfileParams
    ) {
        GLES31.glUseProgram(denoiseNlmFusedAccuProgram)
        bindComputeSampler(denoiseNlmFusedAccuProgram, "uInput", 0, inputTextureId)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, denoiseNlmU2BufferId)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(denoiseNlmFusedAccuProgram, "uImageSize"), width, height)
        setDenoiseStripeUniforms(denoiseNlmFusedAccuProgram, stripe)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(denoiseNlmFusedAccuProgram, "uQ"), qx, qy)
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(denoiseNlmFusedAccuProgram, "uExpectedFineDistance"),
            params.expectedFineDistance
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(denoiseNlmFusedAccuProgram, "uExpectedGuideDistance"),
            params.expectedGuideDistance
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(denoiseNlmFusedAccuProgram, "uInverseBandwidth"),
            params.inverseBandwidth
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(denoiseNlmFusedAccuProgram, "uCoarseGuideWeight"),
            params.coarseGuideWeight
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(denoiseNlmFusedAccuProgram, "uCentralPixelWeight"),
            params.centralPixelWeight
        )
        dispatchDenoiseImage(
            width,
            stripe.rowCount,
            "DenoiseProfile NLM fused accu row=${stripe.rowOffset} q=($qx,$qy)"
        )
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
    }

    private fun dispatchDenoiseNlmFinish(
        originalTextureId: Int,
        outputTextureId: Int,
        width: Int,
        height: Int,
        stripe: DenoiseProfileStripe,
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
        setDenoiseStripeUniforms(program, stripe)
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(program, "uBias"),
            params.bias - 0.5f * ln(params.scale)
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(program, "uDenoiseMix"),
            params.strength.coerceIn(0f, 1f)
        )
        dispatchDenoiseImage(
            width,
            stripe.rowCount,
            "DenoiseProfile NLM finish row=${stripe.rowOffset}"
        )
    }

    private fun setDenoiseStripeUniforms(program: Int, stripe: DenoiseProfileStripe) {
        GLES31.glUniform1i(
            GLES31.glGetUniformLocation(program, "uStripeRowOffset"),
            stripe.rowOffset
        )
        GLES31.glUniform1i(
            GLES31.glGetUniformLocation(program, "uStripeRowCount"),
            stripe.rowCount
        )
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

    private fun dispatchDenoiseImage(width: Int, height: Int, tag: String) {
        GLES31.glDispatchCompute(GlesComputeWorkGroup.imageGroupCount(width), GlesComputeWorkGroup.imageGroupCount(height), 1)
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

    private fun renderWarpRectilinearPass(
        sourceTextureId: Int,
        targetFramebufferId: Int,
        width: Int,
        height: Int,
        parameters: FloatArray,
    ): Boolean {
        if (warpRectilinearProgram == 0 || parameters.size != 8) return false
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, targetFramebufferId)
        GLES30.glViewport(0, 0, width, height)
        GLES30.glUseProgram(warpRectilinearProgram)
        val textureMatrix = FloatArray(16)
        GlMatrix.setIdentityM(textureMatrix, 0)
        GLES30.glUniformMatrix4fv(
            GLES30.glGetUniformLocation(warpRectilinearProgram, "uTexMatrix"),
            1,
            false,
            textureMatrix,
            0,
        )
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, sourceTextureId)
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(warpRectilinearProgram, "uSourceTexture"),
            0
        )
        GLES30.glUniform2f(
            GLES30.glGetUniformLocation(warpRectilinearProgram, "uImageSize"),
            width.toFloat(),
            height.toFloat()
        )
        GLES30.glUniform4f(
            GLES30.glGetUniformLocation(warpRectilinearProgram, "uRadial"),
            parameters[0], parameters[1], parameters[2], parameters[3]
        )
        GLES30.glUniform2f(
            GLES30.glGetUniformLocation(warpRectilinearProgram, "uTangential"),
            parameters[4], parameters[5]
        )
        GLES30.glUniform2f(
            GLES30.glGetUniformLocation(warpRectilinearProgram, "uCenter"),
            parameters[6], parameters[7]
        )
        drawQuad(warpRectilinearProgram)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        checkGlError("WarpRectilinearPass")
        return true
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
            metadata.cfaPattern
        )
        var slope = greenProfile[0].takeIf { it > 0f }
            ?: metadata.noiseProfile.getOrElse(0) { 0f }
        var offset = greenProfile[1].takeIf { it > 0f }
            ?: metadata.noiseProfile.getOrElse(1) { 0f }

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
            metadata.cfaPattern
        )
        val fallbackSlope = metadata.noiseProfile.getOrElse(0) { 0f }
            .takeIf { it.isFinite() && it > 0f }
            ?: (1E-4f * fallbackGain)
        val fallbackOffset = metadata.noiseProfile.getOrElse(1) { 0f }
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
            dispatchLinearRawUint16ToFloat(
                sourceTextureId = sourceTextureId,
                targetTextureId = targetTextureId,
                outputY = 0,
                rowCount = height,
                width = width,
            )
            finishLinearRawUint16ToFloat()
            checkGlError("renderLinearRawRgbToTexture RGBA16UI")
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
                dispatchLinearRawRgbExpansion(
                    sourceTextureId = sourceTextureId,
                    targetTextureId = expandedTextureId,
                    sourceY = sourceY,
                    rowCount = rowCount,
                    width = width,
                )
                GLES31.glMemoryBarrier(GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT)
                dispatchLinearRawUint16ToFloat(
                    sourceTextureId = expandedTextureId,
                    targetTextureId = targetTextureId,
                    outputY = sourceY,
                    rowCount = rowCount,
                    width = width,
                )
                GLES31.glMemoryBarrier(GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT)
                sourceY += rowCount
            }
            finishLinearRawUint16ToFloat()
            checkGlError("renderLinearRawRgbToTexture RGB16UI")
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

    private fun dispatchLinearRawRgbExpansion(
        sourceTextureId: Int,
        targetTextureId: Int,
        sourceY: Int,
        rowCount: Int,
        width: Int,
    ) {
        GLES31.glUseProgram(linearRawRgbExpandProgram)
        GLES31.glActiveTexture(GLES31.GL_TEXTURE0)
        GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, sourceTextureId)
        GLES31.glUniform1i(
            GLES31.glGetUniformLocation(linearRawRgbExpandProgram, "uLinearRawRgbInput"),
            0,
        )
        GLES31.glUniform1i(
            GLES31.glGetUniformLocation(linearRawRgbExpandProgram, "uSourceY"),
            sourceY,
        )
        GLES31.glUniform1i(
            GLES31.glGetUniformLocation(linearRawRgbExpandProgram, "uRowCount"),
            rowCount,
        )
        GLES31.glBindImageTexture(
            0,
            targetTextureId,
            0,
            false,
            0,
            GLES31.GL_WRITE_ONLY,
            GLES31.GL_RGBA16UI,
        )
        GLES31.glDispatchCompute(GlesComputeWorkGroup.imageGroupCount(width), GlesComputeWorkGroup.imageGroupCount(rowCount), 1)
    }

    private fun dispatchLinearRawUint16ToFloat(
        sourceTextureId: Int,
        targetTextureId: Int,
        outputY: Int,
        rowCount: Int,
        width: Int,
    ) {
        GLES31.glUseProgram(linearRawRgbProgram)
        GLES31.glUniform1i(
            GLES31.glGetUniformLocation(linearRawRgbProgram, "uOutputY"),
            outputY,
        )
        GLES31.glUniform1i(
            GLES31.glGetUniformLocation(linearRawRgbProgram, "uRowCount"),
            rowCount,
        )
        GLES31.glBindImageTexture(
            0,
            sourceTextureId,
            0,
            false,
            0,
            GLES31.GL_READ_ONLY,
            GLES31.GL_RGBA16UI
        )
        GLES31.glBindImageTexture(
            1,
            targetTextureId,
            0,
            false,
            0,
            GLES31.GL_WRITE_ONLY,
            GLES31.GL_RGBA16F
        )
        GLES31.glDispatchCompute(GlesComputeWorkGroup.imageGroupCount(width), GlesComputeWorkGroup.imageGroupCount(rowCount), 1)
    }

    private fun finishLinearRawUint16ToFloat() {
        GLES31.glMemoryBarrier(
            GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT or
                GLES31.GL_TEXTURE_FETCH_BARRIER_BIT or
                GLES31.GL_FRAMEBUFFER_BARRIER_BIT
        )
        GLES31.glBindImageTexture(
            0,
            0,
            0,
            false,
            0,
            GLES31.GL_READ_ONLY,
            GLES31.GL_RGBA16UI
        )
        GLES31.glBindImageTexture(
            1,
            0,
            0,
            false,
            0,
            GLES31.GL_WRITE_ONLY,
            GLES31.GL_RGBA16F
        )
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

    private data class VgnImageBinding(
        val unit: Int,
        val texture: Int,
        val access: Int,
        val format: Int,
    )

    private data class VgnTextureKey(
        val internalFormat: Int,
        val width: Int,
        val height: Int,
    )

    private var vgnTileTexturePoolingEnabled = false
    private val vgnTileAvailableTextures = mutableMapOf<VgnTextureKey, ArrayDeque<Int>>()
    private val vgnTileTextureKeys = mutableMapOf<Int, VgnTextureKey>()

    private fun obtainVgnTexture(
        internalFormat: Int,
        width: Int,
        height: Int,
        label: String,
    ): Int {
        val key = VgnTextureKey(internalFormat, width, height)
        if (vgnTileTexturePoolingEnabled) {
            vgnTileAvailableTextures[key]?.removeLastOrNull()?.let { return it }
        }
        return createVgnTexture(internalFormat, width, height, label).also { texture ->
            if (vgnTileTexturePoolingEnabled) {
                vgnTileTextureKeys[texture] = key
            }
        }
    }

    private fun recycleVgnTexture(texture: Int) {
        val key = vgnTileTextureKeys[texture]
        if (vgnTileTexturePoolingEnabled && key != null) {
            vgnTileAvailableTextures.getOrPut(key, ::ArrayDeque).addLast(texture)
        } else {
            GLES30.glDeleteTextures(1, intArrayOf(texture), 0)
            vgnTileTextureKeys.remove(texture)
        }
    }

    private fun releaseVgnTileTexturePool() {
        if (vgnTileTextureKeys.isNotEmpty()) {
            val textures = vgnTileTextureKeys.keys.toIntArray()
            GLES30.glDeleteTextures(textures.size, textures, 0)
        }
        vgnTileTextureKeys.clear()
        vgnTileAvailableTextures.clear()
    }

    private fun createVgnTexture(internalFormat: Int, width: Int, height: Int, label: String): Int {
        require(width > 0 && height > 0) { "Invalid VGN texture size for $label: ${width}x$height" }
        val ids = IntArray(1)
        GLES30.glGenTextures(1, ids, 0)
        check(ids[0] != 0) { "Failed to allocate VGN texture for $label" }
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, ids[0])
        GLES30.glTexStorage2D(GLES30.GL_TEXTURE_2D, 1, internalFormat, width, height)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_NEAREST)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_NEAREST)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        checkGlError("VGN allocate $label ${width}x$height")
        return ids[0]
    }

    private fun vgnUbo(capacity: Int, writer: ByteBuffer.() -> Unit): ByteBuffer {
        val buffer = ByteBuffer.allocateDirect(capacity).order(ByteOrder.nativeOrder())
        buffer.writer()
        buffer.limit(buffer.position())
        buffer.position(0)
        return buffer
    }

    private fun vgnBoundsUbo(left: Int, top: Int, right: Int, bottom: Int): ByteBuffer =
        vgnUbo(16) {
            putInt(left)
            putInt(top)
            putInt(right)
            putInt(bottom)
        }

    private fun vgnThresholdBoundsUbo(
        left: Int,
        top: Int,
        right: Int,
        bottom: Int,
        edgeThreshold: Int,
        vngThreshold: Int,
    ): ByteBuffer = vgnUbo(32) {
        putInt(left)
        putInt(top)
        putInt(right)
        putInt(bottom)
        putInt(edgeThreshold)
        putInt(vngThreshold)
        putInt(0)
        putInt(0)
    }

    private data class VgnIirCoefficients(
        val a10: FloatArray,
        val b10: FloatArray,
        val aDyn1: FloatArray,
        val bDyn1: FloatArray,
        val aDyn2: FloatArray,
        val bDyn2: FloatArray,
    )

    // Exact coefficient rows selected by CDemosaicFilter::FilterResultGpu for color-noise
    // level 50. a10/b10 is GetIIRFilter2LPCoefFloat(14); the two dynamic sections are the
    // cascaded biquads returned by GetIIRFilter4LPCoefFloat(44) and (20), respectively.
    private val vgnIirPass1Coefficients = VgnIirCoefficients(
        a10 = floatArrayOf(0.0674552768f, 0.134910554f, 0.0674552768f, 0f),
        b10 = floatArrayOf(1f, -1.14298046f, 0.412801594f, 0f),
        aDyn1 = floatArrayOf(0.00580812711f, 0.0116162542f, 0.00580812711f, 0f),
        bDyn1 = floatArrayOf(1f, -1.86380053f, 0.887032986f, 0f),
        aDyn2 = floatArrayOf(0.00537849404f, 0.0107569881f, 0.00537849404f, 0f),
        bDyn2 = floatArrayOf(1f, -1.72593343f, 0.747447371f, 0f),
    )

    private val vgnIirPass3Coefficients = VgnIirCoefficients(
        a10 = vgnIirPass1Coefficients.a10,
        b10 = vgnIirPass1Coefficients.b10,
        aDyn1 = floatArrayOf(0.0331984349f, 0.0663968697f, 0.0331984349f, 0f),
        bDyn1 = floatArrayOf(1f, -1.61172712f, 0.744520843f, 0f),
        aDyn2 = floatArrayOf(0.0281187538f, 0.0562375076f, 0.0281187538f, 0f),
        bDyn2 = floatArrayOf(1f, -1.36511719f, 0.47759226f, 0f),
    )

    private fun vgnIirUbo(
        width: Int,
        height: Int,
        direction: Int,
        axis: Int,
        coefficients: VgnIirCoefficients,
    ): ByteBuffer {
        return vgnUbo(112) {
            for (value in coefficients.a10) putFloat(value)
            for (value in coefficients.b10) putFloat(value)
            for (value in coefficients.aDyn1) putFloat(value)
            for (value in coefficients.bDyn1) putFloat(value)
            for (value in coefficients.aDyn2) putFloat(value)
            for (value in coefficients.bDyn2) putFloat(value)
            putInt(width)
            putInt(height)
            putInt(direction)
            putInt(axis)
        }
    }

    private fun dispatchVgnPass(
        programIndex: Int,
        groupCountX: Int,
        groupCountY: Int,
        label: String,
        uboId: Int,
        uboBinding: Int? = null,
        ubo: ByteBuffer? = null,
        vararg images: VgnImageBinding,
    ) {
        val program = vgnPrograms[programIndex]
        check(program != 0) { "VGN program unavailable: $label" }
        GLES31.glUseProgram(program)
        for (image in images) {
            GLES31.glBindImageTexture(
                image.unit,
                image.texture,
                0,
                false,
                0,
                image.access,
                image.format,
            )
        }
        if (uboBinding != null && ubo != null) {
            GLES31.glBindBuffer(GLES31.GL_UNIFORM_BUFFER, uboId)
            GLES31.glBufferData(
                GLES31.GL_UNIFORM_BUFFER,
                ubo.remaining(),
                ubo,
                GLES31.GL_DYNAMIC_DRAW,
            )
            GLES31.glBindBufferBase(GLES31.GL_UNIFORM_BUFFER, uboBinding, uboId)
            GLES31.glBindBuffer(GLES31.GL_UNIFORM_BUFFER, 0)
        }
        GLES31.glDispatchCompute(groupCountX.coerceAtLeast(1), groupCountY.coerceAtLeast(1), 1)
        GLES31.glMemoryBarrier(GLES31.GL_ALL_BARRIER_BITS)
        checkGlError("VGN $label")
        // Bound the background compute queue to one full-resolution pass. This provides an
        // inter-context scheduling point for RenderThread/SurfaceFlinger and lets the driver
        // reclaim VGN intermediates as soon as their last pass has completed.
        GlesGpuScheduler.waitForGpuCheckpoint(TAG, "VGN $label")
    }

    private fun unbindVgnImages() {
        for (unit in 0..5) {
            GLES31.glBindImageTexture(
                unit,
                0,
                0,
                false,
                0,
                GLES31.GL_READ_ONLY,
                GLES30.GL_RGBA16F,
            )
        }
    }

    private fun runVgnIirPass(
        programIndex: Int,
        source: Int,
        destination: Int,
        uboId: Int,
        width: Int,
        height: Int,
        direction: Int,
        axis: Int,
        coefficients: VgnIirCoefficients,
        label: String,
    ) {
        val groupsX = if (axis == 0) 1 else width
        val groupsY = if (axis == 0) height else 1
        dispatchVgnPass(
            programIndex = programIndex,
            groupCountX = groupsX,
            groupCountY = groupsY,
            label = label,
            uboId = uboId,
            uboBinding = 2,
            ubo = vgnIirUbo(width, height, direction, axis, coefficients),
            VgnImageBinding(0, source, GLES31.GL_READ_ONLY, GLES30.GL_RGBA16UI),
            VgnImageBinding(1, destination, GLES31.GL_WRITE_ONLY, GLES30.GL_RGBA16UI),
        )
    }

    /**
     * Packed Bayer VGN demosaic used only by processInternal's ordinary single-frame CFA path.
     * The multi-frame/HDR entry points deliberately retain runStandardBayerRcdDemosaic().
     */
    private fun runSingleFrameVgnDemosaic(
        metadata: RawMetadata,
        width: Int,
        height: Int,
        highlightReconstructionEnabled: Boolean,
        globalOriginX: Int = 0,
        globalOriginY: Int = 0,
    ) {
        val demosaicStartNs = System.nanoTime()
        require(metadata.cfaPattern in RawMetadata.CFA_RGGB..RawMetadata.CFA_BGGR) {
            "VGN requires a standard 2x2 Bayer CFA, got ${metadata.cfaPattern}"
        }
        require(width >= 64 && height >= 64) {
            "VGN input is too small for the 16-pixel reference halo: ${width}x$height"
        }

        val phaseX = if (metadata.cfaPattern == RawMetadata.CFA_GRBG ||
            metadata.cfaPattern == RawMetadata.CFA_BGGR
        ) 1 else 0
        val phaseY = if (metadata.cfaPattern == RawMetadata.CFA_GBRG ||
            metadata.cfaPattern == RawMetadata.CFA_BGGR
        ) 1 else 0
        // The reference shaders operate on a canonical RGGB work domain. Offsetting the
        // photo ROI by the source CFA phase preserves that parity without translating the
        // finished RGB image. The surrounding pixels are edge-extended support data only.
        val roiLeft = VGN_WORK_HALO + phaseX
        val roiTop = VGN_WORK_HALO + phaseY
        val roiRight = roiLeft + width
        val roiBottom = roiTop + height
        val packedWidth = (roiRight + VGN_WORK_HALO + 3) / 4
        val workWidth = packedWidth * 4
        val workHeight = ((roiBottom + VGN_WORK_HALO + 1) / 2) * 2
        val halfHeight = workHeight / 2
        val groupsPackedX = GlesComputeWorkGroup.imageGroupCount(packedWidth)
        val groupsWorkX = GlesComputeWorkGroup.imageGroupCount(workWidth)
        val groupsWorkY = GlesComputeWorkGroup.imageGroupCount(workHeight)
        val groupsHalfHeight = GlesComputeWorkGroup.imageGroupCount(halfHeight)
        val groupsOutputX = GlesComputeWorkGroup.imageGroupCount(width)
        val groupsOutputY = GlesComputeWorkGroup.imageGroupCount(height)
        val calculationGains = demosaicCalculationWbGains(metadata)
        val blackLevel4 = FloatArray(4) { index ->
            metadata.blackLevel.getOrElse(index) { metadata.blackLevel.firstOrNull() ?: 0f }
                .coerceAtLeast(0f)
        }
        val (_, noiseOffset) = resolveDenoiseProfileNoiseModel(metadata, 1f)
        // Phocus feeds PASS_0A2 with black/read-noise deviation, not the total noise at
        // middle grey. Its GetInterpolateThresholds() then clamps blackStd / demosaicGain
        // to [1, 100] and derives the two direction thresholds as 50/gain and 400/gain.
        // PREPARE_PACKED_RAW already normalizes the sensor range and applies the calculation
        // neutral, so the corresponding demosaic gain in this work domain is exactly 1.
        val standardDeviation =
            (sqrt(noiseOffset.coerceAtLeast(1e-10f)) * 65535f).coerceIn(1f, 100f)
        val edgeThreshold = 50
        val vngThreshold = 400
        val liveTextures = linkedSetOf<Int>()
        fun allocate(format: Int, textureWidth: Int, textureHeight: Int, label: String): Int =
            obtainVgnTexture(format, textureWidth, textureHeight, label).also(liveTextures::add)
        fun releaseTexture(texture: Int) {
            if (liveTextures.remove(texture)) {
                recycleVgnTexture(texture)
            }
        }

        val uboIds = IntArray(1)
        GLES31.glGenBuffers(1, uboIds, 0)
        check(uboIds[0] != 0) { "Failed to allocate VGN UBO" }

        try {
            val packedFloat = allocate(GLES30.GL_RGBA16F, packedWidth, workHeight, "packed float")
            val packedBayer = allocate(GLES30.GL_RGBA16UI, packedWidth, workHeight, "packed Bayer")
            val packedSmooth = allocate(GLES30.GL_RGBA16UI, packedWidth, workHeight, "packed smooth")
            val scaleTexture = allocate(GLES30.GL_RGBA16F, workWidth, halfHeight, "scale")
            val medianTexture = allocate(GLES30.GL_RGBA16F, packedWidth, halfHeight, "median")
            val edgeTexture = allocate(GLES30.GL_RGBA16I, packedWidth, workHeight, "edge")
            val full0 = allocate(GLES30.GL_RGBA16UI, workWidth, workHeight, "full 0")
            val full1 = allocate(GLES30.GL_RGBA16UI, workWidth, workHeight, "full 1")

            val prepareProgram = vgnPrograms[VgnShaders.PROGRAM_PREPARE]
            GLES31.glUseProgram(prepareProgram)
            GLES31.glActiveTexture(GLES31.GL_TEXTURE0 + RCD_RAW_TEXTURE_UNIT)
            GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, rawTextureId)
            GLES31.glUniform1i(
                GLES31.glGetUniformLocation(prepareProgram, "uRawTexture"),
                RCD_RAW_TEXTURE_UNIT,
            )
            bindLensShadingForProgram(
                program = prepareProgram,
                metadata = metadata,
                globalOriginX = globalOriginX,
                globalOriginY = globalOriginY,
            )
            GLES31.glUniform2i(GLES31.glGetUniformLocation(prepareProgram, "uImageSize"), width, height)
            GLES31.glUniform2i(
                GLES31.glGetUniformLocation(prepareProgram, "uFullImageSize"),
                metadata.width,
                metadata.height,
            )
            GLES31.glUniform2i(
                GLES31.glGetUniformLocation(prepareProgram, "uGlobalOrigin"),
                globalOriginX,
                globalOriginY,
            )
            GLES31.glUniform2i(
                GLES31.glGetUniformLocation(prepareProgram, "uPackedSize"),
                packedWidth,
                workHeight,
            )
            GLES31.glUniform2i(
                GLES31.glGetUniformLocation(prepareProgram, "uSourceOffset"),
                roiLeft,
                roiTop,
            )
            GLES31.glUniform1i(
                GLES31.glGetUniformLocation(prepareProgram, "uCfaPattern"),
                metadata.cfaPattern,
            )
            GLES31.glUniform4fv(
                GLES31.glGetUniformLocation(prepareProgram, "uBlackLevel"),
                1,
                blackLevel4,
                0,
            )
            GLES31.glUniform1f(
                GLES31.glGetUniformLocation(prepareProgram, "uWhiteLevel"),
                metadata.whiteLevel,
            )
            GLES31.glUniform4fv(
                GLES31.glGetUniformLocation(prepareProgram, "uCalculationGains"),
                1,
                calculationGains,
                0,
            )
            GLES31.glUniform1f(
                GLES31.glGetUniformLocation(prepareProgram, "uHighlightClipThreshold"),
                RcdShaders.HIGHLIGHT_RECONSTRUCTION_THRESHOLD,
            )
            GLES31.glUniform1f(
                GLES31.glGetUniformLocation(prepareProgram, "uHighlightCeiling"),
                RcdShaders.HIGHLIGHT_RECONSTRUCTION_CEILING,
            )
            GLES31.glUniform1i(
                GLES31.glGetUniformLocation(prepareProgram, "uHighlightReconstructionEnabled"),
                if (highlightReconstructionEnabled) 1 else 0,
            )
            GLES31.glBindImageTexture(
                0,
                packedFloat,
                0,
                false,
                0,
                GLES31.GL_WRITE_ONLY,
                GLES30.GL_RGBA16F,
            )
            GLES31.glDispatchCompute(groupsPackedX, groupsWorkY, 1)
            GLES31.glMemoryBarrier(GLES31.GL_ALL_BARRIER_BITS)
            checkGlError("VGN prepare packed RAW")
            GlesGpuScheduler.waitForGpuCheckpoint(TAG, "VGN prepare packed RAW")

            dispatchVgnPass(
                VgnShaders.PROGRAM_NEUTRAL,
                groupsPackedX,
                groupsWorkY,
                "neutral",
                uboIds[0],
                2,
                vgnUbo(48) {
                    putInt(0); putInt(0); putInt(packedWidth); putInt(workHeight)
                    putInt(4096); putInt(4096); putInt(4096); putInt(0)
                    putInt(12); putInt(0); putInt(0); putInt(0)
                },
                VgnImageBinding(0, packedFloat, GLES31.GL_READ_ONLY, GLES30.GL_RGBA16F),
                VgnImageBinding(1, packedBayer, GLES31.GL_WRITE_ONLY, GLES30.GL_RGBA16UI),
            )

            dispatchVgnPass(
                VgnShaders.PROGRAM_0A1,
                groupsPackedX,
                groupsWorkY,
                "pass 0A1",
                uboIds[0],
                2,
                vgnBoundsUbo(0, 1, packedWidth - 1, workHeight - 1),
                VgnImageBinding(0, packedBayer, GLES31.GL_READ_ONLY, GLES30.GL_RGBA16UI),
                VgnImageBinding(1, packedSmooth, GLES31.GL_WRITE_ONLY, GLES30.GL_RGBA16UI),
            )

            dispatchVgnPass(
                VgnShaders.PROGRAM_0A2,
                groupsWorkX,
                groupsHalfHeight,
                "pass 0A2",
                uboIds[0],
                2,
                vgnUbo(32) {
                    putInt(0); putInt(1); putInt(packedWidth - 1); putInt((workHeight - 2) / 2)
                    putFloat(standardDeviation); putFloat(0f); putFloat(0f); putFloat(0f)
                },
                VgnImageBinding(0, packedBayer, GLES31.GL_READ_ONLY, GLES30.GL_RGBA16UI),
                VgnImageBinding(1, scaleTexture, GLES31.GL_WRITE_ONLY, GLES30.GL_RGBA16F),
            )

            dispatchVgnPass(
                VgnShaders.PROGRAM_0B,
                groupsPackedX,
                groupsHalfHeight,
                "pass 0B",
                uboIds[0],
                2,
                vgnBoundsUbo(1, 0, packedWidth - 1, workHeight - 4),
                VgnImageBinding(0, scaleTexture, GLES31.GL_READ_ONLY, GLES30.GL_RGBA16F),
                VgnImageBinding(1, medianTexture, GLES31.GL_WRITE_ONLY, GLES30.GL_RGBA16F),
            )

            dispatchVgnPass(
                VgnShaders.PROGRAM_0C,
                groupsPackedX,
                groupsWorkY,
                "pass 0C",
                uboIds[0],
                2,
                vgnBoundsUbo(0, 1, packedWidth - 1, workHeight - 1),
                VgnImageBinding(0, packedSmooth, GLES31.GL_READ_ONLY, GLES30.GL_RGBA16UI),
                VgnImageBinding(1, edgeTexture, GLES31.GL_WRITE_ONLY, GLES30.GL_RGBA16I),
            )

            dispatchVgnPass(
                VgnShaders.PROGRAM_1,
                groupsWorkX,
                groupsWorkY,
                "pass 1",
                uboIds[0],
                5,
                vgnThresholdBoundsUbo(
                    12,
                    12,
                    workWidth - 12,
                    workHeight - 12,
                    edgeThreshold,
                    vngThreshold,
                ),
                VgnImageBinding(0, packedBayer, GLES31.GL_READ_ONLY, GLES30.GL_RGBA16UI),
                VgnImageBinding(1, edgeTexture, GLES31.GL_READ_ONLY, GLES30.GL_RGBA16I),
                VgnImageBinding(2, scaleTexture, GLES31.GL_READ_ONLY, GLES30.GL_RGBA16F),
                VgnImageBinding(3, medianTexture, GLES31.GL_READ_ONLY, GLES30.GL_RGBA16F),
                VgnImageBinding(4, full0, GLES31.GL_WRITE_ONLY, GLES30.GL_RGBA16UI),
            )

            dispatchVgnPass(
                VgnShaders.PROGRAM_2,
                groupsWorkX,
                groupsWorkY,
                "pass 2",
                uboIds[0],
                2,
                vgnBoundsUbo(13, 13, workWidth - 13, workHeight - 13),
                VgnImageBinding(0, full0, GLES31.GL_READ_ONLY, GLES30.GL_RGBA16UI),
                VgnImageBinding(1, full1, GLES31.GL_WRITE_ONLY, GLES30.GL_RGBA16UI),
            )

            dispatchVgnPass(
                VgnShaders.PROGRAM_3,
                groupsWorkX,
                groupsWorkY,
                "pass 3",
                uboIds[0],
                4,
                vgnThresholdBoundsUbo(
                    16,
                    16,
                    workWidth - 16,
                    workHeight - 16,
                    edgeThreshold,
                    vngThreshold,
                ),
                VgnImageBinding(0, full1, GLES31.GL_READ_ONLY, GLES30.GL_RGBA16UI),
                VgnImageBinding(1, packedBayer, GLES31.GL_READ_ONLY, GLES30.GL_RGBA16UI),
                VgnImageBinding(2, edgeTexture, GLES31.GL_READ_ONLY, GLES30.GL_RGBA16I),
                VgnImageBinding(3, full0, GLES31.GL_WRITE_ONLY, GLES30.GL_RGBA16UI),
            )

            unbindVgnImages()
            releaseTexture(packedFloat)
            releaseTexture(packedSmooth)
            releaseTexture(scaleTexture)
            releaseTexture(medianTexture)
            releaseTexture(edgeTexture)
            releaseTexture(packedBayer)

            val full2 = allocate(GLES30.GL_RGBA16UI, workWidth, workHeight, "full 2")

            dispatchVgnPass(
                VgnShaders.PROGRAM_COLOR_NOISE_1,
                groupsWorkX,
                groupsWorkY,
                "color noise 1",
                uboIds[0],
                2,
                vgnBoundsUbo(8, 8, workWidth - 8, workHeight - 8),
                VgnImageBinding(0, full0, GLES31.GL_READ_ONLY, GLES30.GL_RGBA16UI),
                VgnImageBinding(1, full1, GLES31.GL_WRITE_ONLY, GLES30.GL_RGBA16UI),
            )

            dispatchVgnPass(
                VgnShaders.PROGRAM_COLOR_NOISE_2,
                groupsWorkX,
                groupsWorkY,
                "color noise 2",
                uboIds[0],
                2,
                vgnBoundsUbo(8, 8, workWidth - 8, workHeight - 8),
                VgnImageBinding(0, full1, GLES31.GL_READ_ONLY, GLES30.GL_RGBA16UI),
                VgnImageBinding(1, full2, GLES31.GL_WRITE_ONLY, GLES30.GL_RGBA16UI),
            )

            if (VGN_ADVANCED_COLOR_NOISE_ENABLED) {
                val full3 = allocate(GLES30.GL_RGBA16UI, workWidth, workHeight, "full 3")

                dispatchVgnPass(
                    VgnShaders.PROGRAM_COLOR_NOISE_3_YCCD,
                    groupsWorkX,
                    groupsWorkY,
                    "color noise 3 YCCD",
                    uboIds[0],
                    4,
                    vgnBoundsUbo(12, 12, workWidth - 12, workHeight - 12),
                    VgnImageBinding(0, full1, GLES31.GL_READ_ONLY, GLES30.GL_RGBA16UI),
                    VgnImageBinding(1, full2, GLES31.GL_READ_ONLY, GLES30.GL_RGBA16UI),
                    VgnImageBinding(2, full0, GLES31.GL_WRITE_ONLY, GLES30.GL_RGBA16UI),
                    VgnImageBinding(3, full3, GLES31.GL_WRITE_ONLY, GLES30.GL_RGBA16UI),
                )

                dispatchVgnPass(
                    VgnShaders.PROGRAM_IIR2_1_INIT,
                    1,
                    workHeight,
                    "IIR2 pass 1 init",
                    uboIds[0],
                    3,
                    vgnIirUbo(workWidth, workHeight, 0, 0, vgnIirPass1Coefficients),
                    VgnImageBinding(0, full0, GLES31.GL_READ_ONLY, GLES30.GL_RGBA16UI),
                    VgnImageBinding(1, full3, GLES31.GL_READ_ONLY, GLES30.GL_RGBA16UI),
                    VgnImageBinding(2, full2, GLES31.GL_WRITE_ONLY, GLES30.GL_RGBA16UI),
                )
                runVgnIirPass(
                    VgnShaders.PROGRAM_IIR2_1,
                    full2,
                    full3,
                    uboIds[0],
                    workWidth,
                    workHeight,
                    1,
                    0,
                    vgnIirPass1Coefficients,
                    "IIR2 pass 1 horizontal reverse",
                )
                runVgnIirPass(
                    VgnShaders.PROGRAM_IIR2_1,
                    full3,
                    full2,
                    uboIds[0],
                    workWidth,
                    workHeight,
                    0,
                    1,
                    vgnIirPass1Coefficients,
                    "IIR2 pass 1 vertical forward",
                )
                runVgnIirPass(
                    VgnShaders.PROGRAM_IIR2_1,
                    full2,
                    full3,
                    uboIds[0],
                    workWidth,
                    workHeight,
                    1,
                    1,
                    vgnIirPass1Coefficients,
                    "IIR2 pass 1 vertical reverse",
                )

                dispatchVgnPass(
                    VgnShaders.PROGRAM_CALCULATE_COLOR_NOISE_ERROR,
                    groupsWorkX,
                    groupsWorkY,
                    "calculate color noise error",
                    uboIds[0],
                    images = arrayOf(
                        VgnImageBinding(0, full0, GLES31.GL_READ_ONLY, GLES30.GL_RGBA16UI),
                        VgnImageBinding(1, full3, GLES31.GL_READ_ONLY, GLES30.GL_RGBA16UI),
                        VgnImageBinding(2, full2, GLES31.GL_WRITE_ONLY, GLES30.GL_RGBA16UI),
                    ),
                )

                runVgnIirPass(VgnShaders.PROGRAM_IIR2_2, full2, full3, uboIds[0], workWidth,
                    workHeight, 0, 0, vgnIirPass1Coefficients,
                    "IIR2 pass 2 horizontal forward")
                runVgnIirPass(VgnShaders.PROGRAM_IIR2_2, full3, full2, uboIds[0], workWidth,
                    workHeight, 1, 0, vgnIirPass1Coefficients,
                    "IIR2 pass 2 horizontal reverse")
                runVgnIirPass(VgnShaders.PROGRAM_IIR2_2, full2, full3, uboIds[0], workWidth,
                    workHeight, 0, 1, vgnIirPass1Coefficients,
                    "IIR2 pass 2 vertical forward")
                runVgnIirPass(VgnShaders.PROGRAM_IIR2_2, full3, full2, uboIds[0], workWidth,
                    workHeight, 1, 1, vgnIirPass1Coefficients,
                    "IIR2 pass 2 vertical reverse")

                dispatchVgnPass(
                    VgnShaders.PROGRAM_COLOR_NOISE_FILTER,
                    groupsWorkX,
                    groupsWorkY,
                    "color noise filter",
                    uboIds[0],
                    images = arrayOf(
                        VgnImageBinding(0, full0, GLES31.GL_READ_ONLY, GLES30.GL_RGBA16UI),
                        VgnImageBinding(1, full1, GLES31.GL_WRITE_ONLY, GLES30.GL_RGBA16UI),
                        VgnImageBinding(2, full2, GLES31.GL_READ_ONLY, GLES30.GL_RGBA16UI),
                    ),
                )

                runVgnIirPass(VgnShaders.PROGRAM_IIR2_3, full1, full0, uboIds[0], workWidth,
                    workHeight, 0, 0, vgnIirPass3Coefficients,
                    "IIR2 pass 3 horizontal forward")
                runVgnIirPass(VgnShaders.PROGRAM_IIR2_3, full0, full1, uboIds[0], workWidth,
                    workHeight, 1, 0, vgnIirPass3Coefficients,
                    "IIR2 pass 3 horizontal reverse")
                runVgnIirPass(VgnShaders.PROGRAM_IIR2_3, full1, full0, uboIds[0], workWidth,
                    workHeight, 0, 1, vgnIirPass3Coefficients,
                    "IIR2 pass 3 vertical forward")
                runVgnIirPass(VgnShaders.PROGRAM_IIR2_3, full0, full1, uboIds[0], workWidth,
                    workHeight, 1, 1, vgnIirPass3Coefficients,
                    "IIR2 pass 3 vertical reverse")

                dispatchVgnPass(
                    VgnShaders.PROGRAM_YUV_TO_RGB,
                    groupsOutputX,
                    groupsOutputY,
                    "YUV to RGB",
                    uboIds[0],
                    2,
                    vgnUbo(32) {
                        putInt(roiLeft); putInt(roiTop); putInt(roiRight); putInt(roiBottom)
                        putFloat(1f); putFloat(0f); putFloat(0f); putFloat(0f)
                    },
                    VgnImageBinding(0, full1, GLES31.GL_READ_ONLY, GLES30.GL_RGBA16UI),
                    VgnImageBinding(1, linearOutputTextureId, GLES31.GL_WRITE_ONLY,
                        GLES30.GL_RGBA16F),
                )
            } else {
                // PASS_3 is YCCD with a direction mask, not a displayable final image.
                // The reference COLOR_NOISE_PASS_3 performs the required four-phase chroma
                // fusion and writes RGB while cropping the padded work domain to the photo ROI.
                dispatchVgnPass(
                    VgnShaders.PROGRAM_COLOR_NOISE_3,
                    groupsOutputX,
                    groupsOutputY,
                    "color noise 3 RGB",
                    uboIds[0],
                    3,
                    vgnUbo(32) {
                        putInt(roiLeft); putInt(roiTop); putInt(roiRight); putInt(roiBottom)
                        putFloat(1f); putFloat(0f); putFloat(0f); putFloat(0f)
                    },
                    VgnImageBinding(0, full1, GLES31.GL_READ_ONLY, GLES30.GL_RGBA16UI),
                    VgnImageBinding(1, full2, GLES31.GL_READ_ONLY, GLES30.GL_RGBA16UI),
                    VgnImageBinding(2, linearOutputTextureId, GLES31.GL_WRITE_ONLY,
                        GLES30.GL_RGBA16F),
                )
                PLog.d(TAG, "Single-frame VGN color-noise IIR chain disabled")
            }

            val compositeProgram = vgnPrograms[VgnShaders.PROGRAM_COMPOSITE]
            GLES31.glUseProgram(compositeProgram)
            GLES31.glUniform2i(
                GLES31.glGetUniformLocation(compositeProgram, "uImageSize"),
                width,
                height,
            )
            GLES31.glUniform3f(
                GLES31.glGetUniformLocation(compositeProgram, "uCalculationGains"),
                calculationGains[0],
                1f,
                calculationGains[3],
            )
            GLES31.glBindImageTexture(0, linearOutputTextureId, 0, false, 0,
                GLES31.GL_READ_ONLY, GLES30.GL_RGBA16F)
            GLES31.glBindImageTexture(1, demosaicTextureId, 0, false, 0,
                GLES31.GL_WRITE_ONLY, GLES30.GL_RGBA16F)
            GLES31.glDispatchCompute(groupsOutputX, groupsOutputY, 1)
            GLES31.glMemoryBarrier(GLES31.GL_ALL_BARRIER_BITS)
            checkGlError("VGN composite camera RGB")

            PLog.d(
                TAG,
                "Single-frame VGN complete: size=${width}x$height work=${workWidth}x$workHeight " +
                    "roi=$roiLeft,$roiTop,$roiRight,$roiBottom cfa=${metadata.cfaPattern} " +
                    "stdDev=$standardDeviation edgeThreshold=$edgeThreshold " +
                    "vngThreshold=$vngThreshold colorNoiseLevel=$VGN_COLOR_NOISE_LEVEL " +
                    "gpuSliced=true tookMs=${(System.nanoTime() - demosaicStartNs) / 1_000_000} " +
                    "calculationWb=${calculationGains.contentToString()} " +
                    "lsc=${lensShadingLogString(metadata)}",
            )
        } finally {
            unbindVgnImages()
            for (binding in 0..5) {
                GLES31.glBindBufferBase(GLES31.GL_UNIFORM_BUFFER, binding, 0)
            }
            if (uboIds[0] != 0) GLES31.glDeleteBuffers(1, uboIds, 0)
            if (liveTextures.isNotEmpty()) {
                liveTextures.forEach(::recycleVgnTexture)
                liveTextures.clear()
            }
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        }
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
        require(meteringHalfResolutionProgram != 0) {
            "RAW metering half-resolution program is unavailable"
        }
        require(metadata.cfaPattern in RawMetadata.CFA_RGGB..RawMetadata.CFA_BGGR) {
            "Half-resolution metering requires a standard 2x2 Bayer CFA"
        }
        val outputWidth = (width + 1) / 2
        val outputHeight = (height + 1) / 2
        check(demosaicWidth == outputWidth && demosaicHeight == outputHeight) {
            "RAW metering target mismatch: ${demosaicWidth}x$demosaicHeight, " +
                "expected=${outputWidth}x$outputHeight"
        }
        val startNs = System.nanoTime()
        val blackLevel4 = FloatArray(4) { index ->
            metadata.blackLevel.getOrElse(index) {
                metadata.blackLevel.firstOrNull() ?: 0f
            }.coerceAtLeast(0f)
        }
        GLES31.glUseProgram(meteringHalfResolutionProgram)
        GLES31.glActiveTexture(GLES31.GL_TEXTURE0 + RCD_RAW_TEXTURE_UNIT)
        GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, rawTextureId)
        GLES31.glUniform1i(
            GLES31.glGetUniformLocation(meteringHalfResolutionProgram, "uRawTexture"),
            RCD_RAW_TEXTURE_UNIT,
        )
        bindLensShadingForProgram(meteringHalfResolutionProgram, metadata)
        GLES31.glUniform2i(
            GLES31.glGetUniformLocation(meteringHalfResolutionProgram, "uImageSize"),
            width,
            height,
        )
        GLES31.glUniform2i(
            GLES31.glGetUniformLocation(meteringHalfResolutionProgram, "uOutputSize"),
            outputWidth,
            outputHeight,
        )
        GLES31.glUniform1i(
            GLES31.glGetUniformLocation(meteringHalfResolutionProgram, "uCfaPattern"),
            metadata.cfaPattern,
        )
        GLES31.glUniform4fv(
            GLES31.glGetUniformLocation(meteringHalfResolutionProgram, "uBlackLevel"),
            1,
            blackLevel4,
            0,
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(meteringHalfResolutionProgram, "uWhiteLevel"),
            metadata.whiteLevel,
        )
        GLES31.glBindImageTexture(
            0,
            demosaicTextureId,
            0,
            false,
            0,
            GLES31.GL_WRITE_ONLY,
            GLES30.GL_RGBA16F,
        )
        GLES31.glDispatchCompute(
            GlesComputeWorkGroup.imageGroupCount(outputWidth),
            GlesComputeWorkGroup.imageGroupCount(outputHeight),
            1,
        )
        GLES31.glMemoryBarrier(
            GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT or
                GLES31.GL_TEXTURE_FETCH_BARRIER_BIT,
        )
        checkGlError("RAW metering half-resolution demosaic")
        GlesGpuScheduler.waitForGpuCheckpoint(TAG, "RAW metering half-resolution demosaic")
        GLES31.glBindImageTexture(
            0,
            0,
            0,
            false,
            0,
            GLES31.GL_READ_ONLY,
            GLES30.GL_RGBA16F,
        )
        GLES31.glActiveTexture(GLES31.GL_TEXTURE0 + RCD_LENS_SHADING_TEXTURE_UNIT)
        GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, 0)
        GLES31.glActiveTexture(GLES31.GL_TEXTURE0 + RCD_RAW_TEXTURE_UNIT)
        GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, 0)
        PLog.d(
            TAG,
            "RAW metering half-resolution demosaic complete: " +
                "source=${width}x$height output=${outputWidth}x$outputHeight " +
                "cfa=${metadata.cfaPattern} tookMs=" +
                "${(System.nanoTime() - startNs) / 1_000_000}",
        )
    }

    private fun runStandardBayerRcdDemosaic(
        metadata: RawMetadata,
        width: Int,
        height: Int,
        globalOriginX: Int = 0,
        globalOriginY: Int = 0,
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
        val calculationWbGains = demosaicCalculationWbGains(metadata)
        val lscSize = lensShadingLogString(metadata)

        try {
            GLES31.glUseProgram(rcdPopulateProgram)
            GLES31.glActiveTexture(GLES31.GL_TEXTURE0 + RCD_RAW_TEXTURE_UNIT)
            GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, rawTextureId)
            GLES31.glUniform1i(
                GLES31.glGetUniformLocation(rcdPopulateProgram, "uRawTexture"),
                RCD_RAW_TEXTURE_UNIT
            )
            bindLensShadingForRcdPopulate(
                metadata = metadata,
                globalOriginX = globalOriginX,
                globalOriginY = globalOriginY,
            )
            GLES31.glUniform2i(GLES31.glGetUniformLocation(rcdPopulateProgram, "uImageSize"), width, height)
            GLES31.glUniform1i(GLES31.glGetUniformLocation(rcdPopulateProgram, "uCfaPattern"), metadata.cfaPattern)
            GLES31.glUniform4fv(GLES31.glGetUniformLocation(rcdPopulateProgram, "uBlackLevel"), 1, blackLevel4, 0)
            GLES31.glUniform1f(GLES31.glGetUniformLocation(rcdPopulateProgram, "uWhiteLevel"), metadata.whiteLevel)
            GLES31.glUniform1f(
                GLES31.glGetUniformLocation(rcdPopulateProgram, "uHighlightClipThreshold"),
                RcdShaders.HIGHLIGHT_RECONSTRUCTION_THRESHOLD
            )
            GLES31.glUniform1f(
                GLES31.glGetUniformLocation(rcdPopulateProgram, "uHighlightCeiling"),
                RcdShaders.HIGHLIGHT_RECONSTRUCTION_CEILING
            )
            GLES31.glUniform1i(
                GLES31.glGetUniformLocation(rcdPopulateProgram, "uHighlightReconstructionEnabled"),
                1
            )
            GLES31.glUniform4fv(
                GLES31.glGetUniformLocation(rcdPopulateProgram, "uWhiteBalanceGains"),
                1,
                calculationWbGains,
                0
            )
            PLog.d(
                TAG,
                "Linear RCD populate: cfa=${metadata.cfaPattern} black=${blackLevel4.contentToString()} " +
                    "white=${metadata.whiteLevel} metadataWb=${metadataWbGains.contentToString()} " +
                    "calculationWb=${calculationWbGains.contentToString()} lsc=$lscSize"
            )
            GLES31.glDispatchCompute(GlesComputeWorkGroup.imageGroupCount(width), GlesComputeWorkGroup.imageGroupCount(height), 1)
            GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
            checkGlError("Linear RCD Populate")

            GLES31.glUseProgram(rcdStep1Program)
            GLES31.glUniform2i(GLES31.glGetUniformLocation(rcdStep1Program, "uImageSize"), width, height)
            GLES31.glDispatchCompute(GlesComputeWorkGroup.imageGroupCount(width), GlesComputeWorkGroup.imageGroupCount(height), 1)
            GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
            checkGlError("Linear RCD Step 1")

            GLES31.glUseProgram(rcdStep2Program)
            GLES31.glUniform2i(GLES31.glGetUniformLocation(rcdStep2Program, "uImageSize"), width, height)
            GLES31.glUniform1i(GLES31.glGetUniformLocation(rcdStep2Program, "uCfaPattern"), metadata.cfaPattern)
            GLES31.glDispatchCompute(GlesComputeWorkGroup.imageGroupCount(width / 2), GlesComputeWorkGroup.imageGroupCount(height), 1)
            GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
            checkGlError("Linear RCD Step 2")

            GLES31.glUseProgram(rcdStep3Program)
            GLES31.glUniform2i(GLES31.glGetUniformLocation(rcdStep3Program, "uImageSize"), width, height)
            GLES31.glUniform1i(GLES31.glGetUniformLocation(rcdStep3Program, "uCfaPattern"), metadata.cfaPattern)
            GLES31.glDispatchCompute(GlesComputeWorkGroup.imageGroupCount(width / 2), GlesComputeWorkGroup.imageGroupCount(height), 1)
            GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
            checkGlError("Linear RCD Step 3")

            GLES31.glUseProgram(rcdStep40Program)
            GLES31.glUniform2i(GLES31.glGetUniformLocation(rcdStep40Program, "uImageSize"), width, height)
            GLES31.glDispatchCompute(GlesComputeWorkGroup.imageGroupCount(width / 2), GlesComputeWorkGroup.imageGroupCount(height), 1)
            GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
            checkGlError("Linear RCD Step 4_0")

            GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, RCD_PQ_WRITE_BINDING, ssboIds[8])
            GLES31.glUseProgram(rcdStep41Program)
            GLES31.glUniform2i(GLES31.glGetUniformLocation(rcdStep41Program, "uImageSize"), width, height)
            GLES31.glUniform1i(GLES31.glGetUniformLocation(rcdStep41Program, "uCfaPattern"), metadata.cfaPattern)
            GLES31.glDispatchCompute(GlesComputeWorkGroup.imageGroupCount(width / 2), GlesComputeWorkGroup.imageGroupCount(height), 1)
            GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
            checkGlError("Linear RCD Step 4_1")

            GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, RCD_PQ_READ_BINDING, ssboIds[8])
            GLES31.glUseProgram(rcdStep42Program)
            GLES31.glUniform2i(GLES31.glGetUniformLocation(rcdStep42Program, "uImageSize"), width, height)
            GLES31.glUniform1i(GLES31.glGetUniformLocation(rcdStep42Program, "uCfaPattern"), metadata.cfaPattern)
            GLES31.glDispatchCompute(GlesComputeWorkGroup.imageGroupCount(width / 2), GlesComputeWorkGroup.imageGroupCount(height), 1)
            GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
            checkGlError("Linear RCD Step 4_2")

            GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, RCD_VH_DIR_BINDING, ssboIds[4])
            GLES31.glUseProgram(rcdStep43Program)
            GLES31.glUniform2i(GLES31.glGetUniformLocation(rcdStep43Program, "uImageSize"), width, height)
            GLES31.glUniform1i(GLES31.glGetUniformLocation(rcdStep43Program, "uCfaPattern"), metadata.cfaPattern)
            GLES31.glDispatchCompute(GlesComputeWorkGroup.imageGroupCount(width / 2), GlesComputeWorkGroup.imageGroupCount(height), 1)
            GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
            checkGlError("Linear RCD Step 4_3")

            GLES31.glUseProgram(rcdWriteOutputProgram)
            GLES31.glUniform2i(GLES31.glGetUniformLocation(rcdWriteOutputProgram, "uImageSize"), width, height)
            GLES31.glUniform1i(GLES31.glGetUniformLocation(rcdWriteOutputProgram, "uCfaPattern"), metadata.cfaPattern)
            GLES31.glUniform3f(
                GLES31.glGetUniformLocation(rcdWriteOutputProgram, "uCalculationGains"),
                calculationWbGains[0],
                1f,
                calculationWbGains[3]
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
            GLES31.glDispatchCompute(GlesComputeWorkGroup.imageGroupCount(width), GlesComputeWorkGroup.imageGroupCount(height), 1)
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
        highlightReconstructionEnabled: Boolean = true,
        globalOriginX: Int = 0,
        globalOriginY: Int = 0,
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
        val calculationWbGains = demosaicCalculationWbGains(metadata)
        val lscSize = lensShadingLogString(metadata)
        val expandedBlockSize = RawCfaCorrection.expandedBayerBlockSize(metadata.cfaPattern)

        GLES31.glUseProgram(quadPopulateProgram)
        GLES31.glActiveTexture(GLES31.GL_TEXTURE0 + RCD_RAW_TEXTURE_UNIT)
        GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, rawTextureId)
        GLES31.glUniform1i(
            GLES31.glGetUniformLocation(quadPopulateProgram, "uRawTexture"),
            RCD_RAW_TEXTURE_UNIT
        )
        bindLensShadingForProgram(
            program = quadPopulateProgram,
            metadata = metadata,
            globalOriginX = globalOriginX,
            globalOriginY = globalOriginY,
        )
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
            RcdShaders.HIGHLIGHT_RECONSTRUCTION_THRESHOLD
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(quadPopulateProgram, "uHighlightCeiling"),
            RcdShaders.HIGHLIGHT_RECONSTRUCTION_CEILING
        )
        GLES31.glUniform1i(
            GLES31.glGetUniformLocation(quadPopulateProgram, "uHighlightReconstructionEnabled"),
            if (highlightReconstructionEnabled) 1 else 0
        )
        GLES31.glUniform4fv(
            GLES31.glGetUniformLocation(quadPopulateProgram, "uWhiteBalanceGains"),
            1,
            calculationWbGains,
            0
        )
        PLog.d(
            TAG,
            "Expanded Bayer populate: cfa=${metadata.cfaPattern} block=${expandedBlockSize}x$expandedBlockSize " +
                    "black=${blackLevel4.contentToString()} " +
                    "white=${metadata.whiteLevel} metadataWb=${metadataWbGains.contentToString()} " +
                    "calculationWb=${calculationWbGains.contentToString()} lsc=$lscSize " +
                    "highlightReconstruction=$highlightReconstructionEnabled " +
                    "highlightThreshold=${RcdShaders.HIGHLIGHT_RECONSTRUCTION_THRESHOLD} " +
                    "highlightCeiling=${RcdShaders.HIGHLIGHT_RECONSTRUCTION_CEILING}"
        )
        GLES31.glDispatchCompute(GlesComputeWorkGroup.imageGroupCount(width), GlesComputeWorkGroup.imageGroupCount(height), 1)
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
        checkGlError("Quad Bayer Populate")

        GLES31.glUseProgram(quadGreenProgram)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(quadGreenProgram, "uImageSize"), width, height)
        GLES31.glUniform1i(
            GLES31.glGetUniformLocation(quadGreenProgram, "uCfaPattern"),
            metadata.cfaPattern
        )
        GLES31.glDispatchCompute(GlesComputeWorkGroup.imageGroupCount(width), GlesComputeWorkGroup.imageGroupCount(height), 1)
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
        checkGlError("Quad Bayer Green")

        GLES31.glUseProgram(quadChromaProgram)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(quadChromaProgram, "uImageSize"), width, height)
        GLES31.glUniform1i(
            GLES31.glGetUniformLocation(quadChromaProgram, "uCfaPattern"),
            metadata.cfaPattern
        )
        GLES31.glDispatchCompute(GlesComputeWorkGroup.imageGroupCount(width), GlesComputeWorkGroup.imageGroupCount(height), 1)
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
        checkGlError("Quad Bayer Chroma")

        GLES31.glUseProgram(quadRefineProgram)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(quadRefineProgram, "uImageSize"), width, height)
        GLES31.glUniform1i(
            GLES31.glGetUniformLocation(quadRefineProgram, "uCfaPattern"),
            metadata.cfaPattern
        )
        GLES31.glDispatchCompute(GlesComputeWorkGroup.imageGroupCount(width), GlesComputeWorkGroup.imageGroupCount(height), 1)
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
        checkGlError("Quad Bayer Refine")

        GLES31.glUseProgram(quadWriteOutputProgram)
        GLES31.glUniform2i(
            GLES31.glGetUniformLocation(quadWriteOutputProgram, "uImageSize"),
            width,
            height
        )
        GLES31.glUniform3f(
            GLES31.glGetUniformLocation(quadWriteOutputProgram, "uCalculationGains"),
            calculationWbGains[0],
            1f,
            calculationWbGains[3]
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
        GLES31.glDispatchCompute(GlesComputeWorkGroup.imageGroupCount(width), GlesComputeWorkGroup.imageGroupCount(height), 1)
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

    private fun bindLensShadingForRcdPopulate(
        metadata: RawMetadata,
        globalOriginX: Int = 0,
        globalOriginY: Int = 0,
    ) {
        bindLensShadingForProgram(
            program = rcdPopulateProgram,
            metadata = metadata,
            globalOriginX = globalOriginX,
            globalOriginY = globalOriginY,
        )
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

    private fun setupSrgbExposurePreviewFramebuffer(width: Int, height: Int) {
        if (
            srgbExposurePreviewWidth == width &&
            srgbExposurePreviewHeight == height &&
            srgbExposurePreviewFramebufferId != 0
        ) {
            return
        }

        if (srgbExposurePreviewTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(srgbExposurePreviewTextureId), 0)
        }
        if (srgbExposurePreviewFramebufferId != 0) {
            GLES30.glDeleteFramebuffers(1, intArrayOf(srgbExposurePreviewFramebufferId), 0)
        }

        srgbExposurePreviewWidth = width
        srgbExposurePreviewHeight = height

        val textures = IntArray(1)
        GLES30.glGenTextures(1, textures, 0)
        srgbExposurePreviewTextureId = textures[0]
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, srgbExposurePreviewTextureId)
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
        srgbExposurePreviewFramebufferId = framebuffers[0]
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, srgbExposurePreviewFramebufferId)
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER,
            GLES30.GL_COLOR_ATTACHMENT0,
            GLES30.GL_TEXTURE_2D,
            srgbExposurePreviewTextureId,
            0
        )
        checkGlError("setupSrgbExposurePreviewFramebuffer")
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

    private fun ensureDcpHueSatTexture(table: DcpHueSatMap): Int {
        if (dcpHueSatTextureId != 0 && dcpHueSatTextureSource === table) {
            return dcpHueSatTextureId
        }
        val textureId = uploadDcp3DTexture(
            textureIdProvider = { dcpHueSatTextureId },
            assignTextureId = { dcpHueSatTextureId = it },
            table = table,
        )
        dcpHueSatTextureSource = table
        return textureId
    }

    private fun bindDcpCombinedResources(
        program: Int,
        dcpRenderPlan: DcpRenderPlan?,
        applyHueSatMap: Boolean,
    ) {
        val hueSatMap = dcpRenderPlan?.hueSatMap?.takeIf { applyHueSatMap && it.isValid }
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
            val textureId = ensureDcpHueSatTexture(hueSatMap)
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

    private fun uploadHncsRgbaTexture(
        existingTextureId: Int,
        width: Int,
        height: Int,
        values: FloatArray
    ): Int {
        require(width > 0 && height > 0 && values.size == width * height * 4) {
            "Invalid HNCS RGBA texture payload: ${width}x$height values=${values.size}"
        }
        val textureId = if (existingTextureId != 0) {
            existingTextureId
        } else {
            IntArray(1).also { GLES30.glGenTextures(1, it, 0) }[0]
        }
        val buffer = ByteBuffer.allocateDirect(values.size * 4)
            .order(ByteOrder.nativeOrder())
            .asFloatBuffer()
            .apply {
                put(values)
                position(0)
            }
        // Resource creation must never inherit GL_TEXTURE0 from the image-input binding.
        // On the first HNCS render this upload otherwise replaces uInputTexture with the
        // 256x256 film-curve texture; cached renders then behave differently.
        GLES30.glActiveTexture(GLES30.GL_TEXTURE3)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, textureId)
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
            GLES30.GL_RGBA16F,
            width,
            height,
            0,
            GLES30.GL_RGBA,
            GLES30.GL_FLOAT,
            buffer
        )
        checkGlError("uploadHncsRgbaTexture")
        return textureId
    }

    private fun ensureHncsTextures(renderPlan: HncsRenderPlan) {
        val filmCurveKey = buildString {
            append(renderPlan.filmCurveAssetPath)
            append('|')
            append(renderPlan.filmCurveAssetSha256)
        }
        var uploaded = false
        if (hncsCurveTextureKey != filmCurveKey || hncsCurveTextureId == 0) {
            hncsCurveTextureId = uploadHncsRgbaTexture(
                existingTextureId = hncsCurveTextureId,
                width = HncsProfileManager.CURVE_TEXTURE_EDGE,
                height = HncsProfileManager.CURVE_TEXTURE_EDGE,
                values = renderPlan.filmCurveTexture
            )
            hncsCurveTextureKey = filmCurveKey
            uploaded = true
        }
        renderPlan.colorMap?.takeIf(HncsColorMap::isValid)?.let { colorMap ->
            if (hncsColorMapTextureKey != renderPlan.sourceKey ||
                hncsColorMapTextureId == 0
            ) {
                val rgba = FloatArray(colorMap.width * colorMap.height * 4)
                var sourceIndex = 0
                var targetIndex = 0
                while (sourceIndex < colorMap.values.size) {
                    rgba[targetIndex++] = colorMap.values[sourceIndex++]
                    rgba[targetIndex++] = colorMap.values[sourceIndex++]
                    rgba[targetIndex++] = 0f
                    rgba[targetIndex++] = 1f
                }
                hncsColorMapTextureId = uploadHncsRgbaTexture(
                    existingTextureId = hncsColorMapTextureId,
                    width = colorMap.width,
                    height = colorMap.height,
                    values = rgba
                )
                hncsColorMapTextureKey = renderPlan.sourceKey
                uploaded = true
            }
        }
        if (uploaded) {
            PLog.d(
                TAG,
                "HNCS resources uploaded: profile=${renderPlan.profileId} " +
                    "map=${renderPlan.colorMap?.let { "${it.width}x${it.height}" } ?: "none"} " +
                    "curves=${HncsProfileManager.CURVE_SAMPLE_COUNT}"
            )
        }
    }

    private fun bindHncsCombinedResources(
        program: Int,
        renderPlan: HncsRenderPlan,
        applyColorMap: Boolean
    ) {
        ensureHncsTextures(renderPlan)
        val colorMap = renderPlan.colorMap?.takeIf {
            applyColorMap && it.isValid && hncsColorMapTextureId != 0
        }
        require(!applyColorMap || colorMap != null) {
            "HNCS LUT branch requires an uploaded, validated color map"
        }
        require(hncsCurveTextureId != 0) {
            "HNCS film curve texture was not uploaded"
        }

        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uHncsColorMapTexture"), 2)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uHncsCurveTexture"), 3)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE2)
        GLES30.glBindTexture(
            GLES30.GL_TEXTURE_2D,
            if (colorMap != null) hncsColorMapTextureId else hncsCurveTextureId
        )
        GLES30.glActiveTexture(GLES30.GL_TEXTURE3)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, hncsCurveTextureId)

        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(program, "uHncsColorMapEnabled"),
            if (colorMap != null) 1 else 0
        )
        GLES30.glUniform2i(
            GLES30.glGetUniformLocation(program, "uHncsColorMapSize"),
            colorMap?.width ?: 1,
            colorMap?.height ?: 1
        )
        GLES30.glUniform3f(
            GLES30.glGetUniformLocation(program, "uHncsColorMapGrid"),
            colorMap?.cbStart ?: 0f,
            colorMap?.crStart ?: 0f,
            colorMap?.divFactor ?: 1f
        )

        GLES30.glUniformMatrix3fv(
            GLES30.glGetUniformLocation(program, "uHncsRgbToYcc"),
            1,
            false,
            transposeMatrix3x3(renderPlan.rgbToYccMatrix),
            0
        )
        GLES30.glUniformMatrix3fv(
            GLES30.glGetUniformLocation(program, "uHncsYccToRgb"),
            1,
            false,
            transposeMatrix3x3(renderPlan.yccToRgbMatrix),
            0
        )
        GLES30.glUniform2fv(
            GLES30.glGetUniformLocation(program, "uHncsGrayThresholds"),
            1,
            renderPlan.colorCorrection.grayThresholds,
            0
        )
        GLES30.glUniform4fv(
            GLES30.glGetUniformLocation(program, "uHncsLowLightDesaturation"),
            1,
            renderPlan.colorCorrection.lowLightDesaturation,
            0
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(program, "uHncsFilmCurveGain"),
            renderPlan.filmCurveGain
        )
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(program, "uHncsGammaFilterEnabled"),
            if (renderPlan.gamma.filterEnabled) 1 else 0
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(program, "uHncsGamma"),
            renderPlan.gamma.gamma
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(program, "uHncsHdrMaxGain"),
            renderPlan.gamma.hdrMaxGain
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(program, "uHncsHdrRgbLimit"),
            renderPlan.gamma.hdrRgbLimit
        )
        checkGlError("bindHncsCombinedResources")
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
        val program = getOrCreateHncsOutputLinearProgram()
        if (program == 0) {
            PLog.e(TAG, "Unable to create HNCS colorspaceconvert program")
            return false
        }

        GLES30.glUseProgram(program)
        checkGlError("renderHncsOutputLinearPass glUseProgram")
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, targetFramebufferId)
        checkGlError("renderHncsOutputLinearPass glBindFramebuffer")
        GLES30.glViewport(0, 0, viewportWidth, viewportHeight)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)

        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, inputTextureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uInputTexture"), 0)
        GLES30.glUniformMatrix3fv(
            GLES30.glGetUniformLocation(program, "uHncsToLinearOutput"),
            1,
            false,
            transposeMatrix3x3(outputTransform),
            0,
        )
        bindIdentityTexMatrix(program)

        drawQuad(program)
        checkGlError("renderHncsOutputLinearPass")
        return true
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
                bindDcpCombinedResources(program, dcpRenderPlan, applyDcpHueSatMap)
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

            RawRenderingEngine.HncsCcm,
            RawRenderingEngine.HncsLut -> {
                bindProfileExposureLinearGainUniform(program, profileExposureUniforms)
                val renderPlan = requireNotNull(hncsRenderPlan) {
                    "HNCS engine requires a validated render plan"
                }
                bindHncsCombinedResources(
                    program = program,
                    renderPlan = renderPlan,
                    applyColorMap = colorEngine.usesHncsColorMap
                )
            }
        }

        if (!colorEngine.isHncs) {
            GLES30.glUniformMatrix3fv(
                GLES30.glGetUniformLocation(program, "uOutputTransform"),
                1,
                false,
                transposeMatrix3x3(outputTransform),
                0,
            )
        }
        GLES30.glUniformMatrix3fv(
            GLES30.glGetUniformLocation(program, "uProfileToEngineTransform"),
            1, false, transposeMatrix3x3(profileToEngineTransform), 0
        )
        bindIdentityTexMatrix(program)
        // Resource upload/binding helpers are allowed to change the active texture unit.
        // Re-establish the image-input contract immediately before drawing so the first
        // render and cached renders sample the same texture.
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, inputTextureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uInputTexture"), 0)
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
        targetFramebufferId: Int = adjustmentFramebufferId,
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
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, targetFramebufferId)
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
        inputTextureId: Int,
        colorCorrectionMatrix: FloatArray,
        cameraWhite: FloatArray,
        hueSatMap: DcpHueSatMap?,
        profileToLinearSrgb: FloatArray,
        viewportWidth: Int = metadata.width,
        viewportHeight: Int = metadata.height,
    ) {
        GLES30.glUseProgram(hdrReferenceProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, hdrReferenceFramebufferId)
        GLES30.glViewport(0, 0, viewportWidth, viewportHeight)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)

        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, inputTextureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(hdrReferenceProgram, "uInputTexture"), 0)
        GLES30.glUniformMatrix3fv(
            GLES30.glGetUniformLocation(hdrReferenceProgram, "uCameraToProfile"),
            1,
            false,
            transposeMatrix3x3(colorCorrectionMatrix),
            0,
        )
        GLES30.glUniformMatrix3fv(
            GLES30.glGetUniformLocation(hdrReferenceProgram, "uProfileToLinearSrgb"),
            1,
            false,
            transposeMatrix3x3(profileToLinearSrgb),
            0,
        )
        val safeCameraWhite = sanitizeCameraWhite(cameraWhite)
        GLES30.glUniform3f(
            GLES30.glGetUniformLocation(hdrReferenceProgram, "uCameraWhite"),
            safeCameraWhite[0],
            safeCameraWhite[1],
            safeCameraWhite[2],
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(hdrReferenceProgram, "uExposureGain"),
            RawHdrReferenceMath.exposureGain(metadata.baselineExposure),
        )
        val acr3Curve = ACR3Curve.samples()
        bindCurveCombinedResource(hdrReferenceProgram, acr3Curve)
        bindLinearDcpHueSatMap(hdrReferenceProgram, hueSatMap)

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

    private fun profileGainToneMapRenderPlan(
        basePlan: DcpRenderPlan?,
        metadata: RawMetadata,
        workingColorSpace: ColorSpace,
        mode: RawProfileToneMapMode,
        preferredToneCurveLut: FloatArray? = null,
    ): DcpRenderPlan {
        require(mode == RawProfileToneMapMode.Photon)
        val toneCurve =
            preferredToneCurveLut?.copyOf() ?: DngProfileToneCurve.photonPgtmToneCurveLut()
        val modeName = DngProfileToneCurve.PHOTON_PGTM_PROFILE_NAME
        return DcpRenderPlan(
            profileName = basePlan?.profileName?.let { "$it + $modeName" } ?: modeName,
            workingColorSpace = basePlan?.workingColorSpace ?: workingColorSpace,
            baselineExposureOffset = basePlan?.baselineExposureOffset ?: 0f,
            defaultBlackRender = basePlan?.defaultBlackRender ?: DcpDefaultBlackRender.None,
            // Photon PGTM has a normalized SDR contract. Do not inherit profile overrange:
            // later nonlinear profile stages would otherwise change highlight channel ratios.
            supportsOverrange = false,
            colorCorrectionMatrix = basePlan?.colorCorrectionMatrix ?: metadata.colorCorrectionMatrix,
            cameraWhite = basePlan?.cameraWhite ?: metadata.cameraWhite,
            hueSatMap = basePlan?.hueSatMap,
            lookTable = basePlan?.lookTable,
            toneCurveLut = toneCurve
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
            supportsOverrange = basePlan?.supportsOverrange ?: false,
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
        applyProfileGainTableMap: Boolean,
        profileBaselineExposureOffsetEv: Float,
        clampProfileRgb: Boolean,
        supportProfileOverrange: Boolean,
        hueSatMapSupportsOverrange: Boolean,
        hncsCameraDomainGains: FloatArray? = null,
        globalOriginX: Int = 0,
        globalOriginY: Int = 0,
        fullImageWidth: Int = viewportWidth,
        fullImageHeight: Int = viewportHeight,
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
        val transposedCCM = transposeMatrix3x3(
            hncsCameraDomain?.cameraToWorkingMatrix ?: colorCorrectionMatrix
        )
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
            rawExposureCompensation = if (hncsCameraDomain == null) {
                rawExposureCompensation
            } else {
                0f
            },
            applyDngBaselineExposure = hncsCameraDomain == null && applyDngBaselineExposure
        )
        bindLinearDcpHueSatMap(
            program = linearRcdProgram,
            hueSatMap = hueSatMap,
        )
        bindProfileGainTableMapForLinearRcd(
            linearRcdProgram,
            metadata,
            hasActiveProfileGainTableMap,
            profileBaselineExposureOffsetEv
        )
        GLES30.glUniform1f(GLES30.glGetUniformLocation(linearRcdProgram, "uExposureGain"), exposureGain)
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(linearRcdProgram, "uHncsCameraDomainEnabled"),
            if (hncsCameraDomain != null) 1 else 0
        )
        GLES30.glUniform3fv(
            GLES30.glGetUniformLocation(linearRcdProgram, "uHncsCameraDomainGain"),
            1,
            hncsCameraDomain?.normalizedGain ?: floatArrayOf(1f, 1f, 1f),
            0
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(linearRcdProgram, "uHncsInputEV"),
            hncsCameraDomain?.inputEv ?: 1f
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(linearRcdProgram, "uHncsHrTrunc"),
            hncsCameraDomain?.hrTrunc ?: 1f
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(linearRcdProgram, "uHncsHrMax"),
            hncsCameraDomain?.hrMax ?: 1f
        )
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(linearRcdProgram, "uClampProfileRgb"),
            if (clampProfileRgb) 1 else 0
        )
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(linearRcdProgram, "uClampProfileGainOutput"),
            if (clampProfileRgb && !supportProfileOverrange) 1 else 0
        )
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(linearRcdProgram, "uHueSatSupportOverrange"),
            if (hueSatMapSupportsOverrange) 1 else 0
        )
        GLES30.glUniform2f(
            GLES30.glGetUniformLocation(linearRcdProgram, "uGlobalUvOrigin"),
            globalOriginX.toFloat() / fullImageWidth.coerceAtLeast(1),
            globalOriginY.toFloat() / fullImageHeight.coerceAtLeast(1),
        )
        GLES30.glUniform2f(
            GLES30.glGetUniformLocation(linearRcdProgram, "uGlobalUvScale"),
            viewportWidth.toFloat() / fullImageWidth.coerceAtLeast(1),
            viewportHeight.toFloat() / fullImageHeight.coerceAtLeast(1),
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
            ensureDcpHueSatTexture(map)
        } ?: ensureDummyDcp3DTexture()
        GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, textureId)
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(program, "uLinearDcpHueSatMap"),
            LINEAR_DCP_HUE_SAT_TEXTURE_UNIT,
        )
    }

    private fun bindProfileGainTableMapForLinearRcd(
        program: Int,
        metadata: RawMetadata,
        applyProfileGainTableMap: Boolean,
        profileBaselineExposureOffsetEv: Float
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
        // dng_render_task uses TotalBaselineExposure, including the selected profile's
        // BaselineExposureOffset, for PGTM input weighting.
        val totalProfileBaselineExposureEv =
            DngBaselineExposure.sanitize(metadata.baselineExposure) +
                (profileBaselineExposureOffsetEv.takeIf { it.isFinite() } ?: 0f)
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(program, "uProfileGainBaselineGain"),
            2.0f.pow(totalProfileBaselineExposureEv)
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

    private fun renderExposurePreviewRequest(
        request: RawExposurePreviewRequest,
        metadata: RawMetadata,
        samplesPerPixel: Int,
        sourceTextureId: Int,
        rawBlackPointCorrection: Float,
        rawWhitePointCorrection: Float,
        colorCorrectionMatrix: FloatArray,
        cameraWhite: FloatArray,
        dcpRenderPlan: DcpRenderPlan?,
        applyLinearDngBaselineExposure: Boolean,
        applyProfileDngBaselineExposure: Boolean,
        applyProfileGainTableMap: Boolean,
        clampProfileRgb: Boolean,
        outputBounds: Rect,
        outputRotation: Int,
        spectralFilmLut: SpectralFilmLut?,
        hncsRenderPlan: HncsRenderPlan?,
        colorEngine: RawRenderingEngine,
        outputWorkingColorSpace: ColorSpace,
        profileToEngineTransform: FloatArray,
        rawToneMappingParameters: RawToneMappingParameters,
        useProfileExposureRamp: Boolean,
        applyProfileDcpBaselineExposureOffset: Boolean,
        supportProfileOverrange: Boolean,
        hueSatMapSupportsOverrange: Boolean,
        hncsCameraDomainGains: FloatArray? = null,
        stackCompletionTimeline: GpuStackCompletionTimeline? = null,
    ): Float? {
        val previewSize = resolveLongEdgePreviewSize(
            sourceWidth = metadata.width,
            sourceHeight = metadata.height,
            maxLongEdge = 256
        )
        val previewWidth = previewSize.width
        val previewHeight = previewSize.height
        return try {
            setupLinearExposurePreviewFramebuffer(previewWidth, previewHeight)
            val useAdobeSdkExposure = colorEngine == RawRenderingEngine.AdobeCurve &&
                useProfileExposureRamp &&
                !applyLinearDngBaselineExposure
            val profileBaselineExposureOffsetEv = if (applyProfileDcpBaselineExposureOffset) {
                dcpBaselineExposureOffsetOrZero(dcpRenderPlan)
            } else {
                0f
            }
            if (useAdobeSdkExposure) {
                renderLinearRcdPass(
                    metadata = metadata,
                    sourceTextureId = sourceTextureId,
                    targetFramebufferId = linearExposurePreviewFramebufferId,
                    viewportWidth = previewWidth,
                    viewportHeight = previewHeight,
                    rawExposureCompensation = 0f,
                    colorCorrectionMatrix = colorCorrectionMatrix,
                    cameraWhite = cameraWhite,
                    hueSatMap = dcpRenderPlan?.hueSatMap,
                    applyDngBaselineExposure = false,
                    applyProfileGainTableMap = applyProfileGainTableMap,
                    profileBaselineExposureOffsetEv = profileBaselineExposureOffsetEv,
                    clampProfileRgb = clampProfileRgb,
                    supportProfileOverrange = supportProfileOverrange,
                    hueSatMapSupportsOverrange = hueSatMapSupportsOverrange,
                    hncsCameraDomainGains = hncsCameraDomainGains,
                    label = "AdobeExposurePreviewLinearPass"
                )
                GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
                GLES31.glMemoryBarrier(
                    GLES31.GL_FRAMEBUFFER_BARRIER_BIT or GLES31.GL_TEXTURE_FETCH_BARRIER_BIT
                )
            }
            setupCombinedFramebuffer(previewWidth, previewHeight)
            val previewBounds = scaleExposurePreviewBounds(
                bounds = outputBounds,
                sourceWidth = metadata.width,
                sourceHeight = metadata.height,
                targetWidth = previewWidth,
                targetHeight = previewHeight,
                outputRotation = outputRotation
            )
            setupSrgbExposurePreviewFramebuffer(
                request.width.coerceAtLeast(1),
                request.height.coerceAtLeast(1)
            )
            val pixelCount = request.width.coerceAtLeast(1) * request.height.coerceAtLeast(1)
            val readbackBuffer = LargeDirectBuffer.allocate(
                pixelCount.toLong() * 4L,
                "RAW exposure preview readback"
            ) ?: return null
            val sourceBaselineEv = DngBaselineExposure.sanitize(metadata.baselineExposure)
            PLog.i(
                TAG,
                "RAW_VIEWFINDER_BASELINE stage=METERING_SOURCE " +
                    "source=${if (exportedStackTextureIds.contains(sourceTextureId)) {
                        "GPU_STACK_TEXTURE"
                    } else {
                        "WRITER_INPUT_BUFFER"
                    }} " +
                    "layout=${if (samplesPerPixel >= 3) "LINEAR_RAW_RGB" else "CFA_RAW"} " +
                    "samplesPerPixel=$samplesPerPixel size=${metadata.width}x${metadata.height} " +
                    "sourceBaselineEv=$sourceBaselineEv " +
                    "profileBaselineExposureOffsetEv=$profileBaselineExposureOffsetEv " +
                    "defaultBlackRender=${resolveProfileDefaultBlackRender(
                        metadata = metadata,
                        dcpRenderPlan = dcpRenderPlan,
                        applyDngBaselineExposure = applyProfileDngBaselineExposure,
                        useRamp = useProfileExposureRamp,
                    )} " +
                    "candidateDomain=${if (useAdobeSdkExposure) "ADOBE_DNG_SDK" else "LINEAR_GAIN"}"
            )
            try {
                request.solve { exposureEv ->
                    val clampedExposureEv = exposureEv.coerceIn(
                        MeteringSystem.RAW_EXPOSURE_MIN_EV,
                        MeteringSystem.RAW_EXPOSURE_MAX_EV,
                    )
                    PLog.d(
                        TAG,
                        "RAW viewfinder candidate: domain=" +
                            "${if (useAdobeSdkExposure) "ADOBE_DNG_SDK" else "LINEAR_GAIN"} " +
                            "sourceBaselineEv=$sourceBaselineEv " +
                            "offsetEv=$clampedExposureEv " +
                            "effectiveBaselineEv=${sourceBaselineEv + clampedExposureEv} " +
                            "totalProfileExposureEv=" +
                            "${sourceBaselineEv + profileBaselineExposureOffsetEv + clampedExposureEv}"
                    )
                    if (!useAdobeSdkExposure) {
                        renderLinearRcdPass(
                            metadata = metadata,
                            sourceTextureId = sourceTextureId,
                            targetFramebufferId = linearExposurePreviewFramebufferId,
                            viewportWidth = previewWidth,
                            viewportHeight = previewHeight,
                            rawExposureCompensation = clampedExposureEv,
                            colorCorrectionMatrix = colorCorrectionMatrix,
                            cameraWhite = cameraWhite,
                            hueSatMap = dcpRenderPlan?.hueSatMap,
                            applyDngBaselineExposure = applyLinearDngBaselineExposure,
                            applyProfileGainTableMap = applyProfileGainTableMap,
                            profileBaselineExposureOffsetEv = profileBaselineExposureOffsetEv,
                            clampProfileRgb = clampProfileRgb,
                            supportProfileOverrange = supportProfileOverrange,
                            hueSatMapSupportsOverrange = hueSatMapSupportsOverrange,
                            hncsCameraDomainGains = hncsCameraDomainGains,
                            label = "LinearExposurePreviewPass"
                        )
                        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
                        GLES31.glMemoryBarrier(
                            GLES31.GL_FRAMEBUFFER_BARRIER_BIT or GLES31.GL_TEXTURE_FETCH_BARRIER_BIT
                        )
                    }
                    renderToneMappedExposurePreviewFrame(
                        metadata = metadata,
                        linearTextureId = linearExposurePreviewTextureId,
                        width = previewWidth,
                        height = previewHeight,
                        exposureEv = if (useAdobeSdkExposure) clampedExposureEv else 0f,
                        dcpRenderPlan = dcpRenderPlan,
                        spectralFilmLut = spectralFilmLut,
                        hncsRenderPlan = hncsRenderPlan,
                        colorEngine = colorEngine,
                        outputWorkingColorSpace = outputWorkingColorSpace,
                        profileToEngineTransform = profileToEngineTransform,
                        rawToneMappingParameters = rawToneMappingParameters,
                        rawBlacksAdjustment = rawBlackPointCorrection,
                        rawWhitesAdjustment = rawWhitePointCorrection,
                        useProfileExposureRamp = useProfileExposureRamp,
                        applyProfileDcpBaselineExposureOffset = applyProfileDcpBaselineExposureOffset,
                        applyProfileDngBaselineExposure =
                            useAdobeSdkExposure && applyProfileDngBaselineExposure,
                        readbackBounds = previewBounds,
                        readbackWidth = request.width.coerceAtLeast(1),
                        readbackHeight = request.height.coerceAtLeast(1),
                        outputRotation = outputRotation,
                        readbackBuffer = readbackBuffer,
                        stackCompletionTimeline = stackCompletionTimeline,
                    )
                }
            } finally {
                LargeDirectBuffer.free(readbackBuffer)
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to render RAW exposure preview", e)
            null
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

    private fun scaleExposurePreviewBounds(
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

    private fun renderToneMappedExposurePreviewFrame(
        metadata: RawMetadata,
        linearTextureId: Int,
        width: Int,
        height: Int,
        exposureEv: Float,
        dcpRenderPlan: DcpRenderPlan?,
        spectralFilmLut: SpectralFilmLut?,
        hncsRenderPlan: HncsRenderPlan?,
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
        readbackBuffer: ByteBuffer,
        stackCompletionTimeline: GpuStackCompletionTimeline?,
    ): RawExposurePreviewFrame? {
        val clampedExposureEv = exposureEv.coerceIn(-4f, 4f)
        val profileExposureUniforms = computeProfileExposureUniforms(
            metadata = metadata,
            profileExposureCompensation = clampedExposureEv + colorEngine.defaultExposureCompensationEv,
            dcpRenderPlan = dcpRenderPlan,
            applyDcpBaselineExposureOffset = applyProfileDcpBaselineExposureOffset,
            applyDngBaselineExposure = applyProfileDngBaselineExposure,
            useRamp = useProfileExposureRamp,
        )
        val rendered = renderCombinedPass(
            metadata = metadata,
            inputTextureId = linearTextureId,
            dcpRenderPlan = dcpRenderPlan,
            applyDcpHueSatMap = false,
            spectralFilmLut = spectralFilmLut,
            hncsRenderPlan = hncsRenderPlan,
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
            PLog.e(TAG, "RAW exposure preview render failed for ev=$clampedExposureEv")
            return null
        }
        if (!renderSrgbExposurePreviewPass(
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
        return readExposurePreviewFrame(
            width = readbackWidth,
            height = readbackHeight,
            pixelBuffer = readbackBuffer,
            stackCompletionTimeline = stackCompletionTimeline,
        )
    }

    private fun renderSrgbExposurePreviewPass(
        sourceTextureId: Int,
        sourceWidth: Int,
        sourceHeight: Int,
        bounds: Rect,
        targetWidth: Int,
        targetHeight: Int,
        rotation: Int
    ): Boolean {
        if (passthroughProgram == 0 || srgbExposurePreviewFramebufferId == 0) {
            PLog.e(
                TAG,
                "RAW exposure preview crop unavailable: program=$passthroughProgram " +
                    "fbo=$srgbExposurePreviewFramebufferId"
            )
            return false
        }
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, srgbExposurePreviewFramebufferId)
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
        checkGlError("RAW exposure preview crop pass")
        return true
    }

    private fun readExposurePreviewFrame(
        width: Int,
        height: Int,
        pixelBuffer: ByteBuffer,
        stackCompletionTimeline: GpuStackCompletionTimeline?,
    ): RawExposurePreviewFrame? {
        if (width <= 0 || height <= 0) {
            return null
        }
        val pixelCount = width * height
        pixelBuffer.clear()
        pixelBuffer.limit(pixelCount * 4)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, srgbExposurePreviewFramebufferId)
        GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 1)
        val upstreamStackTiming = stackCompletionTimeline?.awaitPending(
            syncPoint = "RAW_EXPOSURE_PREVIEW",
            checkGlError = ::checkGlError,
        )
        val previewGpuQueueWaitMs = GlesGpuCompletion.awaitSubmittedWork(
            label = "RAW exposure preview ${width}x$height",
            checkGlError = ::checkGlError,
        )
        val pixelTransferStartNs = System.nanoTime()
        GLES30.glReadPixels(
            0,
            0,
            width,
            height,
            GLES30.GL_RGBA,
            GLES30.GL_UNSIGNED_BYTE,
            pixelBuffer
        )
        val pixelTransferMs = (System.nanoTime() - pixelTransferStartNs) / 1_000_000L
        checkGlError("RAW exposure preview readback")
        pixelBuffer.position(0)

        val cpuPackStartNs = System.nanoTime()
        val argbPixels = IntArray(pixelCount)
        for (i in 0 until pixelCount) {
            val r = pixelBuffer.get().toInt() and 0xff
            val g = pixelBuffer.get().toInt() and 0xff
            val b = pixelBuffer.get().toInt() and 0xff
            val a = pixelBuffer.get().toInt() and 0xff
            argbPixels[i] = (a shl 24) or (r shl 16) or (g shl 8) or b
        }
        val cpuPackMs = (System.nanoTime() - cpuPackStartNs) / 1_000_000L
        PLog.d(
            TAG,
            "RAW exposure preview timing size=${width}x$height " +
                "upstreamStackGpuWait=${upstreamStackTiming?.totalWaitMs ?: 0L}ms " +
                "previewGpuQueueWait=${previewGpuQueueWaitMs}ms " +
                "pixelTransfer=${pixelTransferMs}ms " +
                "cpuPack=${cpuPackMs}ms",
        )
        return RawExposurePreviewFrame(
            width = width,
            height = height,
            argbPixels = argbPixels,
        )
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

        for (i in engineTonePrograms.indices) {
            if (engineTonePrograms[i] != 0) {
                GLES30.glDeleteProgram(engineTonePrograms[i])
                engineTonePrograms[i] = 0
            }
        }
        if (hncsOutputLinearProgram != 0) {
            GLES30.glDeleteProgram(hncsOutputLinearProgram)
            hncsOutputLinearProgram = 0
        }
        if (adjustmentProgram != 0) GLES30.glDeleteProgram(adjustmentProgram)
        if (srgbProgram != 0) GLES30.glDeleteProgram(srgbProgram)
        if (sharpenProgram != 0) GLES30.glDeleteProgram(sharpenProgram)
        if (passthroughProgram != 0) GLES30.glDeleteProgram(passthroughProgram)
        if (hdrReferenceProgram != 0) GLES30.glDeleteProgram(hdrReferenceProgram)
        if (chromaDenoiseGuideProgram != 0) GLES30.glDeleteProgram(chromaDenoiseGuideProgram)
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
        vgnPrograms.forEachIndexed { index, program ->
            if (program != 0) GLES31.glDeleteProgram(program)
            vgnPrograms[index] = 0
        }
        if (quadPopulateProgram != 0) GLES31.glDeleteProgram(quadPopulateProgram)
        if (quadGreenProgram != 0) GLES31.glDeleteProgram(quadGreenProgram)
        if (quadChromaProgram != 0) GLES31.glDeleteProgram(quadChromaProgram)
        if (quadRefineProgram != 0) GLES31.glDeleteProgram(quadRefineProgram)
        if (quadWriteOutputProgram != 0) GLES31.glDeleteProgram(quadWriteOutputProgram)
        if (pgtmCellSamplesProgram != 0) GLES31.glDeleteProgram(pgtmCellSamplesProgram)
        if (meteringHalfResolutionProgram != 0) {
            GLES31.glDeleteProgram(meteringHalfResolutionProgram)
            meteringHalfResolutionProgram = 0
        }
        pgtmPhotonPrograms.forEachIndexed { index, program ->
            if (program != 0) GLES31.glDeleteProgram(program)
            pgtmPhotonPrograms[index] = 0
        }
        if (linearRcdProgram != 0) GLES31.glDeleteProgram(linearRcdProgram)
        if (warpRectilinearProgram != 0) GLES31.glDeleteProgram(warpRectilinearProgram)
        if (linearRawRgbProgram != 0) GLES31.glDeleteProgram(linearRawRgbProgram)
        if (linearRawRgbExpandProgram != 0) GLES31.glDeleteProgram(linearRawRgbExpandProgram)
        // darktable denoiseprofile compute programs
        if (denoisePreconditionV2Program != 0) GLES31.glDeleteProgram(denoisePreconditionV2Program)
        if (denoiseNlmInitProgram != 0) GLES31.glDeleteProgram(denoiseNlmInitProgram)
        if (denoiseNlmFusedAccuProgram != 0) GLES31.glDeleteProgram(denoiseNlmFusedAccuProgram)
        if (denoiseNlmFinishProgram != 0) GLES31.glDeleteProgram(denoiseNlmFinishProgram)
        // denoiseprofile textures and FBOs
        releaseDenoiseProfileFramebuffers()
        releaseDenoiseProfileAccumulator()
        denoiseNlmMaxSsboBytes = 0L
        releaseDarktableFilmicHighlightReconstructionFramebuffers()

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
        if (srgbExposurePreviewTextureId != 0) GLES30.glDeleteTextures(
            1,
            intArrayOf(srgbExposurePreviewTextureId),
            0
        )
        if (srgbExposurePreviewFramebufferId != 0) GLES30.glDeleteFramebuffers(
            1,
            intArrayOf(srgbExposurePreviewFramebufferId),
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
        dcpHueSatTextureSource = null
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
        if (hncsColorMapTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(hncsColorMapTextureId), 0)
            hncsColorMapTextureId = 0
        }
        if (hncsCurveTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(hncsCurveTextureId), 0)
            hncsCurveTextureId = 0
        }
        hncsColorMapTextureKey = null
        hncsCurveTextureKey = null
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
