package com.hinnka.mycamera.camera

import android.content.Context
import android.hardware.camera2.CameraAccessException
import android.hardware.camera2.CameraCharacteristics
import android.hardware.camera2.CameraManager
import android.hardware.camera2.CameraMetadata
import android.os.Build
import android.util.Log
import android.util.Range
import com.hinnka.mycamera.utils.PLog

/**
 * 相机发现器
 * 
 * 负责发现和枚举设备上的所有可用摄像头，包括：
 * - 通过 CameraX intrinsicZoomRatio 识别广角/长焦
 * - 通过暴力探测 Camera ID 0-5 发现隐藏的物理摄像头
 * - 处理厂商特定的兼容性问题
 */
class CameraDiscovery(private val context: Context) {
    
    companion object {
        private const val TAG = "CameraDiscovery"
        
        // 探测的最大 Camera ID
        private const val MAX_PROBE_ID = 6
        
        // 需要跳过探测的厂商
        private val SKIP_PROBE_MANUFACTURERS = setOf("huawei", "honor")
        
        // Vivo 需要跳过探测的机型
        private val VIVO_SKIP_MODELS = setOf("V1914A", "V2023EA")
    }
    
    private val cameraManager: CameraManager by lazy {
        context.getSystemService(Context.CAMERA_SERVICE) as CameraManager
    }
    
    // 缓存已发现的摄像头 ID 列表
    private var cachedCameraIds: List<String>? = null

    /**
     * 发现所有可用的摄像头（不依赖 CameraX）
     * 
     * 纯粹使用 Camera2 API，包括：
     * - 系统返回的摄像头
     * - 通过暴力探测发现的隐藏摄像头
     * 
     * @return 摄像头信息列表，按类型分类
     */
    fun discoverAllCameras(): List<CameraInfo> {
        val cameras = mutableListOf<CameraInfo>()
        
        // 获取完整的 Camera ID 列表（包括探测的隐藏摄像头）
        val allCameraIds = getAllCameraIds()
        PLog.d(TAG, "Camera2 discovered IDs: $allCameraIds")
        
        // 构建摄像头信息
        val backCameras = mutableListOf<CameraInfoWithZoom>()
        var frontCamera: CameraInfo? = null
        
        for (cameraId in allCameraIds) {
            try {
                val characteristics = cameraManager.getCameraCharacteristics(cameraId)
                val lensFacing = characteristics.get(CameraCharacteristics.LENS_FACING) ?: continue
                
                // 计算 intrinsicZoomRatio
                val intrinsicZoomRatio = calculateIntrinsicZoomRatio(cameraId, characteristics, lensFacing)

                // 检测是否为微距镜头
                val isMacro = isMacroLens(characteristics)
                
                val info = createCameraInfo(cameraId, characteristics, lensFacing, intrinsicZoomRatio)
                
                when (lensFacing) {
                    CameraCharacteristics.LENS_FACING_BACK -> {
                        backCameras.add(CameraInfoWithZoom(info, intrinsicZoomRatio, isMacro))
                    }
                    CameraCharacteristics.LENS_FACING_FRONT -> {
                        if (frontCamera == null) {
                            frontCamera = info.copy(lensType = LensType.FRONT)
                        }
                    }
                }
                
                PLog.d(TAG, "Camera2: $cameraId: facing=$lensFacing, intrinsicZoom=$intrinsicZoomRatio")
                
            } catch (e: Exception) {
                PLog.w(TAG, "Failed to get camera $cameraId info", e)
            }
        }
        
        // 根据 intrinsicZoomRatio 分类后置摄像头
        val classifiedBackCameras = classifyBackCameras(backCameras)
        cameras.addAll(classifiedBackCameras)
        
        // 添加前置摄像头
        frontCamera?.let { cameras.add(it) }
        
        PLog.d(TAG, "Camera2 final list:")
        cameras.forEach { cam ->
            PLog.d(TAG, "  - ${cam.cameraId}: ${cam.lensType}, intrinsicZoom=${cam.intrinsicZoomRatio}")
        }
        
        return cameras
    }

    /**
     * 获取所有 Camera ID，包括通过探测发现的隐藏摄像头
     */
    private fun getAllCameraIds(): List<String> {
        // 使用缓存
        cachedCameraIds?.let { return it }

        val systemCameraIds = try {
            cameraManager.cameraIdList.toList()
        } catch (e: CameraAccessException) {
            PLog.e(TAG, "Failed to get camera ID list (CameraAccessException)", e)
            emptyList()
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to get camera ID list (${e.javaClass.simpleName}): ${e.message}", e)
            emptyList()
        }
        
        PLog.d(TAG, "System camera IDs: $systemCameraIds")
        
        // 如果系统已经返回了足够多的摄像头，或者需要跳过探测，直接返回
        if (systemCameraIds.size > 2 || shouldSkipProbing()) {
            cachedCameraIds = systemCameraIds
            return systemCameraIds
        }
        
        // 探测隐藏的摄像头
        val probedIds = probeCameraIds(systemCameraIds)
        val allIds = (systemCameraIds + probedIds).distinct()
        
        PLog.d(TAG, "After probing: $allIds (probed: $probedIds)")
        
        cachedCameraIds = allIds
        return allIds
    }
    
    /**
     * 检查是否应该跳过摄像头探测
     * 某些厂商的设备在探测不存在的摄像头时可能崩溃
     */
    private fun shouldSkipProbing(): Boolean {
        val manufacturer = Build.MANUFACTURER.lowercase()
        
        // Huawei / Honor 跳过
        if (SKIP_PROBE_MANUFACTURERS.any { manufacturer.contains(it) }) {
            PLog.d(TAG, "Skipping probe for manufacturer: $manufacturer")
            return true
        }
        
        // Vivo 特殊处理
        if (manufacturer.contains("vivo")) {
            // Android 10 及以下跳过
            if (Build.VERSION.SDK_INT <= Build.VERSION_CODES.Q) {
                PLog.d(TAG, "Skipping probe for Vivo on Android ${Build.VERSION.SDK_INT}")
                return true
            }
            
            // 特定机型跳过
            if (VIVO_SKIP_MODELS.contains(Build.MODEL)) {
                PLog.d(TAG, "Skipping probe for Vivo model: ${Build.MODEL}")
                return true
            }
        }
        
        return false
    }
    
    /**
     * 暴力探测摄像头 ID 0-5
     * 某些设备的广角/长焦摄像头不会出现在系统 API 返回的列表中
     */
    private fun probeCameraIds(existingIds: List<String>): List<String> {
        val existingSet = existingIds.toSet()
        val foundIds = mutableListOf<String>()
        
        for (id in 0 until MAX_PROBE_ID) {
            val cameraId = id.toString()
            
            if (existingSet.contains(cameraId)) {
                continue
            }
            
            try {
                val characteristics = cameraManager.getCameraCharacteristics(cameraId)
                val lensFacing = characteristics.get(CameraCharacteristics.LENS_FACING)
                
                if (lensFacing != null) {
                    // 计算 intrinsicZoomRatio 来判断是否是有意义的摄像头
                    val intrinsicZoomRatio = calculateIntrinsicZoomRatio(cameraId, characteristics, lensFacing)
                    
                    // 只有 intrinsicZoomRatio != 1.0 的才是广角/长焦
                    if (intrinsicZoomRatio != 1f) {
                        PLog.d(TAG, "Probed camera $cameraId: intrinsicZoom=$intrinsicZoomRatio")
                        foundIds.add(cameraId)
                    } else {
                        PLog.d(TAG, "Probed camera $cameraId: skipped (intrinsicZoom=1.0)")
                    }
                }
            } catch (e: Exception) {
                // 该 ID 不存在或无法访问，忽略
                PLog.v(TAG, "Probe camera $cameraId failed: ${e.message}")
            }
        }
        
        return foundIds
    }
    
    /**
     * 计算摄像头的固有变焦比例
     * 
     * intrinsicZoomRatio = 该摄像头35mm等效焦距 / 主摄35mm等效焦距
     * 
     * - 主摄返回 ~1.0
     * - 广角返回 < 1.0 (如 0.5, 0.6)
     * - 长焦返回 > 1.0 (如 2.0, 3.0)
     */
    private fun calculateIntrinsicZoomRatio(
        cameraId: String,
        characteristics: CameraCharacteristics,
        lensFacing: Int
    ): Float {
        try {
            val current35mm = get35mmEquivalentFocalLength(characteristics)
            val default35mm = getDefault35mmEquivalent(lensFacing)
            
            if (current35mm <= 0 || default35mm <= 0) {
                return 1f
            }
            
            return current35mm / default35mm
            
        } catch (e: Exception) {
            PLog.w(TAG, "Failed to calculate intrinsicZoomRatio for camera $cameraId", e)
            return 1f
        }
    }
    
    /**
     * 获取设备默认35mm等效焦距（主摄）
     */
    private fun getDefault35mmEquivalent(lensFacing: Int): Float {
        try {
            for (cameraId in cameraManager.cameraIdList) {
                val characteristics = cameraManager.getCameraCharacteristics(cameraId)
                val facing = characteristics.get(CameraCharacteristics.LENS_FACING) ?: continue
                
                if (facing != lensFacing) continue
                
                return get35mmEquivalentFocalLength(characteristics)
            }
        } catch (e: Exception) {
            PLog.w(TAG, "Failed to get default focal length", e)
        }
        
        return 0f
    }
    
    /**
     * 计算 35mm 等效焦距
     * 35mm Equivalent = Physical Focal Length * (35mm Diagonal / Sensor Diagonal)
     */
    private fun get35mmEquivalentFocalLength(characteristics: CameraCharacteristics): Float {
        val focalLengths = characteristics.get(CameraCharacteristics.LENS_INFO_AVAILABLE_FOCAL_LENGTHS)
        val sensorSize = characteristics.get(CameraCharacteristics.SENSOR_INFO_PHYSICAL_SIZE)
        
        if (focalLengths == null || focalLengths.isEmpty() || sensorSize == null) {
            return 0f
        }
        
        val focalLength = focalLengths[0]
        
        // 计算传感器对角线
        val sensorDiagonal = kotlin.math.sqrt(
            (sensorSize.width * sensorSize.width + sensorSize.height * sensorSize.height).toDouble()
        ).toFloat()
        
        // 35mm 全画幅对角线 (36mm x 24mm)
        val filmDiagonal = 43.2666f 
        
        if (sensorDiagonal <= 0) return 0f
        
        return focalLength * filmDiagonal / sensorDiagonal
    }

    /**
     * 检测是否为微距镜头
     */
    private fun isMacroLens(characteristics: CameraCharacteristics): Boolean {
        // 1. 通过最小对焦距离判断
        // 微距镜头通常支持极近距离对焦。
        // LENS_INFO_MINIMUM_FOCUS_DISTANCE 的单位是 1/米 (diopters)。
        // 10 对应 0.1米 (10cm)，20 对应 0.05米 (5cm)。
        val minFocusDistance = characteristics.get(CameraCharacteristics.LENS_INFO_MINIMUM_FOCUS_DISTANCE) ?: 0f
        val focusCalibration = characteristics.get(CameraCharacteristics.LENS_INFO_FOCUS_DISTANCE_CALIBRATION)
        
        // 专用微距镜头的典型特征：
        // (1) 最小对焦距离很大
        if (minFocusDistance >= 30f) {
            PLog.d(TAG, "isMacroLens: minFocusDistance=$minFocusDistance, focusCalibration=$focusCalibration")
            return true
        }
        return false
    }
    
    /**
     * 根据 intrinsicZoomRatio 分类后置摄像头
     */
    private fun classifyBackCameras(cameras: List<CameraInfoWithZoom>): List<CameraInfo> {
        if (cameras.isEmpty()) return emptyList()
        
        // 分离微距镜头和普通镜头
        val macroCameras = cameras.filter { it.isMacro }
        val normalCameras = cameras.filter { !it.isMacro }
        
        if (normalCameras.isEmpty()) {
            // 如果全部被识别为微距（不常见），则按 intrinsicZoomRatio 排序并返回
            return cameras.sortedBy { it.intrinsicZoomRatio }.map { it.info.copy(lensType = LensType.BACK_MACRO) }
        }

        val result = mutableListOf<CameraInfo>()
        
        // 分类普通镜头
        if (normalCameras.size == 1) {
            result.add(normalCameras.first().info.copy(lensType = LensType.BACK_MAIN))
        } else {
            // 按 intrinsicZoomRatio 排序
            val sorted = normalCameras.sortedBy { it.intrinsicZoomRatio }
            
            // 找到最接近 1.0 的作为主摄
            val mainCameraIndex = sorted.indices.minByOrNull { kotlin.math.abs(sorted[it].intrinsicZoomRatio - 1f) } ?: 0
            
            result.addAll(sorted.mapIndexed { index, camera ->
                val lensType = when {
                    index < mainCameraIndex -> LensType.BACK_ULTRA_WIDE
                    index > mainCameraIndex -> LensType.BACK_TELEPHOTO
                    else -> LensType.BACK_MAIN
                }
                camera.info.copy(lensType = lensType)
            })
        }
        
        // 添加微距镜头
        result.addAll(macroCameras.map { it.info.copy(lensType = LensType.BACK_MACRO) })
        
        return result
    }
    
    /**
     * 创建 CameraInfo
     */
    private fun createCameraInfo(
        cameraId: String,
        characteristics: CameraCharacteristics,
        lensFacing: Int,
        intrinsicZoomRatio: Float
    ): CameraInfo {
        // 焦距信息
        val focalLengths = characteristics.get(CameraCharacteristics.LENS_INFO_AVAILABLE_FOCAL_LENGTHS)
        val focalLength = focalLengths?.firstOrNull() ?: 0f

        // 计算 35mm 等效焦距
        val focalLength35mm = get35mmEquivalentFocalLength(characteristics)

        // ISO 范围
        val isoRange = characteristics.get(CameraCharacteristics.SENSOR_INFO_SENSITIVITY_RANGE)

        // 曝光时间范围
        val exposureTimeRange = characteristics.get(CameraCharacteristics.SENSOR_INFO_EXPOSURE_TIME_RANGE)

        // 曝光补偿范围
        val exposureCompensationRange = characteristics.get(CameraCharacteristics.CONTROL_AE_COMPENSATION_RANGE)
            ?: Range(0, 0)

        // 曝光补偿步长
        val exposureCompensationStep = characteristics.get(CameraCharacteristics.CONTROL_AE_COMPENSATION_STEP)?.toFloat() ?: 0f

        // 最大数字变焦
        val maxZoom = characteristics.get(CameraCharacteristics.SCALER_AVAILABLE_MAX_DIGITAL_ZOOM) ?: 1f

        // 传感器方向
        val sensorOrientation = characteristics.get(CameraCharacteristics.SENSOR_ORIENTATION) ?: 0

        // 活动区域大小
        val activeArraySize = characteristics.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE)

        // 硬件支持级别
        val hardwareLevel = characteristics.get(CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL) ?: -1

        return CameraInfo(
            cameraId = cameraId,
            lensFacing = lensFacing,
            lensType = LensType.BACK_MAIN, // 临时，后续分类
            physicalCameraIds = emptyList(),
            isoRange = isoRange,
            exposureTimeRange = exposureTimeRange,
            exposureCompensationRange = exposureCompensationRange,
            exposureCompensationStep = exposureCompensationStep,
            maxZoom = maxZoom,
            minZoom = 1f,
            sensorOrientation = sensorOrientation,
            activeArraySize = activeArraySize,
            focalLength = focalLength,
            focalLength35mmEquivalent = focalLength35mm,
            zoomSteps = listOf(1f),
            intrinsicZoomRatio = intrinsicZoomRatio,
            hardwareLevel = hardwareLevel,
            supportsManualProcessing = checkManualProcessingSupport(characteristics)
        )
    }

    /**
     * 检查是否支持手动处理模式
     * 要求设备支持 EDGE_MODE_OFF 和 NOISE_REDUCTION_MODE_OFF
     */
    private fun checkManualProcessingSupport(characteristics: CameraCharacteristics): Boolean {
        val edgeModes = characteristics.get(CameraCharacteristics.EDGE_AVAILABLE_EDGE_MODES) ?: intArrayOf()
        val nrModes = characteristics.get(CameraCharacteristics.NOISE_REDUCTION_AVAILABLE_NOISE_REDUCTION_MODES) ?: intArrayOf()
        
        val supportsEdgeOff = edgeModes.contains(CameraMetadata.EDGE_MODE_OFF)
        val supportsNrOff = nrModes.contains(CameraMetadata.NOISE_REDUCTION_MODE_OFF)
        
        return supportsEdgeOff && supportsNrOff
    }
    
    /**
     * 清除缓存
     */
    fun clearCache() {
        cachedCameraIds = null
    }
    
    // 内部数据类
    private data class CameraXInfo(
        val cameraId: String,
        val intrinsicZoomRatio: Float,
        val minZoom: Float,
        val maxZoom: Float
    )
    
    private data class CameraInfoWithZoom(
        val info: CameraInfo,
        val intrinsicZoomRatio: Float,
        val isMacro: Boolean
    )
}
