package com.hinnka.mycamera.camera

import android.graphics.ImageFormat
import android.hardware.camera2.CameraCharacteristics
import android.os.Build
import android.util.Log
import android.util.Size

/**
 * 高分辨率拍照能力检测工具
 * 
 * 通过标准 API 和厂商私有 Key 获取设备支持的高分辨率配置
 */
object HighResolutionHelper {
    
    private const val TAG = "HighResolutionHelper"
    
    // 像素阈值常量
    const val MP_12 = 12_000_000L
    const val MP_24 = 24_000_000L
    const val MP_48 = 48_000_000L
    const val MP_108 = 108_000_000L
    const val MP_200 = 200_000_000L
    
    /**
     * 分辨率配置信息
     * @param size 尺寸
     * @param format 图像格式 (ImageFormat.JPEG, ImageFormat.YUV_420_888 等)
     */
    data class ResolutionConfig(
        val size: Size,
        val format: Int
    ) {
        val pixels: Long get() = size.width.toLong() * size.height.toLong()
        val megapixels: Double get() = pixels / 1_000_000.0
        
        override fun toString(): String {
            return "${size.width}x${size.height} (${String.format("%.1f", megapixels)}MP, format=$format)"
        }
    }
    
    /**
     * 分级分辨率结果
     */
    data class MegapixelOptions(
        val mp12: ResolutionConfig? = null,  // >= 12MP
        val mp24: ResolutionConfig? = null,  // >= 24MP
        val mp48: ResolutionConfig? = null,  // >= 48MP
        val mp108: ResolutionConfig? = null, // >= 108MP
        val mp200: ResolutionConfig? = null, // >= 200MP
        val maxResolution: ResolutionConfig? = null,
        val allResolutions: List<ResolutionConfig> = emptyList()
    ) {
        val maxMegapixels: Int
            get() = when {
                mp200 != null -> 200
                mp108 != null -> 108
                mp48 != null -> 48
                mp24 != null -> 24
                mp12 != null -> 12
                else -> 0
            }
    }
    
    /**
     * 获取设备支持的高分辨率配置
     * 
     * @param characteristics 相机特性
     * @param minPixels 最小像素数，默认 12MP
     * @return 高分辨率配置列表
     */
    fun getHighResolutionConfigs(
        characteristics: CameraCharacteristics,
        minPixels: Long = MP_12
    ): List<ResolutionConfig> {
        val configs = mutableListOf<ResolutionConfig>()
        val seen = mutableSetOf<String>()
        
        // 1. 从标准 API 获取
        getFromStandardApi(characteristics, minPixels, configs, seen)
        
        // 2. 从厂商私有 Key 获取
        getFromVendorKeys(characteristics, minPixels, configs, seen)
        
        // 按像素数降序排列
        return configs.sortedByDescending { it.pixels }
    }
    
    /**
     * 获取分级的分辨率选项
     */
    fun getMegapixelOptions(characteristics: CameraCharacteristics): MegapixelOptions {
        val allConfigs = getHighResolutionConfigs(characteristics, MP_12)
        
        if (allConfigs.isEmpty()) {
            return MegapixelOptions()
        }
        
        var mp12: ResolutionConfig? = null
        var mp24: ResolutionConfig? = null
        var mp48: ResolutionConfig? = null
        var mp108: ResolutionConfig? = null
        var mp200: ResolutionConfig? = null
        
        // 从小到大遍历，找到每个级别的最小满足尺寸
        for (config in allConfigs.sortedBy { it.pixels }) {
            if (config.pixels >= MP_12 && mp12 == null) mp12 = config
            if (config.pixels >= MP_24 && mp24 == null) mp24 = config
            if (config.pixels >= MP_48 && mp48 == null) mp48 = config
            if (config.pixels >= MP_108 && mp108 == null) mp108 = config
            if (config.pixels >= MP_200 && mp200 == null) mp200 = config
        }
        
        return MegapixelOptions(
            mp12 = mp12,
            mp24 = mp24,
            mp48 = mp48,
            mp108 = mp108,
            mp200 = mp200,
            maxResolution = allConfigs.firstOrNull(),
            allResolutions = allConfigs
        )
    }
    
    /**
     * 从标准 StreamConfigurationMap 获取
     */
    private fun getFromStandardApi(
        characteristics: CameraCharacteristics,
        minPixels: Long,
        configs: MutableList<ResolutionConfig>,
        seen: MutableSet<String>
    ) {
        val streamConfigMap = characteristics.get(
            CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP
        ) ?: return
        
        // 支持的图像格式
        val formats = listOf(
            ImageFormat.JPEG,           // 256
            ImageFormat.YUV_420_888,    // 35
            ImageFormat.RAW_SENSOR,     // 32
            ImageFormat.RAW_PRIVATE,    // 36 (API 24+)
            ImageFormat.RAW10,          // 37
            ImageFormat.RAW12           // 38
        )
        
        for (format in formats) {
            try {
                // 标准输出尺寸
                streamConfigMap.getOutputSizes(format)?.forEach { size ->
                    addIfValid(size, format, minPixels, configs, seen)
                }
                
                // 高分辨率输出尺寸 (API 23+)
                streamConfigMap.getHighResolutionOutputSizes(format)?.forEach { size ->
                    addIfValid(size, format, minPixels, configs, seen)
                }
            } catch (e: Exception) {
                Log.w(TAG, "Error getting output sizes for format $format: ${e.message}")
            }
        }
    }
    
    /**
     * 从厂商私有 Key 获取
     */
    private fun getFromVendorKeys(
        characteristics: CameraCharacteristics,
        minPixels: Long,
        configs: MutableList<ResolutionConfig>,
        seen: MutableSet<String>
    ) {
        val vendorKeys = getVendorKeyList()
        
        for (keyName in vendorKeys) {
            try {
                val value = getVendorKeyValue(characteristics, keyName) ?: continue
                parseVendorStreamConfigurations(value, minPixels, configs, seen)
                Log.d(TAG, "Found vendor key: $keyName with ${value.size} values")
            } catch (e: Exception) {
                // 私有 Key 不存在或无法访问，静默忽略
            }
        }
    }
    
    /**
     * 根据设备厂商获取私有 Key 列表
     */
    private fun getVendorKeyList(): List<String> {
        val manufacturer = (Build.MANUFACTURER ?: "unknown").lowercase()
        
        return when {
            manufacturer.contains("samsung") -> listOf(
                "samsung.android.scaler.availablePreviewStreamConfigurations",
                "samsung.android.scaler.availablePictureStreamConfigurations",
                "samsung.android.scaler.availableFullPreviewStreamConfigurations",
                "samsung.android.scaler.availableFullPictureStreamConfigurations",
                "samsung.android.scaler.availableCropPreviewStreamConfigurations",
                "samsung.android.scaler.availableCropPictureStreamConfigurations",
                "samsung.android.scaler.availableSuperNightRawStreamConfigurations",
                "samsung.android.scaler.availableSuperResolutionRawStreamConfigurations",
                "samsung.android.scaler.availableTetraPictureStreamConfigurations",
                "samsung.android.scaler.availableSubPictureStreamConfigurations"
            )
            
            manufacturer.contains("xiaomi") || manufacturer.contains("redmi") -> listOf(
                "com.xiaomi.scaler.availableStreamConfigurations",
                "com.xiaomi.scaler.availableSuperResolutionStreamConfigurations",
                "com.xiaomi.camera.extension.night_availableStreamConfigurations",
                "com.xiaomi.camera.extension.auto_availableStreamConfigurations",
                "com.xiaomi.camera.extension.bokeh_availableStreamConfigurations",
                "com.xiaomi.camera.extension.beauty_availableStreamConfigurations",
                "com.xiaomi.camera.extension.hdr_availableStreamConfigurations",
                "xiaomi.scaler.availableStreamConfigurations",
                "xiaomi.scaler.availableHeicStreamConfigurations",
                "xiaomi.scaler.availableLimitStreamConfigurations",
                "xiaomi.scaler.availableSuperResolutionStreamConfigurations"
            )
            
            manufacturer.contains("huawei") || manufacturer.contains("honor") -> listOf(
                "com.huawei.device.capabilities.hwCaptureRawStreamConfigurations",
                "com.huawei.device.capabilities.hwAvailableDepthStreamConfigurations",
                "com.huawei.device.capabilities.hwStreamConfigurations",
                "com.huawei.device.capabilities.HighPixelCallbackStreamSize"
            )
            
            manufacturer.contains("oppo") || manufacturer.contains("realme") -> listOf(
                "com.oplus.scaler.availableStreamConfigurations",
                "com.oplus.scaler.availablePictureStreamConfigurations",
                "com.oplus.scaler.availablePreviewStreamConfigurations",
                "com.oplus.scaler.availableVideoStreamConfigurations",
                "com.oplus.high.picturesize",
                "com.oplus.custom.jpeg.size",
                "com.oplus.upscale.input.size",
                "com.oplus.upscale.output.size"
            )
            
            manufacturer.contains("vivo") || manufacturer.contains("iqoo") -> listOf(
                "vivo.control.image_sizes",
                "vivo.scaler.availableStreamConfigurations",
                "com.vivo.scaler.availableStreamConfigurations"
            )
            
            manufacturer.contains("oneplus") -> listOf(
                "com.oplus.scaler.availableStreamConfigurations",
                "com.oplus.scaler.availablePictureStreamConfigurations"
            )
            
            manufacturer.contains("meizu") -> listOf(
                "com.meizu.scaler.availableStreamConfigurations",
                "com.meizu.scaler.availableSuperResolutionStreamConfigurations"
            )
            
            manufacturer.contains("infinix") || manufacturer.contains("tecno") -> listOf(
                "com.addParameters.availableStreamConfigurations",
                "com.sensor.info.availableStreamConfigurations"
            )
            
            manufacturer.contains("google") -> listOf(
                // Pixel 设备通常通过标准 API 暴露高分辨率
            )
            
            else -> emptyList()
        }
    }
    
    /**
     * 通过反射获取厂商私有 Key 的值
     */
    @Suppress("UNCHECKED_CAST")
    private fun getVendorKeyValue(
        characteristics: CameraCharacteristics,
        keyName: String
    ): IntArray? {
        return try {
            val keyConstructor = CameraCharacteristics.Key::class.java
                .getDeclaredConstructor(String::class.java, Class::class.java)
            keyConstructor.isAccessible = true
            
            val key = keyConstructor.newInstance(keyName, IntArray::class.java)
                    as CameraCharacteristics.Key<IntArray>
            
            characteristics.get(key)
        } catch (e: Exception) {
            null
        }
    }
    
    /**
     * 解析厂商流配置数据
     * 
     * 厂商私有 Key 的值通常是 int[] 数组，格式为:
     * [format, width, height, isInput, format, width, height, isInput, ...]
     * 每 4 个元素为一组
     */
    private fun parseVendorStreamConfigurations(
        values: IntArray,
        minPixels: Long,
        configs: MutableList<ResolutionConfig>,
        seen: MutableSet<String>
    ) {
        if (values.size < 4) return
        
        var i = 0
        while (i + 3 < values.size) {
            val format = values[i]
            val width = values[i + 1]
            val height = values[i + 2]
            // values[i + 3] 是 isInput 标志，我们忽略它
            
            val pixels = width.toLong() * height.toLong()
            if (pixels >= minPixels && width > 0 && height > 0) {
                val size = Size(width, height)
                addIfValid(size, format, minPixels, configs, seen)
            }
            
            i += 4
        }
    }
    
    /**
     * 添加有效的分辨率配置（去重）
     */
    private fun addIfValid(
        size: Size,
        format: Int,
        minPixels: Long,
        configs: MutableList<ResolutionConfig>,
        seen: MutableSet<String>
    ) {
        val pixels = size.width.toLong() * size.height.toLong()
        if (pixels < minPixels) return
        
        val key = "${format}@${size.width}x${size.height}"
        if (seen.contains(key)) return
        
        seen.add(key)
        configs.add(ResolutionConfig(size, format))
    }
    
    /**
     * 获取格式名称（用于调试）
     */
    fun getFormatName(format: Int): String {
        return when (format) {
            ImageFormat.JPEG -> "JPEG"
            ImageFormat.YUV_420_888 -> "YUV_420_888"
            ImageFormat.RAW_SENSOR -> "RAW_SENSOR"
            ImageFormat.RAW_PRIVATE -> "RAW_PRIVATE"
            ImageFormat.RAW10 -> "RAW10"
            ImageFormat.RAW12 -> "RAW12"
            ImageFormat.HEIC -> "HEIC"
            ImageFormat.DEPTH16 -> "DEPTH16"
            ImageFormat.DEPTH_POINT_CLOUD -> "DEPTH_POINT_CLOUD"
            else -> "UNKNOWN($format)"
        }
    }
    
    /**
     * 打印调试信息
     */
    fun logResolutionCapabilities(characteristics: CameraCharacteristics) {
        val options = getMegapixelOptions(characteristics)
        
        Log.i(TAG, "========== High Resolution Capabilities ==========")
        Log.i(TAG, "Max Megapixels: ${options.maxMegapixels}MP")
        Log.i(TAG, "Max Resolution: ${options.maxResolution}")
        Log.i(TAG, "12MP: ${options.mp12}")
        Log.i(TAG, "24MP: ${options.mp24}")
        Log.i(TAG, "48MP: ${options.mp48}")
        Log.i(TAG, "108MP: ${options.mp108}")
        Log.i(TAG, "200MP: ${options.mp200}")
        Log.i(TAG, "All resolutions (${options.allResolutions.size}):")
        options.allResolutions.forEach { config ->
            Log.i(TAG, "  - $config")
        }
        Log.i(TAG, "===================================================")
    }
}
