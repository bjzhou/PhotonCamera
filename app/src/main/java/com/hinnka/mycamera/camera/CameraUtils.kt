package com.hinnka.mycamera.camera

import android.content.Context
import android.graphics.ImageFormat
import android.graphics.SurfaceTexture
import android.hardware.camera2.CameraCharacteristics
import android.hardware.camera2.CameraManager
import android.util.Log
import android.util.Size
import com.hinnka.mycamera.utils.PLog
import kotlin.math.abs

/**
 * 相机工具类
 */
object CameraUtils {

    /**
     * 获取固定的预览尺寸
     * 使用固定尺寸可以避免切换画面比例时频繁重新配置相机会话，
     * 不同的画面比例通过 UI 裁切实现
     */
    fun getFixedPreviewSize(
        context: Context,
        cameraId: String,
        aspectRatio: AspectRatio
    ): Size {
        try {
            val cameraManager = context.getSystemService(Context.CAMERA_SERVICE) as CameraManager
            val characteristics = cameraManager.getCameraCharacteristics(cameraId)
            val map = characteristics.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP)
                ?: return Size(1440, 1080)

            // 首先获取最大的拍照尺寸，以此作为传感器的原生比例
            val sensorRatio = aspectRatio.getValue(true)

            val previewSizes = map.getOutputSizes(SurfaceTexture::class.java)?.toList() ?: emptyList()

            // 寻找比例最匹配传感器原生比例且高度不超过 1080 的预览尺寸
            val matchingSizes = previewSizes.filter {
                val ratio = it.width.toFloat() / it.height
                abs(ratio - sensorRatio) < 0.01
            }

            // 优先选择匹配比例中，高度最接近 1080 的尺寸
            val bestMatching = matchingSizes.filter { it.height <= 1080 }.maxByOrNull { it.width * it.height }
                ?: matchingSizes.minByOrNull { it.width * it.height }

            if (bestMatching != null) return bestMatching

            // 如果没有比例完全匹配的，则选择高度 >= 1080 中最小的一个（之前的逻辑）
            return previewSizes.filter { it.height >= 1080 }.minByOrNull { it.width } ?: Size(1440, 1080)
        } catch (e: Exception) {
            PLog.d("CameraUtils", "getFixedPreviewSize: ${e.message}")
            return Size(1440, 1080)
        }
    }

    /**
     * 获取最佳拍照尺寸
     */
    fun getBestCaptureSize(context: Context, cameraId: String, aspectRatio: AspectRatio): Size {
        return try {
            val cameraManager = context.getSystemService(Context.CAMERA_SERVICE) as CameraManager
            val characteristics = cameraManager.getCameraCharacteristics(cameraId)
            val map = characteristics.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP)
            val sizes = map?.getOutputSizes(ImageFormat.YUV_420_888) ?: arrayOf(Size(1920, 1080))
            val sensorRatio = aspectRatio.getValue(true)

            // 寻找比例最匹配传感器原生比例
            val matchingSizes = sizes.filter {
                val ratio = it.width.toFloat() / it.height
                abs(ratio - sensorRatio) < 0.01
            }

            val bestMatching = matchingSizes.filter { it.height >= 2160 }.maxByOrNull { it.width * it.height }

            if (bestMatching != null) return bestMatching

            // 选择最大的尺寸
            sizes.maxByOrNull { it.width * it.height } ?: Size(1920, 1080)
        } catch (e: Exception) {
//            PLog.e(TAG, "Failed to get capture size", e)
            Size(1920, 1080)
        }
    }
    
    /**
     * 获取 RAW 拍照尺寸
     * 
     * RAW 格式通常只有一个尺寸（传感器原生尺寸）
     */
    fun getRawCaptureSize(context: Context, cameraId: String): Size? {
        return try {
            val cameraManager = context.getSystemService(Context.CAMERA_SERVICE) as CameraManager
            val characteristics = cameraManager.getCameraCharacteristics(cameraId)
            val map = characteristics.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP)
            val sizes = map?.getOutputSizes(ImageFormat.RAW_SENSOR)
            
            // RAW 通常只有一个尺寸，返回最大的
            sizes?.maxByOrNull { it.width * it.height }
        } catch (e: Exception) {
            PLog.e("CameraUtils", "Failed to get RAW capture size: ${e.message}")
            null
        }
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
