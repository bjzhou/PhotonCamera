package com.hinnka.mycamera.camera

import android.content.Context
import android.graphics.ImageFormat
import android.hardware.camera2.CameraCharacteristics
import android.hardware.camera2.CameraManager
import android.hardware.camera2.params.StreamConfigurationMap
import android.util.Log
import android.util.Size
import com.hinnka.mycamera.utils.PLog
import kotlin.math.abs

/**
 * 相机工具类
 */
object CameraUtils {

    /**
     * 获取拍照模式的固定预览尺寸（YUV_420_888 预览流）
     * 使用固定尺寸可以避免切换画面比例时频繁重新配置相机会话，
     * 不同的画面比例通过 UI 裁切实现
     */
    fun getFixedPreviewSize(
        context: Context,
        cameraId: String,
        aspectRatio: AspectRatio
    ): Size {
        return try {
            val cameraManager = context.getSystemService(Context.CAMERA_SERVICE) as CameraManager
            val characteristics = cameraManager.getCameraCharacteristics(cameraId)
            getFixedPreviewSize(characteristics, aspectRatio)
        } catch (e: Exception) {
            PLog.d("CameraUtils", "getFixedPreviewSize: ${e.message}")
            Size(1440, 1080)
        }
    }

    fun getFixedPreviewSize(
        characteristics: CameraCharacteristics,
        aspectRatio: AspectRatio
    ): Size {
        return try {
            val map = characteristics.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP)
                ?: return Size(1440, 1080)

            val sensorRatio = aspectRatio.getValue(true)
            // Mandatory stream combinations only guarantee PREVIEW-bounded sizes:
            // long side <= 1920 and short side <= 1080 (CameraDevice#createCaptureSession).
            // Photo mode's viewfinder is a YUV_420_888 ImageReader (PreviewYuvImageReader).
            val previewSizes = map.getOutputSizes(ImageFormat.YUV_420_888)
                ?.filter { isWithinPreviewBound(it) }
                .orEmpty()

            largestWithRatio(previewSizes, sensorRatio)?.let { return it }

            // 没有该比例的 PREVIEW 尺寸时（如 XPAN 65:24），用拍照会选择的基础比例的预览尺寸，
            // 再由 UI 裁切到目标比例。必须与 getBestCaptureSize 的基础比例一致（选择最宽的尺寸），
            // 否则预览和拍摄从不同基础比例裁切到目标比例时，FOV 会不一致。
            val captureSizes = map.getOutputSizes(ImageFormat.YUV_420_888)?.toList().orEmpty() +
                    getHighResolutionOutputSizes(map, ImageFormat.YUV_420_888)
            captureSizes.maxByOrNull { it.width.toLong() * it.height }?.let { bestCaptureSize ->
                val captureRatio = bestCaptureSize.width.toFloat() / bestCaptureSize.height
                largestWithRatio(previewSizes, captureRatio)?.let { return it }
            }

            previewSizes.maxByOrNull { it.width * it.height } ?: Size(1440, 1080)
        } catch (e: Exception) {
            PLog.d("CameraUtils", "getFixedPreviewSize: ${e.message}")
            Size(1440, 1080)
        }
    }

    private const val PREVIEW_BOUND_LONG = 1920
    private const val PREVIEW_BOUND_SHORT = 1080

    private fun isWithinPreviewBound(size: Size): Boolean {
        return maxOf(size.width, size.height) <= PREVIEW_BOUND_LONG &&
                minOf(size.width, size.height) <= PREVIEW_BOUND_SHORT
    }

    private fun largestWithRatio(sizes: List<Size>, ratio: Float): Size? {
        return sizes
            .filter { abs(it.width.toFloat() / it.height - ratio) < 0.01f }
            .maxByOrNull { it.width * it.height }
    }

    /**
     * 获取最佳拍照尺寸
     */
    fun getBestCaptureSize(
        context: Context,
        cameraId: String,
        aspectRatio: AspectRatio,
        format: Int = ImageFormat.YUV_420_888
    ): Size {
        return try {
            val cameraManager = context.getSystemService(Context.CAMERA_SERVICE) as CameraManager
            val characteristics = cameraManager.getCameraCharacteristics(cameraId)
            getBestCaptureSize(characteristics, aspectRatio, format)
        } catch (e: Exception) {
//            PLog.e(TAG, "Failed to get capture size", e)
            Size(1920, 1080)
        }
    }

    fun getBestCaptureSize(
        characteristics: CameraCharacteristics,
        aspectRatio: AspectRatio,
        format: Int = ImageFormat.YUV_420_888
    ): Size = selectCaptureSize(characteristics, aspectRatio, format).size

    /**
     * 拍照尺寸选择结果
     * @param isHighResolution 尺寸仅出现在 getHighResolutionOutputSizes 中（无法保证 20fps，部分 HAL 可能配置失败）
     */
    data class CaptureSizeSelection(
        val size: Size,
        val isHighResolution: Boolean,
        val maxStandardSize: Size?,
        val maxHighResolutionSize: Size?
    )

    /**
     * 选择拍照尺寸
     *
     * 不支持 BURST_CAPTURE 的设备会把达不到 20fps 的全尺寸只放在 getHighResolutionOutputSizes 中，
     * 只看 getOutputSizes 会选到 1920x1440 之类的低分辨率。
     */
    fun selectCaptureSize(
        characteristics: CameraCharacteristics,
        aspectRatio: AspectRatio,
        format: Int = ImageFormat.YUV_420_888,
        includeHighResolution: Boolean = true
    ): CaptureSizeSelection {
        val fallback = CaptureSizeSelection(Size(1920, 1080), false, null, null)
        return try {
            val map = characteristics.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP)
                ?: return fallback
            val outputFormat = if (map.getOutputSizes(format) != null) format else ImageFormat.YUV_420_888
            val standardSizes = map.getOutputSizes(outputFormat)?.toList().orEmpty()
            val highResolutionSizes = getHighResolutionOutputSizes(map, outputFormat)
                .filterNot { it in standardSizes }
            val candidates = if (includeHighResolution) standardSizes + highResolutionSizes else standardSizes
            val size = chooseCaptureSize(candidates, aspectRatio.getValue(true)) ?: return fallback
            CaptureSizeSelection(
                size = size,
                isHighResolution = size in highResolutionSizes,
                maxStandardSize = standardSizes.maxByOrNull { it.width.toLong() * it.height },
                maxHighResolutionSize = highResolutionSizes.maxByOrNull { it.width.toLong() * it.height }
            )
        } catch (e: Exception) {
            PLog.w("CameraUtils", "selectCaptureSize failed: ${e.message}")
            fallback
        }
    }

    private fun getHighResolutionOutputSizes(map: StreamConfigurationMap, format: Int): List<Size> {
        return try {
            map.getHighResolutionOutputSizes(format)?.toList().orEmpty()
        } catch (e: Exception) {
            emptyList()
        }
    }

    private fun chooseCaptureSize(sizes: List<Size>, sensorRatio: Float): Size? {
        // 寻找比例最匹配传感器原生比例
        val matchingSizes = sizes.filter {
            val ratio = it.width.toFloat() / it.height
            abs(ratio - sensorRatio) < 0.01
        }

        val bestMatching = matchingSizes.filter { it.height >= 2160 }.maxByOrNull { it.width.toLong() * it.height }

        if (bestMatching != null) return bestMatching

        // 选择最大的尺寸
        return sizes.maxByOrNull { it.width.toLong() * it.height }
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
            getRawCaptureSize(characteristics)
        } catch (e: Exception) {
            PLog.e("CameraUtils", "Failed to get RAW capture size: ${e.message}")
            null
        }
    }

    data class RawCaptureOutput(val format: Int, val size: Size)

    /** Prefer unpacked sensor output, but accept packed RAW10 independently of the RAW capability flag. */
    fun getRawCaptureOutput(
        characteristics: CameraCharacteristics,
        isFormatAllowed: (Int) -> Boolean = { true },
    ): RawCaptureOutput? {
        for (format in intArrayOf(ImageFormat.RAW_SENSOR, ImageFormat.RAW10)) {
            if (!isFormatAllowed(format)) continue
            val size = getRawCaptureSize(characteristics, format) ?: continue
            return RawCaptureOutput(format, size)
        }
        return null
    }

    fun getRawCaptureSize(characteristics: CameraCharacteristics): Size? =
        getRawCaptureOutput(characteristics)?.size

    private fun getRawCaptureSize(characteristics: CameraCharacteristics, format: Int): Size? {
        return try {
            val map = characteristics.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP)
            val sizes = map?.getOutputSizes(format)?.filter {
                it.width > 0 && it.height > 0 &&
                        (format != ImageFormat.RAW10 || (it.width % 4 == 0 && it.height % 2 == 0))
            } ?: return null
            
            if (sizes.isEmpty()) return null

            val pixelArraySize = characteristics.get(CameraCharacteristics.SENSOR_INFO_PIXEL_ARRAY_SIZE)
            val preCorrectionSize = characteristics.get(CameraCharacteristics.SENSOR_INFO_PRE_CORRECTION_ACTIVE_ARRAY_SIZE)

            // Try to find a size that matches DngCreator's requirements (PixelArray or PreCorrectionActiveArray)
            val bestMatch = sizes.find {
                (it.width == pixelArraySize?.width && it.height == pixelArraySize.height) ||
                (it.width == preCorrectionSize?.width() && it.height == preCorrectionSize.height())
            }

            // Return the best match if found, otherwise fall back to the largest available size
            bestMatch ?: sizes.maxByOrNull { it.width * it.height }
        } catch (e: Exception) {
            PLog.e("CameraUtils", "Failed to get RAW capture size for format=$format: ${e.message}")
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
