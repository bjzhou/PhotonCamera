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
        byteArray: ByteArray,
        aspectRatio: AspectRatio?,
        cropRegion: Rect?,
        rotation: Int
    ): Bitmap? {
        return processAndToBitmap(ByteBuffer.wrap(byteArray), aspectRatio, cropRegion, rotation)
    }

    fun processAndToBitmap(
        byteBuffer: ByteBuffer,
        aspectRatio: AspectRatio?,
        cropRegion: Rect?,
        rotation: Int
    ): Bitmap? {
        val source = ImageDecoder.createSource(byteBuffer)
        return processAndToBitmap(source, aspectRatio, cropRegion, rotation)
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
        rotation: Int = 0
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
            dngCreator.writeImage(outputStream, image.image)
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to save DNG", e)
        } finally {
            dngCreator.close()
        }
    }

    fun saveToDng(
        byteBuffer: ByteBuffer,
        characteristics: CameraCharacteristics,
        captureResult: CaptureResult,
        outputStream: java.io.OutputStream,
        width: Int,
        height: Int,
        rotation: Int = 0
    ) {
        val dngCreator = DngCreator(characteristics, captureResult)
        try {
            val buffer = ByteBuffer.allocateDirect(byteBuffer.capacity())
            buffer.order(ByteOrder.nativeOrder())
            buffer.put(byteBuffer)
            buffer.rewind() // 必须重置 position 到 0
            val orientation = when (rotation) {
                90 -> ExifInterface.ORIENTATION_ROTATE_90
                180 -> ExifInterface.ORIENTATION_ROTATE_180
                270 -> ExifInterface.ORIENTATION_ROTATE_270
                else -> ExifInterface.ORIENTATION_NORMAL
            }
            dngCreator.setOrientation(orientation)
            val size = Size(width, height)
            dngCreator.writeByteBuffer(outputStream, size, buffer, 0)
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to save DNG", e)
        } finally {
            dngCreator.close()
        }
    }
}
