package com.hinnka.mycamera.camera

import android.graphics.Rect
import android.util.Range

/**
 * 画面比例枚举
 */
enum class AspectRatio(val widthRatio: Int, val heightRatio: Int) {
    RATIO_3_2(3, 2),
    RATIO_4_3(4, 3),
    RATIO_16_9(16, 9),
    RATIO_1_1(1, 1);
    
    fun getValue(isLandscape: Boolean): Float {
        return if (isLandscape) {
            widthRatio.toFloat() / heightRatio
        } else {
            heightRatio.toFloat() / widthRatio
        }
    }
    
    fun getDisplayName(): String {
        return "$widthRatio:$heightRatio"
    }
}

/**
 * 相机镜头类型
 */
enum class LensType {
    FRONT,
    BACK_MAIN,
    BACK_ULTRA_WIDE,
    BACK_TELEPHOTO
}

/**
 * 相机信息数据类
 */
data class CameraInfo(
    val cameraId: String,
    val lensFacing: Int,
    val lensType: LensType,
    val physicalCameraIds: List<String>,
    val isoRange: Range<Int>?,
    val exposureTimeRange: Range<Long>?,
    val exposureCompensationRange: Range<Int>,
    val exposureCompensationStep: Float,
    val maxZoom: Float,
    val sensorOrientation: Int,
    val activeArraySize: Rect?
)

/**
 * 相机状态数据类
 */
data class CameraState(
    // 当前相机
    val currentCameraId: String = "",
    val currentLensType: LensType = LensType.BACK_MAIN,
    val availableCameras: List<CameraInfo> = emptyList(),
    
    // 曝光控制
    val exposureCompensation: Int = 0,
    val isAutoExposure: Boolean = true,
    val iso: Int = 100,
    val shutterSpeed: Long = 1_000_000_000L / 60, // 1/60s in nanoseconds
    
    // 对焦
    val isAutoFocus: Boolean = true,
    val focusPoint: Pair<Float, Float>? = null, // normalized coordinates (0-1)
    val isFocusing: Boolean = false,
    val focusSuccess: Boolean? = null,
    
    // 变焦
    val zoomRatio: Float = 1.0f,
    
    // 画面比例
    val aspectRatio: AspectRatio = AspectRatio.RATIO_3_2,
    
    // 设备方向
    val deviceRotation: Int = 0, // 0, 90, 180, 270
    
    // 是否处于预览状态
    val isPreviewActive: Boolean = false,
    
    // 是否正在拍照
    val isCapturing: Boolean = false,
    
    // LUT 设置
    val currentLutName: String? = null,
    val lutIntensity: Float = 1.0f,
    val lutEnabled: Boolean = false,
    val availableLuts: List<String> = emptyList()
) {
    /**
     * 获取当前相机信息
     */
    fun getCurrentCameraInfo(): CameraInfo? {
        return availableCameras.find { it.cameraId == currentCameraId }
    }
    
    /**
     * 获取曝光补偿范围
     */
    fun getExposureCompensationRange(): Range<Int> {
        return getCurrentCameraInfo()?.exposureCompensationRange ?: Range(0, 0)
    }
    
    /**
     * 获取 ISO 范围
     */
    fun getIsoRange(): Range<Int> {
        return getCurrentCameraInfo()?.isoRange ?: Range(100, 3200)
    }
    
    /**
     * 获取快门速度范围
     */
    fun getShutterSpeedRange(): Range<Long> {
        return getCurrentCameraInfo()?.exposureTimeRange ?: Range(1_000_000L, 1_000_000_000L)
    }
    
    /**
     * 获取最大变焦倍数
     */
    fun getMaxZoom(): Float {
        return getCurrentCameraInfo()?.maxZoom ?: 1.0f
    }
}
