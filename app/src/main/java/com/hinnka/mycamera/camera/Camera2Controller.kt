package com.hinnka.mycamera.camera

import android.annotation.SuppressLint
import android.content.Context
import android.graphics.ColorSpace
import android.graphics.ImageFormat
import android.graphics.Rect
import android.graphics.SurfaceTexture
import android.hardware.camera2.*
import android.hardware.camera2.params.MeteringRectangle
import android.hardware.camera2.params.OutputConfiguration
import android.hardware.camera2.params.DynamicRangeProfiles
import android.hardware.camera2.params.RggbChannelVector
import android.hardware.camera2.params.SessionConfiguration
import android.hardware.camera2.params.TonemapCurve
import android.media.Image
import android.media.ImageReader
import android.os.Build
import android.os.Handler
import android.os.HandlerThread
import android.os.Looper
import android.os.SystemClock
import android.util.Size
import android.view.Surface
import android.net.Uri
import androidx.exifinterface.media.ExifInterface
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import com.hinnka.mycamera.livephoto.LivePhotoRecorder
import com.hinnka.mycamera.model.SafeImage
import com.hinnka.mycamera.utils.DeviceUtil
import com.hinnka.mycamera.utils.OrientationObserver
import com.hinnka.mycamera.video.CaptureMode
import com.hinnka.mycamera.video.QuickShotCapabilitiesResolver
import com.hinnka.mycamera.video.QuickShotResolutionPreset
import com.hinnka.mycamera.video.VideoAspectRatio
import com.hinnka.mycamera.video.VIDEO_AUDIO_INPUT_AUTO
import com.hinnka.mycamera.video.VideoBitratePreset
import com.hinnka.mycamera.video.VideoCapabilitiesResolver
import com.hinnka.mycamera.video.VideoFpsPreset
import com.hinnka.mycamera.video.VideoEncoderColorRequest
import com.hinnka.mycamera.video.VideoLogProfile
import com.hinnka.mycamera.video.VideoRecorder
import com.hinnka.mycamera.video.VideoRecordingPath
import com.hinnka.mycamera.video.VideoResolutionPreset
import com.hinnka.mycamera.video.VideoRecordingState
import com.hinnka.mycamera.video.VideoStabilizationMode
import java.util.concurrent.ConcurrentHashMap
import java.util.concurrent.Executors
import java.util.concurrent.atomic.AtomicBoolean
import java.util.concurrent.atomic.AtomicInteger
import kotlin.math.abs
import kotlin.math.hypot
import kotlin.math.ln
import kotlin.math.pow
import kotlin.math.roundToInt
import kotlin.math.roundToLong


/**
 * Camera2 相机控制器
 *
 * 使用原生 Camera2 API 直接控制相机，支持：
 * - 绑定隐藏的物理摄像头（通过探测发现的 Camera ID）
 * - 手动曝光控制（ISO、快门速度）
 * - 变焦控制
 */
class Camera2Controller(private val context: Context) {

    companion object {
        private const val TAG = "Camera2Controller"

        // 自定义错误代码
        const val ERROR_CAMERA_DISCONNECTED = 1000
        const val ERROR_CAMERA_OPEN_FAILED = 1001
        const val ERROR_CAMERA_CHARACTERISTICS_UNAVAILABLE = 1002
        const val ERROR_CAMERA_SESSION_CONFIG_FAILED = 1003

        private const val SINGLE_CAPTURE_READER_MAX_IMAGES = 2
        private const val BURST_CAPTURE_BATCH_SIZE = 8
        private const val HDR_BRACKET_BASE_CAPTURE_COUNT = 3
        private const val HDR_BRACKET_SIDE_FRAME_COUNT = 2

        // 拍照状态机常量
        private const val STATE_PREVIEW = 0 // Showing camera preview.
        private const val STATE_WAITING_PRECAPTURE = 2 // Waiting for the exposure to be precapture state.
        private const val STATE_WAITING_NON_PRECAPTURE =
            3 // Waiting for the exposure state to be something other than precapture.
        private const val STATE_PICTURE_TAKEN = 4 // Picture is already taken.

        // 场景变化检测阈值
        private const val SCENE_CHANGE_EXPOSURE_RATIO = 1.5   // 曝光乘积变化判定为场景变化
        private const val SCENE_CHANGE_FOCUS_DISTANCE_DELTA = 0.2f // 焦距跳变阈值（diopters），对焦锁定后逐帧跟踪
        private const val FOCUS_LOCK_SETTLE_FRAMES = 5        // 对焦锁定后等待镜头稳定的帧数
        private const val SCENE_CHANGE_CONFIRM_FRAMES = 3     // 连续 N 帧检测到变化才确认
        private const val AI_SUBJECT_RECENT_MS = 1800L
        private const val AI_FOCUS_FALLBACK_FRAMES = 6
        private const val DEFAULT_HYPERFOCAL_FOCAL_LENGTH_MM = 4.0f
        private const val DEFAULT_HYPERFOCAL_APERTURE = 1.8f
        private const val HYPERFOCAL_COC_DIAGONAL_DIVISOR = 1500.0
        private const val NO_IMAGE_READER_FORMAT = -1
    }

    private data class PhysicalOutputFailureKey(
        val openCameraId: String,
        val physicalCameraId: String,
        val captureMode: CaptureMode,
        val readerFormat: Int
    )

    private data class HyperfocalFocusResult(
        val cameraId: String,
        val focalLengthMm: Float,
        val aperture: Float,
        val circleOfConfusionMm: Float,
        val distanceMeters: Float,
        val focusDistanceDiopters: Float
    )

    private val cameraManager: CameraManager by lazy {
        context.getSystemService(Context.CAMERA_SERVICE) as CameraManager
    }

    private val cameraDiscovery = CameraDiscovery(context)

    // --- 拍照状态机相关 ---
    private var internalCaptureState = STATE_PREVIEW

    // 缓存拍照所需的设备和 Reader，供状态机回调使用
    private var pendingCaptureDevice: CameraDevice? = null
    private var pendingCaptureReader: ImageReader? = null
    private var pendingCaptureBaseExposureResult: CaptureResult? = null
    // ---------------------

    private var cameraDevice: CameraDevice? = null
    private var captureSession: CameraCaptureSession? = null
    private var previewRequestBuilder: CaptureRequest.Builder? = null
    private var previewSessionGeneration: Long = 0L
    private val previewUpdateScheduled = AtomicBoolean(false)

    private var previewSurface: Surface? = null
    private var previewSurfaceTexture: SurfaceTexture? = null
    private var imageReader: ImageReader? = null

    val previewDepthProcessor = com.hinnka.mycamera.preview.PreviewDepthProcessor(context)
    val previewAiFocusProcessor = com.hinnka.mycamera.preview.PreviewAiFocusProcessor(context)


    // 降噪等级 (0=Off, 1=Fast, 2=High Quality, 3=ZSL, 4=Minimal, 5=Auto)
    private var nrLevel = 5

    // 锐化等级 (0=Off, 1=Fast, 2=High Quality, 3=Zero Shutter Lag/Real-time)
    private var edgeLevel = 1

    private var cameraThread: HandlerThread? = null
    private var cameraHandler: Handler? = null

    private val cameraCharacteristicsCache = ConcurrentHashMap<String, CameraCharacteristics>()
    private var cachedCharacteristics: CameraCharacteristics? = null
    private var cachedCharacteristicsCameraId: String = ""
    private var activeOpenCameraId: String = ""
    private var activeOutputPhysicalCameraId: String? = null
    private val failedPhysicalOutputProfiles = mutableSetOf<PhysicalOutputFailureKey>()
    private var cachedSensorOrientation: Int = 0
    private var cachedLensFacing: Int = CameraCharacteristics.LENS_FACING_BACK
    private var cachedHardwareLevel: Int = CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL_LIMITED
    private var isManualSensorSupported = false
    private var isManualPostProcessingSupported = false
    private var isFlashSupported = false
    private var maxAfRegions = 0
    private var maxAeRegions = 0
    private var availableAfModes: IntArray = intArrayOf()
    private var availableEdgeModes: IntArray = intArrayOf()
    private var availableNoiseReductionModes: IntArray = intArrayOf()
    private var availableTonemapModes: IntArray = intArrayOf()
    private var tonemapMaxCurvePoints: Int = 0
    private var availableColorCorrectionAberrationModes: IntArray = intArrayOf()
    private var availableHotPixelModes: IntArray = intArrayOf()
    private var availableShadingModes: IntArray = intArrayOf()
    private var availableDistortionCorrectionModes: IntArray = intArrayOf()
    private var availableVideoStabilizationModes: IntArray = intArrayOf()
    private var availableOpticalStabilizationModes: IntArray = intArrayOf()
    private var availableLensShadingMapModes: IntArray = intArrayOf()
    private var isRawSupported = false
    private var isP010Supported = false
    private var isHlg10Supported = false
    private var isZslControlSupported: Boolean? = null
    private var availableCaptureRequestKeyNames: Set<String>? = null
    private var availableAeModes: IntArray = intArrayOf()
    private var availableAwbModes: IntArray = intArrayOf()
    private var videoCaptureStatsWindowStartMs: Long = 0L
    private var videoCaptureStatsFrames: Int = 0
    private var videoCaptureStatsLastTimestampNs: Long = 0L
    private var mirrorFrontCameraEnabled: Boolean = true
    @Volatile
    private var cameraOpenGeneration: Long = 0L

    private val _state = MutableStateFlow(CameraState())
    val state: StateFlow<CameraState> = _state.asStateFlow()

    // Live Photo 录制器
    val livePhotoRecorder = LivePhotoRecorder(context)
    val videoRecorder = VideoRecorder(context)
    var onVideoSaved: ((Uri?) -> Unit)? = null

    private var videoRecordingStartElapsedMs: Long = 0L
    private var videoRecordingPausedMs: Long = 0L
    private var videoRecordingPauseStartElapsedMs: Long = 0L
    private val videoRecordingTicker = object : Runnable {
        override fun run() {
            val recordingState = _state.value.videoRecordingState
            if (!recordingState.isRecording) return
            if (recordingState.isPaused) {
                cameraHandler?.postDelayed(this, 250)
                return
            }
            val elapsed =
                (SystemClock.elapsedRealtime() - videoRecordingStartElapsedMs - videoRecordingPausedMs).coerceAtLeast(
                    0L
                )
            _state.value = _state.value.copy(
                videoRecordingState = recordingState.copy(elapsedMs = elapsed)
            )
            cameraHandler?.postDelayed(this, 250)
        }
    }

    // 缓存 CaptureResult 和 Image 用于配对 (timestamp -> Data)
    private val pendingResults = ConcurrentHashMap<Long, TotalCaptureResult>()
    private val pendingImages = ConcurrentHashMap<Long, SafeImage>()
    private val pendingCaptureStartedTimestamps = ConcurrentHashMap<Long, Long>()
    private val pendingCloseReaders = mutableListOf<ImageReader>()
    private val openImagesCount = AtomicInteger(0)
    private var imageReaderMaxImages = SINGLE_CAPTURE_READER_MAX_IMAGES

    private var burstCapturing = false
    // 保留最近的一个结果作为后备
    @Volatile
    private var lastCaptureResult: TotalCaptureResult? = null

    // 场景变化检测：用于替代固定延迟恢复连续对焦
    private var isFocusLockedWaitingForSceneChange = false
    private var focusLockedReferenceIso: Int = 0
    private var focusLockedReferenceExposureNs: Long = 0L
    private var focusLockedReferenceDistance: Float = 0f
    private var focusLockSettleFrames = 0       // 对焦锁定后等待镜头稳定的帧数
    private var sceneChangeFrameCount = 0
    private var aiFocusFallbackFrames = 0
    private var aiSubjectLastSeenElapsedMs: Long = 0L
    private var aiSubjectLastSeenX: Float = -1f
    private var aiSubjectLastSeenY: Float = -1f
    private var focusModeBeforeHyperfocal: Boolean? = null
    private var focusDistanceBeforeHyperfocal: Float? = null

    // 高光优先测光：最亮区域坐标（归一化 0-1）及平滑状态
    @Volatile
    private var highlightPointX: Float = 0.5f
    @Volatile
    private var highlightPointY: Float = 0.5f
    private var highlightPointSmoothedX: Float = 0.5f
    private var highlightPointSmoothedY: Float = 0.5f
    private var highlightPointInitialized = false
    private var lastSentHighlightPointX: Float = -1f
    private var lastSentHighlightPointY: Float = -1f

    // 图片拍摄回调（携带 CaptureInfo, CameraCharacteristics 和 CaptureResult 用于 RAW 处理）
    var onImageCaptured: ((SafeImage, CaptureInfo, CameraCharacteristics?, CaptureResult?) -> Unit)? = null
    var onHdrBracketCaptureFailed: (() -> Unit)? = null

    private fun trackImage(image: Image?): SafeImage? {
        if (image != null) {
            openImagesCount.getAndIncrement()
        }
        return image?.let { SafeImage(it, this) }
    }

    private fun getCaptureTimestamp(result: TotalCaptureResult): Long? {
        val frameNumber = result.frameNumber
        val startedTimestamp = pendingCaptureStartedTimestamps.remove(frameNumber)
        return result.get(CaptureResult.SENSOR_TIMESTAMP) ?: startedTimestamp
    }

    private fun shouldPairImageWithCaptureResult(image: SafeImage): Boolean {
        return image.format == ImageFormat.RAW_SENSOR || _state.value.hdrBracketCapturing
    }

    private fun processOrBufferImageForCaptureResult(image: SafeImage) {
        val timestamp = image.timestamp
        val pendingResult = pendingResults.remove(timestamp)
        if (pendingResult != null) {
            processAndTriggerCapture(image, pendingResult)
        } else {
            pendingImages.put(timestamp, image)?.close()
            trimPendingImages()
        }
    }

    private fun processOrBufferCaptureResult(result: TotalCaptureResult) {
        val timestamp = getCaptureTimestamp(result)
        if (timestamp == null) {
            PLog.w(TAG, "Capture result missing timestamp, frame=${result.frameNumber}")
            return
        }

        val pendingImage = pendingImages.remove(timestamp)
        if (pendingImage != null) {
            processAndTriggerCapture(pendingImage, result)
        } else {
            pendingResults[timestamp] = result
            trimPendingResults()
        }
    }

    private fun trimPendingImages(maxSize: Int = 20) {
        if (pendingImages.size <= maxSize) return
        val oldestKey = pendingImages.keys.minOrNull() ?: return
        pendingImages.remove(oldestKey)?.close()
    }

    private fun trimPendingResults(maxSize: Int = 20) {
        if (pendingResults.size <= maxSize) return
        val oldestKey = pendingResults.keys.minOrNull() ?: return
        pendingResults.remove(oldestKey)
    }

    // 快门音效播放回调
    var onPlayShutterSound: (() -> Unit)? = null

    // Live Photo 录制状态
    var onLivePhotoVideoCaptured: ((java.io.File, Long) -> Unit)? = null

    // 相机错误回调（供上层处理错误恢复）
    // errorCode: CameraDevice 的错误代码或自定义错误码
    // canRetry: 是否可以重试打开相机
    var onCameraError: ((errorCode: Int, message: String, canRetry: Boolean) -> Unit)? = null

    fun onImageRelease() {
        val count = openImagesCount.decrementAndGet()
        if (imageReaderMaxImages - count >= activeCaptureImageRequestCount()) {
            _state.value = _state.value.copy(isCapturing = false)
        }
        if (count == 0) {
            _state.value = _state.value.copy(
                isCapturing = false,
                hdrBracketCapturing = false,
                hdrBracketFrameCount = 0
            )
            checkAndClosePendingReaders()
        }
    }

    private fun resolveImageReaderMaxImages(): Int {
        val currentState = _state.value
        val multiFrameCount = currentState.multiFrameCount.coerceIn(
            MultiFrameConfig.MIN_FRAME_COUNT,
            MultiFrameConfig.MAX_FRAME_COUNT
        )
        val requestedImages = when {
            currentState.useHdrComposition && currentState.useMFNR ->
                maxOf(
                    multiFrameCount + HDR_BRACKET_SIDE_FRAME_COUNT,
                    HdrBracketConfig.rawReferenceFrameCount()
                )

            currentState.useHdrComposition && currentState.useMFSR ->
                multiFrameCount + HDR_BRACKET_SIDE_FRAME_COUNT

            currentState.useMFNR || currentState.useMFSR -> multiFrameCount

            else -> BURST_CAPTURE_BATCH_SIZE
        }
        return maxOf(SINGLE_CAPTURE_READER_MAX_IMAGES, requestedImages)
    }

    private fun activeCaptureImageRequestCount(): Int {
        val currentState = _state.value
        return when {
            currentState.burstCapturing -> BURST_CAPTURE_BATCH_SIZE
            currentState.hdrBracketCapturing -> currentState.hdrBracketFrameCount
                .coerceAtLeast(HDR_BRACKET_BASE_CAPTURE_COUNT)
            currentState.useMFNR || currentState.useMFSR -> currentState.multiFrameCount.coerceIn(
                MultiFrameConfig.MIN_FRAME_COUNT,
                MultiFrameConfig.MAX_FRAME_COUNT
            )

            else -> 1
        }
    }

    private fun canAcquireImage(logPrefix: String): Boolean {
        val openImages = openImagesCount.get()
        if (openImages >= imageReaderMaxImages) {
            PLog.w(TAG, "$logPrefix ($openImages/$imageReaderMaxImages), skipping acquire")
            return false
        }
        return true
    }

    private val previewCallback = object : CameraCaptureSession.CaptureCallback() {
        override fun onCaptureCompleted(
            session: CameraCaptureSession,
            request: CaptureRequest,
            result: TotalCaptureResult
        ) {
            super.onCaptureCompleted(session, request, result)

            val timestamp = result.get(CaptureResult.SENSOR_TIMESTAMP)
            if (timestamp != null && state.value.useRaw && isRawSupported) {
                val pendingImage = pendingImages.remove(timestamp)
                if (pendingImage != null) {
                    // 找到了匹配的图像，触发回调
                    processAndTriggerCapture(pendingImage, result)
                } else {
                    // 还没找到图像，存入缓存
                    pendingResults[timestamp] = result
                    // 限制缓存大小
                    if (pendingResults.size > 20) {
                        val oldest = pendingResults.keys.minOrNull()
                        if (oldest != null) pendingResults.remove(oldest)
                    }
                }
            }
            lastCaptureResult = result
            logVideoCaptureStats(result)

            // 处理拍照状态机
            processCaptureState(result)

            // 监听对焦状态
            val afState = result.get(CaptureResult.CONTROL_AF_STATE)
            val afStateChanged = afState != null && afState != lastAfState
            if (afStateChanged) {
                lastAfState = afState
            }
            if (_state.value.isFocusing) {
                when (afState) {
                    CaptureResult.CONTROL_AF_STATE_FOCUSED_LOCKED -> {
                        aiFocusFallbackFrames = 0
                        _state.value = _state.value.copy(isFocusing = false, focusSuccess = true)
                        // 只在首次锁定时记录一次，后续 AF 狩猎重新锁定不再覆盖
                        if (!_state.value.isFocusLocked && !isFocusLockedWaitingForSceneChange) {
                            recordFocusLockExposure(result)
                        }
                    }

                    CaptureResult.CONTROL_AF_STATE_NOT_FOCUSED_LOCKED -> {
                        aiFocusFallbackFrames = 0
                        _state.value = _state.value.copy(isFocusing = false, focusSuccess = false)
                        if (!_state.value.isFocusLocked && !isFocusLockedWaitingForSceneChange) {
                            recordFocusLockExposure(result)
                        }
                    }
                }
                if (_state.value.isFocusing &&
                    _state.value.focusPointSource == FocusPointSource.AI &&
                    aiFocusFallbackFrames > 0
                ) {
                    aiFocusFallbackFrames--
                    if (aiFocusFallbackFrames == 0) {
                        PLog.d(TAG, "AI focus fallback complete")
                        _state.value = _state.value.copy(isFocusing = false, focusSuccess = true)
                        if (!_state.value.isFocusLocked && !isFocusLockedWaitingForSceneChange) {
                            recordFocusLockExposure(result)
                        }
                    }
                }
            }

            // 场景变化检测：对焦锁定后持续监测曝光变化和焦距跳变
            if (isFocusLockedWaitingForSceneChange) {
                // 对焦锁定后前几帧镜头还在微调，跳过不检测
                if (focusLockSettleFrames > 0) {
                    focusLockSettleFrames--
                } else {
                    val currentIso = result.get(CaptureResult.SENSOR_SENSITIVITY) ?: 0
                    val currentExposure = result.get(CaptureResult.SENSOR_EXPOSURE_TIME) ?: 0L
                    val currentFocusDistance = result.get(CaptureResult.LENS_FOCUS_DISTANCE) ?: 0f
                    var sceneChanged = false

                    // 1. 曝光变化检测
                    if (focusLockedReferenceIso > 0 && focusLockedReferenceExposureNs > 0 &&
                        currentIso > 0 && currentExposure > 0L
                    ) {
                        val refProduct = focusLockedReferenceIso.toDouble() * focusLockedReferenceExposureNs.toDouble()
                        val curProduct = currentIso.toDouble() * currentExposure.toDouble()
                        if (refProduct > 0) {
                            val ratio = if (curProduct > refProduct) curProduct / refProduct else refProduct / curProduct
                            if (ratio > SCENE_CHANGE_EXPOSURE_RATIO) {
//                                PLog.d(TAG, "scene change: exposure ratio=$ratio")
                                sceneChanged = true
                            }
                        }
                    }

                    // 2. 焦距跳变检测：逐帧跟踪，CONTINUOUS_PICTURE 模式下 AF 系统持续工作
                    //    当场景距离变化时，AF 会重新对焦导致焦距大幅跳变
                    if (focusLockedReferenceDistance > 0f && currentFocusDistance > 0f) {
                        val delta = abs(currentFocusDistance - focusLockedReferenceDistance)
                        if (delta > SCENE_CHANGE_FOCUS_DISTANCE_DELTA) {
//                            PLog.d(TAG, "scene change: focusDistance delta=$delta (ref=$focusLockedReferenceDistance, cur=$currentFocusDistance)")
                            sceneChanged = true
                        }
                    }

                    if (sceneChanged) {
                        if (isAiSubjectRecentlySeen()) {
                            updateFocusLockSceneReference(result)
                            sceneChangeFrameCount = 0
                        } else {
                            sceneChangeFrameCount++
                            if (sceneChangeFrameCount >= SCENE_CHANGE_CONFIRM_FRAMES) {
                                restoreContinuousAf()
                            }
                        }
                    } else {
                        sceneChangeFrameCount = 0
                    }
                }
            }

            // 获取相机实际使用的参数
            val actualIso = result.get(CaptureResult.SENSOR_SENSITIVITY)
            val actualExposureTimeNs = result.get(CaptureResult.SENSOR_EXPOSURE_TIME)
            val aeMode = result.get(CaptureResult.CONTROL_AE_MODE)
            // 判断是否为自动曝光模式（包括所有 AE_MODE_ON 的变体）
            val isAutoExposure = aeMode == CaptureResult.CONTROL_AE_MODE_ON
                    || aeMode == CaptureResult.CONTROL_AE_MODE_ON_AUTO_FLASH
                    || aeMode == CaptureResult.CONTROL_AE_MODE_ON_ALWAYS_FLASH
            val exposureCompensation = result.get(CaptureResult.CONTROL_AE_EXPOSURE_COMPENSATION) ?: 0
            val awbMode = result.get(CaptureResult.CONTROL_AWB_MODE) ?: CameraMetadata.CONTROL_AWB_MODE_AUTO
            val aperture = result.get(CaptureResult.LENS_APERTURE)
            val focusDistance = result.get(CaptureResult.LENS_FOCUS_DISTANCE) ?: 0f

            // 关键修复：只在自动曝光模式下更新 ISO 和快门速度
            // 手动模式下保持用户设置不变（因为预览使用的是限制后的曝光时间，不是用户设置的值）
            _state.value = _state.value.copy(
                iso = if (isAutoExposure) actualIso ?: _state.value.iso else _state.value.iso,
                shutterSpeed = if (isAutoExposure) actualExposureTimeNs
                    ?: _state.value.shutterSpeed else _state.value.shutterSpeed,
                awbMode = awbMode,
                physicalAperture = aperture ?: _state.value.physicalAperture,
                focusDistance = focusDistance
            )
        }
    }

    private var lastAeState = 0
    private var lastAfState: Int? = null

    private fun logVideoCaptureStats(result: TotalCaptureResult) {
        if (!_state.value.videoRecordingState.isRecording) return

        val sensorTimestampNs = result.get(CaptureResult.SENSOR_TIMESTAMP) ?: return
        val nowMs = SystemClock.elapsedRealtime()
        if (videoCaptureStatsWindowStartMs == 0L) {
            videoCaptureStatsWindowStartMs = nowMs
            videoCaptureStatsFrames = 0
            videoCaptureStatsLastTimestampNs = sensorTimestampNs
        }

        videoCaptureStatsFrames += 1
        val elapsedMs = nowMs - videoCaptureStatsWindowStartMs
        if (elapsedMs < 1000L) {
            videoCaptureStatsLastTimestampNs = sensorTimestampNs
            return
        }

        val sensorElapsedNs = (sensorTimestampNs - videoCaptureStatsLastTimestampNs).coerceAtLeast(0L)
        val callbackFps = videoCaptureStatsFrames * 1000f / elapsedMs.toFloat()
        val sensorFps = if (sensorElapsedNs > 0L && videoCaptureStatsFrames > 1) {
            (videoCaptureStatsFrames - 1) * 1_000_000_000f / sensorElapsedNs.toFloat()
        } else {
            0f
        }
        val fpsRange = result.get(CaptureResult.CONTROL_AE_TARGET_FPS_RANGE)
        /*PLog.i(
            TAG,
            "Video capture stats: requested=${_state.value.videoConfig.fps.fps}, " +
                "aeRange=$fpsRange, callbackFps=${"%.1f".format(callbackFps)}, " +
                "sensorFps=${"%.1f".format(sensorFps)}, preview=${_state.value.currentPreviewSize.width}x${_state.value.currentPreviewSize.height}"
        )*/

        videoCaptureStatsWindowStartMs = nowMs
        videoCaptureStatsFrames = 0
        videoCaptureStatsLastTimestampNs = sensorTimestampNs
    }

    /**
     * 处理拍照状态机的核心逻辑
     */
    private fun processCaptureState(result: CaptureResult) {
        result.get(CaptureResult.CONTROL_AF_STATE) ?: return
        val aeState = result.get(CaptureResult.CONTROL_AE_STATE) ?: return

        if (aeState != lastAeState) {
            //Log.d(TAG, "processCaptureState: aeState = $aeState")
            lastAeState = aeState
        }

        when (internalCaptureState) {
            STATE_PREVIEW -> {
                // 正常预览状态，不做处理
            }

            STATE_WAITING_PRECAPTURE -> {
                // 等待 AE 预取（预闪）完成
                if (aeState == CaptureResult.CONTROL_AE_STATE_PRECAPTURE) {
                    internalCaptureState = STATE_WAITING_NON_PRECAPTURE
                }
            }

            STATE_WAITING_NON_PRECAPTURE -> {
                // 等待 AE 退出预取状态
                if (aeState == CaptureResult.CONTROL_AE_STATE_CONVERGED) {
                    internalCaptureState = STATE_PICTURE_TAKEN
                    runCaptureSequence()
                }
            }
        }
    }

    /**
     * 运行最终的拍照序列
     */
    private fun runCaptureSequence() {
        val device = pendingCaptureDevice
        val reader = pendingCaptureReader
        val baseExposureResult = pendingCaptureBaseExposureResult
        if (device != null && reader != null) {
            performCapture(device, reader, baseExposureResult)
        }
        // 清理缓存的数据
        pendingCaptureDevice = null
        pendingCaptureReader = null
        pendingCaptureBaseExposureResult = null
    }

    /**
     * 运行预取序列（预闪）
     */
    private fun runPrecaptureSequence() {
        try {
            previewRequestBuilder?.let { builder ->
                // 触发预闪
                if (_state.value.flashMode == CameraMetadata.FLASH_MODE_SINGLE) {
                    builder.set(
                        CaptureRequest.CONTROL_AE_MODE,
                        CaptureRequest.CONTROL_AE_MODE_ON_ALWAYS_FLASH
                    )
                }
                builder.set(
                    CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER,
                    CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER_START
                )
                internalCaptureState = STATE_WAITING_PRECAPTURE
                captureSession?.capture(builder.build(), null, cameraHandler)
                cameraHandler?.postDelayed({
                    if (internalCaptureState != STATE_PICTURE_TAKEN) {
                        PLog.w(TAG, "Precapture timeout, proceeding to capture")
                        internalCaptureState = STATE_PICTURE_TAKEN
                        runCaptureSequence()
                    }
                }, 3000)
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to run precapture sequence", e)
            runCaptureSequence()
        }
    }

    // ==================== 初始化 ====================

    /**
     * 初始化相机
     */
    fun initialize() {
        PLog.i(TAG, "初始化相机控制器")
        startBackgroundThread()
        // 不再在初始化时立即发现相机，延迟到第一次打开相机时
        // discoverCameras()
    }

    private fun startBackgroundThread() {
        cameraThread = HandlerThread("CameraBackground").also { it.start() }
        cameraHandler = Handler(cameraThread!!.looper)
    }

    private fun stopBackgroundThread() {
        cameraThread?.quitSafely()
        try {
            cameraThread?.join()
            cameraThread = null
            cameraHandler = null
        } catch (e: InterruptedException) {
            PLog.e(TAG, "Error stopping background thread", e)
        }
    }

    /**
     * 发现所有可用摄像头（包括隐藏摄像头）
     */
    private fun discoverCameras(preferredCameraId: String? = null) {
        val cameras = cameraDiscovery.discoverAllCameras()

        PLog.d(TAG, "Discovered ${cameras.size} cameras:")
        PLog.d(TAG, "发现 ${cameras.size} 个摄像头")
        cameras.forEach { cam ->
            PLog.d(
                TAG,
                "  - ${cam.cameraId}: ${cam.lensType}, intrinsicZoom=${cam.intrinsicZoomRatio}, " +
                        "displayZoom=${cam.displayIntrinsicZoomRatio}"
            )
            PLog.d(
                TAG,
                "摄像头: ${cam.cameraId}, 类型: ${cam.lensType}, 变焦: ${cam.displayIntrinsicZoomRatio}, " +
                        "提交倍率基准: ${cam.intrinsicZoomRatio}"
            )
        }

        // 默认选择主摄
        val defaultCamera = cameras.firstOrNull { it.cameraId == preferredCameraId }
            ?: cameras.firstOrNull { it.lensType == LensType.BACK_MAIN }
            ?: cameras.firstOrNull { it.lensFacing == CameraCharacteristics.LENS_FACING_BACK }
            ?: cameras.firstOrNull()

        PLog.i(TAG, "选择默认摄像头: ${defaultCamera?.cameraId}, 类型: ${defaultCamera?.lensType}")

        _state.value = _state.value.copy(
            availableCameras = cameras,
            currentCameraId = defaultCamera?.cameraId ?: "",
            currentLensType = defaultCamera?.lensType ?: LensType.BACK_MAIN
        )
    }

    fun refreshCameraList() {
        PLog.i(TAG, "刷新摄像头列表")
        val currentCameraId = _state.value.currentCameraId
        cameraDiscovery.clearCache()
        discoverCameras(preferredCameraId = currentCameraId.takeIf { it.isNotEmpty() })
    }

    private fun getCurrentOpenCameraId(): String {
        val state = _state.value
        return state.getCurrentCameraInfo()?.getOpenCameraId() ?: state.currentCameraId
    }

    private fun getActiveOpenCameraId(): String {
        return activeOpenCameraId.takeIf { it.isNotEmpty() } ?: getCurrentOpenCameraId()
    }

    private fun getCameraCharacteristicsCached(cameraId: String): CameraCharacteristics {
        require(cameraId.isNotEmpty()) { "cameraId must not be empty" }
        cachedCharacteristics?.let { characteristics ->
            if (cachedCharacteristicsCameraId == cameraId) {
                return characteristics
            }
        }
        cameraCharacteristicsCache[cameraId]?.let { return it }
        return cameraManager.getCameraCharacteristics(cameraId).also {
            cameraCharacteristicsCache[cameraId] = it
        }
    }

    private fun getCameraCharacteristicsOrNull(cameraId: String, reason: String): CameraCharacteristics? {
        if (cameraId.isEmpty()) return null
        return try {
            getCameraCharacteristicsCached(cameraId)
        } catch (e: Exception) {
            PLog.v(TAG, "Failed to load characteristics for camera $cameraId during $reason: ${e.message}")
            null
        }
    }

    private fun cacheActiveCameraCharacteristics(
        cameraId: String,
        characteristics: CameraCharacteristics
    ) {
        cachedCharacteristics = characteristics
        cachedCharacteristicsCameraId = cameraId
        cameraCharacteristicsCache[cameraId] = characteristics
    }

    private fun getActiveOpenCameraCharacteristics(): CameraCharacteristics? {
        val openCameraId = getActiveOpenCameraId()
        return getCameraCharacteristicsOrNull(openCameraId, "active open camera")
    }

    private fun clearCameraCapabilityCache() {
        cachedCharacteristics = null
        cachedCharacteristicsCameraId = ""
        activeOpenCameraId = ""
        activeOutputPhysicalCameraId = null
        cachedSensorOrientation = 0
        cachedLensFacing = CameraCharacteristics.LENS_FACING_BACK
        cachedHardwareLevel = CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL_LIMITED
        isManualSensorSupported = false
        isManualPostProcessingSupported = false
        isFlashSupported = false
        maxAfRegions = 0
        maxAeRegions = 0
        availableAfModes = intArrayOf()
        availableAeModes = intArrayOf()
        availableAwbModes = intArrayOf()
        availableEdgeModes = intArrayOf()
        availableNoiseReductionModes = intArrayOf()
        availableTonemapModes = intArrayOf()
        tonemapMaxCurvePoints = 0
        availableColorCorrectionAberrationModes = intArrayOf()
        availableHotPixelModes = intArrayOf()
        availableShadingModes = intArrayOf()
        availableDistortionCorrectionModes = intArrayOf()
        availableVideoStabilizationModes = intArrayOf()
        availableOpticalStabilizationModes = intArrayOf()
        availableLensShadingMapModes = intArrayOf()
        isRawSupported = false
        isP010Supported = false
        isHlg10Supported = false
        lastAfState = null
        isZslControlSupported = null
        availableCaptureRequestKeyNames = null
    }

    private fun clearCameraSessionState(reason: String, closeImageReader: Boolean = true) {
        previewSessionGeneration++
        previewUpdateScheduled.set(false)
        safeCloseCaptureSession(captureSession, reason)
        captureSession = null
        previewRequestBuilder = null
        safeReleasePreviewSurface(reason)
        if (closeImageReader) {
            safeCloseImageReader(imageReader)
            imageReader = null
        }
    }

    private fun safeReleasePreviewSurface(reason: String) {
        val surface = previewSurface
        previewSurface = null
        previewSurfaceTexture = null
        try {
            surface?.release()
        } catch (e: Exception) {
            PLog.w(TAG, "Ignoring error while releasing preview surface ($reason): ${e.message}")
        }
    }

    private fun clearCameraRuntimeState(reason: String, closeImageReader: Boolean = true) {
        clearCameraSessionState(reason, closeImageReader)
        clearCameraCapabilityCache()
    }

    private fun setCameraInactive(resetVideoState: Boolean = true) {
        _state.value = if (resetVideoState) {
            _state.value.copy(
                isPreviewActive = false,
                isCapturing = false,
                videoRecordingState = VideoRecordingState()
            )
        } else {
            _state.value.copy(
                isPreviewActive = false,
                isCapturing = false
            )
        }
    }

    private fun closeCameraDeviceSafely(camera: CameraDevice?, reason: String) {
        try {
            camera?.close()
        } catch (e: Exception) {
            PLog.w(TAG, "Ignoring exception while closing camera device ($reason): ${e.message}")
        }
    }

    private fun handleCameraDeviceUnavailable(
        camera: CameraDevice,
        reason: String,
        resetVideoState: Boolean = true
    ) {
        cameraOpenGeneration++
        videoRecorder.forceStop()
        stopVideoRecordingTicker()
        clearCameraSessionState(reason)
        closeCameraDeviceSafely(camera, reason)
        if (cameraDevice === camera || cameraDevice?.id == camera.id) {
            cameraDevice = null
        }
        clearCameraCapabilityCache()
        livePhotoRecorder.stopRecording()
        setCameraInactive(resetVideoState)
    }

    private fun handleCameraOpenFailure(
        cameraId: String,
        errorCode: Int,
        message: String,
        error: Exception
    ) {
        cameraOpenGeneration++
        PLog.e(TAG, "Camera open failed for $cameraId: $message", error)
        closeCameraDeviceSafely(cameraDevice, "open failure")
        cameraDevice = null
        clearCameraRuntimeState("open failure: $cameraId")
        livePhotoRecorder.stopRecording()
        setCameraInactive(resetVideoState = true)
        onCameraError?.invoke(errorCode, message, true)
    }

    private fun handlePreviewSessionFailure(
        reason: String,
        openGeneration: Long,
        error: Exception? = null
    ) {
        if (openGeneration != cameraOpenGeneration) {
            PLog.w(TAG, "Ignoring stale preview session failure: $reason")
            return
        }
        cameraOpenGeneration++
        if (error != null) {
            PLog.e(TAG, "Preview session failed: $reason", error)
        } else {
            PLog.e(TAG, "Preview session failed: $reason")
        }
        closeCameraDeviceSafely(cameraDevice, "preview session failure: $reason")
        cameraDevice = null
        clearCameraRuntimeState("preview session failure: $reason")
        livePhotoRecorder.stopRecording()
        setCameraInactive(resetVideoState = true)
        onCameraError?.invoke(
            ERROR_CAMERA_SESSION_CONFIG_FAILED,
            "预览会话配置失败",
            true
        )
    }

    private fun resolveActiveFocusCharacteristics(
        fallbackCharacteristics: CameraCharacteristics? = null
    ): Pair<String, CameraCharacteristics>? {
        val state = _state.value
        val camera = state.getCurrentCameraInfo()
        val targetZoomRatioByMain = getTargetZoomRatioByMain(state, camera)
        val candidateIds = buildList {
            activeOutputPhysicalCameraId?.let(::add)
            camera?.getBoundPhysicalCameraId(targetZoomRatioByMain)?.let(::add)
            camera?.baseCameraId?.let(::add)
            camera?.cameraId?.takeUnless { camera.isVirtualIszLens }?.let(::add)
            activeOpenCameraId.takeIf { it.isNotEmpty() }?.let(::add)
            state.currentCameraId.takeIf { it.isNotEmpty() }?.let(::add)
        }.distinct()

        for (cameraId in candidateIds) {
            getCameraCharacteristicsOrNull(cameraId, "focus characteristics")?.let {
                return cameraId to it
            }
        }

        return (fallbackCharacteristics ?: getActiveOpenCameraCharacteristics())?.let {
            val fallbackId = activeOpenCameraId.takeIf { id -> id.isNotEmpty() }
                ?: state.currentCameraId
            fallbackId to it
        }
    }

    private fun refreshActiveFocusLimit() {
        val focusCharacteristics = resolveActiveFocusCharacteristics()?.second
        val minimumFocusDistance =
            focusCharacteristics?.get(CameraCharacteristics.LENS_INFO_MINIMUM_FOCUS_DISTANCE) ?: 0f
        _state.value = _state.value.copy(minimumFocusDistance = minimumFocusDistance)
    }

    private fun refreshVideoCapabilities(characteristics: CameraCharacteristics? = null): Size {
        val openCameraId = getCurrentOpenCameraId()
        if (openCameraId.isEmpty()) {
            return _state.value.currentPreviewSize
        }

        val resolvedCharacteristics = characteristics
            ?: getCameraCharacteristicsOrNull(openCameraId, "video capabilities")
        if (resolvedCharacteristics == null) {
            PLog.e(TAG, "Failed to load video capabilities")
            return _state.value.currentPreviewSize
        }

        val snapshot = VideoCapabilitiesResolver.resolve(
            characteristics = resolvedCharacteristics,
            requestedConfig = _state.value.videoConfig,
            availableTonemapModes = availableTonemapModes,
            availableVideoStabilizationModes = availableVideoStabilizationModes,
            availableOpticalStabilizationModes = availableOpticalStabilizationModes,
            isFlashSupported = isFlashSupported
        )

        _state.value = _state.value.copy(
            videoConfig = snapshot.config,
            videoCapabilities = snapshot.capabilities,
            currentPreviewSize = if (_state.value.captureMode == CaptureMode.VIDEO) {
                snapshot.previewSize
            } else {
                _state.value.currentPreviewSize
            }
        )
        return snapshot.previewSize
    }

    private fun refreshQuickShotCapabilities(characteristics: CameraCharacteristics? = null): Size {
        val openCameraId = getCurrentOpenCameraId()
        if (openCameraId.isEmpty()) {
            return _state.value.currentPreviewSize
        }

        val resolvedCharacteristics = characteristics
            ?: getCameraCharacteristicsOrNull(openCameraId, "quick-shot capabilities")
        if (resolvedCharacteristics == null) {
            PLog.e(TAG, "Failed to load quick-shot capabilities")
            return _state.value.currentPreviewSize
        }

        val snapshot = QuickShotCapabilitiesResolver.resolve(
            characteristics = resolvedCharacteristics,
            requestedConfig = _state.value.quickShotConfig,
            aspectRatio = _state.value.aspectRatio
        )

        _state.value = _state.value.copy(
            quickShotConfig = snapshot.config,
            quickShotCapabilities = snapshot.capabilities,
            currentPreviewSize = if (_state.value.captureMode == CaptureMode.QUICK_SHOT) {
                snapshot.previewSize
            } else {
                _state.value.currentPreviewSize
            }
        )
        return snapshot.previewSize
    }

    private fun startVideoRecordingTicker() {
        stopVideoRecordingTicker()
        videoRecordingStartElapsedMs = SystemClock.elapsedRealtime()
        cameraHandler?.post(videoRecordingTicker)
    }

    private fun stopVideoRecordingTicker() {
        cameraHandler?.removeCallbacks(videoRecordingTicker)
    }

    // ==================== 相机控制 ====================

    /**
     * 打开相机并开始预览
     *
     * @param surfaceTexture SurfaceTexture 用于预览
     */
    @SuppressLint("MissingPermission")
    fun openCamera(surfaceTexture: SurfaceTexture, preserveVideoRecording: Boolean = false) {
        val handler = cameraHandler
        if (handler != null && Looper.myLooper() != handler.looper) {
            handler.post {
                openCamera(surfaceTexture, preserveVideoRecording)
            }
            return
        }
        // 先关闭旧的相机和资源，防止资源泄漏
        closeCamera(preserveVideoRecording = preserveVideoRecording)
        resetAiFocusForCameraOpen()
        val openGeneration = ++cameraOpenGeneration

        // 确保在权限已授予后才发现相机（延迟初始化）
        if (_state.value.availableCameras.isEmpty()) {
            PLog.i(TAG, "首次打开相机，开始发现可用摄像头")
            discoverCameras()
        }

        val cameraId = _state.value.currentCameraId
        val selectedCamera = _state.value.getCurrentCameraInfo()
        val openCameraId = selectedCamera?.getOpenCameraId() ?: cameraId
        val targetZoomRatioByMain = getTargetZoomRatioByMain(_state.value, selectedCamera)
        val captureMode = _state.value.captureMode
        if (cameraId.isEmpty()) {
            PLog.e(TAG, "No camera ID set")
            return
        }

        activeOpenCameraId = openCameraId
        val requestedPhysicalCameraId = resolveRequestedPhysicalCameraId(_state.value, selectedCamera)
        var outputPhysicalCameraId = requestedPhysicalCameraId
        activeOutputPhysicalCameraId = outputPhysicalCameraId

        PLog.i(
            TAG,
            "打开相机: selected=$cameraId, open=$openCameraId, targetZoom=$targetZoomRatioByMain, " +
                    "physicalOutput=$outputPhysicalCameraId, " +
                    "模式: ${captureMode.name}"
        )

        var previewSize = _state.value.currentPreviewSize
        availableCaptureRequestKeyNames = null

        try {
            try {
                val openCharacteristics = getCameraCharacteristicsCached(openCameraId)
                cacheActiveCameraCharacteristics(openCameraId, openCharacteristics)
                availableCaptureRequestKeyNames = loadAvailableCaptureRequestKeyNames(openCharacteristics)

                // 缓存固定属性（传感器方向、镜头朝向、硬件级别）
                // 这些值在相机生命周期内不会改变，避免在每帧预览中重复获取
                cachedSensorOrientation = openCharacteristics.get(CameraCharacteristics.SENSOR_ORIENTATION) ?: 0
                cachedLensFacing = openCharacteristics.get(CameraCharacteristics.LENS_FACING)
                    ?: CameraCharacteristics.LENS_FACING_BACK
                cachedHardwareLevel = openCharacteristics.get(CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL)
                    ?: CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL_LIMITED

                val hardwareLevelName = when (cachedHardwareLevel) {
                    CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL_LEGACY -> "LEGACY"
                    CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL_LIMITED -> "LIMITED"
                    CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL_FULL -> "FULL"
                    CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL_3 -> "LEVEL_3"
                    else -> "UNKNOWN($cachedHardwareLevel)"
                }

                // 更新硬件能力缓存
                val capabilities =
                    openCharacteristics.get(CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES) ?: intArrayOf()
                var capabilityCameraId = outputPhysicalCameraId ?: openCameraId
                val capabilityCharacteristics = if (capabilityCameraId == openCameraId) {
                    openCharacteristics
                } else {
                    getCameraCharacteristicsOrNull(
                        capabilityCameraId,
                        "physical output capability preload"
                    ) ?: run {
                        PLog.w(
                            TAG,
                            "Physical output camera $capabilityCameraId characteristics unavailable; " +
                                    "falling back to open camera $openCameraId"
                        )
                        outputPhysicalCameraId = null
                        activeOutputPhysicalCameraId = null
                        capabilityCameraId = openCameraId
                        openCharacteristics
                    }
                }
                isManualSensorSupported =
                    capabilities.contains(CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES_MANUAL_SENSOR)
                isManualPostProcessingSupported =
                    capabilities.contains(CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES_MANUAL_POST_PROCESSING)
                isFlashSupported = openCharacteristics.get(CameraCharacteristics.FLASH_INFO_AVAILABLE) ?: false
                maxAfRegions = openCharacteristics.get(CameraCharacteristics.CONTROL_MAX_REGIONS_AF) ?: 0
                maxAeRegions = openCharacteristics.get(CameraCharacteristics.CONTROL_MAX_REGIONS_AE) ?: 0
                val maxAwbRegions = openCharacteristics.get(CameraCharacteristics.CONTROL_MAX_REGIONS_AWB) ?: 0
                availableAfModes =
                    openCharacteristics.get(CameraCharacteristics.CONTROL_AF_AVAILABLE_MODES) ?: intArrayOf()
                availableEdgeModes =
                    openCharacteristics.get(CameraCharacteristics.EDGE_AVAILABLE_EDGE_MODES) ?: intArrayOf()
                availableNoiseReductionModes =
                    openCharacteristics.get(CameraCharacteristics.NOISE_REDUCTION_AVAILABLE_NOISE_REDUCTION_MODES)
                        ?: intArrayOf()
                availableTonemapModes =
                    openCharacteristics.get(CameraCharacteristics.TONEMAP_AVAILABLE_TONE_MAP_MODES) ?: intArrayOf()
                tonemapMaxCurvePoints =
                    openCharacteristics.get(CameraCharacteristics.TONEMAP_MAX_CURVE_POINTS) ?: 0
                availableColorCorrectionAberrationModes =
                    openCharacteristics.get(CameraCharacteristics.COLOR_CORRECTION_AVAILABLE_ABERRATION_MODES)
                        ?: intArrayOf()
                availableHotPixelModes =
                    openCharacteristics.get(CameraCharacteristics.HOT_PIXEL_AVAILABLE_HOT_PIXEL_MODES)
                        ?: intArrayOf()
                availableShadingModes =
                    openCharacteristics.get(CameraCharacteristics.SHADING_AVAILABLE_MODES) ?: intArrayOf()
                availableDistortionCorrectionModes =
                    openCharacteristics.get(CameraCharacteristics.DISTORTION_CORRECTION_AVAILABLE_MODES)
                        ?: intArrayOf()
                availableVideoStabilizationModes =
                    openCharacteristics.get(CameraCharacteristics.CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES)
                        ?: intArrayOf()
                availableOpticalStabilizationModes =
                    openCharacteristics.get(CameraCharacteristics.LENS_INFO_AVAILABLE_OPTICAL_STABILIZATION)
                        ?: intArrayOf()
                availableLensShadingMapModes =
                    openCharacteristics.get(CameraCharacteristics.STATISTICS_INFO_AVAILABLE_LENS_SHADING_MAP_MODES)
                        ?: intArrayOf()
                isRawSupported = isRawOutputSupported(capabilityCharacteristics) &&
                        (outputPhysicalCameraId?.let {
                            !isPhysicalOutputProfileFailed(it, ImageFormat.RAW_SENSOR)
                        } ?: true)

                availableAeModes =
                    openCharacteristics.get(CameraCharacteristics.CONTROL_AE_AVAILABLE_MODES) ?: intArrayOf()
                availableAwbModes =
                    openCharacteristics.get(CameraCharacteristics.CONTROL_AWB_AVAILABLE_MODES) ?: intArrayOf()

                isP010Supported = Build.VERSION.SDK_INT >= Build.VERSION_CODES.S &&
                        isOutputFormatAdvertised(capabilityCharacteristics, ImageFormat.YCBCR_P010) &&
                        (outputPhysicalCameraId?.let {
                            !isPhysicalOutputProfileFailed(it, ImageFormat.YCBCR_P010)
                        } ?: true)
                isHlg10Supported = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU && isP010Supported) {
                    val dynamicRangeProfiles =
                        openCharacteristics.get(CameraCharacteristics.REQUEST_AVAILABLE_DYNAMIC_RANGE_PROFILES)
                    dynamicRangeProfiles?.supportedProfiles?.contains(DynamicRangeProfiles.HLG10) == true
                } else {
                    false
                }

                val resolvedVideoPreviewSize = refreshVideoCapabilities(openCharacteristics)
                val resolvedQuickShotPreviewSize = refreshQuickShotCapabilities(openCharacteristics)
                previewSize = when (captureMode) {
                    CaptureMode.VIDEO -> resolvedVideoPreviewSize
                    CaptureMode.QUICK_SHOT -> resolvedQuickShotPreviewSize
                    CaptureMode.PHOTO -> CameraUtils.getFixedPreviewSize(openCharacteristics, _state.value.aspectRatio)
                }
                surfaceTexture.setDefaultBufferSize(previewSize.width, previewSize.height)

                if (_state.value.useLivePhoto && captureMode == CaptureMode.PHOTO) {
                    livePhotoRecorder.startRecording()
                }

                PLog.i(
                    TAG, "Camera characteristics cached - selected=$cameraId, open=$openCameraId, " +
                            "capability=$capabilityCameraId, Level: $hardwareLevelName, " +
                            "ManualSensor: $isManualSensorSupported, ManualPost: $isManualPostProcessingSupported, " +
                            "RAW: $isRawSupported, P010: $isP010Supported, " +
                            "MaxRegions(AF/AE/AWB): $maxAfRegions/$maxAeRegions/$maxAwbRegions, " +
                            "AF modes: ${availableAfModes.joinToString()}"
                )

                val selectableNrModes = buildSelectableNoiseReductionModes(availableNoiseReductionModes)

                val focusCharacteristics = resolveActiveFocusCharacteristics(openCharacteristics)?.second
                    ?: openCharacteristics
                val minimumFocusDistance =
                    focusCharacteristics.get(CameraCharacteristics.LENS_INFO_MINIMUM_FOCUS_DISTANCE) ?: 0f

                _state.value = _state.value.copy(
                    isRawSupported = isRawSupported,
                    isP010Supported = isP010Supported,
                    isHlg10Supported = isHlg10Supported,
                    availableNrModes = selectableNrModes,
                    currentPreviewSize = previewSize,
                    currentCaptureSize = if (captureMode == CaptureMode.VIDEO || captureMode == CaptureMode.QUICK_SHOT) {
                        previewSize
                    } else {
                        _state.value.currentCaptureSize
                    },
                    minimumFocusDistance = minimumFocusDistance
                )
                refreshHyperfocalFocusDistanceIfEnabled(updatePreview = false)
            } catch (e: Exception) {
                handleCameraOpenFailure(
                    cameraId = openCameraId,
                    errorCode = ERROR_CAMERA_CHARACTERISTICS_UNAVAILABLE,
                    message = "相机特性不可用",
                    error = e
                )
                surfaceTexture.setDefaultBufferSize(previewSize.width, previewSize.height)
                return
            }

            // 配置 SurfaceTexture
            previewSurfaceTexture = surfaceTexture
            previewSurface = Surface(surfaceTexture)

            if (captureMode == CaptureMode.PHOTO) {
                val aspectRatio = state.value.aspectRatio
                val effectivelyUseRaw = state.value.useRaw && isRawSupported
                val openCharacteristics = getCameraCharacteristicsCached(openCameraId)
                var outputCameraIdForStreams = outputPhysicalCameraId ?: openCameraId
                var outputCharacteristicsForStreams = if (outputCameraIdForStreams == openCameraId) {
                    openCharacteristics
                } else {
                    getCameraCharacteristicsCached(outputCameraIdForStreams)
                }
                var rawCaptureSize = if (effectivelyUseRaw) {
                    CameraUtils.getRawCaptureSize(outputCharacteristicsForStreams)
                } else {
                    null
                }
                val wantsP010 = !effectivelyUseRaw &&
                        isP010Supported &&
                        Build.VERSION.SDK_INT >= Build.VERSION_CODES.S &&
                        state.value.useP010
                var captureFormat = if (rawCaptureSize != null) {
                    ImageFormat.RAW_SENSOR
                } else if (wantsP010 && isOutputFormatAdvertised(outputCharacteristicsForStreams, ImageFormat.YCBCR_P010)) {
                    ImageFormat.YCBCR_P010
                } else {
                    ImageFormat.YUV_420_888
                }
                if (outputPhysicalCameraId != null && isPhysicalOutputProfileFailed(outputPhysicalCameraId, captureFormat)) {
                    val failedPhysicalCameraId = outputPhysicalCameraId
                    PLog.w(
                        TAG,
                        "Skipping previously failed physical output profile: " +
                                "physicalCameraId=$failedPhysicalCameraId, format=${imageFormatToString(captureFormat)}. " +
                                "Falling back to logical output for this profile."
                    )
                    outputPhysicalCameraId = null
                    activeOutputPhysicalCameraId = null
                    outputCameraIdForStreams = openCameraId
                    outputCharacteristicsForStreams = openCharacteristics
                    rawCaptureSize = null
                    captureFormat = ImageFormat.YUV_420_888
                }
                previewSize = CameraUtils.getFixedPreviewSize(outputCharacteristicsForStreams, aspectRatio)
                surfaceTexture.setDefaultBufferSize(previewSize.width, previewSize.height)
                val captureSize = if (captureFormat == ImageFormat.RAW_SENSOR && rawCaptureSize != null) {
                    rawCaptureSize
                } else {
                    CameraUtils.getBestCaptureSize(outputCharacteristicsForStreams, aspectRatio, captureFormat)
                }

                val isP3Supported = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.UPSIDE_DOWN_CAKE) {
                    outputCharacteristicsForStreams.get(CameraCharacteristics.REQUEST_AVAILABLE_COLOR_SPACE_PROFILES)
                        ?.getSupportedColorSpaces(captureFormat)
                        ?.contains(ColorSpace.Named.DISPLAY_P3) == true
                } else false

                _state.value = _state.value.copy(
                    isP3Supported = isP3Supported,
                    currentCaptureSize = captureSize
                )

                val readerMaxImages = resolveImageReaderMaxImages()
                imageReaderMaxImages = readerMaxImages

                PLog.d(
                    TAG,
                    "拍照尺寸: ${captureSize.width}x${captureSize.height}, 预览尺寸: ${previewSize.width}x${previewSize.height}, 格式: ${
                        when (captureFormat) {
                            ImageFormat.RAW_SENSOR -> "RAW"
                            ImageFormat.YCBCR_P010 -> "P010"
                            else -> "YUV"
                        }
                    }, stream=$outputCameraIdForStreams, isP3Supported: $isP3Supported, imageReaderMaxImages: $readerMaxImages"
                )
                imageReader = ImageReader.newInstance(
                    captureSize.width,
                    captureSize.height,
                    captureFormat,
                    readerMaxImages
                ).apply {
                    setOnImageAvailableListener({ reader ->
                        try {
                            if (!canAcquireImage("Too many open images")) {
                                return@setOnImageAvailableListener
                            }
                            val rawImage = when {
                                state.value.burstCapturing -> reader.acquireNextImage()
                                state.value.hdrBracketCapturing -> reader.acquireNextImage()
                                state.value.useMFNR -> reader.acquireNextImage()
                                state.value.useMFSR -> reader.acquireNextImage()
                                else -> reader.acquireLatestImage()
                            }
                            val image = trackImage(rawImage)
                            if (image != null) {
                                if (shouldPairImageWithCaptureResult(image)) {
                                    processOrBufferImageForCaptureResult(image)
                                } else {
                                    processAndTriggerCapture(image, null)
                                }
                            } else {
                                PLog.w(TAG, "acquireNextImage() returned null, resetting capture state")
                                _state.value = _state.value.copy(
                                    isCapturing = false,
                                    hdrBracketCapturing = false,
                                    hdrBracketFrameCount = 0
                                )
                                resetPreviewAfterCapture()
                            }
                        } catch (e: Exception) {
                            PLog.e(TAG, "Error in onImageAvailable", e)
                            _state.value = _state.value.copy(
                                isCapturing = false,
                                hdrBracketCapturing = false,
                                hdrBracketFrameCount = 0
                            )
                            resetPreviewAfterCapture()
                        }
                    }, cameraHandler)
                }

            } else {
                safeCloseImageReader(imageReader)
                imageReader = null
                _state.value = _state.value.copy(isP3Supported = false)
            }

            PLog.d(TAG, "Opening camera: open=$openCameraId, selected=$cameraId")

            cameraManager.openCamera(openCameraId, object : CameraDevice.StateCallback() {
                override fun onOpened(camera: CameraDevice) {
                    if (openGeneration != cameraOpenGeneration) {
                        PLog.w(TAG, "Ignoring stale camera open callback: camera=${camera.id}")
                        camera.close()
                        return
                    }
                    PLog.d(TAG, "Camera opened: ${camera.id}")
                    cameraDevice = camera
                    createPreviewSession(openGeneration = openGeneration)
                }

                override fun onDisconnected(camera: CameraDevice) {
                    if (openGeneration != cameraOpenGeneration) {
                        camera.close()
                        return
                    }
                    PLog.w(TAG, "Camera disconnected: ${camera.id} - 相机被其他应用或系统接管")
                    handleCameraDeviceUnavailable(
                        camera = camera,
                        reason = "camera disconnected: ${camera.id}"
                    )

                    // 通知上层：相机断开连接，可以在 onResume 时重试
                    onCameraError?.invoke(
                        ERROR_CAMERA_DISCONNECTED,
                        "相机已被其他应用或系统接管",
                        true  // canRetry = true
                    )
                }

                override fun onError(camera: CameraDevice, error: Int) {
                    if (openGeneration != cameraOpenGeneration) {
                        camera.close()
                        return
                    }
                    val errorMessage = when (error) {
                        ERROR_CAMERA_IN_USE ->
                            "相机正在被其他应用使用"

                        ERROR_MAX_CAMERAS_IN_USE ->
                            "已达到相机最大打开数量"

                        ERROR_CAMERA_DISABLED ->
                            "相机被系统策略禁用"

                        ERROR_CAMERA_DEVICE ->
                            "相机设备遇到严重错误"

                        ERROR_CAMERA_SERVICE ->
                            "相机服务遇到严重错误"

                        else -> "未知相机错误 ($error)"
                    }

                    PLog.e(TAG, "Camera error: ${camera.id}, error=$error - $errorMessage")
                    handleCameraDeviceUnavailable(
                        camera = camera,
                        reason = "camera error ${camera.id}: $error"
                    )

                    // 判断是否可以重试
                    val canRetry = when (error) {
                        ERROR_CAMERA_IN_USE,
                        ERROR_MAX_CAMERAS_IN_USE -> true

                        ERROR_CAMERA_DISABLED,
                        ERROR_CAMERA_DEVICE,
                        ERROR_CAMERA_SERVICE -> false

                        else -> false
                    }

                    // 通知上层
                    onCameraError?.invoke(error, errorMessage, canRetry)
                    _state.value = _state.value.copy(isCapturing = false)
                }
            }, cameraHandler)

        } catch (e: Exception) {
            handleCameraOpenFailure(
                cameraId = openCameraId,
                errorCode = ERROR_CAMERA_OPEN_FAILED,
                message = "相机打开失败",
                error = e
            )
        }
    }

    fun updateHistogram(histogram: IntArray) {
        _state.value = _state.value.copy(histogram = histogram)
    }

    fun calculateAutoMetering(totalWeight: Double, weightedSumLuminance: Double) {
        val currentState = _state.value
        if (!currentState.isAutoExposure && (currentState.isIsoAuto || currentState.isShutterSpeedAuto)) {

            // --- 1. 计算亮度 ---
            val rawAvgLuminance = if (totalWeight > 0) weightedSumLuminance / totalWeight else 0.0

            // 保护：如果画面全黑，避免除以0或Log错误
            if (rawAvgLuminance < 1.0) return

            // --- 2. 关键修复：预览流亮度补偿 ---
            // 预览流的曝光时间被帧率限制了（比如最长只能 33ms）
            // 但实际拍摄参数可能是 100ms。我们需要推算“如果预览流能曝光 100ms，亮度会是多少”
            val currentShutter = currentState.shutterSpeed
            val clampedPreviewTime = currentShutter.coerceAtMost(getMaxPreviewExposureTime(currentState))

            // 补偿系数：如果当前设定快门是 66ms，预览限制是 33ms，那么真实亮度应该是预览亮度的 2 倍
            val exposureRatio = currentShutter.toDouble() / clampedPreviewTime.toDouble()

            // 【修正】使用补偿后的亮度来与目标值对比
            val estimatedRealLuminance = rawAvgLuminance * exposureRatio

            val targetLuminance = 128.0 // Target (Gamma Corrected 18% Gray)

            // --- 3. 计算 EV 误差 ---
            // 使用 Log2 计算差了多少档光圈 (Stops)
            // 这是一个更符合人眼和相机光学的度量方式
            val evErrorStops = ln(targetLuminance / estimatedRealLuminance) / ln(2.0)

            // --- 4. 稳定性控制 (Deadband) ---
            // 如果误差在 +/- 0.3 EV (约 1/3 档) 以内，认为曝光准确，不调整
            // 这能极大减少画面“呼吸感”
            if (abs(evErrorStops) < 0.3) {
                return
            }

            // --- 5. 计算修正系数 (P控制 + 阻尼) ---
            // 阻尼系数 0.2 ~ 0.5 比较合适，太小收敛慢，太大容易震荡
            val damping = 0.3
            // 限制单次最大调整幅度，防止突变 (例如限制在 +/- 1 EV 内)
            val limitedEvError = evErrorStops.coerceIn(-1.0, 1.0)
            val correctionFactor = 2.0.pow(limitedEvError * damping)

            // --- 6. 应用调整 ---
            var newIso = currentState.iso
            var newShutter = currentState.shutterSpeed
            var needsUpdate = false

            if (currentState.isIsoAuto) {
                // ISO 优先模式：快门固定，调 ISO
                val calculatedIso = (currentState.iso * correctionFactor).toInt()
                val range = currentState.getIsoRange()
                val clampedIso = calculatedIso.coerceIn(range.lower, range.upper)

                // 只有变化量超过一定阈值才应用（防止 ISO 在 100 和 101 之间跳动）
                if (abs(clampedIso - currentState.iso) > currentState.iso * 0.05) {
                    newIso = clampedIso
                    needsUpdate = true
                }
            } else {
                // 快门优先模式：ISO 固定，调快门
                val calculatedShutter = (currentState.shutterSpeed * correctionFactor).toLong()
                val range = currentState.getManualShutterSpeedRange()
                val clampedShutter = calculatedShutter.coerceIn(range.lower, range.upper)

                if (abs(clampedShutter - currentState.shutterSpeed) > currentState.shutterSpeed * 0.05) {
                    newShutter = clampedShutter
                    needsUpdate = true
                }
            }

            // --- 7. 下发指令 ---
            if (needsUpdate) {
                // 更新状态
                _state.value = currentState.copy(iso = newIso, shutterSpeed = newShutter)

                // 关键修复：检查相机和会话是否仍然有效
                val device = cameraDevice
                val session = captureSession
                val builder = previewRequestBuilder

                if (device == null || session == null || builder == null) {
                    PLog.v(TAG, "calculateAutoMetering: camera not ready, skipping update")
                    return
                }

                try {
                    applyExposureSettings(builder, _state.value, false)
                    session.setRepeatingRequest(
                        builder.build(),
                        previewCallback,
                        cameraHandler
                    )
                } catch (e: CameraAccessException) {
                    PLog.e(TAG, "Failed to update exposure: ${e.message}")
                } catch (e: IllegalStateException) {
                    PLog.w(TAG, "Failed to update exposure - camera closed: ${e.message}")
                } catch (e: Exception) {
                    PLog.e(TAG, "Failed to update exposure: ${e.message}")
                }
            }
        }
    }

    private fun createPreviewSession(
        forceStandardSession: Boolean = false,
        openGeneration: Long = cameraOpenGeneration
    ) {
        if (openGeneration != cameraOpenGeneration) {
            PLog.w(TAG, "Skipping stale preview session creation")
            return
        }
        val device = cameraDevice ?: return
        val surface = previewSurface ?: return
        val captureMode = _state.value.captureMode
        val reader = imageReader
        val sessionGeneration = ++previewSessionGeneration

        try {
            previewRequestBuilder = device.createCaptureRequest(
                if (captureMode == CaptureMode.VIDEO) CameraDevice.TEMPLATE_RECORD else CameraDevice.TEMPLATE_PREVIEW
            ).apply {
                addTarget(surface)

                // 应用所有相机参数（曝光、白平衡、闪光灯、变焦、色调映射）
                applyBaseCameraSettings(this, isCapture = false)
            }

            val surfaces = mutableListOf(surface)
            if (captureMode == CaptureMode.PHOTO) {
                val captureReader = reader ?: return
                surfaces += captureReader.surface
            }

            if (captureMode == CaptureMode.VIDEO) {
                val useHlgCapture = _state.value.useHlg10 && activeOutputPhysicalCameraId == null && !forceStandardSession
                val sessionConfig = SessionConfiguration(
                    SessionConfiguration.SESSION_REGULAR,
                    surfaces.map { outputSurface ->
                        createOutputConfiguration(outputSurface, useHlgCapture)
                    },
                    Executors.newSingleThreadExecutor(),
                    object : CameraCaptureSession.StateCallback() {
                        override fun onConfigured(session: CameraCaptureSession) {
                            if (openGeneration != cameraOpenGeneration || sessionGeneration != previewSessionGeneration) {
                                PLog.w(TAG, "Closing stale video preview session")
                                safeCloseCaptureSession(session, "stale video preview session")
                                return
                            }
                            if (useHlgCapture) {
                                _state.value = _state.value.copy(currentDynamicRangeProfile = "HLG10")
                            } else if (_state.value.currentDynamicRangeProfile != "STANDARD") {
                                _state.value = _state.value.copy(currentDynamicRangeProfile = "STANDARD")
                            }
                            onSessionConfigured(session, openGeneration, sessionGeneration)
                        }

                        override fun onConfigureFailed(session: CameraCaptureSession) {
                            if (openGeneration != cameraOpenGeneration || sessionGeneration != previewSessionGeneration) {
                                safeCloseCaptureSession(session, "stale video configure failure")
                                return
                            }
                            PLog.e(TAG, "Video session configuration failed: useHlgCapture=$useHlgCapture")
                            safeCloseCaptureSession(session, "video configure failure")
                            if (retryPreviewSessionWithoutPhysicalOutput("video configure failed", openGeneration)) {
                                return
                            }
                            if (useHlgCapture) {
                                PLog.w(TAG, "Retrying video preview session with STANDARD dynamic range fallback")
                                _state.value = _state.value.copy(currentDynamicRangeProfile = "STANDARD")
                                createPreviewSession(forceStandardSession = true, openGeneration = openGeneration)
                                return
                            }
                            handlePreviewSessionFailure("video configure failed", openGeneration)
                        }
                    }
                )
                applyInitialSessionParameters(sessionConfig)
                device.createCaptureSession(sessionConfig)
                return
            }


            // Android 9+ 使用 SessionConfiguration
            val useHlgCapture = _state.value.useHlg10 &&
                    activeOutputPhysicalCameraId == null &&
                    !_state.value.useRaw &&
                    !forceStandardSession
            val readerFormat = reader?.imageFormat ?: ImageFormat.YUV_420_888
            PLog.i(
                TAG,
                "Creating preview session: forceStandard=$forceStandardSession, " +
                        "useHlgCapture=$useHlgCapture, readerFormat=${imageFormatToString(readerFormat)}, " +
                        "isP010Supported=$isP010Supported, isHlg10Supported=$isHlg10Supported, "
            )
            val outputConfigs = surfaces.map { outputSurface ->
                createOutputConfiguration(outputSurface, useHlgCapture)
            }
            val sessionConfig = SessionConfiguration(
                SessionConfiguration.SESSION_REGULAR,
                outputConfigs,
                Executors.newSingleThreadExecutor(),
                object : CameraCaptureSession.StateCallback() {
                    override fun onConfigured(session: CameraCaptureSession) {
                        if (openGeneration != cameraOpenGeneration || sessionGeneration != previewSessionGeneration) {
                            PLog.w(TAG, "Closing stale preview session")
                            safeCloseCaptureSession(session, "stale preview session")
                            return
                        }
                        if (useHlgCapture) {
                            _state.value = _state.value.copy(currentDynamicRangeProfile = "HLG10")
                        } else if (_state.value.currentDynamicRangeProfile != "STANDARD") {
                            _state.value = _state.value.copy(currentDynamicRangeProfile = "STANDARD")
                        }
                        onSessionConfigured(session, openGeneration, sessionGeneration)
                    }

                    override fun onConfigureFailed(session: CameraCaptureSession) {
                        if (openGeneration != cameraOpenGeneration || sessionGeneration != previewSessionGeneration) {
                            safeCloseCaptureSession(session, "stale configure failure")
                            return
                        }
                        PLog.e(
                            TAG,
                            "Session configuration failed: useHlgCapture=$useHlgCapture, " +
                                    "readerFormat=${imageFormatToString(readerFormat)}, " +
                                    "sessionColorSpace=${if (shouldUseP3ColorSpace()) "DISPLAY_P3" else "DEFAULT"}"
                        )
                        safeCloseCaptureSession(session, "photo configure failure")
                        if (retryPreviewSessionWithoutPhysicalOutput("photo configure failed", openGeneration)) {
                            return
                        }
                        if (useHlgCapture) {
                            PLog.w(TAG, "Retrying preview session with STANDARD dynamic range fallback")
                            _state.value = _state.value.copy(currentDynamicRangeProfile = "STANDARD")
                            createPreviewSession(forceStandardSession = true, openGeneration = openGeneration)
                            return
                        }
                        handlePreviewSessionFailure("photo configure failed", openGeneration)
                    }
                }
            )
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.UPSIDE_DOWN_CAKE) {
                if (shouldUseP3ColorSpace() && !useHlgCapture) {
                    sessionConfig.setColorSpace(ColorSpace.Named.DISPLAY_P3)
                }
            }
            device.createCaptureSession(sessionConfig)
        } catch (e: IllegalStateException) {
            PLog.w(TAG, "Failed to create preview session", e)
            if (!retryPreviewSessionWithoutPhysicalOutput("create session illegal state: ${e.message}", openGeneration)) {
                handlePreviewSessionFailure("create session illegal state", openGeneration, e)
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to create preview session", e)
            if (!retryPreviewSessionWithoutPhysicalOutput("create session exception: ${e.message}", openGeneration)) {
                handlePreviewSessionFailure("create session exception", openGeneration, e)
            }
        }
    }

    private fun retryPreviewSessionWithoutPhysicalOutput(
        reason: String,
        openGeneration: Long
    ): Boolean {
        val failedPhysicalCameraId = activeOutputPhysicalCameraId ?: return false
        rememberPhysicalOutputProfileFailure(failedPhysicalCameraId, reason = reason)
        PLog.w(
            TAG,
            "Retrying preview session without physical output binding: " +
                    "physicalCameraId=$failedPhysicalCameraId, " +
                    "format=${imageFormatToString(imageReader?.imageFormat ?: NO_IMAGE_READER_FORMAT)}, " +
                    "reason=$reason"
        )
        activeOutputPhysicalCameraId = null
        createPreviewSession(openGeneration = openGeneration)
        return true
    }

    private fun createOutputConfiguration(
        surface: Surface,
        useHlgCapture: Boolean
    ): OutputConfiguration {
        return OutputConfiguration(surface).apply {
            activeOutputPhysicalCameraId?.let { physicalCameraId ->
                setPhysicalCameraId(physicalCameraId)
                PLog.i(
                    TAG,
                    "OutputConfiguration bound to physicalCameraId=$physicalCameraId " +
                            "(openCameraId=$activeOpenCameraId)"
                )
            }

            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.UPSIDE_DOWN_CAKE && !DeviceUtil.isHarmonyOS) {
                dynamicRangeProfile = if (useHlgCapture) {
                    DynamicRangeProfiles.HLG10
                } else {
                    DynamicRangeProfiles.STANDARD
                }
            }
        }
    }

    private fun applyInitialSessionParameters(sessionConfig: SessionConfiguration) {
        val builder = previewRequestBuilder ?: return
        val sessionKeys = try {
            getActiveOpenCameraCharacteristics()?.availableSessionKeys
        } catch (e: Exception) {
            PLog.w(TAG, "Failed to query available session keys", e)
            null
        }

        val shouldSetSessionParameters =
            sessionKeys?.contains(CaptureRequest.CONTROL_VIDEO_STABILIZATION_MODE) == true ||
                sessionKeys?.contains(CaptureRequest.LENS_OPTICAL_STABILIZATION_MODE) == true

        if (!shouldSetSessionParameters) return

        try {
            sessionConfig.setSessionParameters(builder.build())
        } catch (e: Exception) {
            PLog.w(TAG, "Failed to set initial session parameters", e)
        }
    }

    private fun getTargetZoomRatioByMain(
        state: CameraState,
        camera: CameraInfo?
    ): Float {
        return camera?.let { it.intrinsicZoomRatio * state.zoomRatio } ?: state.zoomRatio
    }

    private fun resolveRequestedPhysicalCameraId(
        state: CameraState = _state.value,
        camera: CameraInfo? = state.getCurrentCameraInfo()
    ): String? {
        return camera
            ?.getBoundPhysicalCameraId(getTargetZoomRatioByMain(state, camera))
    }

    private fun resolveOutputPhysicalCameraId(
        state: CameraState = _state.value,
        camera: CameraInfo? = state.getCurrentCameraInfo()
    ): String? {
        return resolveRequestedPhysicalCameraId(state, camera)
            ?.takeUnless { isPhysicalOutputProfileFailed(it) }
    }

    private fun physicalOutputFailureKey(
        physicalCameraId: String,
        readerFormat: Int = imageReader?.imageFormat ?: NO_IMAGE_READER_FORMAT
    ): PhysicalOutputFailureKey? {
        val openCameraId = activeOpenCameraId.takeIf { it.isNotEmpty() } ?: return null
        return PhysicalOutputFailureKey(
            openCameraId = openCameraId,
            physicalCameraId = physicalCameraId,
            captureMode = _state.value.captureMode,
            readerFormat = readerFormat
        )
    }

    private fun isPhysicalOutputProfileFailed(
        physicalCameraId: String,
        readerFormat: Int = imageReader?.imageFormat ?: NO_IMAGE_READER_FORMAT
    ): Boolean {
        return physicalOutputFailureKey(physicalCameraId, readerFormat)?.let { key ->
            failedPhysicalOutputProfiles.contains(key)
        } ?: false
    }

    private fun rememberPhysicalOutputProfileFailure(
        physicalCameraId: String,
        readerFormat: Int = imageReader?.imageFormat ?: NO_IMAGE_READER_FORMAT,
        reason: String
    ) {
        val key = physicalOutputFailureKey(physicalCameraId, readerFormat) ?: return
        if (failedPhysicalOutputProfiles.add(key)) {
            PLog.w(
                TAG,
                "Physical output profile disabled: open=${key.openCameraId}, " +
                        "physical=${key.physicalCameraId}, mode=${key.captureMode}, " +
                        "format=${imageFormatToString(key.readerFormat)}, reason=$reason"
            )
            updateCurrentOutputSupportAfterPhysicalFailure(key)
        }
    }

    private fun updateCurrentOutputSupportAfterPhysicalFailure(key: PhysicalOutputFailureKey) {
        val selectedPhysicalCameraId = resolveRequestedPhysicalCameraId()
        if (selectedPhysicalCameraId != key.physicalCameraId) return

        when (key.readerFormat) {
            ImageFormat.RAW_SENSOR -> {
                isRawSupported = false
                _state.value = _state.value.copy(isRawSupported = false)
            }

            ImageFormat.YCBCR_P010 -> {
                isP010Supported = false
                _state.value = _state.value.copy(isP010Supported = false)
            }
        }
    }

    private fun isOutputFormatAdvertised(
        characteristics: CameraCharacteristics,
        format: Int
    ): Boolean {
        val outputFormats = characteristics
            .get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP)
            ?.outputFormats
            ?: return false
        return outputFormats.contains(format)
    }

    private fun isRawOutputSupported(characteristics: CameraCharacteristics): Boolean {
        return CameraUtils.getRawCaptureSize(characteristics) != null
    }

    private fun onSessionConfigured(
        session: CameraCaptureSession,
        openGeneration: Long = cameraOpenGeneration,
        sessionGeneration: Long = previewSessionGeneration
    ) {
        if (openGeneration != cameraOpenGeneration || sessionGeneration != previewSessionGeneration) {
            PLog.w(TAG, "Ignoring stale configured session")
            safeCloseCaptureSession(session, "stale configured session")
            return
        }
        captureSession = session

        try {
            // 根据测光模式设置默认 AE 区域
            applyMeteringRegions()

            // 开始预览
            // 关键修复: 不再动态添加 surface，因为已经在创建 builder 时添加了
            previewRequestBuilder?.let { builder ->
                session.setRepeatingRequest(builder.build(), previewCallback, cameraHandler)
            }

            _state.value = _state.value.copy(isPreviewActive = true)
            PLog.d(TAG, "Preview started")

        } catch (e: CameraAccessException) {
            PLog.e(TAG, "Failed to start preview")
            handlePreviewSessionFailure("start preview camera access", openGeneration, e)
        } catch (e: IllegalStateException) {
            PLog.e(TAG, "Failed to start preview - illegal state")
            handlePreviewSessionFailure("start preview illegal state", openGeneration, e)
        } catch (e: IllegalArgumentException) {
            PLog.e(TAG, "Failed to start preview - unconfigured surface")
            handlePreviewSessionFailure("start preview unconfigured surface", openGeneration, e)
        }
    }

    private fun imageFormatToString(format: Int): String {
        return when (format) {
            NO_IMAGE_READER_FORMAT -> "NO_IMAGE_READER"
            ImageFormat.RAW_SENSOR -> "RAW_SENSOR"
            ImageFormat.YCBCR_P010 -> "YCBCR_P010"
            ImageFormat.YUV_420_888 -> "YUV_420_888"
            ImageFormat.JPEG -> "JPEG"
            else -> format.toString()
        }
    }

    private fun isRawCaptureReader(reader: ImageReader?): Boolean {
        return reader?.imageFormat == ImageFormat.RAW_SENSOR
    }

// ==================== 统一参数配置 ====================

    /**
     * 将当前状态中的相机参数应用到 CaptureRequest.Builder
     *
     * 这是确保预览与拍摄参数一致性的核心方法
     *
     * @param builder 需要配置的 Builder
     * @param isCapture 是否为拍摄请求（预览时某些参数有限制）
     * @param isRawCapture 是否为 RAW 拍摄请求（跳过 RAW 不需要的 ISP 后处理参数）
     */
    private fun applyBaseCameraSettings(
        builder: CaptureRequest.Builder,
        isCapture: Boolean = false,
        isRawCapture: Boolean = false,
        disableZslForHdrCapture: Boolean = false
    ) {
        val currentState = _state.value

        // 1. 曝光设置
        applyExposureSettings(builder, currentState, isCapture)

        // 2. 白平衡设置
        applyWhiteBalanceSettings(builder, currentState, isCapture)

        // 3. 闪光灯设置（传递 isCapture 参数）
        applyFlashSettings(builder, currentState, isCapture)

        // 4. 变焦设置
        applyZoomSettings(builder, currentState)

        // 5. 对焦设置
        applyFocusSettings(builder, currentState)

        if (!isRawCapture) {
            // 6. 图像质量设置（锐化、降噪）
            applyImageQualitySettings(builder, isCapture)

            // 7. 视频 Log / 色调映射设置
            applyToneMapSettings(builder, currentState, isCapture)
        }

        // 8. 防抖设置
        applyStabilizationSettings(builder, currentState)

        if (!isRawCapture) {
            // 9. 静态拍照后处理质量设置
            applyStillPostProcessingSettings(builder, currentState, isCapture)
        }

        // 10. 统计信息设置
        if (availableLensShadingMapModes.contains(CaptureRequest.STATISTICS_LENS_SHADING_MAP_MODE_ON)) {
            builder.set(
                CaptureRequest.STATISTICS_LENS_SHADING_MAP_MODE,
                CaptureRequest.STATISTICS_LENS_SHADING_MAP_MODE_ON
            )
        }

        if (disableZslForHdrCapture) {
            setZslDisabledIfSupported(builder)
        }
        applyVendorCaptureSettings(builder, isCapture)
    }

    private fun applyVendorCaptureSettings(builder: CaptureRequest.Builder, isCapture: Boolean) {
//        if (!isCapture) return
        val state = _state.value
        val lensId = state.currentCameraId
        val settings = state.vendorCaptureSettingsByLens.settingsFor(lensId)
        if (!settings.isEnabled) return

        settings.values.forEach { (key, value) ->
            try {
                when (key.valueType) {
                    VendorCaptureValueType.INT -> {
                        builder.set(
                            CaptureRequest.Key(key.requestKeyName, Int::class.java),
                            value
                        )
                    }

                    VendorCaptureValueType.BYTE -> {
                        builder.set(
                            CaptureRequest.Key(key.requestKeyName, Byte::class.java),
                            key.normalizeValue(value).toByte()
                        )
                    }
                }
                PLog.d(TAG, "Applied vendor capture key for lens $lensId: ${key.requestKeyName}=${key.normalizeValue(value)}")
            } catch (e: Exception) {
                PLog.w(TAG, "Failed to apply vendor capture key for lens $lensId: ${key.requestKeyName}", e)
            }
        }
    }

    private fun isCaptureRequestKeyAvailable(requestKeyName: String): Boolean {
        val keyNames = availableCaptureRequestKeyNames
            ?: loadAvailableCaptureRequestKeyNames(getActiveOpenCameraCharacteristics()).also {
                availableCaptureRequestKeyNames = it
            }
        return keyNames.contains(requestKeyName)
    }

    private fun loadAvailableCaptureRequestKeyNames(characteristics: CameraCharacteristics?): Set<String> {
        if (characteristics == null) return emptySet()
        return try {
            characteristics.availableCaptureRequestKeys
                .map { it.name }
                .toSet()
        } catch (e: Exception) {
            PLog.w(TAG, "Failed to query available capture request keys", e)
            emptySet()
        }
    }

    private fun setZslDisabledIfSupported(builder: CaptureRequest.Builder) {
        if (!isZslControlAvailable()) return
        builder.set(CaptureRequest.CONTROL_ENABLE_ZSL, false)
    }

    private fun isZslControlAvailable(): Boolean {
        isZslControlSupported?.let { return it }
        val supported = try {
            getActiveOpenCameraCharacteristics()
                ?.availableCaptureRequestKeys
                ?.contains(CaptureRequest.CONTROL_ENABLE_ZSL)
                ?: true
        } catch (e: Exception) {
            PLog.w(TAG, "Failed to query available capture request keys for ZSL control", e)
            true
        }
        isZslControlSupported = supported
        if (!supported) {
            PLog.i(TAG, "CONTROL_ENABLE_ZSL is not listed in available capture request keys")
        }
        return supported
    }

    /**
     * 应用连续自动对焦设置。
     *
     * 一些设备不会很好地处理未声明支持的 AF 模式，或者在单次 AF 触发后保持旧触发状态。
     * 这里统一按能力选择默认 AF 模式，并显式复位触发器，避免预览请求停在不稳定状态。
     */
    private fun applyAutoFocusSettings(builder: CaptureRequest.Builder, state: CameraState) {
        val afMode = resolveAutoFocusMode(state.captureMode)

        builder.set(CaptureRequest.CONTROL_MODE, CaptureRequest.CONTROL_MODE_AUTO)
        builder.set(CaptureRequest.CONTROL_AF_TRIGGER, CaptureRequest.CONTROL_AF_TRIGGER_IDLE)
        builder.set(CaptureRequest.CONTROL_AF_MODE, afMode)

        if (_state.value.currentAfMode != afMode) {
            _state.value = _state.value.copy(currentAfMode = afMode)
        }
    }

    private fun applyFocusSettings(builder: CaptureRequest.Builder, state: CameraState) {
        if (state.isAutoFocus) {
            applyAutoFocusSettings(builder, state)
            return
        }

        val clampedDistance = if (state.minimumFocusDistance > 0f) {
            state.focusDistance.coerceIn(0f, state.minimumFocusDistance)
        } else {
            0f
        }

        builder.set(CaptureRequest.CONTROL_MODE, CaptureRequest.CONTROL_MODE_AUTO)
        builder.set(CaptureRequest.CONTROL_AF_TRIGGER, CaptureRequest.CONTROL_AF_TRIGGER_IDLE)
        builder.set(CaptureRequest.CONTROL_AF_MODE, CaptureRequest.CONTROL_AF_MODE_OFF)
        builder.set(CaptureRequest.LENS_FOCUS_DISTANCE, clampedDistance)

        if (_state.value.currentAfMode != CaptureRequest.CONTROL_AF_MODE_OFF) {
            _state.value = _state.value.copy(currentAfMode = CaptureRequest.CONTROL_AF_MODE_OFF)
        }
    }

    private fun resolveAutoFocusMode(captureMode: CaptureMode): Int {
        if (availableAfModes.isEmpty()) {
            return CaptureRequest.CONTROL_AF_MODE_CONTINUOUS_PICTURE
        }

        val preferredModes = if (captureMode == CaptureMode.VIDEO || captureMode == CaptureMode.QUICK_SHOT) {
            intArrayOf(
                CaptureRequest.CONTROL_AF_MODE_CONTINUOUS_VIDEO,
                CaptureRequest.CONTROL_AF_MODE_CONTINUOUS_PICTURE,
                CaptureRequest.CONTROL_AF_MODE_AUTO,
                CaptureRequest.CONTROL_AF_MODE_OFF
            )
        } else {
            intArrayOf(
                CaptureRequest.CONTROL_AF_MODE_CONTINUOUS_PICTURE,
                CaptureRequest.CONTROL_AF_MODE_CONTINUOUS_VIDEO,
                CaptureRequest.CONTROL_AF_MODE_AUTO,
                CaptureRequest.CONTROL_AF_MODE_OFF
            )
        }

        return preferredModes.firstOrNull { availableAfModes.contains(it) }
            ?: availableAfModes.first()
    }

    private fun getMaxPreviewExposureTime(state: CameraState): Long {
        return state.getPreviewExposureTimeLimitNs()
    }

    private fun coerceManualShutterSpeed(state: CameraState, value: Long): Long {
        val range = state.getManualShutterSpeedRange()
        return value.coerceIn(range.lower, range.upper)
    }

    private fun coercePreviewExposureTime(state: CameraState): Long {
        return state.shutterSpeed.coerceAtMost(getMaxPreviewExposureTime(state))
    }

    /**
     * 应用曝光设置
     *
     * 统一管理 CONTROL_AE_MODE，确保与闪光灯模式正确配合
     */
    private fun applyExposureSettings(builder: CaptureRequest.Builder, state: CameraState, isCapture: Boolean) {
        if (state.captureMode == CaptureMode.VIDEO) {
            applyVideoFpsRange(builder, state.videoConfig.fps.fps)
        }

        // 根据曝光模式和闪光灯模式联合决定 AE_MODE
        val aeMode = when {
            // 1. 全自动曝光：根据闪光灯模式选择对应的 AE_MODE
            state.isIsoAuto && state.isShutterSpeedAuto -> {
                if (state.captureMode == CaptureMode.VIDEO) {
                    CaptureRequest.CONTROL_AE_MODE_ON
                } else {
                    when (state.flashMode) {
                        CameraMetadata.FLASH_MODE_SINGLE -> {
                            if (isCapture) CaptureRequest.CONTROL_AE_MODE_ON_ALWAYS_FLASH
                            else CaptureRequest.CONTROL_AE_MODE_ON
                        }

                        CameraMetadata.FLASH_MODE_TORCH -> CaptureRequest.CONTROL_AE_MODE_ON
                        else -> CaptureRequest.CONTROL_AE_MODE_ON
                    }
                }
            }
            // 2. 手动曝光或半自动曝光：尝试使用 OFF 模式，如果设备不支持则退而求其次使用 ON
            else -> {
                if (availableAeModes.contains(CaptureRequest.CONTROL_AE_MODE_OFF)) {
                    CaptureRequest.CONTROL_AE_MODE_OFF
                } else {
                    CaptureRequest.CONTROL_AE_MODE_ON
                }
            }
        }

        builder.set(CaptureRequest.CONTROL_AE_MODE, aeMode)

        // 如果是全自动曝光，设置曝光补偿
        if (state.isIsoAuto && state.isShutterSpeedAuto) {
            builder.set(CaptureRequest.CONTROL_AE_EXPOSURE_COMPENSATION, state.exposureCompensation)
        } else {
            // 手动曝光 / 半自动曝光：手动设置 ISO 和快门
            // 只有在支持 MANUAL_SENSOR 的设备上才设置，否则保持自动
            if (isManualSensorSupported) {
                builder.set(CaptureRequest.SENSOR_SENSITIVITY, state.iso)

                // 预览时限制曝光时间，防止画面卡死；拍摄时使用完整的用户设置
                val exposureTime = if (isCapture) {
                    state.shutterSpeed
                } else {
                    coercePreviewExposureTime(state)
                }
                builder.set(CaptureRequest.SENSOR_EXPOSURE_TIME, exposureTime)
            }

            // 拍摄时设置低帧率范围以支持长曝光
            if (isCapture && state.captureMode == CaptureMode.PHOTO) {
                try {
                    val characteristics = getActiveOpenCameraCharacteristics() ?: return
                    val availableFpsRanges =
                        characteristics.get(CameraCharacteristics.CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES)
                    val lowestFpsRange = availableFpsRanges?.minByOrNull { it.upper }
                    lowestFpsRange?.let {
                        builder.set(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE, it)
                    }
                } catch (e: Exception) {
                    PLog.e(TAG, "Failed to set FPS range", e)
                }
            }
        }
    }

    private fun calculateRawMinShutterAdjustedExposure(
        state: CameraState,
        baseIso: Int,
        baseShutter: Long
    ): Pair<Int, Long> {
        if (!shouldApplyRawMinShutterLimit(state)) {
            return Pair(baseIso, baseShutter)
        }
        if (baseIso <= 0 || baseShutter <= 0L) return Pair(baseIso, baseShutter)

        val isoRange = state.getIsoRange()
        val shutterRange = state.getShutterSpeedRange()
        val targetShutterLimit = state.rawMinShutterSpeedNs.coerceIn(shutterRange.lower, shutterRange.upper)
        if (baseShutter == targetShutterLimit) return Pair(baseIso, baseShutter)

        val exposureProduct = baseIso.toDouble() * baseShutter.toDouble()
        val adjusted = if (baseShutter < targetShutterLimit) {
            if (baseIso <= isoRange.lower) {
                Pair(baseIso, baseShutter)
            } else {
                val isoAtLimit = (exposureProduct / targetShutterLimit).roundToInt()
                if (isoAtLimit >= isoRange.lower) {
                    Pair(isoAtLimit.coerceIn(isoRange.lower, isoRange.upper), targetShutterLimit)
                } else {
                    val shutterAtMinIso = (exposureProduct / isoRange.lower).roundToLong()
                        .coerceIn(baseShutter, targetShutterLimit)
                        .coerceIn(shutterRange.lower, shutterRange.upper)
                    Pair(isoRange.lower, shutterAtMinIso)
                }
            }
        } else {
            val isoAtLimit = (exposureProduct / targetShutterLimit).roundToInt()
            if (isoAtLimit <= isoRange.upper) {
                Pair(isoAtLimit.coerceIn(isoRange.lower, isoRange.upper), targetShutterLimit)
            } else {
                val shutterAtMaxIso = (exposureProduct / isoRange.upper).roundToLong()
                    .coerceIn(targetShutterLimit, baseShutter)
                    .coerceIn(shutterRange.lower, shutterRange.upper)
                Pair(isoRange.upper, shutterAtMaxIso)
            }
        }

        if (adjusted.first != baseIso || adjusted.second != baseShutter) {
            PLog.d(
                TAG,
                "RAW min shutter override: ISO=$baseIso->${adjusted.first}, shutter=$baseShutter->${adjusted.second}, min=$targetShutterLimit"
            )
        }
        return adjusted
    }

    private fun shouldApplyRawMinShutterLimit(state: CameraState): Boolean {
        return state.useRaw &&
                state.captureMode == CaptureMode.PHOTO &&
                state.rawMinShutterSpeedNs > 0L &&
                state.isIsoAuto &&
                state.isShutterSpeedAuto
    }

    private fun applyVideoFpsRange(builder: CaptureRequest.Builder, targetFps: Int) {
        val characteristics = getActiveOpenCameraCharacteristics() ?: return
        val availableRanges =
            characteristics.get(CameraCharacteristics.CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES) ?: return
        
        // 寻找完全匹配的固定帧率区间，例如 [60, 60]
        val exactRange = availableRanges.firstOrNull { it.lower == targetFps && it.upper == targetFps }
        
        val resolvedRange = if (exactRange != null) {
            exactRange
        } else {
            // 如果设备未宣传 [60, 60]，但为了稳定吐出 60fps，我们强行构造并锁定固定区间 [targetFps, targetFps]
            val forced = android.util.Range(targetFps, targetFps)
            PLog.w(
                TAG,
                "Camera characteristics do not advertise exact $targetFps fps range, forcing $forced. " +
                    "Advertised ranges=${availableRanges.joinToString()}"
            )
            forced
        }
        builder.set(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE, resolvedRange)
    }

    private fun generateSrgbCurve(linearizeInput: Boolean = false): FloatArray {
        val points = 64
        val curve = FloatArray(points * 2)
        for (i in 0 until points) {
            val x = i.toFloat() / (points - 1)
            val y = if (linearizeInput) {
                x
            } else {
                linearToSrgb(x)
            }
            curve[i * 2] = x
            curve[i * 2 + 1] = y.coerceIn(0f, 1f)
        }
        return curve
    }

    private fun inverseSrgb(x: Float): Float {
        return if (x <= 0.04045f) {
            x / 12.92f
        } else {
            Math.pow(((x + 0.055) / 1.055), 2.4).toFloat()
        }
    }

    private fun linearToSrgb(x: Float): Float {
        return if (x <= 0.0031308f) {
            12.92f * x
        } else {
            1.055f * Math.pow(x.toDouble(), 1.0 / 2.4).toFloat() - 0.055f
        }
    }

    private fun generateLinearToneCurve(): FloatArray {
        return floatArrayOf(0f, 0f, 1f, 1f)
    }

    private fun applyToneMapSettings(builder: CaptureRequest.Builder, state: CameraState, isCapture: Boolean) {
        val linearizeInput = if (isCapture) state.fixTonemapCapture else state.fixTonemapPreview
        val tonemapMode = sanitizeTonemapMode(state.tonemapMode)
        when (tonemapMode) {
            "SYSTEM_DEFAULT" -> applyDefaultToneMapSettings(builder, state, isCapture)
            "SRGB" -> {
                if (availableTonemapModes.contains(CaptureRequest.TONEMAP_MODE_CONTRAST_CURVE)) {
                    builder.set(CaptureRequest.TONEMAP_MODE, CaptureRequest.TONEMAP_MODE_CONTRAST_CURVE)
                    val srgbCurve = generateSrgbCurve(linearizeInput)
                    val curve = TonemapCurve(srgbCurve, srgbCurve, srgbCurve)
                    builder.set(CaptureRequest.TONEMAP_CURVE, curve)
                }
            }
            else -> {
                applyDefaultToneMapSettings(builder, state, isCapture)
            }
        }
    }

    private fun shouldForceDefaultToneMapForHdrComposition(state: CameraState, isCapture: Boolean): Boolean {
        return isCapture &&
                state.captureMode == CaptureMode.PHOTO &&
                state.useHdrComposition &&
                !state.useRaw
    }

    private fun applyDefaultToneMapSettings(
        builder: CaptureRequest.Builder,
        state: CameraState,
        isCapture: Boolean
    ) {
        val preferredTonemapMode = when {
            isCapture && state.captureMode == CaptureMode.PHOTO &&
                availableTonemapModes.contains(CaptureRequest.TONEMAP_MODE_HIGH_QUALITY) -> {
                CaptureRequest.TONEMAP_MODE_HIGH_QUALITY
            }
            availableTonemapModes.contains(CaptureRequest.TONEMAP_MODE_FAST) -> {
                CaptureRequest.TONEMAP_MODE_FAST
            }
            else -> null
        }
        preferredTonemapMode?.let { builder.set(CaptureRequest.TONEMAP_MODE, it) }
    }

    private fun sanitizeTonemapMode(mode: String): String {
        return when (mode) {
            "FAST", "HIGH_QUALITY" -> "SYSTEM_DEFAULT"
            "REC709" -> "SRGB"
            "SYSTEM_DEFAULT", "SRGB" -> mode
            else -> "SYSTEM_DEFAULT"
        }
    }

    /**
     * 应用白平衡设置
     */
    private fun applyWhiteBalanceSettings(
        builder: CaptureRequest.Builder,
        state: CameraState,
        isCapture: Boolean
    ) {
        builder.set(CaptureRequest.CONTROL_AWB_MODE, state.awbMode)

        if (state.awbMode == CameraMetadata.CONTROL_AWB_MODE_OFF && supportsManualWhiteBalance()) {
            // 手动白平衡，应用当前色温
            builder.set(CaptureRequest.COLOR_CORRECTION_MODE, CaptureRequest.COLOR_CORRECTION_MODE_TRANSFORM_MATRIX)
            val gains = kelvinToRggbGains(state.awbTemperature)
            builder.set(CaptureRequest.COLOR_CORRECTION_GAINS, gains)
        } else {
            // 自动白平衡：拍照优先高质量色彩校正，预览维持快速路径
            if (isManualPostProcessingSupported) {
                val colorCorrectionMode = if (isCapture && state.captureMode == CaptureMode.PHOTO) {
                    CaptureRequest.COLOR_CORRECTION_MODE_HIGH_QUALITY
                } else {
                    CaptureRequest.COLOR_CORRECTION_MODE_FAST
                }
                builder.set(CaptureRequest.COLOR_CORRECTION_MODE, colorCorrectionMode)
            }
        }
    }

    /**
     * 应用闪光灯设置
     *
     * 注意：只设置 FLASH_MODE，AE_MODE 由 applyExposureSettings 统一管理
     *
     * @param isCapture 是否为拍摄请求（预览时某些闪光模式需要特殊处理）
     */
    private fun applyFlashSettings(builder: CaptureRequest.Builder, state: CameraState, isCapture: Boolean) {
        if (!isFlashSupported) {
            builder.set(CaptureRequest.FLASH_MODE, CameraMetadata.FLASH_MODE_OFF)
            return
        }

        if (state.captureMode == CaptureMode.VIDEO) {
            builder.set(
                CaptureRequest.FLASH_MODE,
                if (state.videoConfig.torchEnabled) {
                    CameraMetadata.FLASH_MODE_TORCH
                } else {
                    CameraMetadata.FLASH_MODE_OFF
                }
            )
            return
        }

        // 修正：在全自动曝光下，ISP 虽然主导闪光控制，但为了 YUV 模式下的快门同步，
        // 在拍摄瞬间显式指定 FLASH_MODE_SINGLE 能显著提升兼容性。
        when (state.flashMode) {
            CameraMetadata.FLASH_MODE_SINGLE -> {
                if (isCapture) {
                    builder.set(CaptureRequest.FLASH_MODE, CameraMetadata.FLASH_MODE_SINGLE)
                } else {
                    builder.set(CaptureRequest.FLASH_MODE, CameraMetadata.FLASH_MODE_OFF)
                }
            }

            CameraMetadata.FLASH_MODE_TORCH -> {
                builder.set(CaptureRequest.FLASH_MODE, CameraMetadata.FLASH_MODE_TORCH)
            }

            else -> {
                builder.set(CaptureRequest.FLASH_MODE, CameraMetadata.FLASH_MODE_OFF)
            }
        }
    }

    /**
     * 应用变焦设置
     */
    private fun applyZoomSettings(builder: CaptureRequest.Builder, state: CameraState) {
        val openCameraId = getActiveOpenCameraId()
        if (openCameraId.isEmpty()) return

        try {
            val characteristics = resolveZoomRequestCharacteristics(openCameraId)
            val maxZoom = characteristics.get(CameraCharacteristics.SCALER_AVAILABLE_MAX_DIGITAL_ZOOM) ?: 1f
            val zoomRatioRange = characteristics.get(CameraCharacteristics.CONTROL_ZOOM_RATIO_RANGE)
            val minZoom = zoomRatioRange?.lower ?: 1f
            val maxSupportedZoom = zoomRatioRange?.upper ?: maxZoom
            val zoomRatio = state.zoomRatio.coerceIn(minZoom, maxSupportedZoom)
            val activeRect = characteristics.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE)

            applyZoomRequestSettings(
                builder = builder,
                zoomRatio = zoomRatio,
                activeRect = activeRect,
                zoomRatioRange = zoomRatioRange,
                resetCropAtUnitZoom = false
            )
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to apply zoom settings", e)
        }
    }

    private fun resolveZoomRequestCharacteristics(openCameraId: String): CameraCharacteristics {
        val physicalCameraId = activeOutputPhysicalCameraId
        if (physicalCameraId != null) {
            getCameraCharacteristicsOrNull(physicalCameraId, "physical zoom request")?.let {
                return it
            }
        }
        return getCameraCharacteristicsCached(openCameraId)
    }

    private fun applyZoomRequestSettings(
        builder: CaptureRequest.Builder,
        zoomRatio: Float,
        activeRect: Rect?,
        zoomRatioRange: android.util.Range<Float>?,
        resetCropAtUnitZoom: Boolean
    ) {
        if (shouldUseControlZoomRatio(zoomRatioRange)) {
            builder.set(CaptureRequest.CONTROL_ZOOM_RATIO, zoomRatio)
            return
        }

        activeRect ?: return
        if (zoomRatio <= 1f && !resetCropAtUnitZoom) return

        zoomRatioRange?.let {
            builder.set(CaptureRequest.CONTROL_ZOOM_RATIO, 1f)
        }
        builder.set(CaptureRequest.SCALER_CROP_REGION, buildCenteredCropRegion(activeRect, zoomRatio))
    }

    private fun shouldUseControlZoomRatio(zoomRatioRange: android.util.Range<Float>?): Boolean {
        zoomRatioRange ?: return false
        return _state.value.availableCameras.size <= 1 || zoomRatioRange.lower < 1f
    }

    private fun buildCenteredCropRegion(activeRect: Rect, zoomRatio: Float): Rect {
        val safeZoomRatio = zoomRatio.coerceAtLeast(1f)
        if (safeZoomRatio == 1f) return Rect(activeRect)

        val cropWidth = (activeRect.width() / safeZoomRatio).roundToInt().coerceAtLeast(1)
        val cropHeight = (activeRect.height() / safeZoomRatio).roundToInt().coerceAtLeast(1)
        val cropLeft = activeRect.left + (activeRect.width() - cropWidth) / 2
        val cropTop = activeRect.top + (activeRect.height() - cropHeight) / 2
        return Rect(
            cropLeft,
            cropTop,
            cropLeft + cropWidth,
            cropTop + cropHeight
        )
    }

    /**
     * 应用防抖设置
     *
     * 视频模式按用户选项启用 EIS/OIS；EIS 优先使用预览防抖以匹配当前 GL 录制链路。
     */
    private fun applyStabilizationSettings(builder: CaptureRequest.Builder, state: CameraState) {
        try {
            if (state.captureMode == CaptureMode.VIDEO) {
                val mode = state.videoConfig.stabilizationMode
                resolveVideoStabilizationRequestMode(mode)?.let { videoStabilizationMode ->
                    builder.set(
                        CaptureRequest.CONTROL_VIDEO_STABILIZATION_MODE,
                        videoStabilizationMode
                    )
                }
                if (availableOpticalStabilizationModes.contains(CaptureRequest.LENS_OPTICAL_STABILIZATION_MODE_ON)) {
                    builder.set(
                        CaptureRequest.LENS_OPTICAL_STABILIZATION_MODE,
                        if (mode == VideoStabilizationMode.OIS) {
                            CaptureRequest.LENS_OPTICAL_STABILIZATION_MODE_ON
                        } else {
                            CaptureRequest.LENS_OPTICAL_STABILIZATION_MODE_OFF
                        }
                    )
                }
                return
            }

            if (availableOpticalStabilizationModes.contains(CaptureRequest.LENS_OPTICAL_STABILIZATION_MODE_ON)) {
                builder.set(
                    CaptureRequest.LENS_OPTICAL_STABILIZATION_MODE,
                    CaptureRequest.LENS_OPTICAL_STABILIZATION_MODE_ON
                )
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to apply stabilization settings", e)
        }
    }

    private fun resolveVideoStabilizationRequestMode(mode: VideoStabilizationMode): Int? {
        return when (mode) {
            VideoStabilizationMode.EIS -> when {
                isPreviewVideoStabilizationAvailable() ->
                    CaptureRequest.CONTROL_VIDEO_STABILIZATION_MODE_PREVIEW_STABILIZATION

                availableVideoStabilizationModes.contains(CaptureRequest.CONTROL_VIDEO_STABILIZATION_MODE_ON) ->
                    CaptureRequest.CONTROL_VIDEO_STABILIZATION_MODE_ON

                else -> null
            }

            VideoStabilizationMode.OIS,
            VideoStabilizationMode.OFF -> {
                CaptureRequest.CONTROL_VIDEO_STABILIZATION_MODE_OFF
                    .takeIf { availableVideoStabilizationModes.contains(it) }
            }
        }
    }

    private fun isPreviewVideoStabilizationAvailable(): Boolean {
        return Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU &&
                availableVideoStabilizationModes.contains(
                    CaptureRequest.CONTROL_VIDEO_STABILIZATION_MODE_PREVIEW_STABILIZATION
                )
    }

    /**
     * 应用图像质量设置（锐化、降噪）
     *
     * 这些设置直接影响照片清晰度和细节保留
     *
     * @param builder 需要配置的 Builder
     * @param isCapture 是否为拍摄请求（拍摄时使用高质量模式）
     */
    private fun applyImageQualitySettings(builder: CaptureRequest.Builder, isCapture: Boolean) {
        try {
            val currentState = _state.value
            val isBurst = currentState.useMFNR || currentState.useMFSR
            val effectiveEdgeLevel = if (isBurst && edgeLevel == 2) 1 else edgeLevel
            val edgeMode = when (effectiveEdgeLevel) {
                0 -> CaptureRequest.EDGE_MODE_OFF
                1 -> CaptureRequest.EDGE_MODE_FAST
                2 -> CaptureRequest.EDGE_MODE_HIGH_QUALITY
                3 -> if (availableEdgeModes.contains(CaptureRequest.EDGE_MODE_ZERO_SHUTTER_LAG)) {
                    CaptureRequest.EDGE_MODE_ZERO_SHUTTER_LAG
                } else {
                    CaptureRequest.EDGE_MODE_FAST
                }

                else -> CaptureRequest.EDGE_MODE_FAST
            }
            if (availableEdgeModes.contains(edgeMode)) {
                builder.set(CaptureRequest.EDGE_MODE, edgeMode)
            } else if (availableEdgeModes.contains(CaptureRequest.EDGE_MODE_FAST)) {
                builder.set(CaptureRequest.EDGE_MODE, CaptureRequest.EDGE_MODE_FAST)
            }
            val resolvedNrLevel = resolveAutoNoiseReductionLevel(currentState, isCapture)
            val effectiveNrLevel = if (isBurst && resolvedNrLevel == 2) 1 else resolvedNrLevel
            val noiseReductionMode = when (effectiveNrLevel) {
                0 -> CaptureRequest.NOISE_REDUCTION_MODE_OFF
                4 -> if (availableNoiseReductionModes.contains(CaptureRequest.NOISE_REDUCTION_MODE_MINIMAL)) {
                    CaptureRequest.NOISE_REDUCTION_MODE_MINIMAL
                } else {
                    CaptureRequest.NOISE_REDUCTION_MODE_FAST
                }

                1 -> CaptureRequest.NOISE_REDUCTION_MODE_FAST
                2 -> CaptureRequest.NOISE_REDUCTION_MODE_HIGH_QUALITY
                3 -> if (availableNoiseReductionModes.contains(CaptureRequest.NOISE_REDUCTION_MODE_ZERO_SHUTTER_LAG)) {
                    CaptureRequest.NOISE_REDUCTION_MODE_ZERO_SHUTTER_LAG
                } else {
                    CaptureRequest.NOISE_REDUCTION_MODE_FAST
                }

                else -> CaptureRequest.NOISE_REDUCTION_MODE_FAST
            }

            if (availableNoiseReductionModes.contains(noiseReductionMode)) {
                builder.set(CaptureRequest.NOISE_REDUCTION_MODE, noiseReductionMode)
            } else if (availableNoiseReductionModes.contains(CaptureRequest.NOISE_REDUCTION_MODE_FAST)) {
                builder.set(CaptureRequest.NOISE_REDUCTION_MODE, CaptureRequest.NOISE_REDUCTION_MODE_FAST)
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to apply image quality settings", e)
        }
    }

    private fun applyStillPostProcessingSettings(
        builder: CaptureRequest.Builder,
        state: CameraState,
        isCapture: Boolean
    ) {
        if (!isCapture || state.captureMode != CaptureMode.PHOTO) {
            applyFastStillPostProcessingSettings(builder)
            return
        }

        applyHighQualityStillPostProcessingSettings(builder)
    }

    private fun applyFastStillPostProcessingSettings(builder: CaptureRequest.Builder) {
        selectBestMode(
            availableColorCorrectionAberrationModes,
            CaptureRequest.COLOR_CORRECTION_ABERRATION_MODE_FAST,
            CaptureRequest.COLOR_CORRECTION_ABERRATION_MODE_OFF
        )?.let { builder.set(CaptureRequest.COLOR_CORRECTION_ABERRATION_MODE, it) }

        selectBestMode(
            availableHotPixelModes,
            CaptureRequest.HOT_PIXEL_MODE_FAST,
            CaptureRequest.HOT_PIXEL_MODE_OFF
        )?.let { builder.set(CaptureRequest.HOT_PIXEL_MODE, it) }

        selectBestMode(
            availableShadingModes,
            CaptureRequest.SHADING_MODE_FAST,
            CaptureRequest.SHADING_MODE_OFF
        )?.let { builder.set(CaptureRequest.SHADING_MODE, it) }

        selectBestMode(
            availableDistortionCorrectionModes,
            CaptureRequest.DISTORTION_CORRECTION_MODE_FAST,
            CaptureRequest.DISTORTION_CORRECTION_MODE_OFF
        )?.let { builder.set(CaptureRequest.DISTORTION_CORRECTION_MODE, it) }
    }

    private fun applyHighQualityStillPostProcessingSettings(builder: CaptureRequest.Builder) {
        selectBestMode(
            availableColorCorrectionAberrationModes,
            CaptureRequest.COLOR_CORRECTION_ABERRATION_MODE_HIGH_QUALITY,
            CaptureRequest.COLOR_CORRECTION_ABERRATION_MODE_FAST,
            CaptureRequest.COLOR_CORRECTION_ABERRATION_MODE_OFF
        )?.let { builder.set(CaptureRequest.COLOR_CORRECTION_ABERRATION_MODE, it) }

        selectBestMode(
            availableHotPixelModes,
            CaptureRequest.HOT_PIXEL_MODE_HIGH_QUALITY,
            CaptureRequest.HOT_PIXEL_MODE_FAST,
            CaptureRequest.HOT_PIXEL_MODE_OFF
        )?.let { builder.set(CaptureRequest.HOT_PIXEL_MODE, it) }

        selectBestMode(
            availableShadingModes,
            CaptureRequest.SHADING_MODE_HIGH_QUALITY,
            CaptureRequest.SHADING_MODE_FAST,
            CaptureRequest.SHADING_MODE_OFF
        )?.let { builder.set(CaptureRequest.SHADING_MODE, it) }

        selectBestMode(
            availableDistortionCorrectionModes,
            CaptureRequest.DISTORTION_CORRECTION_MODE_HIGH_QUALITY,
            CaptureRequest.DISTORTION_CORRECTION_MODE_FAST,
            CaptureRequest.DISTORTION_CORRECTION_MODE_OFF
        )?.let { builder.set(CaptureRequest.DISTORTION_CORRECTION_MODE, it) }
    }

    private fun selectBestMode(availableModes: IntArray, vararg preferredModes: Int): Int? {
        return preferredModes.firstOrNull { availableModes.contains(it) }
    }

    private fun buildSelectableNoiseReductionModes(hardwareModes: IntArray): IntArray {
        val orderedModes = mutableListOf(5)
        val preferredOrder = listOf(
            CaptureRequest.NOISE_REDUCTION_MODE_OFF,
            CaptureRequest.NOISE_REDUCTION_MODE_FAST,
            CaptureRequest.NOISE_REDUCTION_MODE_HIGH_QUALITY,
            CaptureRequest.NOISE_REDUCTION_MODE_ZERO_SHUTTER_LAG,
            CaptureRequest.NOISE_REDUCTION_MODE_MINIMAL
        )
        preferredOrder.forEach { mode ->
            if (hardwareModes.contains(mode)) {
                orderedModes += mode
            }
        }
        return orderedModes.toIntArray()
    }

    private fun resolveAutoNoiseReductionLevel(state: CameraState, isCapture: Boolean): Int {
        if (nrLevel != 5) {
            return nrLevel
        }
        val lightValue = calculateCaptureLightValue(state, isCapture)
        val resolvedLevel = when {
            lightValue >= 9.0 -> 0
            lightValue >= 6.0 -> 4
            lightValue >= 4.0 -> 1
            else -> 2
        }
        PLog.d(TAG, "Auto NR resolved by LV=$lightValue to level=$resolvedLevel")
        return resolvedLevel
    }

    private fun calculateCaptureLightValue(state: CameraState, isCapture: Boolean): Double {
        val aperture = state.physicalAperture.takeIf { it > 0f }?.toDouble() ?: 2.0
        val exposureTimeNs = if (isCapture) {
            state.shutterSpeed
        } else {
            coercePreviewExposureTime(state)
        }
        val exposureTimeSeconds = exposureTimeNs / 1_000_000_000.0
        val iso = state.iso.coerceAtLeast(1).toDouble()
        val ev100 = ln((aperture * aperture / exposureTimeSeconds) * (100.0 / iso)) / ln(2.0)
        return (ev100 * 10.0).roundToInt() / 10.0
    }

    /**
     * 设置锐化等级
     */
    fun setEdgeLevel(level: Int) {
        edgeLevel = level
    }

    /**
     * 设置降噪等级
     */
    fun setNRLevel(level: Int) {
        nrLevel = level
        _state.value = _state.value.copy(nrLevel = level)
    }

    fun setVendorCaptureSettingsByLens(settingsByLens: VendorCaptureSettingsByLens) {
        _state.value = _state.value.copy(vendorCaptureSettingsByLens = settingsByLens)
        PLog.d(TAG, "Vendor capture lens settings count: ${settingsByLens.settingsByLensId.size}")
    }

    /**
     * 设置是否使用 RAW 格式拍照
     */
    fun setUseRaw(enabled: Boolean) {
        _state.value = _state.value.copy(useRaw = enabled)
        PLog.d(TAG, "RAW 格式拍照: $enabled")
    }

    fun setRawMinShutterSpeedNs(value: Long) {
        val resolvedValue = value.coerceAtLeast(0L)
        _state.value = _state.value.copy(rawMinShutterSpeedNs = resolvedValue)
        PLog.d(TAG, "RAW 最低快门速度: $resolvedValue ns")
    }

    /**
     * 设置色调映射模式
     */
    fun setTonemapMode(mode: String) {
        val resolvedMode = sanitizeTonemapMode(mode)
        _state.value = _state.value.copy(tonemapMode = resolvedMode)
        PLog.d(TAG, "色调映射模式: $resolvedMode")
        previewRequestBuilder?.apply {
            applyToneMapSettings(this, _state.value, false)
            updatePreview()
        }
    }

    /**
     * 设置是否修复自定义色调映射预览异常
     */
    fun setFixTonemapPreview(enabled: Boolean) {
        _state.value = _state.value.copy(fixTonemapPreview = enabled)
        PLog.d(TAG, "修复色调映射预览异常: $enabled")
        previewRequestBuilder?.apply {
            applyToneMapSettings(this, _state.value, false)
            updatePreview()
        }
    }

    /**
     * 设置是否修复自定义色调映射拍摄异常
     */
    fun setFixTonemapCapture(enabled: Boolean) {
        _state.value = _state.value.copy(fixTonemapCapture = enabled)
        PLog.d(TAG, "修复色调映射拍摄异常: $enabled")
    }

    /**
     * 设置虚化模拟光圈大小
     */
    fun setAperture(value: Float) {
        _state.value = _state.value.copy(virtualAperture = value)
        PLog.d(TAG, "设置虚拟光圈: $value")
    }

    /**
     * 启用/禁用虚拟光圈控制
     */
    fun setVirtualApertureEnabled(enabled: Boolean) {
        _state.value = _state.value.copy(isVirtualApertureEnabled = enabled)
        PLog.d(TAG, "虚拟光圈开关: $enabled")
    }

    /**
     * 获取当前摄像头 ID
     */
    fun getCurrentCameraId(): String {
        return _state.value.currentCameraId
    }

    /**
     * 获取传感器方向（供外部 YUV 处理使用）
     */
    fun getSensorOrientation(): Int {
        return cachedSensorOrientation
    }

    /**
     * 获取镜头朝向
     */
    fun getLensFacing(): Int {
        return cachedLensFacing
    }

    /**
     * 获取最后一次拍摄结果（用于异步获取 EXIF 信息）
     */
    fun getLastCaptureResult(): CaptureResult? {
        return lastCaptureResult
    }

// ==================== 镜头切换 ====================

    /**
     * 获取所有后置摄像头
     */
    fun getBackCameras(): List<CameraInfo> {
        return _state.value.availableCameras.filter {
            it.lensFacing == CameraCharacteristics.LENS_FACING_BACK
        }
    }

    /**
     * 切换摄像头（前后置切换）
     */
    fun switchCamera() {
        val currentLensType = _state.value.currentLensType

        val nextLensType = if (currentLensType == LensType.FRONT) {
            LensType.BACK_MAIN
        } else {
            LensType.FRONT
        }

        switchToLens(nextLensType)
    }

    /**
     * 切换到指定的镜头类型
     */
    fun switchToLens(lensType: LensType) {
        val cameras = _state.value.availableCameras
        val currentLensType = _state.value.currentLensType

        if (currentLensType == lensType) return

        val targetCamera = cameras.find { it.lensType == lensType }

        targetCamera?.let { cam ->
            PLog.d(TAG, "Switching to lens: $lensType, cameraId: ${cam.cameraId}")

            // 关闭当前相机
            closeCamera(preserveVideoRecording = true)

            // 更新状态
            _state.value = _state.value.copy(
                currentCameraId = cam.cameraId,
                currentLensType = cam.lensType,
                zoomRatio = 1f
            )

            // 注意：需要外部重新调用 openCamera
        } ?: PLog.w(TAG, "Camera with lens type $lensType not found")
    }

    /**
     * 切换到指定的相机 ID
     */
    fun switchToCameraId(cameraId: String) {
        val cameras = _state.value.availableCameras
        val targetCamera = cameras.find { it.cameraId == cameraId }

        targetCamera?.let { cam ->
            PLog.d(TAG, "Switching to camera ID: $cameraId")

            // 关闭当前相机
            closeCamera(preserveVideoRecording = true)

            // 更新状态
            _state.value = _state.value.copy(
                currentCameraId = cam.cameraId,
                currentLensType = cam.lensType,
                zoomRatio = 1f
            )
        } ?: PLog.w(TAG, "Camera with ID $cameraId not found")
    }

// ==================== 曝光控制 ====================

    /**
     * 设置曝光补偿
     */
    fun setExposureCompensation(value: Int) {
        val range = _state.value.getExposureCompensationRange()
        val evStep = _state.value.getExposureCompensationStep()
        val clampedValue = value.coerceIn(range.lower, range.upper)
        val exposureBias = clampedValue * evStep
        _state.value = _state.value.copy(exposureCompensation = clampedValue, exposureBias = exposureBias)

        previewRequestBuilder?.apply {
            // 使用统一的曝光设置方法，确保与闪光灯模式正确配合
            applyExposureSettings(this, _state.value, false)
            updatePreview()
        }
    }

    /**
     * 设置 ISO
     */
    fun setIso(value: Int) {
        val currentState = _state.value
        val range = currentState.getIsoRange()
        val clampedValue = value.coerceIn(range.lower, range.upper)

        val evStep = currentState.getExposureCompensationStep()
        val sliderBias = currentState.exposureCompensation * evStep
        // 只有当两者都是手动时，才需要计算并叠加曝光偏移
        val isFullManual = !currentState.isShutterSpeedAuto

        val newBias = if (isFullManual) {
            val deltaEv = if (currentState.iso > 0) {
                ln(clampedValue.toDouble() / currentState.iso.toDouble()) / ln(2.0)
            } else 0.0
            currentState.exposureBias + deltaEv.toFloat()
        } else {
            sliderBias
        }

        _state.value = currentState.copy(
            iso = clampedValue,
            isIsoAuto = false,
            exposureBias = newBias
        )

        previewRequestBuilder?.apply {
            applyExposureSettings(this, _state.value, false)
            updatePreview()
        }
    }

    /**
     * 设置快门速度
     *
     * 注意：照片预览会限制最大曝光时间为 1/15 秒，视频模式限制为 1/6 秒
     * 照片拍摄请求会使用完整的用户设置
     */
    fun setShutterSpeed(value: Long) {
        val currentState = _state.value
        val clampedValue = coerceManualShutterSpeed(currentState, value)

        val evStep = currentState.getExposureCompensationStep()
        val sliderBias = currentState.exposureCompensation * evStep
        // 只有当两者都是手动时，才需要计算并叠加曝光偏移
        val isFullManual = !currentState.isIsoAuto

        val newBias = if (isFullManual) {
            val deltaEv = if (currentState.shutterSpeed > 0) {
                ln(clampedValue.toDouble() / currentState.shutterSpeed.toDouble()) / ln(2.0)
            } else 0.0
            currentState.exposureBias + deltaEv.toFloat()
        } else {
            sliderBias
        }

        _state.value = currentState.copy(
            shutterSpeed = clampedValue,
            isShutterSpeedAuto = false,
            exposureBias = newBias
        )

        previewRequestBuilder?.apply {
            applyExposureSettings(this, _state.value, false)
            updatePreview()
        }
    }

    /* ... flash mode ... */

    fun setFlashMode(value: Int) {
        _state.value = _state.value.copy(flashMode = value)

        previewRequestBuilder?.apply {
            // 关键修复：切换闪光灯模式时重置预闪触发器
            // 避免单次闪光的预闪状态影响手电筒模式
            set(CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER, CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER_CANCEL)

            // 重新应用完整的相机设置，确保 AE_MODE 和 FLASH_MODE 正确配合
            applyBaseCameraSettings(this, isCapture = false)
            updatePreview()
        }
    }

    /**
     * 设置自动曝光模式 (Legacy / Global)
     */
    fun setAutoExposure(enabled: Boolean) {
        val currentState = _state.value
        val evStep = currentState.getExposureCompensationStep()
        val sliderBias = currentState.exposureCompensation * evStep

        _state.value = currentState.copy(
            isIsoAuto = enabled,
            isShutterSpeedAuto = enabled,
            exposureBias = if (enabled) sliderBias else currentState.exposureBias
        )

        previewRequestBuilder?.apply {
            applyExposureSettings(this, _state.value, false)
            updatePreview()
        }
    }

    /**
     * 设置 ISO 自动模式
     */
    fun setIsoAuto(enabled: Boolean) {
        val currentState = _state.value
        val evStep = currentState.getExposureCompensationStep()
        val sliderBias = currentState.exposureCompensation * evStep

        // 只要 ISO 变成自动，或者快门已经是自动，都属于自动/半自动模式，重置偏移量
        val isAutoOrSemi = enabled || currentState.isShutterSpeedAuto
        val exposureBias = if (isAutoOrSemi) sliderBias else currentState.exposureBias

        _state.value = currentState.copy(
            isIsoAuto = enabled,
            exposureBias = exposureBias
        )
        previewRequestBuilder?.apply {
            applyExposureSettings(this, _state.value, false)
            updatePreview()
        }
    }

    /**
     * 设置快门自动模式
     */
    fun setShutterSpeedAuto(enabled: Boolean) {
        val currentState = _state.value
        val evStep = currentState.getExposureCompensationStep()
        val sliderBias = currentState.exposureCompensation * evStep

        // 只要快门变成自动，或者 ISO 已经是自动，都属于自动/半自动模式，重置偏移量
        val isAutoOrSemi = enabled || currentState.isIsoAuto
        val exposureBias = if (isAutoOrSemi) sliderBias else currentState.exposureBias

        _state.value = currentState.copy(
            isShutterSpeedAuto = enabled,
            exposureBias = exposureBias
        )
        previewRequestBuilder?.apply {
            applyExposureSettings(this, _state.value, false)
            updatePreview()
        }
    }

    /**
     * 检查当前相机是否支持手动白平衡控制
     *
     * 只有 FULL 或 LEVEL_3 级别的设备才支持 COLOR_CORRECTION_GAINS
     */
    private fun supportsManualWhiteBalance(): Boolean {
        val openCameraId = getCurrentOpenCameraId()
        if (openCameraId.isEmpty()) return false

        return try {
            val characteristics = getCameraCharacteristicsCached(openCameraId)
            val hardwareLevel = characteristics.get(CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL)

            val isSupported =
                isManualPostProcessingSupported && (hardwareLevel == CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL_FULL ||
                        hardwareLevel == CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL_3)

            PLog.d(
                TAG,
                "Hardware level: $hardwareLevel, ManualPost: $isManualPostProcessingSupported, Manual WB supported: $isSupported"
            )
            isSupported
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to check hardware level", e)
            false
        }
    }

    /**
     * 获取当前相机支持的 AWB 模式列表
     */
    private fun getSupportedAwbModes(): IntArray {
        val openCameraId = getCurrentOpenCameraId()
        if (openCameraId.isEmpty()) return intArrayOf(CameraMetadata.CONTROL_AWB_MODE_AUTO)

        return try {
            val characteristics = getCameraCharacteristicsCached(openCameraId)
            characteristics.get(CameraCharacteristics.CONTROL_AWB_AVAILABLE_MODES)
                ?: intArrayOf(CameraMetadata.CONTROL_AWB_MODE_AUTO)
        } catch (e: Exception) {
            intArrayOf(CameraMetadata.CONTROL_AWB_MODE_AUTO)
        }
    }

    /**
     * 设置白平衡模式
     */
    fun setAwbMode(mode: Int) {
        _state.value = _state.value.copy(awbMode = mode)

        previewRequestBuilder?.apply {
            set(CaptureRequest.CONTROL_AWB_MODE, mode)
            if (mode == CameraMetadata.CONTROL_AWB_MODE_OFF && supportsManualWhiteBalance()) {
                // 手动白平衡，应用当前色温
                set(CaptureRequest.COLOR_CORRECTION_MODE, CaptureRequest.COLOR_CORRECTION_MODE_TRANSFORM_MATRIX)

                val gains = kelvinToRggbGains(_state.value.awbTemperature)
                set(CaptureRequest.COLOR_CORRECTION_GAINS, gains)
                PLog.d(TAG, "Manual AWB enabled with temperature: ${_state.value.awbTemperature}K")
            } else {
                // 自动白平衡：尝试使用高质量色彩校正模式，如不支持则不设置（保持模式默认值）
                if (isManualPostProcessingSupported) {
                    set(CaptureRequest.COLOR_CORRECTION_MODE, CaptureRequest.COLOR_CORRECTION_MODE_FAST)
                }
            }
            updatePreview()
        }
    }

    /**
     * 设置白平衡色温（Kelvin）
     *
     * 对于支持 FULL 级别的设备: 使用 RggbChannelVector 精确控制
     * 对于不支持的设备: 使用最接近的预设 AWB 模式
     *
     * 有效范围: 2000K (暖) - 10000K (冷)
     */
    fun setAwbTemperature(kelvin: Int) {
        val clampedKelvin = kelvin.coerceIn(2000, 10000)

        if (supportsManualWhiteBalance()) {
            // 设备支持手动白平衡 - 使用精确的 RggbChannelVector
            _state.value = _state.value.copy(
                awbTemperature = clampedKelvin,
                awbMode = CameraMetadata.CONTROL_AWB_MODE_OFF
            )

            previewRequestBuilder?.apply {
                set(CaptureRequest.CONTROL_AWB_MODE, CameraMetadata.CONTROL_AWB_MODE_OFF)
                set(CaptureRequest.COLOR_CORRECTION_MODE, CaptureRequest.COLOR_CORRECTION_MODE_TRANSFORM_MATRIX)

                val gains = kelvinToRggbGains(clampedKelvin)
                set(CaptureRequest.COLOR_CORRECTION_GAINS, gains)
                PLog.d(
                    TAG,
                    "AWB temperature set to: ${clampedKelvin}K (manual), gains: R=${gains.red}, G=${gains.greenEven}, B=${gains.blue}"
                )
                updatePreview()
            }
        } else {
            // 设备不支持手动白平衡 - 使用预设 AWB 模式近似
            val presetMode = kelvinToPresetAwbMode(clampedKelvin)

            _state.value = _state.value.copy(
                awbTemperature = clampedKelvin,
                awbMode = presetMode
            )

            previewRequestBuilder?.apply {
                set(CaptureRequest.CONTROL_AWB_MODE, presetMode)
                set(CaptureRequest.COLOR_CORRECTION_MODE, CaptureRequest.COLOR_CORRECTION_MODE_FAST)
                PLog.d(
                    TAG,
                    "AWB temperature set to: ${clampedKelvin}K (preset mode: ${getAwbModeName(presetMode)})"
                )
                updatePreview()
            }
        }
    }

    /**
     * 设置测光模式
     */
    fun setMeteringMode(mode: MeteringMode) {
        _state.value = _state.value.copy(meteringMode = mode)
        if (mode == MeteringMode.HIGHLIGHT_PRIORITY) {
            highlightPointInitialized = false
            lastSentHighlightPointX = -1f
            lastSentHighlightPointY = -1f
        }
        applyMeteringRegions()
        updatePreview()
        PLog.d(TAG, "测光模式: $mode")
    }

    /**
     * 更新高光区域坐标（由 GL 测光回调调用）
     * 使用 EMA 平滑防止 AE 频繁跳动
     */
    fun updateHighlightPoint(x: Float, y: Float) {
        highlightPointX = x
        highlightPointY = y
        if (!highlightPointInitialized) {
            highlightPointSmoothedX = x
            highlightPointSmoothedY = y
            highlightPointInitialized = true
        } else {
            val alpha = 0.1 // 降低平滑系数，增加稳定性
            highlightPointSmoothedX = (alpha * x + (1 - alpha) * highlightPointSmoothedX).toFloat()
            highlightPointSmoothedY = (alpha * y + (1 - alpha) * highlightPointSmoothedY).toFloat()
        }
        if (_state.value.meteringMode == MeteringMode.HIGHLIGHT_PRIORITY) {
            // 计算当前平滑点与上次发送点的位移距离
            val dist = hypot(
                highlightPointSmoothedX.toDouble() - lastSentHighlightPointX,
                highlightPointSmoothedY.toDouble() - lastSentHighlightPointY
            )
            
            // 只有位移超过 8% (0.08) 或者这是初始化后的第一帧，才更新测光区域并触发预览
            // 这样可以避免微小的坐标抖动导致 AE 系统频繁重算测光
            if (dist > 0.08 || lastSentHighlightPointX < 0) {
                lastSentHighlightPointX = highlightPointSmoothedX
                lastSentHighlightPointY = highlightPointSmoothedY
                
                applyMeteringRegions()
                updatePreview()
            }
        }
    }

    /**
     * 根据当前测光模式设置默认 AE 区域
     *
     * 系统默认模式清除自定义 AE 区域，由 Camera2/设备自行决定测光行为；
     * 点测光和高光优先模式设置加权区域；
     * 平均测光模式设置全画面 AE 区域。
     */
    private fun applyMeteringRegions() {
        val builder = previewRequestBuilder ?: return
        val mode = _state.value.meteringMode

        if (mode == MeteringMode.SYSTEM_DEFAULT) {
            clearCustomAeRegions(builder)
            return
        }

        if (maxAeRegions <= 0) return
        val characteristics = getActiveOpenCameraCharacteristics() ?: return
        val activeRect = characteristics.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE) ?: return

        if (mode == MeteringMode.AVERAGE) {
            val fullRegion = MeteringRectangle(activeRect, MeteringRectangle.METERING_WEIGHT_MAX)
            builder.set(CaptureRequest.CONTROL_AE_REGIONS, arrayOf(fullRegion))
            return
        }

        try {
            val sensorOrientation = getSensorOrientation()
            val lensFacing = getLensFacing()

            // 选择测光坐标：高光优先使用最亮区域，其他模式使用对焦点或画面中心
            val normX: Float
            val normY: Float
            if (mode == MeteringMode.HIGHLIGHT_PRIORITY && highlightPointInitialized) {
                normX = highlightPointSmoothedX
                normY = highlightPointSmoothedY
            } else {
                val focus = _state.value.focusPoint
                normX = focus?.first ?: 0.5f
                normY = focus?.second ?: 0.5f
            }

            val (sensorX, sensorY) = when (sensorOrientation) {
                0 -> Pair(normX, normY)
                90 -> Pair(normY, 1 - normX)
                180 -> Pair(1 - normX, 1 - normY)
                270 -> Pair(1 - normY, normX)
                else -> Pair(normX, normY)
            }
            val (finalX, finalY) = if (lensFacing == CameraCharacteristics.LENS_FACING_FRONT) {
                Pair(1 - sensorX, sensorY)
            } else {
                Pair(sensorX, sensorY)
            }

            val centerX = (finalX * activeRect.width()).toInt()
            val centerY = (finalY * activeRect.height()).toInt()
            val regionSizeFraction = when (mode) {
                MeteringMode.SPOT -> 0.03f
                MeteringMode.CENTER_WEIGHTED -> 0.2f
                MeteringMode.HIGHLIGHT_PRIORITY -> 0.08f
                MeteringMode.SYSTEM_DEFAULT,
                MeteringMode.AVERAGE -> return
            }
            val regionSize = (activeRect.width() * regionSizeFraction).toInt()

            val rect = android.graphics.Rect(
                (centerX - regionSize).coerceAtLeast(0),
                (centerY - regionSize).coerceAtLeast(0),
                (centerX + regionSize).coerceAtMost(activeRect.width()),
                (centerY + regionSize).coerceAtMost(activeRect.height())
            )
            builder.set(
                CaptureRequest.CONTROL_AE_REGIONS,
                arrayOf(MeteringRectangle(
                    rect,
                    MeteringRectangle.METERING_WEIGHT_MAX
                ))
            )
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to apply metering regions", e)
        }
    }

    private fun clearCustomAeRegions(builder: CaptureRequest.Builder) {
        builder.set(CaptureRequest.CONTROL_AE_REGIONS, null)
    }

    private fun clearCustomAfRegions(builder: CaptureRequest.Builder) {
        builder.set(CaptureRequest.CONTROL_AF_REGIONS, null)
    }

    /**
     * 将色温转换为最接近的预设 AWB 模式
     *
     * 预设模式对应的近似色温:
     * - INCANDESCENT (白炽灯): ~2700K
     * - WARM_FLUORESCENT (暖色荧光灯): ~3000K
     * - FLUORESCENT (荧光灯): ~4000K
     * - DAYLIGHT (日光): ~5500K
     * - CLOUDY_DAYLIGHT (阴天): ~6500K
     * - TWILIGHT (黄昏): ~7500K
     * - SHADE (阴影): ~9000K
     */
    private fun kelvinToPresetAwbMode(kelvin: Int): Int {
        val supportedModes = getSupportedAwbModes()

        // 按色温从低到高排列的预设模式
        val presetModes = listOf(
            2700 to CameraMetadata.CONTROL_AWB_MODE_INCANDESCENT,
            3000 to CameraMetadata.CONTROL_AWB_MODE_WARM_FLUORESCENT,
            4000 to CameraMetadata.CONTROL_AWB_MODE_FLUORESCENT,
            5500 to CameraMetadata.CONTROL_AWB_MODE_DAYLIGHT,
            6500 to CameraMetadata.CONTROL_AWB_MODE_CLOUDY_DAYLIGHT,
            7500 to CameraMetadata.CONTROL_AWB_MODE_TWILIGHT,
            9000 to CameraMetadata.CONTROL_AWB_MODE_SHADE
        )

        // 找到最接近的预设模式（且设备支持）
        var closestMode = CameraMetadata.CONTROL_AWB_MODE_AUTO
        var closestDistance = Int.MAX_VALUE

        for ((presetKelvin, mode) in presetModes) {
            if (mode in supportedModes) {
                val distance = abs(kelvin - presetKelvin)
                if (distance < closestDistance) {
                    closestDistance = distance
                    closestMode = mode
                }
            }
        }

        return closestMode
    }

    /**
     * 获取 AWB 模式的可读名称（用于日志）
     */
    private fun getAwbModeName(mode: Int): String {
        return when (mode) {
            CameraMetadata.CONTROL_AWB_MODE_AUTO -> "AUTO"
            CameraMetadata.CONTROL_AWB_MODE_INCANDESCENT -> "INCANDESCENT"
            CameraMetadata.CONTROL_AWB_MODE_WARM_FLUORESCENT -> "WARM_FLUORESCENT"
            CameraMetadata.CONTROL_AWB_MODE_FLUORESCENT -> "FLUORESCENT"
            CameraMetadata.CONTROL_AWB_MODE_DAYLIGHT -> "DAYLIGHT"
            CameraMetadata.CONTROL_AWB_MODE_CLOUDY_DAYLIGHT -> "CLOUDY_DAYLIGHT"
            CameraMetadata.CONTROL_AWB_MODE_TWILIGHT -> "TWILIGHT"
            CameraMetadata.CONTROL_AWB_MODE_SHADE -> "SHADE"
            CameraMetadata.CONTROL_AWB_MODE_OFF -> "OFF"
            else -> "UNKNOWN($mode)"
        }
    }

    /**
     * 将色温(Kelvin)转换为 RggbChannelVector
     *
     * 基于 Tanner Helland 算法 + Camera2 特定的增益系数
     * 参考: https://stackoverflow.com/questions/35439159/camera2-api-set-custom-white-balance-temperature-color
     *
     * @param kelvin 色温值 (2000-10000K)
     * @return RggbChannelVector 白平衡增益
     */
    private fun kelvinToRggbGains(kelvin: Int): RggbChannelVector {
        val temperature = kelvin / 100.0f

        var red: Float
        var green: Float
        var blue: Float

        // 计算红色分量
        if (temperature <= 66) {
            red = 255f
        } else {
            red = (329.698727446 * (temperature - 60.0).pow(-0.1332047592)).toFloat()
            red = red.coerceIn(0f, 255f)
        }

        // 计算绿色分量
        if (temperature <= 66) {
            green = (99.4708025861 * ln(temperature.toDouble()) - 161.1195681661).toFloat()
        } else {
            green = (288.1221695283 * (temperature - 60.0).pow(-0.0755148492)).toFloat()
        }
        green = green.coerceIn(0f, 255f)

        // 计算蓝色分量
        if (temperature >= 66) {
            blue = 255f
        } else if (temperature <= 19) {
            blue = 0f
        } else {
            blue = (138.5177312231 * ln((temperature - 10).toDouble()) - 305.0447927307).toFloat()
            blue = blue.coerceIn(0f, 255f)
        }

        PLog.d(TAG, "kelvinToRggbGains: ${kelvin}K -> RGB($red, $green, $blue)")

        // Camera2 特定的增益计算：
        // 红色和蓝色通道乘以2，绿色通道保持归一化
        // 这是 StackOverflow 上验证过的正确算法
        return RggbChannelVector(
            (red / 255f) * 2f,
            green / 255f,
            green / 255f,
            (blue / 255f) * 2f
        )
    }

    /**
     * 更新预览
     */
    private fun updatePreview() {
        val handler = cameraHandler
        if (handler != null && Looper.myLooper() != handler.looper) {
            if (!previewUpdateScheduled.compareAndSet(false, true)) return
            handler.post {
                previewUpdateScheduled.set(false)
                updatePreview()
            }
            return
        }

        // 检查相机和会话是否仍然有效，避免在相机关闭后的回调中调用 setRepeatingRequest。
        val device = cameraDevice
        val session = captureSession
        val builder = previewRequestBuilder

        if (device == null || session == null || builder == null) {
            PLog.v(TAG, "updatePreview: camera not ready (device=$device, session=$session, builder=$builder)")
            return
        }

        try {
            session.setRepeatingRequest(builder.build(), previewCallback, cameraHandler)
        } catch (e: CameraAccessException) {
            PLog.e(TAG, "Failed to update preview", e)
        } catch (e: IllegalStateException) {
            // 相机已关闭或处于错误状态
            PLog.w(TAG, "Failed to update preview - camera closed or in error state", e)
        } catch (e: IllegalArgumentException) {
            PLog.w(TAG, "Failed to update preview - request settings error", e)
        }
    }

// ==================== 变焦控制 ====================

    /**
     * 设置变焦倍数
     * 注意：优先使用 Camera2 CONTROL_ZOOM_RATIO；设备不支持时才回退到 SCALER_CROP_REGION。
     */
    fun setZoomRatio(ratio: Float) {
        val handler = cameraHandler
        if (handler != null && Looper.myLooper() != handler.looper) {
            handler.post {
                setZoomRatio(ratio)
            }
            return
        }
        val requestedRatio = sanitizeZoomRatio(ratio)
        _state.value = _state.value.copy(zoomRatio = requestedRatio)
        val builder = previewRequestBuilder ?: return
        val openCameraId = activeOpenCameraId.takeIf { it.isNotEmpty() } ?: return

        try {
            val characteristics = resolveZoomRequestCharacteristics(openCameraId)
            val maxZoom = characteristics.get(CameraCharacteristics.SCALER_AVAILABLE_MAX_DIGITAL_ZOOM) ?: 1f
            val zoomRatioRange = characteristics.get(CameraCharacteristics.CONTROL_ZOOM_RATIO_RANGE)
            val minZoom = zoomRatioRange?.lower ?: 1f
            val maxSupportedZoom = zoomRatioRange?.upper ?: maxZoom
            val clampedRatio = requestedRatio.coerceIn(minZoom, maxSupportedZoom)

            _state.value = _state.value.copy(zoomRatio = clampedRatio)
            if (recreateSessionForPhysicalZoomIfNeeded(_state.value)) {
                PLog.d(TAG, "setZoomRatio: $ratio -> $clampedRatio (physical output session recreated)")
                return
            }

            val activeRect = characteristics.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE)
            builder.apply {
                applyZoomRequestSettings(
                    builder = this,
                    zoomRatio = clampedRatio,
                    activeRect = activeRect,
                    zoomRatioRange = zoomRatioRange,
                    resetCropAtUnitZoom = true
                )
            }
            if (cameraDevice != null && captureSession != null) {
                updatePreview()
            }

            val zoomMode = if (shouldUseControlZoomRatio(zoomRatioRange)) {
                "CONTROL_ZOOM_RATIO"
            } else {
                "SCALER_CROP_REGION"
            }
            val applyTiming = if (captureSession == null) "builder-only" else "preview"
            PLog.d(TAG, "setZoomRatio: $ratio -> $clampedRatio ($zoomMode, $applyTiming)")

        } catch (e: Exception) {
            PLog.e(TAG, "Failed to set zoom", e)
        }
    }

    private fun sanitizeZoomRatio(ratio: Float): Float {
        return if (ratio.isFinite()) ratio.coerceAtLeast(0.01f) else 1f
    }

    private fun recreateSessionForPhysicalZoomIfNeeded(state: CameraState): Boolean {
        val desiredPhysicalCameraId = resolveOutputPhysicalCameraId(state)
        if (desiredPhysicalCameraId == activeOutputPhysicalCameraId) return false
        if (cameraDevice == null || previewSurface == null) return false

        PLog.i(
            TAG,
            "Recreating session for zoom physical output: " +
                    "old=$activeOutputPhysicalCameraId, new=$desiredPhysicalCameraId, " +
                    "targetZoom=${getTargetZoomRatioByMain(state, state.getCurrentCameraInfo())}"
        )

        activeOutputPhysicalCameraId = desiredPhysicalCameraId
        refreshActiveFocusLimit()
        refreshHyperfocalFocusDistanceIfEnabled(updatePreview = false)
        safeCloseCaptureSession(captureSession, "physical zoom output changed")
        captureSession = null
        createPreviewSession(openGeneration = cameraOpenGeneration)
        return true
    }

    /**
     * 设置自动对焦开关
     */
    fun setAutoFocus(auto: Boolean) {
        clearHyperfocalFocusMemory()
        _state.value = _state.value.copy(
            isAutoFocus = auto,
            isHyperfocalFocusEnabled = false,
            hyperfocalDistanceMeters = 0f,
            isFocusLocked = false
        )
        previewRequestBuilder?.apply {
            applyFocusSettings(this, _state.value)
            updatePreview()
        }
    }

    /**
     * 设置对焦距离 (0.0 ~ minimumFocusDistance)
     */
    fun setFocusDistance(distance: Float) {
        val minFocusDistance = _state.value.minimumFocusDistance
        if (minFocusDistance <= 0) return

        val clampedDistance = distance.coerceIn(0f, minFocusDistance)
        clearHyperfocalFocusMemory()
        _state.value = _state.value.copy(
            focusDistance = clampedDistance,
            isHyperfocalFocusEnabled = false,
            hyperfocalDistanceMeters = 0f,
            isFocusLocked = false
        )

        if (!_state.value.isAutoFocus) {
            previewRequestBuilder?.apply {
                applyFocusSettings(this, _state.value)
                updatePreview()
            }
        }
    }

    fun setHyperfocalFocusEnabled(enabled: Boolean) {
        if (enabled) {
            applyHyperfocalFocus(storePreviousFocus = true, updatePreview = true)
        } else {
            restoreFocusBeforeHyperfocal(updatePreview = true)
        }
    }

    private fun refreshHyperfocalFocusDistanceIfEnabled(updatePreview: Boolean) {
        if (!_state.value.isHyperfocalFocusEnabled) return
        applyHyperfocalFocus(storePreviousFocus = false, updatePreview = updatePreview)
    }

    private fun applyHyperfocalFocus(
        storePreviousFocus: Boolean,
        updatePreview: Boolean
    ): Boolean {
        refreshActiveFocusLimit()

        val minFocusDistance = _state.value.minimumFocusDistance
        if (minFocusDistance <= 0f) {
            PLog.w(TAG, "Hyperfocal focus unavailable: manual focus is not supported")
            if (_state.value.isHyperfocalFocusEnabled) {
                restoreFocusBeforeHyperfocal(updatePreview = updatePreview)
            }
            return false
        }

        val result = calculateHyperfocalFocusResult()
        if (result == null) {
            PLog.w(TAG, "Hyperfocal focus unavailable: unable to resolve physical camera optics")
            if (_state.value.isHyperfocalFocusEnabled) {
                restoreFocusBeforeHyperfocal(updatePreview = updatePreview)
            }
            return false
        }

        if (storePreviousFocus && !_state.value.isHyperfocalFocusEnabled) {
            focusModeBeforeHyperfocal = _state.value.isAutoFocus
            focusDistanceBeforeHyperfocal = _state.value.focusDistance
        }

        val clampedFocusDistance = result.focusDistanceDiopters.coerceIn(0f, minFocusDistance)
        _state.value = _state.value.copy(
            isAutoFocus = false,
            focusDistance = clampedFocusDistance,
            isHyperfocalFocusEnabled = true,
            hyperfocalDistanceMeters = result.distanceMeters,
            isFocusLocked = false
        )

        if (updatePreview) {
            previewRequestBuilder?.apply {
                applyFocusSettings(this, _state.value)
                updatePreview()
            }
        }

        PLog.i(
            TAG,
            "Hyperfocal focus enabled: camera=${result.cameraId}, " +
                    "f=${result.focalLengthMm}mm, N=${result.aperture}, " +
                    "c=${result.circleOfConfusionMm}mm, H=${result.distanceMeters}m, " +
                    "focus=${clampedFocusDistance}D"
        )
        return true
    }

    private fun restoreFocusBeforeHyperfocal(updatePreview: Boolean) {
        val restoreAutoFocus = focusModeBeforeHyperfocal ?: true
        val restoreFocusDistance = focusDistanceBeforeHyperfocal
            ?.coerceIn(0f, _state.value.minimumFocusDistance.takeIf { it > 0f } ?: Float.MAX_VALUE)
            ?: _state.value.focusDistance

        clearHyperfocalFocusMemory()
        _state.value = _state.value.copy(
            isAutoFocus = restoreAutoFocus,
            focusDistance = restoreFocusDistance,
            isHyperfocalFocusEnabled = false,
            hyperfocalDistanceMeters = 0f,
            isFocusLocked = false
        )

        if (updatePreview) {
            previewRequestBuilder?.apply {
                applyFocusSettings(this, _state.value)
                updatePreview()
            }
        }

        PLog.i(TAG, "Hyperfocal focus disabled: restoreAutoFocus=$restoreAutoFocus")
    }

    private fun clearHyperfocalFocusMemory() {
        focusModeBeforeHyperfocal = null
        focusDistanceBeforeHyperfocal = null
    }

    private fun calculateHyperfocalFocusResult(): HyperfocalFocusResult? {
        val (cameraId, characteristics) = resolveActiveFocusCharacteristics() ?: return null

        val focalLengthMm = characteristics
            .get(CameraCharacteristics.LENS_INFO_AVAILABLE_FOCAL_LENGTHS)
            ?.firstOrNull()
            ?.takeIf { it.isFinite() && it > 0f }
            ?: DEFAULT_HYPERFOCAL_FOCAL_LENGTH_MM

        val aperture = characteristics
            .get(CameraCharacteristics.LENS_INFO_AVAILABLE_APERTURES)
            ?.firstOrNull()
            ?.takeIf { it.isFinite() && it > 0f }
            ?: DEFAULT_HYPERFOCAL_APERTURE

        val physicalSize = characteristics.get(CameraCharacteristics.SENSOR_INFO_PHYSICAL_SIZE)
            ?: return null
        val diagonal = hypot(
            physicalSize.width.toDouble(),
            physicalSize.height.toDouble()
        )
        if (!diagonal.isFinite() || diagonal <= 0.0) return null

        val circleOfConfusionMm = (diagonal / HYPERFOCAL_COC_DIAGONAL_DIVISOR).toFloat()
        if (!circleOfConfusionMm.isFinite() || circleOfConfusionMm <= 0f) return null

        val hyperfocalDistanceMm =
            (focalLengthMm * focalLengthMm) / (aperture * circleOfConfusionMm) + focalLengthMm
        val hyperfocalDistanceMeters = hyperfocalDistanceMm / 1000f
        if (!hyperfocalDistanceMeters.isFinite() || hyperfocalDistanceMeters <= 0f) return null

        return HyperfocalFocusResult(
            cameraId = cameraId,
            focalLengthMm = focalLengthMm,
            aperture = aperture,
            circleOfConfusionMm = circleOfConfusionMm,
            distanceMeters = hyperfocalDistanceMeters,
            focusDistanceDiopters = 1f / hyperfocalDistanceMeters
        )
    }

// ==================== 对焦控制 ====================

    private fun recordFocusLockExposure(result: CaptureResult) {
        updateFocusLockSceneReference(result)
        isFocusLockedWaitingForSceneChange = true
        focusLockSettleFrames = FOCUS_LOCK_SETTLE_FRAMES
        sceneChangeFrameCount = 0
    }

    private fun updateFocusLockSceneReference(result: CaptureResult) {
        focusLockedReferenceIso = result.get(CaptureResult.SENSOR_SENSITIVITY) ?: return
        focusLockedReferenceExposureNs = result.get(CaptureResult.SENSOR_EXPOSURE_TIME) ?: return
        focusLockedReferenceDistance = result.get(CaptureResult.LENS_FOCUS_DISTANCE) ?: 0f
    }

    private fun isAiSubjectRecentlySeen(): Boolean {
        if (aiSubjectLastSeenElapsedMs <= 0L) return false
        return SystemClock.elapsedRealtime() - aiSubjectLastSeenElapsedMs <= AI_SUBJECT_RECENT_MS
    }

    fun notifyAiSubjectSeen(x: Float, y: Float) {
        aiSubjectLastSeenElapsedMs = SystemClock.elapsedRealtime()
        aiSubjectLastSeenX = x
        aiSubjectLastSeenY = y
    }

    private fun restoreContinuousAf() {
        isFocusLockedWaitingForSceneChange = false
        sceneChangeFrameCount = 0
        focusLockedReferenceIso = 0
        focusLockedReferenceExposureNs = 0L
        focusLockedReferenceDistance = 0f
        focusLockSettleFrames = 0
        aiFocusFallbackFrames = 0

        previewRequestBuilder?.apply {
            set(CaptureRequest.CONTROL_AF_TRIGGER, CaptureRequest.CONTROL_AF_TRIGGER_IDLE)
            val afMode = resolveAutoFocusMode(_state.value.captureMode)
            set(CaptureRequest.CONTROL_AF_MODE, afMode)
            _state.value = _state.value.copy(currentAfMode = afMode)
            clearCustomAfRegions(this)
            applyMeteringRegions()
            updatePreview()
        }
        _state.value = _state.value.copy(
            focusPoint = null,
            isFocusLocked = false,
            isFocusing = false,
            focusSuccess = null
        )
    }

    fun cancelSubjectFocus(reason: String) {
        PLog.d(TAG, "Cancel subject focus: $reason")
        restoreContinuousAf()
    }

    fun unlockFocus() {
        PLog.d(TAG, "Unlock focus")
        restoreContinuousAf()
    }

    private fun resetAiFocusForCameraOpen() {
        PLog.d(TAG, "Reset AI focus state for camera open")
        previewAiFocusProcessor.resetForPreviewRestart()
        aiSubjectLastSeenElapsedMs = 0L
        aiSubjectLastSeenX = 0.5f
        aiSubjectLastSeenY = 0.5f
        isFocusLockedWaitingForSceneChange = false
        sceneChangeFrameCount = 0
        focusLockedReferenceIso = 0
        focusLockedReferenceExposureNs = 0L
        focusLockedReferenceDistance = 0f
        focusLockSettleFrames = 0
        aiFocusFallbackFrames = 0
        _state.value = _state.value.copy(
            focusPoint = null,
            focusPointSource = FocusPointSource.MANUAL,
            isFocusLocked = false,
            isFocusing = false,
            focusSuccess = null
        )
    }

    /**
     * 点击对焦
     */
    fun focusOnPoint(x: Float, y: Float, viewWidth: Int, viewHeight: Int) {
        if (viewWidth <= 0 || viewHeight <= 0) return
        focusOnNormalizedPoint(x / viewWidth, y / viewHeight, FocusPointSource.MANUAL)
    }

    fun lockFocusOnPoint(x: Float, y: Float, viewWidth: Int, viewHeight: Int) {
        if (viewWidth <= 0 || viewHeight <= 0) return
        PLog.d(TAG, "Lock focus on point: x=$x y=$y w=$viewWidth h=$viewHeight")
        focusOnNormalizedPoint(
            normX = x / viewWidth,
            normY = y / viewHeight,
            source = FocusPointSource.MANUAL,
            lockFocus = true
        )
    }

    fun focusOnNormalizedPoint(
        normX: Float,
        normY: Float,
        source: FocusPointSource = FocusPointSource.AI,
        lockFocus: Boolean = false,
    ) {
        val openCameraId = getCurrentOpenCameraId()
        if (openCameraId.isEmpty()) return

        // 重置场景变化检测状态（新的对焦覆盖旧的）
        isFocusLockedWaitingForSceneChange = false
        sceneChangeFrameCount = 0

        try {
            val characteristics = getCameraCharacteristicsCached(openCameraId)
            val activeRect = characteristics.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE) ?: return
            val sensorOrientation = getSensorOrientation()
            val lensFacing = getLensFacing()

            // 计算归一化坐标（0-1）
            val normalizedX = normX.coerceIn(0f, 1f)
            val normalizedY = normY.coerceIn(0f, 1f)

            // 存储UI坐标用于显示对焦框
            _state.value = _state.value.copy(
                focusPoint = Pair(normalizedX, normalizedY),
                focusPointSource = source,
                isFocusLocked = lockFocus,
                isFocusing = true,
                focusSuccess = null
            )
            aiFocusFallbackFrames = if (source == FocusPointSource.AI) AI_FOCUS_FALLBACK_FRAMES else 0

            // 根据传感器方向转换坐标
            // 传感器坐标系与UI坐标系可能不同，需要旋转
            val (sensorX, sensorY) = when (sensorOrientation) {
                0 -> Pair(normalizedX, normalizedY)
                90 -> Pair(normalizedY, 1 - normalizedX)  // 顺时针90度
                180 -> Pair(1 - normalizedX, 1 - normalizedY)  // 180度
                270 -> Pair(1 - normalizedY, normalizedX)  // 顺时针270度
                else -> Pair(normalizedX, normalizedY)
            }

            // 如果是前置摄像头，需要水平翻转
            val (finalX, finalY) = if (lensFacing == CameraCharacteristics.LENS_FACING_FRONT) {
                Pair(1 - sensorX, sensorY)
            } else {
                Pair(sensorX, sensorY)
            }

            // 映射到传感器坐标
            val focusX = (finalX * activeRect.width()).toInt()
            val focusY = (finalY * activeRect.height()).toInt()

            // 1. AF 区域：固定为 10% 传感器宽度，不随测光模式改变，确保对焦稳定性
            val afSize = (activeRect.width() * 0.1f).toInt()
            val afRect = android.graphics.Rect(
                (focusX - afSize).coerceAtLeast(0),
                (focusY - afSize).coerceAtLeast(0),
                (focusX + afSize).coerceAtMost(activeRect.width()),
                (focusY + afSize).coerceAtMost(activeRect.height())
            )
            val afRegion = MeteringRectangle(afRect, MeteringRectangle.METERING_WEIGHT_MAX)

            // 2. AE 区域：根据测光模式决定；系统默认模式不随点按写入 AE 区域
            val meteringMode = _state.value.meteringMode
            val aeRegion = when (meteringMode) {
                MeteringMode.SYSTEM_DEFAULT -> null
                MeteringMode.AVERAGE -> {
                    // 平均测光模式下，点击屏幕仅改变对焦点，测光区域强制保持全屏平均
                    MeteringRectangle(activeRect, MeteringRectangle.METERING_WEIGHT_MAX)
                }
                MeteringMode.SPOT,
                MeteringMode.CENTER_WEIGHTED,
                MeteringMode.HIGHLIGHT_PRIORITY -> {
                    val aeSizeFraction = when (meteringMode) {
                        MeteringMode.SPOT -> 0.03f
                        MeteringMode.CENTER_WEIGHTED -> 0.2f
                        MeteringMode.HIGHLIGHT_PRIORITY -> 0.08f
                    }
                    val aeSize = (activeRect.width() * aeSizeFraction).toInt()
                    val aeRect = android.graphics.Rect(
                        (focusX - aeSize).coerceAtLeast(0),
                        (focusY - aeSize).coerceAtLeast(0),
                        (focusX + aeSize).coerceAtMost(activeRect.width()),
                        (focusY + aeSize).coerceAtMost(activeRect.height())
                    )
                    MeteringRectangle(aeRect, MeteringRectangle.METERING_WEIGHT_MAX)
                }
            }

            PLog.d(TAG, "Focus: UI($normalizedX, $normalizedY) -> Sensor($finalX, $finalY), mode=$meteringMode")

            previewRequestBuilder?.apply {
                if (maxAfRegions > 0) {
                    set(CaptureRequest.CONTROL_AF_REGIONS, arrayOf(afRegion))
                }
                if (meteringMode == MeteringMode.SYSTEM_DEFAULT) {
                    clearCustomAeRegions(this)
                } else if (maxAeRegions > 0 && aeRegion != null) {
                    set(CaptureRequest.CONTROL_AE_REGIONS, arrayOf(aeRegion))
                }
                val afMode = CaptureRequest.CONTROL_AF_MODE_AUTO
                set(CaptureRequest.CONTROL_AF_MODE, afMode)
                set(CaptureRequest.CONTROL_AF_TRIGGER, CaptureRequest.CONTROL_AF_TRIGGER_START)
                _state.value = _state.value.copy(currentAfMode = afMode)
                updatePreview()
            }

            // 对焦后通过场景变化检测自动恢复连续对焦（不再使用固定延迟）

        } catch (e: Exception) {
            PLog.e(TAG, "Failed to focus", e)
            _state.value = _state.value.copy(isFocusing = false, focusSuccess = false)
        }
    }

// ==================== 其他设置 ====================

    /**
     * 设置画面比例
     */
    fun setAspectRatio(ratio: AspectRatio) {
        _state.value = _state.value.copy(aspectRatio = ratio)
        if (_state.value.captureMode == CaptureMode.QUICK_SHOT) {
            refreshQuickShotCapabilities()
        }
    }

    /**
     * 设置 LUT 启用状态
     */
    fun setLutEnabled(enabled: Boolean) {
        if (_state.value.lutEnabled == enabled) return
        _state.value = _state.value.copy(lutEnabled = enabled)
        createPreviewSession()
    }

    fun setLogLutActive(isLogLut: Boolean) {
        if (_state.value.isLogLutActive == isLogLut) return
        _state.value = _state.value.copy(isLogLutActive = isLogLut)
        createPreviewSession()
    }

    fun setCaptureMode(mode: CaptureMode) {
        if (_state.value.captureMode == mode || _state.value.videoRecordingState.isRecording) return
        val nextVideoConfig = if (mode == CaptureMode.VIDEO) {
            _state.value.videoConfig
        } else {
            _state.value.videoConfig.copy(logProfile = VideoLogProfile.OFF)
        }
        val nextState = _state.value.copy(
            captureMode = mode,
            videoConfig = nextVideoConfig,
            countdownValue = 0,
            isCapturingLivePhoto = false
        ).let { state ->
            if (mode == CaptureMode.VIDEO) {
                state.copy(shutterSpeed = coerceManualShutterSpeed(state, state.shutterSpeed))
            } else {
                state
            }
        }
        _state.value = nextState
        if (mode == CaptureMode.VIDEO) {
            livePhotoRecorder.stopRecording()
            refreshVideoCapabilities()
        } else if (mode == CaptureMode.QUICK_SHOT) {
            livePhotoRecorder.stopRecording()
            stopVideoRecordingTicker()
            _state.value = _state.value.copy(videoRecordingState = VideoRecordingState())
            refreshQuickShotCapabilities()
        } else {
            stopVideoRecordingTicker()
            _state.value = _state.value.copy(videoRecordingState = VideoRecordingState())
            if (_state.value.useLivePhoto) {
                livePhotoRecorder.startRecording()
            }
        }
    }

    fun setVideoResolution(resolution: VideoResolutionPreset) {
        _state.value = _state.value.copy(videoConfig = _state.value.videoConfig.copy(resolution = resolution))
        refreshVideoCapabilities()
    }

    fun setQuickShotResolution(resolution: QuickShotResolutionPreset) {
        _state.value = _state.value.copy(
            quickShotConfig = _state.value.quickShotConfig.copy(resolution = resolution)
        )
        refreshQuickShotCapabilities()
    }

    fun setQuickShotCaptureState(isCapturing: Boolean, burstCapturing: Boolean = false) {
        _state.value = _state.value.copy(
            isCapturing = isCapturing,
            burstCapturing = burstCapturing
        )
    }

    fun setVideoFps(fps: VideoFpsPreset) {
        _state.value = _state.value.copy(videoConfig = _state.value.videoConfig.copy(fps = fps))
        refreshVideoCapabilities()
        previewRequestBuilder?.apply {
            applyBaseCameraSettings(this, isCapture = false)
            updatePreview()
        }
    }

    fun setVideoAspectRatio(aspectRatio: VideoAspectRatio) {
        _state.value = _state.value.copy(videoConfig = _state.value.videoConfig.copy(aspectRatio = aspectRatio))
        refreshVideoCapabilities()
    }

    fun setVideoLogProfile(logProfile: VideoLogProfile) {
        val resolvedProfile = if (_state.value.captureMode == CaptureMode.VIDEO) {
            logProfile
        } else {
            VideoLogProfile.OFF
        }
        _state.value = _state.value.copy(videoConfig = _state.value.videoConfig.copy(logProfile = resolvedProfile))
        refreshVideoCapabilities()
        previewRequestBuilder?.apply {
            applyBaseCameraSettings(this, isCapture = false)
            updatePreview()
        }
    }

    fun setVideoStabilizationMode(mode: VideoStabilizationMode) {
        val previousMode = _state.value.videoConfig.stabilizationMode
        _state.value = _state.value.copy(
            videoConfig = _state.value.videoConfig.copy(
                stabilizationMode = mode
            )
        )
        refreshVideoCapabilities()
        val resolvedMode = _state.value.videoConfig.stabilizationMode
        if (_state.value.captureMode == CaptureMode.VIDEO &&
            !_state.value.videoRecordingState.isRecording &&
            previousMode != resolvedMode
        ) {
            createPreviewSession()
            return
        }
        previewRequestBuilder?.apply {
            applyBaseCameraSettings(this, isCapture = false)
            updatePreview()
        }
    }

    fun setVideoBitrate(bitrate: VideoBitratePreset) {
        _state.value = _state.value.copy(videoConfig = _state.value.videoConfig.copy(bitrate = bitrate))
        refreshVideoCapabilities()
    }

    fun setVideoCodec(codec: com.hinnka.mycamera.video.VideoCodec) {
        _state.value = _state.value.copy(videoConfig = _state.value.videoConfig.copy(codec = codec))
        refreshVideoCapabilities()
    }

    fun setVideoAudioInputId(audioInputId: String) {
        val normalizedAudioInputId = audioInputId.ifBlank { VIDEO_AUDIO_INPUT_AUTO }
        _state.value = _state.value.copy(
            videoConfig = _state.value.videoConfig.copy(audioInputId = normalizedAudioInputId)
        )
        videoRecorder.setPreferredAudioInputId(normalizedAudioInputId)
    }

    fun setVideoRecordingPath(recordingPath: VideoRecordingPath, recordingTreeUri: String? = null) {
        _state.value = _state.value.copy(
            videoConfig = _state.value.videoConfig.copy(
                recordingPath = recordingPath,
                recordingTreeUri = recordingTreeUri?.takeIf { it.isNotBlank() }
            )
        )
    }

    fun setVideoTorchEnabled(enabled: Boolean) {
        _state.value = _state.value.copy(
            videoConfig = _state.value.videoConfig.copy(
                torchEnabled = enabled && _state.value.videoCapabilities.supportsTorch
            )
        )
        previewRequestBuilder?.apply {
            applyBaseCameraSettings(this, isCapture = false)
            updatePreview()
        }
    }

    fun setMirrorFrontCameraEnabled(enabled: Boolean) {
        mirrorFrontCameraEnabled = enabled
    }

    fun startVideoRecording() {
        if (_state.value.captureMode != CaptureMode.VIDEO || _state.value.videoRecordingState.isRecording) {
            return
        }

        videoCaptureStatsWindowStartMs = 0L
        videoCaptureStatsFrames = 0
        videoCaptureStatsLastTimestampNs = 0L
        val outputSize = _state.value.videoConfig.resolveOutputSize(
            _state.value.videoCapabilities.openGatePortraitAspectRatio
        )
        val isFrontCamera = isCurrentCameraFrontFacing()
        val shouldFlipEncodedFrame = isFrontCamera && !mirrorFrontCameraEnabled
        val started = videoRecorder.startRecording(
            size = outputSize,
            fps = _state.value.videoConfig.fps.fps,
            bitrateMbps = _state.value.videoConfig.bitrate.bitrateMbps,
            codecMime = _state.value.videoConfig.codec.mimeType,
            colorConfig = VideoEncoderColorRequest(
                logProfile = _state.value.videoConfig.logProfile,
                hasActiveLut = _state.value.lutEnabled && _state.value.currentLutName != null
            ),
            orientationHintDegrees = resolveVideoOrientationHintDegrees(),
            flipEncodedFrame = shouldFlipEncodedFrame,
            recordingPath = _state.value.videoConfig.recordingPath,
            recordingTreeUri = _state.value.videoConfig.recordingTreeUri,
            onError = { message ->
                PLog.e(TAG, "Video recording error: $message")
                onCameraError?.invoke(-1, message, false)
            }
        ) { uri ->
            PLog.i(TAG, "Video saved: $uri")
            _state.value = _state.value.copy(videoRecordingState = VideoRecordingState())
            onVideoSaved?.invoke(uri)
        }
        if (!started) {
            return
        }

        _state.value = _state.value.copy(
            videoRecordingState = VideoRecordingState(isRecording = true, elapsedMs = 0L)
        )
        videoRecordingPausedMs = 0L
        startVideoRecordingTicker()
    }

    private fun isCurrentCameraFrontFacing(): Boolean {
        return cachedLensFacing == CameraCharacteristics.LENS_FACING_FRONT ||
            _state.value.getCurrentCameraInfo()?.lensType == LensType.FRONT
    }

    fun pauseVideoRecording() {
        if (!_state.value.videoRecordingState.isRecording || _state.value.videoRecordingState.isPaused) return
        videoRecorder.pauseRecording()
        videoRecordingPauseStartElapsedMs = SystemClock.elapsedRealtime()
        _state.value = _state.value.copy(
            videoRecordingState = _state.value.videoRecordingState.copy(isPaused = true)
        )
    }

    fun resumeVideoRecording() {
        if (!_state.value.videoRecordingState.isRecording || !_state.value.videoRecordingState.isPaused) return
        videoRecorder.resumeRecording()
        videoRecordingPausedMs += SystemClock.elapsedRealtime() - videoRecordingPauseStartElapsedMs
        _state.value = _state.value.copy(
            videoRecordingState = _state.value.videoRecordingState.copy(isPaused = false)
        )
    }

    fun stopVideoRecording() {
        if (!_state.value.videoRecordingState.isRecording) return
        videoCaptureStatsWindowStartMs = 0L
        videoCaptureStatsFrames = 0
        videoCaptureStatsLastTimestampNs = 0L
        stopVideoRecordingTicker()
        _state.value = _state.value.copy(
            videoRecordingState = _state.value.videoRecordingState.copy(isRecording = false)
        )
        videoRecorder.stopRecording()
    }

    private fun resolveVideoOrientationHintDegrees(): Int {
        val deviceRotation = OrientationObserver.rotationDegrees.toInt()
        return ((deviceRotation % 360) + 360) % 360
    }

// ==================== 延时拍摄和网格线 ====================

    /**
     * 设置延时拍摄秒数
     */
    fun setTimerSeconds(seconds: Int) {
        _state.value = _state.value.copy(timerSeconds = seconds)
    }

    /**
     * 设置倒计时值（用于UI显示）
     */
    fun setCountdownValue(value: Int) {
        _state.value = _state.value.copy(countdownValue = value)
    }

    /**
     * 设置是否显示网格线
     */
    fun setShowGrid(show: Boolean) {
        _state.value = _state.value.copy(showGrid = show)
    }

    fun setUseMFNR(useMultiFrame: Boolean) {
        _state.value = _state.value.copy(useMFNR = useMultiFrame)
    }

    fun setUseHdrComposition(useHdrComposition: Boolean) {
        _state.value = _state.value.copy(useHdrComposition = useHdrComposition)
    }

    fun setUseMFSR(useSuperResolution: Boolean) {
        _state.value = _state.value.copy(useMFSR = useSuperResolution)
    }

    fun setUseMultipleExposure(useMultipleExposure: Boolean) {
        _state.value = _state.value.copy(useMultipleExposure = useMultipleExposure)
    }

    fun onHdrBracketFramesCollected() {
        _state.value = _state.value.copy(
            hdrBracketCapturing = false,
            hdrBracketFrameCount = 0
        )
    }

    fun setMultiFrameCount(multiFrameCount: Int) {
        _state.value = _state.value.copy(
            multiFrameCount = multiFrameCount.coerceIn(
                MultiFrameConfig.MIN_FRAME_COUNT,
                MultiFrameConfig.MAX_FRAME_COUNT
            )
        )
    }


    fun setCapturingLivePhoto(enabled: Boolean) {
        _state.value = _state.value.copy(isCapturingLivePhoto = enabled)
    }

    fun setApplyUltraHDR(enabled: Boolean) {
        _state.value = _state.value.copy(applyUltraHDR = enabled)
    }

// ==================== 拍照 ====================

    /**
     * 拍照
     */
    fun capture() {
        val handler = cameraHandler
        if (handler != null && Looper.myLooper() != handler.looper) {
            handler.post {
                capture()
            }
            return
        }
        if (_state.value.captureMode != CaptureMode.PHOTO) return
        val device = cameraDevice ?: return
        val reader = imageReader ?: return

        val baseExposureResult = lastCaptureResult
        // 关键修复：每次拍照前重置拍摄结果
        lastCaptureResult = null

        PLog.i(
            TAG,
            "开始拍照 - 闪光模式: ${_state.value.flashMode}, ISO模式: ${if (_state.value.isIsoAuto) "自动" else "手动(${_state.value.iso})"}"
        )

        if (!_state.value.useLivePhoto) {
            // 播放快门音效
            onPlayShutterSound?.invoke()
        }

        _state.value = _state.value.copy(isCapturing = true)

        try {
            // 只有在【自动曝光 + 单次闪光】时才使用预闪流程
            // 手动曝光模式下，AE_PRECAPTURE_TRIGGER 不生效（因为 AE_MODE=OFF），直接拍照
            val currentState = _state.value
            val needsPrecapture = currentState.flashMode == CameraMetadata.FLASH_MODE_SINGLE
                    && currentState.isIsoAuto
                    && currentState.isShutterSpeedAuto

            if (needsPrecapture) {
                // 缓存拍照所需的参数，供状态机使用
                pendingCaptureDevice = device
                pendingCaptureReader = reader
                pendingCaptureBaseExposureResult = baseExposureResult

                PLog.d(TAG, "启动状态机拍照流程")
                runPrecaptureSequence()
            } else {
                // 其他情况（手动曝光、手电筒模式、不使用闪光灯）：直接拍照
                PLog.d(TAG, "直接拍照")
                performCapture(device, reader, baseExposureResult)
            }

        } catch (e: Exception) {
            PLog.e(TAG, "Failed to capture", e)
            PLog.e(TAG, "拍照失败", e)
            _state.value = _state.value.copy(isCapturing = false)
        }
    }

    fun captureHdrBracket(zeroEvFrameCount: Int? = null) {
        val handler = cameraHandler
        if (handler != null && Looper.myLooper() != handler.looper) {
            handler.post {
                captureHdrBracket(zeroEvFrameCount)
            }
            return
        }
        if (_state.value.captureMode != CaptureMode.PHOTO) {
            onHdrBracketCaptureFailed?.invoke()
            return
        }
        val device = cameraDevice
        val reader = imageReader
        val session = captureSession
        if (device == null || reader == null || session == null) {
            onHdrBracketCaptureFailed?.invoke()
            return
        }
        val baseExposureResult = lastCaptureResult
        lastCaptureResult = null
        performHdrBracketCapture(
            device = device,
            reader = reader,
            session = session,
            zeroEvFrameCount = zeroEvFrameCount ?: resolveHdrBracketZeroEvFrameCount(_state.value),
            playShutterSound = true,
            baseExposureResult = baseExposureResult
        )
    }

    private fun performHdrBracketCapture(
        device: CameraDevice,
        reader: ImageReader,
        session: CameraCaptureSession,
        zeroEvFrameCount: Int,
        playShutterSound: Boolean,
        baseExposureResult: CaptureResult?
    ) {
        val isRawCapture = isRawCaptureReader(reader)
        val currentState = _state.value
        val normalizedZeroEvFrameCount = zeroEvFrameCount.coerceIn(
            0,
            MultiFrameConfig.MAX_FRAME_COUNT
        )
        val evOffsets = buildHdrBracketEvOffsets(
            zeroEvFrameCount = normalizedZeroEvFrameCount,
            isRawCapture = isRawCapture,
        )
        val hdrFrameCount = evOffsets.size
        _state.value = _state.value.copy(
            isCapturing = true,
            hdrBracketCapturing = true,
            hdrBracketFrameCount = hdrFrameCount
        )

        try {
            if (playShutterSound && !_state.value.useLivePhoto) {
                onPlayShutterSound?.invoke()
            }
            val manualBaseExposure = resolveHdrBracketManualBaseExposure(currentState, baseExposureResult)
            logHdrBracketBaseExposure(currentState, baseExposureResult, manualBaseExposure)
            val requests = evOffsets.mapIndexed { index, evOffset ->
                device.createCaptureRequest(CameraDevice.TEMPLATE_STILL_CAPTURE).apply {
                    setTag(index)
                    addTarget(reader.surface)
                    applyBaseCameraSettings(
                        builder = this,
                        isCapture = true,
                        isRawCapture = isRawCapture,
                        disableZslForHdrCapture = !isRawCapture
                    )
                    applyHdrBracketExposure(this, currentState, evOffset, manualBaseExposure)
                    set(CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER, CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER_IDLE)
                    set(CaptureRequest.FLASH_MODE, CaptureRequest.FLASH_MODE_OFF)
                    if (currentState.awbMode != CameraMetadata.CONTROL_AWB_MODE_OFF) {
                        set(CaptureRequest.CONTROL_AWB_LOCK, true)
                    }
                    copyStillFocusSettingsFromPreview(this)
                    PLog.d(TAG, "HDR bracket request[$index]: ev=$evOffset, manual=${manualBaseExposure != null}")
                }.build()
            }

            session.captureBurst(requests, object : CameraCaptureSession.CaptureCallback() {
                override fun onCaptureStarted(
                    session: CameraCaptureSession,
                    request: CaptureRequest,
                    timestamp: Long,
                    frameNumber: Long
                ) {
                    pendingCaptureStartedTimestamps[frameNumber] = timestamp
                    PLog.d(TAG, "HDR bracket capture started: frame=$frameNumber")
                }

                override fun onCaptureCompleted(
                    session: CameraCaptureSession,
                    request: CaptureRequest,
                    result: TotalCaptureResult
                ) {
                    processOrBufferCaptureResult(result)
                    lastCaptureResult = result
                    logHdrBracketActualExposure(request, result)
                }

                override fun onCaptureSequenceCompleted(
                    session: CameraCaptureSession,
                    sequenceId: Int,
                    frameNumber: Long
                ) {
                    super.onCaptureSequenceCompleted(session, sequenceId, frameNumber)
                    PLog.d(TAG, "HDR bracket sequence completed")
                    resetPreviewAfterCapture()
                }

                override fun onCaptureFailed(
                    session: CameraCaptureSession,
                    request: CaptureRequest,
                    failure: CaptureFailure
                ) {
                    PLog.e(TAG, "HDR bracket capture failed: ${failure.reason}")
                    _state.value = _state.value.copy(
                        isCapturing = false,
                        hdrBracketCapturing = false,
                        hdrBracketFrameCount = 0
                    )
                    onHdrBracketCaptureFailed?.invoke()
                    resetPreviewAfterCapture()
                }
            }, cameraHandler)
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to capture HDR bracket", e)
            _state.value = _state.value.copy(
                isCapturing = false,
                hdrBracketCapturing = false,
                hdrBracketFrameCount = 0
            )
            onHdrBracketCaptureFailed?.invoke()
            resetPreviewAfterCapture()
        }
    }

    private fun buildHdrBracketEvOffsets(
        zeroEvFrameCount: Int,
        isRawCapture: Boolean,
    ): List<Float> {
        val sideEv = if (isRawCapture) {
            HdrBracketConfig.RAW_SIDE_EV
        } else {
            HdrBracketConfig.YUV_SIDE_EV
        }
        val zeroCount = zeroEvFrameCount.coerceAtLeast(1)
        if (isRawCapture) {
            val normalFrameCount = zeroEvFrameCount.coerceAtLeast(HdrBracketConfig.RAW_REFERENCE_FRAME_COUNT - 1)
            return buildList {
                add(-sideEv)
                repeat(normalFrameCount) {
                    add(0f)
                }
            }
        }
        return buildList {
            add(0f)
            add(sideEv)
            add(-sideEv)
            repeat((zeroCount - 1).coerceAtLeast(0)) {
                add(0f)
            }
        }
    }

    /**
     * 执行实际的拍照操作
     */
    private fun resolveHdrBracketManualBaseExposure(
        state: CameraState,
        baseExposureResult: CaptureResult?
    ): Pair<Int, Long>? {
        if (!isManualSensorSupported || !availableAeModes.contains(CaptureRequest.CONTROL_AE_MODE_OFF)) {
            return null
        }
        val baseIso = if (state.isAutoExposure) {
            baseExposureResult?.get(CaptureResult.SENSOR_SENSITIVITY)
        } else {
            state.iso
        } ?: return null
        val baseShutter = if (state.isAutoExposure) {
            baseExposureResult?.get(CaptureResult.SENSOR_EXPOSURE_TIME)
        } else {
            state.shutterSpeed
        } ?: return null
        if (baseIso <= 0 || baseShutter <= 0L) return null
        return Pair(baseIso, baseShutter)
    }

    private fun logHdrBracketBaseExposure(
        state: CameraState,
        baseExposureResult: CaptureResult?,
        manualBaseExposure: Pair<Int, Long>?
    ) {
        val resultIso = baseExposureResult?.get(CaptureResult.SENSOR_SENSITIVITY)
        val resultShutter = baseExposureResult?.get(CaptureResult.SENSOR_EXPOSURE_TIME)
        val resultCompensation = baseExposureResult?.get(CaptureResult.CONTROL_AE_EXPOSURE_COMPENSATION)
        PLog.d(
            TAG,
            "HDR bracket base exposure: auto=${state.isAutoExposure}, " +
                    "userComp=${state.exposureCompensation}, userBias=${state.exposureBias}, " +
                    "resultIso=$resultIso, resultShutter=$resultShutter, resultComp=$resultCompensation, " +
                    "manualBase=${manualBaseExposure?.first}/${manualBaseExposure?.second}"
        )
    }

    private fun logHdrBracketActualExposure(request: CaptureRequest, result: CaptureResult) {
        val requestIndex = request.tag as? Int
        val actualIso = result.get(CaptureResult.SENSOR_SENSITIVITY)
        val actualShutter = result.get(CaptureResult.SENSOR_EXPOSURE_TIME)
        val actualCompensation = result.get(CaptureResult.CONTROL_AE_EXPOSURE_COMPENSATION)
        val aeMode = result.get(CaptureResult.CONTROL_AE_MODE)
        PLog.d(
            TAG,
            "HDR bracket result[$requestIndex]: ISO=$actualIso, shutter=$actualShutter, " +
                    "aeComp=$actualCompensation, aeMode=$aeMode"
        )
    }

    private fun applyHdrBracketExposure(
        builder: CaptureRequest.Builder,
        state: CameraState,
        evOffset: Float,
        manualBaseExposure: Pair<Int, Long>?
    ) {
        if (manualBaseExposure != null) {
            val (iso, shutter) = calculateHdrBracketManualExposure(
                baseIso = manualBaseExposure.first,
                baseShutter = manualBaseExposure.second,
                evOffset = evOffset,
                state = state
            )
            builder.set(CaptureRequest.CONTROL_AE_MODE, CaptureRequest.CONTROL_AE_MODE_OFF)
            builder.set(CaptureRequest.SENSOR_SENSITIVITY, iso)
            builder.set(CaptureRequest.SENSOR_EXPOSURE_TIME, shutter)
            PLog.d(TAG, "HDR bracket manual exposure: ev=$evOffset, ISO=$iso, shutter=$shutter")
            return
        }

        val compensation = calculateHdrBracketExposureCompensation(state, evOffset)
        builder.set(CaptureRequest.CONTROL_AE_MODE, CaptureRequest.CONTROL_AE_MODE_ON)
        builder.set(CaptureRequest.CONTROL_AE_EXPOSURE_COMPENSATION, compensation)
        PLog.d(TAG, "HDR bracket AE compensation: ev=$evOffset, compensation=$compensation")
    }

    private fun calculateHdrBracketManualExposure(
        baseIso: Int,
        baseShutter: Long,
        evOffset: Float,
        state: CameraState
    ): Pair<Int, Long> {
        val isoRange = state.getIsoRange()
        val shutterRange = state.getShutterSpeedRange()
        val multiplier = 2.0.pow(evOffset.toDouble())
        val targetProduct = baseIso.toDouble() * baseShutter.toDouble() * multiplier

        val shutterFirst = (baseShutter.toDouble() * multiplier)
            .roundToLong()
            .coerceIn(shutterRange.lower, shutterRange.upper)
        val isoForShutter = (targetProduct / shutterFirst.toDouble())
            .roundToInt()
            .coerceIn(isoRange.lower, isoRange.upper)
        val shutterForIso = (targetProduct / isoForShutter.toDouble())
            .roundToLong()
            .coerceIn(shutterRange.lower, shutterRange.upper)

        return Pair(isoForShutter, shutterForIso)
    }

    private fun calculateHdrBracketExposureCompensation(state: CameraState, evOffset: Float): Int {
        val evStep = state.getExposureCompensationStep().takeIf { it > 0f } ?: return state.exposureCompensation
        val range = state.getExposureCompensationRange()
        val steps = roundHdrBracketCompensationSteps(evOffset, evStep)
        return (state.exposureCompensation + steps).coerceIn(range.lower, range.upper)
    }

    private fun roundHdrBracketCompensationSteps(evOffset: Float, evStep: Float): Int {
        if (evOffset == 0f) return 0
        val magnitude = (abs(evOffset / evStep) + 0.0001f).roundToInt()
        return if (evOffset < 0f) -magnitude else magnitude
    }

    private fun copyStillFocusSettingsFromPreview(builder: CaptureRequest.Builder) {
        previewRequestBuilder?.let { preview ->
            preview.get(CaptureRequest.CONTROL_AF_MODE)?.let {
                builder.set(CaptureRequest.CONTROL_AF_MODE, it)
            }
            preview.get(CaptureRequest.LENS_FOCUS_DISTANCE)?.let {
                builder.set(CaptureRequest.LENS_FOCUS_DISTANCE, it)
            }
            preview.get(CaptureRequest.CONTROL_AF_REGIONS)?.let {
                builder.set(CaptureRequest.CONTROL_AF_REGIONS, it)
            }
            preview.get(CaptureRequest.CONTROL_AE_REGIONS)?.let {
                builder.set(CaptureRequest.CONTROL_AE_REGIONS, it)
            }
        }
    }

    private fun shouldUseDefaultHdrBracketCapture(state: CameraState, isRawCapture: Boolean): Boolean {
        return state.captureMode == CaptureMode.PHOTO &&
                state.useHdrComposition &&
                !state.burstCapturing &&
                !state.hdrBracketCapturing &&
                !state.useMultipleExposure &&
                !state.useLivePhoto &&
                (isRawCapture || !state.useRaw || !isRawSupported)
    }

    private fun resolveHdrBracketZeroEvFrameCount(state: CameraState): Int {
        return if (state.useMFNR || state.useMFSR) {
            state.multiFrameCount.coerceIn(
                MultiFrameConfig.MIN_FRAME_COUNT,
                MultiFrameConfig.MAX_FRAME_COUNT
            )
        } else {
            0
        }
    }

    private fun performCapture(
        device: CameraDevice,
        reader: ImageReader,
        baseExposureResult: CaptureResult? = lastCaptureResult
    ) {
        try {
            val isRawCapture = isRawCaptureReader(reader)
            val currentState = _state.value
            if (shouldUseDefaultHdrBracketCapture(currentState, isRawCapture)) {
                val session = captureSession ?: run {
                    PLog.e(TAG, "Failed to capture HDR bracket: capture session unavailable")
                    _state.value = _state.value.copy(isCapturing = false)
                    onHdrBracketCaptureFailed?.invoke()
                    return
                }
                PLog.d(TAG, "Default HDR bracket capture, raw=$isRawCapture")
                performHdrBracketCapture(
                    device = device,
                    reader = reader,
                    session = session,
                    zeroEvFrameCount = resolveHdrBracketZeroEvFrameCount(currentState),
                    playShutterSound = false,
                    baseExposureResult = baseExposureResult
                )
                return
            }

            val captureBuilder = device.createCaptureRequest(CameraDevice.TEMPLATE_STILL_CAPTURE).apply {
                addTarget(reader.surface)

                // Do not mirror still capture frames to the GL preview SurfaceTexture.
                // Some camera HALs occasionally deliver a still-capture buffer that
                // SurfaceTexture.updateTexImage cannot bind as an external OES image.
                // if (!isRawCapture && shouldMirrorStillCaptureToPreview()) {
                //     previewSurface?.let { addTarget(it) }
                // }

                // 应用所有相机参数（曝光、白平衡、闪光灯、变焦、色调映射）
                // isCapture = true 确保使用完整的曝光时间（不限制长曝光）
                applyBaseCameraSettings(this, isCapture = true, isRawCapture = isRawCapture)

                if (isRawCapture && shouldApplyRawMinShutterLimit(currentState)) {
                    if (isManualSensorSupported) {
                        val (adjustedIso, adjustedShutter) = calculateRawMinShutterAdjustedExposure(
                            currentState,
                            currentState.iso,
                            currentState.shutterSpeed
                        )
                        set(CaptureRequest.CONTROL_AE_MODE, CaptureRequest.CONTROL_AE_MODE_OFF)
                        set(CaptureRequest.SENSOR_SENSITIVITY, adjustedIso)
                        set(CaptureRequest.SENSOR_EXPOSURE_TIME, adjustedShutter)
                        PLog.d(
                            TAG,
                            "Capture RAW min shutter override: minShutter=${currentState.rawMinShutterSpeedNs}, ISO=$adjustedIso, shutter=$adjustedShutter"
                        )
                    } else {
                        PLog.w(TAG, "RAW min shutter requires MANUAL_SENSOR support")
                    }
                }

                // 强制将此请求的触发器设为 IDLE，防止携带预览中的触发状态
                set(CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER, CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER_IDLE)

                // 从预览请求复制对焦相关设置
                previewRequestBuilder?.let { preview ->
                    preview.get(CaptureRequest.CONTROL_AF_MODE)?.let {
                        set(CaptureRequest.CONTROL_AF_MODE, it)
                    }
                    preview.get(CaptureRequest.LENS_FOCUS_DISTANCE)?.let {
                        set(CaptureRequest.LENS_FOCUS_DISTANCE, it)
                    }
                    preview.get(CaptureRequest.CONTROL_AF_REGIONS)?.let {
                        set(CaptureRequest.CONTROL_AF_REGIONS, it)
                    }
                    preview.get(CaptureRequest.CONTROL_AE_REGIONS)?.let {
                        set(CaptureRequest.CONTROL_AE_REGIONS, it)
                    }
                }

                PLog.d(
                    TAG,
                    "Capture request built and ready to send. ISO: ${_state.value.iso}, shutter: ${_state.value.shutterSpeed}, AE: ${_state.value.isAutoExposure}"
                )
            }

            if (state.value.useMFNR || _state.value.useMFSR) {
                // Burst Mode
                val requests = ArrayList<CaptureRequest>()
                val request = captureBuilder.build()
                for (i in 0 until state.value.multiFrameCount) {
                    requests.add(request)
                }

                captureSession?.captureBurst(requests, object : CameraCaptureSession.CaptureCallback() {
                    override fun onCaptureStarted(
                        session: CameraCaptureSession,
                        request: CaptureRequest,
                        timestamp: Long,
                        frameNumber: Long
                    ) {
                        if (isRawCapture) {
                            pendingCaptureStartedTimestamps[frameNumber] = timestamp
                        }
                        PLog.d(TAG, "Burst capture started at frame $frameNumber")
                    }

                    override fun onCaptureCompleted(
                        session: CameraCaptureSession,
                        request: CaptureRequest,
                        result: TotalCaptureResult
                    ) {
                        val timestamp = getCaptureTimestamp(result)
                        if (timestamp != null && isRawCapture) {
                            val pendingImage = pendingImages.remove(timestamp)
                            if (pendingImage != null) {
                                processAndTriggerCapture(pendingImage, result)
                            } else {
                                pendingResults[timestamp] = result
                            }
                        }
                        lastCaptureResult = result
                        PLog.d(
                            TAG,
                            "Capture completed, result buffered (timestamp: $timestamp). Pending images: ${pendingImages.size}, Pending results: ${pendingResults.size}"
                        )
                    }

                    override fun onCaptureSequenceCompleted(
                        session: CameraCaptureSession,
                        sequenceId: Int,
                        frameNumber: Long
                    ) {
                        super.onCaptureSequenceCompleted(session, sequenceId, frameNumber)
                        PLog.d(TAG, "Burst sequence completed")
                        resetPreviewAfterCapture()
                    }

                    override fun onCaptureFailed(
                        session: CameraCaptureSession,
                        request: CaptureRequest,
                        failure: CaptureFailure
                    ) {
                        PLog.e(TAG, "Burst Capture failed: ${failure.reason}")
                        _state.value = _state.value.copy(isCapturing = false)
                        resetPreviewAfterCapture()
                    }
                }, cameraHandler)

            } else {
                // Single Capture Mode
                captureSession?.capture(captureBuilder.build(), object : CameraCaptureSession.CaptureCallback() {
                    override fun onCaptureStarted(
                        session: CameraCaptureSession,
                        request: CaptureRequest,
                        timestamp: Long,
                        frameNumber: Long
                    ) {
                        if (isRawCapture) {
                            pendingCaptureStartedTimestamps[frameNumber] = timestamp
                        }
                        PLog.d(TAG, "Capture started at frame $frameNumber")
                    }

                    override fun onCaptureCompleted(
                        session: CameraCaptureSession,
                        request: CaptureRequest,
                        result: TotalCaptureResult
                    ) {
                        val timestamp = getCaptureTimestamp(result)
                        if (timestamp != null && isRawCapture) {
                            val pendingImage = pendingImages.remove(timestamp)
                            if (pendingImage != null) {
                                processAndTriggerCapture(pendingImage, result)
                            } else {
                                pendingResults[timestamp] = result
                            }
                        }
                        lastCaptureResult = result
                        PLog.d(
                            TAG,
                            "Capture completed, result buffered (timestamp: $timestamp). Pending images: ${pendingImages.size}, Pending results: ${pendingResults.size}"
                        )
                        resetPreviewAfterCapture()
                    }

                    override fun onCaptureFailed(
                        session: CameraCaptureSession,
                        request: CaptureRequest,
                        failure: CaptureFailure
                    ) {
                        PLog.e(TAG, "Capture failed: ${failure.reason}")
                        _state.value = _state.value.copy(isCapturing = false)
                        resetPreviewAfterCapture()
                    }
                }, cameraHandler)
            }

        } catch (e: Exception) {
            PLog.e(TAG, "Failed to perform capture", e)
            _state.value = _state.value.copy(isCapturing = false)
        }
    }

    private fun resetPreviewAfterCapture() {
        // 重置拍照状态机
        internalCaptureState = STATE_PREVIEW
        pendingCaptureDevice = null
        pendingCaptureReader = null
        pendingCaptureBaseExposureResult = null

        // 关键修复：检查相机和会话是否仍然有效
        val device = cameraDevice
        val session = captureSession
        val builder = previewRequestBuilder

        if (device == null || session == null || builder == null) {
            PLog.v(TAG, "resetPreviewAfterCapture: camera not ready, skipping")
            return
        }

        try {
            applyBaseCameraSettings(builder, isCapture = false)

            builder.set(
                CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER,
                CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER_CANCEL
            )
            session.capture(builder.build(), null, cameraHandler)
            builder.set(
                CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER,
                CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER_IDLE
            )
            session.setRepeatingRequest(builder.build(), previewCallback, cameraHandler)
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to reset preview", e)
        }
    }


    /**
     * 构建 CaptureInfo
     *
     * 从 CaptureResult 和 CameraCharacteristics 提取拍摄信息
     */
    fun rebuildCaptureInfo(
        result: CaptureResult?,
        imageWidth: Int,
        imageHeight: Int,
        latitude: Double? = null,
        longitude: Double? = null,
        effectiveCharacteristics: CameraCharacteristics? = null
    ): CaptureInfo {
        val openCameraId = getCurrentOpenCameraId()
        val zoomRatio = _state.value.zoomRatio

        // 从 CameraCharacteristics 获取镜头固定信息
        var aperture: Float? = null
        var characteristicsForMetadata: CameraCharacteristics? = null

        try {
            val characteristics = effectiveCharacteristics ?: getCameraCharacteristicsCached(openCameraId)
            characteristicsForMetadata = characteristics

            // 光圈值（取第一个可用光圈）
            val apertures = characteristics.get(CameraCharacteristics.LENS_INFO_AVAILABLE_APERTURES)
            aperture = apertures?.firstOrNull()

        } catch (e: Exception) {
            PLog.e(TAG, "Failed to get camera characteristics for EXIF", e)
        }

        // 从 CaptureResult 获取曝光信息
        val exposureTime = result?.get(CaptureResult.SENSOR_EXPOSURE_TIME) ?: _state.value.shutterSpeed
        val iso = result?.get(CaptureResult.SENSOR_SENSITIVITY) ?: _state.value.iso
        val whiteBalance = result?.get(CaptureResult.CONTROL_AWB_MODE) ?: _state.value.awbTemperature
        val flashState = result?.get(CaptureResult.FLASH_STATE) ?: _state.value.flashMode

        // 如果有实时的光圈/焦距，使用实时值
        result?.get(CaptureResult.LENS_APERTURE)?.let { aperture = it }
        val resolvedFocalLength = resolveCaptureFocalLength(
            characteristics = characteristicsForMetadata,
            captureResultFocalLength = result?.get(CaptureResult.LENS_FOCAL_LENGTH),
            zoomRatio = zoomRatio
        )

        return CaptureInfo(
            exposureTime = exposureTime,
            iso = iso,
            aperture = aperture,
            focalLength = resolvedFocalLength.focalLength,
            focalLength35mm = resolvedFocalLength.focalLength35mm,
            whiteBalance = whiteBalance,
            flashState = flashState,
            // 传给下游的方向永远是 NORMAL (1)
            orientation = ExifInterface.ORIENTATION_NORMAL,
            imageWidth = imageWidth,
            imageHeight = imageHeight,
            captureTime = System.currentTimeMillis(),
            latitude = latitude,
            longitude = longitude,
            colorSpace = when {
                shouldUseP3ColorSpace() -> ColorSpace.Named.DISPLAY_P3
                else -> ColorSpace.Named.SRGB
            }
        )
    }

    private data class ResolvedCaptureFocalLength(
        val focalLength: Float?,
        val focalLength35mm: Int?
    )

    private fun resolveCaptureFocalLength(
        characteristics: CameraCharacteristics?,
        captureResultFocalLength: Float?,
        zoomRatio: Float
    ): ResolvedCaptureFocalLength {
        val selectedCamera = _state.value.getCurrentCameraInfo()
        val selectedCameraFocalLength = selectedCamera?.focalLength?.takeIf { it > 0f }
        val selectedCameraFocalLength35mm = selectedCamera?.focalLength35mmEquivalent?.takeIf { it > 0f }
        val characteristicsFocalLength = characteristics
            ?.get(CameraCharacteristics.LENS_INFO_AVAILABLE_FOCAL_LENGTHS)
            ?.firstOrNull()
            ?.takeIf { it > 0f }

        val baseFocalLength = selectedCameraFocalLength
            ?: captureResultFocalLength?.takeIf { it > 0f }
            ?: characteristicsFocalLength
        val baseFocalLength35mm = selectedCameraFocalLength35mm
            ?: characteristics?.let(::calculate35mmEquivalent)?.toFloat()

        return ResolvedCaptureFocalLength(
            focalLength = baseFocalLength?.times(zoomRatio),
            focalLength35mm = baseFocalLength35mm?.times(zoomRatio)?.roundToInt()
        )
    }

    private fun shouldUseP3ColorSpace(): Boolean {
        return _state.value.isP3Supported && _state.value.useP3ColorSpace
    }

    /**
     * 计算等效35mm焦距
     *
     * 基于传感器尺寸计算裁切系数
     */
    private fun calculate35mmEquivalent(characteristics: CameraCharacteristics): Int? {
        try {
            val focalLengths = characteristics.get(CameraCharacteristics.LENS_INFO_AVAILABLE_FOCAL_LENGTHS)
            val sensorSize = characteristics.get(CameraCharacteristics.SENSOR_INFO_PHYSICAL_SIZE)

            if (focalLengths == null || focalLengths.isEmpty() || sensorSize == null) {
                return null
            }

            val focalLength = focalLengths[0]

            // 计算传感器对角线
            val sensorDiagonal = kotlin.math.sqrt(
                (sensorSize.width * sensorSize.width + sensorSize.height * sensorSize.height).toDouble()
            ).toFloat()

            // 35mm 全画幅对角线 (36mm x 24mm)
            val filmDiagonal = 43.2666f

            if (sensorDiagonal <= 0) return null

            return (focalLength * filmDiagonal / sensorDiagonal).roundToInt()
        } catch (e: Exception) {
            return null
        }
    }

// ==================== 生命周期 ====================

    /**
     * 关闭相机
     */
    fun closeCamera(
        preserveVideoRecording: Boolean = false,
        expectedSurfaceTexture: SurfaceTexture? = null
    ) {
        val handler = cameraHandler
        if (handler != null && Looper.myLooper() != handler.looper) {
            handler.post {
                closeCamera(preserveVideoRecording, expectedSurfaceTexture)
            }
            return
        }
        if (expectedSurfaceTexture != null && previewSurfaceTexture !== expectedSurfaceTexture) {
            PLog.d(
                TAG,
                "closeCamera skipped for stale SurfaceTexture: expected=" +
                        "${System.identityHashCode(expectedSurfaceTexture)}, current=" +
                        "${previewSurfaceTexture?.let { System.identityHashCode(it) }}"
            )
            return
        }
        try {
            cameraOpenGeneration++
            val keepVideoRecording = preserveVideoRecording && _state.value.videoRecordingState.isRecording
            if (keepVideoRecording) {
                PLog.d(TAG, "Closing camera while keeping active video recording")
            }
            if (_state.value.videoRecordingState.isRecording && !keepVideoRecording) {
                stopVideoRecording()
            } else if (!keepVideoRecording) {
                videoRecorder.forceStop()
                stopVideoRecordingTicker()
                _state.value = _state.value.copy(videoRecordingState = VideoRecordingState())
            }

            clearCameraSessionState("closeCamera")
            closeCameraDeviceSafely(cameraDevice, "closeCamera")
            cameraDevice = null
            clearCameraCapabilityCache()

            _state.value = if (keepVideoRecording) {
                _state.value.copy(isPreviewActive = false)
            } else {
                _state.value.copy(
                    isPreviewActive = false,
                    videoRecordingState = VideoRecordingState()
                )
            }

            // 停止 Live Photo 录制，释放旧环境下的 EGL 资源
            livePhotoRecorder.stopRecording()

            PLog.d(TAG, "Camera closed")
        } catch (e: Exception) {
            PLog.e(TAG, "Error closing camera", e)
        }
    }

    private fun safeCloseCaptureSession(session: CameraCaptureSession?, reason: String) {
        try {
            session?.close()
        } catch (e: SecurityException) {
            PLog.w(TAG, "Ignoring SecurityException while closing capture session ($reason): ${e.message}")
        } catch (e: Exception) {
            PLog.e(TAG, "Error closing capture session ($reason)", e)
        }
    }

    private fun safeCloseImageReader(reader: ImageReader?) {
        reader?.let {
            if (openImagesCount.get() == 0) {
                it.close()
                PLog.d(TAG, "ImageReader closed immediately")
            } else {
                synchronized(pendingCloseReaders) {
                    pendingCloseReaders.add(it)
                }
                PLog.d(TAG, "ImageReader added to pending close list, open images: ${openImagesCount.get()}")
            }
        }
    }

    private fun checkAndClosePendingReaders() {
        synchronized(pendingCloseReaders) {
            val iterator = pendingCloseReaders.iterator()
            while (iterator.hasNext()) {
                val reader = iterator.next()
                try {
                    reader.close()
                    PLog.d(TAG, "Closed pending ImageReader")
                } catch (e: Exception) {
                    PLog.e(TAG, "Error closing pending ImageReader", e)
                }
                iterator.remove()
            }
        }
    }

    private fun processAndTriggerCapture(image: SafeImage, result: TotalCaptureResult?) {
        try {
            val width = image.width
            val height = image.height
            var effectiveCharacteristics = getActiveOpenCameraCharacteristics()
            var effectiveResult: CaptureResult? = result

            // For RAW images, ensure characteristics match image dimensions to avoid DngCreator crash.
            // This is especially important for logical multi-camera devices where the RAW might come from a physical sub-camera.
            if (image.format == ImageFormat.RAW_SENSOR && result != null) {
                val checkMatch = { chars: CameraCharacteristics? ->
                    val pixelArray = chars?.get(CameraCharacteristics.SENSOR_INFO_PIXEL_ARRAY_SIZE)
                    val preCorrectionArray = chars?.get(CameraCharacteristics.SENSOR_INFO_PRE_CORRECTION_ACTIVE_ARRAY_SIZE)
                    val matchesPixelArray = pixelArray != null &&
                            pixelArray.width == width &&
                            pixelArray.height == height
                    val matchesPreCorrectionArray = preCorrectionArray != null &&
                            preCorrectionArray.width() == width &&
                            preCorrectionArray.height() == height
                    matchesPixelArray || matchesPreCorrectionArray
                }

                if (!checkMatch(effectiveCharacteristics)) {
                    PLog.d(TAG, "RAW dimensions $width x $height mismatch logical characteristics. Searching physical cameras...")
                    for ((physicalId, physicalResult) in result.physicalCameraResults) {
                        try {
                            val physicalChars = getCameraCharacteristicsCached(physicalId)
                            if (checkMatch(physicalChars)) {
                                PLog.i(TAG, "Found matching physical camera $physicalId for RAW image")
                                effectiveCharacteristics = physicalChars
                                effectiveResult = physicalResult
                                break
                            }
                        } catch (e: Exception) {
                            PLog.w(TAG, "Failed to check physical camera $physicalId", e)
                        }
                    }
                }
            }

            // 构建 CaptureInfo
            val captureInfo = rebuildCaptureInfo(
                result = effectiveResult ?: result,
                imageWidth = width,
                imageHeight = height,
                latitude = _state.value.latitude,
                longitude = _state.value.longitude,
                effectiveCharacteristics = effectiveCharacteristics
            )

            // 传递完整的 Image 对象、CaptureInfo、CameraCharacteristics 和 CaptureResult
            val callback = onImageCaptured
            if (callback != null) {
                callback.invoke(image, captureInfo, effectiveCharacteristics, effectiveResult ?: result)
            } else {
                image.close()
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Error processing joined capture data", e)
            image.close()
        }
    }

    /**
     * 释放资源
     */
    fun release() {
        val handler = cameraHandler
        if (handler != null) {
            val latch = java.util.concurrent.CountDownLatch(1)
            handler.post {
                try {
                    closeCamera()
                } finally {
                    latch.countDown()
                }
            }
            try {
                latch.await(2000, java.util.concurrent.TimeUnit.MILLISECONDS)
            } catch (e: InterruptedException) {
                PLog.e(TAG, "Interrupted while waiting for camera close during release", e)
            }
        } else {
            closeCamera()
        }
        previewDepthProcessor.release()
        previewAiFocusProcessor.release()
        videoRecorder.release()
        stopBackgroundThread()
        cameraDiscovery.clearCache()
    }

    /**
     * 设置是否启用 Live Photo
     */
    fun setUseLivePhoto(enabled: Boolean) {
        _state.value = _state.value.copy(useLivePhoto = enabled)
        if (enabled && _state.value.captureMode == CaptureMode.PHOTO) {
            livePhotoRecorder.startRecording()
        } else {
            livePhotoRecorder.stopRecording()
        }
    }

    fun setUseP010(enabled: Boolean) {
        _state.value = _state.value.copy(useP010 = enabled)
    }

    fun setUseHlg10(enabled: Boolean) {
        _state.value = _state.value.copy(
            useHlg10 = enabled,
        )
    }

    fun setUseP3ColorSpace(enabled: Boolean) {
        _state.value = _state.value.copy(useP3ColorSpace = enabled)
    }

    fun setLocation(latitude: Double?, longitude: Double?) {
        PLog.d(TAG, "setLocation: $latitude, $longitude")
        _state.value = _state.value.copy(latitude = latitude, longitude = longitude)
    }

    /**
     * 执行 Live Photo 快照（在按下快门时尽早调用，以确定“之前”的时间范围）
     */
    fun snapshotLivePhoto() {
        livePhotoRecorder.snapshot()
    }

    /**
     * 开始后台录制导出视频（在获得照片精确时间戳后调用）
     * @param timestampUs 精确的拍照瞬间时间戳（纳秒/1000）
     */
    fun recordLivePhotoVideo(timestampUs: Long? = null, onCaptured: ((java.io.File, Long) -> Unit)? = null) {
        livePhotoRecorder.recordVideo(timestampUs) { file, timestamp ->
            onCaptured?.invoke(file, timestamp)
            onLivePhotoVideoCaptured?.invoke(file, timestamp)
        }
    }

    /**
     * 启动连拍
     */
    fun startBurstCapture() {
        val handler = cameraHandler
        if (handler != null && Looper.myLooper() != handler.looper) {
            handler.post {
                startBurstCapture()
            }
            return
        }
        val device = cameraDevice ?: return
        val session = captureSession ?: return
        val builder = previewRequestBuilder ?: return

        PLog.d(TAG, "Start Burst Capture")
        _state.value = _state.value.copy(burstCapturing = true, isCapturing = true)
        burstCapturing = true

        try {
            // Apply capture intent
            val isRawCapture = isRawCaptureReader(imageReader)
            val captureBuilder = device.createCaptureRequest(CameraDevice.TEMPLATE_STILL_CAPTURE).apply {
                imageReader?.surface?.let { addTarget(it) }
                if (!isRawCapture && shouldMirrorStillCaptureToPreview()) {
                    previewSurface?.let { addTarget(it) }
                } else if (isRawCapture) {
                    PLog.d(TAG, "RAW burst capture uses RAW target only to avoid unstable RAW+preview still requests")
                }

                applyBaseCameraSettings(this, isCapture = true, isRawCapture = isRawCapture)

                set(CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER, CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER_IDLE)

                builder.get(CaptureRequest.CONTROL_AF_MODE)?.let { set(CaptureRequest.CONTROL_AF_MODE, it) }
                builder.get(CaptureRequest.LENS_FOCUS_DISTANCE)?.let { set(CaptureRequest.LENS_FOCUS_DISTANCE, it) }
                builder.get(CaptureRequest.CONTROL_AF_REGIONS)?.let { set(CaptureRequest.CONTROL_AF_REGIONS, it) }
                builder.get(CaptureRequest.CONTROL_AE_REGIONS)?.let { set(CaptureRequest.CONTROL_AE_REGIONS, it) }
            }

            val request = captureBuilder.build()
            val requests = mutableListOf<CaptureRequest>()
            for (i in 0 until BURST_CAPTURE_BATCH_SIZE) {
                requests.add(request)
            }
            session.captureBurst(requests, object : CameraCaptureSession.CaptureCallback() {
                override fun onCaptureSequenceCompleted(
                    session: CameraCaptureSession,
                    sequenceId: Int,
                    frameNumber: Long
                ) {
                    checkBurstCaptureContinue()
                }
            }, cameraHandler)
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to start hardware burst capture", e)
            _state.value = _state.value.copy(burstCapturing = false, isCapturing = false)
        }
    }

    private fun shouldMirrorStillCaptureToPreview(): Boolean {
        val isLivePhotoCapture = _state.value.useLivePhoto || _state.value.isCapturingLivePhoto
        if (isLivePhotoCapture) {
            PLog.i(
                TAG,
                "Skipping preview target on still capture to avoid Live Photo flash frame and preview flicker"
            )
            return false
        }
        return true
    }

    private fun checkBurstCaptureContinue() {
        if (!state.value.burstCapturing) return
        if (imageReaderMaxImages - openImagesCount.get() < BURST_CAPTURE_BATCH_SIZE) {
            cameraHandler?.postDelayed({
                checkBurstCaptureContinue()
            }, 100)
            return
        }
        startBurstCapture()
    }

    /**
     * 停止连拍
     */
    fun stopBurstCapture() {
        val handler = cameraHandler
        if (handler != null && Looper.myLooper() != handler.looper) {
            handler.post {
                stopBurstCapture()
            }
            return
        }
        PLog.d(TAG, "Stop Burst Capture")
        try {
            captureSession?.abortCaptures()
        } catch (e: CameraAccessException) {
            PLog.w(TAG, "camera inaccessible during burst stop")
        }
        resetPreviewAfterCapture()
        _state.value = _state.value.copy(burstCapturing = false, isCapturing = false)
    }
}
