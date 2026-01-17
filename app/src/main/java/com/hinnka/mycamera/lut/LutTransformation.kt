package com.hinnka.mycamera.lut

import android.content.Context
import android.graphics.Bitmap
import android.net.Uri
import coil.size.Size
import coil.transform.Transformation
import com.hinnka.mycamera.gallery.PhotoMetadata
import com.hinnka.mycamera.gallery.PhotoProcessor

/**
 * Coil 图像加载库的 LUT 转换器
 * 用于在加载照片时自动应用 LUT 效果
 * 
 * @param useSoftwareProcessing 是否使用软件降噪/锐化（默认 true）
 * @param sharpening 锐化强度
 * @param noiseReduction 降噪强度
 * @param chromaNoiseReduction 减少杂色强度
 */
class PhotoTransformation(
    private val context: Context,
    private val uri: Uri,
    private val metadata: PhotoMetadata,
    private val photoProcessor: PhotoProcessor,
    private val useSoftwareProcessing: Boolean = true,
    private val sharpening: Float = 0.3f,
    private val noiseReduction: Float = 0.25f,
    private val chromaNoiseReduction: Float = 0.25f
) : Transformation {
    
    override val cacheKey: String = "photo_${uri}_${metadata.toJson().hashCode()}_sw${useSoftwareProcessing}_s${sharpening}_n${noiseReduction}_c${chromaNoiseReduction}"

    override suspend fun transform(input: Bitmap, size: Size): Bitmap {
        return photoProcessor.process(
            context, input, metadata, uri, 
            useSoftwareProcessing, sharpening, noiseReduction, chromaNoiseReduction
        )
    }
}

