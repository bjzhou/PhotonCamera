package com.hinnka.mycamera.viewmodel

import android.app.Application
import android.graphics.Bitmap
import android.graphics.SurfaceTexture
import android.hardware.camera2.CameraCharacteristics
import android.media.Image
import android.util.Log
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
import com.hinnka.mycamera.utils.OrientationObserver
import com.hinnka.mycamera.utils.PLog
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

    var currentLutId: String? by mutableStateOf(null)
        private set

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

    var currentShowAppBranding by mutableStateOf(true)
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

    private var isShutterSoundEnabled = true
    private var isVibrationEnabled = true

    // 保存当前的 SurfaceTexture 以便切换摄像头时重用
    private var currentSurfaceTexture: SurfaceTexture? = null

    init {
        cameraController.initialize()
        cameraController.onImageCaptured = { image, captureInfo ->
            viewModelScope.launch {
                saveImage(image, captureInfo)
            }
        }

        cameraController.onCameraError = { code, message, canRetry ->
            if (canRetry) {
                checkAndRecoverCamera()
            }
        }

        // 监听快门声音和震动设置
        viewModelScope.launch {
            userPreferencesRepository.userPreferences.collect {
                isShutterSoundEnabled = it.shutterSoundEnabled
                isVibrationEnabled = it.vibrationEnabled
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

        // 初始化内容仓库
        contentRepository.initialize()

        // 订阅 ContentRepository 的 StateFlow，实现自动更新
        viewModelScope.launch {
            contentRepository.availableLuts.collect { luts ->
                availableLutList = luts
                PLog.d(TAG, "CameraViewModel: availableLutList updated to ${luts.size} items")
            }
        }

        viewModelScope.launch {
            contentRepository.availableFrames.collect { frames ->
                availableFrameList = frames
                PLog.d(TAG, "CameraViewModel: availableFrameList updated to ${frames.size} items")
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
                setLutIntensity(prefs.lutIntensity)

                // 应用保存的边框配置
                if (prefs.frameId != null) {
                    currentFrameId = prefs.frameId
                }
                currentShowAppBranding = prefs.showAppBranding

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
        val currentLut = getLutInfo(currentLutId ?: "")
        if (currentLut?.isVip == true && !isPurchased.value) {
            showPaymentDialog = true
            return
        }

        if (timerSeconds > 0) {
            // 延时拍摄：开始倒计时
            viewModelScope.launch {
                for (i in timerSeconds downTo 1) {
                    cameraController.setCountdownValue(i)
                    kotlinx.coroutines.delay(1000)
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

    // ==================== LUT 相关方法 ====================

    /**
     * 设置当前 LUT
     */
    fun setLut(lutId: String?) {
        currentLutId = lutId
        if (lutId == null) {
            currentLutConfig = null
            // LUT 已禁用，通知相机控制器
            cameraController.setLutEnabled(false)
        } else {
            viewModelScope.launch {
                currentLutConfig = withContext(Dispatchers.IO) {
                    contentRepository.lutManager.loadLut(lutId)
                }
            }
            // LUT 已启用，通知相机控制器
            cameraController.setLutEnabled(true)
        }

        // 保存到用户偏好设置
        viewModelScope.launch {
            userPreferencesRepository.saveLutConfig(lutId, state.value.lutIntensity)
        }
    }

    /**
     * 设置 LUT 强度
     */
    fun setLutIntensity(intensity: Float) {
        cameraController.setLutIntensity(intensity)
        cameraController.setLutEnabled(intensity > 0f)
        // 保存到用户偏好设置
        viewModelScope.launch {
            userPreferencesRepository.saveLutIntensity(intensity)
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
                            // 直接使用原始 bitmap，不创建副本以避免内存溢出
                            val previewBitmap = lutImageProcessor.applyLut(
                                bitmap = bitmap,
                                lutConfig = lutConfig,
                                intensity = 1.0f
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
            userPreferencesRepository.saveFrameConfig(frameId, currentShowAppBranding)
        }
    }

    /**
     * 设置是否显示 App 品牌
     */
    fun setShowAppBranding(show: Boolean) {
        currentShowAppBranding = show
        // 保存到用户偏好设置
        viewModelScope.launch {
            userPreferencesRepository.saveShowAppBranding(show)
        }
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
     * 保存图片
     */
    private suspend fun saveImage(image: Image, captureInfo: CaptureInfo) {
        val context = getApplication<Application>()

        // 保存当前 LUT 信息用于元数据
        val lutIdToSave = currentLutId
        val lutIntensityToSave = state.value.lutIntensity

        val aspectRatio = state.value.aspectRatio

        // 保存当前边框信息用于元数据
        val frameIdToSave = currentFrameId
        val showAppBrandingToSave = currentShowAppBranding

        // 获取是否自动保存设置
        val shouldAutoSave = autoSaveAfterCapture.firstOrNull() ?: false

        try {
            // 计算旋转角度
            val sensorOrientation = cameraController.getSensorOrientation()
            val lensFacing = cameraController.getLensFacing()
            val deviceRotation = OrientationObserver.rotationDegrees.toInt()

            val rotation = if (lensFacing == CameraCharacteristics.LENS_FACING_FRONT) {
                (sensorOrientation - deviceRotation + 360) % 360
            } else {
                (sensorOrientation + deviceRotation) % 360
            }

            // Step 1: 使用 YuvProcessor 处理 YUV 图像（旋转、裁切、转换为 Bitmap）
            val bitmap = withContext(Dispatchers.Default) {
                YuvProcessor.processAndToBitmap(image, aspectRatio, rotation)
            }

            // 关闭 Image 资源
            image.close()

            // 创建统一的 PhotoMetadata，包含编辑配置和拍摄信息
            val metadata = PhotoMetadata(
                // 编辑配置
                lutId = lutIdToSave,
                lutIntensity = lutIntensityToSave,
                frameId = frameIdToSave,
                showAppBranding = showAppBrandingToSave,
                // 拍摄信息 (来自 captureInfo)
                deviceModel = captureInfo.model,
                brand = captureInfo.make.replaceFirstChar { it.uppercase() },
                dateTaken = captureInfo.captureTime,
                iso = captureInfo.iso,
                shutterSpeed = captureInfo.formatExposureTime(),
                focalLength = captureInfo.formatFocalLength(),
                focalLength35mm = captureInfo.formatFocalLength35mm(),
                aperture = captureInfo.formatAperture(),
            )

            try {
                coroutineScope {
                    // 保存原始照片到数据库
                    launch {
                        val photoId = PhotoManager.savePhoto(context, bitmap, metadata, captureInfo)

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
                                photoProcessor.process(context, bitmap, metadata)
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
                                    // 使用 98 质量以获得更高的图像清晰度
                                    processedBitmap.compress(Bitmap.CompressFormat.JPEG, 98, outputStream)
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

                            processedBitmap.recycle()
                        }
                    }
                }
            } finally {
                // 确保 bitmap 在所有操作完成后被回收
                bitmap.recycle()
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to save image", e)
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
