package com.hinnka.mycamera.gallery

import android.app.PendingIntent
import android.content.ContentValues
import android.content.Context
import android.graphics.*
import android.hardware.camera2.CameraCharacteristics
import android.hardware.camera2.CaptureResult
import android.media.ThumbnailUtils
import android.net.Uri
import android.os.Build
import android.os.Environment
import android.provider.MediaStore
import android.util.Log
import androidx.core.graphics.createBitmap
import androidx.exifinterface.media.ExifInterface
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.data.ContentRepository
import com.hinnka.mycamera.livephoto.MotionPhotoWriter
import com.hinnka.mycamera.model.SafeImage
import com.hinnka.mycamera.processor.MultiFrameStacker
import com.hinnka.mycamera.raw.MeteringSystem
import com.hinnka.mycamera.raw.RawDemosaicProcessor
import com.hinnka.mycamera.raw.RawMetadata
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
import kotlin.use

/**
 * 照片管理器
 *
 * 统一管理照片文件、元数据、缩略图等
 * 存储路径: context.filesDir/photos/<photoId>/
 */
object PhotoManager {
    private const val TAG = "PhotoManager"
    private const val PHOTOS_DIR = "photos"
    private const val BURST_DIR = "burst"
    private const val PHOTO_FILE = "original.jpg"
    private const val YUV_FILE = "original.jxl"
    private const val VIDEO_FILE = "video.mp4"
    private const val DNG_FILE = "original.dng"
    private const val METADATA_FILE = "metadata.json"
    private const val THUMBNAIL_FILE = "thumbnail.jpg"
    private const val BOKEH_FILE = "bokeh.jpg"

    val processingScope = CoroutineScope(Dispatchers.Default + SupervisorJob())

    private fun getPhotosBaseDir(context: Context): File {
        return File(context.getExternalFilesDir(Environment.DIRECTORY_PICTURES), PHOTOS_DIR)
    }

    private fun getPhotoDir(context: Context, photoId: String, create: Boolean = false): File {
        val dir = File(getPhotosBaseDir(context), photoId)
        if (create && !dir.exists()) {
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

    fun getDepthFile(context: Context, photoId: String): File {
        return File(getPhotoDir(context, photoId), "depthmap.png")
    }

    fun getThumbnailFile(context: Context, photoId: String): File {
        return File(getPhotoDir(context, photoId), THUMBNAIL_FILE)
    }

    fun getBokehFile(context: Context, photoId: String): File {
        return File(getPhotoDir(context, photoId), BOKEH_FILE)
    }

    fun getVideoFile(context: Context, photoId: String): File {
        return File(getPhotoDir(context, photoId), VIDEO_FILE)
    }

    suspend fun exportPhoto(
        context: Context,
        id: String,
        bitmap: Bitmap? = null,
        photoProcessor: PhotoProcessor,
        metadata: PhotoMetadata,
        sharpeningValue: Float,
        noiseReductionValue: Float,
        chromaNoiseReductionValue: Float,
        photoQuality: Int = 95,
        suffix: String? = null,
    ): Boolean {
        return withContext(Dispatchers.IO) {
            val tempExportFile = File(context.cacheDir, "temp_export_${System.nanoTime()}.jpg")
            try {
                // 读取照片
                val processedBitmap = bitmap?.let {
                    photoProcessor.processBitmap(
                        context, id, bitmap, metadata,
                        sharpeningValue, noiseReductionValue, chromaNoiseReductionValue,
                        true
                    )
                } ?: photoProcessor.process(
                    context, id, metadata,
                    sharpeningValue, noiseReductionValue, chromaNoiseReductionValue
                ) ?: return@withContext false

                PLog.d(TAG, "processedBitmap = ${processedBitmap.colorSpace?.name}")

                // 保存到指定目录
                val date = metadata.dateTaken ?: System.currentTimeMillis()

                val lutName =
                    metadata.lutId?.let { ContentRepository.getInstance(context).lutManager.getLutInfo(it)?.getName() }
                var withSuffix = suffix?.let { "_$it" } ?: ""
                lutName?.let {
                    withSuffix += ".$lutName"
                }

                val filename =
                    "PhotonCamera_${SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US).format(Date(date))}$withSuffix.jpg"
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
                                    put(
                                        MediaStore.MediaColumns.RELATIVE_PATH,
                                        Environment.DIRECTORY_DCIM + "/PhotonCamera"
                                    )
                                }

                                val uri = context.contentResolver.insert(
                                    MediaStore.Video.Media.EXTERNAL_CONTENT_URI,
                                    contentValues
                                )
                                uri?.let { uri -> context.contentResolver.openOutputStream(uri) }?.use { outputStream ->
                                    val tempMotionVideoFile =
                                        File(tempMotionPhotoFile.absolutePath.replace(".jpg", ".mp4"))
                                    if (tempMotionVideoFile.exists()) {
                                        tempMotionVideoFile.inputStream().use { input -> input.copyTo(outputStream) }
                                    }
                                    tempMotionVideoFile.delete()

                                    val currentMetadata = loadMetadata(context, id) ?: metadata
                                    val updatedMetadata = currentMetadata.copy(
                                        exportedUris = currentMetadata.exportedUris + uri.toString()
                                    )
                                    saveMetadata(context, id, updatedMetadata)
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

                    return@withContext true
                }

                processedBitmap.recycle()
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to export photo", e)
            } finally {
                tempExportFile.delete()
            }

            false
        }
    }

    suspend fun exportDng(context: Context, photoId: String, data: ByteArray, metadata: PhotoMetadata) =
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

                    val currentMetadata = loadMetadata(context, photoId) ?: metadata
                    val updatedMetadata = currentMetadata.copy(
                        exportedUris = currentMetadata.exportedUris + uri.toString()
                    )
                    saveMetadata(context, photoId, updatedMetadata)
                    PLog.d(TAG, "Exported URI saved: $uri")
                }
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to export DNG", e)
            }
        }

    suspend fun preparePhoto(
        context: Context,
        metadata: PhotoMetadata,
        captureResult: CaptureResult?,
        thumbnail: Bitmap?,
        useLivePhoto: Boolean,
        useSuperResolution: Boolean,
        photoId: String? = null,
    ) = withContext(Dispatchers.IO) {
        try {
            val photoId = photoId ?: UUID.randomUUID().toString()
            val photoDir = getPhotoDir(context, photoId, true)
            val photoFile = File(photoDir, PHOTO_FILE)
            val videoFile = File(photoDir, VIDEO_FILE)
            val thumbnailFile = File(photoDir, THUMBNAIL_FILE)
            val metadataFile = File(photoDir, METADATA_FILE)

            var cropRegion = captureResult?.get(CaptureResult.SCALER_CROP_REGION)
            if (useSuperResolution && cropRegion != null) {
                cropRegion =
                    Rect(cropRegion.left * 2, cropRegion.top * 2, cropRegion.right * 2, cropRegion.bottom * 2)
            }

            val dimensions =
                BitmapUtils.calculateProcessedRect(
                    metadata.width,
                    metadata.height,
                    metadata.ratio,
                    cropRegion,
                    metadata.rotation
                )
            val finalWidth = dimensions.width()
            val finalHeight = dimensions.height()
            // 保存元数据
            val metadataWithInfo = metadata.copy(
                width = finalWidth,
                height = finalHeight,
                cropRegion = cropRegion,
            )
            metadataFile.writeText(metadataWithInfo.toJson())

            if (thumbnail != null && !thumbnail.isRecycled) {
                generateThumbnail(thumbnail, thumbnailFile)
            } else {
                PLog.d(TAG, "Thumbnail unavailable: $thumbnail")
            }
            photoFile.createNewFile()
            if (useLivePhoto) {
                videoFile.createNewFile()
            }
            photoId
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to prepare photo", e)
            null
        }
    }

    suspend fun saveVideo(
        context: Context,
        photoId: String,
        livePhotoVideoDeferred: Deferred<Pair<File, Long>?>? = null
    ) {
        val photoDir = getPhotoDir(context, photoId, true)
        val videoFile = File(photoDir, VIDEO_FILE)
        val livePhotoResult = livePhotoVideoDeferred?.await()
        livePhotoResult?.first?.let { cacheVideoFile ->
            if (cacheVideoFile.exists()) {
                try {
                    cacheVideoFile.copyTo(videoFile, overwrite = true)
                    cacheVideoFile.delete()

                    // 更新元数据以包含时间戳
                    val currentMeta = loadMetadata(context, photoId) ?: return
                    saveMetadata(context, photoId, currentMeta.copy(presentationTimestampUs = livePhotoResult.second))
                } catch (e: Exception) {
                    PLog.e(TAG, "Failed to move video file", e)
                }
                PLog.d(TAG, "Motion Photo synthesized for $photoId with TS: ${livePhotoResult.second}")
            }
        }
    }

    suspend fun saveBokehPhoto(context: Context, photoId: String, bitmap: Bitmap) = withContext(Dispatchers.IO) {
        val photoDir = getPhotoDir(context, photoId, true)
        val bokehFile = File(photoDir, BOKEH_FILE)
        FileOutputStream(bokehFile).use { outputStream ->
            bitmap.compress(Bitmap.CompressFormat.JPEG, 95, outputStream)
        }
    }

    suspend fun generateBokehPhoto(context: Context, photoId: String, metadata: PhotoMetadata, bitmap: Bitmap) {
        val aperture = metadata.computationalAperture ?: 0f
        val focusPointX = metadata.focusPointX
        val focusPointY = metadata.focusPointY
        val bokeh = ContentRepository.getInstance(context).depthBokehProcessor.applyHighQualityBokeh(
            context,
            photoId,
            bitmap,
            focusPointX,
            focusPointY,
            aperture
        )
        saveBokehPhoto(context, photoId, bokeh)
    }

    suspend fun saveYuvPhoto(
        context: Context,
        photoId: String,
        image: SafeImage,
        rotation: Int,
        aspectRatio: AspectRatio,
        shouldAutoSave: Boolean = true,
        photoProcessor: PhotoProcessor,
        sharpeningValue: Float,
        noiseReductionValue: Float,
        chromaNoiseReductionValue: Float,
        photoQuality: Int = 95
    ) = withContext(Dispatchers.IO) {
        try {
            val photoDir = getPhotoDir(context, photoId, true)

            // 预先准备所有文件路径
            val photoFile = File(photoDir, PHOTO_FILE)
            val tempFile = File(photoDir, "temp.jpg")
            val yuvFile = File(photoDir, YUV_FILE)

            val metadata = loadMetadata(context, photoId) ?: return@withContext

            // 创建预览用的 Bitmap
            var previewBitmap =
                createBitmap(metadata.width, metadata.height, colorSpace = ColorSpace.get(metadata.colorSpace))

            PLog.d(TAG, "saveYuvPhoto: ${metadata.width} ${metadata.height} ${metadata.colorSpace.name}")

            // YUV 格式：使用 native 处理（包含旋转和裁切）并直接保存为 FP16 JXL
            val success = image.use {
                YuvProcessor.processAndSave16(
                    image, aspectRatio, rotation,
                    yuvFile.absolutePath, previewBitmap
                )
            }

            if (metadata.isMirrored) {
                previewBitmap = BitmapUtils.flipHorizontal(previewBitmap)
            }

            if (success) {
                FileOutputStream(tempFile).use { outputStream ->
                    previewBitmap.compress(Bitmap.CompressFormat.JPEG, photoQuality, outputStream)
                }
                tempFile.renameTo(photoFile)
                generateBokehPhoto(context, photoId, metadata, previewBitmap)
                if (shouldAutoSave) {
                    exportPhoto(
                        context,
                        photoId,
                        null,
                        photoProcessor,
                        metadata,
                        sharpeningValue,
                        noiseReductionValue,
                        chromaNoiseReductionValue,
                        photoQuality
                    )
                }
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to savePhoto", e)
        }
    }

    suspend fun saveRawPhoto(
        context: Context,
        photoId: String,
        image: SafeImage,
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
        exposureBias: Float? = null,
        droMode: MeteringSystem.DROMode = MeteringSystem.DROMode.OFF
    ) = withContext(Dispatchers.IO) {
        try {
            val photoDir = getPhotoDir(context, photoId, true)

            // 预先准备所有文件路径
            val photoFile = File(photoDir, PHOTO_FILE)
            val dngFile = File(photoDir, DNG_FILE)
            val tempFile = File(photoDir, "temp.jpg")

            val metadata = loadMetadata(context, photoId) ?: return@withContext

            captureResult ?: return@withContext

            val byteOutstream = ByteArrayOutputStream()
            byteOutstream.use { outputStream ->
                image.use {
                    try {
                        RawProcessor.saveToDng(image, characteristics, captureResult, outputStream, rotation)
                    } catch (e: Throwable) {
                        PLog.e(TAG, "DNG save failed", e)
                    }
                }
            }
            val array = byteOutstream.toByteArray()
            FileOutputStream(dngFile).use {
                it.write(array)
            }
            if (shouldAutoSave) {
                exportDng(context, photoId, array, metadata)
            }

            var bitmap = RawDemosaicProcessor.getInstance().process(
                context,
                dngFile.absolutePath,
                aspectRatio,
                cropRegion = metadata.cropRegion,
                rotation,
                exposureBias = exposureBias ?: 0f,
                sharpeningValue = 0.4f,
                droMode = droMode
            ) ?: return@withContext

            if (metadata.isMirrored) {
                bitmap = BitmapUtils.flipHorizontal(bitmap)
            }

            FileOutputStream(tempFile).use { outputStream ->
                bitmap.compress(Bitmap.CompressFormat.JPEG, photoQuality, outputStream)
            }
            tempFile.renameTo(photoFile)
            if (shouldAutoSave) {
                exportPhoto(
                    context,
                    photoId,
                    bitmap,
                    photoProcessor,
                    metadata,
                    sharpeningValue,
                    noiseReductionValue,
                    chromaNoiseReductionValue,
                    photoQuality
                )
            }
            bitmap.recycle()
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to savePhoto", e)
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
        photoId: String,
        image: SafeImage,
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
        exposureBias: Float? = null,
        droMode: MeteringSystem.DROMode = MeteringSystem.DROMode.OFF
    ) {
        // 根据图像格式处理
        when (val format = image.format) {
            ImageFormat.YUV_420_888, ImageFormat.YCBCR_P010, ImageFormat.NV21 -> {
                saveYuvPhoto(
                    context,
                    photoId,
                    image,
                    rotation,
                    aspectRatio,
                    shouldAutoSave,
                    photoProcessor,
                    sharpeningValue,
                    noiseReductionValue,
                    chromaNoiseReductionValue,
                    photoQuality
                )
            }

            ImageFormat.RAW_SENSOR, ImageFormat.RAW10, ImageFormat.RAW12 -> {
                saveRawPhoto(
                    context,
                    photoId,
                    image,
                    rotation,
                    aspectRatio,
                    characteristics,
                    captureResult,
                    shouldAutoSave,
                    photoProcessor,
                    sharpeningValue,
                    noiseReductionValue,
                    chromaNoiseReductionValue,
                    photoQuality,
                    exposureBias,
                    droMode
                )
            }

            else -> {
                PLog.e(TAG, "Unsupported image format: $format")
            }
        }
    }

    suspend fun saveYuvStackedPhoto(
        context: Context,
        photoId: String,
        images: List<SafeImage>,
        rotation: Int,
        aspectRatio: AspectRatio,
        shouldAutoSave: Boolean = true,
        photoProcessor: PhotoProcessor,
        sharpeningValue: Float,
        noiseReductionValue: Float,
        chromaNoiseReductionValue: Float,
        photoQuality: Int = 95,
        useSuperResolution: Boolean = false,
        useGpuAcceleration: Boolean = true,
    ) = withContext(Dispatchers.IO) {
        try {
            val photoDir = getPhotoDir(context, photoId, true)
            val metadata = loadMetadata(context, photoId) ?: return@withContext

            // 预先准备所有文件路径
            val photoFile = File(photoDir, PHOTO_FILE)
            val tempFile = File(photoDir, "temp.jpg")
            val yuvFile = File(photoDir, YUV_FILE)

            var currentUseSuperResolution = useSuperResolution
            var result = MultiFrameStacker.processBurst(
                images,
                rotation,
                aspectRatio,
                yuvFile.absolutePath,
                currentUseSuperResolution,
                useGpuAcceleration,
                ColorSpace.get(metadata.colorSpace)
            )

            if (result == null && currentUseSuperResolution) {
                PLog.w(TAG, "processBurst failed with SR, retrying without SR")
                currentUseSuperResolution = false
                result = MultiFrameStacker.processBurst(
                    images,
                    rotation,
                    aspectRatio,
                    yuvFile.absolutePath,
                    currentUseSuperResolution,
                    useGpuAcceleration,
                    ColorSpace.get(metadata.colorSpace)
                )
            }

            if (result == null) return@withContext

            if (metadata.isMirrored) {
                result = BitmapUtils.flipHorizontal(result)
            }

            // Save Original (Stacked Result)
            FileOutputStream(tempFile).use { outputStream ->
                result.compress(Bitmap.CompressFormat.JPEG, photoQuality, outputStream)
            }
            tempFile.renameTo(photoFile)
            // Auto Save
            if (shouldAutoSave) {
                val metadata = loadMetadata(context, photoId) ?: return@withContext
                exportPhoto(
                    context,
                    photoId,
                    result,
                    photoProcessor,
                    metadata,
                    sharpeningValue,
                    noiseReductionValue,
                    chromaNoiseReductionValue,
                    photoQuality
                )
            }
            result.recycle()
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to savePhoto", e)
        }
    }

    suspend fun saveRawStackedPhoto(
        context: Context,
        photoId: String,
        images: List<SafeImage>,
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
        useGpuAcceleration: Boolean = true,
        exposureBias: Float? = null,
        droMode: MeteringSystem.DROMode = MeteringSystem.DROMode.OFF
    ) = withContext(Dispatchers.IO) {
        try {
            val photoDir = getPhotoDir(context, photoId, true)

            // 预先准备所有文件路径
            val photoFile = File(photoDir, PHOTO_FILE)
            val tempFile = File(photoDir, "temp.jpg")
            val yuvFile = File(photoDir, YUV_FILE)

            val metadata = loadMetadata(context, photoId) ?: return@withContext

            characteristics ?: return@withContext
            captureResult ?: return@withContext

            val firstImageWidth = images[0].width
            val firstImageHeight = images[0].height

            val rawMetadata = RawMetadata.create(
                firstImageWidth,
                firstImageHeight,
                characteristics,
                captureResult,
                exposureBias,
                droMode
            )

            var currentUseSuperResolution = useSuperResolution
            var byteBuffer = MultiFrameStacker.processBurstRaw(
                images, characteristics,
                currentUseSuperResolution,
                useGpuAcceleration,
                masterBlackLevel = rawMetadata.blackLevel,
                whiteLevel = rawMetadata.whiteLevel.toInt(),
                whiteBalanceGains = rawMetadata.whiteBalanceGains,
                noiseModel = rawMetadata.noiseProfile,
                lensShading = rawMetadata.lensShadingMap,
                lensShadingWidth = rawMetadata.lensShadingMapWidth,
                lensShadingHeight = rawMetadata.lensShadingMapHeight,
            )

            if (byteBuffer == null && currentUseSuperResolution) {
                PLog.w(TAG, "processBurstRaw failed with SR, retrying without SR")
                currentUseSuperResolution = false
                byteBuffer = MultiFrameStacker.processBurstRaw(
                    images, characteristics,
                    currentUseSuperResolution,
                    useGpuAcceleration,
                    masterBlackLevel = rawMetadata.blackLevel,
                    whiteLevel = rawMetadata.whiteLevel.toInt(),
                    whiteBalanceGains = rawMetadata.whiteBalanceGains,
                    noiseModel = rawMetadata.noiseProfile,
                    lensShading = rawMetadata.lensShadingMap,
                    lensShadingWidth = rawMetadata.lensShadingMapWidth,
                    lensShadingHeight = rawMetadata.lensShadingMapHeight,
                )
            }

            val finalByteBuffer = byteBuffer ?: return@withContext

            val result: Bitmap = run {
                // Construct metadata for Linear RGB
                val finalScale = if (currentUseSuperResolution) 2 else 1
                val linearMetadata = rawMetadata.copy(
                    width = firstImageWidth * finalScale,
                    height = firstImageHeight * finalScale,
                    cfaPattern = RawMetadata.CFA_LINEAR_RGB,
                    blackLevel = floatArrayOf(0f, 0f, 0f, 0f),
                    whiteLevel = 65535f,
                    whiteBalanceGains = floatArrayOf(1f, 1f, 1f, 1f),
                    noiseProfile = floatArrayOf(0f, 0f),
                    // Keep original CCM and other params
                )

                var bitmap = RawDemosaicProcessor.getInstance().process(
                    context,
                    finalByteBuffer,
                    firstImageWidth * finalScale,
                    firstImageHeight * finalScale,
                    firstImageWidth * finalScale * 6, // 3 channels * 2 bytes
                    linearMetadata,
                    aspectRatio,
                    metadata.cropRegion,
                    rotation,
                    sharpeningValue = 0.4f
                )

                if (metadata.isMirrored && bitmap != null) {
                    bitmap = BitmapUtils.flipHorizontal(bitmap)
                }

                bitmap?.let {
                    val buffer = ByteBuffer.allocateDirect(it.width * it.height * 8)
                    it.copyPixelsToBuffer(buffer)
                    YuvProcessor.saveCompressedArgb(buffer, it.width, it.height, yuvFile.absolutePath)
                }

                bitmap
            } ?: return@withContext
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
                    result,
                    photoProcessor,
                    metadata,
                    sharpeningValue,
                    noiseReductionValue,
                    chromaNoiseReductionValue,
                    photoQuality
                )
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to savePhoto", e)
        }
    }


    /**
     * 保存堆栈合成后的照片
     */
    suspend fun saveStackedPhoto(
        context: Context,
        photoId: String,
        images: List<SafeImage>,
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
        useGpuAcceleration: Boolean = true,
        exposureBias: Float? = null,
        droMode: MeteringSystem.DROMode = MeteringSystem.DROMode.OFF
    ) = withContext(Dispatchers.IO) {
        when (val format = images[0].format) {
            ImageFormat.YUV_420_888, ImageFormat.YCBCR_P010, ImageFormat.NV21 -> {
                saveYuvStackedPhoto(
                    context,
                    photoId,
                    images,
                    rotation,
                    aspectRatio,
                    shouldAutoSave,
                    photoProcessor,
                    sharpeningValue,
                    noiseReductionValue,
                    chromaNoiseReductionValue,
                    photoQuality,
                    useSuperResolution,
                    useGpuAcceleration
                )
            }

            ImageFormat.RAW_SENSOR, ImageFormat.RAW10, ImageFormat.RAW12 -> {
                saveRawStackedPhoto(
                    context,
                    photoId,
                    images,
                    rotation,
                    aspectRatio,
                    characteristics,
                    captureResult,
                    shouldAutoSave,
                    photoProcessor,
                    sharpeningValue,
                    noiseReductionValue,
                    chromaNoiseReductionValue,
                    photoQuality,
                    useSuperResolution,
                    useGpuAcceleration,
                    exposureBias,
                    droMode
                )
            }

            else -> {
                PLog.e(TAG, "Unsupported image format: $format")
                return@withContext null
            }
        }
    }

    /**
     * 保存连拍照片
     */
    suspend fun saveBurstPhoto(
        context: Context,
        photoId: String,
        image: SafeImage,
        shouldAutoSave: Boolean = true,
        photoProcessor: PhotoProcessor,
        photoQuality: Int = 95
    ) {
        val photoDir = getPhotoDir(context, photoId, true)
        val mainPhotoFile = File(photoDir, PHOTO_FILE)
        val burstDir = File(photoDir, BURST_DIR)
        if (!burstDir.exists()) {
            burstDir.mkdirs()
        }
        try {
            val photoFile = File(burstDir, System.currentTimeMillis().toString() + ".jpg")

            val metadata = loadMetadata(context, photoId) ?: return
            val sharpeningValue = metadata.sharpening ?: 0f
            val noiseReductionValue = metadata.noiseReduction ?: 0f
            val chromaNoiseReductionValue = metadata.chromaNoiseReduction ?: 0f

            image.use {
                YuvProcessor.processAndSave(
                    image, metadata.rotation, photoFile.absolutePath
                )
            }
            if (!mainPhotoFile.exists() || mainPhotoFile.length() == 0L) {
                processingScope.launch {
                    photoFile.copyTo(mainPhotoFile, overwrite = true)
                    if (shouldAutoSave) {
                        exportPhoto(
                            context,
                            photoId,
                            null,
                            photoProcessor,
                            metadata,
                            sharpeningValue,
                            noiseReductionValue,
                            chromaNoiseReductionValue,
                            photoQuality
                        )
                    }
                }
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to savePhoto", e)
        }
    }

    /**
     * 获取指定照片的连拍照片文件列表
     */
    fun getBurstPhotos(context: Context, photoId: String): List<File> {
        val burstDir = File(getPhotoDir(context, photoId), BURST_DIR)
        return if (burstDir.exists()) {
            burstDir.listFiles()?.toList()?.sortedBy { it.lastModified() } ?: emptyList()
        } else {
            emptyList()
        }
    }

    /**
     * 将连拍照片设为主图并重新生成缩略图
     */
    suspend fun setMainBurstPhoto(context: Context, photoId: String, burstFile: File): Boolean {
        return withContext(Dispatchers.IO) {
            try {
                val photoDir = getPhotoDir(context, photoId, true)
                val mainPhotoFile = File(photoDir, PHOTO_FILE)
                val thumbnailFile = File(photoDir, THUMBNAIL_FILE)

                if (burstFile.exists()) {
                    burstFile.copyTo(mainPhotoFile, overwrite = true)
                    generateThumbnail(burstFile, thumbnailFile)
                    true
                } else {
                    false
                }
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to set main burst photo", e)
                false
            }
        }
    }

    /**
     * 检查是否有连拍照片
     */
    fun hasBurstPhotos(context: Context, photoId: String): Boolean {
        val burstDir = File(getPhotoDir(context, photoId), BURST_DIR)
        return burstDir.exists() && (burstDir.listFiles()?.isNotEmpty() == true)
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
     * 为直接传入的系统 URI 创建删除请求（用于 Android 11+）
     */
    fun createSystemDeleteRequest(context: Context, uri: Uri): PendingIntent? {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.R) {
            return null
        }
        if (uri.scheme != "content") {
            PLog.w(TAG, "createSystemDeleteRequest: URI scheme must be content, but was ${uri.scheme}")
            return null
        }
        return try {
            MediaStore.createDeleteRequest(context.contentResolver, listOf(uri))
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to create system delete request for $uri", e)
            null
        }
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

            // 将字符串 URI 转换为 Uri 对象列表，并过滤非法 URI
            val uriList = exportedUris.mapNotNull { uriString ->
                try {
                    val uri = Uri.parse(uriString)
                    if (uri.scheme == "content") uri else {
                        PLog.w(TAG, "Ignoring non-content URI: $uriString")
                        null
                    }
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
                deleteEmptyDirs(getPhotosBaseDir(context))
                true
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to delete photo: $photoId", e)
                false
            }
        }
    }

    fun deleteEmptyDirs(root: File) {
        if (!root.exists() || !root.isDirectory) return
        root.walkBottomUp().forEach { file ->
            if (file.isDirectory && file != root) {
                val contents = file.listFiles()
                if (contents != null && contents.isEmpty()) {
                    val deleted = file.delete()
                    if (deleted) {
                        // PLog.d(TAG, "已清理空文件夹: ${file.absolutePath}")
                    } else {
                        PLog.e(TAG, "无法删除文件夹 (可能权限不足): ${file.absolutePath}")
                    }
                }
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
                val dir = getPhotoDir(context, photoId, true)
                val file = File(dir, METADATA_FILE)
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
        val bokehFile = getBokehFile(context, photoId)
        if (bokehFile.exists()) {
            return loadBitmap(context, Uri.fromFile(bokehFile), maxEdge)
        }
        val photoFile = getPhotoFile(context, photoId)
        if (!photoFile.exists()) {
            return null
        }
        return loadBitmap(context, Uri.fromFile(photoFile), maxEdge)
    }

    fun loadOriginalBitmap(context: Context, photoId: String, maxEdge: Int? = null): Bitmap? {
        val photoFile = getPhotoFile(context, photoId)
        if (!photoFile.exists()) {
            return null
        }
        return loadBitmap(context, Uri.fromFile(photoFile), maxEdge)
    }

    fun loadBitmap(context: Context, uri: Uri, maxEdge: Int? = null): Bitmap? {
        var infoSize: android.util.Size? = null
        var infoMimeType: String? = null
        val source = ImageDecoder.createSource(context.contentResolver, uri)

        val bitmap = runCatching {
            ImageDecoder.decodeBitmap(source) { decoder, info, _ ->
                decoder.allocator = ImageDecoder.ALLOCATOR_SOFTWARE
                // 记录原始信息
                infoSize = info.size
                infoMimeType = info.mimeType

                if (maxEdge != null) {
                    val width = info.size.width
                    val height = info.size.height

                    if (width > maxEdge || height > maxEdge) {
                        val scale = maxEdge.toFloat() / maxOf(width, height)
                        decoder.setTargetSize((width * scale).toInt(), (height * scale).toInt())
                    }
                }
            }
        }.getOrNull() ?: return null
        val isDng = infoMimeType?.contains("dng", ignoreCase = true) == true

        if (!isDng) return bitmap

        return try {
            val orientation = context.contentResolver.openInputStream(uri)?.use { input ->
                ExifInterface(input).getAttributeInt(ExifInterface.TAG_ORIENTATION, ExifInterface.ORIENTATION_NORMAL)
            } ?: ExifInterface.ORIENTATION_NORMAL

            // 如果方向正常，直接返回
            if (orientation == ExifInterface.ORIENTATION_NORMAL || orientation == ExifInterface.ORIENTATION_UNDEFINED) {
                return bitmap
            }

            val (infoW, infoH) = infoSize?.let { it.width to it.height } ?: (0 to 0)

            // 准确判断方向是否已被处理：
            // 1. 检查当前方向是否涉及宽高交换
            val rotationSwapsSize = orientation == ExifInterface.ORIENTATION_ROTATE_90 ||
                    orientation == ExifInterface.ORIENTATION_ROTATE_270 ||
                    orientation == ExifInterface.ORIENTATION_TRANSPOSE ||
                    orientation == ExifInterface.ORIENTATION_TRANSVERSE

            val alreadyHandled = if (rotationSwapsSize && infoW != infoH && infoW > 0) {
                // 如果是 90/270 度旋转且非正方形，检查 Bitmap 宽高比是否相对于原图已反转
                // (bitmapW > bitmapH) 不等于 (infoW > infoH) 说明发生了交换，即已被处理
                (bitmap.width > bitmap.height) != (infoW > infoH)
            } else true

            if (alreadyHandled) {
                bitmap
            } else {
                rotateImageIfRequired(bitmap, orientation)
            }
        } catch (e: Exception) {
            bitmap
        }
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
    suspend fun importPhoto(
        context: Context,
        uri: Uri,
        lutId: String?,
        computationalAperture: Float? = null,
        photoId: String? = null,
    ): String? {
        return withContext(Dispatchers.IO) {
            try {
                val photoId = photoId ?: UUID.randomUUID().toString()
                val photoDir = getPhotoDir(context, photoId, true)
                val photoFile = File(photoDir, PHOTO_FILE)
                val dngFile = File(photoDir, DNG_FILE)
                val metadataFile = File(photoDir, METADATA_FILE)
                val thumbnailFile = File(photoDir, THUMBNAIL_FILE)

                if (photoFile.exists()) {
                    val bakPhotoFile = File(photoDir, "original.${photoFile.lastModified()}.jpg")
                    photoFile.renameTo(bakPhotoFile)
                }

                if (dngFile.exists()) {
                    val bakPhotoFile = File(photoDir, "original.${photoFile.lastModified()}.dng")
                    dngFile.renameTo(bakPhotoFile)
                }

                // 2. 读取元数据以获取旋转信息
                val metadata = PhotoMetadata.fromUri(context, uri).copy(
                    lutId = lutId,
                    computationalAperture = computationalAperture,
                    sourceUri = uri.toString()
                )

                // 1. 检测是否为 RAW 文件
                val mimeType = context.contentResolver.getType(uri)
                val fileName = getFileName(context, uri) ?: ""
                val isRaw = mimeType?.contains("raw", ignoreCase = true) == true ||
                        mimeType?.contains("dng", ignoreCase = true) == true ||
                        fileName.endsWith(".dng", ignoreCase = true) ||
                        fileName.endsWith(".rw2", ignoreCase = true) ||
                        fileName.endsWith(".arw", ignoreCase = true) ||
                        fileName.endsWith(".cr3", ignoreCase = true)

                if (isRaw) {
                    // --- RAW 处理逻辑 ---
                    // 1. 复制 RAW 文件
                    context.contentResolver.openInputStream(uri)?.use { input ->
                        FileOutputStream(dngFile).use { output ->
                            input.copyTo(output)
                        }
                    }

                    // 3. 处理 RAW 以生成 JPEG 预览
                    var updatedMetadata = metadata
                    val processedBitmap = RawDemosaicProcessor.getInstance().process(
                        context,
                        dngFile.absolutePath, null, null, 0,
                        sharpeningValue = 0.4f,
                        onMetadata = { raw ->
                            updatedMetadata = updatedMetadata.merge(raw)
                        }
                    )

                    if (processedBitmap != null) {
                        // 保存为 original.jpg
                        FileOutputStream(photoFile).use { out ->
                            processedBitmap.compress(Bitmap.CompressFormat.JPEG, 95, out)
                        }

                        // 生成缩略图
                        generateThumbnail(processedBitmap, thumbnailFile)

                        // 更新元数据
                        updatedMetadata = updatedMetadata.copy(
                            width = processedBitmap.width,
                            height = processedBitmap.height,
                            rotation = 0,
                        )
                        metadataFile.writeText(updatedMetadata.toJson())
                        if (updatedMetadata.computationalAperture != null) {
                            generateBokehPhoto(context, photoId, updatedMetadata, processedBitmap)
                        }

                        processedBitmap.recycle()
                    } else {
                        // 降级：如果 RAW 处理失败，尝试直接解码（某些 DNG 包含内置预览图）
                        // 传递元数据确保旋转信息被正确处理
                        tempImportJpeg(uri, context, metadata, photoFile, metadataFile, thumbnailFile)
                    }
                } else {
                    // --- 常规 JPEG 处理逻辑 ---
                    // 传递元数据确保旋转信息被正确处理
                    tempImportJpeg(uri, context, metadata, photoFile, metadataFile, thumbnailFile)
                    if (metadata.computationalAperture != null) {
                        val bitmap = BitmapFactory.decodeFile(photoFile.absolutePath)
                        if (bitmap != null) {
                            generateBokehPhoto(context, photoId, metadata, bitmap)
                            bitmap.recycle()
                        }
                    }
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

    suspend fun refreshRawPreview(context: Context, photoId: String, droMode: MeteringSystem.DROMode): Bitmap? {
        return withContext(Dispatchers.IO) {
            try {
                val photoDir = getPhotoDir(context, photoId, true)
                val photoFile = File(photoDir, PHOTO_FILE)
                val dngFile = File(photoDir, DNG_FILE)
                val thumbnailFile = File(photoDir, THUMBNAIL_FILE)

                if (!dngFile.exists()) return@withContext null

                // 2. 读取元数据以获取旋转信息
                val metadata = loadMetadata(context, photoId)

                // 3. 处理 RAW 以生成 JPEG 预览
                var updatedMetadata = metadata
                val processedBitmap = RawDemosaicProcessor.getInstance().process(
                    context,
                    dngFile.absolutePath, metadata?.ratio, metadata?.cropRegion, 0,
                    sharpeningValue = 0.4f,
                    droMode = metadata?.droMode?.let { MeteringSystem.DROMode.valueOf(it) } ?: droMode,
                    onMetadata = { raw ->
                        updatedMetadata = updatedMetadata?.merge(raw) ?: PhotoMetadata().merge(raw)
                    }
                )

                if (processedBitmap != null) {
                    // 保存为 original.jpg
                    FileOutputStream(photoFile).use { out ->
                        processedBitmap.compress(Bitmap.CompressFormat.JPEG, 95, out)
                    }
                    updatedMetadata?.let {
                        generateBokehPhoto(context, photoId, it, processedBitmap.copy(Bitmap.Config.ARGB_8888, true))
                        saveMetadata(context, photoId, it)
                    }
                    // 生成缩略图
                    generateThumbnail(processedBitmap, thumbnailFile)
                }
                processedBitmap
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to import photo", e)
                null
            }
        }
    }

    private suspend fun tempImportJpeg(
        uri: Uri,
        context: Context,
        metadata: PhotoMetadata,
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

        var updatedMetadata = metadata

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
                    rotatedBitmap.compress(Bitmap.CompressFormat.JPEG, 100, out)
                }
                val newExif = ExifInterface(photoFile)
                newExif.setAttribute(
                    ExifInterface.TAG_ORIENTATION,
                    ExifInterface.ORIENTATION_NORMAL.toString()
                )
                newExif.saveAttributes()

                updatedMetadata = metadata.copy(
                    width = rotatedBitmap.width,
                    height = rotatedBitmap.height,
                    rotation = 0,
                )

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

        metadataFile.writeText(updatedMetadata.toJson())
        generateThumbnail(photoFile, thumbnailFile)
    }

    /**
     * 根据 EXIF 方向信息旋转图片
     */
    internal fun rotateImageIfRequired(img: Bitmap, orientation: Int): Bitmap {
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
    internal fun rotateImage(img: Bitmap, degree: Float): Bitmap {
        val matrix = Matrix()
        matrix.postRotate(degree)
        return Bitmap.createBitmap(img, 0, 0, img.width, img.height, matrix, true)
    }

    /**
     * 翻转图片
     */
    internal fun flipImage(img: Bitmap, horizontal: Boolean, vertical: Boolean): Bitmap {
        val matrix = Matrix()
        matrix.postScale(
            if (horizontal) -1f else 1f,
            if (vertical) -1f else 1f
        )
        return Bitmap.createBitmap(img, 0, 0, img.width, img.height, matrix, true)
    }
}
