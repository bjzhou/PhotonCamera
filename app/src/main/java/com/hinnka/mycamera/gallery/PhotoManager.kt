package com.hinnka.mycamera.gallery

import android.app.PendingIntent
import android.content.ContentValues
import android.content.Context
import android.graphics.*
import android.hardware.camera2.CameraCharacteristics
import android.hardware.camera2.CaptureResult
import android.media.Image
import android.media.ThumbnailUtils
import android.net.Uri
import android.os.Build
import android.os.Environment
import android.provider.MediaStore
import androidx.core.graphics.createBitmap
import androidx.exifinterface.media.ExifInterface
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.data.RawEngine
import com.hinnka.mycamera.livephoto.MotionPhotoWriter
import com.hinnka.mycamera.processor.MultiFrameStacker
import com.hinnka.mycamera.raw.RawDemosaicProcessor
import com.hinnka.mycamera.utils.BitmapUtils
import com.hinnka.mycamera.utils.PLog
import com.hinnka.mycamera.utils.RawProcessor
import com.hinnka.mycamera.utils.YuvProcessor
import kotlinx.coroutines.*
import java.io.ByteArrayOutputStream
import java.io.File
import java.io.FileOutputStream
import java.nio.ByteBuffer
import java.text.SimpleDateFormat
import java.util.*

/**
 * 照片管理器
 *
 * 统一管理照片文件、元数据、缩略图等
 * 存储路径: context.filesDir/photos/<photoId>/
 */
object PhotoManager {
    private const val TAG = "PhotoManager"
    private const val PHOTOS_DIR = "photos"
    private const val PHOTO_FILE = "original.jpg"
    private const val YUV_FILE = "original.jxl"
    private const val VIDEO_FILE = "video.mp4"
    private const val DNG_FILE = "original.dng"
    private const val METADATA_FILE = "metadata.json"
    private const val THUMBNAIL_FILE = "thumbnail.jpg"

    val processingScope = CoroutineScope(Dispatchers.Default + SupervisorJob())

    private fun getPhotosBaseDir(context: Context): File {
        val dir = File(context.getExternalFilesDir(Environment.DIRECTORY_PICTURES), PHOTOS_DIR)
        if (!dir.exists()) {
            dir.mkdirs()
        }
        return dir
    }

    private fun getPhotoDir(context: Context, photoId: String): File {
        val dir = File(getPhotosBaseDir(context), photoId)
        if (!dir.exists()) {
            dir.mkdirs()
        }
        return dir
    }

    fun getPhotoFile(context: Context, photoId: String): File {
        return File(getPhotoDir(context, photoId), PHOTO_FILE)
    }

    fun getYuvFile(context: Context, photoId: String): File {
        return File(getPhotoDir(context, photoId), YUV_FILE)
    }

    fun getDngFile(context: Context, photoId: String): File {
        return File(getPhotoDir(context, photoId), DNG_FILE)
    }

    fun getMetadataFile(context: Context, photoId: String): File {
        return File(getPhotoDir(context, photoId), METADATA_FILE)
    }

    fun getThumbnailFile(context: Context, photoId: String): File {
        return File(getPhotoDir(context, photoId), THUMBNAIL_FILE)
    }

    fun getVideoFile(context: Context, photoId: String): File {
        return File(getPhotoDir(context, photoId), VIDEO_FILE)
    }

    suspend fun exportPhoto(
        context: Context,
        id: String,
        photoProcessor: PhotoProcessor,
        metadata: PhotoMetadata,
        sharpeningValue: Float,
        noiseReductionValue: Float,
        chromaNoiseReductionValue: Float,
        photoQuality: Int = 95,
        onComplete: (Boolean) -> Unit = {}
    ) {
        withContext(Dispatchers.IO) {
            try {
                // 读取照片
                val processedBitmap = photoProcessor.process(
                    context, id, metadata,
                    sharpeningValue, noiseReductionValue, chromaNoiseReductionValue
                )

                processedBitmap ?: return@withContext

                // 保存到指定目录
                val filename =
                    "PhotonCamera_${SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US).format(Date())}.jpg"
                val contentValues = ContentValues().apply {
                    put(MediaStore.MediaColumns.DISPLAY_NAME, filename)
                    put(MediaStore.MediaColumns.MIME_TYPE, "image/jpeg")
                    put(MediaStore.MediaColumns.RELATIVE_PATH, Environment.DIRECTORY_DCIM + "/PhotonCamera")
                }

                val uri = context.contentResolver.insert(
                    MediaStore.Images.Media.EXTERNAL_CONTENT_URI,
                    contentValues
                )

                uri?.let {
                    val videoFile = File(getPhotoDir(context, id), VIDEO_FILE)
                    val isLivePhoto = videoFile.exists()

                    val tempExportFile = File(context.cacheDir, "temp_export_${System.nanoTime()}.jpg")
                    FileOutputStream(tempExportFile).use { outputStream ->
                        processedBitmap.compress(Bitmap.CompressFormat.JPEG, photoQuality, outputStream)
                    }

                    ExifWriter.writeExif(
                        tempExportFile, metadata.toCaptureInfo().copy(
                            imageWidth = processedBitmap.width,
                            imageHeight = processedBitmap.height
                        )
                    )

                    if (isLivePhoto) {
                        val tempMotionPhotoFile = File(context.cacheDir, "temp_motion_${System.nanoTime()}.jpg")
                        try {
                            PLog.d(
                                TAG,
                                "Attempting to create Motion Photo for export: JPEG=${tempExportFile.length()}, Video=${videoFile.length()}"
                            )

                            // 重新从磁盘加载最新元数据，以获取可能刚写回的 presentationTimestampUs
                            val latestMetadata = loadMetadata(context, id) ?: metadata
                            val success = MotionPhotoWriter.write(
                                tempExportFile.absolutePath,
                                videoFile.absolutePath,
                                tempMotionPhotoFile.absolutePath,
                                latestMetadata.presentationTimestampUs ?: 0L,
                                context
                            )

                            PLog.d(TAG, "MotionPhotoWriter result: $success")

                            context.contentResolver.openOutputStream(uri)?.use { outputStream ->
                                if (success) {
                                    tempMotionPhotoFile.inputStream().use { input -> input.copyTo(outputStream) }
                                    PLog.d(
                                        TAG,
                                        "Exported Live Photo successfully: ${tempMotionPhotoFile.length()} bytes"
                                    )
                                } else {
                                    // Fallback to normal JPEG (with EXIF)
                                    PLog.w(TAG, "Motion Photo synthesis failed, falling back to JPEG")
                                    tempExportFile.inputStream().use { input -> input.copyTo(outputStream) }
                                }
                            }

                            if (Build.MANUFACTURER.lowercase().contains("vivo")) {
                                val filename = filename.replace(".jpg", ".mp4")
                                val contentValues = ContentValues().apply {
                                    put(MediaStore.MediaColumns.DISPLAY_NAME, filename)
                                    put(MediaStore.MediaColumns.MIME_TYPE, "video/mp4")
                                    put(MediaStore.MediaColumns.RELATIVE_PATH, Environment.DIRECTORY_DCIM + "/PhotonCamera")
                                }

                                val uri = context.contentResolver.insert(
                                    MediaStore.Video.Media.EXTERNAL_CONTENT_URI,
                                    contentValues
                                )
                                uri?.let { uri -> context.contentResolver.openOutputStream(uri) }?.use { outputStream ->
                                    val tempMotionVideoFile = File(tempMotionPhotoFile.absolutePath.replace(".jpg", ".mp4"))
                                    if (tempMotionVideoFile.exists()) {
                                        tempMotionVideoFile.inputStream().use { input -> input.copyTo(outputStream) }
                                    }
                                    tempMotionVideoFile.delete()
                                }
                            }
                        } finally {
                            tempMotionPhotoFile.delete()
                        }
                    } else {
                        // 3b. Normal Export: Copy Temp File (with EXIF) to MediaStore
                        context.contentResolver.openOutputStream(uri)?.use { outputStream ->
                            tempExportFile.inputStream().use { input -> input.copyTo(outputStream) }
                        }
                    }

                    // Save exported URI to metadata
                    val currentMetadata = loadMetadata(context, id) ?: metadata
                    val updatedMetadata = currentMetadata.copy(
                        exportedUris = currentMetadata.exportedUris + uri.toString()
                    )
                    saveMetadata(context, id, updatedMetadata)
                    PLog.d(TAG, "Exported URI saved: $uri for photo $id")
                }

                processedBitmap.recycle()
                withContext(Dispatchers.Main) {
                    onComplete(uri != null)
                }

            } catch (e: Exception) {
                PLog.e(TAG, "Failed to export photo", e)
                withContext(Dispatchers.Main) {
                    onComplete(false)
                }
            }
        }
    }

    suspend fun exportDng(context: Context, data: ByteArray, metadata: PhotoMetadata) =
        withContext(Dispatchers.IO) {
            try {
                val timestamp = SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US)
                    .format(Date())
                val dngFilename = "PhotonCamera_${timestamp}.dng"
                val dngContentValues = ContentValues().apply {
                    put(MediaStore.MediaColumns.DISPLAY_NAME, dngFilename)
                    put(MediaStore.MediaColumns.MIME_TYPE, "image/x-adobe-dng")
                    put(
                        MediaStore.MediaColumns.RELATIVE_PATH,
                        Environment.DIRECTORY_DCIM + "/PhotonCamera"
                    )
                }

                val dngUri = context.contentResolver.insert(
                    MediaStore.Images.Media.EXTERNAL_CONTENT_URI,
                    dngContentValues
                )

                dngUri?.let { uri ->
                    context.contentResolver.openOutputStream(uri)?.use { outputStream ->
                        outputStream.write(data)
                    }
                    PLog.d(TAG, "DNG exported: $uri")

                    val photoId = getPhotoIds(context).firstOrNull()
                    if (photoId != null) {
                        val currentMetadata = loadMetadata(context, photoId) ?: metadata
                        val updatedMetadata = currentMetadata.copy(
                            exportedUris = currentMetadata.exportedUris + uri.toString()
                        )
                        saveMetadata(context, photoId, updatedMetadata)
                        PLog.d(TAG, "Exported URI saved: $uri")
                    }
                }
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to export DNG", e)
            }
        }


    /**
     * 保存新拍摄的照片
     *
     * @param context Context
     * @param image 原始 Image (YUV420 或 RAW_SENSOR)
     * @param metadata 编辑元数据（LUT、边框等）
     */
    suspend fun savePhoto(
        context: Context,
        image: Image,
        thumbnail: Bitmap?,
        metadata: PhotoMetadata,
        rotation: Int,
        aspectRatio: AspectRatio,
        characteristics: CameraCharacteristics,
        captureResult: CaptureResult?,
        shouldAutoSave: Boolean = true,
        photoProcessor: PhotoProcessor,
        sharpeningValue: Float,
        noiseReductionValue: Float,
        chromaNoiseReductionValue: Float,
        photoQuality: Int = 95,
        livePhotoVideoDeferred: Deferred<Pair<File, Long>?>? = null,
        onProcessingComplete: (() -> Unit)? = null
    ): String? = withContext(Dispatchers.IO) {
        try {
            val photoId = UUID.randomUUID().toString()
            val photoDir = getPhotoDir(context, photoId)

            // 预先准备所有文件路径
            val photoFile = File(photoDir, PHOTO_FILE)
            val videoFile = File(photoDir, VIDEO_FILE)
            val tempFile = File(photoDir, "temp.jpg")
            val yuvFile = File(photoDir, YUV_FILE)
            val dngFile = File(photoDir, DNG_FILE)
            val metadataFile = File(photoDir, METADATA_FILE)
            val thumbnailFile = File(photoDir, THUMBNAIL_FILE)

            val format = image.format

            if (thumbnail != null && !thumbnail.isRecycled) {
                generateThumbnail(thumbnail, thumbnailFile)
            } else {
                PLog.d(TAG, "Thumbnail unavailable: $thumbnail")
            }

            val cropRegion = captureResult?.get(CaptureResult.SCALER_CROP_REGION)

            // 根据图像格式处理
            when (format) {
                ImageFormat.YUV_420_888, ImageFormat.YCBCR_P010, ImageFormat.NV21 -> {
                    val dimensions =
                        BitmapUtils.calculateProcessedRect(image.width, image.height, aspectRatio, null, rotation)
                    val finalWidth = dimensions.width()
                    val finalHeight = dimensions.height()
                    // 保存元数据
                    val metadataWithInfo = metadata.copy(
                        width = finalWidth,
                        height = finalHeight,
                        ratio = aspectRatio,
                    )
                    metadataFile.writeText(metadataWithInfo.toJson())
                    photoFile.createNewFile()
                    if (livePhotoVideoDeferred != null) {
                        videoFile.createNewFile()
                    }
                    processingScope.launch(Dispatchers.IO) {
                        try {
                            // 创建预览用的 Bitmap
                            val previewBitmap = createBitmap(finalWidth, finalHeight)

                            val livePhotoResult = livePhotoVideoDeferred?.await()
                            livePhotoResult?.first?.let { cacheVideoFile ->
                                if (cacheVideoFile.exists()) {
                                    try {
                                        cacheVideoFile.copyTo(videoFile, overwrite = true)
                                        cacheVideoFile.delete()

                                        // 更新元数据以包含时间戳
                                        val currentMeta = loadMetadata(context, photoId) ?: metadataWithInfo
                                        saveMetadata(context, photoId, currentMeta.copy(presentationTimestampUs = livePhotoResult.second))
                                    } catch (e: Exception) {
                                        PLog.e(TAG, "Failed to move video file", e)
                                    }
                                    PLog.d(TAG, "Motion Photo synthesized for $photoId with TS: ${livePhotoResult.second}")
                                }
                            }

                            // YUV 格式：使用 native 处理（包含旋转和裁切）并直接保存为 FP16 JXL
                            val success = YuvProcessor.processAndSave(
                                image, aspectRatio, rotation,
                                yuvFile.absolutePath, previewBitmap
                            )
                            if (success) {
                                if (thumbnail == null) {
                                    generateThumbnail(previewBitmap, thumbnailFile)
                                }
                                FileOutputStream(tempFile).use { outputStream ->
                                    previewBitmap.compress(Bitmap.CompressFormat.JPEG, photoQuality, outputStream)
                                }
                                tempFile.renameTo(photoFile)
                                if (shouldAutoSave) {
                                    exportPhoto(
                                        context,
                                        photoId,
                                        photoProcessor,
                                        metadataWithInfo,
                                        sharpeningValue,
                                        noiseReductionValue,
                                        chromaNoiseReductionValue,
                                        photoQuality
                                    )
                                }
                            }
                        } catch (e: Exception) {
                            PLog.e(TAG, "Failed to savePhoto", e)
                        } finally {
                            onProcessingComplete?.invoke()
                        }
                    }
                }

                ImageFormat.RAW_SENSOR, ImageFormat.RAW10, ImageFormat.RAW12 -> {
                    val dimensions =
                        BitmapUtils.calculateProcessedRect(image.width, image.height, aspectRatio, cropRegion, rotation)
                    // 保存元数据
                    val metadataWithInfo = metadata.copy(
                        width = dimensions.width(),
                        height = dimensions.height(),
                        ratio = aspectRatio,
                        cropRegion = cropRegion,
                        rotation = rotation,
                        sharpening = if (sharpeningValue == 0f) 0.4f else sharpeningValue,
                        noiseReduction = noiseReductionValue,
                        chromaNoiseReduction = if (chromaNoiseReductionValue == 0f) 0.25f else chromaNoiseReductionValue,
                    )
                    metadataFile.writeText(metadataWithInfo.toJson())
                    photoFile.createNewFile()
                    if (livePhotoVideoDeferred != null) {
                        videoFile.createNewFile()
                    }
                    processingScope.launch(Dispatchers.IO) {
                        try {
                            captureResult ?: return@launch

                            val livePhotoResult = livePhotoVideoDeferred?.await()
                            livePhotoResult?.first?.let { cacheVideoFile ->
                                if (cacheVideoFile.exists()) {
                                    try {
                                        cacheVideoFile.copyTo(videoFile, overwrite = true)
                                        cacheVideoFile.delete()

                                        // 更新元数据以包含时间戳
                                        val currentMeta = loadMetadata(context, photoId) ?: metadataWithInfo
                                        saveMetadata(context, photoId, currentMeta.copy(presentationTimestampUs = livePhotoResult.second))
                                    } catch (e: Exception) {
                                        PLog.e(TAG, "Failed to move video file", e)
                                    }
                                    PLog.d(TAG, "Motion Photo synthesized for $photoId with TS: ${livePhotoResult.second}")
                                }
                            }

                            val dngDataBytes = ByteArrayOutputStream().use { dngData ->
                                RawProcessor.saveToDng(image, characteristics, captureResult, dngData, rotation)
                                dngData.toByteArray()
                            }
                            FileOutputStream(dngFile).use { outputStream ->
                                outputStream.write(dngDataBytes)
                            }

                            val bitmap = if (metadataWithInfo.rawEngine == RawEngine.SELF_DEVELOPED) {
                                RawDemosaicProcessor.getInstance().process(
                                    dngFile.absolutePath,
                                    aspectRatio,
                                    cropRegion,
                                    rotation
                                )
                            } else {
                                RawProcessor.processAndToBitmap(
                                    dngDataBytes,
                                    aspectRatio,
                                    cropRegion,
                                    rotation
                                )
                            } ?: return@launch
                            if (thumbnail == null) {
                                generateThumbnail(bitmap, thumbnailFile)
                            }
                            FileOutputStream(tempFile).use { outputStream ->
                                bitmap.compress(Bitmap.CompressFormat.JPEG, photoQuality, outputStream)
                            }
                            tempFile.renameTo(photoFile)
                            bitmap.recycle()
                            if (shouldAutoSave) {
                                exportDng(
                                    context,
                                    dngDataBytes,
                                    metadataWithInfo,
                                )
                                exportPhoto(
                                    context,
                                    photoId,
                                    photoProcessor,
                                    metadataWithInfo,
                                    sharpeningValue,
                                    noiseReductionValue,
                                    chromaNoiseReductionValue,
                                    photoQuality
                                )
                            }
                        } catch (e: Exception) {
                            PLog.e(TAG, "Failed to savePhoto", e)
                        } finally {
                            onProcessingComplete?.invoke()
                        }
                    }
                }

                else -> {
                    PLog.e(TAG, "Unsupported image format: $format")
                    onProcessingComplete?.invoke()
                }
            }
            photoId
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to save photo", e)
            onProcessingComplete?.invoke()
            null
        }
    }


    /**
     * 保存堆栈合成后的照片
     */
    suspend fun saveStackedPhoto(
        context: Context,
        images: List<Image>,
        thumbnail: Bitmap?,
        metadata: PhotoMetadata,
        rotation: Int,
        aspectRatio: AspectRatio,
        characteristics: CameraCharacteristics?,
        captureResult: CaptureResult?,
        shouldAutoSave: Boolean = true,
        photoProcessor: PhotoProcessor,
        sharpeningValue: Float,
        noiseReductionValue: Float,
        chromaNoiseReductionValue: Float,
        photoQuality: Int = 95,
        useSuperResolution: Boolean = false,
        livePhotoVideoDeferred: Deferred<Pair<File, Long>?>? = null,
        onProcessingComplete: (() -> Unit)? = null
    ): String? = withContext(Dispatchers.IO) {
        try {
            val photoId = UUID.randomUUID().toString()
            val photoDir = getPhotoDir(context, photoId)

            // 预先准备所有文件路径
            val photoFile = File(photoDir, PHOTO_FILE)
            val videoFile = File(photoDir, VIDEO_FILE)
            val tempFile = File(photoDir, "temp.jpg")
            val yuvFile = File(photoDir, YUV_FILE)
            val dngFile = File(photoDir, DNG_FILE)
            val metadataFile = File(photoDir, METADATA_FILE)
            val thumbnailFile = File(photoDir, THUMBNAIL_FILE)

            if (thumbnail != null && !thumbnail.isRecycled) {
                generateThumbnail(thumbnail, thumbnailFile)
            } else {
                PLog.d(TAG, "Thumbnail unavailable: $thumbnail")
            }

            val dimensions =
                BitmapUtils.calculateProcessedRect(
                    images[0].width,
                    images[0].height,
                    aspectRatio,
                    null,
                    rotation
                )
            val finalWidth = dimensions.width()
            val finalHeight = dimensions.height()

            val format = images[0].format
            when (format) {
                ImageFormat.YUV_420_888, ImageFormat.YCBCR_P010, ImageFormat.NV21 -> {
                    // 保存元数据
                    val metadataWithInfo = metadata.copy(
                        width = finalWidth * if (useSuperResolution) 2 else 1,
                        height = finalHeight * if (useSuperResolution) 2 else 1,
                        ratio = aspectRatio,
                        sharpening = if (sharpeningValue == 0f) (if (useSuperResolution) 0.8f else 0.4f) else sharpeningValue,
                        noiseReduction = noiseReductionValue,
                        chromaNoiseReduction = chromaNoiseReductionValue,
                    )
                    metadataFile.writeText(metadataWithInfo.toJson())
                    photoFile.createNewFile()
                    if (livePhotoVideoDeferred != null) {
                        videoFile.createNewFile()
                    }
                    processingScope.launch(Dispatchers.IO) {

                        val livePhotoResult = livePhotoVideoDeferred?.await()
                        livePhotoResult?.first?.let { cacheVideoFile ->
                            if (cacheVideoFile.exists()) {
                                try {
                                    cacheVideoFile.copyTo(videoFile, overwrite = true)
                                    cacheVideoFile.delete()

                                    // 更新元数据以包含时间戳
                                    val currentMeta = loadMetadata(context, photoId) ?: metadataWithInfo
                                    saveMetadata(context, photoId, currentMeta.copy(presentationTimestampUs = livePhotoResult.second))
                                } catch (e: Exception) {
                                    PLog.e(TAG, "Failed to move video file", e)
                                }
                                PLog.d(TAG, "Motion Photo synthesized for $photoId with TS: ${livePhotoResult.second}")
                            }
                        }

                        try {
                            val result = MultiFrameStacker.processBurst(
                                images,
                                rotation,
                                aspectRatio,
                                yuvFile.absolutePath,
                                useSuperResolution
                            ) ?: return@launch

                            // Generate Thumbnail
                            if (thumbnail == null) {
                                generateThumbnail(result, thumbnailFile)
                            }
                            // Save Original (Stacked Result)
                            FileOutputStream(tempFile).use { outputStream ->
                                result.compress(Bitmap.CompressFormat.JPEG, photoQuality, outputStream)
                            }
                            tempFile.renameTo(photoFile)
                            result.recycle()
                            // Auto Save
                            if (shouldAutoSave) {
                                exportPhoto(
                                    context,
                                    photoId,
                                    photoProcessor,
                                    metadataWithInfo,
                                    sharpeningValue,
                                    noiseReductionValue,
                                    chromaNoiseReductionValue,
                                    photoQuality
                                )
                            }
                        } catch (e: Exception) {
                            PLog.e(TAG, "Failed to savePhoto", e)
                        } finally {
                            onProcessingComplete?.invoke()
                        }
                    }
                }

                ImageFormat.RAW_SENSOR, ImageFormat.RAW10, ImageFormat.RAW12 -> {
                    photoFile.createNewFile()
                    if (livePhotoVideoDeferred != null) {
                        videoFile.createNewFile()
                    }
                    val scale = if (useSuperResolution) 2 else 1
                    var cropRegion = captureResult?.get(CaptureResult.SCALER_CROP_REGION)
                    if (useSuperResolution && cropRegion != null) {
                        cropRegion =
                            Rect(cropRegion.left * 2, cropRegion.top * 2, cropRegion.right * 2, cropRegion.bottom * 2)
                    }
                    // 保存元数据
                    val metadataWithInfo = metadata.copy(
                        width = finalWidth * scale,
                        height = finalHeight * scale,
                        ratio = aspectRatio,
                        cropRegion = cropRegion,
                        rotation = rotation,
                        sharpening = if (sharpeningValue == 0f) 0.8f else sharpeningValue,
                        noiseReduction = noiseReductionValue,
                        chromaNoiseReduction = if (chromaNoiseReductionValue == 0f) 0.25f else chromaNoiseReductionValue,
                    )
                    metadataFile.writeText(metadataWithInfo.toJson())
                    processingScope.launch(Dispatchers.IO) {
                        try {
                            characteristics ?: return@launch
                            captureResult ?: return@launch

                            val livePhotoResult = livePhotoVideoDeferred?.await()
                            livePhotoResult?.first?.let { cacheVideoFile ->
                                if (cacheVideoFile.exists()) {
                                    try {
                                        cacheVideoFile.copyTo(videoFile, overwrite = true)
                                        cacheVideoFile.delete()

                                        // 更新元数据以包含时间戳
                                        val currentMeta = loadMetadata(context, photoId) ?: metadataWithInfo
                                        saveMetadata(context, photoId, currentMeta.copy(presentationTimestampUs = livePhotoResult.second))
                                    } catch (e: Exception) {
                                        PLog.e(TAG, "Failed to move video file", e)
                                    }
                                    PLog.d(TAG, "Motion Photo synthesized for $photoId with TS: ${livePhotoResult.second}")
                                }
                            }

                            val byteBuffer = MultiFrameStacker.processBurstRaw(
                                images, characteristics,
                                useSuperResolution
                            )
                            byteBuffer ?: return@launch
                            val byteOutstream = ByteArrayOutputStream()
                            byteOutstream.use { outputStream ->
                                try {
                                    val scaledWidth = images[0].width * scale
                                    val scaledHeight = images[0].height * scale
                                    RawProcessor.saveToDng(
                                        byteBuffer.asReadOnlyBuffer(), characteristics,
                                        captureResult, outputStream, scaledWidth, scaledHeight, rotation
                                    )
                                } catch (e: Throwable) {
                                    // Fallback: If scaled DNG is not supported by hardware, 
                                    // save the first original frame to maintain DNG availability.
                                    PLog.i(TAG, "SR DNG dimensions not supported, falling back to original frame DNG")
                                    RawProcessor.saveToDng(images[0], characteristics, captureResult, outputStream, rotation)
                                }
                            }
                            val array = byteOutstream.toByteArray()
                            FileOutputStream(dngFile).use {
                                it.write(array)
                            }
                            if (shouldAutoSave) {
                                exportDng(context, array, metadataWithInfo)
                            }

                            val result = if (metadataWithInfo.rawEngine == RawEngine.SELF_DEVELOPED) {
                                RawDemosaicProcessor.getInstance().process(
                                    dngFile.absolutePath,
                                    aspectRatio,
                                    cropRegion,
                                    rotation
                                )
                            } else {
                                RawProcessor.processAndToBitmap(dngFile, aspectRatio, cropRegion, rotation)
                            } ?: return@launch
                            // Generate Thumbnail
                            if (thumbnail == null) {
                                generateThumbnail(result, thumbnailFile)
                            }
                            // Save Original (Stacked Result)
                            FileOutputStream(tempFile).use { outputStream ->
                                result.compress(Bitmap.CompressFormat.JPEG, photoQuality, outputStream)
                            }
                            tempFile.renameTo(photoFile)
                            // Auto Save
                            if (shouldAutoSave) {
                                exportPhoto(
                                    context,
                                    photoId,
                                    photoProcessor,
                                    metadataWithInfo,
                                    sharpeningValue,
                                    noiseReductionValue,
                                    chromaNoiseReductionValue,
                                    photoQuality
                                )
                            }
                        } catch (e: Exception) {
                            PLog.e(TAG, "Failed to savePhoto", e)
                        } finally {
                            onProcessingComplete?.invoke()
                        }
                    }
                }

                else -> {
                    PLog.e(TAG, "Unsupported image format: $format")
                    onProcessingComplete?.invoke()
                    return@withContext null
                }
            }
            photoId
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to save stacked photo", e)
            onProcessingComplete?.invoke()
            null
        }
    }

    /**
     * 生成 512x512 缩略图
     */
    private suspend fun generateThumbnail(bitmap: Bitmap, targetFile: File) {
        withContext(Dispatchers.IO) {
            try {
                // 生成 512x512 缩略图
                val thumbnail = ThumbnailUtils.extractThumbnail(bitmap, 512, 512)
                FileOutputStream(targetFile).use { out ->
                    thumbnail.compress(Bitmap.CompressFormat.JPEG, 80, out)
                }
                thumbnail.recycle()
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to generate thumbnail", e)
            }
        }
    }

    /**
     * 生成缩略图
     */
    private fun generateThumbnail(sourceFile: File, targetFile: File) {
        try {
            val options = BitmapFactory.Options().apply {
                inJustDecodeBounds = true
            }
            BitmapFactory.decodeFile(sourceFile.absolutePath, options)

            // 计算缩放比例，缩略图大小 512x512
            val targetSize = 512
            options.inSampleSize = calculateInSampleSize(options, targetSize, targetSize)
            options.inJustDecodeBounds = false

            val bitmap = BitmapFactory.decodeFile(sourceFile.absolutePath, options)

            if (bitmap != null) {
                val thumbnail = ThumbnailUtils.extractThumbnail(bitmap, targetSize, targetSize)
                FileOutputStream(targetFile).use { out ->
                    thumbnail.compress(Bitmap.CompressFormat.JPEG, 80, out)
                }
                bitmap.recycle()
                thumbnail.recycle()
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to generate thumbnail", e)
        }
    }

    private fun calculateInSampleSize(options: BitmapFactory.Options, reqWidth: Int, reqHeight: Int): Int {
        val (height: Int, width: Int) = options.outHeight to options.outWidth
        var inSampleSize = 1

        if (height > reqHeight || width > reqWidth) {
            val halfHeight: Int = height / 2
            val halfWidth: Int = width / 2
            while (halfHeight / inSampleSize >= reqHeight && halfWidth / inSampleSize >= reqWidth) {
                inSampleSize *= 2
            }
        }
        return inSampleSize
    }

    /**
     * 获取所有照片 ID 列表（按时间降序）
     */
    fun getPhotoIds(context: Context): List<String> {
        val baseDir = getPhotosBaseDir(context)
        return baseDir.listFiles()
            ?.filter { it.isDirectory }
            ?.sortedByDescending { it.lastModified() }
            ?.map { it.name }
            ?: emptyList()
    }

    /**
     * 创建删除系统相册照片的请求（弹出确认对话框）
     *
     * 仅适用于 Android 11+ (API 30+)
     * 返回 PendingIntent，需要在 Activity 中通过 startIntentSenderForResult 启动
     */
    fun createDeleteRequest(context: Context, photoId: String): PendingIntent? {
        return try {
            if (Build.VERSION.SDK_INT < Build.VERSION_CODES.R) {
                PLog.w(TAG, "createDeleteRequest requires Android 11+")
                return null
            }

            // 加载元数据，获取导出的 URI 列表（使用 runBlocking 同步调用）
            val metadata = runBlocking {
                loadMetadata(context, photoId)
            }
            val exportedUris = metadata?.exportedUris ?: emptyList()

            if (exportedUris.isEmpty()) {
                PLog.d(TAG, "No exported URIs to delete for photo: $photoId")
                return null
            }

            // 将字符串 URI 转换为 Uri 对象列表
            val uriList = exportedUris.mapNotNull { uriString ->
                try {
                    Uri.parse(uriString)
                } catch (e: Exception) {
                    PLog.e(TAG, "Invalid URI: $uriString", e)
                    null
                }
            }

            if (uriList.isEmpty()) {
                return null
            }

            // 创建删除请求（会弹出系统确认对话框）
            MediaStore.createDeleteRequest(context.contentResolver, uriList)
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to create delete request for photo: $photoId", e)
            null
        }
    }

    /**
     * 删除照片及其所有相关文件
     */
    suspend fun deletePhoto(
        context: Context,
        photoId: String
    ): Boolean {
        return withContext(Dispatchers.IO) {
            try {
                val photoDir = getPhotoDir(context, photoId)
                if (photoDir.exists()) {
                    photoDir.deleteRecursively()
                }

                PLog.d(TAG, "Photo deleted: $photoId")
                true
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to delete photo: $photoId", e)
                false
            }
        }
    }

    /**
     * 仅删除应用内部的照片，不删除系统相册中的导出照片
     */
    suspend fun deletePhotoOnly(context: Context, photoId: String): Boolean {
        return deletePhoto(context, photoId)
    }

    /**
     * 加载元数据
     */
    suspend fun loadMetadata(context: Context, photoId: String): PhotoMetadata? {
        return withContext(Dispatchers.IO) {
            try {
                val file = getMetadataFile(context, photoId)
                if (file.exists()) {
                    PhotoMetadata.fromJson(file.readText())
                } else {
                    null
                }
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to load metadata for photo: $photoId", e)
                null
            }
        }
    }

    /**
     * 更新元数据
     */
    suspend fun saveMetadata(context: Context, photoId: String, metadata: PhotoMetadata): Boolean {
        return withContext(Dispatchers.IO) {
            try {
                val file = getMetadataFile(context, photoId)
                file.writeText(metadata.toJson())
                true
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to save metadata for photo: $photoId", e)
                false
            }
        }
    }

    fun loadYuvData(context: Context, photoId: String): ByteBuffer? {
        val yuvFile = getYuvFile(context, photoId)
        if (!yuvFile.exists()) {
            return null
        }
        return YuvProcessor.loadCompressedArgb(yuvFile.absolutePath)
    }

    fun loadBitmap(context: Context, photoId: String, maxEdge: Int? = null): Bitmap? {
        val photoFile = getPhotoFile(context, photoId)
        if (!photoFile.exists()) {
            return null
        }
        val source = ImageDecoder.createSource(photoFile)
        return runCatching {
            ImageDecoder.decodeBitmap(source) { decoder, info, _ ->
                decoder.allocator = ImageDecoder.ALLOCATOR_SOFTWARE
                if (maxEdge != null) {
                    val width = info.size.width
                    val height = info.size.height

                    if (width > maxEdge || height > maxEdge) {
                        val scale = maxEdge.toFloat() / maxOf(width, height)
                        decoder.setTargetSize((width * scale).toInt(), (height * scale).toInt())
                    }
                }
            }
        }.getOrNull()
    }

    /**
     * 从 URI 获取文件名
     */
    private fun getFileName(context: Context, uri: Uri): String? {
        return try {
            context.contentResolver.query(uri, null, null, null, null)?.use { cursor ->
                val nameIndex = cursor.getColumnIndex(android.provider.OpenableColumns.DISPLAY_NAME)
                cursor.moveToFirst()
                cursor.getString(nameIndex)
            }
        } catch (e: Exception) {
            null
        }
    }

    /**
     * 从系统相册导入照片
     */
    suspend fun importPhoto(context: Context, uri: Uri): String? {
        return withContext(Dispatchers.IO) {
            try {
                val photoId = UUID.randomUUID().toString()
                val photoDir = getPhotoDir(context, photoId)
                val photoFile = File(photoDir, PHOTO_FILE)
                val dngFile = File(photoDir, DNG_FILE)
                val metadataFile = File(photoDir, METADATA_FILE)
                val thumbnailFile = File(photoDir, THUMBNAIL_FILE)

                // 1. 检测是否为 RAW 文件
                val mimeType = context.contentResolver.getType(uri)
                val fileName = getFileName(context, uri) ?: ""
                val isRaw = mimeType?.contains("raw", ignoreCase = true) == true ||
                        mimeType?.contains("dng", ignoreCase = true) == true ||
                        fileName.endsWith(".dng", ignoreCase = true)

                if (isRaw) {
                    // --- RAW 处理逻辑 ---
                    // 1. 复制 RAW 文件
                    context.contentResolver.openInputStream(uri)?.use { input ->
                        FileOutputStream(dngFile).use { output ->
                            input.copyTo(output)
                        }
                    }

                    // 2. 读取元数据以获取旋转信息
                    val metadata = PhotoMetadata.fromUri(context, uri)
                    val exif = ExifInterface(dngFile.absolutePath)
                    val orientation = exif.getAttributeInt(
                        ExifInterface.TAG_ORIENTATION,
                        ExifInterface.ORIENTATION_NORMAL
                    )
                    val rotation = when (orientation) {
                        ExifInterface.ORIENTATION_ROTATE_90 -> 90
                        ExifInterface.ORIENTATION_ROTATE_180 -> 180
                        ExifInterface.ORIENTATION_ROTATE_270 -> 270
                        else -> 0
                    }

                    // 3. 处理 RAW 以生成 JPEG 预览
                    val processedBitmap = RawProcessor.processAndToBitmap(
                        dngFile,
                        null,
                        null,
                        rotation
                    )

                    if (processedBitmap != null) {
                        // 保存为 original.jpg
                        FileOutputStream(photoFile).use { out ->
                            processedBitmap.compress(Bitmap.CompressFormat.JPEG, 95, out)
                        }

                        // 生成缩略图
                        generateThumbnail(processedBitmap, thumbnailFile)

                        // 更新元数据
                        val updatedMetadata = metadata.copy(
                            width = processedBitmap.width,
                            height = processedBitmap.height,
                            rotation = rotation,
                            isImported = true
                        )
                        metadataFile.writeText(updatedMetadata.toJson())

                        processedBitmap.recycle()
                    } else {
                        // 降级：如果 RAW 处理失败，尝试直接解码（某些 DNG 包含内置预览图）
                        tempImportJpeg(uri, context, photoFile, metadataFile, thumbnailFile)
                    }
                } else {
                    // --- 常规 JPEG 处理逻辑 ---
                    tempImportJpeg(uri, context, photoFile, metadataFile, thumbnailFile)
                }

                // Check for Motion Photo after import
                if (photoFile.exists() && MotionPhotoWriter.isMotionPhoto(photoFile.absolutePath)) {
                    val videoFile = File(photoDir, VIDEO_FILE)
                    if (MotionPhotoWriter.extractVideo(photoFile.absolutePath, videoFile.absolutePath)) {
                        PLog.d(TAG, "Extracted video from imported Motion Photo: $photoId")
                        val metadata = loadMetadata(context, photoId) ?: PhotoMetadata()
                        val timestampUs = MotionPhotoWriter.getPresentationTimestampUs(photoFile.absolutePath)
                        saveMetadata(context, photoId, metadata.copy(presentationTimestampUs = timestampUs))
                    }
                }

                PLog.d(TAG, "Photo imported: $photoId (isRaw: $isRaw)")
                photoId
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to import photo", e)
                null
            }
        }
    }

    private suspend fun tempImportJpeg(
        uri: Uri,
        context: Context,
        photoFile: File,
        metadataFile: File,
        thumbnailFile: File
    ) {
        val photoDir = photoFile.parentFile ?: return
        val tempFile = File(photoDir, "temp.jpg")
        context.contentResolver.openInputStream(uri)?.use { input ->
            FileOutputStream(tempFile).use { output ->
                input.copyTo(output)
            }
        }

        val exif = ExifInterface(tempFile)
        val orientation = exif.getAttributeInt(
            ExifInterface.TAG_ORIENTATION,
            ExifInterface.ORIENTATION_NORMAL
        )

        if (orientation != ExifInterface.ORIENTATION_NORMAL &&
            orientation != ExifInterface.ORIENTATION_UNDEFINED
        ) {
            val bitmap = BitmapFactory.decodeFile(tempFile.absolutePath)
            if (bitmap != null) {
                val rotatedBitmap = rotateImageIfRequired(bitmap, orientation)
                FileOutputStream(photoFile).use { out ->
                    rotatedBitmap.compress(Bitmap.CompressFormat.JPEG, 95, out)
                }
                val newExif = ExifInterface(photoFile)
                newExif.setAttribute(
                    ExifInterface.TAG_ORIENTATION,
                    ExifInterface.ORIENTATION_NORMAL.toString()
                )
                newExif.saveAttributes()

                if (rotatedBitmap != bitmap) {
                    rotatedBitmap.recycle()
                }
                bitmap.recycle()
            } else {
                tempFile.copyTo(photoFile, overwrite = true)
            }
        } else {
            tempFile.renameTo(photoFile)
        }

        if (tempFile.exists()) {
            tempFile.delete()
        }

        val metadata = PhotoMetadata.fromUri(context, uri)
        metadataFile.writeText(metadata.toJson())
        generateThumbnail(photoFile, thumbnailFile)
    }

    /**
     * 根据 EXIF 方向信息旋转图片
     */
    private fun rotateImageIfRequired(img: Bitmap, orientation: Int): Bitmap {
        return when (orientation) {
            ExifInterface.ORIENTATION_ROTATE_90 -> {
                rotateImage(img, 90f)
            }

            ExifInterface.ORIENTATION_ROTATE_180 -> {
                rotateImage(img, 180f)
            }

            ExifInterface.ORIENTATION_ROTATE_270 -> {
                rotateImage(img, 270f)
            }

            ExifInterface.ORIENTATION_FLIP_HORIZONTAL -> {
                flipImage(img, horizontal = true, vertical = false)
            }

            ExifInterface.ORIENTATION_FLIP_VERTICAL -> {
                flipImage(img, horizontal = false, vertical = true)
            }

            ExifInterface.ORIENTATION_TRANSPOSE -> {
                // 先水平翻转，再旋转 270 度
                val flipped = flipImage(img, horizontal = true, vertical = false)
                val rotated = rotateImage(flipped, 270f)
                if (flipped != img) flipped.recycle()
                rotated
            }

            ExifInterface.ORIENTATION_TRANSVERSE -> {
                // 先垂直翻转，再旋转 270 度
                val flipped = flipImage(img, horizontal = false, vertical = true)
                val rotated = rotateImage(flipped, 270f)
                if (flipped != img) flipped.recycle()
                rotated
            }

            else -> img
        }
    }

    /**
     * 旋转图片
     */
    private fun rotateImage(img: Bitmap, degree: Float): Bitmap {
        val matrix = Matrix()
        matrix.postRotate(degree)
        return Bitmap.createBitmap(img, 0, 0, img.width, img.height, matrix, true)
    }

    /**
     * 翻转图片
     */
    private fun flipImage(img: Bitmap, horizontal: Boolean, vertical: Boolean): Bitmap {
        val matrix = Matrix()
        matrix.postScale(
            if (horizontal) -1f else 1f,
            if (vertical) -1f else 1f
        )
        return Bitmap.createBitmap(img, 0, 0, img.width, img.height, matrix, true)
    }
}
