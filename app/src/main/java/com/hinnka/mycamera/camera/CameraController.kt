package com.hinnka.mycamera.camera

import android.annotation.SuppressLint
import android.content.Context
import android.graphics.ImageFormat
import android.hardware.camera2.*
import android.hardware.camera2.params.MeteringRectangle
import android.hardware.camera2.params.OutputConfiguration
import android.hardware.camera2.params.SessionConfiguration
import android.media.ImageReader
import android.os.Build
import android.os.Handler
import android.os.HandlerThread
import android.util.Log
import android.view.Surface
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import java.util.concurrent.Executors

/**
 * Camera2 API 核心控制器
 */
class CameraController(private val context: Context) {
    
    companion object {
        private const val TAG = "CameraController"
    }
    
    private val cameraManager = context.getSystemService(Context.CAMERA_SERVICE) as CameraManager
    
    private var cameraDevice: CameraDevice? = null
    private var captureSession: CameraCaptureSession? = null
    private var previewRequestBuilder: CaptureRequest.Builder? = null
    
    private var previewSurface: Surface? = null
    private var imageReader: ImageReader? = null
    
    private var backgroundThread: HandlerThread? = null
    private var backgroundHandler: Handler? = null
    
    private val _state = MutableStateFlow(CameraState())
    val state: StateFlow<CameraState> = _state.asStateFlow()
    
    // 设备旋转角度（由 ViewModel 更新）
    private var deviceRotation: Int = 0
    
    // 图片拍摄回调
    var onImageCaptured: ((ByteArray) -> Unit)? = null
    
    /**
     * 初始化相机
     */
    fun initialize() {
        startBackgroundThread()
        val cameras = CameraUtils.getAvailableCameras(context)
        val defaultCameraId = CameraUtils.getDefaultBackCameraId(cameras) ?: cameras.firstOrNull()?.cameraId ?: ""
        
        _state.value = _state.value.copy(
            availableCameras = cameras,
            currentCameraId = defaultCameraId,
            currentLensType = if (cameras.find { it.cameraId == defaultCameraId }?.lensFacing == CameraCharacteristics.LENS_FACING_FRONT) {
                LensType.FRONT
            } else {
                LensType.BACK_MAIN
            }
        )
    }
    
    /**
     * 打开相机并开始预览
     */
    @SuppressLint("MissingPermission")
    fun openCamera(surface: Surface) {
        val cameraId = _state.value.currentCameraId
        if (cameraId.isEmpty()) {
            Log.e(TAG, "No camera available")
            return
        }
        
        previewSurface = surface
        
        // 创建 ImageReader 用于拍照
        val captureSize = CameraUtils.getOptimalCaptureSize(
            context, 
            cameraId, 
            _state.value.aspectRatio.getValue(true)
        )
        imageReader = ImageReader.newInstance(
            captureSize.width,
            captureSize.height,
            ImageFormat.JPEG,
            2
        ).apply {
            setOnImageAvailableListener({ reader ->
                val image = reader.acquireLatestImage()
                image?.let {
                    val buffer = it.planes[0].buffer
                    val bytes = ByteArray(buffer.remaining())
                    buffer.get(bytes)
                    onImageCaptured?.invoke(bytes)
                    it.close()
                }
            }, backgroundHandler)
        }
        
        try {
            cameraManager.openCamera(cameraId, object : CameraDevice.StateCallback() {
                override fun onOpened(camera: CameraDevice) {
                    Log.d(TAG, "Camera opened: $cameraId")
                    cameraDevice = camera
                    createCaptureSession()
                }
                
                override fun onDisconnected(camera: CameraDevice) {
                    Log.d(TAG, "Camera disconnected")
                    camera.close()
                    cameraDevice = null
                }
                
                override fun onError(camera: CameraDevice, error: Int) {
                    Log.e(TAG, "Camera error: $error")
                    camera.close()
                    cameraDevice = null
                }
            }, backgroundHandler)
        } catch (e: CameraAccessException) {
            Log.e(TAG, "Failed to open camera", e)
        }
    }
    
    /**
     * 创建拍摄会话
     */
    private fun createCaptureSession() {
        val device = cameraDevice ?: return
        val surface = previewSurface ?: return
        val reader = imageReader ?: return
        
        try {
            previewRequestBuilder = device.createCaptureRequest(CameraDevice.TEMPLATE_PREVIEW).apply {
                addTarget(surface)
                // 设置自动对焦
                set(CaptureRequest.CONTROL_AF_MODE, CaptureRequest.CONTROL_AF_MODE_CONTINUOUS_PICTURE)
                // 设置自动曝光
                set(CaptureRequest.CONTROL_AE_MODE, CaptureRequest.CONTROL_AE_MODE_ON)
            }
            
            val surfaces = listOf(surface, reader.surface)
            
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P) {
                val outputConfigs = surfaces.map { OutputConfiguration(it) }
                val sessionConfig = SessionConfiguration(
                    SessionConfiguration.SESSION_REGULAR,
                    outputConfigs,
                    Executors.newSingleThreadExecutor(),
                    object : CameraCaptureSession.StateCallback() {
                        override fun onConfigured(session: CameraCaptureSession) {
                            captureSession = session
                            startPreview()
                        }
                        
                        override fun onConfigureFailed(session: CameraCaptureSession) {
                            Log.e(TAG, "Session configuration failed")
                        }
                    }
                )
                device.createCaptureSession(sessionConfig)
            } else {
                @Suppress("DEPRECATION")
                device.createCaptureSession(surfaces, object : CameraCaptureSession.StateCallback() {
                    override fun onConfigured(session: CameraCaptureSession) {
                        captureSession = session
                        startPreview()
                    }
                    
                    override fun onConfigureFailed(session: CameraCaptureSession) {
                        Log.e(TAG, "Session configuration failed")
                    }
                }, backgroundHandler)
            }
        } catch (e: CameraAccessException) {
            Log.e(TAG, "Failed to create capture session", e)
        }
    }
    
    /**
     * 开始预览
     */
    private fun startPreview() {
        val session = captureSession ?: return
        val builder = previewRequestBuilder ?: return
        
        try {
            applySettings(builder)
            session.setRepeatingRequest(builder.build(), null, backgroundHandler)
            _state.value = _state.value.copy(isPreviewActive = true)
        } catch (e: CameraAccessException) {
            Log.e(TAG, "Failed to start preview", e)
        } catch (e: IllegalStateException) {
            Log.e(TAG, "Failed to start preview", e)
            checkAndRecoverCamera()
        }
    }
    
    /**
     * 应用当前设置到请求构建器
     */
    private fun applySettings(builder: CaptureRequest.Builder) {
        val state = _state.value
        val cameraInfo = state.getCurrentCameraInfo() ?: return
        
        // 曝光补偿
        builder.set(CaptureRequest.CONTROL_AE_EXPOSURE_COMPENSATION, state.exposureCompensation)
        
        // 手动曝光
        if (!state.isAutoExposure) {
            builder.set(CaptureRequest.CONTROL_AE_MODE, CaptureRequest.CONTROL_AE_MODE_OFF)
            builder.set(CaptureRequest.SENSOR_SENSITIVITY, state.iso)
            builder.set(CaptureRequest.SENSOR_EXPOSURE_TIME, state.shutterSpeed)
        } else {
            builder.set(CaptureRequest.CONTROL_AE_MODE, CaptureRequest.CONTROL_AE_MODE_ON)
        }
        
        // 变焦
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            builder.set(CaptureRequest.CONTROL_ZOOM_RATIO, state.zoomRatio)
        } else {
            cameraInfo.activeArraySize?.let { arraySize ->
                val cropRegion = CameraUtils.calculateCropRegion(arraySize, state.zoomRatio)
                builder.set(CaptureRequest.SCALER_CROP_REGION, cropRegion)
            }
        }
    }
    
    /**
     * 更新预览设置
     */
    private fun updatePreview() {
        val session = captureSession ?: return
        val builder = previewRequestBuilder ?: return
        
        try {
            applySettings(builder)
            session.setRepeatingRequest(builder.build(), null, backgroundHandler)
        } catch (e: CameraAccessException) {
            Log.e(TAG, "Failed to update preview", e)
        }
    }
    
    /**
     * 设置曝光补偿
     */
    fun setExposureCompensation(value: Int) {
        val range = _state.value.getExposureCompensationRange()
        val clampedValue = value.coerceIn(range.lower, range.upper)
        _state.value = _state.value.copy(exposureCompensation = clampedValue)
        updatePreview()
    }
    
    /**
     * 设置自动曝光模式
     */
    fun setAutoExposure(enabled: Boolean) {
        _state.value = _state.value.copy(isAutoExposure = enabled)
        updatePreview()
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
        updatePreview()
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
        updatePreview()
    }
    
    /**
     * 设置变焦倍数
     */
    fun setZoomRatio(ratio: Float) {
        val maxZoom = _state.value.getMaxZoom()
        val clampedRatio = ratio.coerceIn(1f, maxZoom)
        _state.value = _state.value.copy(zoomRatio = clampedRatio)
        updatePreview()
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
        val session = captureSession ?: return
        val builder = previewRequestBuilder ?: return
        val cameraInfo = _state.value.getCurrentCameraInfo() ?: return
        val sensorArraySize = cameraInfo.activeArraySize ?: return
        
        _state.value = _state.value.copy(
            focusPoint = Pair(x / viewWidth, y / viewHeight),
            isFocusing = true,
            focusSuccess = null
        )
        
        val isFrontCamera = cameraInfo.lensFacing == CameraCharacteristics.LENS_FACING_FRONT
        val focusRegion = CameraUtils.convertTouchToSensorCoordinates(
            x, y, viewWidth, viewHeight,
            sensorArraySize,
            cameraInfo.sensorOrientation,
            isFrontCamera
        )
        
        try {
            // 停止连续对焦
            builder.set(CaptureRequest.CONTROL_AF_MODE, CaptureRequest.CONTROL_AF_MODE_AUTO)
            builder.set(CaptureRequest.CONTROL_AF_REGIONS, arrayOf(MeteringRectangle(focusRegion, MeteringRectangle.METERING_WEIGHT_MAX)))
            builder.set(CaptureRequest.CONTROL_AE_REGIONS, arrayOf(MeteringRectangle(focusRegion, MeteringRectangle.METERING_WEIGHT_MAX)))
            
            // 触发对焦
            builder.set(CaptureRequest.CONTROL_AF_TRIGGER, CaptureRequest.CONTROL_AF_TRIGGER_START)
            
            session.capture(builder.build(), object : CameraCaptureSession.CaptureCallback() {
                override fun onCaptureCompleted(
                    session: CameraCaptureSession,
                    request: CaptureRequest,
                    result: TotalCaptureResult
                ) {
                    val afState = result.get(CaptureResult.CONTROL_AF_STATE)
                    val focusSuccess = afState == CaptureResult.CONTROL_AF_STATE_FOCUSED_LOCKED ||
                            afState == CaptureResult.CONTROL_AF_STATE_PASSIVE_FOCUSED
                    
                    _state.value = _state.value.copy(
                        isFocusing = false,
                        focusSuccess = focusSuccess
                    )
                    
                    // 重置为连续对焦
                    builder.set(CaptureRequest.CONTROL_AF_TRIGGER, CaptureRequest.CONTROL_AF_TRIGGER_IDLE)
                    builder.set(CaptureRequest.CONTROL_AF_MODE, CaptureRequest.CONTROL_AF_MODE_CONTINUOUS_PICTURE)
                    
                    try {
                        session.setRepeatingRequest(builder.build(), null, backgroundHandler)
                    } catch (e: CameraAccessException) {
                        Log.e(TAG, "Failed to reset focus mode", e)
                    }
                }
            }, backgroundHandler)
            
        } catch (e: CameraAccessException) {
            Log.e(TAG, "Failed to focus", e)
            _state.value = _state.value.copy(isFocusing = false, focusSuccess = false)
        }
    }
    
    /**
     * 切换摄像头
     */
    fun switchCamera() {
        val cameras = _state.value.availableCameras
        val currentCameraId = _state.value.currentCameraId
        
        // 找到下一个摄像头
        val currentCamera = cameras.find { it.cameraId == currentCameraId }
        val nextCamera = if (currentCamera?.lensFacing == CameraCharacteristics.LENS_FACING_BACK) {
            // 当前是后置，切换到前置
            cameras.find { it.lensFacing == CameraCharacteristics.LENS_FACING_FRONT }
        } else {
            // 当前是前置，切换到后置
            cameras.find { it.lensFacing == CameraCharacteristics.LENS_FACING_BACK }
        }
        
        nextCamera?.let { camera ->
            _state.value = _state.value.copy(
                currentCameraId = camera.cameraId,
                currentLensType = camera.lensType,
                zoomRatio = 1f // 重置变焦
            )
            reopenCamera()
        }
    }
    
    /**
     * 拍照
     */
    fun capture() {
        val device = cameraDevice ?: return
        val session = captureSession ?: return
        val reader = imageReader ?: return
        val cameraInfo = _state.value.getCurrentCameraInfo() ?: return
        
        _state.value = _state.value.copy(isCapturing = true)
        
        try {
            val captureBuilder = device.createCaptureRequest(CameraDevice.TEMPLATE_STILL_CAPTURE).apply {
                addTarget(reader.surface)
                
                // 应用相同的设置
                applySettings(this)
                
                // 设置 JPEG 方向
                val isFrontCamera = cameraInfo.lensFacing == CameraCharacteristics.LENS_FACING_FRONT
                val jpegRotation = CameraUtils.computeImageRotation(
                    cameraInfo.sensorOrientation,
                    deviceRotation,
                    isFrontCamera
                )
                set(CaptureRequest.JPEG_ORIENTATION, jpegRotation)
                
                // 使用最高质量
                set(CaptureRequest.JPEG_QUALITY, 95.toByte())
            }
            
            session.stopRepeating()
            session.capture(captureBuilder.build(), object : CameraCaptureSession.CaptureCallback() {
                override fun onCaptureCompleted(
                    session: CameraCaptureSession,
                    request: CaptureRequest,
                    result: TotalCaptureResult
                ) {
                    _state.value = _state.value.copy(isCapturing = false)
                    startPreview()
                }
                
                override fun onCaptureFailed(
                    session: CameraCaptureSession,
                    request: CaptureRequest,
                    failure: CaptureFailure
                ) {
                    Log.e(TAG, "Capture failed")
                    _state.value = _state.value.copy(isCapturing = false)
                    startPreview()
                }
            }, backgroundHandler)
            
        } catch (e: CameraAccessException) {
            Log.e(TAG, "Failed to capture", e)
            _state.value = _state.value.copy(isCapturing = false)
        }
    }
    
    /**
     * 重新打开相机
     */
    private fun reopenCamera() {
        closeCamera()
        previewSurface?.let { surface ->
            openCamera(surface)
        }
    }
    
    /**
     * 检查相机状态并在必要时恢复
     * 用于从后台切换回 App 时调用
     */
    fun checkAndRecoverCamera() {
        // 检查 CameraDevice 和 CaptureSession 是否有效
        val needRecover = when {
            cameraDevice == null -> {
                Log.d(TAG, "CameraDevice is null, need to recover")
                true
            }
            captureSession == null -> {
                Log.d(TAG, "CaptureSession is null, need to recover")
                true
            }
            !_state.value.isPreviewActive -> {
                Log.d(TAG, "Preview is not active, need to recover")
                true
            }
            else -> {
                // 尝试发送一个捕获请求来验证 session 是否有效
                try {
                    previewRequestBuilder?.let { builder ->
                        captureSession?.capture(builder.build(), null, backgroundHandler)
                    }
                    false
                } catch (e: CameraAccessException) {
                    Log.w(TAG, "Session is invalid, need to recover", e)
                    true
                } catch (e: IllegalStateException) {
                    Log.w(TAG, "Session is in invalid state, need to recover", e)
                    true
                }
            }
        }
        
        if (needRecover) {
            Log.d(TAG, "Recovering camera...")
            reopenCamera()
        }
    }
    
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
        stopBackgroundThread()
    }
    
    private fun startBackgroundThread() {
        backgroundThread = HandlerThread("CameraBackground").also { it.start() }
        backgroundHandler = Handler(backgroundThread!!.looper)
    }
    
    private fun stopBackgroundThread() {
        backgroundThread?.quitSafely()
        try {
            backgroundThread?.join()
            backgroundThread = null
            backgroundHandler = null
        } catch (e: InterruptedException) {
            Log.e(TAG, "Error stopping background thread", e)
        }
    }
}
