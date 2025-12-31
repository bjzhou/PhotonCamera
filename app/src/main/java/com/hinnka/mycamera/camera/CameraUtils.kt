package com.hinnka.mycamera.camera

import android.content.Context
import android.util.Size

/**
 * 相机工具类（CameraX 版本）
 * 
 * CameraX 自动处理大部分相机配置，此工具类简化为格式化方法
 */
object CameraUtils {
    
    /**
     * 获取固定的预览尺寸（16:9）
     * CameraX 会自动选择最佳尺寸，此方法保留用于兼容
     */
    fun getFixedPreviewSize(
        context: Context,
        cameraId: String
    ): Size {
        // CameraX 自动管理预览尺寸，返回默认值
        return Size(1920, 1080)
    }
    
    /**
     * 格式化快门速度显示
     */
    fun formatShutterSpeed(exposureTimeNanos: Long): String {
        return when {
            exposureTimeNanos >= 1_000_000_000L -> {
                val seconds = exposureTimeNanos / 1_000_000_000.0
                String.format("%.1f\"", seconds)
            }
            else -> {
                val fraction = (1_000_000_000.0 / exposureTimeNanos).toInt()
                "1/$fraction"
            }
        }
    }
    
    /**
     * 格式化曝光补偿显示
     */
    fun formatExposureCompensation(value: Int, step: Float): String {
        val ev = value * step
        return when {
            ev > 0 -> "+${String.format("%.1f", ev)}"
            ev < 0 -> String.format("%.1f", ev)
            else -> "0"
        }
    }
}
