package com.hinnka.mycamera.gallery

import android.annotation.SuppressLint
import android.app.PendingIntent
import android.content.ContentValues
import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.graphics.ImageDecoder
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
import androidx.compose.ui.tooling.preview.Preview
import androidx.exifinterface.media.ExifInterface
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.camera.CaptureInfo
import com.hinnka.mycamera.utils.PLog
import com.hinnka.mycamera.utils.RawProcessor
import com.hinnka.mycamera.utils.YuvProcessor
import com.hinnka.mycamera.viewmodel.CameraViewModel
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.async
import kotlinx.coroutines.launch
import kotlinx.coroutines.runBlocking
import kotlinx.coroutines.withContext
import java.io.ByteArrayInputStream
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
    private const val YUV_FILE = "original.yuv"
    private const val DNG_FILE = "original.dng"
    private const val METADATA_FILE = "metadata.json"
    private const val THUMBNAIL_FILE = "thumbnail.jpg"

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


    suspend fun exportPhoto(context: Context, photoProcessor: PhotoProcessor, bitmap: Bitmap, metadata: PhotoMetadata, finalCaptureInfo: CaptureInfo, sharpeningValue: Float, noiseReductionValue: Float, chromaNoiseReductionValue: Float) {
        val processedBitmap = withContext(Dispatchers.Default) {
            photoProcessor.process(
                context = context,
                input = bitmap,
                metadata = metadata,
                sharpening = sharpeningValue,
                noiseReduction = noiseReductionValue,
                chromaNoiseReduction = chromaNoiseReductionValue
            )
        }

        val timestamp = SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US)
            .format(Date())
        val filename = "PhotonCamera_${timestamp}.jpg"
        val contentValues = ContentValues().apply {
            put(MediaStore.MediaColumns.DISPLAY_NAME, filename)
            put(MediaStore.MediaColumns.MIME_TYPE, "image/jpeg")
            put(
                MediaStore.MediaColumns.RELATIVE_PATH,
                Environment.DIRECTORY_DCIM + "/PhotonCamera"
            )
        }

        val uri = context.contentResolver.insert(
            MediaStore.Images.Media.EXTERNAL_CONTENT_URI,
            contentValues
        )

        uri?.let {
            context.contentResolver.openOutputStream(it)?.use { outputStream ->
                processedBitmap.compress(Bitmap.CompressFormat.JPEG, 95, outputStream)
            }

            // 写入 EXIF 信息
            context.contentResolver.openFileDescriptor(it, "rw")?.use { pfd ->
                ExifWriter.writeExif(
                    pfd.fileDescriptor, finalCaptureInfo.copy(
                        imageWidth = processedBitmap.width,
                        imageHeight = processedBitmap.height
                    )
                )
            }

            // 保存导出的 URI 到元数据
            val photoId = getPhotoIds(context).firstOrNull()
            if (photoId != null) {
                val currentMetadata = loadMetadata(context, photoId) ?: metadata
                val updatedMetadata = currentMetadata.copy(
                    exportedUris = currentMetadata.exportedUris + it.toString()
                )
                saveMetadata(context, photoId, updatedMetadata)
                PLog.d(TAG, "Exported URI saved: $it")
            }
        }

        if (processedBitmap != bitmap) {
            processedBitmap.recycle()
        }
    }

    suspend fun exportDng(context: Context, image: Image, characteristics: CameraCharacteristics, finalCaptureResult: CaptureResult, rotation: Int) = withContext(Dispatchers.IO) {
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
        captureInfo: CaptureInfo,
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

                var width = metadata.width
                var height = metadata.height

                var thumbnailGenerated = false
                if (preview != null) {
                    generateThumbnail(preview, thumbnailFile)
                    thumbnailGenerated = true
                }

                // 根据图像格式处理
                when (format) {
                    ImageFormat.YUV_420_888, ImageFormat.NV21 -> {
                        val deferred = async {
                            // YUV 格式：使用 native 处理（包含旋转和裁切）
                            val result = YuvProcessor.process(image, aspectRatio, rotation) ?: return@async null
                            width = result[0]
                            height = result[1]
                            val bitmap = Bitmap.createBitmap(result, width, height, Bitmap.Config.ARGB_8888)
                            launch {
                                withContext(Dispatchers.IO) {
                                    FileOutputStream(photoFile).use { outputStream ->
                                        // 直接从内存中的 Bitmap 生成缩略图
                                        bitmap.compress(Bitmap.CompressFormat.JPEG, 95, outputStream)
                                    }
                                    if (shouldAutoSave) {
                                        exportPhoto(context, photoProcessor, bitmap, metadata, captureInfo, sharpeningValue, noiseReductionValue, chromaNoiseReductionValue)
                                    }
                                    bitmap.recycle()
                                }
                            }
                            launch {
                                withContext(Dispatchers.IO) {
                                    YuvProcessor.saveCompressedArgb(result, result[0],result[1], yuvFile.absolutePath)
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
                    ImageFormat.RAW_SENSOR, ImageFormat.RAW10, ImageFormat.RAW12 -> {
                        val deferred = async {
//                            val bitmap = RawProcessor.processWithImageDecoder(image, characteristics, captureResult, aspectRatio, rotation) ?: return@async null
                            val bitmap = RawProcessor.processAndToBitmap(context, image, characteristics, captureResult, aspectRatio, rotation) ?: return@async null

                            val dimensions = RawProcessor.calculateProcessedDimensions(width, height, aspectRatio, rotation)

                            width = dimensions.first
                            height = dimensions.second

                            launch {
                                withContext(Dispatchers.IO) {
                                    FileOutputStream(photoFile).use { outputStream ->
                                        bitmap.compress(Bitmap.CompressFormat.JPEG, 95, outputStream)
                                    }
                                    if (shouldAutoSave) {
                                        exportPhoto(context, photoProcessor, bitmap, metadata, captureInfo, sharpeningValue, noiseReductionValue, chromaNoiseReductionValue)
                                    }
                                    bitmap.recycle()
                                }
                            }
                            launch {
                                withContext(Dispatchers.IO) {
                                    FileOutputStream(dngFile).use {
                                        RawProcessor.saveToDng(image, characteristics, captureResult, it, rotation)
                                    }
                                    if (shouldAutoSave) {
                                        exportDng(context, image, characteristics, captureResult, rotation)
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

                // 保存元数据
                val metadataWithInfo = metadata.copy(
                    width = width,
                    height = height,
                )
                metadataFile.writeText(metadataWithInfo.toJson())

                photoId
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to save photo", e)
                null
            }
        }
    }


    private suspend fun generateThumbnailFromFile(dng: File, width: Int, height: Int, targetFile: File) {
        val bitmap = withContext(Dispatchers.IO) {
            val options = BitmapFactory.Options()
            options.inSampleSize = max(width, height) / 512
            options.inJustDecodeBounds = false
            options.inPreferredConfig = Bitmap.Config.RGB_565
            BitmapFactory.decodeFile(dng.absolutePath, options)
        }
        generateThumbnail(bitmap, targetFile)
        bitmap.recycle()
    }

    /**
     * 将 Bitmap 转换为 16-bit RGB 数据
     *
     * @param bitmap Bitmap
     * @return 16-bit RGB 数据 (R-G-B-R-G-B...)
     */
    @SuppressLint("HalfFloat")
    private fun bitmapToRgb16(bitmap: Bitmap): ShortArray {
        val width = bitmap.width
        val height = bitmap.height
        val rgbData = ShortArray(width * height * 3)

        // 检测是否为 RGBA_F16 格式
        if (false) {
            // 处理 16-bit 半精度浮点格式
            val buffer = java.nio.ByteBuffer.allocate(bitmap.byteCount)
            bitmap.copyPixelsToBuffer(buffer)
            buffer.rewind()

            val shortBuffer = buffer.asShortBuffer()
            for (i in 0 until width * height) {
                // RGBA_F16: 每个通道是 16-bit 半精度浮点数
                val r: Float = android.util.Half.toFloat(shortBuffer.get())
                val g: Float = android.util.Half.toFloat(shortBuffer.get())
                val b: Float = android.util.Half.toFloat(shortBuffer.get())
                shortBuffer.get() // 跳过 alpha 通道

                // 转换到 16-bit 整数范围 [0, 65535]
                rgbData[i * 3] = (r * 65535f).coerceIn(0f, 65535f).toInt().toShort()
                rgbData[i * 3 + 1] = (g * 65535f).coerceIn(0f, 65535f).toInt().toShort()
                rgbData[i * 3 + 2] = (b * 65535f).coerceIn(0f, 65535f).toInt().toShort()
            }
        } else {
            // 处理 8-bit 格式 (ARGB_8888 等)
            val pixels = IntArray(width * height)
            bitmap.getPixels(pixels, 0, width, 0, 0, width, height)

            // 转换为 16-bit RGB（左移 8 位）
            for (i in pixels.indices) {
                val pixel = pixels[i]
                val r = ((pixel shr 16) and 0xFF) shl 8  // 8-bit -> 16-bit
                val g = ((pixel shr 8) and 0xFF) shl 8
                val b = (pixel and 0xFF) shl 8

                rgbData[i * 3] = r.toShort()
                rgbData[i * 3 + 1] = g.toShort()
                rgbData[i * 3 + 2] = b.toShort()
            }
        }

        return rgbData
    }

    /**
     * 将 YUV Image 转换为 16-bit RGB 数据
     */
    private fun yuvToRgb16(image: Image): ShortArray {
        val width = image.width
        val height = image.height
        val nv21Data = imageToNV21(image)
        val rgbData = ShortArray(width * height * 3)

        for (i in 0 until width * height) {
            val y = (nv21Data[i].toInt() and 0xFF) shl 8  // 扩展到 16-bit
            val uvIndex = width * height + (i / width / 2) * width + (i % width / 2) * 2
            val v = (nv21Data[uvIndex].toInt() and 0xFF) shl 8
            val u = (nv21Data[uvIndex + 1].toInt() and 0xFF) shl 8

            // YUV 转 RGB (BT.601)
            val r = (y + 1.402 * (v - 32768)).toInt().coerceIn(0, 65535)
            val g = (y - 0.344136 * (u - 32768) - 0.714136 * (v - 32768)).toInt().coerceIn(0, 65535)
            val b = (y + 1.772 * (u - 32768)).toInt().coerceIn(0, 65535)

            rgbData[i * 3] = r.toShort()
            rgbData[i * 3 + 1] = g.toShort()
            rgbData[i * 3 + 2] = b.toShort()
        }

        return rgbData
    }

    /**
     * 将 YUV Image 转换为 8-bit 预览 Bitmap
     */
    private fun yuvToPreviewBitmap(image: Image): Bitmap? {
        return try {
            val nv21Data = imageToNV21(image)
            val yuvImage = YuvImage(nv21Data, ImageFormat.NV21, image.width, image.height, null)
            val jpegStream = ByteArrayOutputStream()
            yuvImage.compressToJpeg(Rect(0, 0, image.width, image.height), 90, jpegStream)
            val jpegData = jpegStream.toByteArray()
            BitmapFactory.decodeByteArray(jpegData, 0, jpegData.size)
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to convert YUV to preview bitmap", e)
            null
        }
    }

    /**
     * 将 RAW Image 转换为 16-bit RGB 数据
     * 简化版本：直接将 Bayer 数据复制为灰度图
     */
    private fun rawToRgb16(image: Image): ShortArray {
        val width = image.width
        val height = image.height
        val rgbData = ShortArray(width * height * 3)

        val buffer = image.planes[0].buffer
        val rowStride = image.planes[0].rowStride
        val pixelStride = image.planes[0].pixelStride

        // 简化处理：直接将 RAW 数据作为灰度值
        for (y in 0 until height) {
            for (x in 0 until width) {
                val pos = y * rowStride + x * pixelStride
                val value = when (image.format) {
                    ImageFormat.RAW10 -> {
                        // 10-bit 扩展到 16-bit
                        ((buffer.get(pos).toInt() and 0xFF) shl 8) or ((buffer.get(pos).toInt() and 0xFF))
                    }
                    ImageFormat.RAW12 -> {
                        // 12-bit 扩展到 16-bit
                        ((buffer.get(pos).toInt() and 0xFF) shl 8) or ((buffer.get(pos + 1).toInt() and 0xFF))
                    }
                    else -> {
                        // RAW_SENSOR 通常是 16-bit
                        ((buffer.get(pos + 1).toInt() and 0xFF) shl 8) or (buffer.get(pos).toInt() and 0xFF)
                    }
                }

                val index = (y * width + x) * 3
                rgbData[index] = value.toShort()
                rgbData[index + 1] = value.toShort()
                rgbData[index + 2] = value.toShort()
            }
        }

        return rgbData
    }

    /**
     * 将 RAW Image 转换为 8-bit 预览 Bitmap
     */
    private fun rawToPreviewBitmap(image: Image): Bitmap? {
        return try {
            val width = image.width
            val height = image.height
            val bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)
            val pixels = IntArray(width * height)

            val buffer = image.planes[0].buffer
            val rowStride = image.planes[0].rowStride
            val pixelStride = image.planes[0].pixelStride

            for (y in 0 until height) {
                for (x in 0 until width) {
                    val pos = y * rowStride + x * pixelStride
                    val value = ((buffer.get(pos).toInt() and 0xFF) shr 0) and 0xFF
                    pixels[y * width + x] = (0xFF shl 24) or (value shl 16) or (value shl 8) or value
                }
            }

            bitmap.setPixels(pixels, 0, width, 0, 0, width, height)
            bitmap
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to convert RAW to preview bitmap", e)
            null
        }
    }

    /**
     * 将 Image (YUV_420_888) 转换为 NV21 字节数组
     */
    private fun imageToNV21(image: Image): ByteArray {
        val width = image.width
        val height = image.height
        val ySize = width * height
        val uvSize = width * height / 2

        val nv21 = ByteArray(ySize + uvSize)

        val yBuffer = image.planes[0].buffer
        val uBuffer = image.planes[1].buffer
        val vBuffer = image.planes[2].buffer

        val yRowStride = image.planes[0].rowStride
        val yPixelStride = image.planes[0].pixelStride
        val uvRowStride = image.planes[1].rowStride
        val uvPixelStride = image.planes[1].pixelStride

        // 复制 Y 平面
        var pos = 0
        if (yPixelStride == 1) {
            // 连续存储，直接复制
            for (row in 0 until height) {
                yBuffer.position(row * yRowStride)
                yBuffer.get(nv21, pos, width)
                pos += width
            }
        } else {
            // 非连续存储，逐像素复制
            for (row in 0 until height) {
                for (col in 0 until width) {
                    nv21[pos++] = yBuffer.get(row * yRowStride + col * yPixelStride)
                }
            }
        }

        // 复制 UV 平面 (交错存储为 NV21 格式: VUVUVU...)
        val uvHeight = height / 2
        val uvWidth = width / 2

        if (uvPixelStride == 2) {
            // 已经是 NV21 格式，直接复制 V 平面
            for (row in 0 until uvHeight) {
                vBuffer.position(row * uvRowStride)
                for (col in 0 until uvWidth) {
                    nv21[pos++] = vBuffer.get()
                    vBuffer.position(vBuffer.position() + 1) // 跳过 U
                }
            }
        } else {
            // 需要手动交错 V 和 U
            for (row in 0 until uvHeight) {
                for (col in 0 until uvWidth) {
                    nv21[pos++] = vBuffer.get(row * uvRowStride + col * uvPixelStride)
                    nv21[pos++] = uBuffer.get(row * uvRowStride + col * uvPixelStride)
                }
            }
        }

        return nv21
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
     * 直接从内存中的 16-bit RGB 数据生成 512x512 缩略图
     * 性能优化：避免文件 I/O 和重复解析
     *
     * @param width 原始图像宽度
     * @param height 原始图像高度
     * @param rgbData 16-bit RGB 数据 (R-G-B-R-G-B...)
     * @param targetFile 缩略图输出文件
     */
    private fun generateThumbnailFromRgb16(
        width: Int,
        height: Int,
        rgbData: ShortArray,
        targetFile: File
    ) {
        try {
            // 计算缩略图尺寸和采样步长
            val thumbnailSize = 512
            val scale = max(width, height).toFloat() / thumbnailSize
            val thumbnailWidth = (width / scale).toInt()
            val thumbnailHeight = (height / scale).toInt()

            // 创建缩略图像素数组 (ARGB_8888)
            val pixels = IntArray(thumbnailWidth * thumbnailHeight)

            // 降采样：从原始 RGB16 数据中提取像素
            for (y in 0 until thumbnailHeight) {
                for (x in 0 until thumbnailWidth) {
                    // 计算原始图像中的对应位置
                    val srcX = (x * scale).toInt().coerceIn(0, width - 1)
                    val srcY = (y * scale).toInt().coerceIn(0, height - 1)
                    val srcIndex = (srcY * width + srcX) * 3

                    // 将 16-bit RGB 转换为 8-bit (右移 8 位)
                    val r = ((rgbData[srcIndex].toInt() and 0xFFFF) shr 8) and 0xFF
                    val g = ((rgbData[srcIndex + 1].toInt() and 0xFFFF) shr 8) and 0xFF
                    val b = ((rgbData[srcIndex + 2].toInt() and 0xFFFF) shr 8) and 0xFF

                    pixels[y * thumbnailWidth + x] = (0xFF shl 24) or (r shl 16) or (g shl 8) or b
                }
            }

            // 创建 Bitmap
            val bitmap = Bitmap.createBitmap(pixels, thumbnailWidth, thumbnailHeight, Bitmap.Config.ARGB_8888)

            // 裁剪为正方形 512x512
            val thumbnail = ThumbnailUtils.extractThumbnail(bitmap, thumbnailSize, thumbnailSize)

            // 保存为 JPEG
            FileOutputStream(targetFile).use { out ->
                thumbnail.compress(Bitmap.CompressFormat.JPEG, 80, out)
            }

            bitmap.recycle()
            thumbnail.recycle()

            PLog.d(TAG, "Thumbnail generated from RGB16 data: ${thumbnailWidth}x${thumbnailHeight} -> ${thumbnailSize}x${thumbnailSize}")
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to generate thumbnail from RGB16", e)
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
