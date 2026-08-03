package com.hinnka.mycamera.camera

import android.graphics.ColorSpace
import android.os.Build
import com.hinnka.mycamera.utils.DeviceUtil

/**
 * 拍摄信息
 * 
 * 携带从 Camera2 API 提取的完整拍摄元数据，用于：
 * 1. 写入 JPEG 文件的 EXIF 信息
 * 2. 在边框水印中显示拍摄参数
 */
data class CaptureInfo(
    // 曝光信息
    val exposureTime: Long? = null,          // 曝光时间（纳秒）
    val iso: Int? = null,                    // ISO 感光度
    val aperture: Float? = null,             // 光圈值 (f-number)
    val focalLength: Float? = null,          // 焦距 (mm)
    val focalLength35mm: Int? = null,        // 等效35mm焦距
    
    // 设备信息
    val make: String = Build.MANUFACTURER,
    val model: String = DeviceUtil.exifModel, // EXIF 设备型号（优先使用有效 ASCII 营销名）
    val software: String = "PhotonCamera",
    
    // 拍摄参数
    val whiteBalance: Int? = null,           // EXIF 白平衡: 0=Auto, 1=Manual
    val flashState: Int? = null,             // 闪光灯状态
    val orientation: Int = 0,                // JPEG 方向 (0, 90, 180, 270)
    
    // 尺寸信息
    val imageWidth: Int = 0,
    val imageHeight: Int = 0,
    
    // 时间
    val captureTime: Long = System.currentTimeMillis(),
    
    // GPS（可选）
    val latitude: Double? = null,
    val longitude: Double? = null,
    val altitude: Double? = null,

    // 色彩空间
    val colorSpace: ColorSpace.Named = ColorSpace.Named.SRGB,
) {
    /**
     * 格式化曝光时间为可读字符串
     * 例如：1/1000s, 1/60s, 1s, 2s
     */
    fun formatExposureTime(): String? {
        val exposureNs = exposureTime ?: return null
        val exposureSec = exposureNs / 1_000_000_000.0
        
        return when {
            exposureSec >= 1.0 -> "${exposureSec.toInt()}s"
            exposureSec >= 0.1 -> String.format("%.1fs", exposureSec)
            else -> {
                val denominator = (1.0 / exposureSec).toInt()
                "1/${denominator}s"
            }
        }
    }
    
    /**
     * 格式化光圈为可读字符串
     * 例如：f/1.8, f/2.8
     */
    fun formatAperture(): String? {
        val f = aperture ?: return null
        return if (f == f.toInt().toFloat()) {
            "f/${f.toInt()}"
        } else {
            "f/${String.format("%.1f", f)}"
        }
    }
    
    /**
     * 格式化焦距为可读字符串
     * 例如：24mm, 50mm
     */
    fun formatFocalLength(): String? {
        val fl = focalLength ?: return null
        return if (fl == fl.toInt().toFloat()) {
            "${fl.toInt()}mm"
        } else {
            String.format("%.1fmm", fl)
        }
    }

    /**
     * 格式化35mm等效焦距为可读字符串
     * 例如：24mm, 50mm
     */
    fun formatFocalLength35mm(): String? {
        val fl = focalLength35mm ?: return null
        return "${fl}mm"
    }
    
    /**
     * 格式化 ISO 为可读字符串
     * 例如：ISO 100, ISO 3200
     */
    fun formatIso(): String? {
        val isoValue = iso ?: return null
        return "ISO $isoValue"
    }
}
