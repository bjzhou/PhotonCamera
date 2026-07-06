package com.hinnka.mycamera.camera

import android.graphics.Rect
import android.util.Range
import android.util.Size
import com.hinnka.mycamera.video.CaptureMode
import com.hinnka.mycamera.video.QuickShotCapabilities
import com.hinnka.mycamera.video.QuickShotConfig
import com.hinnka.mycamera.video.VideoCapabilities
import com.hinnka.mycamera.video.VideoConfig
import com.hinnka.mycamera.video.VideoRecordingState
import kotlin.math.abs

/**
 * 画面比例。内置比例使用稳定名称持久化，自定义比例使用 CUSTOM_宽_高。
 */
class AspectRatio private constructor(
    val name: String,
    val widthRatio: Int,
    val heightRatio: Int
) {
    override fun equals(other: Any?): Boolean {
        return other is AspectRatio && name == other.name
    }

    override fun hashCode(): Int {
        return name.hashCode()
    }

    override fun toString(): String {
        return name
    }


    fun getValue(isLandscape: Boolean): Float {
        return if (isLandscape) {
            widthRatio.toFloat() / heightRatio
        } else {
            heightRatio.toFloat() / widthRatio
        }
    }

    fun getDisplayName(): String {
        if (this == XPAN) {
            return "XPAN"
        }
        return "$widthRatio:$heightRatio"
    }

    companion object {
        const val TOP_SHEET_MAX_COUNT = 5
        private const val CUSTOM_PREFIX = "CUSTOM_"

        val RATIO_3_2 = AspectRatio("RATIO_3_2", 3, 2)
        val RATIO_4_3 = AspectRatio("RATIO_4_3", 4, 3)
        val RATIO_16_9 = AspectRatio("RATIO_16_9", 16, 9)
        val RATIO_1_1 = AspectRatio("RATIO_1_1", 1, 1)
        val RATIO_21_9 = AspectRatio("RATIO_21_9", 21, 9)
        val XPAN = AspectRatio("XPAN", 65, 24)

        val entries: List<AspectRatio> = listOf(
            RATIO_3_2,
            RATIO_4_3,
            RATIO_16_9,
            RATIO_1_1,
            RATIO_21_9,
            XPAN
        )

        val defaultTopSheetRatios: List<AspectRatio> = listOf(
            RATIO_3_2,
            RATIO_4_3,
            RATIO_16_9,
            RATIO_1_1,
            XPAN
        )

        fun fromString(string: String): AspectRatio {
            return valueOfOrNull(string) ?: entries.firstOrNull { it.getDisplayName() == string } ?: RATIO_4_3
        }

        fun valueOf(name: String): AspectRatio {
            return valueOfOrNull(name) ?: throw IllegalArgumentException("Unknown AspectRatio: $name")
        }

        fun valueOfOrNull(name: String): AspectRatio? {
            entries.firstOrNull { it.name == name }?.let { return it }
            if (!name.startsWith(CUSTOM_PREFIX)) return null
            val parts = name.removePrefix(CUSTOM_PREFIX).split("_")
            if (parts.size != 2) return null
            val width = parts[0].toIntOrNull() ?: return null
            val height = parts[1].toIntOrNull() ?: return null
            return custom(width, height)
        }

        fun custom(widthRatio: Int, heightRatio: Int): AspectRatio {
            val width = widthRatio.coerceIn(1, 999)
            val height = heightRatio.coerceIn(1, 999)
            val divisor = gcd(width, height)
            val normalizedWidth = width / divisor
            val normalizedHeight = height / divisor
            entries.firstOrNull {
                it.widthRatio == normalizedWidth && it.heightRatio == normalizedHeight
            }?.let { return it }
            return AspectRatio(
                name = "${CUSTOM_PREFIX}${normalizedWidth}_${normalizedHeight}",
                widthRatio = normalizedWidth,
                heightRatio = normalizedHeight
            )
        }

        fun sanitizeTopSheetRatios(ratios: List<AspectRatio>): List<AspectRatio> {
            val sanitized = ratios
                .distinct()
                .take(TOP_SHEET_MAX_COUNT)
            return sanitized.ifEmpty { defaultTopSheetRatios }
        }

        fun sanitizeCustomRatios(ratios: List<AspectRatio>): List<AspectRatio> {
            return ratios
                .map { custom(it.widthRatio, it.heightRatio) }
                .filter { ratio -> entries.none { it.name == ratio.name } }
                .distinctBy { it.name }
        }

        private tailrec fun gcd(a: Int, b: Int): Int {
            return if (b == 0) kotlin.math.abs(a) else gcd(b, a % b)
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
 * 测光模式
 */
enum class MeteringMode {
    SYSTEM_DEFAULT,    // 系统默认 - 不设置 AE 测光区域
    CENTER_WEIGHTED,   // 中央重点 - 中等区域，中心加权
    SPOT,              // 点测光 - 对焦点附近小区域
    AVERAGE,           // 平均测光 - 全画面均匀
    HIGHLIGHT_PRIORITY; // 高光优先 - 亮部加权，防止过曝
}

/**
 * 相机信息数据类
 */
data class CameraInfo(
    val cameraId: String,
    val logicalCameraId: String? = null,
    val outputPhysicalCameraId: String? = null,
    val physicalCameras: List<CameraPhysicalInfo> = emptyList(),
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
    val displayIntrinsicZoomRatio: Float = intrinsicZoomRatio, // 用户可见固有倍率，ISZ 虚拟镜头会高于底层提交倍率
    val hardwareLevel: Int = -1,  // 硬件支持级别
    val supportsManualProcessing: Boolean = false, // 是否支持手动处理（关闭系统锐化/降噪）
    val supportsRaw: Boolean = false, // 是否支持 RAW 格式
    val isCustomLensId: Boolean = false, // 是否来自用户手动添加的镜头 ID
    val isVirtualIszLens: Boolean = false, // 是否为用户创建的 ISZ 虚拟镜头
    val isVirtualIszMacroLens: Boolean = false, // ISZ 虚拟镜头是否强制识别为微距
    val baseCameraId: String? = null, // 虚拟镜头对应的真实物理镜头 ID
    val iszZoomRatio: Float = 1f, // ISZ 虚拟倍率
    val rawBlackBorderCrop: RawBlackBorderCrop = RawBlackBorderCrop(), // RAW 原始分辨率黑边裁切像素
    val minimumFocusDistance: Float = 0f // 最小对焦距离 (diopters, 0 = infinity only)
) {
    fun getOpenCameraId(): String = logicalCameraId ?: cameraId

    fun getBoundPhysicalCameraId(): String? = outputPhysicalCameraId

    fun getBoundPhysicalCameraId(zoomRatioByMain: Float): String? {
        if (physicalCameras.isEmpty()) return outputPhysicalCameraId
        return physicalCameras.minByOrNull {
            abs(it.intrinsicZoomRatio - zoomRatioByMain)
        }?.cameraId ?: outputPhysicalCameraId
    }

    /**
     * 获取镜头类型显示名称
     */
    fun getLensDisplayName(): String {
        val name = when (lensType) {
            LensType.FRONT -> "前置"
            LensType.BACK_MAIN -> "主摄 (1x)"
            LensType.BACK_ULTRA_WIDE -> "广角 (0.5x)"
            LensType.BACK_TELEPHOTO -> "长焦 (${String.format("%.1f", focalLength35mmEquivalent / 24f)}x)"
            LensType.BACK_MACRO -> "微距"
        }
        return if (isCustomLensId) "$name *" else name
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

data class CameraPhysicalInfo(
    val cameraId: String,
    val intrinsicZoomRatio: Float,
    val focalLength35mmEquivalent: Float = 0f,
    val focalLength: Float = 0f
)

enum class FocusPointSource {
    MANUAL,
    AI
}

/**
 * 相机状态数据类
 */
data class CameraState(
    // 当前相机
    val currentCameraId: String = "",
    val currentLensType: LensType = LensType.BACK_MAIN,
    val availableCameras: List<CameraInfo> = emptyList(),
    val currentPreviewSize: Size = Size(1440, 1080),
    val currentCaptureSize: Size = Size(1440, 1080),

    // 曝光控制
    val exposureCompensation: Int = 0,
    val isIsoAuto: Boolean = true,
    val isShutterSpeedAuto: Boolean = true,
    val iso: Int = 100,
    val shutterSpeed: Long = 1_000_000_000L / 60, // 1/60s in nanoseconds
    val exposureBias: Float = 0f,

    val awbMode: Int = 1, // 自动白平衡模式
    val awbTemperature: Int = 5000, // 色温 (K)

    // 测光模式
    val meteringMode: MeteringMode = MeteringMode.SYSTEM_DEFAULT,

    val isVirtualApertureEnabled: Boolean = false,
    val physicalAperture: Float = 2.0f, // 物理光圈值
    val virtualAperture: Float = 2.0f,  // 虚拟光圈值 (f-number)
    // 对焦
    val isAutoFocus: Boolean = true,
    val focusDistance: Float = 0f, // 当前对焦距离 (0.0 - minimumFocusDistance)
    val isHyperfocalFocusEnabled: Boolean = false,
    val hyperfocalDistanceMeters: Float = 0f,
    val minimumFocusDistance: Float = 0f, // 最小对焦距离
    val focusPoint: Pair<Float, Float>? = null, // normalized coordinates (0-1)
    val focusPointSource: FocusPointSource = FocusPointSource.MANUAL,
    val isFocusLocked: Boolean = false,
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
    val isLogLutActive: Boolean = false,
    val availableLuts: List<String> = emptyList(),

    // 直方图数据 (256个灰度值)
    val histogram: IntArray? = null,

    // 延时拍摄
    val timerSeconds: Int = 0, // 延时拍摄秒数 (0/3/5/10)
    val countdownValue: Int = 0, // 当前倒计时值

    // 网格线
    val showGrid: Boolean = false, // 是否显示网格线

    // 降噪等级 (0=Off, 1=Fast, 2=High Quality, 3=ZSL, 4=Minimal, 5=Auto)
    val nrLevel: Int = 5,
    val availableNrModes: IntArray = intArrayOf(),
    val vendorCaptureSettingsByLens: VendorCaptureSettingsByLens = VendorCaptureSettingsByLens.Empty,

    val isRawSupported: Boolean = false,
    val useMFNR: Boolean = false,
    val useHdrComposition: Boolean = false,
    val multiFrameCount: Int = 0,
    val useMFSR: Boolean = false,
    val useRaw: Boolean = false,
    val useMultipleExposure: Boolean = false,
    val rawMinShutterSpeedNs: Long = 0L,
    val useLivePhoto: Boolean = false,
    val droMode: String = "OFF",
    val tonemapMode: String = "SYSTEM_DEFAULT",
    val fixTonemapPreview: Boolean = false,
    val fixTonemapCapture: Boolean = false,
    // 是否正在拍摄 Live Photo (用于 UI 动画)
    val isCapturingLivePhoto: Boolean = false,
    val applyUltraHDR: Boolean = true,
    val useP010: Boolean = false,
    val useHlg10: Boolean = false,
    val useP3ColorSpace: Boolean = false,
    val isP010Supported: Boolean = false,
    val isHlg10Supported: Boolean = false,
    val burstCapturing: Boolean = false,
    val hdrBracketCapturing: Boolean = false,
    val hdrBracketFrameCount: Int = 0,
    val latitude: Double? = null,
    val longitude: Double? = null,
    val isP3Supported: Boolean = false,
    val currentDynamicRangeProfile: String = "STANDARD",
    val captureMode: CaptureMode = CaptureMode.PHOTO,
    val quickShotConfig: QuickShotConfig = QuickShotConfig(),
    val quickShotCapabilities: QuickShotCapabilities = QuickShotCapabilities(),
    val videoConfig: VideoConfig = VideoConfig(),
    val videoCapabilities: VideoCapabilities = VideoCapabilities(),
    val videoRecordingState: VideoRecordingState = VideoRecordingState(),
) {
    companion object {
        const val MAX_PHOTO_PREVIEW_SHUTTER_SPEED_NS = 1_000_000_000L / 15
        const val MAX_VIDEO_MANUAL_SHUTTER_SPEED_NS = 1_000_000_000L / 6
    }

    /**
     * 是否全自动曝光
     */
    val isAutoExposure: Boolean
        get() = isIsoAuto && isShutterSpeedAuto

    val isHLG: Boolean
        get() = currentDynamicRangeProfile == "HLG10"

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

    fun getManualShutterSpeedRange(): Range<Long> {
        val sensorRange = getShutterSpeedRange()
        val upper = when (captureMode) {
            CaptureMode.VIDEO -> sensorRange.upper.coerceAtMost(MAX_VIDEO_MANUAL_SHUTTER_SPEED_NS)
            CaptureMode.PHOTO,
            CaptureMode.QUICK_SHOT -> sensorRange.upper
        }.coerceAtLeast(sensorRange.lower)
        return Range(sensorRange.lower, upper)
    }

    fun getPreviewExposureTimeLimitNs(): Long {
        return when (captureMode) {
            CaptureMode.VIDEO -> MAX_VIDEO_MANUAL_SHUTTER_SPEED_NS
            CaptureMode.PHOTO,
            CaptureMode.QUICK_SHOT -> MAX_PHOTO_PREVIEW_SHUTTER_SPEED_NS
        }
    }

    fun isPreviewExposureLimited(): Boolean {
        return shutterSpeed >= getPreviewExposureTimeLimitNs()
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

    fun getAvgLuma(): Float {
        val histogram = histogram ?: return 0.18f
        var totalCount = 0L
        var weightedSum = 0L
        for (i in histogram.indices) {
            val count = histogram[i].toLong()
            weightedSum += i * count
            totalCount += count
        }
        if (totalCount == 0L) return 0.18f
        return (weightedSum.toFloat() / totalCount) / 255f
    }

    fun getPreviewAspectRatio(): Float {
        return when (captureMode) {
            CaptureMode.PHOTO, CaptureMode.QUICK_SHOT -> aspectRatio.getValue(isLandscape = false)
            CaptureMode.VIDEO -> videoConfig.aspectRatio.getPortraitAspectRatio(
                videoCapabilities.openGatePortraitAspectRatio
            )
        }
    }
}
