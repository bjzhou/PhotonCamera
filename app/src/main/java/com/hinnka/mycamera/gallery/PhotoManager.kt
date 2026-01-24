package com.hinnka.mycamera.gallery

import android.annotation.SuppressLint
import android.app.PendingIntent
import android.content.ContentValues
import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.graphics.ImageFormat
import android.graphics.Matrix
import android.graphics.Rect
import android.graphics.YuvImage
import android.hardware.camera2.CameraCharacteristics
import android.hardware.camera2.CaptureResult
import android.media.Image
import android.media.ThumbnailUtils
import android.net.Uri
import android.os.Build
import android.os.Environment
import android.provider.MediaStore
import android.util.Log
import androidx.core.graphics.createBitmap
import androidx.exifinterface.media.ExifInterface
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.utils.BitmapUtils
import com.hinnka.mycamera.utils.PLog
import com.hinnka.mycamera.utils.RawProcessor
import com.hinnka.mycamera.utils.YuvProcessor
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.async
import kotlinx.coroutines.launch
import kotlinx.coroutines.runBlocking
import kotlinx.coroutines.withContext
import java.io.ByteArrayOutputStream
import java.io.File
import java.io.FileOutputStream
import java.text.SimpleDateFormat
import java.util.*
import kotlin.math.max
import kotlin.math.roundToInt

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
    private const val DNG_FILE = "original.dng"
    private const val METADATA_FILE = "metadata.json"
    private const val THUMBNAIL_FILE = "thumbnail.jpg"

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

    suspend fun exportPhoto(
        context: Context,
        id: String,
        photoProcessor: PhotoProcessor,
        metadata: PhotoMetadata,
        sharpeningValue: Float,
        noiseReductionValue: Float,
        chromaNoiseReductionValue: Float,
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
                    context.contentResolver.openOutputStream(it)?.use { outputStream ->
                        // 使用 95 质量以获得更高的图像清晰度
                        processedBitmap.compress(Bitmap.CompressFormat.JPEG, 95, outputStream)
                    }

                    // 写入 EXIF 信息
                    context.contentResolver.openFileDescriptor(it, "rw")?.use { pfd ->
                        ExifWriter.writeExif(
                            pfd.fileDescriptor, metadata.toCaptureInfo().copy(
                                imageWidth = processedBitmap.width,
                                imageHeight = processedBitmap.height
                            )
                        )
                    }

                    // 保存导出的 URI 到元数据
                    val currentMetadata = loadMetadata(context,  id) ?: metadata
                    val updatedMetadata = currentMetadata.copy(
                        exportedUris = currentMetadata.exportedUris + it.toString()
                    )
                    saveMetadata(context, id, updatedMetadata)
                    PLog.d(TAG, "Exported URI saved: $it for photo $id")
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

    suspend fun exportDng(context: Context, image: Image, metadata: PhotoMetadata, characteristics: CameraCharacteristics, finalCaptureResult: CaptureResult, rotation: Int) = withContext(Dispatchers.IO) {
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
                    RawProcessor.saveToDng(
                        image,
                        characteristics,
                        finalCaptureResult,
                        outputStream,
                        rotation
                    )
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
        preview: Bitmap?,
        metadata: PhotoMetadata,
        rotation: Int,
        aspectRatio: AspectRatio,
        characteristics: CameraCharacteristics,
        captureResult: CaptureResult,
        shouldAutoSave: Boolean = true,
        photoProcessor: PhotoProcessor,
        sharpeningValue: Float,
        noiseReductionValue: Float,
        chromaNoiseReductionValue: Float,
    ): String? {
        return withContext(Dispatchers.IO) {
            try {
                val photoId = UUID.randomUUID().toString()
                val photoDir = getPhotoDir(context, photoId)

                // 预先准备所有文件路径
                val photoFile = File(photoDir, PHOTO_FILE)
                val yuvFile = File(photoDir, YUV_FILE)
                val dngFile = File(photoDir, DNG_FILE)
                val metadataFile = File(photoDir, METADATA_FILE)
                val thumbnailFile = File(photoDir, THUMBNAIL_FILE)

                val format = image.format

                var width = image.width
                var height = image.height

                var thumbnailGenerated = false
                if (preview != null) {
                    generateThumbnail(preview, thumbnailFile)
                    thumbnailGenerated = true
                }

                // 根据图像格式处理
                when (format) {
                    ImageFormat.YUV_420_888, ImageFormat.YCBCR_P010, ImageFormat.NV21 -> {
                        val deferred = async {
                            // 计算处理后的尺寸
                            val dimensions = BitmapUtils.calculateProcessedDimensions(width, height, aspectRatio, rotation)
                            val finalWidth = dimensions.first
                            val finalHeight = dimensions.second
                            
                            // 创建预览用的 Bitmap
                            val previewBitmap = createBitmap(finalWidth, finalHeight)

                            // YUV 格式：使用 native 处理（包含旋转和裁切）并直接保存为 FP16 JXL
                            val success = YuvProcessor.processAndSave(
                                image, aspectRatio, rotation,
                                yuvFile.absolutePath, previewBitmap
                            )

                            launch {
                                withContext(Dispatchers.IO) {
                                    FileOutputStream(photoFile).use { outputStream ->
                                        // 直接从内存中的 Bitmap 生成 8-bit JPEG 副本
                                        previewBitmap.compress(Bitmap.CompressFormat.JPEG, 95, outputStream)
                                    }
                                }
                            }
                            launch {
                                // 保存元数据
                                val metadataWithInfo = metadata.copy(
                                    width = finalWidth,
                                    height = finalHeight,
                                    ratio = aspectRatio,
                                )
                                metadataFile.writeText(metadataWithInfo.toJson())
                                
                                if (shouldAutoSave && success) {
                                    exportPhoto(context, photoId, photoProcessor, metadata, sharpeningValue, noiseReductionValue, chromaNoiseReductionValue)
                                }
                            }
                            previewBitmap
                        }
                        if (!thumbnailGenerated) {
                            val bitmap = deferred.await()
                            generateThumbnail(bitmap, thumbnailFile)
                            bitmap.recycle()
                        }
                    }
                    ImageFormat.RAW_SENSOR, ImageFormat.RAW10, ImageFormat.RAW12 -> {
                        val deferred = async {
//                            val bitmap = RawProcessor.processWithImageDecoder(image, characteristics, captureResult, aspectRatio, rotation) ?: return@async null
                            val bitmap = RawProcessor.processAndToBitmap(context, image, characteristics, captureResult, aspectRatio, rotation) ?: return@async null

                            val dimensions = BitmapUtils.calculateProcessedDimensions(width, height, aspectRatio, rotation)

                            width = dimensions.first
                            height = dimensions.second

                            launch {
                                withContext(Dispatchers.IO) {
                                    FileOutputStream(photoFile).use { outputStream ->
                                        bitmap.compress(Bitmap.CompressFormat.JPEG, 95, outputStream)
                                    }
                                    bitmap.recycle()
                                }
                            }
                            launch {
                                withContext(Dispatchers.IO) {
                                    // 保存元数据
                                    val metadataWithInfo = metadata.copy(
                                        width = width,
                                        height = height,
                                        ratio = aspectRatio,
                                        sharpening = 0.2f,
                                        noiseReduction = 0f,
                                        chromaNoiseReduction = 0.25f,
                                    )
                                    metadataFile.writeText(metadataWithInfo.toJson())
                                    FileOutputStream(dngFile).use {
                                        RawProcessor.saveToDng(image, characteristics, captureResult, it, rotation)
                                    }
                                    if (shouldAutoSave) {
                                        exportDng(context, image, metadata, characteristics, captureResult, rotation)
                                        exportPhoto(context, photoId, photoProcessor, metadata, sharpeningValue, noiseReductionValue, chromaNoiseReductionValue)
                                    }
                                }
                            }
                            bitmap
                        }
                        if (!thumbnailGenerated) {
                            val bitmap = deferred.await() ?: return@withContext null
                            generateThumbnail(bitmap, thumbnailFile)
                            bitmap.recycle()
                        }
                    }
                    else -> {
                        PLog.e(TAG, "Unsupported image format: $format")
                        return@withContext null
                    }
                }



                photoId
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to save photo", e)
                null
            }
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

    fun loadYuvData(context: Context, photoId: String): ShortArray? {
        val yuvFile = getYuvFile(context, photoId)
        if (!yuvFile.exists()) {
            return null
        }
        val yuv = YuvProcessor.loadCompressedArgb(yuvFile.absolutePath)
        return yuv
    }

    fun loadBitmap(context: Context, photoId: String): Bitmap? {
        val photoFile = getPhotoFile(context, photoId)
        if (!photoFile.exists()) {
            return null
        }
        return BitmapFactory.decodeFile(photoFile.absolutePath)
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
                val metadataFile = File(photoDir, METADATA_FILE)
                val thumbnailFile = File(photoDir, THUMBNAIL_FILE)

                // 1. 复制文件到临时位置
                val tempFile = File(photoDir, "temp.jpg")
                context.contentResolver.openInputStream(uri)?.use { input ->
                    FileOutputStream(tempFile).use { output ->
                        input.copyTo(output)
                    }
                }

                // 2. 读取并处理 EXIF 方向信息
                val exif = ExifInterface(tempFile)
                val orientation = exif.getAttributeInt(
                    ExifInterface.TAG_ORIENTATION,
                    ExifInterface.ORIENTATION_NORMAL
                )

                // 3. 根据 EXIF 方向旋转图片
                if (orientation != ExifInterface.ORIENTATION_NORMAL &&
                    orientation != ExifInterface.ORIENTATION_UNDEFINED
                ) {
                    // 需要旋转图片
                    val bitmap = BitmapFactory.decodeFile(tempFile.absolutePath)
                    if (bitmap != null) {
                        val rotatedBitmap = rotateImageIfRequired(bitmap, orientation)
                        // 保存已旋转的图片，并设置 EXIF 方向为 NORMAL
                        FileOutputStream(photoFile).use { out ->
                            rotatedBitmap.compress(Bitmap.CompressFormat.JPEG, 95, out)
                        }

                        // 设置正确的 EXIF 方向
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
                        // 解码失败，直接复制原文件
                        tempFile.copyTo(photoFile, overwrite = true)
                    }
                } else {
                    // 不需要旋转，直接使用临时文件
                    tempFile.renameTo(photoFile)
                }

                // 删除临时文件（如果还存在）
                if (tempFile.exists()) {
                    tempFile.delete()
                }

                // 4. 读取元数据 (此时 isImported 会被设置为 true)
                val metadata = PhotoMetadata.fromUri(context, uri)
                metadataFile.writeText(metadata.toJson())

                // 5. 生成缩略图
                generateThumbnail(photoFile, thumbnailFile)

                PLog.d(TAG, "Photo imported: $photoId (orientation: $orientation)")
                photoId
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to import photo", e)
                null
            }
        }
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
