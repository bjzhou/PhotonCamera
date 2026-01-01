package com.hinnka.mycamera.lut

import android.graphics.Bitmap
import coil.size.Size
import coil.transform.Transformation

/**
 * Coil 图像加载库的 LUT 转换器
 * 用于在加载照片时自动应用 LUT 效果
 */
class LutTransformation(
    private val lutId: String?,
    private val intensity: Float,
    private val lutManager: LutManager,
    private val lutImageProcessor: LutImageProcessor
) : Transformation {
    
    override val cacheKey: String = "lut_${lutId ?: "none"}_$intensity"

    override suspend fun transform(input: Bitmap, size: Size): Bitmap {
        // 如果没有 LUT 或者强度为 0，不进行转换
        if (lutId == null || intensity <= 0f) return input
        
        // 加载 LUT 配置
        val lutConfig = lutManager.loadLut(lutId) ?: return input
        
        // 应用 LUT
        return lutImageProcessor.applyLut(input, lutConfig, intensity)
    }
}
