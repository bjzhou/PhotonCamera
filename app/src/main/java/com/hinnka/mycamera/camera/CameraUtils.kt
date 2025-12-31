package com.hinnka.mycamera.camera

/**
 * 相机工具类（CameraX 版本）
 * 
 * CameraX 自动处理大部分相机配置，此工具类简化为格式化方法
 */
object CameraUtils {
    
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
