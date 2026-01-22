package com.hinnka.mycamera.camera

import android.annotation.SuppressLint
import android.content.Context
import android.graphics.Bitmap
import android.graphics.ImageFormat
import android.graphics.SurfaceTexture
import android.hardware.camera2.*
import android.hardware.camera2.params.OutputConfiguration
import android.hardware.camera2.params.RggbChannelVector
import android.hardware.camera2.params.SessionConfiguration
import android.media.Image
import android.media.ImageReader
import android.os.Handler
import android.os.HandlerThread
import android.view.Surface
import androidx.exifinterface.media.ExifInterface
import com.hinnka.mycamera.utils.OrientationObserver
import com.hinnka.mycamera.utils.PLog
import com.hinnka.mycamera.utils.YuvProcessor
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import java.util.concurrent.ConcurrentHashMap
import java.util.concurrent.Executors
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
        private const val STATE_WAITING_LOCK = 1 // Waiting for the focus to be locked.
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
    private var previewImageReader: ImageReader? = null

    private var meteringSkipFrames = 0 // Frame skip counter for software metering stabilization

    // 降噪等级 (0=Off, 1=Fast, 2=High Quality, 3=Real-time)
    private var nrLevel = 1

    // 锐化等级 (0=Off, 1=Fast, 2=High Quality, 3=Zero Shutter Lag/Real-time)
    private var edgeLevel = 1
    private var useRaw = false

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
    var isRawSupported = false

    private val _state = MutableStateFlow(CameraState())
    val state: StateFlow<CameraState> = _state.asStateFlow()

    // 缓存 CaptureResult 和 Image 用于配对 (timestamp -> Data)
    private val pendingResults = ConcurrentHashMap<Long, TotalCaptureResult>()
    private val pendingImages = ConcurrentHashMap<Long, Image>()

    // 保留最近的一个结果作为后备
    @Volatile
    private var lastCaptureResult: TotalCaptureResult? = null

    // 图片拍摄回调（携带 CaptureInfo, CameraCharacteristics 和 CaptureResult 用于 RAW 处理）
    var onImageCaptured: ((Image, Bitmap?, CaptureInfo, CameraCharacteristics?, CaptureResult) -> Unit)? = null

    // 快门音效播放回调
    var onPlayShutterSound: (() -> Unit)? = null

    // 预览帧捕获回调（用于 LUT 预览生成）
    var onPreviewFrameCaptured: ((Bitmap) -> Unit)? = null
    private var shouldCapturePreviewFrame = false

    var rawPreviewFrame: Bitmap? = null

    // 相机错误回调（供上层处理错误恢复）
    // errorCode: CameraDevice 的错误代码或自定义错误码
    // canRetry: 是否可以重试打开相机
    var onCameraError: ((errorCode: Int, message: String, canRetry: Boolean) -> Unit)? = null

    private val previewCallback = object : CameraCaptureSession.CaptureCallback() {
        override fun onCaptureCompleted(
            session: CameraCaptureSession,
            request: CaptureRequest,
            result: TotalCaptureResult
        ) {
            super.onCaptureCompleted(session, request, result)

            val timestamp = result.get(CaptureResult.SENSOR_TIMESTAMP)
            if (timestamp != null) {
                val pendingImage = pendingImages.remove(timestamp)
                if (pendingImage != null) {
                    // 找到了匹配的图像，触发回调
                    processAndTriggerCapture(pendingImage, rawPreviewFrame, result)
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

    /**
     * 处理拍照状态机的核心逻辑
     */
    private fun processCaptureState(result: CaptureResult) {
        when (internalCaptureState) {
            STATE_PREVIEW -> {
                // 正常预览状态，不做处理
            }

            STATE_WAITING_LOCK -> {
                // 如果需要 AF 锁定，在这里处理
                val afState = result.get(CaptureResult.CONTROL_AF_STATE)
                if (afState == null) {
                    runCaptureSequence()
                } else if (CaptureResult.CONTROL_AF_STATE_FOCUSED_LOCKED == afState ||
                    CaptureResult.CONTROL_AF_STATE_NOT_FOCUSED_LOCKED == afState
                ) {
                    // AE 状态检查
                    val aeState = result.get(CaptureResult.CONTROL_AE_STATE)
                    if (aeState == null || aeState == CaptureResult.CONTROL_AE_STATE_CONVERGED) {
                        internalCaptureState = STATE_PICTURE_TAKEN
                        runCaptureSequence()
                    } else {
                        runPrecaptureSequence()
                    }
                }
            }

            STATE_WAITING_PRECAPTURE -> {
                // 等待 AE 预取（预闪）完成
                val aeState = result.get(CaptureResult.CONTROL_AE_STATE)
                if (aeState == null ||
                    aeState == CaptureResult.CONTROL_AE_STATE_PRECAPTURE ||
                    aeState == CaptureResult.CONTROL_AE_STATE_FLASH_REQUIRED ||
                    aeState == CaptureResult.CONTROL_AE_STATE_CONVERGED
                ) {
                    internalCaptureState = STATE_WAITING_NON_PRECAPTURE
                }
            }

            STATE_WAITING_NON_PRECAPTURE -> {
                // 等待 AE 退出预取状态
                val aeState = result.get(CaptureResult.CONTROL_AE_STATE)
                if (aeState == null || aeState != CaptureResult.CONTROL_AE_STATE_PRECAPTURE) {
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
                builder.set(
                    CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER,
                    CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER_START
                )
                internalCaptureState = STATE_WAITING_PRECAPTURE
                captureSession?.capture(builder.build(), null, cameraHandler)
                // 设置回 IDLE，避免重复触发
                builder.set(
                    CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER,
                    CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER_IDLE
                )
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
                isRawSupported = capabilities.contains(CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES_RAW)

                PLog.i(
                    TAG, "Camera characteristics cached - ID: $cameraId, Level: $hardwareLevelName, " +
                            "ManualSensor: $isManualSensorSupported, ManualPost: $isManualPostProcessingSupported, RAW: $isRawSupported"
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
            val effectivelyUseRaw = useRaw && isRawSupported
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
            } else {
                ImageFormat.YUV_420_888
            }
            PLog.d(
                TAG,
                "拍照尺寸: ${captureSize.width}x${captureSize.height}, 预览尺寸: ${previewSize.width}x${previewSize.height}, 格式: ${if (captureFormat == ImageFormat.RAW_SENSOR) "RAW" else "YUV"}"
            )
            imageReader = ImageReader.newInstance(
                captureSize.width,
                captureSize.height,
                captureFormat,
                2
            ).apply {
                setOnImageAvailableListener({ reader ->
                    try {
                        PLog.d(TAG, "ImageReader onImageAvailableListener triggered")
                        // 关键修复：使用 acquireNextImage() 而不是 acquireLatestImage()
                        val image = reader.acquireNextImage()
                        if (image != null) {
                            val timestamp = image.timestamp
                            val pendingResult = pendingResults.remove(timestamp)

                            if (pendingResult != null) {
                                // 找到了匹配的结果，触发回调
                                processAndTriggerCapture(image, rawPreviewFrame, pendingResult)
                            } else {
                                // 还没找到结果，存入缓存
                                pendingImages[timestamp] = image
                                // 限制缓存大小（防御性，防止内存泄漏）
                                if (pendingImages.size > 5) {
                                    val oldestKey = pendingImages.keys.minOrNull()
                                    if (oldestKey != null) {
                                        pendingImages.remove(oldestKey)?.close()
                                    }
                                }
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

            // 创建用于直方图计算/半自动测光/低分辨率预览的 ImageReader (低分辨率 YUV)
            previewImageReader = ImageReader.newInstance(320, 240, ImageFormat.YUV_420_888, 2).apply {
                setOnImageAvailableListener({ reader ->
                    val image = reader.acquireLatestImage() ?: return@setOnImageAvailableListener
                    try {
                        val planes = image.planes
                        val buffer = planes[0].buffer // Y plane
                        val pixelStride = planes[0].pixelStride
                        val rowStride = planes[0].rowStride
                        val width = image.width
                        val height = image.height

                        val histogram = IntArray(256)
                        val rowBuffer = ByteArray(rowStride)

                        var weightedSumLuminance = 0.0
                        var totalWeight = 0.0

                        // Default center (image center)
                        var cx = width / 2
                        var cy = height / 2

                        _state.value.focusPoint?.let { (nx, ny) ->
                            val sensorOrientation = getSensorOrientation()
                            val deviceRotation = OrientationObserver.rotationDegrees.toInt()
                            val lensFacing = getLensFacing()

                            // 修正旋转角度计算
                            val rotation = if (lensFacing == CameraCharacteristics.LENS_FACING_FRONT) {
                                (sensorOrientation + deviceRotation) % 360
                            } else {
                                (sensorOrientation - deviceRotation + 360) % 360
                            }

                            // 坐标映射 (UI 坐标 -> Buffer 坐标)
                            // 注意：这里假设 nx, ny 已经处理了 Aspect Ratio (Crop) 问题。
                            // 如果 nx, ny 是纯 View 坐标，这里其实需要一个 Matrix 变换来抵消 CenterCrop 的影响。
                            var (tx, ty) = when (rotation) {
                                90 -> Pair(ny, 1f - nx)      // 常见：竖屏后摄
                                270 -> Pair(1f - ny, nx)     // 常见：反向横屏
                                180 -> Pair(1f - nx, 1f - ny)
                                else -> Pair(nx, ny)         // 0 度
                            }

                            // 修正前置摄像头的镜像问题 (通常 X 轴需要翻转)
                            if (lensFacing == CameraCharacteristics.LENS_FACING_FRONT) {
                                // 根据传感器安装方向，镜像轴可能不同，通常是 X 轴镜像
                                tx = 1f - tx
                            }

                            cx = (tx * width).toInt().coerceIn(0, width - 1)
                            cy = (ty * height).toInt().coerceIn(0, height - 1)
                        }

                        // --- 2. 准备高性能测光循环 ---

                        // 测光区域大小：画面的 1/4 宽，1/4 高 (即面积是全图的 1/16)
                        // 如果是点测光，可以把这个除数改大，比如 / 8
                        val regionHalfWidth = width / 8
                        val regionHalfHeight = height / 8

                        // 计算区域边界 (Safe clamping)
                        val startX = (cx - regionHalfWidth).coerceIn(0, width)
                        val endX = (cx + regionHalfWidth).coerceIn(0, width)
                        val startY = (cy - regionHalfHeight).coerceIn(0, height)
                        val endY = (cy + regionHalfHeight).coerceIn(0, height)

                        val sampleStep = 4

                        val weightCenter = 4.0 // 中心区域权重 (加重)
                        val weightEdge = 1.0   // 边缘区域权重

                        // --- 3. 执行极速测光循环 (拆分优化版) ---
                        for (y in 0 until height step sampleStep) {
                            buffer.position(y * rowStride)
                            buffer.get(rowBuffer, 0, rowStride)

                            // 判断当前行 y 是否命中高亮区域的 Y 轴范围
                            val isRowInFocus = y in startY until endY

                            if (isRowInFocus) {
                                // --- A. 这一行包含“高亮区域” ---
                                // 我们把这一行拆成三段处理：左边(普通)、中间(高亮)、右边(普通)
                                // 这样循环内部就没有任何 if 判断了，CPU 分支预测效率最高

                                // 1. 左边 (Edge)
                                // 确保循环边界对齐 sampleStep，防止越界
                                val safeStartX = (startX / sampleStep) * sampleStep
                                for (x in 0 until safeStartX step sampleStep) {
                                    val value = rowBuffer[x * pixelStride].toInt() and 0xFF
                                    weightedSumLuminance += value * weightEdge
                                    totalWeight += weightEdge
                                    histogram[value]++
                                }

                                // 2. 中间 (Center/Focus) - 重点测光区
                                val safeEndX = (endX / sampleStep) * sampleStep
                                for (x in safeStartX until safeEndX step sampleStep) {
                                    val value = rowBuffer[x * pixelStride].toInt() and 0xFF
                                    weightedSumLuminance += value * weightCenter
                                    totalWeight += weightCenter
                                    histogram[value]++
                                }

                                // 3. 右边 (Edge)
                                for (x in safeEndX until width step sampleStep) {
                                    val value = rowBuffer[x * pixelStride].toInt() and 0xFF
                                    weightedSumLuminance += value * weightEdge
                                    totalWeight += weightEdge
                                    histogram[value]++
                                }

                            } else {
                                // --- B. 这一行完全是普通区域 ---
                                for (x in 0 until width step sampleStep) {
                                    val value = rowBuffer[x * pixelStride].toInt() and 0xFF
                                    weightedSumLuminance += value * weightEdge
                                    totalWeight += weightEdge
                                    histogram[value]++
                                }
                            }
                        }

//                        PLog.d(TAG, "avgLum: ${weightedSumLuminance / totalWeight}")

                        // Calculate Software Auto Metering
                        calculateAutoMetering(totalWeight, weightedSumLuminance)

                        _state.value = _state.value.copy(histogram = histogram)

                        if (shouldCapturePreviewFrame) {
                            shouldCapturePreviewFrame = false

                            // 计算旋转角度
                            val sensorOrientation = getSensorOrientation()
                            val lensFacing = getLensFacing()
                            val deviceRotation = OrientationObserver.rotationDegrees.toInt()

                            val rotation = if (lensFacing == CameraCharacteristics.LENS_FACING_FRONT) {
                                (sensorOrientation - deviceRotation + 360) % 360
                            } else {
                                (sensorOrientation + deviceRotation) % 360
                            }

                            val bitmap = YuvProcessor.processAndToBitmap(image, AspectRatio.RATIO_1_1, rotation)
                            rawPreviewFrame = bitmap
                            onPreviewFrameCaptured?.invoke(bitmap)
                            return@setOnImageAvailableListener
                        }
                    } catch (e: Exception) {
                        PLog.e(TAG, "Failed to calculate histogram", e)
                    } finally {
                        image.close()
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
                }
            }, cameraHandler)

        } catch (e: CameraAccessException) {
            PLog.e(TAG, "Failed to open camera", e)
        } catch (e: SecurityException) {
            PLog.e(TAG, "Camera permission denied", e)
        }
    }

    private fun calculateAutoMetering(totalWeight: Double, weightedSumLuminance: Double) {
        if (meteringSkipFrames > 0) {
            meteringSkipFrames--
            return
        }
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
                    meteringSkipFrames = 5
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
            // 使用 TEMPLATE_PREVIEW 进行预览
            // 为解决用户反馈的预览卡顿和 AE 失效问题，我们从 TEMPLATE_STILL_CAPTURE 切换回 TEMPLATE_PREVIEW
            // 虽然 TEMPLATE_STILL_CAPTURE 优先画画质，但在设备兼容性和预览流畅度上存在问题
            previewRequestBuilder = device.createCaptureRequest(CameraDevice.TEMPLATE_PREVIEW).apply {
                addTarget(surface)
                // 关键修复: 在创建 builder 时就添加 previewImageReader 的 surface
                // 而不是在 onSessionConfigured 中动态添加
                previewImageReader?.surface?.let { addTarget(it) }

                // 优化预览 AE：允许 15-30fps 的帧率范围
                // 这允许在低光线下快门时间最长可达 1/15s (66ms)，从而在保持预览流畅的同时获得接近拍照的画质
                try {
                    val characteristics = cachedCharacteristics ?: cameraManager.getCameraCharacteristics(device.id)
                    val availableFpsRanges =
                        characteristics.get(CameraCharacteristics.CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES)
                    // 寻找包含 30fps 且下限尽可能低的范围（如 [15, 30] 或 [10, 30]）
                    val targetFpsRange = availableFpsRanges?.find { it.upper >= 30 && it.lower <= 15 }
                        ?: availableFpsRanges?.find { it.upper >= 30 }

                    targetFpsRange?.let {
                        set(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE, it)
                        PLog.d(TAG, "Set preview AE target FPS range: $it")
                    }
                } catch (e: Exception) {
                    PLog.e(TAG, "Failed to set preview FPS range", e)
                }

                // 设置连续自动对焦
                set(CaptureRequest.CONTROL_AF_MODE, CaptureRequest.CONTROL_AF_MODE_CONTINUOUS_PICTURE)

                // 应用所有相机参数（曝光、白平衡、闪光灯、变焦、色调映射）
                applyBaseCameraSettings(this, isCapture = false)
            }

            val surfaces = mutableListOf(surface, reader.surface)
            previewImageReader?.surface?.let { surfaces.add(it) }

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

        } catch (e: CameraAccessException) {
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
        builder.set(CaptureRequest.STATISTICS_LENS_SHADING_MAP_MODE, CaptureRequest.STATISTICS_LENS_SHADING_MAP_MODE_ON)
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
                    CameraMetadata.FLASH_MODE_SINGLE -> CaptureRequest.CONTROL_AE_MODE_ON_ALWAYS_FLASH
                    CameraMetadata.FLASH_MODE_TORCH -> CaptureRequest.CONTROL_AE_MODE_ON
                    else -> CaptureRequest.CONTROL_AE_MODE_ON
                }
            }
            // 2. 手动曝光或半自动曝光：使用 OFF 模式，手动控制所有参数
            else -> CaptureRequest.CONTROL_AE_MODE_OFF
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

        if (!state.isIsoAuto || !state.isShutterSpeedAuto) {
            // 手动曝光模式（AE_MODE = OFF）
            when (state.flashMode) {
                CameraMetadata.FLASH_MODE_SINGLE -> {
                    // 关键修复：预览时不使用闪光灯，只在拍摄时才触发
                    // 避免在预览流中误触发闪光灯
                    if (isCapture) {
                        builder.set(CaptureRequest.FLASH_MODE, CameraMetadata.FLASH_MODE_SINGLE)
                    } else {
                        builder.set(CaptureRequest.FLASH_MODE, CameraMetadata.FLASH_MODE_OFF)
                    }
                }

                CameraMetadata.FLASH_MODE_TORCH -> {
                    // 手电筒模式在预览和拍摄时都应该保持常亮
                    builder.set(CaptureRequest.FLASH_MODE, CameraMetadata.FLASH_MODE_TORCH)

                    // 关键修复：拍摄时明确禁用 AE 的闪光灯控制，防止闪烁
                    // TEMPLATE_STILL_CAPTURE 可能会尝试控制闪光灯，需要明确覆盖
                    if (isCapture) {
                        // 确保 AE 不会尝试触发闪光灯
                        builder.set(
                            CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER,
                            CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER_IDLE
                        )
                    }
                }

                else -> {
                    builder.set(CaptureRequest.FLASH_MODE, CameraMetadata.FLASH_MODE_OFF)
                }
            }
        } else {
            // 自动曝光模式
            when (state.flashMode) {
                CameraMetadata.FLASH_MODE_TORCH -> {
                    // 手电筒模式：预览和拍摄时都保持常亮
                    builder.set(CaptureRequest.FLASH_MODE, CameraMetadata.FLASH_MODE_TORCH)

                    // 自动曝光 + 手电筒模式拍摄时也需要防止闪烁
                    if (isCapture) {
                        builder.set(
                            CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER,
                            CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER_IDLE
                        )
                    }
                }

                else -> {
                    // 自动曝光模式下，单次闪光和关闭都应当将 FLASH_MODE 设为 OFF
                    // 闪光灯的行为由 AE_MODE 控制 (例如 CONTROL_AE_MODE_ON_ALWAYS_FLASH)
                    builder.set(CaptureRequest.FLASH_MODE, CaptureRequest.FLASH_MODE_OFF)
                }
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
                PLog.d(TAG, "Enabled Optical Image Stabilization (OIS)")
            }

            // 2. 处理 EIS (视频/数字防抖)
            // 同样，只有在设备列出的支持模式中包含时才设置
            if (availableVideoStabilizationModes.contains(CaptureRequest.CONTROL_VIDEO_STABILIZATION_MODE_OFF)) {
                builder.set(
                    CaptureRequest.CONTROL_VIDEO_STABILIZATION_MODE,
                    CaptureRequest.CONTROL_VIDEO_STABILIZATION_MODE_OFF
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
            val edgeMode = when (edgeLevel) {
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
            val noiseReductionMode = when (nrLevel) {
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
    }

    /**
     * 设置是否使用 RAW 格式拍照
     */
    fun setUseRaw(enabled: Boolean) {
        useRaw = enabled
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
        val clampedValue = value.coerceIn(range.lower, range.upper)
        _state.value = _state.value.copy(exposureCompensation = clampedValue)

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
        val range = _state.value.getIsoRange()
        val clampedValue = value.coerceIn(range.lower, range.upper)
        _state.value = _state.value.copy(
            iso = clampedValue,
            isIsoAuto = false
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
        val range = _state.value.getShutterSpeedRange()
        val clampedValue = value.coerceIn(range.lower, range.upper)
        _state.value = _state.value.copy(
            shutterSpeed = clampedValue,
            isShutterSpeedAuto = false
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
        _state.value = _state.value.copy(
            isIsoAuto = enabled,
            isShutterSpeedAuto = enabled
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
        _state.value = _state.value.copy(isIsoAuto = enabled)
        previewRequestBuilder?.apply {
            applyExposureSettings(this, _state.value, false)
            updatePreview()
        }
    }

    /**
     * 设置快门自动模式
     */
    fun setShutterSpeedAuto(enabled: Boolean) {
        _state.value = _state.value.copy(isShutterSpeedAuto = enabled)
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
                set(CaptureRequest.CONTROL_AF_MODE, CaptureRequest.CONTROL_AF_MODE_AUTO)
                set(CaptureRequest.CONTROL_AF_TRIGGER, CaptureRequest.CONTROL_AF_TRIGGER_START)
                updatePreview()
            }

            // 延迟恢复连续对焦
            cameraHandler?.postDelayed({
                previewRequestBuilder?.apply {
                    set(CaptureRequest.CONTROL_AF_TRIGGER, CaptureRequest.CONTROL_AF_TRIGGER_IDLE)
                    set(CaptureRequest.CONTROL_AF_MODE, CaptureRequest.CONTROL_AF_MODE_CONTINUOUS_PICTURE)
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

        // 播放快门音效
        onPlayShutterSound?.invoke()

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

                // 自动曝光 + 单次闪光：需要先触发预闪流程
                PLog.d(TAG, "启动状态机拍照流程")
                // 如果当前 AF 模式是自动或连续，可以先锁定 AF，这里为了简单直接走 AE 流程
                // 如果需要 AF 锁定，可以设置 internalCaptureState = STATE_WAITING_LOCK
                // 这里我们直接走 AE 预闪
                runPrecaptureSequence()
            } else {
                // 其他情况（手动曝光、手电筒模式、不使用闪光灯）：直接拍照
                PLog.d(TAG, "直接拍照")
                performCapture(device, reader)
            }

        } catch (e: CameraAccessException) {
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

                // 关键修复：拍照请求中也加入预览 Surface
                // 许多设备要求在拍照时保持预览流活跃，否则会导致相机内部流重构失败，
                // 从而抛出 ERROR_CAMERA_DEVICE (4) 错误。
                previewSurface?.let { addTarget(it) }

                // 应用所有相机参数（曝光、白平衡、闪光灯、变焦、色调映射）
                // isCapture = true 确保使用完整的曝光时间（不限制长曝光）
                applyBaseCameraSettings(this, isCapture = true)

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

                PLog.d(
                    TAG,
                    "Capture request built and ready to send. ISO: ${_state.value.iso}, shutter: ${_state.value.shutterSpeed}, AE: ${_state.value.isAutoExposure}"
                )
            }

            capturePreviewFrame()
            captureSession?.capture(captureBuilder.build(), object : CameraCaptureSession.CaptureCallback() {
                override fun onCaptureStarted(
                    session: CameraCaptureSession,
                    request: CaptureRequest,
                    timestamp: Long,
                    frameNumber: Long
                ) {
                    // 关键修复：在 onCaptureStarted 中预先获取 request 中的参数作为 fallback
                    // 这样即使 onCaptureCompleted 晚于 ImageReader 回调，也能提供基本的 EXIF 信息
                    // 注意：这里不能获取到实际的 result，只能从 request 获取设置的参数
                    PLog.d(TAG, "Capture started at frame $frameNumber")
                }

                override fun onCaptureCompleted(
                    session: CameraCaptureSession,
                    request: CaptureRequest,
                    result: TotalCaptureResult
                ) {
                    _state.value = _state.value.copy(isCapturing = false)
                    val timestamp = result.get(CaptureResult.SENSOR_TIMESTAMP)
                    if (timestamp != null) {
                        val pendingImage = pendingImages.remove(timestamp)
                        if (pendingImage != null) {
                            processAndTriggerCapture(pendingImage, rawPreviewFrame, result)
                        } else {
                            pendingResults[timestamp] = result
                        }
                    }
                    lastCaptureResult = result
                    PLog.d(
                        TAG,
                        "Capture completed, result saved"
                    )
                }

                override fun onCaptureFailed(
                    session: CameraCaptureSession,
                    request: CaptureRequest,
                    failure: CaptureFailure
                ) {
                    PLog.e(TAG, "Capture failed: ${failure.reason}")
                    _state.value = _state.value.copy(isCapturing = false)

                    // 拍照失败时重置预览
                    resetPreviewAfterCapture()
                }
            }, cameraHandler)

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
            // 关键修复：使用单次 capture 调用来发送 CANCEL 信号，
            // 而不是直接在 setRepeatingRequest 中设置。
            // 如果在重复请求中设置 CANCEL，某些设备会导致 AE 状态不断重置，从而产生屏幕闪烁。
            builder.set(
                CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER,
                CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER_CANCEL
            )
            // 发送单次取消请求
            session.capture(builder.build(), null, cameraHandler)

            // 关键修复：发送完 CANCEL 后立即将触发器重置为 IDLE，用于后续的重复预览请求
            builder.set(
                CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER,
                CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER_IDLE
            )

            // 重新应用所有设置（确保使用正确的预览参数）
            applyBaseCameraSettings(builder, isCapture = false)

            // 发送重置后的预览请求（此时触发器是 IDLE）
            session.setRepeatingRequest(builder.build(), previewCallback, cameraHandler)

            PLog.d(TAG, "Preview reset after capture (CANCEL sent and IDLE restored)")
        } catch (e: CameraAccessException) {
            PLog.e(TAG, "Failed to reset preview after capture", e)
        } catch (e: IllegalStateException) {
            PLog.w(TAG, "Failed to reset preview - camera closed", e)
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to reset preview after capture", e)
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
            PLog.d(TAG, "buildCaptureInfo: $zoomRatio")
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

    /**
     * 请求捕获下一帧预览帧（原始 YUV）
     * 捕获的帧将通过 onPreviewFrameCaptured 回调传递
     */
    fun capturePreviewFrame() {
        shouldCapturePreviewFrame = true
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

            imageReader?.close()
            imageReader = null

            previewImageReader?.close()
            previewImageReader = null

            previewSurface = null
            previewRequestBuilder = null

            //清理所有缓存的相机特性和属性
            cachedCharacteristics = null
            cachedSensorOrientation = 0
            cachedLensFacing = CameraCharacteristics.LENS_FACING_BACK
            cachedHardwareLevel = CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL_LIMITED

            _state.value = _state.value.copy(isPreviewActive = false)

            PLog.d(TAG, "Camera closed")
        } catch (e: Exception) {
            PLog.e(TAG, "Error closing camera", e)
        }
    }

    private fun processAndTriggerCapture(image: Image, preview: Bitmap?, result: TotalCaptureResult) {
        val processStartTime = System.currentTimeMillis()
        try {
            _state.value = _state.value.copy(isCapturing = false)
            val width = image.width
            val height = image.height
            PLog.d(TAG, "Matching Image and CaptureResult found for timestamp ${image.timestamp}")

            // 构建 CaptureInfo
            val captureInfo = rebuildCaptureInfo(result, width, height)

            // 传递完整的 Image 对象、CaptureInfo、CameraCharacteristics 和 CaptureResult
            onImageCaptured?.invoke(image, preview, captureInfo, cachedCharacteristics, result)
        } catch (e: Exception) {
            PLog.e(TAG, "Error processing joined capture data", e)
            image.close()
        } finally {
            PLog.d(
                TAG,
                "Capture data pairing and callback took: ${System.currentTimeMillis() - processStartTime}ms"
            )
            resetPreviewAfterCapture()
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
}
