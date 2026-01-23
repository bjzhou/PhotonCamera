package com.hinnka.mycamera.gallery

import android.content.Context
import android.graphics.*
import android.net.Uri
import android.os.Build
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.frame.FrameManager
import com.hinnka.mycamera.frame.FrameRenderer
import com.hinnka.mycamera.lut.LutImageProcessor
import com.hinnka.mycamera.lut.LutManager
import com.hinnka.mycamera.raw.RawDemosaicProcessor
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
     * @param dngPath dng 文件路径
     * @param metadata 照片元数据（包含编辑配置和拍摄信息）
     * @param uri 照片 URI（用于提取 EXIF，仅在 metadata 中没有拍摄信息时使用）
     * @param sharpening 锐化强度
     * @param noiseReduction 降噪强度
     * @param chromaNoiseReduction 减少杂色强度
     * @return 处理后的 Bitmap
     */
    suspend fun process(
        context: Context,
        dngPath: String,
        metadata: PhotoMetadata,
        uri: Uri? = null,
        sharpening: Float = 0f,
        noiseReduction: Float = 0f,
        chromaNoiseReduction: Float = 0f
    ): Bitmap? = withContext(Dispatchers.Default) {
        var result: Bitmap?

        // 优先从元数据中获取软件处理参数
        // 智能回退：如果是导入的照片且元数据中没存过，则默认值为 0，不应用额外处理
        val finalSharpening = metadata.sharpening ?: (if (metadata.isImported) 0f else sharpening)
        val finalNoiseReduction = metadata.noiseReduction ?: (if (metadata.isImported) 0f else noiseReduction)
        val finalChromaNoiseReduction = metadata.chromaNoiseReduction ?: (if (metadata.isImported) 0f else chromaNoiseReduction)

        // 1. 应用 LUT
        val lutConfig = metadata.lutId?.let { lutManager.loadLut(it) }
        val colorRecipeParams = metadata.lutId?.let { lutManager.loadColorRecipeParams(it) }
        val lutResult = RawDemosaicProcessor.getInstance().process(context, dngPath,
            metadata.ratio ?: AspectRatio.RATIO_4_3, lutConfig, colorRecipeParams,
                    finalSharpening, finalNoiseReduction, finalChromaNoiseReduction)
        result = lutResult

        result ?: return@withContext null

        result = applyFrame(context, result, metadata, uri)

        result
    }

    /**
     * @param context 上下文
     * @param input 输入 ARGB的像素数组
     * @param metadata 照片元数据（包含编辑配置和拍摄信息）
     * @param uri 照片 URI（用于提取 EXIF，仅在 metadata 中没有拍摄信息时使用）
     * @param sharpening 锐化强度
     * @param noiseReduction 降噪强度
     * @param chromaNoiseReduction 减少杂色强度
     * @return 处理后的 Bitmap
     */
    suspend fun process(
        context: Context,
        input: IntArray,
        metadata: PhotoMetadata,
        uri: Uri? = null,
        sharpening: Float = 0f,
        noiseReduction: Float = 0f,
        chromaNoiseReduction: Float = 0f
    ): Bitmap = withContext(Dispatchers.Default) {
        var result: Bitmap? = null

        // 优先从元数据中获取软件处理参数
        // 智能回退：如果是导入的照片且元数据中没存过，则默认值为 0，不应用额外处理
        val finalSharpening = metadata.sharpening ?: (if (metadata.isImported) 0f else sharpening)
        val finalNoiseReduction = metadata.noiseReduction ?: (if (metadata.isImported) 0f else noiseReduction)
        val finalChromaNoiseReduction = metadata.chromaNoiseReduction ?: (if (metadata.isImported) 0f else chromaNoiseReduction)

        // 1. 应用 LUT
        if (metadata.lutId != null) {
            val lutConfig = lutManager.loadLut(metadata.lutId)
            val colorRecipeParams = lutManager.loadColorRecipeParams(metadata.lutId)
            if (lutConfig != null && colorRecipeParams.lutIntensity > 0f) {
                val lutResult = lutImageProcessor.applyLut(
                    input,
                    lutConfig,
                    colorRecipeParams,
                    finalSharpening,
                    finalNoiseReduction,
                    finalChromaNoiseReduction
                )
                result = lutResult
            }
        }

        result ?: return@withContext Bitmap.createBitmap(input, input[0], input[1], Bitmap.Config.ARGB_8888)

        result = applyFrame(context, result, metadata, uri)

        result
    }

    /**
     * @param context 上下文
     * @param input 输入 Bitmap
     * @param metadata 照片元数据（包含编辑配置和拍摄信息）
     * @param uri 照片 URI（用于提取 EXIF，仅在 metadata 中没有拍摄信息时使用）
     * @param sharpening 锐化强度
     * @param noiseReduction 降噪强度
     * @param chromaNoiseReduction 减少杂色强度
     * @return 处理后的 Bitmap
     */
    suspend fun process(
        context: Context,
        input: Bitmap,
        metadata: PhotoMetadata,
        uri: Uri? = null,
        sharpening: Float = 0f,
        noiseReduction: Float = 0f,
        chromaNoiseReduction: Float = 0f
    ): Bitmap = withContext(Dispatchers.Default) {
        var result = input

        // 优先从元数据中获取软件处理参数
        // 智能回退：如果是导入的照片且元数据中没存过，则默认值为 0，不应用额外处理
        val finalSharpening = metadata.sharpening ?: (if (metadata.isImported) 0f else sharpening)
        val finalNoiseReduction = metadata.noiseReduction ?: (if (metadata.isImported) 0f else noiseReduction)
        val finalChromaNoiseReduction = metadata.chromaNoiseReduction ?: (if (metadata.isImported) 0f else chromaNoiseReduction)

        // 1. 应用 LUT
        if (metadata.lutId != null) {
            val lutConfig = lutManager.loadLut(metadata.lutId)
            val colorRecipeParams = lutManager.loadColorRecipeParams(metadata.lutId)
            if (lutConfig != null && colorRecipeParams.lutIntensity > 0f) {
                val lutResult = lutImageProcessor.applyLut(
                    result,
                    lutConfig,
                    colorRecipeParams,
                    finalSharpening,
                    finalNoiseReduction,
                    finalChromaNoiseReduction
                )
                result = lutResult
            }
        }

        result = applyFrame(context, result, metadata, uri)
        
        result
    }


    private fun applyFrame(
        context: Context,
        input: Bitmap,
        metadata: PhotoMetadata,
        uri: Uri? = null,
    ) : Bitmap {
        var result = input
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
                        deviceModel = Build.MODEL,
                        brand = Build.MANUFACTURER.replaceFirstChar { it.uppercase() },
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
                if (framedResult != result) {
                    result.recycle()
                }
                result = framedResult
            }
        }
        return result
    }
}
