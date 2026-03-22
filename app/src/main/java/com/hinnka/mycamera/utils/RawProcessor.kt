package com.hinnka.mycamera.utils

import android.graphics.*
import android.hardware.camera2.CameraCharacteristics
import android.hardware.camera2.CaptureResult
import android.hardware.camera2.DngCreator
import android.media.ExifInterface
import android.media.Image
import android.util.Log
import android.util.Size
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.model.SafeImage
import com.hinnka.mycamera.raw.RawMetadata
import com.hinnka.mycamera.raw.RawDemosaicProcessor
import java.io.File
import java.io.FileInputStream
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.ShortBuffer

/**
 * RAW 图像处理器
 *
 * 用于处理 Camera2 RAW_SENSOR 格式的图像数据
 * 使用 GPU 加速的解马赛克算法处理 RAW 数据
 */
object RawProcessor {

    private const val TAG = "RawProcessor"

    enum class RawBufferValueDomain {
        SENSOR,
        NORMALIZED_SENSOR_RANGE,
    }

    /**
     * 检查图像是否为 RAW 格式
     */
    fun isRawImage(image: SafeImage): Boolean {
        return image.format == ImageFormat.RAW_SENSOR ||
                image.format == ImageFormat.RAW_PRIVATE ||
                image.format == ImageFormat.RAW10 ||
                image.format == ImageFormat.RAW12
    }

    fun processAndToBitmap(
        file: File,
        aspectRatio: AspectRatio?,
        cropRegion: Rect?,
        rotation: Int
    ): Bitmap? {
        val source = ImageDecoder.createSource(file)
        return processAndToBitmap(source, aspectRatio, cropRegion, rotation)
    }

    fun processAndToBitmap(
        source: ImageDecoder.Source,
        aspectRatio: AspectRatio?,
        cropRegion: Rect?,
        rotation: Int
    ): Bitmap? {
        return try {
            var decodedBitmap = ImageDecoder.decodeBitmap(source) { decoder, info, _ ->
                decoder.setTargetColorSpace(ColorSpace.get(ColorSpace.Named.EXTENDED_SRGB))
                decoder.allocator = ImageDecoder.ALLOCATOR_SOFTWARE
            }

            PLog.d(TAG, "DNG decoded: ${decodedBitmap.width}x${decodedBitmap.height} ${decodedBitmap.config}")

            // Step 3: 处理旋转
            if (rotation != 0) {
                val matrix = Matrix()
                matrix.postRotate(rotation.toFloat())
                val rotatedBitmap = Bitmap.createBitmap(
                    decodedBitmap, 0, 0,
                    decodedBitmap.width, decodedBitmap.height,
                    matrix, true
                )
                if (rotatedBitmap != decodedBitmap) {
                    decodedBitmap.recycle()
                }
                decodedBitmap = rotatedBitmap
            }

            // Step 4: 裁切到目标宽高比
            val rect =
                BitmapUtils.calculateProcessedRect(decodedBitmap.width, decodedBitmap.height, aspectRatio, cropRegion)
            Log.d(TAG, "processAndToBitmap: $rect")
            val croppedBitmap = Bitmap.createBitmap(decodedBitmap, rect.left, rect.top, rect.width(), rect.height())
            if (croppedBitmap != decodedBitmap) {
                decodedBitmap.recycle()
            }

            croppedBitmap
        } catch (e: Exception) {
            PLog.e(TAG, "Fallback RAW processing also failed", e)
            null
        }
    }

    /**
     * 将 RAW 图像保存为 DNG 文件
     *
     * @param image RAW_SENSOR 格式的 Image
     * @param characteristics 相机特性
     * @param captureResult 拍摄结果
     * @param outputStream 输出流
     * @param rotation 旋转角度 (0, 90, 180, 270)
     */
    fun saveToDng(
        image: SafeImage,
        characteristics: CameraCharacteristics,
        captureResult: CaptureResult,
        outputStream: java.io.OutputStream,
        rotation: Int = 0,
        thumbnail: Bitmap? = null
    ) {
        if (!isRawImage(image)) {
            throw IllegalArgumentException("Image is not RAW format: ${image.format}")
        }

        val dngCreator = DngCreator(characteristics, captureResult)
        try {
            val orientation = when (rotation) {
                90 -> ExifInterface.ORIENTATION_ROTATE_90
                180 -> ExifInterface.ORIENTATION_ROTATE_180
                270 -> ExifInterface.ORIENTATION_ROTATE_270
                else -> ExifInterface.ORIENTATION_NORMAL
            }
            dngCreator.setOrientation(orientation)
            buildDngThumbnail(thumbnail)?.let {
                dngCreator.setThumbnail(it)
                PLog.d(TAG, "Embedded DNG thumbnail written: ${it.width}x${it.height}")
            }
            dngCreator.writeImage(outputStream, image.image)
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to save DNG", e)
        } finally {
            dngCreator.close()
        }
    }

    fun saveRawBufferToDng(
        rawBuffer: ByteBuffer,
        width: Int,
        height: Int,
        characteristics: CameraCharacteristics,
        captureResult: CaptureResult,
        outputStream: java.io.OutputStream,
        rotation: Int = 0,
        thumbnail: Bitmap? = null,
        cfaPattern: Int = RawMetadata.CFA_RGGB,
        blackLevel: FloatArray = floatArrayOf(0f, 0f, 0f, 0f),
        whiteLevel: Int = 65535,
        valueDomain: RawBufferValueDomain = RawBufferValueDomain.SENSOR,
    ): Boolean {
        val dngCreator = DngCreator(characteristics, captureResult)
        return try {
            val orientation = when (rotation) {
                90 -> ExifInterface.ORIENTATION_ROTATE_90
                180 -> ExifInterface.ORIENTATION_ROTATE_180
                270 -> ExifInterface.ORIENTATION_ROTATE_270
                else -> ExifInterface.ORIENTATION_NORMAL
            }
            dngCreator.setOrientation(orientation)
            buildDngThumbnail(thumbnail)?.let {
                dngCreator.setThumbnail(it)
                PLog.d(TAG, "Embedded stacked DNG thumbnail written: ${it.width}x${it.height}")
            }

            val dngInputBuffer = rawBuffer.duplicate().order(ByteOrder.nativeOrder())
            if (valueDomain == RawBufferValueDomain.NORMALIZED_SENSOR_RANGE) {
                denormalizeNormalizedRawBufferInPlace(
                    rawBuffer = dngInputBuffer,
                    width = width,
                    height = height,
                    cfaPattern = cfaPattern,
                    blackLevel = blackLevel,
                    whiteLevel = whiteLevel
                )
            }
            dngInputBuffer.rewind()
            dngCreator.writeByteBuffer(outputStream, Size(width, height), dngInputBuffer, 0)
            true
        } catch (e: Exception) {
            PLog.w(TAG, "Failed to save stacked RAW buffer as DNG, ignoring", e)
            false
        } finally {
            dngCreator.close()
        }
    }

    private fun denormalizeNormalizedRawBufferInPlace(
        rawBuffer: ByteBuffer,
        width: Int,
        height: Int,
        cfaPattern: Int,
        blackLevel: FloatArray,
        whiteLevel: Int,
    ) {
        val output = rawBuffer.order(ByteOrder.nativeOrder()).asShortBuffer()
        var index = 0
        for (y in 0 until height) {
            val rowParity = y and 1
            for (x in 0 until width) {
                val channelIndex = getRggbChannelIndex(x and 1, rowParity, cfaPattern)
                val encoded = output.get(index).toInt() and 0xFFFF
                val channelBlackLevel = blackLevel.getOrElse(channelIndex) { 0f }
                val channelWhiteLevel = whiteLevel.coerceAtLeast(channelBlackLevel.toInt() + 1)
                val sensorValue = ((encoded / 65535f) * (channelWhiteLevel - channelBlackLevel) + channelBlackLevel)
                    .toInt()
                    .coerceIn(0, channelWhiteLevel)
                output.put(index, sensorValue.toShort())
                index++
            }
        }
    }

    private fun getRggbChannelIndex(xParity: Int, yParity: Int, cfaPattern: Int): Int {
        return when (cfaPattern) {
            RawMetadata.CFA_RGGB -> when {
                yParity == 0 && xParity == 0 -> 0
                yParity == 0 && xParity == 1 -> 1
                yParity == 1 && xParity == 0 -> 2
                else -> 3
            }

            RawMetadata.CFA_GRBG -> when {
                yParity == 0 && xParity == 0 -> 1
                yParity == 0 && xParity == 1 -> 0
                yParity == 1 && xParity == 0 -> 3
                else -> 2
            }

            RawMetadata.CFA_GBRG -> when {
                yParity == 0 && xParity == 0 -> 2
                yParity == 0 && xParity == 1 -> 3
                yParity == 1 && xParity == 0 -> 0
                else -> 1
            }

            RawMetadata.CFA_BGGR -> when {
                yParity == 0 && xParity == 0 -> 3
                yParity == 0 && xParity == 1 -> 2
                yParity == 1 && xParity == 0 -> 1
                else -> 0
            }

            else -> 0
        }
    }

    private fun buildDngThumbnail(source: Bitmap?): Bitmap? {
        if (source == null || source.isRecycled) {
            return null
        }

        val maxEdge = 256
        val width = source.width.coerceAtLeast(1)
        val height = source.height.coerceAtLeast(1)
        val scale = minOf(maxEdge.toFloat() / width, maxEdge.toFloat() / height, 1f)
        val targetWidth = (width * scale).toInt().coerceAtLeast(1)
        val targetHeight = (height * scale).toInt().coerceAtLeast(1)

        return if (targetWidth == width && targetHeight == height) {
            source
        } else {
            Bitmap.createScaledBitmap(source, targetWidth, targetHeight, true)
        }
    }
}
