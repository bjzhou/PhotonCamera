package com.hinnka.mycamera.lut

import android.content.Context
import android.graphics.Bitmap
import android.graphics.PointF
import android.graphics.SurfaceTexture
import android.opengl.*
import android.os.SystemClock
import com.hinnka.mycamera.livephoto.LivePhotoRecorder
import com.hinnka.mycamera.livephoto.resolveLivePhotoRotationDegrees
import com.hinnka.mycamera.model.ColorPaletteMapper
import com.hinnka.mycamera.preview.EyeFocusPreviewFrame
import com.hinnka.mycamera.preview.EyeFocusProcessingTiming
import com.hinnka.mycamera.raw.ColorSpace
import com.hinnka.mycamera.screencapture.PhantomPipCrop
import com.hinnka.mycamera.camera.MeteringMode
import com.hinnka.mycamera.stabilization.DEFAULT_VIDEO_STABILIZATION_LOOKAHEAD
import com.hinnka.mycamera.stabilization.RealtimeStabilizationCoordinator
import com.hinnka.mycamera.stabilization.StabilizationUseCase
import com.hinnka.mycamera.stabilization.normalizeStabilizationLookahead
import com.hinnka.mycamera.stabilization.normalizeStabilizationStrength
import com.hinnka.mycamera.utils.PLog
import com.hinnka.mycamera.video.VideoLogProfile
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.util.ArrayDeque
import java.util.concurrent.ExecutorService
import java.util.concurrent.Executors
import java.util.concurrent.atomic.AtomicBoolean
import javax.microedition.khronos.egl.EGLConfig
import javax.microedition.khronos.opengles.GL10
import kotlin.math.abs
import kotlin.math.hypot

/**
 * LUT 渲染器
 * 
 * 实现 GLSurfaceView.Renderer 接口，负责：
 * 1. 从相机 SurfaceTexture 获取帧
 * 2. 应用 3D LUT 颜色变换
 * 3. 渲染到屏幕
 */
enum class PreviewCaptureSource {
    FinalDisplay,
    Original
}

class LutRenderer(context: Context) : GLSurfaceView.Renderer {
    private val appContext = context.applicationContext
    companion object {
        private const val TAG = "LutRenderer"

        // 属性位置
        private const val POSITION_COMPONENT_COUNT = 2
        private const val TEXTURE_COORD_COMPONENT_COUNT = 2
        private const val BYTES_PER_FLOAT = 4
        private const val BYTES_PER_SHORT = 2
        private const val DEFAULT_PREVIEW_CAPTURE_MAX_LONG_EDGE = 1080
        private const val EYE_FOCUS_SAMPLE_MAX_LONG_EDGE = 480
        private const val EYE_FOCUS_MAX_SAMPLE_FPS = 30L
        private const val EYE_FOCUS_MIN_SAMPLE_INTERVAL_NS =
            (1_000_000_000L + EYE_FOCUS_MAX_SAMPLE_FPS - 1L) / EYE_FOCUS_MAX_SAMPLE_FPS
        private const val EYE_FOCUS_INITIAL_SAMPLE_INTERVAL_NS = 100_000_000L
        private const val EYE_FOCUS_MAX_SAMPLE_INTERVAL_NS = 5_000_000_000L
        private const val EYE_FOCUS_TIMING_EMA_ALPHA = 0.25
        private const val EYE_FOCUS_TIMING_HEADROOM = 1.15
        private const val EYE_FOCUS_TIMING_LOG_INTERVAL_MS = 2_000L
        private const val CLARITY_PYRAMID_LEVELS = 3
    }

    private val colorProgramCache = PreviewColorProgramCache()
    private val mgcEisHardwareBufferRenderer = MgcEisHardwareBufferRenderer(TAG)
    private val mgcEisYuvRenderer = MgcEisYuvRenderer(TAG)

    private data class PreviewCaptureRequest(
        val width: Int,
        val height: Int,
        val source: PreviewCaptureSource,
        val onCaptured: (Bitmap) -> Unit
    )

    // 纹理 ID
    private var cameraTextureId: Int = 0
    private var lutTextureId: Int = 0
    private var baselineLutTextureId: Int = 0
    private val basicToneTextures = BasicToneGlTextures()

    // 缓冲区
    private var vertexBufferId: Int = 0
    private var texCoordBufferId: Int = 0
    private var indexBufferId: Int = 0
    private var pboId: Int = 0
    private val meteringPboIds = IntArray(2)
    private val meteringPboFences = LongArray(2)
    private var meteringPboIndex = 0

    // 测光相关纹理和 FBO
    private var meteringFboId: Int = 0
    private var meteringTextureId: Int = 0
    private val METERING_SIZE = 32
    private val meteringExecutor: ExecutorService = Executors.newSingleThreadExecutor()
    private val meteringDispatchInFlight = AtomicBoolean(false)
    private var captureFboId: Int = 0
    private var captureTextureId: Int = 0
    private var passthroughProgramId: Int = 0
    private var uPassMVPMatrixLocation: Int = 0
    private var uPassSTMatrixLocation: Int = 0
    private var uPassCropRectLocation: Int = 0
    private var uPassCameraTextureLocation: Int = 0
    private var aPassPositionLocation: Int = 0
    private var aPassTexCoordLocation: Int = 0
    
    // FBO 相关
    private var fboId: Int = 0
    private var fboTextureId: Int = 0
    private var fboWidth: Int = 0
    private var fboHeight: Int = 0
    private var stackFboId: Int = 0
    private var stackTextureId: Int = 0
    private var stackFboWidth: Int = 0
    private var stackFboHeight: Int = 0

    // Copy Shader (FBO -> Screen)
    private var copyProgramId: Int = 0
    private var uCopyTextureLoc: Int = 0
    private var uCopyMVPMatrixLoc: Int = 0
    private var uCopySTMatrixLoc: Int = 0
    private var uCopyCropRectLoc: Int = 0
    private var aCopyPositionLoc: Int = 0
    private var aCopyTexCoordLoc: Int = 0

    // 曲线纹理
    private var curveTextureId: Int = 0
    private var baselineCurveTextureId: Int = 0

    @Volatile
    var curveEnabled: Boolean = false

    @Volatile
    var baselineCurveEnabled: Boolean = false

    @Volatile
    var pendingCurveBuffer: java.nio.ByteBuffer? = null

    @Volatile
    var baselinePendingCurveBuffer: java.nio.ByteBuffer? = null

    @Volatile
    var masterCurvePoints: FloatArray? = null

    @Volatile
    var redCurvePoints: FloatArray? = null

    @Volatile
    var greenCurvePoints: FloatArray? = null

    @Volatile
    var blueCurvePoints: FloatArray? = null

    @Volatile
    var baselineRecipeParams: com.hinnka.mycamera.model.ColorRecipeParams =
        com.hinnka.mycamera.model.ColorRecipeParams.DEFAULT

    // HDF 实时预览资源
    private var hdfExtractBlurHProgram: Int = 0
    private var hdfBlurVProgram: Int = 0
    private var hdfCompositeProgram: Int = 0
    private var softLightBlurHProgram: Int = 0
    private var hdfTexId = IntArray(2)
    private var hdfFboId = IntArray(2)
    private var hdfWidth: Int = 0
    private var hdfHeight: Int = 0
    private var softLightTexId = IntArray(2)
    private var softLightFboId = IntArray(2)
    private var softLightWidth: Int = 0
    private var softLightHeight: Int = 0
    private var halationExtractBlurHProgram: Int = 0
    private var halationBlurVProgram: Int = 0
    private var halationTexId = IntArray(2)
    private var halationFboId = IntArray(2)
    private var halationWidth: Int = 0
    private var halationHeight: Int = 0
    private var bloomDownsampleFirstProgram: Int = 0
    private var bloomDownsampleProgram: Int = 0
    private var bloomUpsampleProgram: Int = 0
    private var bloomCompositeProgram: Int = 0
    private var bloomTexId = IntArray(0)
    private var bloomFboId = IntArray(0)
    private var bloomMipWidths = IntArray(0)
    private var bloomMipHeights = IntArray(0)
    private var bloomMipCount: Int = 0
    private var bloomSourceWidth: Int = 0
    private var bloomSourceHeight: Int = 0
    private var postProcessScratchFboId: Int = 0
    private var postProcessScratchTextureId: Int = 0
    private var postProcessScratchWidth: Int = 0
    private var postProcessScratchHeight: Int = 0

    // 清晰度实时预览资源（仅参数非零时懒加载和执行）
    private var clarityDownsampleProgram: Int = 0
    private var clarityCompositeProgram: Int = 0
    private var clarityPyramidTextureIds = IntArray(CLARITY_PYRAMID_LEVELS)
    private var clarityPyramidFboIds = IntArray(CLARITY_PYRAMID_LEVELS)
    private var clarityPyramidWidths = IntArray(CLARITY_PYRAMID_LEVELS)
    private var clarityPyramidHeights = IntArray(CLARITY_PYRAMID_LEVELS)
    private var clarityOutputTextureId: Int = 0
    private var clarityOutputFboId: Int = 0
    private var clarityOutputWidth: Int = 0
    private var clarityOutputHeight: Int = 0
    private val filmGrainGl = FilmGrainGl(TAG)
    private var filmGrainSourceTextureId: Int = 0
    private var filmGrainSourceFboId: Int = 0
    private var filmGrainSourceWidth: Int = 0
    private var filmGrainSourceHeight: Int = 0

    // Focus Peaking 实时预览资源
    private var focusPeakingProgramId: Int = 0
    private var uPeakInputTexLoc: Int = 0
    private var uPeakTexelSizeLoc: Int = 0
    private var uPeakThresholdLoc: Int = 0
    private var uPeakColorLoc: Int = 0
    private var aPeakPositionLoc: Int = 0
    private var aPeakTexCoordLoc: Int = 0
    private var focusPeakingFboId: Int = 0
    private var focusPeakingTextureId: Int = 0
    private var focusPeakingFboWidth: Int = 0
    private var focusPeakingFboHeight: Int = 0

    // SurfaceTexture 变换矩阵
    private val stMatrix = FloatArray(16).apply { Matrix.setIdentityM(this, 0) }
    private val mgcEisPresentationTransform = MgcEisPresentationTransform()

    // MVP 变换矩阵（用于 center crop）
    private val mvpMatrix = FloatArray(16)

    // 相机 SurfaceTexture
    private var surfaceTexture: SurfaceTexture? = null
    private val frameAvailable = AtomicBoolean(false)
    private var stabilizationCoordinator: RealtimeStabilizationCoordinator? = null
    @Volatile
    private var stabilizationSession: RealtimeStabilizationCoordinator.Session? = null
    @Volatile
    private var stabilizationSessionStarted = false
    private var previewStabilizationUseCase: StabilizationUseCase? = null
    private var previewStabilizationStrength = 0f
    private var currentCameraTextureSource = PreviewColorTextureSource.EXTERNAL_OES
    private var currentCameraTextureTarget = GLES11Ext.GL_TEXTURE_EXTERNAL_OES
    private var currentCameraTextureId = 0
    private var currentCameraTextureMatrix: FloatArray = stMatrix
    private var currentFrameTimestampNs = 0L

    // 标记 Surface 是否已创建（GL 上下文是否可用）
    private var surfaceReady = false
    @Volatile
    private var renderingPaused = false

    // 待处理的 LUT 配置（Surface 创建前设置的 LUT）
    private var pendingLutConfig: LutConfig? = null
    private var pendingBaselineLutConfig: LutConfig? = null

    // LUT 配置
    private var currentLutConfig: LutConfig? = null
    private var currentBaselineLutConfig: LutConfig? = null
    private var lutSize: Float = 32f
    private var baselineLutSize: Float = 32f

    // LUT 强度 (0.0 - 1.0)
    @Volatile
    var lutIntensity: Float = 1.0f

    // LUT 是否启用
    @Volatile
    var lutEnabled: Boolean = false

    @Volatile
    var isAutoFocus: Boolean = true

    @Volatile
    var focusPeakingEnabled: Boolean = true

    @Volatile
    var isEyeFocusBusy: Boolean = false

    @Volatile
    var onEyeFocusInputAvailable: ((EyeFocusPreviewFrame) -> Unit)? = null

    private val eyeFocusTimingLock = Any()
    @Volatile
    private var eyeFocusSampleIntervalNanos = EYE_FOCUS_INITIAL_SAMPLE_INTERVAL_NS
    private var eyeFocusCaptureDurationEmaNanos = 0.0
    private var eyeFocusProcessingDurationEmaNanos = 0.0
    private var eyeFocusEndToEndDurationEmaNanos = 0.0
    private var lastEyeFocusTimingLogElapsedMs = 0L
    private var lastEyeFocusSampleTimeNanos = 0L

    fun updateEyeFocusTiming(timing: EyeFocusProcessingTiming) {
        if (
            timing.captureDurationNanos <= 0L ||
            timing.processingDurationNanos <= 0L ||
            timing.endToEndDurationNanos <= 0L
        ) {
            return
        }

        synchronized(eyeFocusTimingLock) {
            eyeFocusCaptureDurationEmaNanos = updateTimingEma(
                eyeFocusCaptureDurationEmaNanos,
                timing.captureDurationNanos.toDouble(),
            )
            eyeFocusProcessingDurationEmaNanos = updateTimingEma(
                eyeFocusProcessingDurationEmaNanos,
                timing.processingDurationNanos.toDouble(),
            )
            eyeFocusEndToEndDurationEmaNanos = updateTimingEma(
                eyeFocusEndToEndDurationEmaNanos,
                timing.endToEndDurationNanos.toDouble(),
            )

            val measuredWorkNanos = maxOf(
                eyeFocusEndToEndDurationEmaNanos,
                eyeFocusCaptureDurationEmaNanos + eyeFocusProcessingDurationEmaNanos,
            )
            eyeFocusSampleIntervalNanos =
                (measuredWorkNanos * EYE_FOCUS_TIMING_HEADROOM)
                    .toLong()
                    .coerceIn(
                        EYE_FOCUS_MIN_SAMPLE_INTERVAL_NS,
                        EYE_FOCUS_MAX_SAMPLE_INTERVAL_NS,
                    )

            val nowElapsedMs = SystemClock.elapsedRealtime()
            if (nowElapsedMs - lastEyeFocusTimingLogElapsedMs >= EYE_FOCUS_TIMING_LOG_INTERVAL_MS) {
                lastEyeFocusTimingLogElapsedMs = nowElapsedMs
                /*PLog.d(
                    TAG,
                    "Eye focus cadence: intervalMs=${eyeFocusSampleIntervalNanos / 1_000_000f}, " +
                        "captureMs=${eyeFocusCaptureDurationEmaNanos / 1_000_000.0}, " +
                        "processingMs=${eyeFocusProcessingDurationEmaNanos / 1_000_000.0}, " +
                        "endToEndMs=${eyeFocusEndToEndDurationEmaNanos / 1_000_000.0}",
                )*/
            }
        }
    }

    private fun updateTimingEma(previous: Double, sample: Double): Double {
        return if (previous <= 0.0) {
            sample
        } else {
            previous + (sample - previous) * EYE_FOCUS_TIMING_EMA_ALPHA
        }
    }

    private fun resetEyeFocusTiming() {
        synchronized(eyeFocusTimingLock) {
            eyeFocusSampleIntervalNanos = EYE_FOCUS_INITIAL_SAMPLE_INTERVAL_NS
            eyeFocusCaptureDurationEmaNanos = 0.0
            eyeFocusProcessingDurationEmaNanos = 0.0
            eyeFocusEndToEndDurationEmaNanos = 0.0
            lastEyeFocusTimingLogElapsedMs = 0L
        }
        lastEyeFocusSampleTimeNanos = 0L
    }

    @Volatile
    var baselineLutEnabled: Boolean = false

    // 色彩配方参数
    @Volatile
    var colorRecipeEnabled: Boolean = false

    @Volatile
    var baselineColorRecipeEnabled: Boolean = false

    @Volatile
    var focusPoint: PointF? = null

    @Volatile
    var meteringMode: MeteringMode = MeteringMode.SYSTEM_DEFAULT

    private val cropRect = floatArrayOf(0f, 0f, 1f, 1f)

    @Volatile
    var meteringEnabled: Boolean = true

    @Volatile
    var exposure: Float = 0f // -2.0 ~ +2.0

    @Volatile
    var contrast: Float = 1f // 0.5 ~ 1.5

    @Volatile
    var saturation: Float = 1f // 0.0 ~ 2.0

    @Volatile
    var temperature: Float = 0f // -1.0 ~ +1.0

    @Volatile
    var tint: Float = 0f // -1.0 ~ +1.0

    @Volatile
    var fade: Float = 0f // 0.0 ~ 1.0

    @Volatile
    var vibrance: Float = 1f // 0.0 ~ 2.0

    @Volatile
    var highlights: Float = 0f // -1.0 ~ +1.0

    @Volatile
    var shadows: Float = 0f // -1.0 ~ +1.0

    @Volatile
    var toneToe: Float = 0f // -1.0 ~ +1.0

    @Volatile
    var toneShoulder: Float = 0f // -1.0 ~ +1.0

    @Volatile
    var tonePivot: Float = 0f // -1.0 ~ +1.0

    @Volatile
    var paletteX: Float = 0.5f

    @Volatile
    var paletteY: Float = 0.5f

    @Volatile
    var paletteDensity: Float = 1f

    @Volatile
    var filmGrain: Float = 0f // 0.0 ~ 1.0

    @Volatile
    var vignette: Float = 0f // -1.0 ~ +1.0

    @Volatile
    var flash: Float = 0f // 0.0 ~ 1.0

    @Volatile
    var bleachBypass: Float = 0f // 0.0 ~ 1.0

    @Volatile
    var clarity: Float = 0f // -1.0 ~ +1.0

    @Volatile
    var sharpness: Float = 0f // -1.0 ~ +1.0，sRGB 锐度

    @Volatile
    var bloom: Float = 0f // 0.0 ~ 1.0

    @Volatile
    var softLight: Float = 0f // 0.0 ~ 1.0

    @Volatile
    var chromaticAberration: Float = 0f // 0.0 ~ 1.0

    @Volatile
    var noise: Float = 0f // 0.0 ~ 1.0

    @Volatile
    var lowRes: Float = 0f // 0.0 ~ 1.0

    @Volatile
    var halation: Float = 0f // 0.0 ~ 1.0

    @Volatile
    var redHalation: Float = 0f // 0.0 ~ 1.0

    @Volatile var primaryRedHue: Float = 0f
    @Volatile var primaryRedSaturation: Float = 0f
    @Volatile var primaryRedLightness: Float = 0f
    @Volatile var primaryGreenHue: Float = 0f
    @Volatile var primaryGreenSaturation: Float = 0f
    @Volatile var primaryGreenLightness: Float = 0f
    @Volatile var primaryBlueHue: Float = 0f
    @Volatile var primaryBlueSaturation: Float = 0f
    @Volatile var primaryBlueLightness: Float = 0f
    @Volatile var gradingShadowHue: Float = 0f
    @Volatile var gradingShadowAmount: Float = 0f
    @Volatile var gradingShadowLuminance: Float = 0f
    @Volatile var gradingMidtoneHue: Float = 0f
    @Volatile var gradingMidtoneAmount: Float = 0f
    @Volatile var gradingMidtoneLuminance: Float = 0f
    @Volatile var gradingHighlightHue: Float = 0f
    @Volatile var gradingHighlightAmount: Float = 0f
    @Volatile var gradingHighlightLuminance: Float = 0f
    @Volatile var gradingBalance: Float = 0f
    @Volatile var gradingBlending: Float = 0.5f

    private val lchHueAdjustments = FloatArray(LCH_COLOR_BAND_COUNT)
    private val lchChromaAdjustments = FloatArray(LCH_COLOR_BAND_COUNT)
    private val lchLightnessAdjustments = FloatArray(LCH_COLOR_BAND_COUNT)

    // 渲染尺寸
    private var viewportWidth: Int = 0
    private var viewportHeight: Int = 0
    private var photoCaptureWidth: Int = 0
    private var photoCaptureHeight: Int = 0
    private var lastLoggedSpatialEffectScale: Float = -1f

    // 历史高光点记录（用于增加稳定性，减少跳动）
    private var lastBestX = -1
    private var lastBestY = -1

    // 预览尺寸
    private var previewWidth: Int = 1920
    private var previewHeight: Int = 1080
    private var stabilizationInputWidth: Int = 1920
    private var stabilizationInputHeight: Int = 1080
    private var sensorOrientation: Int = 0
    private var calibrationOffset: Int = 0
    private var deviceRotation: Int = 0
    private var lensFacing: Int = 1 // CameraCharacteristics.LENS_FACING_BACK

    // 回调
    var onSurfaceTextureAvailable: ((SurfaceTexture) -> Unit)? = null
    var onRequestRender: (() -> Unit)? = null
    var onHistogramUpdated: ((IntArray) -> Unit)? = null
    var onMeteringUpdated: ((Double, Double) -> Unit)? = null
    var onHighlightPointUpdated: ((Float, Float) -> Unit)? = null
    var onFirstFrameRendered: (() -> Unit)? = null

    // Live Photo 录制器
    var livePhotoRecorder: LivePhotoRecorder? = null
    @Volatile
    var videoLogProfile: VideoLogProfile = VideoLogProfile.OFF

    // 预览帧捕获请求仅在 GL 线程中写入和消费。
    private val pendingPreviewCaptureRequests = ArrayDeque<PreviewCaptureRequest>()
    private var captureWidth = 512
    private var captureHeight = 512
    private var captureAspectRatio = 0f
    private var captureMaxLongEdge = DEFAULT_PREVIEW_CAPTURE_MAX_LONG_EDGE
    private var lastCaptureWidth = 0
    private var lastCaptureHeight = 0
    private var firstFrameRendered = false

    /**
     * Surface 创建时调用
     */
    override fun onSurfaceCreated(gl: GL10?, config: EGLConfig?) {
        PLog.d(TAG, "onSurfaceCreated")

        // Context lost or new, reset all resource IDs and cached state
        resetGlResourceState()

        // 设置清屏颜色
        GLES30.glClearColor(0f, 0f, 0f, 1f)

        // 创建着色器程序
        initShaderProgram()

        // 创建顶点缓冲
        initBuffers()

        // 创建相机纹理
        cameraTextureId = GlUtils.createOESTexture()

        // 创建 SurfaceTexture
        frameAvailable.set(false)
        surfaceTexture = SurfaceTexture(cameraTextureId).apply {
            setDefaultBufferSize(previewWidth, previewHeight)
            setOnFrameAvailableListener {
                frameAvailable.set(true)
                if (previewStabilizationUseCase == null ||
                    stabilizationCoordinator?.isCurrentCameraSupported != true
                ) {
                    onRequestRender?.invoke()
                }
            }
        }

        // 初始化测光 FBO
        initMeteringFbo()

        // 标记 Surface 已创建
        surfaceReady = true

        // 如果有 LUT 配置，现在设置它（恢复由于 Context 丢失失效的纹理）
        (pendingLutConfig ?: currentLutConfig)?.let { config ->
            pendingLutConfig = null
            setLutInternal(config)
        }
        (pendingBaselineLutConfig ?: currentBaselineLutConfig)?.let { config ->
            pendingBaselineLutConfig = null
            setBaselineLutInternal(config)
        }

        // 通知调用者 SurfaceTexture 已准备好
        surfaceTexture?.let { onSurfaceTextureAvailable?.invoke(it) }

        GlUtils.checkGlError("initShaderProgram")
    }

    /**
     * 重置所有 GL 资源 ID 和缓存状态。
     * 当 GL Context 被重新创建时（例如 App 切回前台），旧的资源 ID 已失效。
     * 重置状态可确保在后续渲染中按需重新创建有效资源。
     */
    private fun resetGlResourceState() {
        colorProgramCache.reset()
        mgcEisHardwareBufferRenderer.resetAfterContextLoss()
        mgcEisYuvRenderer.resetAfterContextLoss()
        cameraTextureId = 0
        currentCameraTextureId = 0
        currentCameraTextureSource = PreviewColorTextureSource.EXTERNAL_OES
        currentCameraTextureTarget = GLES11Ext.GL_TEXTURE_EXTERNAL_OES
        currentCameraTextureMatrix = stMatrix
        currentFrameTimestampNs = 0L
        lutTextureId = 0
        baselineLutTextureId = 0
        basicToneTextures.reset()
        vertexBufferId = 0
        texCoordBufferId = 0
        indexBufferId = 0
        pboId = 0
        resetPixelPackState(meteringPboIds, meteringPboFences)
        meteringPboIndex = 0
        meteringFboId = 0
        meteringTextureId = 0
        captureFboId = 0
        captureTextureId = 0
        passthroughProgramId = 0
        isEyeFocusBusy = false
        resetEyeFocusTiming()
        fboId = 0
        fboTextureId = 0
        fboWidth = 0
        fboHeight = 0
        stackFboId = 0
        stackTextureId = 0
        stackFboWidth = 0
        stackFboHeight = 0
        copyProgramId = 0
        hdfExtractBlurHProgram = 0
        hdfBlurVProgram = 0
        hdfCompositeProgram = 0
        softLightBlurHProgram = 0
        hdfTexId = IntArray(2)
        hdfFboId = IntArray(2)
        hdfWidth = 0
        hdfHeight = 0
        softLightTexId = IntArray(2)
        softLightFboId = IntArray(2)
        softLightWidth = 0
        softLightHeight = 0
        halationExtractBlurHProgram = 0
        halationBlurVProgram = 0
        halationTexId = IntArray(2)
        halationFboId = IntArray(2)
        halationWidth = 0
        halationHeight = 0
        bloomDownsampleFirstProgram = 0
        bloomDownsampleProgram = 0
        bloomUpsampleProgram = 0
        bloomCompositeProgram = 0
        bloomTexId = IntArray(0)
        bloomFboId = IntArray(0)
        bloomMipWidths = IntArray(0)
        bloomMipHeights = IntArray(0)
        bloomMipCount = 0
        bloomSourceWidth = 0
        bloomSourceHeight = 0
        postProcessScratchFboId = 0
        postProcessScratchTextureId = 0
        postProcessScratchWidth = 0
        postProcessScratchHeight = 0
        clarityDownsampleProgram = 0
        clarityCompositeProgram = 0
        clarityPyramidTextureIds = IntArray(CLARITY_PYRAMID_LEVELS)
        clarityPyramidFboIds = IntArray(CLARITY_PYRAMID_LEVELS)
        clarityPyramidWidths = IntArray(CLARITY_PYRAMID_LEVELS)
        clarityPyramidHeights = IntArray(CLARITY_PYRAMID_LEVELS)
        clarityOutputTextureId = 0
        clarityOutputFboId = 0
        clarityOutputWidth = 0
        clarityOutputHeight = 0
        filmGrainGl.resetAfterContextLoss()
        filmGrainSourceTextureId = 0
        filmGrainSourceFboId = 0
        filmGrainSourceWidth = 0
        filmGrainSourceHeight = 0
        focusPeakingProgramId = 0
        focusPeakingFboId = 0
        focusPeakingTextureId = 0
        focusPeakingFboWidth = 0
        focusPeakingFboHeight = 0
        lastCaptureWidth = 0
        lastCaptureHeight = 0
        viewportWidth = 0
        viewportHeight = 0
        curveTextureId = 0
        baselineCurveTextureId = 0
        firstFrameRendered = false
    }

    /**
     * Surface 尺寸变化时调用
     */
    override fun onSurfaceChanged(gl: GL10?, width: Int, height: Int) {
        // PLog.d(TAG, "onSurfaceChanged: ${width}x${height}")

        viewportWidth = width
        viewportHeight = height

        GLES30.glViewport(0, 0, width, height)

        initMeteringFbo()

        // 更新 MVP 矩阵以处理 center crop
        updateMVPMatrix()

        GlUtils.checkGlError("onSurfaceChanged")
    }

    private fun initFbo(width: Int, height: Int) {
        if (fboId != 0) {
            GLES30.glDeleteFramebuffers(1, intArrayOf(fboId), 0)
            fboId = 0
        }
        if (fboTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(fboTextureId), 0)
            fboTextureId = 0
        }
        if (stackFboId != 0) {
            GLES30.glDeleteFramebuffers(1, intArrayOf(stackFboId), 0)
            stackFboId = 0
        }
        if (stackTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(stackTextureId), 0)
            stackTextureId = 0
        }
        fboWidth = 0
        fboHeight = 0
        stackFboWidth = 0
        stackFboHeight = 0

        val ids = IntArray(1)
        GLES30.glGenFramebuffers(1, ids, 0)
        fboId = ids[0]

        GLES30.glGenTextures(1, ids, 0)
        fboTextureId = ids[0]

        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, fboTextureId)
        GLES30.glTexImage2D(
            GLES30.GL_TEXTURE_2D, 0, GLES30.GL_RGBA16F, width, height,
            0, GLES30.GL_RGBA, GLES30.GL_HALF_FLOAT, null
        )
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)

        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, fboId)
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0,
            GLES30.GL_TEXTURE_2D, fboTextureId, 0
        )

        val status = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER)
        if (status != GLES30.GL_FRAMEBUFFER_COMPLETE) {
            PLog.e(TAG, "FBO init failed: $status")
        }

        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        fboWidth = width
        fboHeight = height

        GLES30.glGenFramebuffers(1, ids, 0)
        stackFboId = ids[0]
        GLES30.glGenTextures(1, ids, 0)
        stackTextureId = ids[0]
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, stackTextureId)
        GLES30.glTexImage2D(
            GLES30.GL_TEXTURE_2D, 0, GLES30.GL_RGBA16F, width, height,
            0, GLES30.GL_RGBA, GLES30.GL_HALF_FLOAT, null
        )
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, stackFboId)
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0,
            GLES30.GL_TEXTURE_2D, stackTextureId, 0
        )
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        stackFboWidth = width
        stackFboHeight = height
    }

    private fun isMainFboReady(width: Int, height: Int): Boolean {
        return fboId != 0 &&
            fboTextureId != 0 &&
            stackFboId != 0 &&
            stackTextureId != 0 &&
            fboWidth == width &&
            fboHeight == height &&
            stackFboWidth == width &&
            stackFboHeight == height
    }

    private fun hasBaselineLayer(): Boolean {
        return (baselineLutEnabled && currentBaselineLutConfig != null) ||
            baselineColorRecipeEnabled ||
            !baselineRecipeParams.isDefault()
    }

    private fun hasCreativeLayer(): Boolean {
        return (lutEnabled && currentLutConfig != null) || colorRecipeEnabled
    }

    private fun getColorPassLocations(
        textureSource: PreviewColorTextureSource,
        lutConfig: LutConfig?,
        lutEnabled: Boolean,
        params: com.hinnka.mycamera.model.ColorRecipeParams,
        enableVideoLog: Boolean,
    ): ColorPassLocations? {
        val variant = PreviewColorShaderVariant.forPass(
            textureSource = textureSource,
            params = params,
            lutConfig = lutConfig,
            lutEnabled = lutEnabled && lutConfig != null,
            videoLogEnabled = enableVideoLog && videoLogProfile.isEnabled,
        )
        return colorProgramCache.get(variant)
    }

    private fun drawColorPass(
        locations: ColorPassLocations,
        targetFboId: Int,
        width: Int,
        height: Int,
        sourceTextureTarget: Int,
        sourceTextureId: Int,
        sourceStMatrix: FloatArray,
        sourceCropRect: FloatArray,
        targetMvpMatrix: FloatArray,
        lutConfig: LutConfig?,
        lutTextureId: Int,
        lutSize: Float,
        lutEnabled: Boolean,
        params: com.hinnka.mycamera.model.ColorRecipeParams,
        curveTextureId: Int,
        curveEnabled: Boolean,
        enableVideoLog: Boolean,
    ) {
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, targetFboId)
        GLES30.glViewport(0, 0, width, height)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
        GLES30.glUseProgram(locations.programId)

        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(sourceTextureTarget, sourceTextureId)
        GLES30.glUniform1i(locations.uCameraTextureLocation, 0)

        GLES30.glActiveTexture(GLES30.GL_TEXTURE1)
        GLES30.glBindTexture(
            GLES30.GL_TEXTURE_3D,
            if (lutEnabled && lutTextureId != 0) lutTextureId else 0
        )
        GLES30.glUniform1i(locations.uLutTextureLocation, 1)

        GLES30.glUniformMatrix4fv(locations.uMVPMatrixLocation, 1, false, targetMvpMatrix, 0)
        GLES30.glUniformMatrix4fv(locations.uSTMatrixLocation, 1, false, sourceStMatrix, 0)
        GLES30.glUniform4f(
            locations.uCropRectLocation,
            sourceCropRect[0],
            sourceCropRect[1],
            sourceCropRect[2],
            sourceCropRect[3]
        )
        GLES30.glUniform1f(locations.uLutSizeLocation, lutSize)
        GLES30.glUniform1f(locations.uLutIntensityLocation, params.lutIntensity)
        GLES30.glUniform1i(locations.uLutEnabledLocation, if (lutEnabled && lutTextureId != 0) 1 else 0)
        GLES30.glUniform1i(locations.uLutMaskTypeLocation, 0)
        GLES30.glUniform1i(locations.uLutCurveLocation, LutShaderMappings.transferCurveId(lutConfig?.curve))
        GLES30.glUniform1i(
            locations.uLutColorSpaceLocation,
            LutShaderMappings.colorSpaceId(lutConfig?.colorSpace ?: ColorSpace.SRGB)
        )
        GLES30.glUniform1i(locations.uVideoLogEnabledLocation, if (enableVideoLog && videoLogProfile.isEnabled) 1 else 0)
        GLES30.glUniform1i(locations.uVideoLogCurveLocation, LutShaderMappings.transferCurveId(videoLogProfile.logCurve))
        GLES30.glUniform1i(locations.uVideoColorSpaceLocation, LutShaderMappings.colorSpaceId(videoLogProfile.colorSpace))

        val recipeEnabled = !params.isDefault()
        GLES30.glUniform1i(locations.uColorRecipeEnabledLocation, if (recipeEnabled) 1 else 0)
        if (recipeEnabled) {
            GLES30.glUniform1f(locations.uExposureLocation, params.exposure)
            GLES30.glUniform1f(locations.uContrastLocation, params.contrast)
            GLES30.glUniform1f(locations.uSaturationLocation, params.saturation)
            GLES30.glUniform1f(locations.uTemperatureLocation, params.temperature)
            GLES30.glUniform1f(locations.uTintLocation, params.tint)
            GLES30.glUniform1f(locations.uFadeLocation, params.fade)
            GLES30.glUniform1f(locations.uVibranceLocation, params.color)
            ShadowsHighlightsShader.bindUniformLocations(
                highlightsLocation = locations.uHighlightsLocation,
                shadowsLocation = locations.uShadowsLocation,
                highlights = params.highlights,
                shadows = params.shadows
            )
            GLES30.glUniform1f(locations.uToneToeLocation, params.toneToe)
            GLES30.glUniform1f(locations.uToneShoulderLocation, params.toneShoulder)
            GLES30.glUniform1f(locations.uTonePivotLocation, params.tonePivot)
            GLES30.glUniform1f(locations.uSharpeningLocation, params.sharpness.coerceIn(-1f, 1f))
            GLES30.glUniform1f(locations.uFilmGrainLocation, params.filmGrain)
            GLES30.glUniform1f(
                locations.uFilmGrainSeedLocation,
                FilmGrainShaders.frameSeed(currentFrameTimestampNs)
            )
            GLES30.glUniform1f(
                locations.uFilmGrainPixelScaleLocation,
                FilmGrainShaders.pixelScale(width, height)
            )
            GLES30.glUniform1f(locations.uVignetteLocation, params.vignette)
            GLES30.glUniform1f(locations.uFlashLocation, params.flash)
            GLES30.glUniform1f(locations.uBleachBypassLocation, params.bleachBypass)
            GLES30.glUniform1f(locations.uNoiseLocation, params.noise)
            GLES30.glUniform1f(locations.uNoiseSeedLocation, (System.currentTimeMillis() % 10000) / 1000f)
            GLES30.glUniform1f(locations.uLowResLocation, params.lowRes)
            GLES30.glUniform1f(locations.uAspectRatioLocation, width.toFloat() / maxOf(1, height).toFloat())
            GLES30.glUniform3f(
                locations.uGradingHuesLocation,
                params.gradingShadowHue,
                params.gradingMidtoneHue,
                params.gradingHighlightHue
            )
            GLES30.glUniform3f(
                locations.uGradingAmountsLocation,
                params.gradingShadowAmount,
                params.gradingMidtoneAmount,
                params.gradingHighlightAmount
            )
            GLES30.glUniform3f(
                locations.uGradingLuminancesLocation,
                params.gradingShadowLuminance,
                params.gradingMidtoneLuminance,
                params.gradingHighlightLuminance,
            )
            GLES30.glUniform1f(locations.uGradingBalanceLocation, params.gradingBalance)
            GLES30.glUniform1f(locations.uGradingBlendingLocation, params.gradingBlending)
            val lch = ColorRecipeGl.lchAdjustments(params)
            val primaryCalibrationMatrix = CameraRawCalibrationMatrix.build(params)
            ColorRecipeGl.bindLchAdjustments(
                locations.uLchHueAdjustmentsLocation,
                locations.uLchChromaAdjustmentsLocation,
                locations.uLchLightnessAdjustmentsLocation,
                lch
            )
            GLES30.glUniformMatrix3fv(locations.uPrimaryCalibrationMatrixLocation, 1, false, primaryCalibrationMatrix, 0)
        }

        GLES30.glActiveTexture(GLES30.GL_TEXTURE2)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, if (curveEnabled && curveTextureId != 0) curveTextureId else 0)
        GLES30.glUniform1i(locations.uCurveTextureLocation, 2)
        GLES30.glUniform1i(locations.uCurveEnabledLocation, if (curveEnabled && curveTextureId != 0) 1 else 0)

        basicToneTextures.bind(
            context = appContext,
            textureUnit = 3,
            samplerLocation = locations.uBasicToneLutLocation,
            intensityLocation = locations.uBasicToneIntensityLocation,
            amount = ColorPaletteMapper.basicToneAmount(params),
        )

        GLES30.glUniform2f(
            locations.uTexelSizeLocation,
            1.0f / maxOf(1, width).toFloat(),
            1.0f / maxOf(1, height).toFloat()
        )
        GLES30.glUniform1f(locations.uChromaticAberrationLocation, params.chromaticAberration)

        GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, vertexBufferId)
        GLES30.glEnableVertexAttribArray(locations.aPositionLocation)
        GLES30.glVertexAttribPointer(
            locations.aPositionLocation,
            POSITION_COMPONENT_COUNT,
            GLES30.GL_FLOAT,
            false,
            0,
            0,
        )
        GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, texCoordBufferId)
        GLES30.glEnableVertexAttribArray(locations.aTexCoordLocation)
        GLES30.glVertexAttribPointer(
            locations.aTexCoordLocation,
            TEXTURE_COORD_COMPONENT_COUNT,
            GLES30.GL_FLOAT,
            false,
            0,
            0,
        )
        GLES30.glBindBuffer(GLES30.GL_ELEMENT_ARRAY_BUFFER, indexBufferId)
        GLES30.glDrawElements(
            GLES30.GL_TRIANGLES,
            Shaders.DRAW_ORDER.size,
            GLES30.GL_UNSIGNED_SHORT,
            0,
        )
        GLES30.glDisableVertexAttribArray(locations.aPositionLocation)
        GLES30.glDisableVertexAttribArray(locations.aTexCoordLocation)
        GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, 0)
        GLES30.glBindBuffer(GLES30.GL_ELEMENT_ARRAY_BUFFER, 0)
    }

    private fun uploadPendingCurveTextures() {
        if (pendingCurveBuffer != null) {
            curveTextureId = ColorRecipeGl.ensureCurveTextureUploaded(curveTextureId, pendingCurveBuffer)
            pendingCurveBuffer = null
        }
        if (baselinePendingCurveBuffer != null) {
            baselineCurveTextureId = ColorRecipeGl.ensureCurveTextureUploaded(
                baselineCurveTextureId,
                baselinePendingCurveBuffer
            )
            baselinePendingCurveBuffer = null
        }
    }

    /**
     * 绘制帧
     */
    override fun onDrawFrame(gl: GL10?) {
        if (renderingPaused) return
        if (viewportWidth <= 0 || viewportHeight <= 0) return

        val delayedStabilizationRequested = previewStabilizationUseCase != null
        val delayedStabilizationEnabled = delayedStabilizationRequested &&
            stabilizationCoordinator?.isCurrentCameraSupported == true
        if (!delayedStabilizationEnabled && stabilizationSessionStarted) {
            stabilizationSession?.stop()
            stabilizationSessionStarted = false
            mgcEisPresentationTransform.reset()
        }
        if (delayedStabilizationEnabled && !stabilizationSessionStarted) {
            stabilizationSessionStarted = stabilizationSession?.start() == true
        }
        val oesFrameUpdated = frameAvailable.getAndSet(false) && acquireLatestCameraFrame()
        var cameraFrameUpdated = oesFrameUpdated

        if (delayedStabilizationEnabled) {
            val session = stabilizationSession
            if (!stabilizationSessionStarted) {
                stabilizationSessionStarted = session?.start() == true
            }
            if (stabilizationSessionStarted) {
                val completedFrame = session?.dequeueFrame()
                if (completedFrame != null) {
                    val holdPreviousPhotoPreviewFrame =
                        previewStabilizationUseCase == StabilizationUseCase.PHOTO_PREVIEW &&
                            completedFrame.transform == null &&
                            currentCameraTextureSource == PreviewColorTextureSource.TEXTURE_2D
                    if (holdPreviousPhotoPreviewFrame) {
                        // A dropped photo-preview frame has no pose. Showing it with an identity
                        // transform would make the view jump for one frame; retain the last fully
                        // stabilized texture until a frame with matching metadata is available.
                        completedFrame.image.close()
                    } else {
                        renderMgcEisFrame(completedFrame)?.let { rendered ->
                            currentCameraTextureSource = PreviewColorTextureSource.TEXTURE_2D
                            currentCameraTextureTarget = GLES30.GL_TEXTURE_2D
                            currentCameraTextureId = rendered.textureId
                            currentCameraTextureMatrix = mgcEisPresentationTransform.matrix
                            currentFrameTimestampNs = rendered.timestampNs
                            cameraFrameUpdated = true
                        }
                    }
                }
                if ((session?.pendingResultCount() ?: 0) > 0) {
                    onRequestRender?.invoke()
                }
            }
            if (currentCameraTextureSource != PreviewColorTextureSource.TEXTURE_2D) {
                GLES30.glClearColor(0f, 0f, 0f, 1f)
                GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
                return
            }
        } else if (cameraFrameUpdated) {
            useCurrentOesFrame()
        }

        val liveRecorder = livePhotoRecorder
        val hdfEnabled = halation > 0.001f
        val halationEnabled = redHalation > 0.001f
        val bloomEnabled = bloom > 0.001f
        val softLightEnabled = softLight > 0.001f
        val clarityEnabled = abs(clarity) > 0.001f
        val preLogFilmGrainEnabled = filmGrain > 0.001f &&
            videoLogProfile.isEnabled &&
            !(lutEnabled && currentLutConfig != null)
        val filmGrainEnabled = filmGrain > 0.001f && !preLogFilmGrainEnabled
        val postProcessEffectEnabled = hdfEnabled || halationEnabled || bloomEnabled || softLightEnabled
        val eyeFocusSamplingNeeded = onEyeFocusInputAvailable != null && !isEyeFocusBusy
        val suppressBaselineLayerForVideoLog = videoLogProfile.isEnabled
        val hasBaselineLayer = hasBaselineLayer() && !suppressBaselineLayerForVideoLog
        val hasCreativeLayer = hasCreativeLayer()
        val hasDualLayer = hasBaselineLayer && hasCreativeLayer
        uploadPendingCurveTextures()
        val requestedFbo = liveRecorder != null ||
            postProcessEffectEnabled ||
            clarityEnabled ||
            filmGrainEnabled ||
            eyeFocusSamplingNeeded ||
            hasDualLayer ||
            (!isAutoFocus && focusPeakingEnabled)
        if (requestedFbo && !isMainFboReady(viewportWidth, viewportHeight)) {
            initFbo(viewportWidth, viewportHeight)
        }
        val needsFbo = requestedFbo && fboId != 0 && fboTextureId != 0

        if (needsFbo) {
            val identityMatrix = FloatArray(16).also { Matrix.setIdentityM(it, 0) }
            val fullCropRect = floatArrayOf(0f, 0f, 1f, 1f)

            val currentWidth = viewportWidth
            val currentHeight = viewportHeight

            // 渲染色彩链路到 FBO
            drawInternal(
                fboId = fboId,
                width = currentWidth,
                height = currentHeight,
                preferBaselineLayer = hasDualLayer,
                suppressBaselineLayer = suppressBaselineLayerForVideoLog
            )

            var currentTexId = fboTextureId
            if (hasDualLayer && stackFboId != 0 && stackTextureId != 0) {
                val creativeParams = getCurrentRecipeParams()
                val secondPassLocations = getColorPassLocations(
                    textureSource = PreviewColorTextureSource.TEXTURE_2D,
                    lutConfig = currentLutConfig,
                    lutEnabled = lutEnabled && currentLutConfig != null,
                    params = creativeParams,
                    enableVideoLog = false,
                ) ?: run {
                    return
                }
                drawColorPass(
                    locations = secondPassLocations,
                    targetFboId = stackFboId,
                    width = viewportWidth,
                    height = viewportHeight,
                    sourceTextureTarget = GLES30.GL_TEXTURE_2D,
                    sourceTextureId = fboTextureId,
                    sourceStMatrix = identityMatrix,
                    sourceCropRect = fullCropRect,
                    targetMvpMatrix = identityMatrix,
                    lutConfig = currentLutConfig,
                    lutTextureId = lutTextureId,
                    lutSize = lutSize,
                    lutEnabled = lutEnabled && currentLutConfig != null,
                    params = creativeParams,
                    curveTextureId = curveTextureId,
                    curveEnabled = curveEnabled && curveTextureId != 0,
                    enableVideoLog = false,
                )
                currentTexId = stackTextureId
            }

            if (clarityEnabled) {
                currentTexId = renderClarityPreview(
                    sourceTextureId = currentTexId,
                    width = currentWidth,
                    height = currentHeight,
                    strength = clarity,
                )
            }

            var postProcessMaterialized = false
            if (
                filmGrainEnabled &&
                postProcessEffectEnabled &&
                setupFilmGrainSourceFramebuffer(currentWidth, currentHeight)
            ) {
                drawPostProcessEffects(
                    filmGrainSourceFboId,
                    currentWidth,
                    currentHeight,
                    currentTexId,
                )
                currentTexId = filmGrainSourceTextureId
                postProcessMaterialized = true
            }

            if (filmGrainEnabled) {
                val grainOutput = filmGrainGl.renderToTexture(
                    sourceTextureId = currentTexId,
                    width = currentWidth,
                    height = currentHeight,
                    amount = filmGrain,
                    frameSeed = FilmGrainShaders.frameSeed(currentFrameTimestampNs),
                    drawQuad = ::drawSimpleQuad,
                )
                if (grainOutput != null) {
                    currentTexId = grainOutput.textureId
                }
            }

            val outputTexId = currentTexId

            // 确保 FBO 内容已刷入显存
            GLES30.glFlush()

            // Live Photo 录制
            if (liveRecorder != null) {
                val applyRotation = getApplyRotation()
                val isSwapped = applyRotation % 180 != 0
                val targetWidth = if (isSwapped) viewportHeight else viewportWidth
                val targetHeight = if (isSwapped) viewportWidth else viewportHeight
                val rotationMatrix = FloatArray(16)
                Matrix.setIdentityM(rotationMatrix, 0)
                if (applyRotation != 0) {
                    Matrix.translateM(rotationMatrix, 0, 0.5f, 0.5f, 0f)
                    Matrix.rotateM(rotationMatrix, 0, applyRotation.toFloat(), 0f, 0f, 1f)
                    Matrix.translateM(rotationMatrix, 0, -0.5f, -0.5f, 0f)
                }
                liveRecorder.onPreviewFrame(
                    textureId = outputTexId,
                    transformMatrix = rotationMatrix,
                    width = targetWidth,
                    height = targetHeight,
                    timestampNs = currentFrameTimestampNs,
                    lutConfig = currentLutConfig,
                    params = getCurrentRecipeParams(),
                    sharedContext = EGL14.eglGetCurrentContext(),
                    sharedDisplay = EGL14.eglGetCurrentDisplay()
                )
            }

            // 峰值对焦仅作用于预览，不进入录制
            if (!isAutoFocus && focusPeakingEnabled) {
                currentTexId = renderFocusPeaking(currentTexId, currentWidth, currentHeight)
            }

            // 显示到屏幕
            if (postProcessEffectEnabled && !postProcessMaterialized) {
                drawPostProcessEffects(0, viewportWidth, viewportHeight, currentTexId)
            } else {
                drawFboToScreen(0, viewportWidth, viewportHeight, currentTexId)
            }
            val finalDisplayTextureId = currentTexId
            val finalDisplayWidth = viewportWidth
            val finalDisplayHeight = viewportHeight
            val needsHdfCompositeForSampling = postProcessEffectEnabled && !postProcessMaterialized
            val sampleTimeNanos = SystemClock.elapsedRealtimeNanos()
            if (
                cameraFrameUpdated &&
                eyeFocusSamplingNeeded &&
                sampleTimeNanos - lastEyeFocusSampleTimeNanos >= eyeFocusSampleIntervalNanos
            ) {
                lastEyeFocusSampleTimeNanos = sampleTimeNanos
                capturePreviewFrame(
                    maxLongEdge = EYE_FOCUS_SAMPLE_MAX_LONG_EDGE,
                    // 检测使用未套用创意 LUT 的预览，避免极端色彩配方降低人脸置信度。
                    source = PreviewCaptureSource.Original,
                ) { bitmap ->
                    val callback = onEyeFocusInputAvailable
                    if (callback == null) {
                        bitmap.recycle()
                    } else {
                        isEyeFocusBusy = true
                        callback(
                            EyeFocusPreviewFrame(
                                bitmap = bitmap,
                                sampleStartedAtNanos = sampleTimeNanos,
                                captureDurationNanos =
                                    (SystemClock.elapsedRealtimeNanos() - sampleTimeNanos)
                                        .coerceAtLeast(0L),
                            )
                        )
                    }
                }
            }
            capturePendingPreviewFrames(
                finalDisplayTextureId = finalDisplayTextureId,
                finalDisplayWidth = finalDisplayWidth,
                finalDisplayHeight = finalDisplayHeight,
                compositeFinalDisplay = needsHdfCompositeForSampling
            )
            if (meteringEnabled) {
                runMeteringInternal(
                    sourceTextureId = finalDisplayTextureId,
                    sourceWidth = finalDisplayWidth,
                    sourceHeight = finalDisplayHeight,
                    compositeWithHdf = needsHdfCompositeForSampling
                )
            }
        } else {
            // 直接渲染到屏幕
            drawInternal(
                fboId = 0,
                width = viewportWidth,
                height = viewportHeight,
                suppressBaselineLayer = suppressBaselineLayerForVideoLog
            )
            capturePendingPreviewFrames(
                finalDisplayTextureId = null,
                finalDisplayWidth = viewportWidth,
                finalDisplayHeight = viewportHeight,
                compositeFinalDisplay = false
            )
        }
        if (cameraFrameUpdated && !firstFrameRendered) {
            firstFrameRendered = true
            onFirstFrameRendered?.invoke()
        }
    }

    private fun useCurrentOesFrame() {
        currentCameraTextureSource = PreviewColorTextureSource.EXTERNAL_OES
        currentCameraTextureTarget = GLES11Ext.GL_TEXTURE_EXTERNAL_OES
        currentCameraTextureId = cameraTextureId
        currentCameraTextureMatrix = stMatrix
        currentFrameTimestampNs = surfaceTexture?.timestamp ?: 0L
    }

    private fun acquireLatestCameraFrame(): Boolean {
        return try {
            surfaceTexture?.updateTexImage()
            surfaceTexture?.getTransformMatrix(stMatrix)
            if (previewStabilizationUseCase != null &&
                !mgcEisPresentationTransform.captureFromOes(stMatrix)
            ) {
                PLog.w(TAG, "MGC cannot derive a cardinal presentation orientation yet")
            }
            surfaceTexture != null
        } catch (error: RuntimeException) {
            PLog.e(
                TAG,
                "updateTexImage failed, surfaceReady=$surfaceReady, cameraTextureId=$cameraTextureId",
                error,
            )
            false
        }
    }

    /**
     * 将 FBO 纹理绘制到屏幕 (Copy Shader)
     */
    private fun drawFboToScreen(
        fboId: Int,
        width: Int,
        height: Int,
        sourceTextureId: Int,
        targetMvpMatrix: FloatArray? = null
    ) {
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, fboId)
        GLES30.glViewport(0, 0, width, height)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)

        GLES30.glUseProgram(copyProgramId)

        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, sourceTextureId)
        GLES30.glUniform1i(uCopyTextureLoc, 0)

        // FBO 纹理已经是正向的 (经过 stMatrix/MVP 处理后)，所以这里可能不需要再变换
        // 或者需要 Identity
        val identity = FloatArray(16)
        Matrix.setIdentityM(identity, 0)
        GLES30.glUniformMatrix4fv(uCopyMVPMatrixLoc, 1, false, targetMvpMatrix ?: identity, 0)

        // stMatrix 也设为 Identity，因为 FBO 纹理坐标是标准的
        GLES30.glUniformMatrix4fv(uCopySTMatrixLoc, 1, false, identity, 0)
        GLES30.glUniform4f(uCopyCropRectLoc, 0f, 0f, 1f, 1f)

        GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, vertexBufferId)
        GLES30.glEnableVertexAttribArray(aCopyPositionLoc)
        GLES30.glVertexAttribPointer(aCopyPositionLoc, POSITION_COMPONENT_COUNT, GLES30.GL_FLOAT, false, 0, 0)

        GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, texCoordBufferId)
        GLES30.glEnableVertexAttribArray(aCopyTexCoordLoc)
        GLES30.glVertexAttribPointer(aCopyTexCoordLoc, TEXTURE_COORD_COMPONENT_COUNT, GLES30.GL_FLOAT, false, 0, 0)

        GLES30.glBindBuffer(GLES30.GL_ELEMENT_ARRAY_BUFFER, indexBufferId)
        GLES30.glDrawElements(GLES30.GL_TRIANGLES, Shaders.DRAW_ORDER.size, GLES30.GL_UNSIGNED_SHORT, 0)

        GLES30.glDisableVertexAttribArray(aCopyPositionLoc)
        GLES30.glDisableVertexAttribArray(aCopyTexCoordLoc)
        GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, 0)
        GLES30.glBindBuffer(GLES30.GL_ELEMENT_ARRAY_BUFFER, 0)

    }

    /**
     * 内部绘图逻辑，支持渲染到 FBO 或屏幕
     */
    private fun drawInternal(
        fboId: Int,
        width: Int,
        height: Int,
        targetMvpMatrix: FloatArray = mvpMatrix,
        preferBaselineLayer: Boolean = false,
        suppressBaselineLayer: Boolean = false,
        suppressCreativeLayer: Boolean = false
    ) {
        val baselineLayerAvailable = hasBaselineLayer() && !suppressBaselineLayer
        val creativeLayerAvailable = hasCreativeLayer() && !suppressCreativeLayer
        val useCreativeLayer = creativeLayerAvailable && (!preferBaselineLayer || !baselineLayerAvailable)
        val useBaselineLayer = !useCreativeLayer && baselineLayerAvailable
        val layerLutConfig = when {
            useCreativeLayer -> currentLutConfig
            useBaselineLayer -> currentBaselineLutConfig
            else -> null
        }
        val layerLutTextureId = when {
            useCreativeLayer -> lutTextureId
            useBaselineLayer -> baselineLutTextureId
            else -> 0
        }
        val layerLutSize = if (useBaselineLayer) baselineLutSize else lutSize
        val layerLutEnabled = if (useCreativeLayer) {
            lutEnabled && currentLutConfig != null
        } else if (useBaselineLayer) {
            baselineLutEnabled && currentBaselineLutConfig != null
        } else {
            false
        }
        val layerParams = when {
            useCreativeLayer -> getCurrentRecipeParams()
            useBaselineLayer -> baselineRecipeParams
            else -> com.hinnka.mycamera.model.ColorRecipeParams.DEFAULT
        }
        val layerCurveTextureId = if (useBaselineLayer) baselineCurveTextureId else curveTextureId
        val layerCurveEnabled = if (useCreativeLayer) {
            curveEnabled && curveTextureId != 0
        } else if (useBaselineLayer) {
            baselineCurveEnabled && baselineCurveTextureId != 0
        } else {
            false
        }
        val enableVideoLog = true
        val locations = getColorPassLocations(
            textureSource = currentCameraTextureSource,
            lutConfig = layerLutConfig,
            lutEnabled = layerLutEnabled,
            params = layerParams,
            enableVideoLog = enableVideoLog,
        ) ?: return
        drawColorPass(
            locations = locations,
            targetFboId = fboId,
            width = width,
            height = height,
            sourceTextureTarget = currentCameraTextureTarget,
            sourceTextureId = currentCameraTextureId,
            sourceStMatrix = currentCameraTextureMatrix,
            sourceCropRect = cropRect,
            targetMvpMatrix = targetMvpMatrix,
            lutConfig = layerLutConfig,
            lutTextureId = layerLutTextureId,
            lutSize = layerLutSize,
            lutEnabled = layerLutEnabled,
            params = layerParams,
            curveTextureId = layerCurveTextureId,
            curveEnabled = layerCurveEnabled,
            enableVideoLog = enableVideoLog,
        )

        // 测光和直方图（按需）
        if (fboId == 0 && meteringEnabled) {
            runMeteringInternal()
        }

        GlUtils.checkGlError("onDrawFrame")
    }

    /**
     * 初始化着色器程序
     */
    private fun initShaderProgram() {
        colorProgramCache.reset()

        // === 初始化 Passthrough Shader (用于深度采集) ===
        if (passthroughProgramId == 0) {
            val passVs = GlUtils.compileShader(GLES30.GL_VERTEX_SHADER, Shaders.VERTEX_SHADER)
            val passFs = GlUtils.compileShader(GLES30.GL_FRAGMENT_SHADER, Shaders.FRAGMENT_SHADER_PASSTHROUGH)
            passthroughProgramId = GlUtils.linkProgram(passVs, passFs)
            GLES30.glDeleteShader(passVs)
            GLES30.glDeleteShader(passFs)
            
            if (passthroughProgramId != 0) {
                uPassMVPMatrixLocation = GLES30.glGetUniformLocation(passthroughProgramId, "uMVPMatrix")
                uPassSTMatrixLocation = GLES30.glGetUniformLocation(passthroughProgramId, "uSTMatrix")
                uPassCropRectLocation = GLES30.glGetUniformLocation(passthroughProgramId, "uCropRect")
                uPassCameraTextureLocation = GLES30.glGetUniformLocation(passthroughProgramId, "uCameraTexture")
                aPassPositionLocation = GLES30.glGetAttribLocation(passthroughProgramId, "aPosition")
                aPassTexCoordLocation = GLES30.glGetAttribLocation(passthroughProgramId, "aTexCoord")
            }
        }

        // === 初始化 Copy Shader (用于 FBO 上屏) ===
        val copyVs = GlUtils.compileShader(GLES30.GL_VERTEX_SHADER, Shaders.VERTEX_SHADER)
        val copyFs = GlUtils.compileShader(GLES30.GL_FRAGMENT_SHADER, Shaders.FRAGMENT_SHADER_COPY_2D)
        copyProgramId = GlUtils.linkProgram(copyVs, copyFs)
        GLES30.glDeleteShader(copyVs)
        GLES30.glDeleteShader(copyFs)

        if (copyProgramId == 0) {
            PLog.e(TAG, "Failed to link copy program")
        } else {
            uCopyTextureLoc = GLES30.glGetUniformLocation(copyProgramId, "uCameraTexture")
            uCopyMVPMatrixLoc = GLES30.glGetUniformLocation(copyProgramId, "uMVPMatrix")
            uCopySTMatrixLoc = GLES30.glGetUniformLocation(copyProgramId, "uSTMatrix")
            uCopyCropRectLoc = GLES30.glGetUniformLocation(copyProgramId, "uCropRect")
            aCopyPositionLoc = GLES30.glGetAttribLocation(copyProgramId, "aPosition")
            aCopyTexCoordLoc = GLES30.glGetAttribLocation(copyProgramId, "aTexCoord")
        }
    }

    private fun createPostProcessProgram(fragmentShaderSource: String, label: String): Int {
        val vertexShader = GlUtils.compileShader(
            GLES30.GL_VERTEX_SHADER,
            Shaders.SIMPLE_VERTEX_SHADER,
        )
        val fragmentShader = GlUtils.compileShader(GLES30.GL_FRAGMENT_SHADER, fragmentShaderSource)
        if (vertexShader == 0 || fragmentShader == 0) {
            if (vertexShader != 0) GLES30.glDeleteShader(vertexShader)
            if (fragmentShader != 0) GLES30.glDeleteShader(fragmentShader)
            PLog.e(TAG, "Failed to compile $label preview program")
            return 0
        }
        val program = GlUtils.linkProgram(vertexShader, fragmentShader)
        GLES30.glDeleteShader(vertexShader)
        GLES30.glDeleteShader(fragmentShader)
        if (program == 0) PLog.e(TAG, "Failed to link $label preview program")
        return program
    }

    private fun setupHalationFbos(width: Int, height: Int) {
        val dsW = width / 4; val dsH = height / 4
        if (halationWidth == dsW && halationHeight == dsH && halationTexId[0] != 0) return
        halationWidth = dsW; halationHeight = dsH
        for (i in 0..1) {
            if (halationTexId[i] != 0) GLES30.glDeleteTextures(1, intArrayOf(halationTexId[i]), 0)
            if (halationFboId[i] != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(halationFboId[i]), 0)
            val t = IntArray(1); val f = IntArray(1)
            GLES30.glGenTextures(1, t, 0); GLES30.glGenFramebuffers(1, f, 0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, t[0])
            GLES30.glTexImage2D(GLES30.GL_TEXTURE_2D, 0, GLES30.GL_RGBA16F, dsW, dsH, 0, GLES30.GL_RGBA, GLES30.GL_HALF_FLOAT, null)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, f[0])
            GLES30.glFramebufferTexture2D(GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0, GLES30.GL_TEXTURE_2D, t[0], 0)
            halationTexId[i] = t[0]; halationFboId[i] = f[0]
        }
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
    }

    private fun setupHdfFbos(width: Int, height: Int) {
        val dsW = width / 4
        val dsH = height / 4
        if (hdfWidth == dsW && hdfHeight == dsH && hdfTexId[0] != 0) return
        hdfWidth = dsW
        hdfHeight = dsH
        for (i in 0..1) {
            if (hdfTexId[i] != 0) GLES30.glDeleteTextures(1, intArrayOf(hdfTexId[i]), 0)
            if (hdfFboId[i] != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(hdfFboId[i]), 0)
            val t = IntArray(1);
            val f = IntArray(1)
            GLES30.glGenTextures(1, t, 0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, t[0])
            GLES30.glTexImage2D(
                GLES30.GL_TEXTURE_2D,
                0,
                GLES30.GL_RGBA16F,
                dsW,
                dsH,
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
            hdfTexId[i] = t[0]; hdfFboId[i] = f[0]
        }
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
    }

    private fun setupSoftLightFbos(width: Int, height: Int) {
        val dsW = maxOf(1, width / 4)
        val dsH = maxOf(1, height / 4)
        if (softLightWidth == dsW && softLightHeight == dsH && softLightTexId[0] != 0) return
        softLightWidth = dsW
        softLightHeight = dsH
        for (i in 0..1) {
            if (softLightTexId[i] != 0) GLES30.glDeleteTextures(1, intArrayOf(softLightTexId[i]), 0)
            if (softLightFboId[i] != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(softLightFboId[i]), 0)
            val t = IntArray(1)
            val f = IntArray(1)
            GLES30.glGenTextures(1, t, 0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, t[0])
            GLES30.glTexImage2D(
                GLES30.GL_TEXTURE_2D,
                0,
                GLES30.GL_RGBA16F,
                dsW,
                dsH,
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
            softLightTexId[i] = t[0]
            softLightFboId[i] = f[0]
        }
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
    }

    private fun renderHdfPreviewBlur(sourceTexId: Int, width: Int, height: Int) {
        if (!ensureHdfBlurPrograms()) return
        setupHdfFbos(width, height)
        if (hdfExtractBlurHProgram == 0 || hdfBlurVProgram == 0) return
        val dsW = width / 4;
        val dsH = height / 4
        val spatialScale = getPreviewSpatialEffectScale(width, height)
        val texelW = spatialScale / dsW;
        val texelH = spatialScale / dsH
        val threshold = 0.9f - halation * 0.3f
        // Pass 1: Extract + Horizontal Blur
        GLES30.glUseProgram(hdfExtractBlurHProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, hdfFboId[0])
        GLES30.glViewport(0, 0, dsW, dsH)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, sourceTexId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(hdfExtractBlurHProgram, "uInputTexture"), 0)
        GLES30.glUniform2f(GLES30.glGetUniformLocation(hdfExtractBlurHProgram, "uTexelSize"), texelW, texelH)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(hdfExtractBlurHProgram, "uThreshold"), threshold)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(hdfExtractBlurHProgram, "uStrength"), halation)
        drawSimpleQuad(hdfExtractBlurHProgram)
        // Pass 2: Vertical Blur
        GLES30.glUseProgram(hdfBlurVProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, hdfFboId[1])
        GLES30.glViewport(0, 0, dsW, dsH)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, hdfTexId[0])
        GLES30.glUniform1i(GLES30.glGetUniformLocation(hdfBlurVProgram, "uInputTexture"), 0)
        GLES30.glUniform2f(GLES30.glGetUniformLocation(hdfBlurVProgram, "uTexelSize"), texelW, texelH)
        drawSimpleQuad(hdfBlurVProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
    }

    private fun renderSoftLightPreviewBlur(sourceTexId: Int, width: Int, height: Int) {
        if (!ensureSoftLightPrograms()) return
        setupSoftLightFbos(width, height)
        if (softLightBlurHProgram == 0 || hdfBlurVProgram == 0) return
        val dsW = softLightWidth.coerceAtLeast(1)
        val dsH = softLightHeight.coerceAtLeast(1)
        val spatialScale = getPreviewSpatialEffectScale(width, height)
        val texelW = spatialScale / dsW
        val texelH = spatialScale / dsH

        GLES30.glUseProgram(softLightBlurHProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, softLightFboId[0])
        GLES30.glViewport(0, 0, dsW, dsH)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, sourceTexId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(softLightBlurHProgram, "uInputTexture"), 0)
        GLES30.glUniform2f(GLES30.glGetUniformLocation(softLightBlurHProgram, "uTexelSize"), texelW, texelH)
        drawSimpleQuad(softLightBlurHProgram)

        GLES30.glUseProgram(hdfBlurVProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, softLightFboId[1])
        GLES30.glViewport(0, 0, dsW, dsH)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, softLightTexId[0])
        GLES30.glUniform1i(GLES30.glGetUniformLocation(hdfBlurVProgram, "uInputTexture"), 0)
        GLES30.glUniform2f(GLES30.glGetUniformLocation(hdfBlurVProgram, "uTexelSize"), texelW, texelH)
        drawSimpleQuad(hdfBlurVProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
    }

    private fun renderHalationPreviewBlur(sourceTexId: Int, width: Int, height: Int) {
        if (!ensureHalationPrograms()) return
        setupHalationFbos(width, height)
        if (halationExtractBlurHProgram == 0 || halationBlurVProgram == 0) return
        val dsW = width / 4; val dsH = height / 4
        val spatialScale = getPreviewSpatialEffectScale(width, height)
        val texelW = spatialScale / dsW; val texelH = spatialScale / dsH
        val threshold = 0.72f - redHalation.coerceIn(0f, 1f) * 0.22f

        GLES30.glUseProgram(halationExtractBlurHProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, halationFboId[0])
        GLES30.glViewport(0, 0, dsW, dsH)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, sourceTexId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(halationExtractBlurHProgram, "uInputTexture"), 0)
        GLES30.glUniform2f(GLES30.glGetUniformLocation(halationExtractBlurHProgram, "uTexelSize"), texelW, texelH)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(halationExtractBlurHProgram, "uThreshold"), threshold)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(halationExtractBlurHProgram, "uStrength"), redHalation)
        drawSimpleQuad(halationExtractBlurHProgram)

        GLES30.glUseProgram(halationBlurVProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, halationFboId[1])
        GLES30.glViewport(0, 0, dsW, dsH)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, halationTexId[0])
        GLES30.glUniform1i(GLES30.glGetUniformLocation(halationBlurVProgram, "uInputTexture"), 0)
        GLES30.glUniform2f(GLES30.glGetUniformLocation(halationBlurVProgram, "uTexelSize"), texelW, texelH)
        drawSimpleQuad(halationBlurVProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
    }

    private fun setupBloomFbos(width: Int, height: Int): Boolean {
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
        val count = widths.size
        if (bloomSourceWidth == width &&
            bloomSourceHeight == height &&
            bloomMipCount == count &&
            bloomTexId.isNotEmpty() &&
            bloomMipWidths.contentEquals(widths.toIntArray()) &&
            bloomMipHeights.contentEquals(heights.toIntArray())
        ) {
            return true
        }

        releaseBloomFbos()
        bloomSourceWidth = width
        bloomSourceHeight = height
        bloomMipCount = count
        bloomMipWidths = widths.toIntArray()
        bloomMipHeights = heights.toIntArray()
        bloomTexId = IntArray(count)
        bloomFboId = IntArray(count)

        for (i in 0 until count) {
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
            GLES30.glFramebufferTexture2D(
                GLES30.GL_FRAMEBUFFER,
                GLES30.GL_COLOR_ATTACHMENT0,
                GLES30.GL_TEXTURE_2D,
                t[0],
                0
            )
            bloomTexId[i] = t[0]
            bloomFboId[i] = f[0]
            val status = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER)
            if (status != GLES30.GL_FRAMEBUFFER_COMPLETE) {
                PLog.e(TAG, "Bloom mip framebuffer[$i] not complete: $status")
                releaseBloomFbos()
                GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
                GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
                return false
            }
        }
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        return true
    }

    private fun releaseBloomFbos() {
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

    private fun renderLdrBloom(targetFboId: Int, width: Int, height: Int, sourceTexId: Int) {
        if (!ensureBloomPrograms()) {
            drawFboToScreen(targetFboId, width, height, sourceTexId)
            return
        }
        if (bloom <= 0.001f || bloomDownsampleFirstProgram == 0 || bloomDownsampleProgram == 0 ||
            bloomUpsampleProgram == 0 || bloomCompositeProgram == 0
        ) {
            drawFboToScreen(targetFboId, width, height, sourceTexId)
            return
        }
        if (!setupBloomFbos(width, height)) {
            drawFboToScreen(targetFboId, width, height, sourceTexId)
            return
        }
        if (bloomMipCount <= 0) {
            drawFboToScreen(targetFboId, width, height, sourceTexId)
            return
        }

        val thresholdPrecomputations = BloomLdrSettings.thresholdPrecomputations()

        GLES30.glDisable(GLES30.GL_BLEND)
        GLES30.glUseProgram(bloomDownsampleFirstProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, bloomFboId[0])
        GLES30.glViewport(0, 0, bloomMipWidths[0], bloomMipHeights[0])
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, sourceTexId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(bloomDownsampleFirstProgram, "uInputTexture"), 0)
        GLES30.glUniform2f(GLES30.glGetUniformLocation(bloomDownsampleFirstProgram, "uInputTexelSize"), 1f / width, 1f / height)
        GLES30.glUniform4f(
            GLES30.glGetUniformLocation(bloomDownsampleFirstProgram, "uThreshold"),
            thresholdPrecomputations[0],
            thresholdPrecomputations[1],
            thresholdPrecomputations[2],
            thresholdPrecomputations[3]
        )
        drawSimpleQuad(bloomDownsampleFirstProgram)

        for (mip in 1 until bloomMipCount) {
            GLES30.glUseProgram(bloomDownsampleProgram)
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, bloomFboId[mip])
            GLES30.glViewport(0, 0, bloomMipWidths[mip], bloomMipHeights[mip])
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, bloomTexId[mip - 1])
            GLES30.glUniform1i(GLES30.glGetUniformLocation(bloomDownsampleProgram, "uInputTexture"), 0)
            GLES30.glUniform2f(
                GLES30.glGetUniformLocation(bloomDownsampleProgram, "uInputTexelSize"),
                1f / bloomMipWidths[mip - 1],
                1f / bloomMipHeights[mip - 1]
            )
            drawSimpleQuad(bloomDownsampleProgram)
        }

        GLES30.glEnable(GLES30.GL_BLEND)
        GLES30.glBlendEquation(GLES30.GL_FUNC_ADD)
        GLES30.glBlendFunc(GLES30.GL_CONSTANT_COLOR, GLES30.GL_ONE)
        GLES30.glUseProgram(bloomUpsampleProgram)
        for (mip in bloomMipCount - 1 downTo 1) {
            val blend = BloomLdrSettings.mipAddWeight(mip, bloomMipCount, bloom)
            GLES30.glBlendColor(blend, blend, blend, blend)
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, bloomFboId[mip - 1])
            GLES30.glViewport(0, 0, bloomMipWidths[mip - 1], bloomMipHeights[mip - 1])
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, bloomTexId[mip])
            GLES30.glUniform1i(GLES30.glGetUniformLocation(bloomUpsampleProgram, "uInputTexture"), 0)
            GLES30.glUniform2f(
                GLES30.glGetUniformLocation(bloomUpsampleProgram, "uInputTexelSize"),
                1f / bloomMipWidths[mip],
                1f / bloomMipHeights[mip]
            )
            drawSimpleQuad(bloomUpsampleProgram)
        }
        GLES30.glDisable(GLES30.GL_BLEND)

        val finalBlend = BloomLdrSettings.compositeStrength(bloom)
        val compositeMipLower = BloomLdrSettings.compositeMipLowerIndex(bloomMipCount, bloom)
        val compositeMipUpper = BloomLdrSettings.compositeMipUpperIndex(bloomMipCount, bloom)
        val compositeMipBlend = BloomLdrSettings.compositeMipBlend(bloomMipCount, bloom)
        drawFboToScreen(targetFboId, width, height, sourceTexId)
        GLES30.glEnable(GLES30.GL_BLEND)
        GLES30.glBlendEquation(GLES30.GL_FUNC_ADD)
        GLES30.glBlendFunc(GLES30.GL_ONE, GLES30.GL_ONE)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, targetFboId)
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
        drawSimpleQuad(bloomCompositeProgram)
        GLES30.glDisable(GLES30.GL_BLEND)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
    }

    private fun setupPostProcessScratchFbo(width: Int, height: Int) {
        if (postProcessScratchFboId != 0 &&
            postProcessScratchTextureId != 0 &&
            postProcessScratchWidth == width &&
            postProcessScratchHeight == height
        ) {
            return
        }
        if (postProcessScratchFboId != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(postProcessScratchFboId), 0)
        if (postProcessScratchTextureId != 0) GLES30.glDeleteTextures(1, intArrayOf(postProcessScratchTextureId), 0)
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
        postProcessScratchFboId = f[0]
        postProcessScratchTextureId = t[0]
        postProcessScratchWidth = width
        postProcessScratchHeight = height
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
    }

    private fun ensureClarityPrograms(): Boolean {
        if (clarityDownsampleProgram != 0 && clarityCompositeProgram != 0) return true

        val vertexShader = GlUtils.compileShader(GLES30.GL_VERTEX_SHADER, Shaders.SIMPLE_VERTEX_SHADER)
        val downsampleShader = GlUtils.compileShader(GLES30.GL_FRAGMENT_SHADER, ClarityShaders.DOWNSAMPLE)
        val compositeShader = GlUtils.compileShader(GLES30.GL_FRAGMENT_SHADER, ClarityShaders.COMPOSITE)
        if (vertexShader == 0 || downsampleShader == 0 || compositeShader == 0) {
            if (vertexShader != 0) GLES30.glDeleteShader(vertexShader)
            if (downsampleShader != 0) GLES30.glDeleteShader(downsampleShader)
            if (compositeShader != 0) GLES30.glDeleteShader(compositeShader)
            PLog.e(TAG, "Failed to compile clarity preview shaders")
            return false
        }

        clarityDownsampleProgram = GlUtils.linkProgram(vertexShader, downsampleShader)
        clarityCompositeProgram = GlUtils.linkProgram(vertexShader, compositeShader)
        GLES30.glDeleteShader(vertexShader)
        GLES30.glDeleteShader(downsampleShader)
        GLES30.glDeleteShader(compositeShader)
        if (clarityDownsampleProgram == 0 || clarityCompositeProgram == 0) {
            GlUtils.deleteProgram(clarityDownsampleProgram)
            GlUtils.deleteProgram(clarityCompositeProgram)
            clarityDownsampleProgram = 0
            clarityCompositeProgram = 0
            PLog.e(TAG, "Failed to link clarity preview programs")
            return false
        }
        return true
    }

    private fun setupClarityPreviewFramebuffers(width: Int, height: Int): Boolean {
        if (
            clarityOutputWidth == width &&
            clarityOutputHeight == height &&
            clarityOutputTextureId != 0 &&
            clarityOutputFboId != 0 &&
            clarityPyramidTextureIds.all { it != 0 } &&
            clarityPyramidFboIds.all { it != 0 }
        ) {
            return true
        }

        val maxTextureSize = IntArray(1)
        GLES30.glGetIntegerv(GLES30.GL_MAX_TEXTURE_SIZE, maxTextureSize, 0)
        if (width <= 0 || height <= 0 || width > maxTextureSize[0] || height > maxTextureSize[0]) {
            PLog.e(
                TAG,
                "Clarity preview target ${width}x$height exceeds GL_MAX_TEXTURE_SIZE=${maxTextureSize[0]}"
            )
            return false
        }

        releaseClarityPreviewFramebuffers()
        var levelWidth = width
        var levelHeight = height
        for (level in 0 until CLARITY_PYRAMID_LEVELS) {
            levelWidth = maxOf(1, (levelWidth + 1) / 2)
            levelHeight = maxOf(1, (levelHeight + 1) / 2)
            val target = createClarityPreviewFramebuffer(
                width = levelWidth,
                height = levelHeight,
                internalFormat = GLES30.GL_RGBA16F,
                label = "pyramid[$level]",
            ) ?: run {
                releaseClarityPreviewFramebuffers()
                return false
            }
            clarityPyramidTextureIds[level] = target.first
            clarityPyramidFboIds[level] = target.second
            clarityPyramidWidths[level] = levelWidth
            clarityPyramidHeights[level] = levelHeight
        }

        val output = createClarityPreviewFramebuffer(
            width = width,
            height = height,
            internalFormat = GLES30.GL_RGBA8,
            label = "output",
        ) ?: run {
            releaseClarityPreviewFramebuffers()
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

    private fun createClarityPreviewFramebuffer(
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
                "Clarity preview $label framebuffer allocation failed: status=$status glError=$error"
            )
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
            GLES30.glDeleteFramebuffers(1, framebuffer, 0)
            GLES30.glDeleteTextures(1, texture, 0)
            return null
        }
        return texture[0] to framebuffer[0]
    }

    private fun releaseClarityPreviewFramebuffers() {
        for (level in 0 until CLARITY_PYRAMID_LEVELS) {
            if (clarityPyramidTextureIds[level] != 0) {
                GLES30.glDeleteTextures(1, intArrayOf(clarityPyramidTextureIds[level]), 0)
                clarityPyramidTextureIds[level] = 0
            }
            if (clarityPyramidFboIds[level] != 0) {
                GLES30.glDeleteFramebuffers(1, intArrayOf(clarityPyramidFboIds[level]), 0)
                clarityPyramidFboIds[level] = 0
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

    private fun setupFilmGrainSourceFramebuffer(width: Int, height: Int): Boolean {
        if (
            filmGrainSourceTextureId != 0 &&
            filmGrainSourceFboId != 0 &&
            filmGrainSourceWidth == width &&
            filmGrainSourceHeight == height
        ) {
            return true
        }

        releaseFilmGrainSourceFramebuffer()
        val maxTextureSize = IntArray(1)
        GLES30.glGetIntegerv(GLES30.GL_MAX_TEXTURE_SIZE, maxTextureSize, 0)
        if (width <= 0 || height <= 0 || width > maxTextureSize[0] || height > maxTextureSize[0]) {
            PLog.e(TAG, "Film grain source ${width}x$height exceeds GL_MAX_TEXTURE_SIZE=${maxTextureSize[0]}")
            return false
        }

        val texture = IntArray(1)
        GLES30.glGenTextures(1, texture, 0)
        filmGrainSourceTextureId = texture[0]
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, filmGrainSourceTextureId)
        GLES30.glTexStorage2D(GLES30.GL_TEXTURE_2D, 1, GLES30.GL_RGBA8, width, height)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)

        val framebuffer = IntArray(1)
        GLES30.glGenFramebuffers(1, framebuffer, 0)
        filmGrainSourceFboId = framebuffer[0]
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, filmGrainSourceFboId)
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER,
            GLES30.GL_COLOR_ATTACHMENT0,
            GLES30.GL_TEXTURE_2D,
            filmGrainSourceTextureId,
            0,
        )
        val status = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER)
        val error = GLES30.glGetError()
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        if (status != GLES30.GL_FRAMEBUFFER_COMPLETE || error != GLES30.GL_NO_ERROR) {
            PLog.e(TAG, "Film grain source framebuffer incomplete: status=$status glError=$error")
            releaseFilmGrainSourceFramebuffer()
            return false
        }
        filmGrainSourceWidth = width
        filmGrainSourceHeight = height
        return true
    }

    private fun releaseFilmGrainSourceFramebuffer() {
        if (filmGrainSourceFboId != 0) {
            GLES30.glDeleteFramebuffers(1, intArrayOf(filmGrainSourceFboId), 0)
            filmGrainSourceFboId = 0
        }
        if (filmGrainSourceTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(filmGrainSourceTextureId), 0)
            filmGrainSourceTextureId = 0
        }
        filmGrainSourceWidth = 0
        filmGrainSourceHeight = 0
    }

    private fun clearClarityPreviewBindings() {
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        for (textureUnit in CLARITY_PYRAMID_LEVELS downTo 0) {
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + textureUnit)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        }
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glUseProgram(0)
    }

    private fun renderClarityPreview(
        sourceTextureId: Int,
        width: Int,
        height: Int,
        strength: Float,
    ): Int {
        if (abs(strength) <= 0.001f) return sourceTextureId
        if (!ensureClarityPrograms()) return sourceTextureId

        val upstreamError = GLES30.glGetError()
        if (upstreamError != GLES30.GL_NO_ERROR) {
            PLog.e(TAG, "renderClarityPreview skipped after upstream glError $upstreamError")
            return sourceTextureId
        }
        if (!setupClarityPreviewFramebuffers(width, height)) return sourceTextureId

        GLES30.glDisable(GLES30.GL_BLEND)
        var inputTextureId = sourceTextureId
        var inputWidth = width
        var inputHeight = height
        for (level in 0 until CLARITY_PYRAMID_LEVELS) {
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, clarityPyramidFboIds[level])
            GLES30.glViewport(0, 0, clarityPyramidWidths[level], clarityPyramidHeights[level])
            GLES30.glUseProgram(clarityDownsampleProgram)
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
            drawSimpleQuad(clarityDownsampleProgram)
            val error = GLES30.glGetError()
            if (error != GLES30.GL_NO_ERROR) {
                clearClarityPreviewBindings()
                PLog.e(TAG, "renderClarityPreview pyramid[$level] glError $error")
                return sourceTextureId
            }
            inputTextureId = clarityPyramidTextureIds[level]
            inputWidth = clarityPyramidWidths[level]
            inputHeight = clarityPyramidHeights[level]
        }

        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, clarityOutputFboId)
        GLES30.glViewport(0, 0, width, height)
        GLES30.glUseProgram(clarityCompositeProgram)
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
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, clarityPyramidTextureIds[level])
            GLES30.glUniform1i(
                GLES30.glGetUniformLocation(clarityCompositeProgram, lumaUniforms[level]),
                textureUnit,
            )
        }
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(clarityCompositeProgram, "uClarity"),
            strength.coerceIn(-1f, 1f),
        )
        drawSimpleQuad(clarityCompositeProgram)
        val error = GLES30.glGetError()
        clearClarityPreviewBindings()
        if (error != GLES30.GL_NO_ERROR) {
            PLog.e(TAG, "renderClarityPreview glError $error")
            return sourceTextureId
        }
        return clarityOutputTextureId
    }

    private fun drawPostProcessEffects(targetFboId: Int, width: Int, height: Int, sourceTextureId: Int) {
        val hdfEnabled = halation > 0.001f
        val halationEnabled = redHalation > 0.001f
        val bloomEnabled = bloom > 0.001f
        val softLightEnabled = softLight > 0.001f
        val compositeEnabled = hdfEnabled || halationEnabled || softLightEnabled

        if (hdfEnabled) {
            renderHdfPreviewBlur(sourceTextureId, width, height)
        }
        if (softLightEnabled) {
            renderSoftLightPreviewBlur(sourceTextureId, width, height)
        }
        if (halationEnabled) {
            renderHalationPreviewBlur(sourceTextureId, width, height)
        }

        if (compositeEnabled && bloomEnabled) {
            setupPostProcessScratchFbo(width, height)
            drawPostProcessComposite(postProcessScratchFboId, width, height, sourceTextureId)
            renderLdrBloom(targetFboId, width, height, postProcessScratchTextureId)
        } else if (bloomEnabled) {
            renderLdrBloom(targetFboId, width, height, sourceTextureId)
        } else if (compositeEnabled) {
            drawPostProcessComposite(targetFboId, width, height, sourceTextureId)
        } else {
            drawFboToScreen(targetFboId, width, height, sourceTextureId)
        }
    }

    private fun drawPostProcessComposite(targetFboId: Int, width: Int, height: Int, sourceTextureId: Int) {
        if (!ensurePostProcessCompositeProgram()) return
        if (hdfCompositeProgram == 0) return
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, targetFboId)
        GLES30.glViewport(0, 0, width, height)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
        GLES30.glUseProgram(hdfCompositeProgram)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, sourceTextureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(hdfCompositeProgram, "uOriginalTexture"), 0)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE1)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, hdfTexId[1])
        GLES30.glUniform1i(GLES30.glGetUniformLocation(hdfCompositeProgram, "uBloomTexture"), 1)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(hdfCompositeProgram, "uHalation"), halation)

        GLES30.glActiveTexture(GLES30.GL_TEXTURE2)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, if (redHalation > 0f) halationTexId[1] else 0)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(hdfCompositeProgram, "uRedHalationTexture"), 2)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(hdfCompositeProgram, "uRedHalation"), redHalation)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE3)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, if (softLight > 0f) softLightTexId[1] else 0)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(hdfCompositeProgram, "uSoftLightTexture"), 3)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(hdfCompositeProgram, "uSoftLight"), softLight)
        drawSimpleQuad(hdfCompositeProgram)
    }

    private fun getPreviewSpatialEffectScale(width: Int, height: Int): Float {
        val previewLongEdge = maxOf(width, height).coerceAtLeast(1)
        val captureLongEdge = maxOf(photoCaptureWidth, photoCaptureHeight).coerceAtLeast(previewLongEdge)
        val scale = (previewLongEdge.toFloat() / captureLongEdge.toFloat()).coerceIn(0.25f, 1f)
        if (abs(scale - lastLoggedSpatialEffectScale) > 0.01f) {
            lastLoggedSpatialEffectScale = scale
//            PLog.d(
//                TAG,
//                "Preview spatial effect scale=$scale preview=${width}x${height} capture=${photoCaptureWidth}x${photoCaptureHeight}"
//            )
        }
        return scale
    }

    /** 使用 VBO 绘制全屏四边形（用于 HDF Pass，使用 SIMPLE_VERTEX_SHADER） */
    private fun drawSimpleQuad(program: Int) {
        val posLoc = GLES30.glGetAttribLocation(program, "aPosition")
        val texLoc = GLES30.glGetAttribLocation(program, "aTexCoord")
        GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, vertexBufferId)
        GLES30.glEnableVertexAttribArray(posLoc)
        GLES30.glVertexAttribPointer(posLoc, POSITION_COMPONENT_COUNT, GLES30.GL_FLOAT, false, 0, 0)
        GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, texCoordBufferId)
        GLES30.glEnableVertexAttribArray(texLoc)
        GLES30.glVertexAttribPointer(texLoc, TEXTURE_COORD_COMPONENT_COUNT, GLES30.GL_FLOAT, false, 0, 0)
        GLES30.glBindBuffer(GLES30.GL_ELEMENT_ARRAY_BUFFER, indexBufferId)
        GLES30.glDrawElements(GLES30.GL_TRIANGLES, Shaders.DRAW_ORDER.size, GLES30.GL_UNSIGNED_SHORT, 0)
        GLES30.glDisableVertexAttribArray(posLoc)
        GLES30.glDisableVertexAttribArray(texLoc)
        GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, 0)
        GLES30.glBindBuffer(GLES30.GL_ELEMENT_ARRAY_BUFFER, 0)
    }

    private fun initPassthroughProgram() {
        val vertexShader = GlUtils.compileShader(GLES30.GL_VERTEX_SHADER, Shaders.VERTEX_SHADER)
        val fragmentShader = GlUtils.compileShader(GLES30.GL_FRAGMENT_SHADER, Shaders.FRAGMENT_SHADER_PASSTHROUGH)

        if (vertexShader == 0 || fragmentShader == 0) {
            PLog.e(TAG, "Failed to compile passthrough shaders")
            return
        }

        passthroughProgramId = GlUtils.linkProgram(vertexShader, fragmentShader)
        GLES30.glDeleteShader(vertexShader)
        GLES30.glDeleteShader(fragmentShader)

        if (passthroughProgramId != 0) {
            uPassMVPMatrixLocation = GLES30.glGetUniformLocation(passthroughProgramId, "uMVPMatrix")
            uPassSTMatrixLocation = GLES30.glGetUniformLocation(passthroughProgramId, "uSTMatrix")
            uPassCameraTextureLocation = GLES30.glGetUniformLocation(passthroughProgramId, "uCameraTexture")
            aPassPositionLocation = GLES30.glGetAttribLocation(passthroughProgramId, "aPosition")
            aPassTexCoordLocation = GLES30.glGetAttribLocation(passthroughProgramId, "aTexCoord")
        }
    }

    private fun initMeteringFbo() {
        if (meteringFboId != 0 && meteringTextureId != 0) return
        if (meteringFboId != 0) {
            GLES30.glDeleteFramebuffers(1, intArrayOf(meteringFboId), 0)
            meteringFboId = 0
        }
        if (meteringTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(meteringTextureId), 0)
            meteringTextureId = 0
        }
        val fbos = IntArray(1)
        GLES30.glGenFramebuffers(1, fbos, 0)
        meteringFboId = fbos[0]

        val textures = IntArray(1)
        GLES30.glGenTextures(1, textures, 0)
        meteringTextureId = textures[0]

        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, meteringTextureId)
        GLES30.glTexImage2D(
            GLES30.GL_TEXTURE_2D, 0, GLES30.GL_RGBA,
            METERING_SIZE, METERING_SIZE, 0, GLES30.GL_RGBA, GLES30.GL_UNSIGNED_BYTE, null
        )
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)

        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, meteringFboId)
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0,
            GLES30.GL_TEXTURE_2D, meteringTextureId, 0
        )

        val status = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER)
        if (status != GLES30.GL_FRAMEBUFFER_COMPLETE) {
            PLog.e(TAG, "Failed to create metering FBO: $status")
        }

        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
    }

    private fun initCaptureFbo(width: Int, height: Int) {
        if (captureFboId != 0) {
            GLES30.glDeleteFramebuffers(1, intArrayOf(captureFboId), 0)
            captureFboId = 0
        }
        if (captureTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(captureTextureId), 0)
            captureTextureId = 0
        }

        val fbos = IntArray(1)
        GLES30.glGenFramebuffers(1, fbos, 0)
        captureFboId = fbos[0]

        val textures = IntArray(1)
        GLES30.glGenTextures(1, textures, 0)
        captureTextureId = textures[0]

        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, captureTextureId)
        GLES30.glTexImage2D(
            GLES30.GL_TEXTURE_2D, 0, GLES30.GL_RGBA,
            width, height, 0, GLES30.GL_RGBA, GLES30.GL_UNSIGNED_BYTE, null
        )
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)

        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, captureFboId)
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0,
            GLES30.GL_TEXTURE_2D, captureTextureId, 0
        )
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
    }

    /**
     * 初始化顶点缓冲
     */
    private fun initBuffers() {
        // 顶点位置缓冲
        val vertexBuffer = GlUtils.createFloatBuffer(Shaders.FULL_QUAD_VERTICES)
        val vertexBufferIds = IntArray(1)
        GLES30.glGenBuffers(1, vertexBufferIds, 0)
        vertexBufferId = vertexBufferIds[0]
        GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, vertexBufferId)
        GLES30.glBufferData(
            GLES30.GL_ARRAY_BUFFER,
            Shaders.FULL_QUAD_VERTICES.size * BYTES_PER_FLOAT,
            vertexBuffer,
            GLES30.GL_STATIC_DRAW
        )

        // 纹理坐标缓冲
        val texCoordBuffer = GlUtils.createFloatBuffer(Shaders.TEXTURE_COORDS)
        val texCoordBufferIds = IntArray(1)
        GLES30.glGenBuffers(1, texCoordBufferIds, 0)
        texCoordBufferId = texCoordBufferIds[0]
        GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, texCoordBufferId)
        GLES30.glBufferData(
            GLES30.GL_ARRAY_BUFFER,
            Shaders.TEXTURE_COORDS.size * BYTES_PER_FLOAT,
            texCoordBuffer,
            GLES30.GL_STATIC_DRAW
        )

        // 索引缓冲
        val indexBuffer = ByteBuffer.allocateDirect(Shaders.DRAW_ORDER.size * BYTES_PER_SHORT)
            .order(ByteOrder.nativeOrder())
            .asShortBuffer()
            .put(Shaders.DRAW_ORDER)
        indexBuffer.position(0)

        val indexBufferIds = IntArray(1)
        GLES30.glGenBuffers(1, indexBufferIds, 0)
        indexBufferId = indexBufferIds[0]
        GLES30.glBindBuffer(GLES30.GL_ELEMENT_ARRAY_BUFFER, indexBufferId)
        GLES30.glBufferData(
            GLES30.GL_ELEMENT_ARRAY_BUFFER,
            Shaders.DRAW_ORDER.size * BYTES_PER_SHORT,
            indexBuffer,
            GLES30.GL_STATIC_DRAW
        )

        GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, 0)
        GLES30.glBindBuffer(GLES30.GL_ELEMENT_ARRAY_BUFFER, 0)
    }

    /**
     * 设置 LUT
     * 注意：需要在 GL 线程中调用
     */
    fun setLut(lutConfig: LutConfig?) {
        // 如果 Surface 尚未创建，保存配置稍后处理
        if (!surfaceReady) {
            currentLutConfig = lutConfig
            pendingLutConfig = lutConfig
            return
        }

        setLutInternal(lutConfig)
    }

    fun setBaselineLut(lutConfig: LutConfig?) {
        if (!surfaceReady) {
            currentBaselineLutConfig = lutConfig
            pendingBaselineLutConfig = lutConfig
            return
        }
        setBaselineLutInternal(lutConfig)
    }

    /**
     * 内部方法：实际设置 LUT
     * 仅在 Surface 已创建后调用
     */
    private fun setLutInternal(lutConfig: LutConfig?) {
        // 删除旧的 LUT 纹理
        if (lutTextureId != 0) {
            GlUtils.deleteTexture(lutTextureId)
            lutTextureId = 0
        }

        currentLutConfig = lutConfig

        if (lutConfig != null && lutConfig.isValid()) {
            lutTextureId = GlUtils.create3DTexture(lutConfig)
            lutSize = lutConfig.size.toFloat()
            lutEnabled = true
//            PLog.d(TAG, "LUT set: ${lutConfig.title}, size: ${lutConfig.size}")
        } else {
            lutEnabled = false
        }
    }

    private fun setBaselineLutInternal(lutConfig: LutConfig?) {
        if (baselineLutTextureId != 0) {
            GlUtils.deleteTexture(baselineLutTextureId)
            baselineLutTextureId = 0
        }

        currentBaselineLutConfig = lutConfig

        if (lutConfig != null && lutConfig.isValid()) {
            baselineLutTextureId = GlUtils.create3DTexture(lutConfig)
            baselineLutSize = lutConfig.size.toFloat()
            baselineLutEnabled = true
        } else {
            baselineLutEnabled = false
        }
    }

    /**
     * App 从后台恢复时，GLSurfaceView 可能保留了 Kotlin 层的 LUT 选择状态，
     * 但底层 GL texture 已随 Surface/Context 生命周期失效。按当前配置强制重建，
     * 避免 UI 仍显示已选 LUT 而预览实际走无 LUT 路径。
     */
    fun restoreLutTexturesAfterResume() {
        if (!surfaceReady) {
            // Surface 还没重建时，保留已经排队的配置，不要被当前缓存的 null 覆盖掉。
            pendingLutConfig = pendingLutConfig ?: currentLutConfig
            pendingBaselineLutConfig = pendingBaselineLutConfig ?: currentBaselineLutConfig
            PLog.d(TAG, "restore LUT deferred: surface not ready")
            return
        }

        currentBaselineLutConfig?.let { config ->
            PLog.d(TAG, "restore baseline LUT texture after resume: ${config.title}")
            setBaselineLutInternal(config)
        }

        currentLutConfig?.let { config ->
            PLog.d(TAG, "restore LUT texture after resume: ${config.title}")
            setLutInternal(config)
        }
    }

    /**
     * 设置预览尺寸
     */
    fun setPreviewSize(width: Int, height: Int) {
        val sizeChanged = previewWidth != width || previewHeight != height
        previewWidth = width
        previewHeight = height
        surfaceTexture?.setDefaultBufferSize(width, height)
        if (sizeChanged && previewStabilizationUseCase != null) {
            mgcEisHardwareBufferRenderer.release()
            mgcEisYuvRenderer.release()
            recreatePreviewStabilizationSession()
        }
        // 更新 MVP 矩阵以处理 center crop
        updateMVPMatrix()
        updateCaptureSize()
    }

    fun setStabilizationInputSize(width: Int, height: Int) {
        if (width <= 0 || height <= 0 ||
            (stabilizationInputWidth == width && stabilizationInputHeight == height)
        ) {
            return
        }
        stabilizationInputWidth = width
        stabilizationInputHeight = height
        if (previewStabilizationUseCase != null) {
            mgcEisHardwareBufferRenderer.release()
            mgcEisYuvRenderer.release()
            recreatePreviewStabilizationSession()
        }
    }

    fun setStabilizationCoordinator(coordinator: RealtimeStabilizationCoordinator?) {
        if (stabilizationCoordinator === coordinator) return
        stabilizationCoordinator = coordinator
        recreatePreviewStabilizationSession()
    }

    private var previewStabilizationLookahead = DEFAULT_VIDEO_STABILIZATION_LOOKAHEAD

    fun setPreviewStabilization(
        useCase: StabilizationUseCase?,
        strength: Float,
        lookaheadFrames: Int = DEFAULT_VIDEO_STABILIZATION_LOOKAHEAD,
    ) {
        val normalizedStrength = normalizeStabilizationStrength(strength)
        val normalizedLookahead = normalizeStabilizationLookahead(lookaheadFrames)
        if (previewStabilizationUseCase == useCase &&
            abs(previewStabilizationStrength - normalizedStrength) <= 0.0001f &&
            previewStabilizationLookahead == normalizedLookahead
        ) {
            return
        }
        previewStabilizationUseCase = useCase
        previewStabilizationStrength = normalizedStrength
        previewStabilizationLookahead = normalizedLookahead
        PLog.i(
            TAG,
            "Preview stabilization useCase=${useCase?.name ?: "OFF"}, " +
                "strength=$normalizedStrength, lookahead=$normalizedLookahead"
        )
        recreatePreviewStabilizationSession()
    }

    private fun recreatePreviewStabilizationSession() {
        stabilizationSession?.stop()
        mgcEisPresentationTransform.reset()
        stabilizationSession = previewStabilizationUseCase?.let { useCase ->
            stabilizationCoordinator?.createSession(
                useCase = useCase,
                strength = previewStabilizationStrength,
                frameWidth = stabilizationInputWidth,
                frameHeight = stabilizationInputHeight,
                lookaheadFrames = previewStabilizationLookahead,
                onFrameAvailable = { onRequestRender?.invoke() },
            )
        }
        stabilizationSessionStarted = stabilizationSession?.start() == true
        currentCameraTextureSource = PreviewColorTextureSource.EXTERNAL_OES
        currentCameraTextureTarget = GLES11Ext.GL_TEXTURE_EXTERNAL_OES
        currentCameraTextureId = cameraTextureId
        currentCameraTextureMatrix = stMatrix
        currentFrameTimestampNs = 0L
    }

    /**
     * Uses MGC's HardwareBuffer/EGLImage renderer whenever the camera buffer and current EGL
     * context support it. The CPU YUV implementation is retained only for devices without that
     * platform import path.
     */
    private fun renderMgcEisFrame(
        frame: com.hinnka.mycamera.stabilization.StabilizationFrame,
    ): MgcEisHardwareBufferRenderer.Frame? {
        val hardwareRendered = mgcEisHardwareBufferRenderer.render(frame)
        if (hardwareRendered != null) {
            frame.image.close()
            return hardwareRendered
        }
        return mgcEisYuvRenderer.render(frame)?.let { rendered ->
            MgcEisHardwareBufferRenderer.Frame(rendered.timestampNs, rendered.textureId)
        }
    }

    fun setCaptureSize(width: Int, height: Int) {
        photoCaptureWidth = width.coerceAtLeast(0)
        photoCaptureHeight = height.coerceAtLeast(0)
    }

    fun setSourceCrop(crop: PhantomPipCrop) {
        val normalized = crop.normalized()
        cropRect[0] = normalized.left
        cropRect[1] = normalized.top
        cropRect[2] = normalized.right
        cropRect[3] = normalized.bottom
        updateMVPMatrix()
    }

    /**
     * 设置传感器方向 (硬件属性)
     */
    fun setSensorOrientation(orientation: Int) {
        if (sensorOrientation != orientation) {
            sensorOrientation = orientation
            updateMVPMatrix()
            updateCaptureSize()
        }
    }

    /**
     * 设置校正偏移 (用户设置)
     */
    fun setCalibrationOffset(offset: Int) {
        if (calibrationOffset != offset) {
            calibrationOffset = offset
            updateMVPMatrix()
            updateCaptureSize()
        }
    }

    /**
     * 设置设备旋转方向 (0, 90, 180, 270)
     */
    fun setDeviceRotation(degrees: Int) {
        if (deviceRotation != degrees) {
            deviceRotation = degrees
            updateMVPMatrix()
            updateCaptureSize()
        }
    }

    /**
     * 设置镜头朝向
     */
    fun setLensFacing(facing: Int) {
        if (lensFacing != facing) {
            lensFacing = facing
            updateMVPMatrix()
            updateCaptureSize()
        }
    }

    fun setCaptureAspectRatio(aspectRatio: Float) {
        val safeAspectRatio = aspectRatio.coerceAtLeast(0f)
        if (kotlin.math.abs(captureAspectRatio - safeAspectRatio) > 0.0001f) {
            captureAspectRatio = safeAspectRatio
            updateCaptureSize()
        }
    }

    /**
     * 计算相对于传感器的总旋转角度 (用于确定最终图片的宽高比)
     * 参考 CameraViewModel.saveImage 的逻辑
     */
    private fun calculateTotalRotation(): Int {
        val baseRotation = if (lensFacing == 0 /* CameraCharacteristics.LENS_FACING_FRONT */) {
            (sensorOrientation - deviceRotation + 360) % 360
        } else {
            (sensorOrientation + deviceRotation) % 360
        }
        return (baseRotation + calibrationOffset) % 360
    }

    /**
     * 计算 Live Photo 相对于竖屏编码画布需要应用的显示旋转。
     *
     * FBO 已经经过 SurfaceTexture 矩阵处理，镜头朝向及前摄镜像不会改变这里的显示旋转方向。
     * 因此必须与普通视频的 orientation hint 一致，直接使用设备旋转；前摄横屏若反向取角度，
     * 90/270 度会相差 180 度。
     */
    private fun getApplyRotation(): Int {
        return resolveLivePhotoRotationDegrees(deviceRotation, calibrationOffset)
    }

    /**
     * 更新 MVP 矩阵以实现 center crop 效果
     * 
     * 当预览尺寸与显示区域比例不匹配时，放大画面并裁切超出部分
     */
    private fun updateMVPMatrix() {
        val computedMatrix = buildMvpMatrix(viewportWidth, viewportHeight)
        System.arraycopy(computedMatrix, 0, mvpMatrix, 0, mvpMatrix.size)

//        PLog.d(
//            TAG,
//            "MVP matrix updated: viewport=${viewportWidth}x${viewportHeight}, preview=${previewWidth}x${previewHeight}"
//        )
    }

    private fun buildMvpMatrix(targetWidth: Int, targetHeight: Int): FloatArray {
        val matrix = FloatArray(16)
        Matrix.setIdentityM(matrix, 0)
        if (targetWidth <= 0 || targetHeight <= 0) {
            return matrix
        }

        val isSwapped = (sensorOrientation + calibrationOffset) % 180 != 0
        val cropWidth = (cropRect[2] - cropRect[0]).coerceAtLeast(0.05f)
        val cropHeight = (cropRect[3] - cropRect[1]).coerceAtLeast(0.05f)
        val previewAspect = if (isSwapped) {
            (previewHeight.toFloat() * cropHeight) / (previewWidth.toFloat() * cropWidth)
        } else {
            (previewWidth.toFloat() * cropWidth) / (previewHeight.toFloat() * cropHeight)
        }
        val viewAspect = targetWidth.toFloat() / targetHeight.toFloat()

        if (calibrationOffset != 0) {
            Matrix.rotateM(matrix, 0, (-calibrationOffset).toFloat(), 0f, 0f, 1f)
        }

        if (previewAspect != viewAspect) {
            val scaleX: Float
            val scaleY: Float
            if (viewAspect > previewAspect) {
                scaleX = 1f
                scaleY = viewAspect / previewAspect
            } else {
                scaleX = previewAspect / viewAspect
                scaleY = 1f
            }
            Matrix.scaleM(matrix, 0, scaleX, scaleY, 1f)
        }
        return matrix
    }

    private fun buildTextureMvpMatrix(
        sourceWidth: Int,
        sourceHeight: Int,
        targetWidth: Int,
        targetHeight: Int
    ): FloatArray {
        val matrix = FloatArray(16)
        Matrix.setIdentityM(matrix, 0)
        if (sourceWidth <= 0 || sourceHeight <= 0 || targetWidth <= 0 || targetHeight <= 0) {
            return matrix
        }

        val sourceAspect = sourceWidth.toFloat() / sourceHeight.toFloat()
        val targetAspect = targetWidth.toFloat() / targetHeight.toFloat()

        if (sourceAspect != targetAspect) {
            val scaleX: Float
            val scaleY: Float
            if (targetAspect > sourceAspect) {
                scaleX = 1f
                scaleY = targetAspect / sourceAspect
            } else {
                scaleX = sourceAspect / targetAspect
                scaleY = 1f
            }
            Matrix.scaleM(matrix, 0, scaleX, scaleY, 1f)
        }

        return matrix
    }

    private fun updateCaptureSize() {
        val targetAspectRatio = captureAspectRatio.takeIf { it > 0f } ?: run {
            val totalRotation = calculateTotalRotation()
            val isSwapped = totalRotation % 180 != 0
            val actualWidth = if (isSwapped) previewHeight else previewWidth
            val actualHeight = if (isSwapped) previewWidth else previewHeight
            actualWidth.toFloat() / actualHeight.coerceAtLeast(1).toFloat()
        }

        if (targetAspectRatio >= 1f) {
            captureWidth = captureMaxLongEdge
            captureHeight = (captureMaxLongEdge / targetAspectRatio).toInt()
        } else {
            captureHeight = captureMaxLongEdge
            captureWidth = (captureMaxLongEdge * targetAspectRatio).toInt()
        }
        captureWidth = captureWidth.coerceAtLeast(1)
        captureHeight = captureHeight.coerceAtLeast(1)
//        PLog.d(TAG, "Update capture size: ${captureWidth}x${captureHeight}, totalRotation: $totalRotation")
    }

    /**
     * 请求捕获预览帧
     * 会在下一帧渲染后捕获并通过回调返回
     */
    fun capturePreviewFrame(
        maxLongEdge: Int = DEFAULT_PREVIEW_CAPTURE_MAX_LONG_EDGE,
        source: PreviewCaptureSource = PreviewCaptureSource.FinalDisplay,
        onCaptured: (Bitmap) -> Unit
    ) {
        captureMaxLongEdge = maxLongEdge.coerceAtLeast(1)
        updateCaptureSize()
        pendingPreviewCaptureRequests.addLast(
            PreviewCaptureRequest(
                width = captureWidth,
                height = captureHeight,
                source = source,
                onCaptured = onCaptured
            )
        )
    }

    private fun capturePendingPreviewFrames(
        finalDisplayTextureId: Int?,
        finalDisplayWidth: Int,
        finalDisplayHeight: Int,
        compositeFinalDisplay: Boolean
    ) {
        while (pendingPreviewCaptureRequests.isNotEmpty()) {
            val request = pendingPreviewCaptureRequests.removeFirst()
            when (request.source) {
                PreviewCaptureSource.Original -> captureOriginalPreviewFrameInternal(request)

                PreviewCaptureSource.FinalDisplay -> capturePreviewFrameInternal(
                    request = request,
                    sourceTextureId = finalDisplayTextureId,
                    sourceWidth = finalDisplayWidth,
                    sourceHeight = finalDisplayHeight,
                    compositeWithHdf = compositeFinalDisplay
                )
            }
        }
    }

    /**
     * 内部方法：捕获当前帧为小尺寸 Bitmap
     * 必须在 GL 线程中调用
     */
    private fun capturePreviewFrameInternal(
        request: PreviewCaptureRequest,
        sourceTextureId: Int? = null,
        sourceWidth: Int = viewportWidth,
        sourceHeight: Int = viewportHeight,
        compositeWithHdf: Boolean = false,
        suppressColorLayers: Boolean = false
    ) {
        try {
            val targetWidth = request.width
            val targetHeight = request.height
            if (targetWidth != lastCaptureWidth || targetHeight != lastCaptureHeight) {
                initCaptureFbo(targetWidth, targetHeight)
                lastCaptureWidth = targetWidth
                lastCaptureHeight = targetHeight
            }

            if (sourceTextureId != null && sourceTextureId != 0) {
                if (compositeWithHdf) {
                    drawPostProcessEffects(captureFboId, targetWidth, targetHeight, sourceTextureId)
                } else {
                    drawFboToScreen(
                        fboId = captureFboId,
                        width = targetWidth,
                        height = targetHeight,
                        sourceTextureId = sourceTextureId,
                        targetMvpMatrix = buildTextureMvpMatrix(
                            sourceWidth = sourceWidth,
                            sourceHeight = sourceHeight,
                            targetWidth = targetWidth,
                            targetHeight = targetHeight
                        )
                    )
                }
            } else {
                drawInternal(
                    fboId = captureFboId,
                    width = targetWidth,
                    height = targetHeight,
                    targetMvpMatrix = buildMvpMatrix(targetWidth, targetHeight),
                    suppressBaselineLayer = suppressColorLayers,
                    suppressCreativeLayer = suppressColorLayers
                )
            }

            // 2. 读取像素
            // drawInternal 中的附加 pass 可能改变 framebuffer；读回必须以本次请求的
            // capture FBO 为唯一来源，不能依赖调用链遗留的 GL 绑定状态。
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, captureFboId)
            GLES30.glViewport(0, 0, targetWidth, targetHeight)
            val pixelSize = targetWidth * targetHeight * 4
            if (pboId == 0) {
                val pbos = IntArray(1)
                GLES30.glGenBuffers(1, pbos, 0)
                pboId = pbos[0]
            }

            GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, pboId)
            GLES30.glBufferData(GLES30.GL_PIXEL_PACK_BUFFER, pixelSize, null, GLES30.GL_STREAM_READ)
            GLES30.glReadPixels(0, 0, targetWidth, targetHeight, GLES30.GL_RGBA, GLES30.GL_UNSIGNED_BYTE, 0)

            val mappedBuffer = GLES30.glMapBufferRange(
                GLES30.GL_PIXEL_PACK_BUFFER, 0, pixelSize, GLES30.GL_MAP_READ_BIT
            ) as? ByteBuffer

            if (mappedBuffer == null) {
                GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, 0)
                return
            }

            val bitmap = Bitmap.createBitmap(targetWidth, targetHeight, Bitmap.Config.ARGB_8888)
            bitmap.copyPixelsFromBuffer(mappedBuffer)
            GLES30.glUnmapBuffer(GLES30.GL_PIXEL_PACK_BUFFER)

            // 翻转 Y 轴并返回
            val matrix = android.graphics.Matrix()
            matrix.preScale(1f, -1f)
            val finalBitmap = Bitmap.createBitmap(bitmap, 0, 0, targetWidth, targetHeight, matrix, false)
            bitmap.recycle()
            request.onCaptured(finalBitmap)

            // 3. 恢复环境
            GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, 0)
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
            GLES30.glViewport(0, 0, viewportWidth, viewportHeight)

        } catch (e: Exception) {
            PLog.e(TAG, "Failed to capture preview frame", e)
        }
    }

    private fun captureOriginalPreviewFrameInternal(request: PreviewCaptureRequest) {
        capturePreviewFrameInternal(
            request = request,
            suppressColorLayers = true
        )
    }

    private var lastRunMeteringTime = 0L

    private fun runMeteringInternal(
        sourceTextureId: Int? = null,
        sourceWidth: Int = viewportWidth,
        sourceHeight: Int = viewportHeight,
        compositeWithHdf: Boolean = false
    ) {
        val pixelSize = METERING_SIZE * METERING_SIZE * 4
        if (!ensurePixelPackPbos(meteringPboIds, pixelSize)) return

        val writeIndex = meteringPboIndex % 2
        val readIndex = (meteringPboIndex + 1) % 2
        val completedBytes = if (meteringPboIndex > 0) {
            readReadyPixelPackBuffer(meteringPboIds, meteringPboFences, readIndex, pixelSize)
        } else {
            null
        }
        val currentFocus = focusPoint?.let { PointF(it.x, it.y) }
        val currentMode = meteringMode

        val now = System.currentTimeMillis()
        if (now - lastRunMeteringTime < 100) {
            dispatchMeteringCalculation(completedBytes, currentFocus, currentMode)
            return
        }
        if (!isPixelPackBufferWritable(meteringPboFences, writeIndex)) {
            dispatchMeteringCalculation(completedBytes, currentFocus, currentMode)
            return
        }
        lastRunMeteringTime = now

        try {
            if (sourceTextureId != null && sourceTextureId != 0) {
                if (compositeWithHdf) {
                    drawPostProcessEffects(meteringFboId, METERING_SIZE, METERING_SIZE, sourceTextureId)
                } else {
                    drawFboToScreen(
                        fboId = meteringFboId,
                        width = METERING_SIZE,
                        height = METERING_SIZE,
                        sourceTextureId = sourceTextureId,
                        targetMvpMatrix = buildTextureMvpMatrix(
                            sourceWidth = sourceWidth,
                            sourceHeight = sourceHeight,
                            targetWidth = METERING_SIZE,
                            targetHeight = METERING_SIZE
                        )
                    )
                }
            } else {
                drawInternal(
                    fboId = meteringFboId,
                    width = METERING_SIZE,
                    height = METERING_SIZE,
                    targetMvpMatrix = buildMvpMatrix(METERING_SIZE, METERING_SIZE),
                    suppressBaselineLayer = true,
                    suppressCreativeLayer = true,
                )
            }

            GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, meteringPboIds[writeIndex])
            GLES30.glReadPixels(0, 0, METERING_SIZE, METERING_SIZE, GLES30.GL_RGBA, GLES30.GL_UNSIGNED_BYTE, 0)
            meteringPboFences[writeIndex] = GLES30.glFenceSync(GLES30.GL_SYNC_GPU_COMMANDS_COMPLETE, 0)
            meteringPboIndex++
        } finally {
            restorePixelReadbackState()
        }

        dispatchMeteringCalculation(completedBytes, currentFocus, currentMode)
    }

    private fun ensurePixelPackPbos(pboIds: IntArray, pixelSize: Int): Boolean {
        if (pboIds[0] != 0 && pboIds[1] != 0) return true
        if (pboIds.any { it != 0 }) {
            GLES30.glDeleteBuffers(pboIds.size, pboIds, 0)
            for (i in pboIds.indices) {
                pboIds[i] = 0
            }
        }

        GLES30.glGenBuffers(2, pboIds, 0)
        var success = true
        for (i in 0 until 2) {
            if (pboIds[i] == 0) {
                success = false
                break
            }
            GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, pboIds[i])
            GLES30.glBufferData(GLES30.GL_PIXEL_PACK_BUFFER, pixelSize, null, GLES30.GL_STREAM_READ)
        }
        GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, 0)
        if (!success) {
            GLES30.glDeleteBuffers(pboIds.size, pboIds, 0)
            for (i in pboIds.indices) {
                pboIds[i] = 0
            }
        }
        return success
    }

    private fun readReadyPixelPackBuffer(
        pboIds: IntArray,
        fences: LongArray,
        index: Int,
        pixelSize: Int,
    ): ByteArray? {
        if (pboIds[index] == 0 || !isPixelPackFenceReady(fences, index)) return null

        GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, pboIds[index])
        val mappedBuffer = GLES30.glMapBufferRange(
            GLES30.GL_PIXEL_PACK_BUFFER,
            0,
            pixelSize,
            GLES30.GL_MAP_READ_BIT
        ) as? ByteBuffer
        val bytes = if (mappedBuffer != null) {
            ByteArray(pixelSize).also {
                mappedBuffer.rewind()
                mappedBuffer.get(it)
                GLES30.glUnmapBuffer(GLES30.GL_PIXEL_PACK_BUFFER)
            }
        } else {
            null
        }
        GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, 0)
        deletePixelPackFence(fences, index)
        return bytes
    }

    private fun isPixelPackBufferWritable(fences: LongArray, index: Int): Boolean {
        val fence = fences[index]
        if (fence == 0L) return true
        if (!isPixelPackFenceReady(fences, index)) return false
        deletePixelPackFence(fences, index)
        return true
    }

    private fun isPixelPackFenceReady(fences: LongArray, index: Int): Boolean {
        val fence = fences[index]
        if (fence == 0L) return false
        val result = GLES30.glClientWaitSync(fence, 0, 0)
        return result == GLES30.GL_ALREADY_SIGNALED || result == GLES30.GL_CONDITION_SATISFIED
    }

    private fun deletePixelPackFence(fences: LongArray, index: Int) {
        val fence = fences[index]
        if (fence != 0L) {
            GLES30.glDeleteSync(fence)
            fences[index] = 0L
        }
    }

    private fun releasePixelPackPbos(pboIds: IntArray, fences: LongArray) {
        for (i in fences.indices) {
            deletePixelPackFence(fences, i)
        }
        if (pboIds.any { it != 0 }) {
            GLES30.glDeleteBuffers(pboIds.size, pboIds, 0)
        }
        resetPixelPackState(pboIds, fences)
    }

    private fun resetPixelPackState(pboIds: IntArray, fences: LongArray) {
        for (i in pboIds.indices) {
            pboIds[i] = 0
            fences[i] = 0L
        }
    }

    private fun restorePixelReadbackState() {
        GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, 0)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        GLES30.glViewport(0, 0, viewportWidth, viewportHeight)
    }

    private fun dispatchMeteringCalculation(bytesCopy: ByteArray?, focus: PointF?, mode: MeteringMode) {
        if (bytesCopy == null) return
        if (!meteringDispatchInFlight.compareAndSet(false, true)) return

        try {
            if (meteringExecutor.isShutdown) {
                meteringDispatchInFlight.set(false)
                return
            }
            meteringExecutor.execute {
                try {
                    calculateMeteringResults(bytesCopy, focus, mode)
                } catch (e: Exception) {
                    PLog.e(TAG, "Failed to calculate metering results", e)
                } finally {
                    meteringDispatchInFlight.set(false)
                }
            }
        } catch (e: Exception) {
            meteringDispatchInFlight.set(false)
            PLog.e(TAG, "Failed to dispatch metering task", e)
        }
    }

    fun setRenderingPaused(paused: Boolean) {
        renderingPaused = paused
        if (paused) {
            stabilizationSession?.stop()
            stabilizationSessionStarted = false
            currentFrameTimestampNs = 0L
        }
    }

    private fun calculateMeteringResults(meteringBytes: ByteArray, focus: PointF?, mode: MeteringMode) {
        val histogram = IntArray(256)
        var weightedSumLuminance = 0.0
        var totalWeight = 0.0
        val lumaGrid = IntArray(METERING_SIZE * METERING_SIZE)

        // 根据测光模式设置权重参数
        val (weightCenter, weightEdge, radiusSq) = when (mode) {
            MeteringMode.SPOT -> Triple(100.0, 0.0, (METERING_SIZE * METERING_SIZE) / 64.0)   // 绝对统治权重，半径 METERING_SIZE/8
            MeteringMode.CENTER_WEIGHTED -> Triple(20.0, 1.0, (METERING_SIZE * METERING_SIZE) / 16.0) // 统治级权重，半径 METERING_SIZE/4
            MeteringMode.SYSTEM_DEFAULT -> Triple(1.0, 1.0, 0.0) // 不按对焦点或中心加权
            MeteringMode.AVERAGE -> Triple(1.0, 1.0, 0.0)  // 所有像素等权
            MeteringMode.HIGHLIGHT_PRIORITY -> Triple(2.0, 1.0, (METERING_SIZE * METERING_SIZE) / 8.0) // 大区域，亮部加权在下方处理
        }
        val useUniformWeight = mode == MeteringMode.SYSTEM_DEFAULT || mode == MeteringMode.AVERAGE

        for (y in 0 until METERING_SIZE) {
            for (x in 0 until METERING_SIZE) {
                val idx = (y * METERING_SIZE + x) * 4
                val r = meteringBytes[idx].toInt() and 0xFF
                val g = meteringBytes[idx + 1].toInt() and 0xFF
                val b = meteringBytes[idx + 2].toInt() and 0xFF

                // 计算亮度 (Rec.709)
                val luma = (0.2126 * r + 0.7152 * g + 0.0722 * b).toInt().coerceIn(0, 255)
                histogram[luma]++
                lumaGrid[y * METERING_SIZE + x] = luma

                // 权重计算
                val spatialWeight = if (useUniformWeight) {
                    weightEdge
                } else if (focus != null) {
                    val fx = focus.x * METERING_SIZE
                    val fy = (1.0f - focus.y) * METERING_SIZE
                    val dx = x.toDouble() - fx.toDouble()
                    val dy = y.toDouble() - fy.toDouble()
                    if (dx * dx + dy * dy < radiusSq) weightCenter else weightEdge
                } else {
                    // 无对焦点时，点测光回退到中心
                    val cx = METERING_SIZE / 2.0
                    val cy = METERING_SIZE / 2.0
                    val dx = x.toDouble() - cx
                    val dy = y.toDouble() - cy
                    if (dx * dx + dy * dy < radiusSq) weightCenter else weightEdge
                }
                // 高光优先：用亮度^2 加权，亮部像素对测光影响更大
                val weight = if (mode == MeteringMode.HIGHLIGHT_PRIORITY) {
                    val lumaNorm = luma / 255.0
                    spatialWeight * (0.1 + 0.9 * lumaNorm * lumaNorm)
                } else {
                    spatialWeight
                }

                weightedSumLuminance += luma * weight
                totalWeight += weight
            }
        }

        onHistogramUpdated?.invoke(histogram)
        onMeteringUpdated?.invoke(totalWeight, weightedSumLuminance)

        // 高光优先模式：通过寻找最亮区域的“核”来精确定位高光
        if (mode == MeteringMode.HIGHLIGHT_PRIORITY) {
            // 1. 根据直方图计算动态阈值 (Top 2% 像素，且不低于 128)
            var countP98 = 0
            var dynamicThreshold = 128
            for (i in 255 downTo 0) {
                countP98 += histogram[i]
                if (countP98 >= 20) { // 1024 * 0.02 ≈ 20 pixels
                    dynamicThreshold = i.coerceAtLeast(128)
                    break
                }
            }

            // 2. 寻找最亮“簇”的中心
            // 我们通过在 5x5 窗口内寻找最大亮度总和来定位最亮的块
            // 这能有效解决“两个相距较远的光源导致质心落在中间暗处”的问题
            var maxClusterLuma = -1.0
            var bestX = -1
            var bestY = -1

            val kernelSize = 2 // 半径 2 代表 5x5 窗口

            // 遍历所有可能的中心点
            for (y in kernelSize until METERING_SIZE - kernelSize) {
                for (x in kernelSize until METERING_SIZE - kernelSize) {
                    val centerLuma = lumaGrid[y * METERING_SIZE + x]

                    // 只考虑中心像素达到阈值的候选点，减少计算量并过滤背景
                    if (centerLuma < dynamicThreshold) continue

                    var clusterSum = 0.0
                    for (ky in -kernelSize..kernelSize) {
                        for (kx in -kernelSize..kernelSize) {
                            clusterSum += lumaGrid[(y + ky) * METERING_SIZE + (x + kx)]
                        }
                    }

                    // 也可以加入距离权重，优先选择靠近对焦点或中心的高光
                    val bias: Double = if (focus != null) {
                        val fx = focus.x * METERING_SIZE
                        val fy = (1.0f - focus.y) * METERING_SIZE
                        val dist = hypot(x.toDouble() - fx, y.toDouble() - fy)
                        1.0 / (1.0 + dist * 0.05) // 距离越近权重越高
                    } else 1.0

                    // 引入历史偏置（滞后逻辑）：如果当前点靠近上一帧的高光点，给予额外权重加成
                    val historyBias = if (lastBestX != -1 && lastBestY != -1) {
                        val dx = x.toDouble() - lastBestX
                        val dy = y.toDouble() - lastBestY
                        if (dx * dx + dy * dy < 4.0) 1.2 else 1.0 // 半径 2.0 以内给予 20% 加成
                    } else 1.0

                    val score = clusterSum * bias * historyBias
                    if (score > maxClusterLuma) {
                        maxClusterLuma = score
                        bestX = x
                        bestY = y
                    }
                }
            }

            if (bestX != -1) {
                lastBestX = bestX
                lastBestY = bestY
                // 归一化到 0-1，注意 GL 坐标 Y 轴翻转
                val hx = bestX.toFloat() / METERING_SIZE
                val hy = 1.0f - (bestY.toFloat() / METERING_SIZE)
                onHighlightPointUpdated?.invoke(hx, hy)
            }
        }
    }

    /**
     * 获取 SurfaceTexture
     */
    fun getSurfaceTexture(): SurfaceTexture? = surfaceTexture

    /**
     * 释放资源
     */
    fun release() {
        stabilizationSession?.stop()
        stabilizationSession = null
        stabilizationCoordinator = null
        stabilizationSessionStarted = false
        currentFrameTimestampNs = 0L
        try {
            meteringExecutor.shutdown()
        } catch (e: Exception) {
            PLog.e(TAG, "Error shutting down metering executor", e)
        }
        // 删除纹理
        if (cameraTextureId != 0) {
            GlUtils.deleteTexture(cameraTextureId)
            cameraTextureId = 0
        }
        if (lutTextureId != 0) {
            GlUtils.deleteTexture(lutTextureId)
            lutTextureId = 0
        }
        if (baselineLutTextureId != 0) {
            GlUtils.deleteTexture(baselineLutTextureId)
            baselineLutTextureId = 0
        }
        if (curveTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(curveTextureId), 0)
            curveTextureId = 0
        }
        if (baselineCurveTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(baselineCurveTextureId), 0)
            baselineCurveTextureId = 0
        }

        // 释放清晰度实时预览资源
        GlUtils.deleteProgram(clarityDownsampleProgram)
        GlUtils.deleteProgram(clarityCompositeProgram)
        clarityDownsampleProgram = 0
        clarityCompositeProgram = 0
        releaseClarityPreviewFramebuffers()
        filmGrainGl.release()
        releaseFilmGrainSourceFramebuffer()

        // 释放 HDF 实时预览资源
        if (hdfExtractBlurHProgram != 0) GLES30.glDeleteProgram(hdfExtractBlurHProgram)
        if (hdfBlurVProgram != 0) GLES30.glDeleteProgram(hdfBlurVProgram)
        if (hdfCompositeProgram != 0) GLES30.glDeleteProgram(hdfCompositeProgram)
        if (softLightBlurHProgram != 0) GLES30.glDeleteProgram(softLightBlurHProgram)
        hdfExtractBlurHProgram = 0; hdfBlurVProgram = 0; hdfCompositeProgram = 0; softLightBlurHProgram = 0
        for (i in 0..1) {
            if (hdfTexId[i] != 0) GLES30.glDeleteTextures(1, intArrayOf(hdfTexId[i]), 0)
            if (hdfFboId[i] != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(hdfFboId[i]), 0)
            if (softLightTexId[i] != 0) GLES30.glDeleteTextures(1, intArrayOf(softLightTexId[i]), 0)
            if (softLightFboId[i] != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(softLightFboId[i]), 0)
        }
        hdfTexId = IntArray(2); hdfFboId = IntArray(2)
        softLightTexId = IntArray(2); softLightFboId = IntArray(2)
        hdfWidth = 0; hdfHeight = 0
        softLightWidth = 0; softLightHeight = 0
        if (bloomDownsampleFirstProgram != 0) GLES30.glDeleteProgram(bloomDownsampleFirstProgram)
        if (bloomDownsampleProgram != 0) GLES30.glDeleteProgram(bloomDownsampleProgram)
        if (bloomUpsampleProgram != 0) GLES30.glDeleteProgram(bloomUpsampleProgram)
        if (bloomCompositeProgram != 0) GLES30.glDeleteProgram(bloomCompositeProgram)
        bloomDownsampleFirstProgram = 0
        bloomDownsampleProgram = 0
        bloomUpsampleProgram = 0
        bloomCompositeProgram = 0
        releaseBloomFbos()
        if (postProcessScratchFboId != 0) {
            GLES30.glDeleteFramebuffers(1, intArrayOf(postProcessScratchFboId), 0)
            postProcessScratchFboId = 0
        }
        if (postProcessScratchTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(postProcessScratchTextureId), 0)
            postProcessScratchTextureId = 0
        }
        postProcessScratchWidth = 0
        postProcessScratchHeight = 0
        // 删除缓冲
        if (vertexBufferId != 0) {
            GLES30.glDeleteBuffers(1, intArrayOf(vertexBufferId), 0)
            vertexBufferId = 0
        }
        if (texCoordBufferId != 0) {
            GLES30.glDeleteBuffers(1, intArrayOf(texCoordBufferId), 0)
            texCoordBufferId = 0
        }
        if (indexBufferId != 0) {
            GLES30.glDeleteBuffers(1, intArrayOf(indexBufferId), 0)
            indexBufferId = 0
        }
        if (pboId != 0) {
            GLES30.glDeleteBuffers(1, intArrayOf(pboId), 0)
            pboId = 0
        }
        releasePixelPackPbos(meteringPboIds, meteringPboFences)

        if (meteringFboId != 0) {
            GLES30.glDeleteFramebuffers(1, intArrayOf(meteringFboId), 0)
            meteringFboId = 0
        }
        if (meteringTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(meteringTextureId), 0)
            meteringTextureId = 0
        }
        if (captureFboId != 0) {
            GLES30.glDeleteFramebuffers(1, intArrayOf(captureFboId), 0)
            captureFboId = 0
        }
        if (captureTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(captureTextureId), 0)
            captureTextureId = 0
        }
        if (fboId != 0) {
            GLES30.glDeleteFramebuffers(1, intArrayOf(fboId), 0)
            fboId = 0
        }
        if (fboTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(fboTextureId), 0)
            fboTextureId = 0
        }
        if (stackFboId != 0) {
            GLES30.glDeleteFramebuffers(1, intArrayOf(stackFboId), 0)
            stackFboId = 0
        }
        if (stackTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(stackTextureId), 0)
            stackTextureId = 0
        }
        basicToneTextures.release()
        mgcEisHardwareBufferRenderer.release()
        mgcEisYuvRenderer.release()
        // 删除程序
        colorProgramCache.release()
        GlUtils.deleteProgram(passthroughProgramId)
        passthroughProgramId = 0
        GlUtils.deleteProgram(copyProgramId)
        copyProgramId = 0

        // 释放 SurfaceTexture
        surfaceTexture?.release()
        surfaceTexture = null
        frameAvailable.set(false)

        // 重置状态
        surfaceReady = false
        pendingLutConfig = null
        pendingBaselineLutConfig = null
        currentLutConfig = null
        currentBaselineLutConfig = null
        onEyeFocusInputAvailable = null
        isEyeFocusBusy = false
        resetEyeFocusTiming()
    }

    /**
     * 获取当前色彩配方参数对象
     */
    private fun getCurrentRecipeParams(): com.hinnka.mycamera.model.ColorRecipeParams {
        return com.hinnka.mycamera.model.ColorRecipeParams(
            lutIntensity = lutIntensity,
            exposure = exposure,
            contrast = contrast,
            saturation = saturation,
            temperature = temperature,
            tint = tint,
            color = vibrance,
            highlights = highlights,
            shadows = shadows,
            toneToe = toneToe,
            toneShoulder = toneShoulder,
            tonePivot = tonePivot,
            paletteX = paletteX,
            paletteY = paletteY,
            paletteDensity = paletteDensity,
            fade = fade,
            filmGrain = filmGrain,
            vignette = vignette,
            flash = flash,
            bleachBypass = bleachBypass,
            clarity = clarity,
            sharpness = sharpness,
            bloom = bloom,
            softLight = softLight,
            chromaticAberration = chromaticAberration,
            halation = halation,
            redHalation = redHalation,
            noise = noise,
            lowRes = lowRes,
            skinHue = lchHueAdjustments[0],
            skinChroma = lchChromaAdjustments[0],
            skinLightness = lchLightnessAdjustments[0],
            redHue = lchHueAdjustments[1],
            redChroma = lchChromaAdjustments[1],
            redLightness = lchLightnessAdjustments[1],
            orangeHue = lchHueAdjustments[2],
            orangeChroma = lchChromaAdjustments[2],
            orangeLightness = lchLightnessAdjustments[2],
            yellowHue = lchHueAdjustments[3],
            yellowChroma = lchChromaAdjustments[3],
            yellowLightness = lchLightnessAdjustments[3],
            greenHue = lchHueAdjustments[4],
            greenChroma = lchChromaAdjustments[4],
            greenLightness = lchLightnessAdjustments[4],
            cyanHue = lchHueAdjustments[5],
            cyanChroma = lchChromaAdjustments[5],
            cyanLightness = lchLightnessAdjustments[5],
            blueHue = lchHueAdjustments[6],
            blueChroma = lchChromaAdjustments[6],
            blueLightness = lchLightnessAdjustments[6],
            purpleHue = lchHueAdjustments[7],
            purpleChroma = lchChromaAdjustments[7],
            purpleLightness = lchLightnessAdjustments[7],
            magentaHue = lchHueAdjustments[8],
            magentaChroma = lchChromaAdjustments[8],
            magentaLightness = lchLightnessAdjustments[8],
            masterCurvePoints = masterCurvePoints,
            redCurvePoints = redCurvePoints,
            greenCurvePoints = greenCurvePoints,
            blueCurvePoints = blueCurvePoints,
            primaryRedHue = primaryRedHue,
            primaryRedSaturation = primaryRedSaturation,
            primaryRedLightness = primaryRedLightness,
            primaryGreenHue = primaryGreenHue,
            primaryGreenSaturation = primaryGreenSaturation,
            primaryGreenLightness = primaryGreenLightness,
            primaryBlueHue = primaryBlueHue,
            primaryBlueSaturation = primaryBlueSaturation,
            primaryBlueLightness = primaryBlueLightness,
            gradingShadowHue = gradingShadowHue,
            gradingShadowAmount = gradingShadowAmount,
            gradingShadowLuminance = gradingShadowLuminance,
            gradingMidtoneHue = gradingMidtoneHue,
            gradingMidtoneAmount = gradingMidtoneAmount,
            gradingMidtoneLuminance = gradingMidtoneLuminance,
            gradingHighlightHue = gradingHighlightHue,
            gradingHighlightAmount = gradingHighlightAmount,
            gradingHighlightLuminance = gradingHighlightLuminance,
            gradingBalance = gradingBalance,
            gradingBlending = gradingBlending,
        )
    }

    fun setLchAdjustments(hue: FloatArray, chroma: FloatArray, lightness: FloatArray) {
        for (i in 0 until LCH_COLOR_BAND_COUNT) {
            lchHueAdjustments[i] = hue.getOrElse(i) { 0f }
            lchChromaAdjustments[i] = chroma.getOrElse(i) { 0f }
            lchLightnessAdjustments[i] = lightness.getOrElse(i) { 0f }
        }
    }

    /**
     * 从 ColorRecipeParams 统一设置所有渲染参数
     */
    fun setRecipeParams(params: com.hinnka.mycamera.model.ColorRecipeParams) {
        lutIntensity = params.lutIntensity
        exposure = params.exposure
        contrast = params.contrast
        saturation = params.saturation
        temperature = params.temperature
        tint = params.tint
        fade = params.fade
        vibrance = params.color
        highlights = params.highlights
        shadows = params.shadows
        toneToe = params.toneToe
        toneShoulder = params.toneShoulder
        tonePivot = params.tonePivot
        paletteX = params.paletteX
        paletteY = params.paletteY
        paletteDensity = params.paletteDensity
        filmGrain = params.filmGrain
        vignette = params.vignette
        flash = params.flash
        bleachBypass = params.bleachBypass
        clarity = params.clarity
        sharpness = params.sharpness
        bloom = params.bloom
        softLight = params.softLight
        chromaticAberration = params.chromaticAberration
        halation = 0f
        redHalation = params.redHalation
        noise = params.noise
        lowRes = params.lowRes
        primaryRedHue = params.primaryRedHue
        primaryRedSaturation = params.primaryRedSaturation
        primaryRedLightness = params.primaryRedLightness
        primaryGreenHue = params.primaryGreenHue
        primaryGreenSaturation = params.primaryGreenSaturation
        primaryGreenLightness = params.primaryGreenLightness
        primaryBlueHue = params.primaryBlueHue
        primaryBlueSaturation = params.primaryBlueSaturation
        primaryBlueLightness = params.primaryBlueLightness
        gradingShadowHue = params.gradingShadowHue
        gradingShadowAmount = params.gradingShadowAmount
        gradingShadowLuminance = params.gradingShadowLuminance
        gradingMidtoneHue = params.gradingMidtoneHue
        gradingMidtoneAmount = params.gradingMidtoneAmount
        gradingMidtoneLuminance = params.gradingMidtoneLuminance
        gradingHighlightHue = params.gradingHighlightHue
        gradingHighlightAmount = params.gradingHighlightAmount
        gradingHighlightLuminance = params.gradingHighlightLuminance
        gradingBalance = params.gradingBalance
        gradingBlending = params.gradingBlending
        val lch = ColorRecipeGl.lchAdjustments(params)
        setLchAdjustments(lch.hue, lch.chroma, lch.lightness)
        // 更新曲线纹理
        val masterPts = params.masterCurvePoints
        val redPts = params.redCurvePoints
        val greenPts = params.greenCurvePoints
        val bluePts = params.blueCurvePoints
        masterCurvePoints = masterPts
        redCurvePoints = redPts
        greenCurvePoints = greenPts
        blueCurvePoints = bluePts
        curveEnabled = !CurveUtils.isIdentity(masterPts, redPts, greenPts, bluePts)
        if (curveEnabled) {
            pendingCurveBuffer = CurveUtils.buildCurveTextureBuffer(masterPts, redPts, greenPts, bluePts)
        } else {
            pendingCurveBuffer = null
        }
    }

    fun updateBaselineRecipeParams(params: com.hinnka.mycamera.model.ColorRecipeParams) {
        baselineRecipeParams = params
        baselineColorRecipeEnabled = !params.isDefault()
        val masterPts = params.masterCurvePoints
        val redPts = params.redCurvePoints
        val greenPts = params.greenCurvePoints
        val bluePts = params.blueCurvePoints
        baselineCurveEnabled = !CurveUtils.isIdentity(masterPts, redPts, greenPts, bluePts)
        baselinePendingCurveBuffer = if (baselineCurveEnabled) {
            CurveUtils.buildCurveTextureBuffer(masterPts, redPts, greenPts, bluePts)
        } else {
            null
        }
    }

    private fun ensureHdfBlurPrograms(): Boolean {
        if (hdfExtractBlurHProgram == 0) {
            hdfExtractBlurHProgram = createPostProcessProgram(
                Shaders.HDF_PREVIEW_EXTRACT_BLUR_H,
                "HDF extract/blur",
            )
        }
        if (hdfBlurVProgram == 0) {
            hdfBlurVProgram = createPostProcessProgram(
                Shaders.HDF_PREVIEW_BLUR_V,
                "HDF vertical blur",
            )
        }
        return hdfExtractBlurHProgram != 0 && hdfBlurVProgram != 0
    }

    private fun ensureSoftLightPrograms(): Boolean {
        if (softLightBlurHProgram == 0) {
            softLightBlurHProgram = createPostProcessProgram(
                Shaders.SOFT_LIGHT_PREVIEW_BLUR_H,
                "soft light blur",
            )
        }
        if (hdfBlurVProgram == 0) {
            hdfBlurVProgram = createPostProcessProgram(
                Shaders.HDF_PREVIEW_BLUR_V,
                "HDF vertical blur",
            )
        }
        return softLightBlurHProgram != 0 && hdfBlurVProgram != 0
    }

    private fun ensureHalationPrograms(): Boolean {
        if (halationExtractBlurHProgram == 0) {
            halationExtractBlurHProgram = createPostProcessProgram(
                Shaders.HALATION_PREVIEW_EXTRACT_BLUR_H,
                "halation extract/blur",
            )
        }
        if (halationBlurVProgram == 0) {
            halationBlurVProgram = createPostProcessProgram(
                Shaders.HALATION_PREVIEW_BLUR_V,
                "halation vertical blur",
            )
        }
        return halationExtractBlurHProgram != 0 && halationBlurVProgram != 0
    }

    private fun ensureBloomPrograms(): Boolean {
        if (bloomDownsampleFirstProgram == 0) {
            bloomDownsampleFirstProgram = createPostProcessProgram(
                Shaders.BEVY_BLOOM_DOWNSAMPLE_FIRST,
                "bloom first downsample",
            )
        }
        if (bloomDownsampleProgram == 0) {
            bloomDownsampleProgram = createPostProcessProgram(
                Shaders.BEVY_BLOOM_DOWNSAMPLE,
                "bloom downsample",
            )
        }
        if (bloomUpsampleProgram == 0) {
            bloomUpsampleProgram = createPostProcessProgram(
                Shaders.BEVY_BLOOM_UPSAMPLE,
                "bloom upsample",
            )
        }
        if (bloomCompositeProgram == 0) {
            bloomCompositeProgram = createPostProcessProgram(
                Shaders.BEVY_BLOOM_COMPOSITE,
                "bloom composite",
            )
        }
        return bloomDownsampleFirstProgram != 0 && bloomDownsampleProgram != 0 &&
            bloomUpsampleProgram != 0 && bloomCompositeProgram != 0
    }

    private fun ensurePostProcessCompositeProgram(): Boolean {
        if (hdfCompositeProgram == 0) {
            hdfCompositeProgram = createPostProcessProgram(
                Shaders.HDF_PREVIEW_COMPOSITE,
                "post-process composite",
            )
        }
        return hdfCompositeProgram != 0
    }

    private fun ensureFocusPeakingProgram(): Boolean {
        if (focusPeakingProgramId != 0) return true

        val vs = GlUtils.compileShader(GLES30.GL_VERTEX_SHADER, Shaders.SIMPLE_VERTEX_SHADER)
        val peakFrag = GlUtils.compileShader(GLES30.GL_FRAGMENT_SHADER, Shaders.FRAGMENT_SHADER_FOCUS_PEAKING)
        focusPeakingProgramId = GlUtils.linkProgram(vs, peakFrag)
        GLES30.glDeleteShader(vs)
        GLES30.glDeleteShader(peakFrag)
        if (focusPeakingProgramId != 0) {
            uPeakInputTexLoc = GLES30.glGetUniformLocation(focusPeakingProgramId, "uInputTexture")
            uPeakTexelSizeLoc = GLES30.glGetUniformLocation(focusPeakingProgramId, "uTexelSize")
            uPeakThresholdLoc = GLES30.glGetUniformLocation(focusPeakingProgramId, "uThreshold")
            uPeakColorLoc = GLES30.glGetUniformLocation(focusPeakingProgramId, "uPeakColor")
            aPeakPositionLoc = GLES30.glGetAttribLocation(focusPeakingProgramId, "aPosition")
            aPeakTexCoordLoc = GLES30.glGetAttribLocation(focusPeakingProgramId, "aTexCoord")
        }
        return focusPeakingProgramId != 0
    }

    private fun renderFocusPeaking(inputTextureId: Int, width: Int, height: Int): Int {
        if (!ensureFocusPeakingProgram()) return inputTextureId

        ensureFocusPeakingFbo(width, height)
        if (focusPeakingFboId == 0) return inputTextureId

        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, focusPeakingFboId)
        GLES30.glViewport(0, 0, width, height)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)

        GLES30.glUseProgram(focusPeakingProgramId)

        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, inputTextureId)
        GLES30.glUniform1i(uPeakInputTexLoc, 0)

        GLES30.glUniform2f(uPeakTexelSizeLoc, 1.0f / width, 1.0f / height)
        GLES30.glUniform1f(uPeakThresholdLoc, 0.8f)
        GLES30.glUniform3f(uPeakColorLoc, 1.0f, 0.1f, 0.1f)

        GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, vertexBufferId)
        GLES30.glEnableVertexAttribArray(aPeakPositionLoc)
        GLES30.glVertexAttribPointer(aPeakPositionLoc, POSITION_COMPONENT_COUNT, GLES30.GL_FLOAT, false, 0, 0)

        GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, texCoordBufferId)
        GLES30.glEnableVertexAttribArray(aPeakTexCoordLoc)
        GLES30.glVertexAttribPointer(aPeakTexCoordLoc, TEXTURE_COORD_COMPONENT_COUNT, GLES30.GL_FLOAT, false, 0, 0)

        GLES30.glBindBuffer(GLES30.GL_ELEMENT_ARRAY_BUFFER, indexBufferId)
        GLES30.glDrawElements(GLES30.GL_TRIANGLES, 6, GLES30.GL_UNSIGNED_SHORT, 0)

        GLES30.glDisableVertexAttribArray(aPeakPositionLoc)
        GLES30.glDisableVertexAttribArray(aPeakTexCoordLoc)
        GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, 0)
        GLES30.glBindBuffer(GLES30.GL_ELEMENT_ARRAY_BUFFER, 0)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)

        return focusPeakingTextureId
    }

    private fun ensureFocusPeakingFbo(width: Int, height: Int) {
        if (focusPeakingFboWidth == width && focusPeakingFboHeight == height && focusPeakingFboId != 0) return

        if (focusPeakingFboId != 0) {
            GLES30.glDeleteFramebuffers(1, intArrayOf(focusPeakingFboId), 0)
        }
        if (focusPeakingTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(focusPeakingTextureId), 0)
        }

        val ids = IntArray(1)
        GLES30.glGenFramebuffers(1, ids, 0)
        focusPeakingFboId = ids[0]

        GLES30.glGenTextures(1, ids, 0)
        focusPeakingTextureId = ids[0]

        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, focusPeakingTextureId)
        GLES30.glTexImage2D(
            GLES30.GL_TEXTURE_2D, 0, GLES30.GL_RGBA, width, height,
            0, GLES30.GL_RGBA, GLES30.GL_UNSIGNED_BYTE, null
        )
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)

        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, focusPeakingFboId)
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0,
            GLES30.GL_TEXTURE_2D, focusPeakingTextureId, 0
        )

        focusPeakingFboWidth = width
        focusPeakingFboHeight = height
    }
}
