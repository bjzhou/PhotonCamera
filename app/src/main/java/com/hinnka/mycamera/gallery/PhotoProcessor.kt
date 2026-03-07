package com.hinnka.mycamera.gallery

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.graphics.ColorSpace
import android.os.Build
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.frame.FrameManager
import com.hinnka.mycamera.frame.FrameRenderer
import com.hinnka.mycamera.lut.LutImageProcessor
import com.hinnka.mycamera.lut.LutManager
import com.hinnka.mycamera.processor.DepthBokehProcessor
import com.hinnka.mycamera.raw.RawDemosaicProcessor
import com.hinnka.mycamera.utils.PLog
import com.hinnka.mycamera.utils.YuvProcessor
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.nio.ByteBuffer

/**
 * 照片处理器
 *
 * 集中管理照片的 LUT、旋转、亮度和边框应用逻辑
 */
class PhotoProcessor(
    private val lutManager: LutManager,
    private val lutImageProcessor: LutImageProcessor,
    private val frameManager: FrameManager,
    private val frameRenderer: FrameRenderer,
    private val depthBokehProcessor: DepthBokehProcessor,
) {

    suspend fun process(context: Context, photoId: String, metadata: PhotoMetadata,
                        sharpening: Float = 0f,
                        noiseReduction: Float = 0f,
                        chromaNoiseReduction: Float = 0f): Bitmap? {
        val dngFile = PhotoManager.getDngFile(context, photoId)
        val yuvFile = PhotoManager.getYuvFile(context, photoId)
        val photoFile = PhotoManager.getPhotoFile(context, photoId)

        if (dngFile.exists()) {
            return processDng(
                context,
                photoId,
                dngFile.absolutePath,
                metadata,
                sharpening,
                noiseReduction,
                chromaNoiseReduction
            )
        } else if (yuvFile.exists()) {
            val data = PhotoManager.loadYuvData(context, photoId) ?: return null
            return processYuv(
                context,
                photoId,
                data,
                metadata,
                sharpening,
                noiseReduction,
                chromaNoiseReduction
            )
        } else if (photoFile.exists()) {
            val bitmap = BitmapFactory.decodeFile(photoFile.absolutePath) ?: return null
            return processBitmap(
                context,
                photoId,
                bitmap,
                metadata,
                sharpening,
                noiseReduction,
                chromaNoiseReduction
            )
        }
        return null
    }

    /**
     * @param dngPath dng 文件路径
     * @param metadata 照片元数据（包含编辑配置和拍摄信息）
     * @param sharpening 锐化强度
     * @param noiseReduction 降噪强度
     * @param chromaNoiseReduction 减少杂色强度
     * @return 处理后的 Bitmap
     */
    suspend fun processDng(
        context: Context,
        photoId: String?,
        dngPath: String,
        metadata: PhotoMetadata,
        sharpening: Float = 0f,
        noiseReduction: Float = 0f,
        chromaNoiseReduction: Float = 0f
    ): Bitmap? = withContext(Dispatchers.IO) {
        var result: Bitmap?

        // 优先从元数据中获取软件处理参数
        // 智能回退：如果是导入的照片且元数据中没存过，则默认值为 0，不应用额外处理
        val finalSharpening = metadata.sharpening ?: (if (metadata.isImported) 0f else sharpening)
        val finalNoiseReduction = metadata.noiseReduction ?: (if (metadata.isImported) 0f else noiseReduction)
        val finalChromaNoiseReduction = metadata.chromaNoiseReduction ?: (if (metadata.isImported) 0f else chromaNoiseReduction)

        // 1. 应用 LUT
        val lutConfig = metadata.lutId?.let { lutManager.loadLut(it) }
        val colorRecipeParams = metadata.lutId?.let { lutManager.loadColorRecipeParams(it) }
        val cropRegion = metadata.cropRegion

        val bitmap = RawDemosaicProcessor.getInstance().process(
            context,
            dngPath,
            metadata.ratio ?: AspectRatio.RATIO_4_3,
            cropRegion,
            metadata.rotation,
            metadata.exposureBias ?: 0f
        )

        result = bitmap?.let {
            var b = it

            metadata.computationalAperture?.let { aperture ->
                b = depthBokehProcessor.applyHighQualityBokeh(context, photoId, b,
                    metadata.focusPointX, metadata.focusPointY, aperture)
                photoId?.let { photoId -> PhotoManager.saveBokehPhoto(context, photoId, b) }
            }

            lutImageProcessor.applyLut(
                b,
                lutConfig,
                colorRecipeParams,
                finalSharpening,
                finalNoiseReduction,
                finalChromaNoiseReduction
            )
        }

        result ?: return@withContext null

        result = applyFrame(result, metadata)

        result
    }

    /**
     * @param input 输入 ARGB的像素数组
     * @param metadata 照片元数据（包含编辑配置和拍摄信息）
     * @param sharpening 锐化强度
     * @param noiseReduction 降噪强度
     * @param chromaNoiseReduction 减少杂色强度
     * @return 处理后的 Bitmap
     */
    suspend fun processYuv(
        context: Context,
        photoId: String?,
        input: ByteBuffer,
        metadata: PhotoMetadata,
        sharpening: Float = 0f,
        noiseReduction: Float = 0f,
        chromaNoiseReduction: Float = 0f
    ): Bitmap = withContext(Dispatchers.IO) {

        // 优先从元数据中获取软件处理参数
        // 智能回退：如果是导入的照片且元数据中没存过，则默认值为 0，不应用额外处理
        val finalSharpening = metadata.sharpening ?: (if (metadata.isImported) 0f else sharpening)
        val finalNoiseReduction = metadata.noiseReduction ?: (if (metadata.isImported) 0f else noiseReduction)
        val finalChromaNoiseReduction = metadata.chromaNoiseReduction ?: (if (metadata.isImported) 0f else chromaNoiseReduction)

        val lutConfig = metadata.lutId?.let { lutManager.loadLut(it) }
        val colorRecipeParams = metadata.lutId?.let { lutManager.loadColorRecipeParams(it) }

        // 1. 应用 LUT
        var result = lutImageProcessor.applyLut(
            input.asShortBuffer(),
            metadata.width,
            metadata.height,
            ColorSpace.get(metadata.colorSpace),
            lutConfig,
            colorRecipeParams,
            finalSharpening,
            finalNoiseReduction,
            finalChromaNoiseReduction
        )
        YuvProcessor.free(input)

        metadata.computationalAperture?.let { aperture ->
            result = depthBokehProcessor.applyHighQualityBokeh(context, photoId, result,
                metadata.focusPointX, metadata.focusPointY, aperture)
            photoId?.let { photoId -> PhotoManager.saveBokehPhoto(context, photoId, result) }
        }

        result = applyFrame(result, metadata)

        result
    }

    /**
     * @param input 输入 Bitmap
     * @param metadata 照片元数据（包含编辑配置和拍摄信息）
     * @param sharpening 锐化强度
     * @param noiseReduction 降噪强度
     * @param chromaNoiseReduction 减少杂色强度
     * @return 处理后的 Bitmap
     */
    suspend fun processBitmap(
        context: Context,
        photoId: String?,
        input: Bitmap,
        metadata: PhotoMetadata,
        sharpening: Float = 0f,
        noiseReduction: Float = 0f,
        chromaNoiseReduction: Float = 0f,
        useComputationalAperture: Boolean = false,
    ): Bitmap = withContext(Dispatchers.IO) {
        var result = input

        // 优先从元数据中获取软件处理参数
        // 智能回退：如果是导入的照片且元数据中没存过，则默认值为 0，不应用额外处理
        val finalSharpening = metadata.sharpening ?: (if (metadata.isImported) 0f else sharpening)
        val finalNoiseReduction = metadata.noiseReduction ?: (if (metadata.isImported) 0f else noiseReduction)
        val finalChromaNoiseReduction = metadata.chromaNoiseReduction ?: (if (metadata.isImported) 0f else chromaNoiseReduction)

        val lutConfig = metadata.lutId?.let { lutManager.loadLut(it) }
        val colorRecipeParams = metadata.lutId?.let { lutManager.loadColorRecipeParams(it) }

        // 1. 应用 LUT
        result = lutImageProcessor.applyLut(
            result,
            lutConfig,
            colorRecipeParams,
            finalSharpening,
            finalNoiseReduction,
            finalChromaNoiseReduction
        )

        if (useComputationalAperture) {
            metadata.computationalAperture?.let { aperture ->
                result = depthBokehProcessor.applyHighQualityBokeh(context, photoId, result,
                    metadata.focusPointX, metadata.focusPointY, aperture)
                photoId?.let { photoId -> PhotoManager.saveBokehPhoto(context, photoId, result) }
            }
        }

        result = applyFrame(result, metadata)

        result
    }


    private suspend fun applyFrame(
        input: Bitmap,
        metadata: PhotoMetadata,
    ) : Bitmap {
        var result = input
        // 2. 应用边框水印
        if (metadata.frameId != null) {
            val template = frameManager.loadTemplate(metadata.frameId)
            if (template != null) {
                val customProperties = frameManager.loadCustomProperties(metadata.frameId)
                val finalMetadata = metadata.copy(
                    deviceModel = metadata.deviceModel ?: Build.MODEL,
                    brand = metadata.brand ?: Build.MANUFACTURER.replaceFirstChar { it.uppercase() },
                    dateTaken = metadata.dateTaken ?: metadata.dateTaken ?: System.currentTimeMillis(),
                    width = if (metadata.width > 0) metadata.width else result.width,
                    height = if (metadata.height > 0) metadata.height else result.height,
                    customProperties = metadata.customProperties.ifEmpty { customProperties }
                )

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
