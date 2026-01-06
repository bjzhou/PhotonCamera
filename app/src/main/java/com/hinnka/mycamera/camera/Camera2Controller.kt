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
import android.util.Log
import android.util.Size
import android.view.Surface
import androidx.exifinterface.media.ExifInterface
import com.hinnka.mycamera.utils.OrientationObserver
import com.hinnka.mycamera.utils.YuvProcessor
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import java.util.concurrent.Executors
import kotlin.math.abs
import kotlin.math.ln
import kotlin.math.pow


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
    
    private var meteringSkipFrames = 0 // Frame skip counter for software metering stabilization
    
    private var cameraThread: HandlerThread? = null
    private var cameraHandler: Handler? = null
    
    private val _state = MutableStateFlow(CameraState())
    val state: StateFlow<CameraState> = _state.asStateFlow()
    
    // 最后一次拍摄结果，用于提取 EXIF 信息
    private var lastCaptureResult: TotalCaptureResult? = null
    
    // 图片拍摄回调（携带 CaptureInfo）
    var onImageCaptured: ((Image, CaptureInfo) -> Unit)? = null
    
    // 快门音效播放回调
    var onPlayShutterSound: (() -> Unit)? = null
    
    // 预览帧捕获回调（用于 LUT 预览生成）
    var onPreviewFrameCaptured: ((Bitmap) -> Unit)? = null
    private var shouldCapturePreviewFrame = false

    private val previewCallback = object : CameraCaptureSession.CaptureCallback() {
        override fun onCaptureCompleted(
            session: CameraCaptureSession,
            request: CaptureRequest,
            result: TotalCaptureResult
        ) {
            super.onCaptureCompleted(session, request, result)

            // 获取相机实际使用的参数
            val actualIso = result.get(CaptureResult.SENSOR_SENSITIVITY)
            val actualExposureTimeNs = result.get(CaptureResult.SENSOR_EXPOSURE_TIME)
            val aeMode = result.get(CaptureResult.CONTROL_AE_MODE)
            val isAutoExposure = aeMode == CaptureResult.CONTROL_AE_MODE_ON || aeMode == CaptureResult.CONTROL_AE_MODE_ON_AUTO_FLASH
            val exposureCompensation = result.get(CaptureResult.CONTROL_AE_EXPOSURE_COMPENSATION) ?: 0
            val awbMode = result.get(CaptureResult.CONTROL_AWB_MODE) ?: CameraMetadata.CONTROL_AWB_MODE_AUTO
            val aperture = result.get(CaptureResult.LENS_APERTURE)

            // 关键修复：只在自动曝光模式下更新 ISO 和快门速度
            // 手动模式下保持用户设置不变（因为预览使用的是限制后的曝光时间，不是用户设置的值）
            _state.value = _state.value.copy(
                iso = if (isAutoExposure) actualIso ?: 100 else _state.value.iso,
                shutterSpeed = if (isAutoExposure) actualExposureTimeNs ?: (1_000_000_000L / 60) else _state.value.shutterSpeed,
                exposureCompensation = exposureCompensation,
                awbMode = awbMode,
                aperture = aperture ?: 2f,
            )
        }
    }
    
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

//            val characteristics = cameraManager.getCameraCharacteristics(cameraId)
//            HighResolutionHelper.logResolutionCapabilities(characteristics)
            
            // 创建 ImageReader 用于拍照 (使用 YUV 格式)
            val captureSize = getBestCaptureSize(cameraId)
            imageReader = ImageReader.newInstance(
                captureSize.width,
                captureSize.height,
                ImageFormat.YUV_420_888,
                2
            ).apply {
                setOnImageAvailableListener({ reader ->
                    val image = reader.acquireLatestImage()
                    image?.let {
                        _state.value = _state.value.copy(isCapturing = false)
                        val width = it.width
                        val height = it.height

                        // 构建 CaptureInfo (包含正确的传感器方向)
                        val captureInfo = buildCaptureInfo(lastCaptureResult, width, height)

                        // 传递完整的 Image 对象和 CaptureInfo
                        // 注意：调用者负责关闭 Image
                        onImageCaptured?.invoke(it, captureInfo)
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

//                        Log.d(TAG, "avgLum: ${weightedSumLuminance / totalWeight}")
                        
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

                            onPreviewFrameCaptured?.invoke(bitmap)
                            return@setOnImageAvailableListener
                        }
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

                try {
                    previewRequestBuilder?.let { builder ->
                        applyExposureSettings(builder, _state.value, false) // 封装好的设置函数
                        captureSession?.setRepeatingRequest(
                            builder.build(),
                            previewCallback,
                            cameraHandler
                        )
                    }
                    meteringSkipFrames = 5
                } catch (e: Exception) {
                    Log.e(TAG, "Failed to update exposure: ${e.message}")
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
            // 创建预览请求
            previewRequestBuilder = device.createCaptureRequest(CameraDevice.TEMPLATE_PREVIEW).apply {
                addTarget(surface)
                
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
                session.setRepeatingRequest(builder.build(), previewCallback, cameraHandler)
            }
            
            _state.value = _state.value.copy(isPreviewActive = true)
            Log.d(TAG, "Preview started")
            
        } catch (e: CameraAccessException) {
            Log.e(TAG, "Failed to start preview", e)
        } catch (e: IllegalStateException) {
            Log.e(TAG, "Failed to start preview - illegal state", e)
        }
    }

    private fun setupFlatProfileRequest(builder: CaptureRequest.Builder) {
        // 1. 禁用所有场景特效
//        builder.set(CaptureRequest.CONTROL_SCENE_MODE, CaptureRequest.CONTROL_SCENE_MODE_DISABLED)
//        builder.set(CaptureRequest.CONTROL_EFFECT_MODE, CaptureRequest.CONTROL_EFFECT_MODE_OFF)
//        builder.set(CaptureRequest.CONTROL_VIDEO_STABILIZATION_MODE, CaptureRequest.CONTROL_VIDEO_STABILIZATION_MODE_OFF)

        // 2. 强制使用矩阵色彩校正（去除厂商滤镜倾向）
//        builder.set(CaptureRequest.COLOR_CORRECTION_MODE, CaptureRequest.COLOR_CORRECTION_MODE_TRANSFORM_MATRIX)

        // 3. 覆盖 Tone Mapping（关键：去除 S 曲线）
        builder.set(CaptureRequest.TONEMAP_MODE, CaptureRequest.TONEMAP_MODE_PRESET_CURVE)
        builder.set(CaptureRequest.TONEMAP_PRESET_CURVE, CaptureRequest.TONEMAP_PRESET_CURVE_SRGB)
//
//        // 生成标准 Gamma 2.2 曲线 (比纯线性更接近人眼感知的“标准灰片”)
//        // 如果直接用 Linear，画面会极其暗，LUT 很难拉回来
//        val curvePoints = FloatArray(64 * 2) // 64个控制点
//        for (i in 0 until 64) {
//            val input = i / 63.0f
//            val output = input.toDouble().pow(1.0 / 2.2).toFloat() // Gamma 2.2
//            curvePoints[i * 2] = input
//            curvePoints[i * 2 + 1] = output
//        }
//        val gammaCurve = TonemapCurve(curvePoints, curvePoints, curvePoints)
//        builder.set(CaptureRequest.TONEMAP_CURVE, gammaCurve)

        // 4. 关闭锐化
//        builder.set(CaptureRequest.EDGE_MODE, CaptureRequest.EDGE_MODE_OFF)
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
        
        // 3. 闪光灯设置
        applyFlashSettings(builder, currentState)
        
        // 4. 变焦设置
        applyZoomSettings(builder, currentState)
        
        // 5. 色调映射（Flat Profile）
        setupFlatProfileRequest(builder)
    }
    
    /**
     * 应用曝光设置
     */
    private fun applyExposureSettings(builder: CaptureRequest.Builder, state: CameraState, isCapture: Boolean) {
        if (state.isIsoAuto && state.isShutterSpeedAuto) {
            // 全自动曝光 (Both Auto)
            builder.set(CaptureRequest.CONTROL_AE_MODE, CaptureRequest.CONTROL_AE_MODE_ON)
            builder.set(CaptureRequest.CONTROL_AE_EXPOSURE_COMPENSATION, state.exposureCompensation)
        } else {
            // 手动曝光 / 半自动曝光 (Software Metering)
            // 只要有一项是手动，就必须将 AE_MODE 设为 OFF
            builder.set(CaptureRequest.CONTROL_AE_MODE, CaptureRequest.CONTROL_AE_MODE_OFF)
            builder.set(CaptureRequest.SENSOR_SENSITIVITY, state.iso)
            
            // 预览时限制曝光时间，防止画面卡死；拍摄时使用完整的用户设置
            val exposureTime = if (isCapture) {
                state.shutterSpeed
            } else {
                state.shutterSpeed.coerceAtMost(MAX_PREVIEW_EXPOSURE_TIME)
            }
            builder.set(CaptureRequest.SENSOR_EXPOSURE_TIME, exposureTime)
            
            // 拍摄时设置低帧率范围以支持长曝光
            if (isCapture) {
                try {
                    val characteristics = cameraManager.getCameraCharacteristics(state.currentCameraId)
                    val availableFpsRanges = characteristics.get(CameraCharacteristics.CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES)
                    val lowestFpsRange = availableFpsRanges?.minByOrNull { it.upper }
                    lowestFpsRange?.let {
                        builder.set(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE, it)
                    }
                } catch (e: Exception) {
                    Log.e(TAG, "Failed to set FPS range", e)
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
            builder.set(CaptureRequest.COLOR_CORRECTION_MODE, CaptureRequest.COLOR_CORRECTION_MODE_FAST)
        }
    }
    
    /**
     * 应用闪光灯设置
     */
    private fun applyFlashSettings(builder: CaptureRequest.Builder, state: CameraState) {
        when (state.flashMode) {
            CameraMetadata.FLASH_MODE_OFF -> {
                // 注意：如果是自动曝光模式，这里不需要重新设置 AE_MODE
                // 因为 applyExposureSettings 已经处理了
                builder.set(CaptureRequest.FLASH_MODE, CameraMetadata.FLASH_MODE_OFF)
            }
            CameraMetadata.FLASH_MODE_SINGLE -> {
                if (state.isAutoExposure) {
                    builder.set(CaptureRequest.CONTROL_AE_MODE, CaptureRequest.CONTROL_AE_MODE_ON_ALWAYS_FLASH)
                }
                builder.set(CaptureRequest.FLASH_MODE, CameraMetadata.FLASH_MODE_SINGLE)
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
            val characteristics = cameraManager.getCameraCharacteristics(cameraId)
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
            Log.e(TAG, "Failed to apply zoom settings", e)
        }
    }
    
    /**
     * 获取最佳拍照尺寸
     */
    private fun getBestCaptureSize(cameraId: String): Size {
        return try {
            val characteristics = cameraManager.getCameraCharacteristics(cameraId)
            val map = characteristics.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP)
            val sizes = map?.getOutputSizes(ImageFormat.YUV_420_888) ?: arrayOf(Size(1920, 1080))
            
            // 选择最大的尺寸
            sizes.maxByOrNull { it.width * it.height } ?: Size(1920, 1080)
        } catch (e: Exception) {
            Log.e(TAG, "Failed to get capture size", e)
            Size(1920, 1080)
        }
    }
    
    /**
     * 获取传感器方向（供外部 YUV 处理使用）
     */
    fun getSensorOrientation(): Int {
        val cameraId = _state.value.currentCameraId
        if (cameraId.isEmpty()) return 0
        
        return try {
            val characteristics = cameraManager.getCameraCharacteristics(cameraId)
            characteristics.get(CameraCharacteristics.SENSOR_ORIENTATION) ?: 0
        } catch (e: Exception) {
            Log.e(TAG, "Failed to get sensor orientation", e)
            0
        }
    }
    
    /**
     * 获取镜头朝向
     */
    fun getLensFacing(): Int {
        val cameraId = _state.value.currentCameraId
        if (cameraId.isEmpty()) return CameraCharacteristics.LENS_FACING_BACK
        
        return try {
            val characteristics = cameraManager.getCameraCharacteristics(cameraId)
            characteristics.get(CameraCharacteristics.LENS_FACING) 
                ?: CameraCharacteristics.LENS_FACING_BACK
        } catch (e: Exception) {
            Log.e(TAG, "Failed to get lens facing", e)
            CameraCharacteristics.LENS_FACING_BACK
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
            set(CaptureRequest.CONTROL_AE_MODE, CaptureRequest.CONTROL_AE_MODE_ON)
            set(CaptureRequest.CONTROL_AE_EXPOSURE_COMPENSATION, clampedValue)
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
            when (value) {
                CameraMetadata.FLASH_MODE_OFF -> {
                    if (state.value.isAutoExposure) {
                        set(CaptureRequest.CONTROL_AE_MODE, CaptureRequest.CONTROL_AE_MODE_ON)
                    }
                    set(CaptureRequest.FLASH_MODE, CameraMetadata.FLASH_MODE_OFF)
                }
                CameraMetadata.FLASH_MODE_SINGLE -> {
                    if (state.value.isAutoExposure) {
                        set(CaptureRequest.CONTROL_AE_MODE, CaptureRequest.CONTROL_AE_MODE_ON_ALWAYS_FLASH)
                    }
                    set(CaptureRequest.FLASH_MODE, CameraMetadata.FLASH_MODE_SINGLE)
                }
                CameraMetadata.FLASH_MODE_TORCH -> {
                    if (state.value.isAutoExposure) {
                        set(CaptureRequest.CONTROL_AE_MODE, CaptureRequest.CONTROL_AE_MODE_ON)
                    }
                    set(CaptureRequest.FLASH_MODE, CameraMetadata.FLASH_MODE_TORCH)
                }
                else -> {
                    if (state.value.isAutoExposure) {
                        set(CaptureRequest.CONTROL_AE_MODE, CaptureRequest.CONTROL_AE_MODE_ON)
                    }
                    set(CaptureRequest.FLASH_MODE, CameraMetadata.FLASH_MODE_OFF)
                }
            }
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
            val characteristics = cameraManager.getCameraCharacteristics(cameraId)
            val hardwareLevel = characteristics.get(CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL)
            
            val isSupported = hardwareLevel == CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL_FULL ||
                    hardwareLevel == CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL_3
            
            Log.d(TAG, "Hardware level: $hardwareLevel, Manual WB supported: $isSupported")
            isSupported
        } catch (e: Exception) {
            Log.e(TAG, "Failed to check hardware level", e)
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
            val characteristics = cameraManager.getCameraCharacteristics(cameraId)
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
                Log.d(TAG, "Manual AWB enabled with temperature: ${_state.value.awbTemperature}K")
            } else {
                set(CaptureRequest.COLOR_CORRECTION_MODE, CaptureRequest.COLOR_CORRECTION_MODE_FAST)
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
                Log.d(TAG, "AWB temperature set to: ${clampedKelvin}K (manual), gains: R=${gains.red}, G=${gains.greenEven}, B=${gains.blue}")
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
                Log.d(TAG, "AWB temperature set to: ${clampedKelvin}K (preset mode: ${getAwbModeName(presetMode)})")
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
                val distance = kotlin.math.abs(kelvin - presetKelvin)
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
        
        Log.d(TAG, "kelvinToRggbGains: ${kelvin}K -> RGB($red, $green, $blue)")
        
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
        try {
            previewRequestBuilder?.let { builder ->
                captureSession?.setRepeatingRequest(builder.build(), previewCallback, cameraHandler)
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
            val normX = x / viewWidth
            val normY = y / viewHeight
            
            // Store normalized UI coordinates for metering
            _state.value = _state.value.copy(focusPoint = Pair(normX, normY))

            val focusX = (normX * activeRect.width()).toInt()
            val focusY = (normY * activeRect.height()).toInt()
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

            cameraHandler?.postDelayed({
                _state.value = _state.value.copy(focusSuccess = true)
            }, 200)
            
            // 延迟恢复连续对焦
            cameraHandler?.postDelayed({
                previewRequestBuilder?.apply {
                    set(CaptureRequest.CONTROL_AF_TRIGGER, CaptureRequest.CONTROL_AF_TRIGGER_IDLE)
                    set(CaptureRequest.CONTROL_AF_MODE, CaptureRequest.CONTROL_AF_MODE_CONTINUOUS_PICTURE)
                    updatePreview()
                }
                _state.value = _state.value.copy(isFocusing = false, focusSuccess = null)
            }, 2500)
            
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
        val cameraId = _state.value.currentCameraId
        if (cameraId.isEmpty()) return
        _state.value = _state.value.copy(aspectRatio = ratio)
    }

    /**
     * 设置 LUT 强度
     */
    fun setLutIntensity(intensity: Float) {
        _state.value = _state.value.copy(lutIntensity = intensity)
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
        
        // 播放快门音效
        onPlayShutterSound?.invoke()
        
        _state.value = _state.value.copy(isCapturing = true)
        
        try {
            val captureBuilder = device.createCaptureRequest(CameraDevice.TEMPLATE_STILL_CAPTURE).apply {
                addTarget(reader.surface)
                
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
                
                Log.d(TAG, "Capture with ISO: ${_state.value.iso}, shutterSpeed: ${_state.value.shutterSpeed}, isAutoExposure: ${_state.value.isAutoExposure}")
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
            val surfaceRotation = OrientationObserver.rotationDegrees.toInt()
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
        val exposureTime = result?.get(CaptureResult.SENSOR_EXPOSURE_TIME) ?: _state.value.shutterSpeed
        val iso = result?.get(CaptureResult.SENSOR_SENSITIVITY) ?: _state.value.iso
        val whiteBalance = result?.get(CaptureResult.CONTROL_AWB_MODE) ?: _state.value.awbTemperature
        val flashState = result?.get(CaptureResult.FLASH_STATE) ?: _state.value.flashMode
        
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
