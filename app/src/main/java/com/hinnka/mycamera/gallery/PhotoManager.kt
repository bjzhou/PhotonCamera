package com.hinnka.mycamera.gallery

import android.app.PendingIntent
import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.graphics.Matrix
import android.media.ThumbnailUtils
import android.net.Uri
import android.os.Build
import android.provider.MediaStore
import androidx.exifinterface.media.ExifInterface
import com.hinnka.mycamera.camera.CaptureInfo
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.async
import kotlinx.coroutines.coroutineScope
import kotlinx.coroutines.launch
import kotlinx.coroutines.runBlocking
import kotlinx.coroutines.withContext
import java.io.File
import java.io.FileOutputStream
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
    private const val METADATA_FILE = "metadata.json"
    private const val THUMBNAIL_FILE = "thumbnail.jpg"
    private const val PREVIEW_FILE = "preview_lut.jpg"

    private fun getPhotosBaseDir(context: Context): File {
        val dir = File(context.filesDir, PHOTOS_DIR)
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

    fun getMetadataFile(context: Context, photoId: String): File {
        return File(getPhotoDir(context, photoId), METADATA_FILE)
    }

    fun getThumbnailFile(context: Context, photoId: String): File {
        return File(getPhotoDir(context, photoId), THUMBNAIL_FILE)
    }

    fun getPreviewFile(context: Context, photoId: String): File {
        return File(getPhotoDir(context, photoId), PREVIEW_FILE)
    }

    /**
     * 保存新拍摄的照片
     *
     * @param context Context
     * @param bitmap 原始 Bitmap 图片
     * @param metadata 编辑元数据（LUT、边框等）
     * @param captureInfo 拍摄信息（用于写入 EXIF）
     */
    suspend fun savePhoto(
        context: Context,
        bitmap: Bitmap,
        metadata: PhotoMetadata,
        captureInfo: CaptureInfo? = null,
    ): String? {
        return withContext(Dispatchers.IO) {
            try {
                val photoId = UUID.randomUUID().toString()
                val photoDir = getPhotoDir(context, photoId)

                // 预先准备所有文件路径
                val photoFile = File(photoDir, PHOTO_FILE)
                val metadataFile = File(photoDir, METADATA_FILE)
                val thumbnailFile = File(photoDir, THUMBNAIL_FILE)
                val previewFile = File(photoDir, PREVIEW_FILE)

                // 预先计算元数据（避免在协程中访问可能被回收的 bitmap
                val metadataWithInfo = metadata.copy(
                    width = bitmap.width,
                    height = bitmap.height,
                )
                val metadataJson = metadataWithInfo.toJson()

                // 并行执行所有 IO 操作
                coroutineScope {
                    // 任务 1: 保存原图
                    val saveOriginalJob = async {
                        FileOutputStream(photoFile).use { out ->
                            // 使用 95 质量以获得更高的图像清晰度
                            bitmap.compress(Bitmap.CompressFormat.JPEG, 95, out)
                        }
                    }

                    // 任务 2: 保存元数据 JSON（独立任务，可并行）
                    launch {
                        metadataFile.writeText(metadataJson)
                    }

                    // 任务 3: EXIF 写入，必须在原图保存后进行
                    // 这个任务完成后，photoFile 才能被其他任务读取
                    val exifJob = async {
                        saveOriginalJob.await()
                        captureInfo?.copy(
                            imageWidth = bitmap.width,
                            imageHeight = bitmap.height,
                        )?.let { info ->
                            ExifWriter.writeExif(photoFile, info)
                        }
                    }

                    // 任务 4: 生成并保存预览图
                    // 必须等待 EXIF 写入完成，避免读取到不完整的文件
                    launch {
                        exifJob.await()
                        savePreviewFileIfNeed(photoFile, previewFile)
                    }

                    // 任务 5: 生成并保存缩略图
                    // 必须等待 EXIF 写入完成，避免读取到不完整的文件
                    val thumbnailJob = async {
                        exifJob.await()
                        generateThumbnail(photoFile, thumbnailFile)
                    }

                    // 等待所有任务完成
                    exifJob.await()
                    thumbnailJob.await()
                }

                PLog.d(TAG, "Photo saved: $photoId")
                photoId
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to save photo", e)
                null
            }
        }
    }

    private fun savePreviewFileIfNeed(sourceFile: File, targetFile: File) {
        try {
            val option = BitmapFactory.Options().apply { inJustDecodeBounds = true }
            BitmapFactory.decodeFile(sourceFile.absolutePath, option)
            val maxSide = max(option.outWidth, option.outHeight)
            if (maxSide > 3840) {
                val inSampleSize = (maxSide / 2560f).roundToInt().coerceAtLeast(1)
                option.inSampleSize = inSampleSize
                option.inJustDecodeBounds = false
                val bitmap = BitmapFactory.decodeFile(sourceFile.absolutePath, option)
                if (bitmap != null) {
                    FileOutputStream(targetFile).use { out ->
                        bitmap.compress(Bitmap.CompressFormat.JPEG, 90, out)
                    }
                }
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to save thumbnail from source", e)
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
                val previewFile = File(photoDir, PREVIEW_FILE)

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
                    orientation != ExifInterface.ORIENTATION_UNDEFINED) {
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
                        newExif.setAttribute(ExifInterface.TAG_ORIENTATION,
                            ExifInterface.ORIENTATION_NORMAL.toString())
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
                savePreviewFileIfNeed(photoFile, previewFile)
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

