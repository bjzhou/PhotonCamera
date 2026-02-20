package com.hinnka.mycamera.viewmodel

import android.app.Application
import android.content.Context
import android.graphics.Bitmap
import android.graphics.SurfaceTexture
import android.hardware.camera2.CameraCharacteristics
import android.hardware.camera2.CaptureResult
import android.media.Image
import android.net.Uri
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableFloatStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.lifecycle.AndroidViewModel
import androidx.lifecycle.viewModelScope
import com.hinnka.mycamera.camera.*
import com.hinnka.mycamera.data.ContentRepository
import com.hinnka.mycamera.data.UserPreferencesRepository
import com.hinnka.mycamera.data.VolumeKeyAction
import com.hinnka.mycamera.frame.FrameInfo
import com.hinnka.mycamera.frame.FrameRenderer
import com.hinnka.mycamera.gallery.PhotoManager
import com.hinnka.mycamera.gallery.PhotoMetadata
import com.hinnka.mycamera.gallery.PhotoProcessor
import com.hinnka.mycamera.lut.LutConfig
import com.hinnka.mycamera.lut.LutInfo
import com.hinnka.mycamera.model.ColorRecipeParams
import com.hinnka.mycamera.model.SafeImage
import com.hinnka.mycamera.raw.ColorSpace
import com.hinnka.mycamera.raw.LogCurve
import com.hinnka.mycamera.raw.RawDemosaicProcessor
import com.hinnka.mycamera.raw.rawFolder
import com.hinnka.mycamera.ui.camera.CameraGLSurfaceView
import com.hinnka.mycamera.utils.*
import kotlinx.coroutines.*
import kotlinx.coroutines.flow.*
import java.io.File
import kotlin.math.abs

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
    private val lutImageProcessor = contentRepository.imageProcessor

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
    val livePhotoRecorder get() = cameraController.livePhotoRecorder

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
        started = SharingStarted.Eagerly,
        initialValue = ColorRecipeParams.DEFAULT
    )

    var availableLutList: List<LutInfo> by mutableStateOf(emptyList())
        private set

    // LUT 预览图缓存（lutId -> 预览Bitmap）
    var previewThumbnail by mutableStateOf<Bitmap?>(null)

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

    var isExpanded by mutableStateOf(false)

    // 新增设置项 StateFlow
    val showLevelIndicator: Flow<Boolean> = userPreferencesRepository.userPreferences.map { it.showLevelIndicator }
    val shutterSoundEnabled: Flow<Boolean> = userPreferencesRepository.userPreferences.map { it.shutterSoundEnabled }
    val vibrationEnabled: Flow<Boolean> = userPreferencesRepository.userPreferences.map { it.vibrationEnabled }
    val volumeKeyAction: StateFlow<VolumeKeyAction> =
        userPreferencesRepository.userPreferences.map { it.volumeKeyAction }
            .stateIn(viewModelScope, SharingStarted.Eagerly, initialValue = VolumeKeyAction.NONE)
    val autoSaveAfterCapture: Flow<Boolean> = userPreferencesRepository.userPreferences.map { it.autoSaveAfterCapture }
    val nrLevel: StateFlow<Int> = userPreferencesRepository.userPreferences
        .map { it.nrLevel }
        .stateIn(viewModelScope, SharingStarted.Eagerly, 1)
    val useRaw: StateFlow<Boolean> = userPreferencesRepository.userPreferences
        .map { it.useRaw }
        .stateIn(viewModelScope, SharingStarted.Eagerly, false)
    val edgeLevel: StateFlow<Int> = userPreferencesRepository.userPreferences
        .map { it.edgeLevel }
        .stateIn(viewModelScope, SharingStarted.Eagerly, 1)
    val photoQuality: Flow<Int> = userPreferencesRepository.userPreferences.map { it.photoQuality }

    val defaultFocalLength: Flow<Float> = userPreferencesRepository.userPreferences.map { it.defaultFocalLength }
    val useMultiFrame: StateFlow<Boolean> = userPreferencesRepository.userPreferences
        .map { it.useMultiFrame }
        .stateIn(viewModelScope, SharingStarted.Eagerly, false)
    val multiFrameCount: StateFlow<Int> = userPreferencesRepository.userPreferences
        .map { it.multiFrameCount }
        .stateIn(viewModelScope, SharingStarted.Eagerly, 8)
    val useLivePhoto: StateFlow<Boolean> = userPreferencesRepository.userPreferences
        .map { it.useLivePhoto }
        .stateIn(viewModelScope, SharingStarted.Eagerly, false)
    val backgroundImage: StateFlow<String> = userPreferencesRepository.userPreferences
        .map { it.backgroundImage }
        .stateIn(viewModelScope, SharingStarted.Eagerly, "camera_bg")
    val useGpuAcceleration: StateFlow<Boolean> = userPreferencesRepository.userPreferences
        .map { it.useGpuAcceleration }
        .stateIn(viewModelScope, SharingStarted.Eagerly, DeviceUtil.defaultGpuAcceleration)
    val droMode: StateFlow<String> = userPreferencesRepository.userPreferences
        .map { it.droMode }
        .stateIn(viewModelScope, SharingStarted.Eagerly, "OFF")
    val applyUltraHDR: StateFlow<Boolean> = userPreferencesRepository.userPreferences
        .map { it.applyUltraHDR }
        .stateIn(viewModelScope, SharingStarted.Eagerly, false)
    val colorSpace: StateFlow<ColorSpace> = userPreferencesRepository.userPreferences
        .map { it.colorSpace }
        .stateIn(viewModelScope, SharingStarted.Eagerly, ColorSpace.BT2020)
    val logCurve: StateFlow<LogCurve> = userPreferencesRepository.userPreferences
        .map { it.logCurve }
        .stateIn(viewModelScope, SharingStarted.Eagerly, LogCurve.FLOG2)

    val rawLut: StateFlow<String> = userPreferencesRepository.userPreferences
        .map { it.rawLuts[it.logCurve.name] ?: "sRGB.plut" }
        .stateIn(viewModelScope, SharingStarted.Eagerly, "sRGB.plut")

    val useP010: StateFlow<Boolean> = userPreferencesRepository.userPreferences
        .map { it.useP010 }
        .stateIn(viewModelScope, SharingStarted.Eagerly, false)

    // 软件处理参数 Flow
    val sharpening: Flow<Float> = userPreferencesRepository.userPreferences.map { it.sharpening }
    val noiseReduction: Flow<Float> = userPreferencesRepository.userPreferences.map { it.noiseReduction }
    val chromaNoiseReduction: Flow<Float> = userPreferencesRepository.userPreferences.map { it.chromaNoiseReduction }

    private var isShutterSoundEnabled = true
    private var isVibrationEnabled = true

    var glSurfaceView: CameraGLSurfaceView? = null

    // 保存当前的 SurfaceTexture 以便切换摄像头时重用
    private var currentSurfaceTexture: SurfaceTexture? = null

    // 用于处理音量键连续按下的时间戳，防止抖动和过快响应
    private var lastVolumeKeyEventTime = 0L
    private val VOLUME_KEY_DEBOUNCE_TIME = 200L // 毫秒

    private var hasAppliedDefaultFocalLength = false

    // Burst State
    private var isBursting = false
    private val burstImages = mutableListOf<SafeImage>()

    init {
        cameraController.initialize()
        cameraController.onImageCaptured = { image, captureInfo, characteristics, captureResult ->
            synchronized(burstImages) {
                if (isBursting) {
                    val count = state.value.multiFrameCount
                    PLog.d(TAG, "Burst frame received: ${burstImages.size + 1}/$count")
                    burstImages.add(image)
                    if (burstImages.size >= count) {
                        val imagesToProcess = burstImages.toList()
                        burstImages.clear()
                        isBursting = false
                        viewModelScope.launch {
                            processBurst(imagesToProcess, captureInfo, characteristics, captureResult)
                        }
                    }
                } else {
                    PLog.d(
                        TAG,
                        "onImageCaptured callback triggered - image: ${image.width}x${image.height}, format: ${image.format}"
                    )
                    viewModelScope.launch {
                        saveImage(image, captureInfo, characteristics, captureResult)
                    }
                }
            }
        }

        cameraController.onCameraError = { code, message, canRetry ->
            // 只记录错误日志，不在这里重试打开相机
            // 相机恢复应该由 CameraScreen 的 ON_RESUME 生命周期事件处理
            // 这样可以避免在相机被其他应用占用时的无限重试循环
            PLog.d(TAG, "onCameraError: code=$code, message=$message, canRetry=$canRetry")
            isBursting = false
            burstImages.forEach {
                it.close()
            }
            burstImages.clear()
        }

        // 监听快门声音、震动和软件处理设置
        viewModelScope.launch {
            userPreferencesRepository.userPreferences.collect {
                isShutterSoundEnabled = it.shutterSoundEnabled
                isVibrationEnabled = it.vibrationEnabled
                // 同步降噪等级到相机控制器
                cameraController.setNRLevel(it.nrLevel)
                // 同步锐化等级到相机控制器
                cameraController.setEdgeLevel(it.edgeLevel)
                // 同步 RAW 设置到相机控制器
                cameraController.setUseRaw(it.useRaw)
                // 同步 Live Photo 设置到相机控制器
                cameraController.setUseLivePhoto(it.useLivePhoto)
                // 同步 Ultra HDR 设置到相机控制器
                cameraController.setApplyUltraHDR(it.applyUltraHDR)
                // 同步 RAW 色彩空间和 Log 曲线到解马赛克处理器
                RawDemosaicProcessor.getInstance().setRawColorSpace(it.colorSpace)
                RawDemosaicProcessor.getInstance().setRawLogCurve(it.logCurve)
                // 同步当前 Log 曲线对应的 RAW LUT
                val currentRawLut = it.rawLuts[it.logCurve.name] ?: "Default.plut"
                RawDemosaicProcessor.getInstance().setRawLut(application, currentRawLut)
                // 同步 P010 设置到相机控制器
                cameraController.setUseP010(it.useP010)
            }
        }

        cameraController.onLivePhotoVideoCaptured = { file, timestamp ->
            // Global listener still available for other UI needs if any
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

                cameraController.setUseMultiFrame(prefs.useMultiFrame, prefs.multiFrameCount)
                cameraController.setUseLivePhoto(prefs.useLivePhoto)
            } else {
                // 如果没有任何偏好设置，使用配置文件中的默认 LUT（第一个）
                val defaultLut = availableLutList.firstOrNull { it.isDefault }
                defaultLut?.let { setLut(it.id) }
            }
        }

        // 监听相机状态，用于首次启动应用默认焦段
        viewModelScope.launch {
            state.collect { currentState ->
                val availableCameras = currentState.availableCameras
                if (availableCameras.isNotEmpty() && !hasAppliedDefaultFocalLength) {
                    val prefs = userPreferencesRepository.userPreferences.firstOrNull()
                    val defaultFL = prefs?.defaultFocalLength ?: 0f
                    if (defaultFL > 0f) {
                        applyDefaultFocalLength(defaultFL)
                    }
                    hasAppliedDefaultFocalLength = true
                }
            }
        }
    }

    fun getAvailableRawLutList(context: Context, logCurve: LogCurve): List<String> {
        try {
            val files = logCurve.rawFolder?.let { context.assets.list(it) }
            return files?.filter { it.endsWith(".plut") }?.toList() ?: emptyList()
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to list raw luts", e)
        }
        return emptyList()
    }

    /**
     * 打开相机（Camera2 接口）
     */
    fun openCamera(surfaceTexture: SurfaceTexture) {
        PLog.d(TAG, "openCamera")
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
                generateThumbnail()
                // 倒计时结束，拍照
                cameraController.setCountdownValue(0)
                if (useLivePhoto.value) {
                    cameraController.setCapturingLivePhoto(true)
                    viewModelScope.launch {
                        delay(1500)
                        cameraController.setCapturingLivePhoto(false)
                    }
                }
                cameraController.capture()
            }
        } else {
            generateThumbnail()
            // Check if we should use burst/stacking
            // Skip raw (stacking raw not supported yet)
            burstImages.clear()
            if (useMultiFrame.value) {
                isBursting = true
                if (useLivePhoto.value) {
                    cameraController.setCapturingLivePhoto(true)
                    viewModelScope.launch {
                        delay(1500)
                        cameraController.setCapturingLivePhoto(false)
                    }
                    cameraController.snapshotLivePhoto()
                }
                cameraController.capture()
            } else {
                isBursting = false
                if (useLivePhoto.value) {
                    cameraController.setCapturingLivePhoto(true)
                    viewModelScope.launch {
                        delay(1500)
                        cameraController.setCapturingLivePhoto(false)
                    }
                    cameraController.snapshotLivePhoto()
                }
                // 普通拍摄：直接拍照
                cameraController.capture()
            }
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
    fun getBackCameras(): List<CameraInfo> {
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
     * 复制 LUT
     */
    fun copyLut(lut: LutInfo, copyName: String) {
        viewModelScope.launch {
            val newLutId = withContext(Dispatchers.IO) {
                contentRepository.getCustomImportManager().copyLut(lut, copyName)
            }
            if (newLutId != null) {
                withContext(Dispatchers.IO) {
                    // 同时复制色彩配方
                    val params = contentRepository.lutManager.loadColorRecipeParams(lut.id)
                    contentRepository.lutManager.saveColorRecipeParams(newLutId, params)

                    // 更新排序顺序：放在原版下面
                    val currentOrder = userPreferencesRepository.userPreferences.first().filterOrder.toMutableList()
                    if (currentOrder.isEmpty()) {
                        // 如果当前没有排序，则从当前列表初始化并插入
                        val allIds = availableLutList.map { it.id }.toMutableList()
                        val index = allIds.indexOf(lut.id)
                        if (index != -1) {
                            allIds.add(index + 1, newLutId)
                        } else {
                            allIds.add(newLutId)
                        }
                        userPreferencesRepository.saveFilterOrder(allIds)
                    } else {
                        val index = currentOrder.indexOf(lut.id)
                        if (index != -1) {
                            currentOrder.add(index + 1, newLutId)
                        } else {
                            currentOrder.add(newLutId)
                        }
                        userPreferencesRepository.saveFilterOrder(currentOrder)
                    }

                    // 刷新列表
                    contentRepository.refreshCustomContent()
                }
            }
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
     * 获取分类排序顺序
     */
    val categoryOrder: Flow<List<String>> = userPreferencesRepository.userPreferences.map { it.categoryOrder }

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

    /**
     * 保存分类排序顺序
     */
    fun saveCategoryOrder(order: List<String>) {
        viewModelScope.launch {
            userPreferencesRepository.saveCategoryOrder(order)
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
     * 设置是否应用 Ultra HDR 策略
     */
    fun setApplyUltraHDR(enabled: Boolean) {
        viewModelScope.launch {
            userPreferencesRepository.saveApplyUltraHDR(enabled)
        }
    }

    /**
     * 设置是否启用 P010
     */
    fun setUseP010(enabled: Boolean) {
        viewModelScope.launch {
            userPreferencesRepository.saveUseP010(enabled)
        }
    }

    /**
     * 获取 LUT 信息
     */
    fun getLutInfo(id: String): LutInfo? {
        return contentRepository.lutManager.getLutInfo(id)
    }

    /**
     * 从相机捕获预览帧并生成所有 LUT 的预览图
     */
    fun generateThumbnail() {
        if (isGeneratingPreviews) {
            PLog.d(TAG, "Already generating previews, skipping")
            return
        }

        isGeneratingPreviews = true

        val glView = glSurfaceView
        if (glView != null) {
            glView.capturePreviewFrame { bitmap ->
                previewThumbnail = bitmap
                isGeneratingPreviews = false
            }
        } else {
            isGeneratingPreviews = false
        }
    }

    fun handleHistogramUpdate(histogram: IntArray) {
        cameraController.updateHistogram(histogram)
    }

    fun handleMeteringUpdate(totalWeight: Double, weightedSumLuminance: Double) {
        cameraController.calculateAutoMetering(totalWeight, weightedSumLuminance)
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
     * 设置是否使用多帧合成
     */
    fun setUseMultiFrame(enabled: Boolean) {
        /*if (enabled) {
            cameraController.setUseRaw(false)
            viewModelScope.launch {
                userPreferencesRepository.saveUseRaw(false)
            }
        }*/
        cameraController.setUseMultiFrame(enabled, multiFrameCount.value)
        viewModelScope.launch {
            userPreferencesRepository.saveUseMultiFrame(enabled)
        }
        reopenCamera()
    }

    /**
     * 设置多帧合成帧数
     */
    fun setMultiFrameCount(count: Int) {
        cameraController.setUseMultiFrame(state.value.useMultiFrame, count)
        viewModelScope.launch {
            userPreferencesRepository.saveMultiFrameCount(count)
            //reopenCamera()
        }
    }

    /**
     * 设置是否启用 Live Photo
     */
    fun setUseLivePhoto(enabled: Boolean) {
        cameraController.setUseLivePhoto(enabled)
        viewModelScope.launch {
            userPreferencesRepository.saveUseLivePhoto(enabled)
        }
    }

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

    /**
     * 切换 RAW 格式拍摄
     */
    fun toggleRaw() {
        val nextValue = !useRaw.value
        setUseRaw(nextValue)
    }

    fun setUseRaw(useRaw: Boolean) {
        /*if (useRaw) {
            cameraController.setUseMultiFrame(false, multiFrameCount.value)
            viewModelScope.launch {
                userPreferencesRepository.saveUseMultiFrame(false)
            }
        }*/
        cameraController.setUseRaw(useRaw)
        viewModelScope.launch {
            userPreferencesRepository.saveUseRaw(useRaw)
        }
        reopenCamera()
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
     * 设置音量键操作
     */
    fun setVolumeKeyAction(action: VolumeKeyAction) {
        viewModelScope.launch {
            userPreferencesRepository.saveVolumeKeyAction(action)
        }
    }

    /**
     * 处理音量键按下
     * @return 是否消费了该事件
     */
    fun handleVolumeKey(isUp: Boolean): Boolean {
        val action = volumeKeyAction.value
        if (action == VolumeKeyAction.NONE) return false

        val currentTime = System.currentTimeMillis()
        if (currentTime - lastVolumeKeyEventTime < VOLUME_KEY_DEBOUNCE_TIME) {
            return true // 还在冷却时间内，消费事件但不做处理
        }
        lastVolumeKeyEventTime = currentTime

        return when (action) {
            VolumeKeyAction.CAPTURE -> {
                capture()
                true
            }

            VolumeKeyAction.EXPOSURE_COMPENSATION -> {
                val currentEV = state.value.exposureCompensation
                val range = state.value.getExposureCompensationRange()
                if (range.lower == 0 && range.upper == 0) return true // 不支持曝光补偿

                if (isUp) {
                    if (currentEV < range.upper) {
                        setExposureCompensation(currentEV + 1)
                    }
                } else {
                    if (currentEV > range.lower) {
                        setExposureCompensation(currentEV - 1)
                    }
                }
                true
            }

            VolumeKeyAction.ZOOM -> {
                handleVolumeZoom(isUp)
                true
            }
        }
    }

    /**
     * 处理音量键变焦切换
     * 逻辑：切换到下一个/上一个 ZoomStop
     */
    private fun handleVolumeZoom(isUp: Boolean) {
        val currentState = state.value
        val availableCameras = currentState.availableCameras
        val currentCamera = currentState.getCurrentCameraInfo() ?: return

        // 1. 获取主摄
        val mainCamera = availableCameras.find {
            it.lensType == if (currentCamera.lensType == LensType.FRONT) LensType.FRONT else LensType.BACK_MAIN
        } ?: return

        // 2. 计算变焦档位 (逻辑同步自 ZoomControlBar.kt)
        val lensZoomStops = calculateLensZoomStops(availableCameras, currentCamera)
        val zoomStops = allZoomStops(lensZoomStops, mainCamera, currentCamera)

        if (zoomStops.isEmpty()) return

        // 3. 找到当前或者最近的档位索引
        val currentZoomRatio = zoomRatioByMain
        var currentIndex = zoomStops.indexOfFirst { abs(it - currentZoomRatio) < 0.05f }

        if (currentIndex == -1) {
            // 如果不在已知档位，找到最近的一个
            currentIndex = zoomStops.indices.minByOrNull { abs(zoomStops[it] - currentZoomRatio) } ?: 0
        }

        // 4. 计算下一个索引
        val nextIndex = if (isUp) {
            (currentIndex + 1).coerceAtMost(zoomStops.lastIndex)
        } else {
            (currentIndex - 1).coerceAtLeast(0)
        }

        if (nextIndex != currentIndex) {
            val targetZoom = zoomStops[nextIndex]

            // 5. 检查是否需要切换镜头 (逻辑同步自 ZoomControlBar.kt)
            val optimalLens = findOptimalLens(targetZoom, availableCameras, currentCamera.cameraId)
            if (optimalLens != null && optimalLens.cameraId != currentCamera.cameraId) {
                switchToLens(optimalLens.cameraId)
            }

            // 6. 应用变焦
            setZoomRatio(targetZoom)
        }
    }

    /**
     * 计算变焦档位
     */
    fun calculateLensZoomStops(
        cameras: List<CameraInfo>,
        currentCamera: CameraInfo?
    ): List<Float> {
        val stops = mutableListOf<Float>()

        val filter: (CameraInfo) -> Boolean = if (currentCamera?.lensType == LensType.FRONT) {
            { it.lensType == LensType.FRONT }
        } else {
            { it.lensType != LensType.FRONT && it.lensType != LensType.BACK_MACRO }
        }

        // 添加各个镜头的固有变焦比例
        cameras.filter(filter).forEach { camera ->
            if (camera.intrinsicZoomRatio > 0) {
                // 避免添加极其接近的变焦倍率（例如 1.0 和 1.0006）
                if (stops.none { abs(it - camera.intrinsicZoomRatio) < 0.01f }) {
                    stops.add(camera.intrinsicZoomRatio)
                }
            }
        }
        return stops.sorted()
    }

    /**
     * 计算变焦档位
     */
    fun allZoomStops(
        lensZoomStops: List<Float>,
        mainCamera: CameraInfo?,
        currentCamera: CameraInfo?
    ): List<Float> {
        val stops = mutableListOf<Float>()
        stops.addAll(lensZoomStops)

        if (currentCamera?.lensType == LensType.FRONT) {
            if (stops.none { abs(it - 2f) <= 0.1f }) {
                stops.add(2f)
            }
            return stops.sorted()
        }

        mainCamera ?: return stops.sorted()

        if (mainCamera.focalLength35mmEquivalent > 0) {
            listOf(35f, 50f, 85f, 200f).forEach { fl ->
                val zoom = fl / mainCamera.focalLength35mmEquivalent
                if (stops.none { abs(it - zoom) <= 0.1f }) {
                    stops.add(zoom)
                }
            }
        }
        return stops.sorted()
    }

    /**
     * 根据变焦倍率找到最佳镜头
     */
    fun findOptimalLens(
        targetZoom: Float,
        cameras: List<CameraInfo>,
        currentCameraId: String
    ): CameraInfo? {
        val currentLensType = cameras.find { it.cameraId == currentCameraId }?.lensType
        val zoomableCameras =
            cameras.filter { if (currentLensType == LensType.FRONT) it.lensType == LensType.FRONT else (it.lensType != LensType.FRONT && it.lensType != LensType.BACK_MACRO) }
        if (zoomableCameras.isEmpty()) return null
        return zoomableCameras
            .filter { it.intrinsicZoomRatio <= targetZoom + 0.01f }
            .sortedByDescending { it.intrinsicZoomRatio }
            .getOrNull(0)
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
     * 设置 RAW 色彩空间
     */
    fun setColorSpace(colorSpace: ColorSpace) {
        viewModelScope.launch {
            userPreferencesRepository.saveColorSpace(colorSpace)
        }
    }

    /**
     * 设置 RAW Log 曲线
     */
    fun setLogCurve(logCurve: LogCurve) {
        viewModelScope.launch {
            userPreferencesRepository.saveLogCurve(logCurve)
        }
    }

    /**
     * 设置 RAW 还原 LUT
     */
    fun setRawLut(logCurve: LogCurve, lut: String) {
        viewModelScope.launch {
            userPreferencesRepository.saveRawLut(logCurve, lut)
        }
    }

    /**
     * 设置降噪等级
     */
    fun setNRLevel(level: Int) {
        viewModelScope.launch {
            userPreferencesRepository.saveNRLevel(level)
        }
    }

    /**
     * 设置锐化等级
     */
    fun setEdgeLevel(level: Int) {
        viewModelScope.launch {
            userPreferencesRepository.saveEdgeLevel(level)
        }
    }

    /**
     * 设置照片质量
     */
    fun setPhotoQuality(quality: Int) {
        viewModelScope.launch {
            userPreferencesRepository.savePhotoQuality(quality)
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
     * 设置摄像头方向偏移
     * @param cameraId 摄像头 ID
     * @param offset 旋转偏移角度 (0, 90, 180, 270)
     */
    fun setCameraOrientationOffset(cameraId: String, offset: Int) {
        viewModelScope.launch {
            userPreferencesRepository.saveCameraOrientationOffset(cameraId, offset)
        }
    }

    /**
     * 设置默认焦段
     */
    fun setDefaultFocalLength(focalLength: Float) {
        viewModelScope.launch {
            userPreferencesRepository.saveDefaultFocalLength(focalLength)
        }
    }

    /**
     * 应用默认焦段
     */
    private fun applyDefaultFocalLength(focalLength: Float) {
        val currentState = state.value
        val availableCameras = currentState.availableCameras
        val currentCamera = currentState.getCurrentCameraInfo() ?: return

        // 找到主摄来计算变焦倍率
        val mainCamera = availableCameras.find {
            it.lensType == if (currentCamera.lensType == LensType.FRONT) LensType.FRONT else LensType.BACK_MAIN
        } ?: return

        if (mainCamera.focalLength35mmEquivalent <= 0) return

        val targetZoom = focalLength / mainCamera.focalLength35mmEquivalent

        // 找到该变焦倍率下的最佳镜头
        val optimalLens = findOptimalLens(targetZoom, availableCameras, currentCamera.cameraId)
        if (optimalLens != null && optimalLens.cameraId != currentCamera.cameraId) {
            switchToLens(optimalLens.cameraId)
        }

        setZoomRatio(targetZoom)
        PLog.d(TAG, "Applied default focal length: ${focalLength}mm (zoom: $targetZoom)")
    }

    /**
     * 获取摄像头方向偏移
     * @param cameraId 摄像头 ID
     * @return 旋转偏移角度的 Flow
     */
    fun getCameraOrientationOffset(cameraId: String): Flow<Int> {
        return userPreferencesRepository.userPreferences.map { prefs ->
            prefs.cameraOrientationOffsets[cameraId] ?: 0
        }
    }

    /**
     * 保存图片
     */
    private suspend fun saveImage(
        image: SafeImage,
        captureInfo: CaptureInfo,
        characteristics: CameraCharacteristics?,
        captureResult: CaptureResult?
    ) {
        try {
            PLog.d(TAG, "saveImage started - dimensions: ${image.width}x${image.height}, format: ${image.format}")
            val context = getApplication<Application>()

            // 保存当前配置信息
            val lutIdToSave = currentLutId.value
            val aspectRatio = state.value.aspectRatio
            val frameIdToSave = currentFrameId
            val shouldAutoSave = autoSaveAfterCapture.firstOrNull() ?: false
            val sharpeningValue = sharpening.firstOrNull() ?: 0f
            val noiseReductionValue = noiseReduction.firstOrNull() ?: 0f
            val chromaNoiseReductionValue = chromaNoiseReduction.firstOrNull() ?: 0f
            val photoQualityValue = photoQuality.firstOrNull() ?: 95
            val droModeString = droMode.value
            val droModeForProcessing = try {
                com.hinnka.mycamera.raw.MeteringSystem.DROMode.valueOf(droModeString)
            } catch (e: Exception) {
                com.hinnka.mycamera.raw.MeteringSystem.DROMode.OFF
            }
            val currentCameraId = cameraController.getCurrentCameraId()

            // 计算旋转角度
            val sensorOrientation = cameraController.getSensorOrientation()
            val lensFacing = cameraController.getLensFacing()
            val deviceRotation = OrientationObserver.rotationDegrees.toInt()

            // 基础旋转角度计算
            val baseRotation = if (lensFacing == CameraCharacteristics.LENS_FACING_FRONT) {
                (sensorOrientation - deviceRotation + 360) % 360
            } else {
                (sensorOrientation + deviceRotation) % 360
            }

            // 获取用户配置的摄像头方向偏移
            val userPrefs = userPreferencesRepository.userPreferences.firstOrNull()
            val orientationOffset = userPrefs?.cameraOrientationOffsets?.get(currentCameraId) ?: 0

            // 应用方向偏移
            val rotation = (baseRotation + orientationOffset) % 360

            // 创建统一的 PhotoMetadata，包含编辑配置和拍摄信息
            val metadata = PhotoMetadata(
                lutId = lutIdToSave,
                frameId = frameIdToSave,
                colorRecipeParams = currentRecipeParams.value,
                sharpening = sharpeningValue,
                noiseReduction = noiseReductionValue,
                chromaNoiseReduction = chromaNoiseReductionValue,
                width = image.width,
                height = image.height,
                ratio = aspectRatio,
                rotation = rotation,
                deviceModel = captureInfo.model,
                brand = captureInfo.make.replaceFirstChar { it.uppercase() },
                dateTaken = captureInfo.captureTime,
                iso = captureInfo.iso,
                shutterSpeed = captureInfo.formatExposureTime(),
                focalLength = captureInfo.formatFocalLength(),
                focalLength35mm = captureInfo.formatFocalLength35mm(),
                aperture = captureInfo.formatAperture(),
                exposureBias = state.value.exposureBias,
                droMode = droModeString
            )

            val livePhotoVideoDeferred = if (useLivePhoto.value) {
                val deferred = CompletableDeferred<Pair<File, Long>?>()
                cameraController.recordLivePhotoVideo(image.timestamp / 1000) { file, ts ->
                    deferred.complete(if (file.name == "error") null else Pair(file, ts))
                }
                deferred
            } else null

            characteristics ?: return
            val photoId =
                PhotoManager.preparePhoto(context, metadata, captureResult, previewThumbnail, useLivePhoto.value)
            if (photoId == null) {
                PLog.e(TAG, "Failed to save image")
                return
            }
            viewModelScope.launch(Dispatchers.IO) {
                PhotoManager.saveVideo(context, photoId, livePhotoVideoDeferred)

                PhotoManager.savePhoto(
                    context,
                    photoId,
                    image,
                    rotation,
                    aspectRatio,
                    characteristics,
                    captureResult,
                    shouldAutoSave,
                    photoProcessor,
                    sharpeningValue,
                    noiseReductionValue,
                    chromaNoiseReductionValue,
                    photoQualityValue,
                    exposureBias = state.value.exposureBias,
                    droMode = droModeForProcessing
                )
            }
            PLog.d(TAG, "Image saved: $photoId, LUT: $lutIdToSave, Frame: $frameIdToSave")
            _imageSavedEvent.emit(Unit)
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to save image", e)
        }
    }

    private suspend fun processBurst(
        images: List<SafeImage>,
        captureInfo: CaptureInfo,
        characteristics: CameraCharacteristics?,
        captureResult: CaptureResult?
    ) {
        try {
            PLog.d(TAG, "processBurst started - image size ${images.size}")
            val context = getApplication<Application>()

            // 保存当前配置信息
            val lutIdToSave = currentLutId.value
            val aspectRatio = state.value.aspectRatio
            val frameIdToSave = currentFrameId
            val shouldAutoSave = autoSaveAfterCapture.firstOrNull() ?: false
            val sharpeningValue = sharpening.firstOrNull() ?: 0f
            val noiseReductionValue = noiseReduction.firstOrNull() ?: 0f
            val chromaNoiseReductionValue = chromaNoiseReduction.firstOrNull() ?: 0f
            val photoQualityValue = photoQuality.firstOrNull() ?: 95
            val droModeString = droMode.value
            val droModeForProcessing = try {
                com.hinnka.mycamera.raw.MeteringSystem.DROMode.valueOf(droModeString)
            } catch (e: Exception) {
                com.hinnka.mycamera.raw.MeteringSystem.DROMode.OFF
            }
            val currentCameraId = cameraController.getCurrentCameraId()

            // 计算旋转角度
            val sensorOrientation = cameraController.getSensorOrientation()
            val lensFacing = cameraController.getLensFacing()
            val deviceRotation = OrientationObserver.rotationDegrees.toInt()

            // 基础旋转角度计算
            val baseRotation = if (lensFacing == CameraCharacteristics.LENS_FACING_FRONT) {
                (sensorOrientation - deviceRotation + 360) % 360
            } else {
                (sensorOrientation + deviceRotation) % 360
            }

            // 获取用户配置的摄像头方向偏移
            val userPrefs = userPreferencesRepository.userPreferences.firstOrNull()
            val orientationOffset = userPrefs?.cameraOrientationOffsets?.get(currentCameraId) ?: 0

            // 应用方向偏移
            val rotation = (baseRotation + orientationOffset) % 360

            // 创建统一的 PhotoMetadata，包含编辑配置和拍摄信息
            val metadata = PhotoMetadata(
                lutId = lutIdToSave,
                frameId = frameIdToSave,
                colorRecipeParams = currentRecipeParams.value,
                sharpening = sharpeningValue,
                noiseReduction = noiseReductionValue,
                chromaNoiseReduction = chromaNoiseReductionValue,
                width = images[0].width,
                height = images[0].height,
                ratio = aspectRatio,
                rotation = rotation,
                deviceModel = captureInfo.model,
                brand = captureInfo.make.replaceFirstChar { it.uppercase() },
                dateTaken = captureInfo.captureTime,
                iso = captureInfo.iso,
                shutterSpeed = captureInfo.formatExposureTime(),
                focalLength = captureInfo.formatFocalLength(),
                focalLength35mm = captureInfo.formatFocalLength35mm(),
                aperture = captureInfo.formatAperture(),
                exposureBias = state.value.exposureBias,
                droMode = droModeString
            )

            val livePhotoVideoDeferred = if (useLivePhoto.value) {
                val deferred = CompletableDeferred<Pair<File, Long>?>()
                images.firstOrNull()?.let {
                    cameraController.recordLivePhotoVideo(it.timestamp / 1000) { file, ts ->
                        deferred.complete(if (file.name == "error") null else Pair(file, ts))
                    }
                } ?: deferred.complete(null)
                deferred
            } else null

            characteristics ?: return
            val photoId = PhotoManager.preparePhoto(
                context, metadata, captureResult, previewThumbnail,
                useLivePhoto.value
            )
            if (photoId == null) {
                PLog.e(TAG, "Failed to save burst image")
                return
            }

            viewModelScope.launch(Dispatchers.IO) {
                PhotoManager.saveVideo(context, photoId, livePhotoVideoDeferred)

                PhotoManager.saveStackedPhoto(
                    context,
                    photoId,
                    images,
                    rotation,
                    aspectRatio,
                    characteristics,
                    captureResult,
                    shouldAutoSave,
                    photoProcessor,
                    sharpeningValue,
                    noiseReductionValue,
                    chromaNoiseReductionValue,
                    photoQualityValue,
                    useGpuAcceleration = useGpuAcceleration.value,
                    exposureBias = state.value.exposureBias,
                    droMode = droModeForProcessing
                )
            }
            PLog.d(TAG, "Image saved: $photoId, LUT: $lutIdToSave, Frame: $frameIdToSave")
            _imageSavedEvent.emit(Unit)
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to save image", e)
        }
    }

    fun getAvailableFocalLengths(): List<Float> {
        val currentState = state.value
        val availableCameras = currentState.availableCameras
        if (availableCameras.isEmpty()) return emptyList()

        val mainCamera = availableCameras.find {
            it.lensType == LensType.BACK_MAIN
        } ?: availableCameras.firstOrNull { it.lensFacing == CameraCharacteristics.LENS_FACING_BACK }
        ?: return emptyList()

        if (mainCamera.focalLength35mmEquivalent <= 0) return emptyList()

        val lensZoomStops = calculateLensZoomStops(availableCameras, mainCamera)
        val zoomStops = allZoomStops(lensZoomStops, mainCamera, mainCamera)

        return zoomStops.map { it * mainCamera.focalLength35mmEquivalent }
    }

    /**
     * 设置背景图
     */
    fun setBackgroundImage(image: String) {
        viewModelScope.launch {
            userPreferencesRepository.saveBackgroundImage(image)
        }
    }

    /**
     * 设置多帧合成是否使用 GPU 加速
     */
    fun setUseGpuAcceleration(enabled: Boolean) {
        viewModelScope.launch {
            userPreferencesRepository.saveUseGpuAcceleration(enabled)
        }
    }

    /**
     * 保存从外部选择的背景图
     */
    fun saveCustomBackgroundImage(uri: Uri) {
        viewModelScope.launch {
            withContext(Dispatchers.IO) {
                try {
                    val context = getApplication<Application>()
                    val inputStream = context.contentResolver.openInputStream(uri)
                    if (inputStream != null) {
                        val backgroundDir = File(context.filesDir, "backgrounds")
                        if (!backgroundDir.exists()) {
                            backgroundDir.mkdirs()
                        }
                        val fileName = "custom_bg_${System.currentTimeMillis()}.jpg"
                        val outputFile = File(backgroundDir, fileName)
                        inputStream.use { input ->
                            outputFile.outputStream().use { output ->
                                input.copyTo(output)
                            }
                        }
                        setBackgroundImage(outputFile.absolutePath)
                    }
                } catch (e: Exception) {
                    PLog.e(TAG, "Failed to save custom background image", e)
                }
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

        // 清理未处理的连拍图片
        burstImages.forEach {
            it.close()
        }
        burstImages.clear()
    }

    /**
     * 设置当前 RAW 动态范围
     */
    fun setDroMode(mode: String) {
        viewModelScope.launch {
            userPreferencesRepository.saveDroMode(mode)
        }
    }
}
