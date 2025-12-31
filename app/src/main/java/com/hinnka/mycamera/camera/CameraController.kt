package com.hinnka.mycamera.camera

import android.annotation.SuppressLint
import android.content.Context
import android.graphics.SurfaceTexture
import android.hardware.camera2.CameraCharacteristics
import android.hardware.camera2.CameraMetadata
import android.hardware.camera2.CaptureRequest
import android.util.Log
import android.util.Range
import android.view.Surface
import androidx.camera.camera2.interop.Camera2CameraControl
import androidx.camera.camera2.interop.Camera2CameraInfo
import androidx.camera.camera2.interop.CaptureRequestOptions
import androidx.camera.camera2.interop.ExperimentalCamera2Interop
import androidx.camera.core.*
import androidx.camera.lifecycle.ProcessCameraProvider
import androidx.core.content.ContextCompat
import androidx.lifecycle.LifecycleOwner
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import java.util.concurrent.Executors

/**
 * CameraX 核心控制器
 */
class CameraController(private val context: Context) {
    
    companion object {
        private const val TAG = "CameraController"
    }
    
    private var cameraProvider: ProcessCameraProvider? = null
    private var preview: Preview? = null
    private var imageCapture: ImageCapture? = null
    private var camera: Camera? = null
    private var lifecycleOwner: LifecycleOwner? = null
    
    private val cameraExecutor = Executors.newSingleThreadExecutor()
    
    private val _state = MutableStateFlow(CameraState())
    val state: StateFlow<CameraState> = _state.asStateFlow()
    
    // 设备旋转角度（由 ViewModel 更新）
    private var deviceRotation: Int = 0
    
    // Surface 提供者回调
    private var currentSurfaceProvider: Preview.SurfaceProvider? = null
    
    // 图片拍摄回调
    var onImageCaptured: ((ByteArray) -> Unit)? = null
    
    /**
     * 初始化相机
     */
    fun initialize() {
        val cameraProviderFuture = ProcessCameraProvider.getInstance(context)
        cameraProviderFuture.addListener({
            cameraProvider = cameraProviderFuture.get()
            updateAvailableCameras()
        }, ContextCompat.getMainExecutor(context))
    }
    
    /**
     * 更新可用相机列表
     */
    private fun updateAvailableCameras() {
        val provider = cameraProvider ?: return
        val cameras = mutableListOf<CameraInfo>()
        
        // 后置摄像头
        if (provider.hasCamera(CameraSelector.DEFAULT_BACK_CAMERA)) {
            val backCameraInfo = createCameraInfo(provider, CameraSelector.DEFAULT_BACK_CAMERA, LensType.BACK_MAIN)
            backCameraInfo?.let { cameras.add(it) }
        }
        
        // 前置摄像头
        if (provider.hasCamera(CameraSelector.DEFAULT_FRONT_CAMERA)) {
            val frontCameraInfo = createCameraInfo(provider, CameraSelector.DEFAULT_FRONT_CAMERA, LensType.FRONT)
            frontCameraInfo?.let { cameras.add(it) }
        }
        
        val defaultCameraId = cameras.firstOrNull { it.lensType == LensType.BACK_MAIN }?.cameraId 
            ?: cameras.firstOrNull()?.cameraId ?: ""
        
        _state.value = _state.value.copy(
            availableCameras = cameras,
            currentCameraId = defaultCameraId,
            currentLensType = if (cameras.find { it.cameraId == defaultCameraId }?.lensType == LensType.FRONT) {
                LensType.FRONT
            } else {
                LensType.BACK_MAIN
            }
        )
    }
    
    /**
     * 创建相机信息
     */
    @androidx.annotation.OptIn(ExperimentalCamera2Interop::class)
    private fun createCameraInfo(
        provider: ProcessCameraProvider,
        cameraSelector: CameraSelector,
        lensType: LensType
    ): CameraInfo? {
        return try {
            val cameraInfos = provider.availableCameraInfos.filter {
                cameraSelector.filter(listOf(it)).isNotEmpty()
            }
            val cameraInfo = cameraInfos.firstOrNull() ?: return null
            val camera2Info = Camera2CameraInfo.from(cameraInfo)
            
            val cameraId = camera2Info.cameraId
            val lensFacing = camera2Info.getCameraCharacteristic(CameraCharacteristics.LENS_FACING)
                ?: CameraCharacteristics.LENS_FACING_BACK
            
            // ISO 范围
            val isoRange = camera2Info.getCameraCharacteristic(CameraCharacteristics.SENSOR_INFO_SENSITIVITY_RANGE)
            
            // 曝光时间范围
            val exposureTimeRange = camera2Info.getCameraCharacteristic(CameraCharacteristics.SENSOR_INFO_EXPOSURE_TIME_RANGE)
            
            // 曝光补偿范围
            val exposureCompensationRange = cameraInfo.exposureState.exposureCompensationRange
            
            // 曝光补偿步长
            val exposureCompensationStep = cameraInfo.exposureState.exposureCompensationStep.toFloat()
            
            // 最大变焦
            val maxZoom = cameraInfo.zoomState.value?.maxZoomRatio ?: 1f
            
            // 传感器方向
            val sensorOrientation = camera2Info.getCameraCharacteristic(CameraCharacteristics.SENSOR_ORIENTATION) ?: 0
            
            // 活动区域大小
            val activeArraySize = camera2Info.getCameraCharacteristic(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE)
            
            CameraInfo(
                cameraId = cameraId,
                lensFacing = lensFacing,
                lensType = lensType,
                physicalCameraIds = emptyList(),
                isoRange = isoRange,
                exposureTimeRange = exposureTimeRange,
                exposureCompensationRange = Range(exposureCompensationRange.lower, exposureCompensationRange.upper),
                exposureCompensationStep = exposureCompensationStep,
                maxZoom = maxZoom,
                sensorOrientation = sensorOrientation,
                activeArraySize = activeArraySize
            )
        } catch (e: Exception) {
            Log.e(TAG, "Failed to create camera info", e)
            null
        }
    }
    
    /**
     * 绑定相机到生命周期
     */
    fun bindCamera(lifecycleOwner: LifecycleOwner, surfaceProvider: Preview.SurfaceProvider) {
        this.lifecycleOwner = lifecycleOwner
        this.currentSurfaceProvider = surfaceProvider
        
        val provider = cameraProvider ?: run {
            Log.e(TAG, "CameraProvider is null")
            return
        }
        
        try {
            // 解绑之前的用例
            provider.unbindAll()
            
            // 选择相机（前置或后置）
            val cameraSelector = if (_state.value.currentLensType == LensType.FRONT) {
                CameraSelector.DEFAULT_FRONT_CAMERA
            } else {
                CameraSelector.DEFAULT_BACK_CAMERA
            }
            
            // 创建预览用例
            preview = Preview.Builder()
                .setTargetResolution(android.util.Size(1920, 1080))
                .build()
                .also {
                    it.surfaceProvider = surfaceProvider
                }
            
            // 创建拍照用例
            imageCapture = ImageCapture.Builder()
                .setCaptureMode(ImageCapture.CAPTURE_MODE_MAXIMIZE_QUALITY)
                .setJpegQuality(95)
                .build()
            
            // 绑定用例到生命周期
            camera = provider.bindToLifecycle(
                lifecycleOwner,
                cameraSelector,
                preview,
                imageCapture
            )
            
            // 更新相机信息
            updateCameraInfoFromBoundCamera()
            
            _state.value = _state.value.copy(isPreviewActive = true)
            Log.d(TAG, "Camera bound successfully")
            
        } catch (e: Exception) {
            Log.e(TAG, "Failed to bind camera", e)
        }
    }
    
    /**
     * 从已绑定的相机更新信息
     */
    @SuppressLint("RestrictedApi")
    private fun updateCameraInfoFromBoundCamera() {
        val cam = camera ?: return
        val cameraInfo = cam.cameraInfo

        // 更新 maxZoom
        cameraInfo.zoomState.observeForever { zoomState ->
            val currentState = _state.value
            val currentCameraId = currentState.currentCameraId
            val updatedCameras = currentState.availableCameras.map { info ->
                if (info.cameraId == currentCameraId) {
                    info.copy(maxZoom = zoomState.maxZoomRatio)
                } else {
                    info
                }
            }
            _state.value = currentState.copy(availableCameras = updatedCameras)
        }
    }
    
    /**
     * 打开相机（兼容旧接口，通过 SurfaceTexture 创建 SurfaceProvider）
     */
    fun openCamera(surface: Surface) {
        Log.w(TAG, "openCamera(Surface) is deprecated. Use bindCamera(LifecycleOwner, SurfaceProvider) instead.")
        // 此方法保留用于兼容，实际使用 bindCamera
    }
    
    /**
     * 设置曝光补偿
     */
    fun setExposureCompensation(value: Int) {
        val range = _state.value.getExposureCompensationRange()
        val clampedValue = value.coerceIn(range.lower, range.upper)
        _state.value = _state.value.copy(exposureCompensation = clampedValue)
        
        camera?.cameraControl?.setExposureCompensationIndex(clampedValue)
    }
    
    /**
     * 设置自动曝光模式
     */
    fun setAutoExposure(enabled: Boolean) {
        _state.value = _state.value.copy(isAutoExposure = enabled)
        updateManualExposure()
    }
    
    /**
     * 设置 ISO
     */
    fun setIso(value: Int) {
        val range = _state.value.getIsoRange()
        val clampedValue = value.coerceIn(range.lower, range.upper)
        _state.value = _state.value.copy(
            iso = clampedValue,
            isAutoExposure = false
        )
        updateManualExposure()
    }
    
    /**
     * 设置快门速度
     */
    fun setShutterSpeed(value: Long) {
        val range = _state.value.getShutterSpeedRange()
        val clampedValue = value.coerceIn(range.lower, range.upper)
        _state.value = _state.value.copy(
            shutterSpeed = clampedValue,
            isAutoExposure = false
        )
        updateManualExposure()
    }
    
    /**
     * 更新手动曝光设置（使用 Camera2 Interop）
     */
    @androidx.annotation.OptIn(ExperimentalCamera2Interop::class)
    private fun updateManualExposure() {
        val cam = camera ?: return
        val camera2Control = Camera2CameraControl.from(cam.cameraControl)
        val state = _state.value
        
        val optionsBuilder = CaptureRequestOptions.Builder()
        
        if (!state.isAutoExposure) {
            // 手动曝光模式
            optionsBuilder.setCaptureRequestOption(
                CaptureRequest.CONTROL_AE_MODE,
                CameraMetadata.CONTROL_AE_MODE_OFF
            )
            optionsBuilder.setCaptureRequestOption(
                CaptureRequest.SENSOR_SENSITIVITY,
                state.iso
            )
            optionsBuilder.setCaptureRequestOption(
                CaptureRequest.SENSOR_EXPOSURE_TIME,
                state.shutterSpeed
            )
        } else {
            // 自动曝光模式
            optionsBuilder.setCaptureRequestOption(
                CaptureRequest.CONTROL_AE_MODE,
                CameraMetadata.CONTROL_AE_MODE_ON
            )
        }
        
        camera2Control.captureRequestOptions = optionsBuilder.build()
    }
    
    /**
     * 设置变焦倍数
     */
    fun setZoomRatio(ratio: Float) {
        val maxZoom = _state.value.getMaxZoom()
        val clampedRatio = ratio.coerceIn(1f, maxZoom)
        _state.value = _state.value.copy(zoomRatio = clampedRatio)
        
        camera?.cameraControl?.setZoomRatio(clampedRatio)
    }
    
    /**
     * 设置画面比例
     */
    fun setAspectRatio(ratio: AspectRatio) {
        _state.value = _state.value.copy(aspectRatio = ratio)
    }
    
    /**
     * 设置设备旋转角度
     * @param degrees 旋转角度，例如 0, 90, 180, 270
     */
    fun setDeviceRotation(degrees: Int) {
        deviceRotation = degrees
        // CameraX 会自动处理旋转，但我们仍需保存用于拍照时的方向
        imageCapture?.targetRotation = when (degrees) {
            90 -> Surface.ROTATION_270
            180 -> Surface.ROTATION_180
            270 -> Surface.ROTATION_90
            else -> Surface.ROTATION_0
        }
    }
    
    /**
     * 设置 LUT 强度
     */
    fun setLutIntensity(intensity: Float) {
        _state.value = _state.value.copy(lutIntensity = intensity)
    }
    
    /**
     * 点击对焦
     */
    fun focusOnPoint(x: Float, y: Float, viewWidth: Int, viewHeight: Int) {
        val cam = camera ?: return
        
        _state.value = _state.value.copy(
            focusPoint = Pair(x / viewWidth, y / viewHeight),
            isFocusing = true,
            focusSuccess = null
        )
        
        // 使用 CameraX 的 MeteringPointFactory 和 FocusMeteringAction
        val factory = SurfaceOrientedMeteringPointFactory(viewWidth.toFloat(), viewHeight.toFloat())
        val point = factory.createPoint(x, y)
        
        val action = FocusMeteringAction.Builder(point, FocusMeteringAction.FLAG_AF or FocusMeteringAction.FLAG_AE)
            .setAutoCancelDuration(3, java.util.concurrent.TimeUnit.SECONDS)
            .build()
        
        cam.cameraControl.startFocusAndMetering(action).addListener({
            try {
                val result = cam.cameraControl.startFocusAndMetering(action).get()
                _state.value = _state.value.copy(
                    isFocusing = false,
                    focusSuccess = result.isFocusSuccessful
                )
            } catch (e: Exception) {
                Log.e(TAG, "Focus failed", e)
                _state.value = _state.value.copy(isFocusing = false, focusSuccess = false)
            }
        }, ContextCompat.getMainExecutor(context))
    }
    
    /**
     * 切换摄像头
     */
    fun switchCamera() {
        val cameras = _state.value.availableCameras
        val currentLensType = _state.value.currentLensType
        
        val nextLensType = if (currentLensType == LensType.FRONT) {
            LensType.BACK_MAIN
        } else {
            LensType.FRONT
        }
        
        val nextCamera = cameras.find { it.lensType == nextLensType }
        
        nextCamera?.let { camera ->
            _state.value = _state.value.copy(
                currentCameraId = camera.cameraId,
                currentLensType = camera.lensType,
                zoomRatio = 1f // 重置变焦
            )
            
            // 重新绑定相机
            lifecycleOwner?.let { owner ->
                currentSurfaceProvider?.let { provider ->
                    bindCamera(owner, provider)
                }
            }
        }
    }
    
    /**
     * 拍照
     */
    fun capture() {
        val imageCapture = imageCapture ?: return
        
        _state.value = _state.value.copy(isCapturing = true)
        
        imageCapture.takePicture(
            cameraExecutor,
            object : ImageCapture.OnImageCapturedCallback() {
                override fun onCaptureSuccess(image: ImageProxy) {
                    val buffer = image.planes[0].buffer
                    val bytes = ByteArray(buffer.remaining())
                    buffer.get(bytes)
                    image.close()
                    
                    _state.value = _state.value.copy(isCapturing = false)
                    onImageCaptured?.invoke(bytes)
                }
                
                override fun onError(exception: ImageCaptureException) {
                    Log.e(TAG, "Capture failed", exception)
                    _state.value = _state.value.copy(isCapturing = false)
                }
            }
        )
    }
    
    /**
     * 检查相机状态并在必要时恢复
     * 用于从后台切换回 App 时调用
     */
    fun checkAndRecoverCamera() {
        // CameraX 自动处理生命周期，一般不需要手动恢复
        // 但如果预览不活跃，尝试重新绑定
        if (!_state.value.isPreviewActive) {
            Log.d(TAG, "Preview not active, attempting to recover...")
            lifecycleOwner?.let { owner ->
                currentSurfaceProvider?.let { provider ->
                    bindCamera(owner, provider)
                }
            }
        }
    }
    
    /**
     * 关闭相机
     */
    fun closeCamera() {
        try {
            cameraProvider?.unbindAll()
            camera = null
            preview = null
            imageCapture = null
            _state.value = _state.value.copy(isPreviewActive = false)
        } catch (e: Exception) {
            Log.e(TAG, "Error closing camera", e)
        }
    }
    
    /**
     * 释放资源
     */
    fun release() {
        closeCamera()
        cameraExecutor.shutdown()
    }
}
