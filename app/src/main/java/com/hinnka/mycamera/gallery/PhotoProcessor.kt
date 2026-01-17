package com.hinnka.mycamera.gallery

import android.content.Context
import android.graphics.*
import android.net.Uri
import com.hinnka.mycamera.frame.FrameManager
import com.hinnka.mycamera.frame.FrameRenderer
import com.hinnka.mycamera.lut.LutImageProcessor
import com.hinnka.mycamera.lut.LutManager
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext

/**
 * 照片处理器
 * 
 * 集中管理照片的 LUT、旋转、亮度和边框应用逻辑
 */
class PhotoProcessor(
    private val lutManager: LutManager,
    private val lutImageProcessor: LutImageProcessor,
    private val frameManager: FrameManager,
    private val frameRenderer: FrameRenderer
) {
    /**
     * @param context 上下文
     * @param input 输入 Bitmap
     * @param metadata 照片元数据（包含编辑配置和拍摄信息）
     * @param uri 照片 URI（用于提取 EXIF，仅在 metadata 中没有拍摄信息时使用）
     * @param useSoftwareProcessing 是否使用软件降噪/锐化（默认 true）
     * @param sharpening 锐化强度（仅 useSoftwareProcessing=true 时生效）
     * @param noiseReduction 降噪强度（仅 useSoftwareProcessing=true 时生效）
     * @param chromaNoiseReduction 减少杂色强度（仅 useSoftwareProcessing=true 时生效）
     * @return 处理后的 Bitmap
     */
    suspend fun process(
        context: Context,
        input: Bitmap,
        metadata: PhotoMetadata,
        uri: Uri? = null,
        useSoftwareProcessing: Boolean = true,
        sharpening: Float = 0.3f,
        noiseReduction: Float = 0.25f,
        chromaNoiseReduction: Float = 0.25f
    ): Bitmap = withContext(Dispatchers.Default) {
        var result = input
        
        // 1. 应用 LUT
        if (metadata.lutId != null) {
            val lutConfig = lutManager.loadLut(metadata.lutId)
            val colorRecipeParams = lutManager.loadColorRecipeParams(metadata.lutId)
            if (lutConfig != null && colorRecipeParams.lutIntensity > 0f) {
                val lutResult = lutImageProcessor.applyLut(
                    result, 
                    lutConfig, 
                    colorRecipeParams,
                    useSoftwareProcessing,
                    sharpening,
                    noiseReduction,
                    chromaNoiseReduction
                )
                result = lutResult
            }
        }
        
        // 2. 应用边框水印
        if (metadata.frameId != null) {
            val template = frameManager.loadTemplate(metadata.frameId)
            if (template != null) {
                // 如果 metadata 中没有拍摄信息，尝试从 URI 加载
                val finalMetadata = if (metadata.deviceModel == null && uri != null) {
                    // 从 URI 加载 EXIF 并合并到当前 metadata
                    val exifData = PhotoMetadata.fromUri(context, uri)
                    metadata.copy(
                        deviceModel = exifData.deviceModel,
                        brand = exifData.brand,
                        dateTaken = exifData.dateTaken ?: metadata.dateTaken,
                        location = exifData.location,
                        iso = exifData.iso ?: metadata.iso,
                        shutterSpeed = exifData.shutterSpeed ?: metadata.shutterSpeed,
                        focalLength = exifData.focalLength ?: metadata.focalLength,
                        focalLength35mm = exifData.focalLength35mm ?: metadata.focalLength35mm,
                        aperture = exifData.aperture ?: metadata.aperture,
                        width = if (result.width > 0) result.width else exifData.width,
                        height = if (result.height > 0) result.height else exifData.height
                    )
                } else if (metadata.deviceModel == null) {
                    // 如果没有任何来源，使用默认值
                    metadata.copy(
                        deviceModel = android.os.Build.MODEL,
                        brand = android.os.Build.MANUFACTURER.replaceFirstChar { it.uppercase() },
                        dateTaken = metadata.dateTaken ?: System.currentTimeMillis(),
                        width = result.width,
                        height = result.height
                    )
                } else {
                    // 使用现有 metadata，但确保尺寸正确
                    metadata.copy(
                        width = if (metadata.width > 0) metadata.width else result.width,
                        height = if (metadata.height > 0) metadata.height else result.height
                    )
                }
                
                val framedResult = frameRenderer.render(
                    result,
                    template,
                    finalMetadata,
                )
                if (framedResult != result && result != input) {
                    result.recycle()
                }
                result = framedResult
            }
        }
        
        result
    }

    /**
     * 应用旋转和亮度调整
     */
    private fun applyEdits(bitmap: Bitmap, rotation: Float, brightness: Float): Bitmap {
        val matrix = Matrix()
        
        // 旋转
        if (rotation != 0f) {
            matrix.postRotate(rotation)
        }
        
        var result = if (rotation != 0f) {
            try {
                Bitmap.createBitmap(bitmap, 0, 0, bitmap.width, bitmap.height, matrix, true)
            } catch (e: Exception) {
                bitmap
            }
        } else {
            bitmap
        }
        
        // 亮度调整
        if (brightness != 1f) {
            try {
                val adjustedBitmap = Bitmap.createBitmap(result.width, result.height, Bitmap.Config.ARGB_8888)
                val canvas = Canvas(adjustedBitmap)
                val paint = Paint()
                val colorMatrix = ColorMatrix().apply {
                    setScale(brightness, brightness, brightness, 1f)
                }
                paint.colorFilter = ColorMatrixColorFilter(colorMatrix)
                canvas.drawBitmap(result, 0f, 0f, paint)
                if (result != bitmap) {
                    result.recycle()
                }
                result = adjustedBitmap
            } catch (e: Exception) {
                // Ignore and keep result as is
            }
        }
        
        return result
    }
}
