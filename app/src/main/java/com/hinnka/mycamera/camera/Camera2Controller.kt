package com.hinnka.mycamera.camera

import android.annotation.SuppressLint
import android.content.Context
import android.graphics.ImageFormat
import android.graphics.SurfaceTexture
import android.hardware.camera2.*
import android.hardware.camera2.params.OutputConfiguration
import android.hardware.camera2.params.RggbChannelVector
import android.hardware.camera2.params.SessionConfiguration
import android.media.Image
import android.media.ImageReader
import android.os.Build
import android.os.Handler
import android.os.HandlerThread
import android.view.Surface
import androidx.exifinterface.media.ExifInterface
import com.hinnka.mycamera.raw.RawDemosaicProcessor
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import com.hinnka.mycamera.livephoto.LivePhotoRecorder
import com.hinnka.mycamera.model.SafeImage
import java.util.concurrent.ConcurrentHashMap
import java.util.concurrent.Executors
import java.util.concurrent.atomic.AtomicInteger
import kotlin.math.abs
import kotlin.math.ln
import kotlin.math.pow
import kotlin.math.roundToInt


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

        // 预览时的最大曝光时间（纳秒）：1/15秒 = 66ms
        // 超过这个时间会导致预览帧率过低，画面卡顿
        private const val MAX_PREVIEW_EXPOSURE_TIME = 66_000_000L // 66ms

        // 自定义错误代码
        const val ERROR_CAMERA_DISCONNECTED = 1000

        // 拍照状态机常量
        private const val STATE_PREVIEW = 0 // Showing camera preview.
        private const val STATE_WAITING_PRECAPTURE = 2 // Waiting for the exposure to be precapture state.
        private const val STATE_WAITING_NON_PRECAPTURE =
            3 // Waiting for the exposure state to be something other than precapture.
        private const val STATE_PICTURE_TAKEN = 4 // Picture is already taken.
    }

    private val cameraManager: CameraManager by lazy {
        context.getSystemService(Context.CAMERA_SERVICE) as CameraManager
    }

    private val cameraDiscovery = CameraDiscovery(context)

    // --- 拍照状态机相关 ---
    private var internalCaptureState = STATE_PREVIEW

    // 缓存拍照所需的设备和 Reader，供状态机回调使用
    private var pendingCaptureDevice: CameraDevice? = null
    private var pendingCaptureReader: ImageReader? = null
    // ---------------------

    private var cameraDevice: CameraDevice? = null
    private var captureSession: CameraCaptureSession? = null
    private var previewRequestBuilder: CaptureRequest.Builder? = null

    private var previewSurface: Surface? = null
    private var imageReader: ImageReader? = null

    // 降噪等级 (0=Off, 1=Fast, 2=High Quality, 3=Real-time)
    private var nrLevel = 1

    // 锐化等级 (0=Off, 1=Fast, 2=High Quality, 3=Zero Shutter Lag/Real-time)
    private var edgeLevel = 1

    private var cameraThread: HandlerThread? = null
    private var cameraHandler: Handler? = null

    private var cachedCharacteristics: CameraCharacteristics? = null
    private var cachedSensorOrientation: Int = 0
    private var cachedLensFacing: Int = CameraCharacteristics.LENS_FACING_BACK
    private var cachedHardwareLevel: Int = CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL_LIMITED
    private var isManualSensorSupported = false
    private var isManualPostProcessingSupported = false
    private var isFlashSupported = false
    private var maxAfRegions = 0
    private var maxAeRegions = 0
    private var availableEdgeModes: IntArray = intArrayOf()
    private var availableNoiseReductionModes: IntArray = intArrayOf()
    private var availableTonemapModes: IntArray = intArrayOf()
    private var availableVideoStabilizationModes: IntArray = intArrayOf()
    private var availableOpticalStabilizationModes: IntArray = intArrayOf()
    private var availableLensShadingMapModes: IntArray = intArrayOf()
    private var isRawSupported = false
    private var isP010Supported = false
    private var availableAeModes: IntArray = intArrayOf()
    private var availableAwbModes: IntArray = intArrayOf()

    private val _state = MutableStateFlow(CameraState())
    val state: StateFlow<CameraState> = _state.asStateFlow()

    // Live Photo 录制器
    val livePhotoRecorder = LivePhotoRecorder(context)

    // 缓存 CaptureResult 和 Image 用于配对 (timestamp -> Data)
    private val pendingResults = ConcurrentHashMap<Long, TotalCaptureResult>()
    private val pendingImages = ConcurrentHashMap<Long, SafeImage>()
    private val pendingCloseReaders = mutableListOf<ImageReader>()
    private val openImagesCount = AtomicInteger(0)

    // 保留最近的一个结果作为后备
    @Volatile
    private var lastCaptureResult: TotalCaptureResult? = null

    // 图片拍摄回调（携带 CaptureInfo, CameraCharacteristics 和 CaptureResult 用于 RAW 处理）
    var onImageCaptured: ((SafeImage, CaptureInfo, CameraCharacteristics?, CaptureResult?) -> Unit)? = null

    private fun trackImage(image: Image?): SafeImage? {
        if (image != null) {
            openImagesCount.getAndIncrement()
        }
        return image?.let { SafeImage(it, this) }
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
        if (openImagesCount.decrementAndGet() == 0) {
            _state.value = _state.value.copy(isCapturing = false)
            checkAndClosePendingReaders()
        }
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

            // 处理拍照状态机
            processCaptureState(result)

            // 监听对焦状态
            val afState = result.get(CaptureResult.CONTROL_AF_STATE)
            if (_state.value.isFocusing) {
                when (afState) {
                    CaptureResult.CONTROL_AF_STATE_FOCUSED_LOCKED -> {
                        // 对焦成功并锁定
                        _state.value = _state.value.copy(focusSuccess = true)
                    }

                    CaptureResult.CONTROL_AF_STATE_NOT_FOCUSED_LOCKED -> {
                        // 对焦失败但已锁定
                        _state.value = _state.value.copy(focusSuccess = false)
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

            // 关键修复：只在自动曝光模式下更新 ISO 和快门速度
            // 手动模式下保持用户设置不变（因为预览使用的是限制后的曝光时间，不是用户设置的值）
            _state.value = _state.value.copy(
                iso = if (isAutoExposure) actualIso ?: _state.value.iso else _state.value.iso,
                shutterSpeed = if (isAutoExposure) actualExposureTimeNs
                    ?: _state.value.shutterSpeed else _state.value.shutterSpeed,
                awbMode = awbMode,
                aperture = aperture ?: _state.value.aperture,
            )
        }
    }

    private var lastAeState = 0

    /**
     * 处理拍照状态机的核心逻辑
     */
    private fun processCaptureState(result: CaptureResult) {
        val afState = result.get(CaptureResult.CONTROL_AF_STATE) ?: return
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
        if (device != null && reader != null) {
            performCapture(device, reader)
        }
        // 清理缓存的数据
        pendingCaptureDevice = null
        pendingCaptureReader = null
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
    private fun discoverCameras() {
        val cameras = cameraDiscovery.discoverAllCameras()

        PLog.d(TAG, "Discovered ${cameras.size} cameras:")
        PLog.d(TAG, "发现 ${cameras.size} 个摄像头")
        cameras.forEach { cam ->
            PLog.d(TAG, "  - ${cam.cameraId}: ${cam.lensType}, intrinsicZoom=${cam.intrinsicZoomRatio}")
            PLog.d(TAG, "摄像头: ${cam.cameraId}, 类型: ${cam.lensType}, 变焦: ${cam.intrinsicZoomRatio}")
        }

        // 默认选择主摄
        val defaultCamera = cameras.firstOrNull { it.lensType == LensType.BACK_MAIN }
            ?: cameras.firstOrNull { it.lensFacing == CameraCharacteristics.LENS_FACING_BACK }
            ?: cameras.firstOrNull()

        PLog.i(TAG, "选择默认摄像头: ${defaultCamera?.cameraId}, 类型: ${defaultCamera?.lensType}")

        _state.value = _state.value.copy(
            availableCameras = cameras,
            currentCameraId = defaultCamera?.cameraId ?: "",
            currentLensType = defaultCamera?.lensType ?: LensType.BACK_MAIN
        )
    }

    // ==================== 相机控制 ====================

    /**
     * 打开相机并开始预览
     *
     * @param surfaceTexture SurfaceTexture 用于预览
     */
    @SuppressLint("MissingPermission")
    fun openCamera(surfaceTexture: SurfaceTexture) {
        // 先关闭旧的相机和资源，防止资源泄漏
        closeCamera()

        // 确保在权限已授予后才发现相机（延迟初始化）
        if (_state.value.availableCameras.isEmpty()) {
            PLog.i(TAG, "首次打开相机，开始发现可用摄像头")
            discoverCameras()
        }

        val cameraId = _state.value.currentCameraId
        val aspectRatio = _state.value.aspectRatio
        if (cameraId.isEmpty()) {
            PLog.e(TAG, "No camera ID set")
            return
        }

        PLog.i(TAG, "打开相机: $cameraId, 画面比例: ${aspectRatio.getDisplayName()}")

        val previewSize = CameraUtils.getFixedPreviewSize(context, cameraId, aspectRatio)
        surfaceTexture.setDefaultBufferSize(previewSize.width, previewSize.height)

        try {
            try {
                cachedCharacteristics = cameraManager.getCameraCharacteristics(cameraId)

                // 缓存固定属性（传感器方向、镜头朝向、硬件级别）
                // 这些值在相机生命周期内不会改变，避免在每帧预览中重复获取
                cachedSensorOrientation = cachedCharacteristics?.get(CameraCharacteristics.SENSOR_ORIENTATION) ?: 0
                cachedLensFacing = cachedCharacteristics?.get(CameraCharacteristics.LENS_FACING)
                    ?: CameraCharacteristics.LENS_FACING_BACK
                cachedHardwareLevel = cachedCharacteristics?.get(CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL)
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
                    cachedCharacteristics?.get(CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES) ?: intArrayOf()
                isManualSensorSupported =
                    capabilities.contains(CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES_MANUAL_SENSOR)
                isManualPostProcessingSupported =
                    capabilities.contains(CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES_MANUAL_POST_PROCESSING)
                isFlashSupported = cachedCharacteristics?.get(CameraCharacteristics.FLASH_INFO_AVAILABLE) ?: false
                maxAfRegions = cachedCharacteristics?.get(CameraCharacteristics.CONTROL_MAX_REGIONS_AF) ?: 0
                maxAeRegions = cachedCharacteristics?.get(CameraCharacteristics.CONTROL_MAX_REGIONS_AE) ?: 0
                availableEdgeModes =
                    cachedCharacteristics?.get(CameraCharacteristics.EDGE_AVAILABLE_EDGE_MODES) ?: intArrayOf()
                availableNoiseReductionModes =
                    cachedCharacteristics?.get(CameraCharacteristics.NOISE_REDUCTION_AVAILABLE_NOISE_REDUCTION_MODES)
                        ?: intArrayOf()
                availableTonemapModes =
                    cachedCharacteristics?.get(CameraCharacteristics.TONEMAP_AVAILABLE_TONE_MAP_MODES) ?: intArrayOf()
                availableVideoStabilizationModes =
                    cachedCharacteristics?.get(CameraCharacteristics.CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES)
                        ?: intArrayOf()
                availableOpticalStabilizationModes =
                    cachedCharacteristics?.get(CameraCharacteristics.LENS_INFO_AVAILABLE_OPTICAL_STABILIZATION)
                        ?: intArrayOf()
                availableLensShadingMapModes =
                    cachedCharacteristics?.get(CameraCharacteristics.STATISTICS_INFO_AVAILABLE_LENS_SHADING_MAP_MODES)
                        ?: intArrayOf()
                isRawSupported = capabilities.contains(CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES_RAW)

                availableAeModes =
                    cachedCharacteristics?.get(CameraCharacteristics.CONTROL_AE_AVAILABLE_MODES) ?: intArrayOf()
                availableAwbModes =
                    cachedCharacteristics?.get(CameraCharacteristics.CONTROL_AWB_AVAILABLE_MODES) ?: intArrayOf()

                val outputFormats =
                    cachedCharacteristics?.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP)?.outputFormats
                        ?: intArrayOf()

                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
                    isP010Supported = outputFormats.contains(ImageFormat.YCBCR_P010)
                }

                // 在相机开启后，如果启用了实况照片，启动录制器（因为 closeCamera 刚才停止了它）
                if (_state.value.useLivePhoto) {
                    livePhotoRecorder.startRecording()
                }

                PLog.i(
                    TAG, "Camera characteristics cached - ID: $cameraId, Level: $hardwareLevelName, " +
                            "ManualSensor: $isManualSensorSupported, ManualPost: $isManualPostProcessingSupported, RAW: $isRawSupported, P010: $isP010Supported"
                )

                _state.value = _state.value.copy(
                    isRawSupported = isRawSupported,
                    isP010Supported = isP010Supported,
                    availableNrModes = availableNoiseReductionModes
                )
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to cache camera characteristics", e)
                cachedCharacteristics = null
                cachedSensorOrientation = 0
                cachedLensFacing = CameraCharacteristics.LENS_FACING_BACK
            }

            // 配置 SurfaceTexture
            previewSurface = Surface(surfaceTexture)

//            val characteristics = cameraManager.getCameraCharacteristics(cameraId)
//            HighResolutionHelper.logResolutionCapabilities(characteristics)

            // 创建 ImageReader 用于拍照
            // 开启 RAW 开关且设备支持时，优先使用 RAW 格式（更高质量），否则使用 YUV
            val effectivelyUseRaw = state.value.useRaw && isRawSupported
            val captureSize = if (effectivelyUseRaw) {
                CameraUtils.getRawCaptureSize(context, cameraId) ?: CameraUtils.getBestCaptureSize(
                    context,
                    cameraId,
                    aspectRatio
                )
            } else {
                CameraUtils.getBestCaptureSize(context, cameraId, aspectRatio)
            }
            val captureFormat = if (effectivelyUseRaw && CameraUtils.getRawCaptureSize(context, cameraId) != null) {
                ImageFormat.RAW_SENSOR
            } else if (isP010Supported && Build.VERSION.SDK_INT >= Build.VERSION_CODES.S && state.value.useP010) {
                ImageFormat.YCBCR_P010
            } else {
                ImageFormat.YUV_420_888
            }
            PLog.d(
                TAG,
                "拍照尺寸: ${captureSize.width}x${captureSize.height}, 预览尺寸: ${previewSize.width}x${previewSize.height}, 格式: ${
                    when (captureFormat) {
                        ImageFormat.RAW_SENSOR -> "RAW"
                        ImageFormat.YCBCR_P010 -> "P010"
                        else -> "YUV"
                    }
                }"
            )
            val maxImages = if (state.value.useMultiFrame) state.value.multiFrameCount else 2
            imageReader = ImageReader.newInstance(
                captureSize.width,
                captureSize.height,
                captureFormat,
                maxImages
            ).apply {
                setOnImageAvailableListener({ reader ->
                    try {
                        PLog.d(TAG, "ImageReader onImageAvailableListener triggered")
                        // 关键修复：使用 acquireNextImage() 而不是 acquireLatestImage()
                        if (openImagesCount.get() >= maxImages) {
                            PLog.w(TAG, "Too many open images ($openImagesCount), skipping acquire")
                            return@setOnImageAvailableListener
                        }
                        val image = trackImage(reader.acquireNextImage())
                        if (image != null) {
                            if (state.value.useRaw && isRawSupported) {
                                val timestamp = image.timestamp
                                val pendingResult = pendingResults.remove(timestamp)
                                if (pendingResult != null) {
                                    // 找到了匹配的结果，触发回调
                                    processAndTriggerCapture(image, pendingResult)
                                } else {
                                    // 还没找到结果，存入缓存
                                    pendingImages[timestamp] = image
                                    // 限制缓存大小（防御性，防止内存泄漏）
                                    if (pendingImages.size > 20) {
                                        val oldestKey = pendingImages.keys.minOrNull()
                                        if (oldestKey != null) {
                                            pendingImages.remove(oldestKey)?.close()
                                        }
                                    }
                                }
                            } else {
                                processAndTriggerCapture(image, null)
                            }
                        } else {
                            PLog.w(TAG, "acquireNextImage() returned null, resetting capture state")
                            _state.value = _state.value.copy(isCapturing = false)
                            resetPreviewAfterCapture()
                        }
                    } catch (e: Exception) {
                        PLog.e(TAG, "Error in onImageAvailable", e)
                    }
                }, cameraHandler)
            }

            PLog.d(TAG, "Opening camera: $cameraId")

            cameraManager.openCamera(cameraId, object : CameraDevice.StateCallback() {
                override fun onOpened(camera: CameraDevice) {
                    PLog.d(TAG, "Camera opened: ${camera.id}")
                    cameraDevice = camera
                    createPreviewSession()
                }

                override fun onDisconnected(camera: CameraDevice) {
                    PLog.w(TAG, "Camera disconnected: ${camera.id} - 相机被其他应用或系统接管")
                    camera.close()
                    cameraDevice = null
                    _state.value = _state.value.copy(isPreviewActive = false)

                    // 通知上层：相机断开连接，可以在 onResume 时重试
                    onCameraError?.invoke(
                        ERROR_CAMERA_DISCONNECTED,
                        "相机已被其他应用或系统接管",
                        true  // canRetry = true
                    )
                }

                override fun onError(camera: CameraDevice, error: Int) {
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
                    camera.close()
                    cameraDevice = null
                    _state.value = _state.value.copy(isPreviewActive = false)

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
            PLog.e(TAG, "Failed to open camera", e)
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
            val clampedPreviewTime = currentShutter.coerceAtMost(MAX_PREVIEW_EXPOSURE_TIME)

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
                val range = currentState.getShutterSpeedRange()
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

    /**
     * 创建预览会话
     */
    private fun createPreviewSession() {
        val device = cameraDevice ?: return
        val surface = previewSurface ?: return
        val reader = imageReader ?: return

        try {
            previewRequestBuilder = device.createCaptureRequest(CameraDevice.TEMPLATE_PREVIEW).apply {
                addTarget(surface)
                // 设置连续自动对焦
                val initialAfMode = CaptureRequest.CONTROL_AF_MODE_CONTINUOUS_PICTURE
                set(CaptureRequest.CONTROL_AF_MODE, initialAfMode)
                // 更新 State 中的 AF 模式
                _state.value = _state.value.copy(currentAfMode = initialAfMode)

                // 应用所有相机参数（曝光、白平衡、闪光灯、变焦、色调映射）
                applyBaseCameraSettings(this, isCapture = false)
            }

            val surfaces = mutableListOf(surface, reader.surface)

            // Android 9+ 使用 SessionConfiguration
            val outputConfigs = surfaces.map { OutputConfiguration(it) }
            val sessionConfig = SessionConfiguration(
                SessionConfiguration.SESSION_REGULAR,
                outputConfigs,
                Executors.newSingleThreadExecutor(),
                object : CameraCaptureSession.StateCallback() {
                    override fun onConfigured(session: CameraCaptureSession) {
                        onSessionConfigured(session)
                    }

                    override fun onConfigureFailed(session: CameraCaptureSession) {
                        PLog.e(TAG, "Session configuration failed")
                    }
                }
            )
            device.createCaptureSession(sessionConfig)

        } catch (e: Exception) {
            PLog.e(TAG, "Failed to create preview session", e)
        }
    }

    private fun onSessionConfigured(session: CameraCaptureSession) {
        captureSession = session

        try {
            // 开始预览
            // 关键修复: 不再动态添加 surface，因为已经在创建 builder 时添加了
            previewRequestBuilder?.let { builder ->
                session.setRepeatingRequest(builder.build(), previewCallback, cameraHandler)
            }

            _state.value = _state.value.copy(isPreviewActive = true)
            PLog.d(TAG, "Preview started")

        } catch (e: CameraAccessException) {
            PLog.e(TAG, "Failed to start preview", e)
        } catch (e: IllegalStateException) {
            PLog.e(TAG, "Failed to start preview - illegal state", e)
        } catch (e: IllegalArgumentException) {
            PLog.e(TAG, "Failed to start preview - unconfigured surface", e)
        }
    }

// ==================== 统一参数配置 ====================

    /**
     * 将当前状态中的相机参数应用到 CaptureRequest.Builder
     *
     * 这是确保预览与拍摄参数一致性的核心方法
     *
     * @param builder 需要配置的 Builder
     * @param isCapture 是否为拍摄请求（预览时某些参数有限制）
     */
    private fun applyBaseCameraSettings(builder: CaptureRequest.Builder, isCapture: Boolean = false) {
        val currentState = _state.value

        // 1. 曝光设置
        applyExposureSettings(builder, currentState, isCapture)

        // 2. 白平衡设置
        applyWhiteBalanceSettings(builder, currentState)

        // 3. 闪光灯设置（传递 isCapture 参数）
        applyFlashSettings(builder, currentState, isCapture)

        // 4. 变焦设置
        applyZoomSettings(builder, currentState)

        // 6. 图像质量设置（锐化、降噪）
        applyImageQualitySettings(builder, isCapture)

        // 7. 防抖设置
        applyStabilizationSettings(builder)

        // 8. 统计信息设置
        if (availableLensShadingMapModes.contains(CaptureRequest.STATISTICS_LENS_SHADING_MAP_MODE_ON)) {
            builder.set(CaptureRequest.STATISTICS_LENS_SHADING_MAP_MODE, CaptureRequest.STATISTICS_LENS_SHADING_MAP_MODE_ON)
        }
    }

    /**
     * 应用曝光设置
     *
     * 统一管理 CONTROL_AE_MODE，确保与闪光灯模式正确配合
     */
    private fun applyExposureSettings(builder: CaptureRequest.Builder, state: CameraState, isCapture: Boolean) {
        // 根据曝光模式和闪光灯模式联合决定 AE_MODE
        val aeMode = when {
            // 1. 全自动曝光：根据闪光灯模式选择对应的 AE_MODE
            state.isIsoAuto && state.isShutterSpeedAuto -> {
                when (state.flashMode) {
                    CameraMetadata.FLASH_MODE_SINGLE -> {
                        if (isCapture) CaptureRequest.CONTROL_AE_MODE_ON_ALWAYS_FLASH
                        else CaptureRequest.CONTROL_AE_MODE_ON
                    }

                    CameraMetadata.FLASH_MODE_TORCH -> CaptureRequest.CONTROL_AE_MODE_ON
                    else -> CaptureRequest.CONTROL_AE_MODE_ON
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
                    state.shutterSpeed.coerceAtMost(MAX_PREVIEW_EXPOSURE_TIME)
                }
                builder.set(CaptureRequest.SENSOR_EXPOSURE_TIME, exposureTime)
            }

            // 拍摄时设置低帧率范围以支持长曝光
            if (isCapture) {
                try {
                    val characteristics =
                        cachedCharacteristics ?: cameraManager.getCameraCharacteristics(state.currentCameraId)
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

    /**
     * 应用白平衡设置
     */
    private fun applyWhiteBalanceSettings(builder: CaptureRequest.Builder, state: CameraState) {
        builder.set(CaptureRequest.CONTROL_AWB_MODE, state.awbMode)

        if (state.awbMode == CameraMetadata.CONTROL_AWB_MODE_OFF && supportsManualWhiteBalance()) {
            // 手动白平衡，应用当前色温
            builder.set(CaptureRequest.COLOR_CORRECTION_MODE, CaptureRequest.COLOR_CORRECTION_MODE_TRANSFORM_MATRIX)
            val gains = kelvinToRggbGains(state.awbTemperature)
            builder.set(CaptureRequest.COLOR_CORRECTION_GAINS, gains)
        } else {
            // 自动白平衡：尝试使用高质量色彩校正模式，如不支持则不设置（保持模式默认值）
            if (isManualPostProcessingSupported) {
                builder.set(CaptureRequest.COLOR_CORRECTION_MODE, CaptureRequest.COLOR_CORRECTION_MODE_FAST)
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
        val cameraId = state.currentCameraId
        if (cameraId.isEmpty() || state.zoomRatio <= 1f) return

        try {
            val characteristics = cachedCharacteristics ?: cameraManager.getCameraCharacteristics(cameraId)
            val activeRect = characteristics.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE) ?: return

            val centerX = activeRect.width() / 2
            val centerY = activeRect.height() / 2
            val deltaX = ((activeRect.width() / 2) / state.zoomRatio).toInt()
            val deltaY = ((activeRect.height() / 2) / state.zoomRatio).toInt()

            val cropRect = android.graphics.Rect(
                centerX - deltaX,
                centerY - deltaY,
                centerX + deltaX,
                centerY + deltaY
            )
            builder.set(CaptureRequest.SCALER_CROP_REGION, cropRect)
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to apply zoom settings", e)
        }
    }

    /**
     * 应用防抖设置
     *
     * 优先开启 OIS (光学防抖)
     */
    private fun applyStabilizationSettings(builder: CaptureRequest.Builder) {
        try {
            // 1. 处理 OIS (光学防抖)
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
            val isBurst = _state.value.useMultiFrame
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
            val effectiveNrLevel = if (isBurst && nrLevel == 2) 1 else nrLevel
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

    /**
     * 设置是否使用 RAW 格式拍照
     */
    fun setUseRaw(enabled: Boolean) {
        _state.value = _state.value.copy(useRaw = enabled)
        PLog.d(TAG, "RAW 格式拍照: $enabled")
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
    fun getLastCaptureResult(): android.hardware.camera2.CaptureResult? {
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
            closeCamera()

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
            closeCamera()

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
     * 注意：预览时会限制最大曝光时间为 1/15秒，防止画面卡死
     * 拍摄时会使用完整的用户设置
     */
    fun setShutterSpeed(value: Long) {
        val currentState = _state.value
        val range = currentState.getShutterSpeedRange()
        val clampedValue = value.coerceIn(range.lower, range.upper)

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
        val cameraId = _state.value.currentCameraId
        if (cameraId.isEmpty()) return false

        return try {
            val characteristics = cachedCharacteristics ?: cameraManager.getCameraCharacteristics(cameraId)
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
        val cameraId = _state.value.currentCameraId
        if (cameraId.isEmpty()) return intArrayOf(CameraMetadata.CONTROL_AWB_MODE_AUTO)

        return try {
            val characteristics = cachedCharacteristics ?: cameraManager.getCameraCharacteristics(cameraId)
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
        // 关键修复：检查相机和会话是否仍然有效
        // 避免在相机关闭后的回调中调用 setRepeatingRequest
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
        }
    }

// ==================== 变焦控制 ====================

    /**
     * 设置变焦倍数
     * 注意：Camera2 的变焦通过 SCALER_CROP_REGION 实现
     */
    fun setZoomRatio(ratio: Float) {
        val cameraId = _state.value.currentCameraId
        if (cameraId.isEmpty()) return

        try {
            val characteristics = cachedCharacteristics ?: cameraManager.getCameraCharacteristics(cameraId)
            val maxZoom = characteristics.get(CameraCharacteristics.SCALER_AVAILABLE_MAX_DIGITAL_ZOOM) ?: 1f
            val clampedRatio = ratio.coerceIn(1f, maxZoom)

            _state.value = _state.value.copy(zoomRatio = clampedRatio)

            // 计算裁剪区域
            val activeRect = characteristics.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE) ?: return
            val centerX = activeRect.width() / 2
            val centerY = activeRect.height() / 2
            val deltaX = ((activeRect.width() / 2) / clampedRatio).toInt()
            val deltaY = ((activeRect.height() / 2) / clampedRatio).toInt()

            val cropRect = android.graphics.Rect(
                centerX - deltaX,
                centerY - deltaY,
                centerX + deltaX,
                centerY + deltaY
            )

            previewRequestBuilder?.apply {
                set(CaptureRequest.SCALER_CROP_REGION, cropRect)
                updatePreview()
            }

            PLog.d(TAG, "setZoomRatio: $ratio -> $clampedRatio")

        } catch (e: Exception) {
            PLog.e(TAG, "Failed to set zoom", e)
        }
    }

// ==================== 对焦控制 ====================

    /**
     * 点击对焦
     */
    fun focusOnPoint(x: Float, y: Float, viewWidth: Int, viewHeight: Int) {
        val cameraId = _state.value.currentCameraId
        if (cameraId.isEmpty()) return

        try {
            val characteristics = cachedCharacteristics ?: cameraManager.getCameraCharacteristics(cameraId)
            val activeRect = characteristics.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE) ?: return
            val sensorOrientation = getSensorOrientation()
            val lensFacing = getLensFacing()

            // 计算归一化坐标（0-1）
            val normX = x / viewWidth
            val normY = y / viewHeight

            // 存储UI坐标用于显示对焦框
            _state.value = _state.value.copy(
                focusPoint = Pair(normX, normY),
                isFocusing = true,
                focusSuccess = null
            )

            // 根据传感器方向转换坐标
            // 传感器坐标系与UI坐标系可能不同，需要旋转
            val (sensorX, sensorY) = when (sensorOrientation) {
                0 -> Pair(normX, normY)
                90 -> Pair(normY, 1 - normX)  // 顺时针90度
                180 -> Pair(1 - normX, 1 - normY)  // 180度
                270 -> Pair(1 - normY, normX)  // 顺时针270度
                else -> Pair(normX, normY)
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
            val focusSize = (activeRect.width() * 0.1f).toInt()  // 对焦区域大小为传感器宽度的10%

            val focusRect = android.graphics.Rect(
                (focusX - focusSize).coerceAtLeast(0),
                (focusY - focusSize).coerceAtLeast(0),
                (focusX + focusSize).coerceAtMost(activeRect.width()),
                (focusY + focusSize).coerceAtMost(activeRect.height())
            )

            val meteringRectangle = android.hardware.camera2.params.MeteringRectangle(
                focusRect,
                android.hardware.camera2.params.MeteringRectangle.METERING_WEIGHT_MAX
            )

            PLog.d(TAG, "Focus: UI($normX, $normY) -> Sensor($finalX, $finalY) -> Rect($focusX, $focusY)")

            previewRequestBuilder?.apply {
                if (maxAfRegions > 0) {
                    set(CaptureRequest.CONTROL_AF_REGIONS, arrayOf(meteringRectangle))
                }
                if (maxAeRegions > 0) {
                    set(CaptureRequest.CONTROL_AE_REGIONS, arrayOf(meteringRectangle))
                }
                val afMode = CaptureRequest.CONTROL_AF_MODE_AUTO
                set(CaptureRequest.CONTROL_AF_MODE, afMode)
                set(CaptureRequest.CONTROL_AF_TRIGGER, CaptureRequest.CONTROL_AF_TRIGGER_START)
                _state.value = _state.value.copy(currentAfMode = afMode)
                updatePreview()
            }

            // 延迟恢复连续对焦
            cameraHandler?.postDelayed({
                previewRequestBuilder?.apply {
                    set(CaptureRequest.CONTROL_AF_TRIGGER, CaptureRequest.CONTROL_AF_TRIGGER_IDLE)
                    val afMode = CaptureRequest.CONTROL_AF_MODE_CONTINUOUS_PICTURE
                    set(CaptureRequest.CONTROL_AF_MODE, afMode)
                    _state.value = _state.value.copy(currentAfMode = afMode)
                    updatePreview()
                }
                _state.value = _state.value.copy(isFocusing = false, focusSuccess = null)
            }, 3000)

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
        val cameraId = _state.value.currentCameraId
        if (cameraId.isEmpty()) return
        _state.value = _state.value.copy(aspectRatio = ratio)
    }

    /**
     * 设置 LUT 启用状态
     *
     * 当 LUT 启用状态改变时，需要更新相机参数（特别是色调映射设置）
     */
    fun setLutEnabled(enabled: Boolean) {
        _state.value = _state.value.copy(lutEnabled = enabled)

        // LUT 启用状态改变时，需要重新应用相机设置
        // 因为色调映射设置依赖于 LUT 是否启用
        previewRequestBuilder?.apply {
            applyBaseCameraSettings(this, isCapture = false)
            updatePreview()
        }
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

    fun setUseMultiFrame(useMultiFrame: Boolean, multiFrameCount: Int) {
        _state.value = _state.value.copy(useMultiFrame = useMultiFrame, multiFrameCount = multiFrameCount)
    }

    fun setUseSuperResolution(useSuperResolution: Boolean) {
        _state.value = _state.value.copy(useSuperResolution = useSuperResolution)
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
        val device = cameraDevice ?: return
        val reader = imageReader ?: return

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

                PLog.d(TAG, "启动状态机拍照流程")
                runPrecaptureSequence()
            } else {
                // 其他情况（手动曝光、手电筒模式、不使用闪光灯）：直接拍照
                PLog.d(TAG, "直接拍照")
                performCapture(device, reader)
            }

        } catch (e: Exception) {
            PLog.e(TAG, "Failed to capture", e)
            PLog.e(TAG, "拍照失败", e)
            _state.value = _state.value.copy(isCapturing = false)
        }
    }

    /**
     * 执行实际的拍照操作
     */
    private fun performCapture(device: CameraDevice, reader: ImageReader) {
        try {
            val captureBuilder = device.createCaptureRequest(CameraDevice.TEMPLATE_STILL_CAPTURE).apply {
                addTarget(reader.surface)

                previewSurface?.let { addTarget(it) }

                // 应用所有相机参数（曝光、白平衡、闪光灯、变焦、色调映射）
                // isCapture = true 确保使用完整的曝光时间（不限制长曝光）
                applyBaseCameraSettings(this, isCapture = true)

                // 强制将此请求的触发器设为 IDLE，防止携带预览中的触发状态
                set(CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER, CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER_IDLE)

                // 从预览请求复制对焦相关设置
                previewRequestBuilder?.let { preview ->
                    preview.get(CaptureRequest.CONTROL_AF_MODE)?.let {
                        set(CaptureRequest.CONTROL_AF_MODE, it)
                    }
                    preview.get(CaptureRequest.CONTROL_AF_REGIONS)?.let {
                        set(CaptureRequest.CONTROL_AF_REGIONS, it)
                    }
                    preview.get(CaptureRequest.CONTROL_AE_REGIONS)?.let {
                        set(CaptureRequest.CONTROL_AE_REGIONS, it)
                    }
                }

                applyUltraHDR(this)

                PLog.d(
                    TAG,
                    "Capture request built and ready to send. ISO: ${_state.value.iso}, shutter: ${_state.value.shutterSpeed}, AE: ${_state.value.isAutoExposure}"
                )
            }

            if (state.value.useMultiFrame) {
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
                        PLog.d(TAG, "Burst capture started at frame $frameNumber")
                    }

                    override fun onCaptureCompleted(
                        session: CameraCaptureSession,
                        request: CaptureRequest,
                        result: TotalCaptureResult
                    ) {
                        val timestamp = result.get(CaptureResult.SENSOR_TIMESTAMP)
                        if (timestamp != null && state.value.useRaw && isRawSupported) {
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
                        PLog.d(TAG, "Capture started at frame $frameNumber")
                    }

                    override fun onCaptureCompleted(
                        session: CameraCaptureSession,
                        request: CaptureRequest,
                        result: TotalCaptureResult
                    ) {
                        val timestamp = result.get(CaptureResult.SENSOR_TIMESTAMP)
                        if (timestamp != null && state.value.useRaw && isRawSupported) {
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

    // RAW + MultiFrame 曝光控制策略（手动曝光自适应版本）
    // 原理：多帧堆叠提升 SNR √N 倍，理论上可缩减 0.5*log2(N) EV 的曝光来换取高光余量。
    fun applyUltraHDR(builder: CaptureRequest.Builder) {
        if (!_state.value.applyUltraHDR) return
        if (!_state.value.useRaw) return
        if (!_state.value.useMultiFrame) return
        if (!_state.value.isIsoAuto) return
        if (!_state.value.isShutterSpeedAuto) return
        if (!isManualSensorSupported) return
        val characteristics = cachedCharacteristics ?: return
        try {
            // 计算光照等级 (LV)
            val aperture = _state.value.aperture.toDouble()
            val shutterSpeed = _state.value.shutterSpeed.toDouble() / 1_000_000_000.0
            val iso = _state.value.iso.toDouble()
            val ev = ln(aperture * aperture / shutterSpeed) / ln(2.0)
            val lv = ev - ln(iso / 100.0) / ln(2.0)

            // 只有在光照等级足够时才触发 Ultra HDR 曝光压制策略
            // 阈值设为 7.0 (办公室内典型照明)，低于此数值通常认为是暗光，不应压低曝光以保护信噪比。
            if (lv < 7.0) {
                PLog.d(TAG, "applyUltraHDR: Light level too low (LV=${String.format("%.2f", lv)}), skip HDR reduction")
                return
            }

            val count = _state.value.multiFrameCount.toDouble()
            // 理论最大降幅: 0.5 * log2(N)
            val maxReductionEv = ln(count.pow(0.5)) / ln(2.0)

            // 基于当前预览直方图的亮点（满井像素）比例，动态决定要压多少曝光（scaleFactor）来保护高光
            // 亮点越多，压得越狠；如果不满井，则不压曝光，保持原始亮度以保护暗部。
            val histogram = _state.value.histogram ?: intArrayOf()
            val scaleFactor = if (histogram.size >= 256) {
                val totalPixels = histogram.sum().toDouble().coerceAtLeast(1.0)
                // 满井像素在直方图最后一格 (255)
                val saturatedPixels = histogram[255].toDouble()
                val saturatedRatio = saturatedPixels / totalPixels

                // 定义自适应阈值：
                // - 当满井比例 ≤ 0.2% (lowRatio): 认为是琐碎亮点或可接受裁切，不压曝光 (scaleFactor = 0.0)
                // - 当满井比例 ≥ 2.0% (highRatio): 认为存在大面积高光过曝，全力压低曝光 (scaleFactor = 1.0)
                // - 中间区域：线性过渡
                val lowRatio = 0.002
                val highRatio = 0.02
                if (saturatedRatio <= lowRatio) 0.0
                else if (saturatedRatio >= highRatio) 1.0
                else (saturatedRatio - lowRatio) / (highRatio - lowRatio)
            } else {
                // 直方图数据缺失时，默认不进行额外的降曝光压制
                0.0
            }

            val currentIso = _state.value.iso
            val currentShutter = _state.value.shutterSpeed

            val actualReductionEv = maxReductionEv * scaleFactor
            val reductionFactor = 2.0.pow(actualReductionEv)

            // 优先调整快门以避免感光度不足（低 ISO）在暗部产生的噪点碎片或色差。
            // 在 RAW 流程中，较高的 ISO（在合理范围内）往往比过低的 ISO 配合后期提亮有更好的底噪表现。
            var targetShutter = (currentShutter / reductionFactor).toLong()
            var targetIso = currentIso

            // 约束调整：如果快门已经达到硬件极限，则补偿 ISO
            val shutterRange = characteristics.get(CameraCharacteristics.SENSOR_INFO_EXPOSURE_TIME_RANGE)
            val isoRange = characteristics.get(CameraCharacteristics.SENSOR_INFO_SENSITIVITY_RANGE)

            if (shutterRange != null && isoRange != null) {
                if (targetShutter < shutterRange.lower) {
                    val remainingFactor = shutterRange.lower.toDouble() / targetShutter.toDouble()
                    targetShutter = shutterRange.lower
                    targetIso = (targetIso / remainingFactor).toInt().coerceIn(isoRange.lower, isoRange.upper)
                }
            }

            // 应用手动曝光设置，覆盖 applyBaseCameraSettings
            builder.set(CaptureRequest.CONTROL_AE_MODE, CaptureRequest.CONTROL_AE_MODE_OFF)
            builder.set(CaptureRequest.SENSOR_SENSITIVITY, targetIso)
            builder.set(CaptureRequest.SENSOR_EXPOSURE_TIME, targetShutter)

            PLog.d(
                TAG, "RAW MultiFrame Histogram-Adaptive Manual Capture (LV=${String.format("%.2f", lv)}): " +
                        "saturated=${String.format("%.2f", (histogram.getOrElse(255) { 0 }.toDouble() / histogram.sum().toDouble().coerceAtLeast(1.0)) * 100)}%, " +
                        "scale=${String.format("%.2f", scaleFactor)}, " +
                        "target: ISO=$targetIso (from $currentIso), " +
                        "Shutter=${String.format("%.2f", targetShutter / 1_000_000.0)}ms (from ${String.format("%.2f", currentShutter / 1_000_000.0)}ms), " +
                        "reduction=${String.format("%.2f", actualReductionEv)}EV"
            )
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to apply adaptive manual exposure", e)
        }
    }


    /**
     * 构建 CaptureInfo
     *
     * 从 TotalCaptureResult 和 CameraCharacteristics 提取拍摄信息
     */
    fun rebuildCaptureInfo(
        result: TotalCaptureResult?,
        imageWidth: Int,
        imageHeight: Int
    ): CaptureInfo {
        val cameraId = _state.value.currentCameraId
        val zoomRatio = _state.value.zoomRatio

        // 从 CameraCharacteristics 获取镜头固定信息
        var aperture: Float? = null
        var focalLength: Float? = null
        var focalLength35mm: Int? = null

        try {
            val characteristics = cachedCharacteristics ?: cameraManager.getCameraCharacteristics(cameraId)

            // 光圈值（取第一个可用光圈）
            val apertures = characteristics.get(CameraCharacteristics.LENS_INFO_AVAILABLE_APERTURES)
            aperture = apertures?.firstOrNull()

            // 焦距（取第一个可用焦距）
            val focalLengths = characteristics.get(CameraCharacteristics.LENS_INFO_AVAILABLE_FOCAL_LENGTHS)
            focalLengths?.firstOrNull()?.let {
                focalLength = it * zoomRatio
                // 计算等效35mm焦距
                focalLength35mm = calculate35mmEquivalent(characteristics, it)?.times(zoomRatio)?.roundToInt()
            }

        } catch (e: Exception) {
            PLog.e(TAG, "Failed to get camera characteristics for EXIF", e)
        }

        // 从 TotalCaptureResult 获取曝光信息
        val exposureTime = result?.get(CaptureResult.SENSOR_EXPOSURE_TIME) ?: _state.value.shutterSpeed
        val iso = result?.get(CaptureResult.SENSOR_SENSITIVITY) ?: _state.value.iso
        val whiteBalance = result?.get(CaptureResult.CONTROL_AWB_MODE) ?: _state.value.awbTemperature
        val flashState = result?.get(CaptureResult.FLASH_STATE) ?: _state.value.flashMode

        // 如果有实时的光圈/焦距，使用实时值
        result?.get(CaptureResult.LENS_APERTURE)?.let { aperture = it }
        result?.get(CaptureResult.LENS_FOCAL_LENGTH)?.let {
            focalLength = it * zoomRatio
            // 重新计算35mm等效焦距
            try {
                val characteristics = cachedCharacteristics ?: cameraManager.getCameraCharacteristics(cameraId)
                focalLength35mm = calculate35mmEquivalent(characteristics, it)?.times(zoomRatio)?.roundToInt()
            } catch (e: Exception) {
                // 忽略
            }
        }

        return CaptureInfo(
            exposureTime = exposureTime,
            iso = iso,
            aperture = aperture,
            focalLength = focalLength,
            focalLength35mm = focalLength35mm,
            whiteBalance = whiteBalance,
            flashState = flashState,
            // 传给下游的方向永远是 NORMAL (1)
            orientation = ExifInterface.ORIENTATION_NORMAL,
            imageWidth = imageWidth,
            imageHeight = imageHeight,
            captureTime = System.currentTimeMillis(),
        )
    }

    /**
     * 计算等效35mm焦距
     *
     * 基于传感器尺寸计算裁切系数
     */
    private fun calculate35mmEquivalent(
        characteristics: CameraCharacteristics,
        focalLength: Float
    ): Int? {
        return try {
            val sensorSize = characteristics.get(CameraCharacteristics.SENSOR_INFO_PHYSICAL_SIZE)
            if (sensorSize != null) {
                // 35mm 全画幅传感器宽度为 36mm
                val cropFactor = 36f / sensorSize.width
                (focalLength * cropFactor).toInt()
            } else {
                null
            }
        } catch (e: Exception) {
            null
        }
    }

// ==================== 生命周期 ====================

    /**
     * 关闭相机
     */
    fun closeCamera() {
        try {
            captureSession?.close()
            captureSession = null

            cameraDevice?.close()
            cameraDevice = null

            safeCloseImageReader(imageReader)
            imageReader = null

            previewSurface = null
            previewRequestBuilder = null

            //清理所有缓存的相机特性和属性
            cachedCharacteristics = null
            cachedSensorOrientation = 0
            cachedLensFacing = CameraCharacteristics.LENS_FACING_BACK
            cachedHardwareLevel = CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL_LIMITED

            _state.value = _state.value.copy(isPreviewActive = false)

            // 停止 Live Photo 录制，释放旧环境下的 EGL 资源
            livePhotoRecorder.stopRecording()

            PLog.d(TAG, "Camera closed")
        } catch (e: Exception) {
            PLog.e(TAG, "Error closing camera", e)
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
            PLog.d(TAG, "Matching Image and CaptureResult found for timestamp ${image.timestamp}")

            // 构建 CaptureInfo
            val captureInfo = rebuildCaptureInfo(result, width, height)

            // 传递完整的 Image 对象、CaptureInfo、CameraCharacteristics 和 CaptureResult
            val callback = onImageCaptured
            if (callback != null) {
                callback.invoke(image, captureInfo, cachedCharacteristics, result)
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
        closeCamera()
        stopBackgroundThread()
        cameraDiscovery.clearCache()
    }

    /**
     * 设置是否启用 Live Photo
     */
    fun setUseLivePhoto(enabled: Boolean) {
        _state.value = _state.value.copy(useLivePhoto = enabled)
        if (enabled) {
            livePhotoRecorder.startRecording()
        } else {
            livePhotoRecorder.stopRecording()
        }
    }

    fun setUseP010(enabled: Boolean) {
        _state.value = _state.value.copy(useP010 = enabled)
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
}
