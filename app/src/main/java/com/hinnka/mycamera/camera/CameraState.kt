package com.hinnka.mycamera.camera

import android.graphics.Rect
import android.hardware.camera2.CameraMetadata
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

    companion object {
        fun fromString(string: String): AspectRatio {
            return entries.firstOrNull { it.getDisplayName() == string } ?: RATIO_4_3
        }
    }
}

/**
 * 相机镜头类型
 */
enum class LensType {
    FRONT,
    BACK_MAIN,
    BACK_ULTRA_WIDE,
    BACK_TELEPHOTO,
    BACK_MACRO
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
    val minZoom: Float = 1f,  // 最小变焦（广角时 < 1.0）
    val sensorOrientation: Int,
    val activeArraySize: Rect?,
    val focalLength: Float = 0f,  // 物理焦距 (mm)
    val focalLength35mmEquivalent: Float = 0f,  // 35mm等效焦距
    val zoomSteps: List<Float> = listOf(1f),  // 可用的变焦档位 (如 [0.5, 1.0, 2.0])
    val intrinsicZoomRatio: Float = 1f,  // 固有变焦比例 (CameraX 1.3.0+)
    val hardwareLevel: Int = -1,  // 硬件支持级别
    val supportsManualProcessing: Boolean = false, // 是否支持手动处理（关闭系统锐化/降噪）
    val supportsRaw: Boolean = false // 是否支持 RAW 格式
) {
    /**
     * 获取镜头类型显示名称
     */
    fun getLensDisplayName(): String {
        return when (lensType) {
            LensType.FRONT -> "前置"
            LensType.BACK_MAIN -> "主摄 (1x)"
            LensType.BACK_ULTRA_WIDE -> "广角 (0.5x)"
            LensType.BACK_TELEPHOTO -> "长焦 (${String.format("%.1f", focalLength35mmEquivalent / 24f)}x)"
            LensType.BACK_MACRO -> "微距"
        }
    }

    /**
     * 是否支持广角（minZoom < 1）
     */
    fun hasWideAngle(): Boolean = minZoom < 0.9f

    /**
     * 是否支持长焦（maxZoom > 2）
     */
    fun hasTelephoto(): Boolean = maxZoom > 2f

    /**
     * 获取硬件支持级别的可读名称
     */
    fun getHardwareLevelName(): String {
        return when (hardwareLevel) {
            0 -> "LIMITED"
            1 -> "FULL"
            2 -> "LEGACY"
            3 -> "LEVEL_3"
            4 -> "EXTERNAL"
            else -> "UNKNOWN"
        }
    }
}

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
    val isIsoAuto: Boolean = true,
    val isShutterSpeedAuto: Boolean = true,
    val iso: Int = 100,
    val shutterSpeed: Long = 1_000_000_000L / 60, // 1/60s in nanoseconds

    val awbMode: Int = 1, // 自动白平衡模式
    val awbTemperature: Int = 5000, // 色温 (K)

    val aperture: Float = 2.0f, // 光圈值 (f-number)

    // 对焦
    val isAutoFocus: Boolean = true,
    val focusPoint: Pair<Float, Float>? = null, // normalized coordinates (0-1)
    val isFocusing: Boolean = false,
    val focusSuccess: Boolean? = null,
    val currentAfMode: Int? = null, // 当前的 AF 模式

    //闪光灯
    val flashMode: Int = 0, // 0: off, 1: auto, 2: torch

    // 变焦
    val zoomRatio: Float = 1.0f,

    // 画面比例
    val aspectRatio: AspectRatio = AspectRatio.RATIO_4_3,

    // 设备方向
    val deviceRotation: Int = 0, // 0, 90, 180, 270

    // 是否处于预览状态
    val isPreviewActive: Boolean = false,

    // 是否正在拍照
    val isCapturing: Boolean = false,

    // LUT 设置
    val currentLutName: String? = null,
    val lutEnabled: Boolean = false,
    val availableLuts: List<String> = emptyList(),

    // 直方图数据 (256个灰度值)
    val histogram: IntArray? = null,

    // 延时拍摄
    val timerSeconds: Int = 0, // 延时拍摄秒数 (0/3/5/10)
    val countdownValue: Int = 0, // 当前倒计时值

    // 网格线
    val showGrid: Boolean = false, // 是否显示网格线

    // 降噪等级 (0=Off, 1=Fast, 2=High Quality, 3=Real-time, 4=Minimal)
    val nrLevel: Int = 1,
    val availableNrModes: IntArray = intArrayOf(),

    val isRawSupported: Boolean = false,
    val useMultiFrame: Boolean = false,
    val multiFrameCount: Int = 0,
    val useSuperResolution: Boolean = false,
    val useRaw: Boolean = false,
    val useLivePhoto: Boolean = false,
) {
    /**
     * 是否全自动曝光
     */
    val isAutoExposure: Boolean
        get() = isIsoAuto && isShutterSpeedAuto

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

    fun getExposureCompensationStep(): Float {
        return getCurrentCameraInfo()?.exposureCompensationStep ?: 0.333f
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

    /**
     * 获取最小变焦倍数
     */
    fun getMinZoom(): Float {
        return getCurrentCameraInfo()?.minZoom ?: 1.0f
    }

    /**
     * 获取可用的变焦档位
     */
    fun getZoomSteps(): List<Float> {
        return getCurrentCameraInfo()?.zoomSteps ?: listOf(1f)
    }
}
