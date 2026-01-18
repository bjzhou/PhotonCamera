package com.hinnka.mycamera.viewmodel

import android.app.Application
import android.graphics.Bitmap
import android.graphics.SurfaceTexture
import android.hardware.camera2.CameraCharacteristics
import android.media.Image
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableFloatStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.lifecycle.AndroidViewModel
import androidx.lifecycle.viewModelScope
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.camera.Camera2Controller
import com.hinnka.mycamera.camera.CameraState
import com.hinnka.mycamera.camera.CaptureInfo
import com.hinnka.mycamera.data.ContentRepository
import com.hinnka.mycamera.data.UserPreferencesRepository
import com.hinnka.mycamera.frame.FrameInfo
import com.hinnka.mycamera.frame.FrameRenderer
import com.hinnka.mycamera.gallery.PhotoManager
import com.hinnka.mycamera.gallery.PhotoMetadata
import com.hinnka.mycamera.gallery.PhotoProcessor
import com.hinnka.mycamera.lut.LutConfig
import com.hinnka.mycamera.lut.LutImageProcessor
import com.hinnka.mycamera.lut.LutInfo
import com.hinnka.mycamera.model.ColorRecipeParams
import com.hinnka.mycamera.raw.RawDemosaicProcessor
import com.hinnka.mycamera.utils.OrientationObserver
import com.hinnka.mycamera.utils.PLog
import com.hinnka.mycamera.utils.RawProcessor
import com.hinnka.mycamera.utils.ShutterSoundPlayer
import com.hinnka.mycamera.utils.VibrationHelper
import com.hinnka.mycamera.utils.YuvProcessor
import kotlinx.coroutines.*
import kotlinx.coroutines.flow.*

/**
 * 相机 ViewModel
 * 使用 Camera2Controller 支持隐藏摄像头
 */
class CameraViewModel(application: Application) : AndroidViewModel(application) {

    companion object {
        private const val TAG = "CameraViewModel"
    }

    private val cameraController = Camera2Controller(application)

    // 用户偏好设置仓库
    private val userPreferencesRepository = UserPreferencesRepository(application)

    // 内容仓库（单例，与 GalleryViewModel 共享）
    private val contentRepository = ContentRepository.getInstance(application)
    private val lutImageProcessor = LutImageProcessor()

    // 计费管理器
    private val billingManager = com.hinnka.mycamera.billing.BillingManagerImpl(application)
    val isPurchased = billingManager.isPurchased

    // 边框渲染器
    private val frameRenderer = FrameRenderer(application)
    private val photoProcessor = PhotoProcessor(
        contentRepository.lutManager,
        lutImageProcessor,
        contentRepository.frameManager,
        frameRenderer
    )

    // 快门音效播放器
    private val shutterSoundPlayer = ShutterSoundPlayer(application)

    // 震动辅助类
    private val vibrationHelper = VibrationHelper(application)

    val state: StateFlow<CameraState> = cameraController.state

    // 照片保存完成事件
    private val _imageSavedEvent = MutableSharedFlow<Unit>()
    val imageSavedEvent: SharedFlow<Unit> = _imageSavedEvent.asSharedFlow()

    // LUT 相关状态
    var currentLutConfig: LutConfig? by mutableStateOf(null)
        private set

    var currentLutId = MutableStateFlow("standard")
        private set

    @OptIn(ExperimentalCoroutinesApi::class)
    var currentRecipeParams = currentLutId.flatMapLatest { id ->
        contentRepository.lutManager.getColorRecipeParams(id)
    }.stateIn(
        scope = viewModelScope,
        started = SharingStarted.WhileSubscribed(5000),
        initialValue = ColorRecipeParams.DEFAULT
    )

    var availableLutList: List<LutInfo> by mutableStateOf(emptyList())
        private set

    // LUT 预览图缓存（lutId -> 预览Bitmap）
    var lutPreviewBitmaps: Map<String, Bitmap> by mutableStateOf(emptyMap())
        private set

    // 原始预览帧（用于生成 LUT 预览）
    private var rawPreviewFrame: Bitmap? = null

    // 是否正在生成预览
    private var isGeneratingPreviews = false

    // 边框相关状态
    var currentFrameId: String? by mutableStateOf(null)
        private set

    var showHistogram by mutableStateOf(true)
        private set

    var availableFrameList: List<FrameInfo> by mutableStateOf(emptyList())
        private set

    var zoomRatioByMain by mutableFloatStateOf(1f)

    // 付费弹窗状态
    var showPaymentDialog by mutableStateOf(false)

    // 新增设置项 StateFlow
    val showLevelIndicator: Flow<Boolean> = userPreferencesRepository.userPreferences.map { it.showLevelIndicator }
    val shutterSoundEnabled: Flow<Boolean> = userPreferencesRepository.userPreferences.map { it.shutterSoundEnabled }
    val vibrationEnabled: Flow<Boolean> = userPreferencesRepository.userPreferences.map { it.vibrationEnabled }
    val volumeKeyCapture: Flow<Boolean> = userPreferencesRepository.userPreferences.map { it.volumeKeyCapture }
    val autoSaveAfterCapture: Flow<Boolean> = userPreferencesRepository.userPreferences.map { it.autoSaveAfterCapture }
    val useSoftwareProcessing: StateFlow<Boolean> = userPreferencesRepository.userPreferences
        .map { it.useSoftwareProcessing }
        .stateIn(viewModelScope, SharingStarted.WhileSubscribed(5000), false)
    // 软件处理参数 Flow
    val sharpening: StateFlow<Float> = userPreferencesRepository.userPreferences
        .map { it.sharpening }
        .stateIn(viewModelScope, SharingStarted.WhileSubscribed(5000), 0.3f)
    val noiseReduction: StateFlow<Float> = userPreferencesRepository.userPreferences
        .map { it.noiseReduction }
        .stateIn(viewModelScope, SharingStarted.WhileSubscribed(5000), 0.25f)
    val chromaNoiseReduction: StateFlow<Float> = userPreferencesRepository.userPreferences
        .map { it.chromaNoiseReduction }
        .stateIn(viewModelScope, SharingStarted.WhileSubscribed(5000), 0.25f)

    private var isShutterSoundEnabled = true
    private var isVibrationEnabled = true

    // 保存当前的 SurfaceTexture 以便切换摄像头时重用
    private var currentSurfaceTexture: SurfaceTexture? = null

    init {
        cameraController.initialize()
        cameraController.onImageCaptured = { image, captureInfo, characteristics, captureResult ->
            PLog.d(TAG, "onImageCaptured callback triggered - image: ${image.width}x${image.height}, format: ${image.format}")
            viewModelScope.launch {
                saveImage(image, captureInfo, characteristics, captureResult)
            }
        }

        cameraController.onCameraError = { code, message, canRetry ->
            // 只记录错误日志，不在这里重试打开相机
            // 相机恢复应该由 CameraScreen 的 ON_RESUME 生命周期事件处理
            // 这样可以避免在相机被其他应用占用时的无限重试循环
            PLog.d(TAG, "onCameraError: code=$code, message=$message, canRetry=$canRetry")
        }

        // 监听快门声音、震动和软件处理设置
        viewModelScope.launch {
            userPreferencesRepository.userPreferences.collect {
                isShutterSoundEnabled = it.shutterSoundEnabled
                isVibrationEnabled = it.vibrationEnabled
                // 同步软件处理设置到相机控制器
                cameraController.setUseSoftwareProcessing(it.useSoftwareProcessing)
            }
        }

        // 设置快门音效和震动回调
        cameraController.onPlayShutterSound = {
            if (isShutterSoundEnabled) {
                shutterSoundPlayer.play()
            }
            if (isVibrationEnabled) {
                vibrationHelper.vibrate()
            }
        }

        // 订阅 ContentRepository 的 StateFlow，结合用户自定义排序
        viewModelScope.launch {
            contentRepository.availableLuts.combine(
                userPreferencesRepository.userPreferences.map { it.filterOrder }
            ) { luts, order ->
                if (order.isEmpty()) {
                    luts
                } else {
                    val orderMap = order.withIndex().associate { it.value to it.index }
                    luts.sortedBy { orderMap[it.id] ?: Int.MAX_VALUE }
                }
            }.collect { sortedLuts ->
                availableLutList = sortedLuts
                PLog.d(TAG, "CameraViewModel: availableLutList updated to ${sortedLuts.size} items (sorted)")
            }
        }

        viewModelScope.launch {
            contentRepository.availableFrames.combine(
                userPreferencesRepository.userPreferences.map { it.frameOrder }
            ) { frames, order ->
                if (order.isEmpty()) {
                    frames
                } else {
                    val orderMap = order.withIndex().associate { it.value to it.index }
                    frames.sortedBy { orderMap[it.id] ?: Int.MAX_VALUE }
                }
            }.collect { sortedFrames ->
                availableFrameList = sortedFrames
                PLog.d(TAG, "CameraViewModel: availableFrameList updated to ${sortedFrames.size} items (sorted)")
            }
        }

        // 加载用户偏好设置
        viewModelScope.launch {
            val prefs = userPreferencesRepository.userPreferences.firstOrNull()
            if (prefs != null) {
                // 应用保存的画面比例
                try {
                    val savedAspectRatio = AspectRatio.valueOf(prefs.aspectRatio)
                    cameraController.setAspectRatio(savedAspectRatio)
                } catch (e: IllegalArgumentException) {
                    // 如果保存的值无效，使用默认值
                }

                // 应用保存的 LUT 配置
                if (prefs.lutId != null) {
                    setLut(prefs.lutId)
                } else {
                    // 如果没有保存的 LUT，使用配置文件中的默认 LUT（第一个）
                    val defaultLut = availableLutList.firstOrNull { it.isDefault }
                    defaultLut?.let { setLut(it.id) }
                }

                // 应用保存的边框配置
                if (prefs.frameId != null) {
                    currentFrameId = prefs.frameId
                }

                showHistogram = prefs.showHistogram

                // 应用保存的网格线设置
                cameraController.setShowGrid(prefs.showGrid)
            } else {
                // 如果没有任何偏好设置，使用配置文件中的默认 LUT（第一个）
                val defaultLut = availableLutList.firstOrNull { it.isDefault }
                defaultLut?.let { setLut(it.id) }
            }
        }
    }

    /**
     * 打开相机（Camera2 接口）
     */
    fun openCamera(surfaceTexture: SurfaceTexture) {
        PLog.d(TAG, "openCamera")
        // 预加载 RAW 处理器
        RawDemosaicProcessor.getInstance().preload()
        currentSurfaceTexture = surfaceTexture
        cameraController.openCamera(surfaceTexture)
    }

    /**
     * 关闭相机
     */
    fun closeCamera() {
        cameraController.closeCamera()
    }

    /**
     * 检查相机状态并在必要时恢复
     */
    fun checkAndRecoverCamera() {
        // 如果有保存的 SurfaceTexture，重新打开相机
        currentSurfaceTexture?.let { texture ->
            if (!state.value.isPreviewActive) {
                cameraController.openCamera(texture)
            }
        }
    }

    /**
     * 拍照（带延时拍摄支持）
     */
    fun capture() {
        val timerSeconds = state.value.timerSeconds

        // 检查 VIP 权限
        val currentLut = getLutInfo(currentLutId.value)
        if (currentLut?.isVip == true && !isPurchased.value) {
            showPaymentDialog = true
            return
        }

        if (timerSeconds > 0) {
            // 延时拍摄：开始倒计时
            viewModelScope.launch {
                for (i in timerSeconds downTo 1) {
                    cameraController.setCountdownValue(i)
                    delay(1000)
                }
                // 倒计时结束，拍照
                cameraController.setCountdownValue(0)
                cameraController.capture()
            }
        } else {
            // 普通拍摄：直接拍照
            cameraController.capture()
        }
    }

    /**
     * 切换摄像头（前后置切换）
     */
    fun switchCamera() {
        cameraController.switchCamera()
        reopenCamera()
        zoomRatioByMain = 1f
    }

    /**
     * 切换到指定的镜头类型
     */
    fun switchToLens(cameraId: String) {
        cameraController.switchToCameraId(cameraId)
        reopenCamera()
    }

    /**
     * 重新打开相机（切换摄像头后使用）
     */
    private fun reopenCamera() {
        currentSurfaceTexture?.let { texture ->
            cameraController.openCamera(texture)
        }
    }

    /**
     * 获取所有后置摄像头
     */
    fun getBackCameras(): List<com.hinnka.mycamera.camera.CameraInfo> {
        return cameraController.getBackCameras()
    }

    /**
     * 设置曝光补偿
     */
    fun setExposureCompensation(value: Int) {
        cameraController.setExposureCompensation(value)
    }

    /**
     * 设置 ISO
     */
    fun setIso(value: Int) {
        cameraController.setIso(value)
    }

    /**
     * 设置快门速度
     */
    fun setShutterSpeed(value: Long) {
        cameraController.setShutterSpeed(value)
    }

    /**
     * 设置变焦倍数
     */
    fun setZoomRatio(ratio: Float) {
        zoomRatioByMain = ratio
        val cameraInfo = state.value.getCurrentCameraInfo()
        val intrinsicZoomRatio = cameraInfo?.intrinsicZoomRatio ?: 1.0f
        cameraController.setZoomRatio(ratio / intrinsicZoomRatio)
    }

    /**
     * 设置画面比例
     */
    fun setAspectRatio(ratio: AspectRatio) {
        cameraController.setAspectRatio(ratio)
        // 保存到用户偏好设置
        viewModelScope.launch {
            userPreferencesRepository.saveAspectRatio(ratio.name)
        }
    }

    /**
     * 点击对焦
     */
    fun focusOnPoint(x: Float, y: Float, viewWidth: Int, viewHeight: Int) {
        cameraController.focusOnPoint(x, y, viewWidth, viewHeight)
    }

    fun toggleFlash() {
        cameraController.setFlashMode(
            when (state.value.flashMode) {
                0 -> 1
                1 -> 2
                2 -> 0
                else -> 0
            }
        )
    }

    /**
     * 设置曝光自动模式
     */
    fun setAutoExposure(enabled: Boolean) {
        cameraController.setAutoExposure(enabled)
    }

    /**
     * 设置 ISO 自动模式
     */
    fun setIsoAuto(enabled: Boolean) {
        cameraController.setIsoAuto(enabled)
    }

    /**
     * 设置快门自动模式
     */
    fun setShutterSpeedAuto(enabled: Boolean) {
        cameraController.setShutterSpeedAuto(enabled)
    }

    /**
     * 设置白平衡模式
     */
    fun setAwbMode(mode: Int) {
        cameraController.setAwbMode(mode)
    }

    /**
     * 设置白平衡色温
     */
    fun setAwbTemperature(kelvin: Int) {
        cameraController.setAwbTemperature(kelvin)
    }

    // ==================== 计费相关方法 ====================

    /**
     * 发起购买
     */
    fun purchase(activity: android.app.Activity) {
        billingManager.purchase(activity)
    }

    // ==================== 自定义导入相关方法 ====================

    /**
     * 获取自定义导入管理器
     */
    fun getCustomImportManager() = contentRepository.getCustomImportManager()

    /**
     * 刷新自定义内容（在导入新的LUT或边框后调用）
     * StateFlow 会自动通知订阅者更新
     */
    fun refreshCustomContent() {
        viewModelScope.launch {
            withContext(Dispatchers.IO) {
                // 重新初始化内容仓库
                // StateFlow 会自动更新 availableLutList 和 availableFrameList
                contentRepository.refreshCustomContent()
            }
            PLog.d(TAG, "Custom content refreshed via ContentRepository")
        }
    }

    /**
     * 获取滤镜排序顺序
     */
    val filterOrder: Flow<List<String>> = userPreferencesRepository.userPreferences.map { it.filterOrder }

    /**
     * 获取边框排序顺序
     */
    val frameOrder: Flow<List<String>> = userPreferencesRepository.userPreferences.map { it.frameOrder }

    /**
     * 保存滤镜排序顺序
     */
    fun saveFilterOrder(order: List<String>) {
        viewModelScope.launch {
            userPreferencesRepository.saveFilterOrder(order)
        }
    }

    /**
     * 保存边框排序顺序
     */
    fun saveFrameOrder(order: List<String>) {
        viewModelScope.launch {
            userPreferencesRepository.saveFrameOrder(order)
        }
    }

    // ==================== LUT 相关方法 ====================

    /**
     * 设置当前 LUT
     */
    fun setLut(lutId: String?) {
        currentLutId.value = lutId ?: currentLutId.value
        if (lutId == null) {
            currentLutConfig = null
            // LUT 已禁用，通知相机控制器
            cameraController.setLutEnabled(false)
        } else {
            viewModelScope.launch {
                currentLutConfig = withContext(Dispatchers.IO) {
                    contentRepository.lutManager.loadLut(lutId)
                }
                currentRecipeParams = contentRepository.lutManager.getColorRecipeParams(lutId).stateIn(
                    viewModelScope,
                    started = SharingStarted.Lazily,
                    initialValue = ColorRecipeParams.DEFAULT,
                )
            }
            // LUT 已启用，通知相机控制器
            cameraController.setLutEnabled(true)
        }

        // 保存到用户偏好设置
        viewModelScope.launch {
            userPreferencesRepository.saveLutConfig(lutId)
        }
    }

    /**
     * 获取 LUT 信息
     */
    fun getLutInfo(id: String): LutInfo? {
        return contentRepository.lutManager.getLutInfo(id)
    }

    /**
     * 预加载 LUT
     */
    fun preloadLut(id: String) {
        contentRepository.lutManager.preloadLut(id)
    }

    /**
     * 从相机捕获预览帧并生成所有 LUT 的预览图
     */
    fun captureAndGenerateLutPreviews() {
        if (isGeneratingPreviews) {
            PLog.d(TAG, "Already generating previews, skipping")
            return
        }

        isGeneratingPreviews = true

        // 设置回调接收原始 YUV 预览帧
        cameraController.onPreviewFrameCaptured = { bitmap ->
            viewModelScope.launch(Dispatchers.Default) {
                try {
                    // 保存原始帧
                    rawPreviewFrame?.recycle()
                    rawPreviewFrame = bitmap

                    // 生成所有 LUT 预览
                    val newPreviews = mutableMapOf<String, Bitmap>()

                    availableLutList.forEach { lutInfo ->
                        val lutConfig = withContext(Dispatchers.IO) {
                            contentRepository.lutManager.loadLut(lutInfo.id)
                        }

                        if (lutConfig != null) {
                            val colorRecipeParams = contentRepository.lutManager.loadColorRecipeParams(lutInfo.id)
                            // LUT 预览生成：禁用软件处理（预览图小，不需要降噪/锐化）
                            val previewBitmap = lutImageProcessor.applyLut(
                                bitmap = bitmap,
                                lutConfig = lutConfig,
                                colorRecipeParams = colorRecipeParams,
                                useSoftwareProcessing = false  // 预览不需要软件处理
                            )
                            newPreviews[lutInfo.id] = previewBitmap
                        }
                    }

                    // 更新预览图
                    withContext(Dispatchers.Main) {
                        lutPreviewBitmaps.values.forEach { it.recycle() }
                        lutPreviewBitmaps = newPreviews
                        isGeneratingPreviews = false
                        PLog.d(TAG, "Generated ${newPreviews.size} LUT previews from YUV")
                    }
                } catch (e: Exception) {
                    PLog.e(TAG, "Failed to generate LUT previews", e)
                    isGeneratingPreviews = false
                }
            }
        }

        // 触发捕获
        cameraController.capturePreviewFrame()
    }

    /**
     * 将 YUV Image 转换为 Bitmap
     */
    private fun yuvImageToBitmap(image: Image): Bitmap? {
        return try {
            val planes = image.planes
            val yPlane = planes[0]
            val uPlane = planes[1]
            val vPlane = planes[2]

            val yBuffer = yPlane.buffer
            val uBuffer = uPlane.buffer
            val vBuffer = vPlane.buffer

            val ySize = yBuffer.remaining()
            val uSize = uBuffer.remaining()
            val vSize = vBuffer.remaining()

            val nv21 = ByteArray(ySize + uSize + vSize)

            // 复制 Y 数据
            yBuffer.get(nv21, 0, ySize)

            // 交织 U 和 V 数据为 NV21 格式
            val pixelStride = vPlane.pixelStride
            val rowStride = vPlane.rowStride
            var pos = ySize

            for (row in 0 until image.height / 2) {
                for (col in 0 until image.width / 2) {
                    val vuPos = row * rowStride + col * pixelStride
                    nv21[pos++] = vBuffer.get(vuPos)
                    nv21[pos++] = uBuffer.get(vuPos)
                }
            }

            // 使用 android.graphics.YuvImage 转换为 Bitmap
            val yuvImage =
                android.graphics.YuvImage(nv21, android.graphics.ImageFormat.NV21, image.width, image.height, null)
            val out = java.io.ByteArrayOutputStream()
            yuvImage.compressToJpeg(android.graphics.Rect(0, 0, image.width, image.height), 100, out)
            val imageBytes = out.toByteArray()
            android.graphics.BitmapFactory.decodeByteArray(imageBytes, 0, imageBytes.size)
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to convert YUV to Bitmap", e)
            null
        }
    }

    /**
     * 清除 LUT 预览缓存
     */
    fun clearLutPreviews() {
        lutPreviewBitmaps.values.forEach { it.recycle() }
        lutPreviewBitmaps = emptyMap()
        rawPreviewFrame?.recycle()
        rawPreviewFrame = null
    }

    // ==================== 边框相关方法 ====================

    /**
     * 设置当前边框
     */
    fun setFrame(frameId: String?) {
        currentFrameId = frameId
        // 保存到用户偏好设置
        viewModelScope.launch {
            userPreferencesRepository.saveFrameConfig(frameId)
        }
    }

    /**
     * 获取边框的自定义属性
     */
    suspend fun getFrameCustomProperties(frameId: String): Map<String, String> {
        return contentRepository.frameManager.loadCustomProperties(frameId)
    }

    /**
     * 保存边框的自定义属性
     */
    suspend fun saveFrameCustomProperties(frameId: String, properties: Map<String, String>) {
        contentRepository.frameManager.saveCustomProperties(frameId, properties)
    }

    /**
     * 设置是否显示直方图
     */
    fun saveShowHistogram(show: Boolean) {
        showHistogram = show
        // 保存到用户偏好设置
        viewModelScope.launch {
            userPreferencesRepository.saveShowHistogram(show)
        }
    }

    // ==================== 延时拍摄和网格线相关方法 ====================

    /**
     * 切换延时拍摄档位（0s → 3s → 5s → 10s → 0s）
     */
    fun toggleTimer() {
        val currentTimer = state.value.timerSeconds
        val nextTimer = when (currentTimer) {
            0 -> 3
            3 -> 5
            5 -> 10
            10 -> 0
            else -> 0
        }
        cameraController.setTimerSeconds(nextTimer)
    }

    /**
     * 切换网格线显示
     */
    fun toggleGrid() {
        val newShowGrid = !state.value.showGrid
        cameraController.setShowGrid(newShowGrid)
        // 保存到用户偏好设置
        viewModelScope.launch {
            userPreferencesRepository.saveShowGrid(newShowGrid)
        }
    }

    // ==================== 新增设置项方法 ====================

    /**
     * 设置是否显示水平仪
     */
    fun setShowLevelIndicator(show: Boolean) {
        viewModelScope.launch {
            userPreferencesRepository.saveShowLevelIndicator(show)
        }
    }

    /**
     * 设置是否启用快门声音
     */
    fun setShutterSoundEnabled(enabled: Boolean) {
        viewModelScope.launch {
            userPreferencesRepository.saveShutterSoundEnabled(enabled)
        }
    }

    /**
     * 设置是否启用拍摄震动
     */
    fun setVibrationEnabled(enabled: Boolean) {
        viewModelScope.launch {
            userPreferencesRepository.saveVibrationEnabled(enabled)
        }
    }

    /**
     * 设置是否启用音量键拍摄
     */
    fun setVolumeKeyCapture(enabled: Boolean) {
        viewModelScope.launch {
            userPreferencesRepository.saveVolumeKeyCapture(enabled)
        }
    }

    /**
     * 设置是否拍摄后自动保存
     */
    fun setAutoSaveAfterCapture(enabled: Boolean) {
        viewModelScope.launch {
            userPreferencesRepository.saveAutoSaveAfterCapture(enabled)
        }
    }

    /**
     * 设置是否使用软件降噪/锐化
     */
    fun setUseSoftwareProcessing(enabled: Boolean) {
        viewModelScope.launch {
            userPreferencesRepository.saveUseSoftwareProcessing(enabled)
        }
    }

    /**
     * 设置锐化强度
     */
    fun setSharpening(value: Float) {
        viewModelScope.launch {
            userPreferencesRepository.saveSharpening(value)
        }
    }

    /**
     * 设置降噪强度
     */
    fun setNoiseReduction(value: Float) {
        viewModelScope.launch {
            userPreferencesRepository.saveNoiseReduction(value)
        }
    }

    /**
     * 设置减少杂色强度
     */
    fun setChromaNoiseReduction(value: Float) {
        viewModelScope.launch {
            userPreferencesRepository.saveChromaNoiseReduction(value)
        }
    }

    /**
     * 保存图片
     */
    private suspend fun saveImage(
        image: Image,
        captureInfo: CaptureInfo,
        characteristics: CameraCharacteristics?,
        captureResult: android.hardware.camera2.CaptureResult?
    ) {
        var bitmap: Bitmap? = null
        try {
            PLog.d(TAG, "saveImage called - image: ${image.width}x${image.height}, format: ${image.format}")
            val context = getApplication<Application>()

            // 关键修复：如果 captureResult 为 null，短暂等待
            // 在某些设备上，onCaptureCompleted 可能晚于 ImageReader 回调触发
            var finalCaptureResult = captureResult
            if (finalCaptureResult == null && cameraController.isRawSupported) {
                var waitCount = 0
                while (waitCount < 20) {
                    kotlinx.coroutines.delay(10)
                    finalCaptureResult = cameraController.getLastCaptureResult() as android.hardware.camera2.CaptureResult?
                    if (finalCaptureResult != null) {
                        if (waitCount > 2) { // 只有延迟超过 20ms 时才记录日志
                            PLog.d(TAG, "captureResult became available after ${waitCount * 10}ms")
                        }
                        break
                    }
                    waitCount++
                }
                if (finalCaptureResult == null) {
                    PLog.w(TAG, "captureResult still null after 200ms, using fallback metadata")
                }
            }

            // 保存当前配置信息
            val lutIdToSave = currentLutId.value
            val aspectRatio = state.value.aspectRatio
            val frameIdToSave = currentFrameId
            val shouldAutoSave = autoSaveAfterCapture.firstOrNull() ?: false
            val shouldUseSoftwareProcessing = useSoftwareProcessing.value
            val sharpeningValue = sharpening.value
            val noiseReductionValue = noiseReduction.value
            val chromaNoiseReductionValue = chromaNoiseReduction.value

            // 计算旋转角度
            val sensorOrientation = cameraController.getSensorOrientation()
            val lensFacing = cameraController.getLensFacing()
            val deviceRotation = OrientationObserver.rotationDegrees.toInt()
            val rotation = if (lensFacing == CameraCharacteristics.LENS_FACING_FRONT) {
                (sensorOrientation - deviceRotation + 360) % 360
            } else {
                (sensorOrientation + deviceRotation) % 360
            }

            // 根据图像格式选择处理方式
            bitmap = withContext(Dispatchers.Default) {
                if (cameraController.isRawSupported) {
                    // RAW 图像：使用 RawProcessor 处理
                    if (characteristics != null && finalCaptureResult != null) {
                        PLog.d(TAG, "Processing RAW image")
                        RawProcessor.processAndToBitmap(image, characteristics, finalCaptureResult, aspectRatio, rotation)
                    } else {
                        PLog.e(TAG, "Cannot process RAW: characteristics=${characteristics != null}, finalCaptureResult=${finalCaptureResult != null}")
                        null
                    }
                } else {
                    // YUV 图像：使用 YuvProcessor 处理
                    YuvProcessor.processAndToBitmap(image, aspectRatio, rotation)
                }
            }

            if (bitmap == null) {
                PLog.e(TAG, "Failed to process image, bitmap is null")
                return
            }

            try {
                // 如果之前没有 captureResult 但现在等到了，尝试重新构建更完整的 CaptureInfo 供 EXIF 使用
                val finalCaptureInfo = if (captureResult == null && finalCaptureResult is android.hardware.camera2.TotalCaptureResult) {
                    cameraController.rebuildCaptureInfo(finalCaptureResult, image.width, image.height)
                } else {
                    captureInfo
                }

                // 创建统一的 PhotoMetadata，包含编辑配置和拍摄信息
                val metadata = PhotoMetadata(
                    lutId = lutIdToSave,
                    frameId = frameIdToSave,
                    colorRecipeParams = currentRecipeParams.value,
                    sharpening = sharpeningValue,
                    noiseReduction = noiseReductionValue,
                    chromaNoiseReduction = chromaNoiseReductionValue,
                    deviceModel = finalCaptureInfo.model,
                    brand = finalCaptureInfo.make.replaceFirstChar { it.uppercase() },
                    dateTaken = finalCaptureInfo.captureTime,
                    iso = finalCaptureInfo.iso,
                    shutterSpeed = finalCaptureInfo.formatExposureTime(),
                    focalLength = finalCaptureInfo.formatFocalLength(),
                    focalLength35mm = finalCaptureInfo.formatFocalLength35mm(),
                    aperture = finalCaptureInfo.formatAperture(),
                )

                coroutineScope {
                    // 保存原始照片到数据库
                    launch {
                        val photoId = PhotoManager.savePhoto(context, bitmap!!, metadata, finalCaptureInfo)
                        if (photoId != null) {
                            PLog.d(TAG, "Image saved: $photoId, LUT: $lutIdToSave, Frame: $frameIdToSave")
                            _imageSavedEvent.emit(Unit)
                        } else {
                            PLog.e(TAG, "Failed to save image via PhotoManager")
                        }
                    }

                    // 如果启用自动保存,导出处理后的图片到系统相册
                    if (shouldAutoSave) {
                        launch {
                            val processedBitmap = withContext(Dispatchers.Default) {
                                photoProcessor.process(
                                    context = context,
                                    input = bitmap!!,
                                    metadata = metadata,
                                    useSoftwareProcessing = shouldUseSoftwareProcessing,
                                    sharpening = sharpeningValue,
                                    noiseReduction = noiseReductionValue,
                                    chromaNoiseReduction = chromaNoiseReductionValue
                                )
                            }

                            val filename = "PhotonCamera_${
                                java.text.SimpleDateFormat("yyyyMMdd_HHmmss", java.util.Locale.US).format(java.util.Date())
                            }.jpg"
                            val contentValues = android.content.ContentValues().apply {
                                put(android.provider.MediaStore.MediaColumns.DISPLAY_NAME, filename)
                                put(android.provider.MediaStore.MediaColumns.MIME_TYPE, "image/jpeg")
                                put(
                                    android.provider.MediaStore.MediaColumns.RELATIVE_PATH,
                                    android.os.Environment.DIRECTORY_DCIM + "/PhotonCamera"
                                )
                            }

                            val uri = context.contentResolver.insert(
                                android.provider.MediaStore.Images.Media.EXTERNAL_CONTENT_URI,
                                contentValues
                            )

                            uri?.let {
                                context.contentResolver.openOutputStream(it)?.use { outputStream ->
                                    processedBitmap.compress(Bitmap.CompressFormat.JPEG, 95, outputStream)
                                }

                                // 保存导出的 URI 到元数据
                                val photoId = PhotoManager.getPhotoIds(context).firstOrNull()
                                if (photoId != null) {
                                    val currentMetadata = PhotoManager.loadMetadata(context, photoId) ?: metadata
                                    val updatedMetadata = currentMetadata.copy(
                                        exportedUris = currentMetadata.exportedUris + it.toString()
                                    )
                                    PhotoManager.saveMetadata(context, photoId, updatedMetadata)
                                    PLog.d(TAG, "Exported URI saved: $it")
                                }
                            }

                            if (processedBitmap != bitmap) {
                                processedBitmap.recycle()
                            }
                        }
                    }
                }
            } finally {
                // 确保 bitmap 在所有操作完成后被回收
                bitmap.recycle()
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to save image", e)
        } finally {
            // 确保即使出错也关闭 Image
            try {
                image.close()
            } catch (ex: Exception) {
                // Image 可能已经关闭
            }
        }
    }

    override fun onCleared() {
        super.onCleared()
        cameraController.release()
        contentRepository.lutManager.clearCache()
        lutImageProcessor.release()
        contentRepository.frameManager.clearCache()
        shutterSoundPlayer.release()

        // 清理 LUT 预览图
        clearLutPreviews()
    }
}
