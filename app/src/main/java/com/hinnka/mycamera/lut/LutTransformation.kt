package com.hinnka.mycamera.lut

import android.graphics.Bitmap
import coil.size.Size
import coil.transform.Transformation
import android.content.Context
import com.hinnka.mycamera.gallery.PhotoMetadata
import com.hinnka.mycamera.gallery.PhotoProcessor

/**
 * Coil 图像加载库的 LUT 转换器
 * 用于在加载照片时自动应用 LUT 效果
 *
 * @param sharpening 锐化强度
 * @param noiseReduction 降噪强度
 * @param chromaNoiseReduction 减少杂色强度
 */
class PhotoTransformation(
    private val context: Context,
    private val metadata: PhotoMetadata,
    private val photoProcessor: PhotoProcessor,
    private val sharpening: Float = 0f,
    private val noiseReduction: Float = 0f,
    private val chromaNoiseReduction: Float = 0f
) : Transformation {
    
    override val cacheKey: String = "photo_${metadata.toJson().hashCode()}_s${sharpening}_n${noiseReduction}_c${chromaNoiseReduction}"

    override suspend fun transform(input: Bitmap, size: Size): Bitmap {
        return photoProcessor.processBitmap(
            context, null, input, metadata, sharpening, noiseReduction, chromaNoiseReduction
        )
    }
}

