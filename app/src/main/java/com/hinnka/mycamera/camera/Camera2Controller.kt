package com.hinnka.mycamera.camera

import android.annotation.SuppressLint
import android.content.Context
import android.graphics.ImageFormat
import android.graphics.SurfaceTexture
import android.hardware.camera2.*
import android.hardware.camera2.params.OutputConfiguration
import android.hardware.camera2.params.SessionConfiguration
import android.media.ImageReader
import android.os.Handler
import android.os.HandlerThread
import android.util.Log
import android.util.Size
import android.view.Surface
import androidx.exifinterface.media.ExifInterface
import com.hinnka.mycamera.utils.BitmapUtils
import com.hinnka.mycamera.utils.BitmapUtils.toByteArray
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import java.io.ByteArrayInputStream
import java.util.concurrent.Executors

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
    }
    
    private val cameraManager: CameraManager by lazy {
        context.getSystemService(Context.CAMERA_SERVICE) as CameraManager
    }
    
    private val cameraDiscovery = CameraDiscovery(context)
    
    private var cameraDevice: CameraDevice? = null
    private var captureSession: CameraCaptureSession? = null
    private var previewRequestBuilder: CaptureRequest.Builder? = null
    
    private var previewSurface: Surface? = null
    private var imageReader: ImageReader? = null
    private var previewImageReader: ImageReader? = null
    
    private var cameraThread: HandlerThread? = null
    private var cameraHandler: Handler? = null
    
    private val _state = MutableStateFlow(CameraState())
    val state: StateFlow<CameraState> = _state.asStateFlow()
    
    // 设备旋转角度
    private var deviceRotation: Int = 0
    
    // 最后一次拍摄结果，用于提取 EXIF 信息
    private var lastCaptureResult: TotalCaptureResult? = null
    
    // 图片拍摄回调（携带 CaptureInfo）
    var onImageCaptured: ((ByteArray, CaptureInfo) -> Unit)? = null
    
    // ==================== 初始化 ====================
    
    /**
     * 初始化相机
     */
    fun initialize() {
        startBackgroundThread()
        discoverCameras()
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
            Log.e(TAG, "Error stopping background thread", e)
        }
    }
    
    /**
     * 发现所有可用摄像头（包括隐藏摄像头）
     */
    private fun discoverCameras() {
        val cameras = cameraDiscovery.discoverAllCameras()
        
        Log.d(TAG, "Discovered ${cameras.size} cameras:")
        cameras.forEach { cam ->
            Log.d(TAG, "  - ${cam.cameraId}: ${cam.lensType}, intrinsicZoom=${cam.intrinsicZoomRatio}")
        }
        
        // 默认选择主摄
        val defaultCamera = cameras.firstOrNull { it.lensType == LensType.BACK_MAIN }
            ?: cameras.firstOrNull { it.lensFacing == CameraCharacteristics.LENS_FACING_BACK }
            ?: cameras.firstOrNull()
        
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
        val cameraId = _state.value.currentCameraId
        if (cameraId.isEmpty()) {
            Log.e(TAG, "No camera ID set")
            return
        }

        val previewSize = CameraUtils.getFixedPreviewSize(context, cameraId)
        surfaceTexture.setDefaultBufferSize(previewSize.width, previewSize.height)
        
        try {
            // 配置 SurfaceTexture
            previewSurface = Surface(surfaceTexture)
            
            // 创建 ImageReader 用于拍照
            val captureSize = getBestCaptureSize(cameraId)
            imageReader = ImageReader.newInstance(
                captureSize.width,
                captureSize.height,
                ImageFormat.JPEG,
                1
            ).apply {
                setOnImageAvailableListener({ reader ->
                    val image = reader.acquireLatestImage()
                    image?.let {
                        _state.value = _state.value.copy(isCapturing = false)
                        val buffer = it.planes[0].buffer
                        val bytes = ByteArray(buffer.remaining()).also { buffer.get(it) }
                        it.close()

                        val orientation = try {
                            val exif = ExifInterface(ByteArrayInputStream(bytes))
                            exif.getAttributeInt(ExifInterface.TAG_ORIENTATION, ExifInterface.ORIENTATION_NORMAL)
                        } catch (e: Exception) {
                            ExifInterface.ORIENTATION_NORMAL
                        }

                        // 0. 在源头归一化：物理旋转图片字节流
                        val finalBitmap = BitmapUtils.cropAndRotate(bytes, _state.value.aspectRatio, orientation)

                        val finalWidth = finalBitmap.width
                        val finalHeight = finalBitmap.height

                        val normalizedBytes = finalBitmap.toByteArray()
                        finalBitmap.recycle()

                        // 构建 CaptureInfo
                        val captureInfo = buildCaptureInfo(lastCaptureResult, finalWidth, finalHeight)

                        onImageCaptured?.invoke(normalizedBytes, captureInfo)
                    }
                }, cameraHandler)
            }
            
            // 创建用于直方图计算的预览 ImageReader (低分辨率 YUV)
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
                        
                        for (y in 0 until height) {
                            buffer.position(y * rowStride)
                            buffer.get(rowBuffer, 0, rowStride)
                            for (x in 0 until width) {
                                val value = rowBuffer[x * pixelStride].toInt() and 0xFF
                                histogram[value]++
                            }
                        }
                        _state.value = _state.value.copy(histogram = histogram)
                    } catch (e: Exception) {
                        Log.e(TAG, "Failed to calculate histogram", e)
                    } finally {
                        image.close()
                    }
                }, cameraHandler)
            }
            
            Log.d(TAG, "Opening camera: $cameraId")
            
            cameraManager.openCamera(cameraId, object : CameraDevice.StateCallback() {
                override fun onOpened(camera: CameraDevice) {
                    Log.d(TAG, "Camera opened: ${camera.id}")
                    cameraDevice = camera
                    createPreviewSession()
                }
                
                override fun onDisconnected(camera: CameraDevice) {
                    Log.w(TAG, "Camera disconnected: ${camera.id}")
                    camera.close()
                    cameraDevice = null
                    _state.value = _state.value.copy(isPreviewActive = false)
                }
                
                override fun onError(camera: CameraDevice, error: Int) {
                    Log.e(TAG, "Camera error: ${camera.id}, error=$error")
                    camera.close()
                    cameraDevice = null
                    _state.value = _state.value.copy(isPreviewActive = false)
                }
            }, cameraHandler)
            
        } catch (e: CameraAccessException) {
            Log.e(TAG, "Failed to open camera", e)
        } catch (e: SecurityException) {
            Log.e(TAG, "Camera permission denied", e)
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
            // 创建预览请求
            previewRequestBuilder = device.createCaptureRequest(CameraDevice.TEMPLATE_PREVIEW).apply {
                addTarget(surface)
                
                // 设置连续自动对焦
                set(CaptureRequest.CONTROL_AF_MODE, CaptureRequest.CONTROL_AF_MODE_CONTINUOUS_PICTURE)
                
                // 设置自动曝光
                set(CaptureRequest.CONTROL_AE_MODE, CaptureRequest.CONTROL_AE_MODE_ON)
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
                        Log.e(TAG, "Session configuration failed")
                    }
                }
            )
            device.createCaptureSession(sessionConfig)

        } catch (e: CameraAccessException) {
            Log.e(TAG, "Failed to create preview session", e)
        }
    }
    
    private fun onSessionConfigured(session: CameraCaptureSession) {
        captureSession = session
        
        try {
            // 开始预览
            previewRequestBuilder?.let { builder ->
                previewImageReader?.surface?.let { builder.addTarget(it) }
                session.setRepeatingRequest(builder.build(), null, cameraHandler)
            }
            
            _state.value = _state.value.copy(isPreviewActive = true)
            Log.d(TAG, "Preview started")
            
        } catch (e: CameraAccessException) {
            Log.e(TAG, "Failed to start preview", e)
        }
    }
    
    /**
     * 获取最佳拍照尺寸
     */
    private fun getBestCaptureSize(cameraId: String): Size {
        return try {
            val characteristics = cameraManager.getCameraCharacteristics(cameraId)
            val map = characteristics.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP)
            val sizes = map?.getOutputSizes(ImageFormat.JPEG) ?: arrayOf(Size(1920, 1080))
            
            // 选择最大的尺寸
            sizes.maxByOrNull { it.width * it.height } ?: Size(1920, 1080)
        } catch (e: Exception) {
            Log.e(TAG, "Failed to get capture size", e)
            Size(1920, 1080)
        }
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
            Log.d(TAG, "Switching to lens: $lensType, cameraId: ${cam.cameraId}")
            
            // 关闭当前相机
            closeCamera()
            
            // 更新状态
            _state.value = _state.value.copy(
                currentCameraId = cam.cameraId,
                currentLensType = cam.lensType,
                zoomRatio = 1f
            )
            
            // 注意：需要外部重新调用 openCamera
        } ?: Log.w(TAG, "Camera with lens type $lensType not found")
    }
    
    /**
     * 切换到指定的相机 ID
     */
    fun switchToCameraId(cameraId: String) {
        val cameras = _state.value.availableCameras
        val targetCamera = cameras.find { it.cameraId == cameraId }
        
        targetCamera?.let { cam ->
            Log.d(TAG, "Switching to camera ID: $cameraId")
            
            // 关闭当前相机
            closeCamera()
            
            // 更新状态
            _state.value = _state.value.copy(
                currentCameraId = cam.cameraId,
                currentLensType = cam.lensType,
                zoomRatio = 1f
            )
        } ?: Log.w(TAG, "Camera with ID $cameraId not found")
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
            set(CaptureRequest.CONTROL_AE_EXPOSURE_COMPENSATION, clampedValue)
            updatePreview()
        }
    }
    
    /**
     * 设置自动曝光模式
     */
    fun setAutoExposure(enabled: Boolean) {
        _state.value = _state.value.copy(isAutoExposure = enabled)
        
        previewRequestBuilder?.apply {
            if (enabled) {
                set(CaptureRequest.CONTROL_AE_MODE, CaptureRequest.CONTROL_AE_MODE_ON)
            } else {
                set(CaptureRequest.CONTROL_AE_MODE, CaptureRequest.CONTROL_AE_MODE_OFF)
                // 应用当前的 ISO 和快门速度
                set(CaptureRequest.SENSOR_SENSITIVITY, _state.value.iso)
                set(CaptureRequest.SENSOR_EXPOSURE_TIME, _state.value.shutterSpeed)
            }
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
            isAutoExposure = false
        )
        
        previewRequestBuilder?.apply {
            set(CaptureRequest.CONTROL_AE_MODE, CaptureRequest.CONTROL_AE_MODE_OFF)
            set(CaptureRequest.SENSOR_SENSITIVITY, clampedValue)
            updatePreview()
        }
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
        
        previewRequestBuilder?.apply {
            set(CaptureRequest.CONTROL_AE_MODE, CaptureRequest.CONTROL_AE_MODE_OFF)
            set(CaptureRequest.SENSOR_EXPOSURE_TIME, clampedValue)
            updatePreview()
        }
    }
    
    /**
     * 更新预览
     */
    private fun updatePreview() {
        try {
            previewRequestBuilder?.let { builder ->
                captureSession?.setRepeatingRequest(builder.build(), null, cameraHandler)
            }
        } catch (e: CameraAccessException) {
            Log.e(TAG, "Failed to update preview", e)
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
            val characteristics = cameraManager.getCameraCharacteristics(cameraId)
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
            
            Log.d(TAG, "setZoomRatio: $ratio -> $clampedRatio")
            
        } catch (e: Exception) {
            Log.e(TAG, "Failed to set zoom", e)
        }
    }
    
    // ==================== 对焦控制 ====================
    
    /**
     * 点击对焦
     */
    fun focusOnPoint(x: Float, y: Float, viewWidth: Int, viewHeight: Int) {
        val cameraId = _state.value.currentCameraId
        if (cameraId.isEmpty()) return
        
        _state.value = _state.value.copy(
            focusPoint = Pair(x / viewWidth, y / viewHeight),
            isFocusing = true,
            focusSuccess = null
        )
        
        try {
            val characteristics = cameraManager.getCameraCharacteristics(cameraId)
            val activeRect = characteristics.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE) ?: return
            
            // 计算对焦区域
            val focusX = (x / viewWidth * activeRect.width()).toInt()
            val focusY = (y / viewHeight * activeRect.height()).toInt()
            val focusSize = (activeRect.width() * 0.1f).toInt()
            
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
            
            previewRequestBuilder?.apply {
                set(CaptureRequest.CONTROL_AF_REGIONS, arrayOf(meteringRectangle))
                set(CaptureRequest.CONTROL_AE_REGIONS, arrayOf(meteringRectangle))
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
                _state.value = _state.value.copy(isFocusing = false, focusSuccess = true)
            }, 2000)
            
        } catch (e: Exception) {
            Log.e(TAG, "Failed to focus", e)
            _state.value = _state.value.copy(isFocusing = false, focusSuccess = false)
        }
    }
    
    // ==================== 其他设置 ====================
    
    /**
     * 设置画面比例
     */
    fun setAspectRatio(ratio: AspectRatio) {
        _state.value = _state.value.copy(aspectRatio = ratio)
    }
    
    /**
     * 设置设备旋转角度
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
    
    // ==================== 拍照 ====================
    
    /**
     * 拍照
     */
    fun capture() {
        val device = cameraDevice ?: return
        val reader = imageReader ?: return
        
        _state.value = _state.value.copy(isCapturing = true)
        
        try {
            val captureBuilder = device.createCaptureRequest(CameraDevice.TEMPLATE_STILL_CAPTURE).apply {
                addTarget(reader.surface)
                
                // 复制预览设置
                previewRequestBuilder?.let { preview ->
                    set(CaptureRequest.CONTROL_AE_MODE, preview.get(CaptureRequest.CONTROL_AE_MODE))
                    set(CaptureRequest.SCALER_CROP_REGION, preview.get(CaptureRequest.SCALER_CROP_REGION))
                    
                    if (_state.value.isAutoExposure) {
                        set(CaptureRequest.CONTROL_AE_EXPOSURE_COMPENSATION, _state.value.exposureCompensation)
                    } else {
                        set(CaptureRequest.SENSOR_SENSITIVITY, _state.value.iso)
                        set(CaptureRequest.SENSOR_EXPOSURE_TIME, _state.value.shutterSpeed)
                    }
                }
                
                // 设置 JPEG 方向
                set(CaptureRequest.JPEG_ORIENTATION, getJpegOrientation())
                set(CaptureRequest.JPEG_QUALITY, 95.toByte())
            }
            
            captureSession?.capture(captureBuilder.build(), object : CameraCaptureSession.CaptureCallback() {
                override fun onCaptureCompleted(
                    session: CameraCaptureSession,
                    request: CaptureRequest,
                    result: TotalCaptureResult
                ) {
                    // 保存拍摄结果用于提取 EXIF
                    lastCaptureResult = result
                    Log.d(TAG, "Capture completed")
                }
                
                override fun onCaptureFailed(
                    session: CameraCaptureSession,
                    request: CaptureRequest,
                    failure: CaptureFailure
                ) {
                    Log.e(TAG, "Capture failed: ${failure.reason}")
                    _state.value = _state.value.copy(isCapturing = false)
                }
            }, cameraHandler)
            
        } catch (e: CameraAccessException) {
            Log.e(TAG, "Failed to capture", e)
            _state.value = _state.value.copy(isCapturing = false)
        }
    }
    
    /**
     * 获取 JPEG 方向
     */
    private fun getJpegOrientation(): Int {
        val cameraId = _state.value.currentCameraId
        if (cameraId.isEmpty()) return 0
        
        return try {
            val characteristics = cameraManager.getCameraCharacteristics(cameraId)
            val sensorOrientation = characteristics.get(CameraCharacteristics.SENSOR_ORIENTATION) ?: 0
            val lensFacing = characteristics.get(CameraCharacteristics.LENS_FACING)
            
            // 根据设备方向和传感器方向计算 JPEG 方向
            val surfaceRotation = deviceRotation
            val jpegOrientation = if (lensFacing == CameraCharacteristics.LENS_FACING_FRONT) {
                (sensorOrientation - surfaceRotation + 360) % 360
            } else {
                (sensorOrientation + surfaceRotation) % 360
            }
            
            jpegOrientation
        } catch (e: Exception) {
            0
        }
    }
    
    /**
     * 构建 CaptureInfo
     * 
     * 从 TotalCaptureResult 和 CameraCharacteristics 提取拍摄信息
     */
    private fun buildCaptureInfo(
        result: TotalCaptureResult?,
        imageWidth: Int,
        imageHeight: Int
    ): CaptureInfo {
        val cameraId = _state.value.currentCameraId
        
        // 从 CameraCharacteristics 获取镜头固定信息
        var aperture: Float? = null
        var focalLength: Float? = null
        var focalLength35mm: Int? = null
        
        try {
            val characteristics = cameraManager.getCameraCharacteristics(cameraId)
            
            // 光圈值（取第一个可用光圈）
            val apertures = characteristics.get(CameraCharacteristics.LENS_INFO_AVAILABLE_APERTURES)
            aperture = apertures?.firstOrNull()
            
            // 焦距（取第一个可用焦距）
            val focalLengths = characteristics.get(CameraCharacteristics.LENS_INFO_AVAILABLE_FOCAL_LENGTHS)
            focalLength = focalLengths?.firstOrNull()
            
            // 计算等效35mm焦距
            focalLength?.let { fl ->
                focalLength35mm = calculate35mmEquivalent(characteristics, fl)
            }
        } catch (e: Exception) {
            Log.e(TAG, "Failed to get camera characteristics for EXIF", e)
        }
        
        // 从 TotalCaptureResult 获取曝光信息
        val exposureTime = result?.get(CaptureResult.SENSOR_EXPOSURE_TIME)
        val iso = result?.get(CaptureResult.SENSOR_SENSITIVITY)
        val whiteBalance = result?.get(CaptureResult.CONTROL_AWB_MODE)
        val flashState = result?.get(CaptureResult.FLASH_STATE)
        
        // 如果有实时的光圈/焦距，使用实时值
        result?.get(CaptureResult.LENS_APERTURE)?.let { aperture = it }
        result?.get(CaptureResult.LENS_FOCAL_LENGTH)?.let { 
            focalLength = it
            // 重新计算35mm等效焦距
            try {
                val characteristics = cameraManager.getCameraCharacteristics(cameraId)
                focalLength35mm = calculate35mmEquivalent(characteristics, it)
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
            // 由于我们在 setOnImageAvailableListener 中已经对 bytes 进行了归一化，
            // 传给下游的方向永远是 NORMAL (1)
            orientation = ExifInterface.ORIENTATION_NORMAL,
            imageWidth = imageWidth,
            imageHeight = imageHeight,
            captureTime = System.currentTimeMillis()
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
     * 检查相机状态并在必要时恢复
     */
    fun checkAndRecoverCamera() {
        if (!_state.value.isPreviewActive && cameraDevice == null) {
            Log.d(TAG, "Camera not active, may need to reopen")
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
            
            previewImageReader?.close()
            previewImageReader = null
            
            previewSurface = null
            previewRequestBuilder = null
            
            _state.value = _state.value.copy(isPreviewActive = false)
            
            Log.d(TAG, "Camera closed")
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
        cameraDiscovery.clearCache()
    }
}
