package com.hinnka.mycamera.utils

import android.graphics.Bitmap
import android.graphics.ImageDecoder
import android.graphics.ImageFormat
import android.graphics.Matrix
import android.hardware.camera2.CameraCharacteristics
import android.hardware.camera2.CaptureResult
import android.hardware.camera2.DngCreator
import android.media.Image
import android.media.ExifInterface
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.raw.RawDemosaicProcessor
import kotlinx.coroutines.runBlocking
import java.io.ByteArrayOutputStream
import java.nio.ByteBuffer

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
    fun isRawImage(image: Image): Boolean {
        return image.format == ImageFormat.RAW_SENSOR ||
                image.format == ImageFormat.RAW_PRIVATE ||
                image.format == ImageFormat.RAW10 ||
                image.format == ImageFormat.RAW12
    }

    /**
     * 将 RAW 图像转换为 Bitmap
     * 
     * 使用 GPU 加速的 OpenGL ES 解马赛克算法，包含：
     * - 黑电平校正
     * - Malvar-He-Cutler (MHC) Demosaic 算法
     * - 白平衡增益
     * - 色彩校正矩阵 (CCM)
     * - Gamma 校正 (sRGB)
     * 
     * @param image RAW_SENSOR 格式的 Image
     * @param characteristics 相机特性
     * @param captureResult 拍摄结果（包含曝光、白平衡等元数据）
     * @param aspectRatio 目标宽高比
     * @param rotation 旋转角度 (0, 90, 180, 270)
     * @return 处理后的 Bitmap，如果失败返回 null
     */
    fun processAndToBitmap(
        context: android.content.Context,
        image: Image,
        characteristics: CameraCharacteristics,
        captureResult: CaptureResult,
        aspectRatio: AspectRatio,
        rotation: Int
    ): Bitmap? {
        if (!isRawImage(image)) {
            PLog.e(TAG, "Image is not RAW format: ${image.format}")
            return null
        }

        return try {
            // 使用 GPU 加速的 RAW 处理器
            val processor = RawDemosaicProcessor.getInstance()
            val result = runBlocking {
                processor.process(context, image, characteristics, captureResult, aspectRatio, rotation)
            }

            if (result != null) {
                PLog.d(TAG, "RAW processed with GPU demosaic: ${result.width}x${result.height}")
            } else {
                PLog.w(TAG, "GPU processing failed, falling back to ImageDecoder")
                // 回退到原始方法
                return processWithImageDecoder(image, characteristics, captureResult, aspectRatio, rotation)
            }

            result

        } catch (e: Exception) {
            PLog.e(TAG, "GPU RAW processing failed, trying fallback", e)
            // 回退到原始方法
            processWithImageDecoder(image, characteristics, captureResult, aspectRatio, rotation)
        }
    }

    /**
     * 使用 ImageDecoder 的回退方法（原始实现）
     *
     */
    fun processWithImageDecoder(
        image: Image,
        characteristics: CameraCharacteristics,
        captureResult: CaptureResult,
        aspectRatio: AspectRatio,
        rotation: Int
    ): Bitmap? {
        return try {
            // Step 1: 使用 DngCreator 将 RAW 转换为 DNG 格式
            val dngCreator = DngCreator(characteristics, captureResult)
            val outputStream = ByteArrayOutputStream()
            dngCreator.writeImage(outputStream, image)
            dngCreator.close()

            val dngBytes = outputStream.toByteArray()
            PLog.d(TAG, "DNG created (fallback): ${dngBytes.size} bytes")

            // Step 2: 使用 ImageDecoder 解码 DNG
            val source = ImageDecoder.createSource(ByteBuffer.wrap(dngBytes))
            var decodedBitmap = ImageDecoder.decodeBitmap(source) { decoder, info, _ ->
                // 设置为 ARGB_8888 以获得最佳 quality
                decoder.setTargetColorSpace(android.graphics.ColorSpace.get(android.graphics.ColorSpace.Named.SRGB))
                decoder.allocator = ImageDecoder.ALLOCATOR_SOFTWARE
            }

            PLog.d(TAG, "DNG decoded (fallback): ${decodedBitmap.width}x${decodedBitmap.height}")

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
            val croppedBitmap = cropToAspectRatio(decodedBitmap, aspectRatio)
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
     * 计算经过旋转和裁切后的图像尺寸
     *
     * @param width 原始宽度
     * @param height 原始高度
     * @param aspectRatio 目标宽高比
     * @param rotation 旋转角度 (0, 90, 180, 270)
     * @return Pair<宽度, 高度> 处理后的尺寸
     */
    fun calculateProcessedDimensions(
        width: Int,
        height: Int,
        aspectRatio: AspectRatio,
        rotation: Int
    ): Pair<Int, Int> {
        // Step 1: 计算旋转后的尺寸
        val rotatedWidth: Int
        val rotatedHeight: Int

        when (rotation) {
            90, 270 -> {
                // 旋转 90 或 270 度，宽高互换
                rotatedWidth = height
                rotatedHeight = width
            }
            else -> {
                // 旋转 0 或 180 度，宽高不变
                rotatedWidth = width
                rotatedHeight = height
            }
        }

        // Step 2: 计算裁切后的尺寸
        val srcRatio = rotatedWidth.toFloat() / rotatedHeight.toFloat()
        val targetRatio = aspectRatio.getValue(false) // width/height

        // 如果宽高比已经匹配，直接返回旋转后的尺寸
        if (kotlin.math.abs(srcRatio - targetRatio) < 0.01f) {
            return Pair(rotatedWidth, rotatedHeight)
        }

        val finalWidth: Int
        val finalHeight: Int

        if (srcRatio > targetRatio) {
            // 原图更宽，裁切左右，高度不变
            finalHeight = rotatedHeight
            finalWidth = (rotatedHeight * targetRatio).toInt()
        } else {
            // 原图更高，裁切上下，宽度不变
            finalWidth = rotatedWidth
            finalHeight = (rotatedWidth / targetRatio).toInt()
        }

        return Pair(finalWidth, finalHeight)
    }

    /**
     * 裁切 Bitmap 到目标宽高比（居中裁切）
     */
    private fun cropToAspectRatio(bitmap: Bitmap, aspectRatio: AspectRatio): Bitmap {
        val srcWidth = bitmap.width
        val srcHeight = bitmap.height
        val srcRatio = srcWidth.toFloat() / srcHeight.toFloat()
        val targetRatio = aspectRatio.getValue(false) // width/height

        // 如果宽高比已经匹配，直接返回
        if (kotlin.math.abs(srcRatio - targetRatio) < 0.01f) {
            return bitmap
        }

        val cropWidth: Int
        val cropHeight: Int
        val cropX: Int
        val cropY: Int

        if (srcRatio > targetRatio) {
            // 原图更宽，裁切左右
            cropHeight = srcHeight
            cropWidth = (srcHeight * targetRatio).toInt()
            cropX = (srcWidth - cropWidth) / 2
            cropY = 0
        } else {
            // 原图更高，裁切上下
            cropWidth = srcWidth
            cropHeight = (srcWidth / targetRatio).toInt()
            cropX = 0
            cropY = (srcHeight - cropHeight) / 2
        }

        return Bitmap.createBitmap(bitmap, cropX, cropY, cropWidth, cropHeight)
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
        image: Image,
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
            dngCreator.writeImage(outputStream, image)
        } finally {
            dngCreator.close()
        }
    }
}
