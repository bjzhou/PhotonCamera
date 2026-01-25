package com.hinnka.mycamera.utils

import android.graphics.Bitmap
import android.media.Image
import com.hinnka.mycamera.camera.AspectRatio
import java.nio.ByteBuffer
import androidx.core.graphics.createBitmap
import android.util.Half

/**
 * YUV 图像处理器
 * 
 * 使用 libyuv 原生库进行 YUV 图像的旋转、裁切和转换
 */
object YuvProcessor {
    
    private const val TAG = "YuvProcessor"
    
    init {
        try {
            System.loadLibrary("my-native-lib")
        } catch (e: UnsatisfiedLinkError) {
            PLog.e(TAG, "Failed to load native library", e)
        }
    }

    /**
     * 处理 YUV Image 并返回用于预览的 8-bit Bitmap
     */
    fun processAndToBitmap(image: Image, aspectRatio: AspectRatio, rotation: Int): Bitmap {
        val planes = image.planes

        val yBuffer = planes[0].buffer
        val uBuffer = planes[1].buffer
        val vBuffer = planes[2].buffer

        yBuffer.rewind()
        uBuffer.rewind()
        vBuffer.rewind()

        val width = image.width
        val height = image.height
        val yRowStride = planes[0].rowStride
        val uvRowStride = planes[1].rowStride
        val uvPixelStride = planes[1].pixelStride
        val format = image.format

        val targetRatio = aspectRatio.getValue(true)
        val dimensions = BitmapUtils.calculateProcessedDimensions(width, height, aspectRatio, null, rotation)
        val previewBitmap = createBitmap(dimensions.first, dimensions.second)

        processToBitmap(
            yBuffer, uBuffer, vBuffer,
            width, height,
            yRowStride, uvRowStride, uvPixelStride,
            rotation, targetRatio, format,
            previewBitmap
        )

        return previewBitmap
    }

    /**
     * 处理 YUV 图像并直接保存为高精度 JXL 文件 (FP16)，同时生成预览图
     */
    fun processAndSave(
        image: Image,
        aspectRatio: AspectRatio,
        rotation: Int,
        outputPath: String,
        previewBitmap: Bitmap
    ): Boolean {
        val planes = image.planes

        val yBuffer = planes[0].buffer
        val uBuffer = planes[1].buffer
        val vBuffer = planes[2].buffer

        yBuffer.rewind()
        uBuffer.rewind()
        vBuffer.rewind()

        val width = image.width
        val height = image.height
        val yRowStride = planes[0].rowStride
        val uvRowStride = planes[1].rowStride
        val uvPixelStride = planes[1].pixelStride
        val format = image.format

        val targetRatio = aspectRatio.getValue(true)

        return processAndSaveYuv(
            yBuffer, uBuffer, vBuffer,
            width, height,
            yRowStride, uvRowStride, uvPixelStride,
            rotation, targetRatio, format,
            outputPath, previewBitmap
        )
    }

    /**
     * 将 FP16 像素数据转换为 8-bit Bitmap
     */
    fun rgb16ToBitmap(argbData: ShortArray): Bitmap {
        val width = argbData[0].toInt() and 0xFFFF
        val height = argbData[1].toInt() and 0xFFFF

        if (width <= 0 || height <= 0) return Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888)

        val pixels = IntArray(width * height)
        for (i in 0 until width * height) {
            val baseIdx = 2 + i * 4
            // 使用 android.util.Half 将 FP16 转换为 Float
            val r = (Half.toFloat(argbData[baseIdx]).coerceIn(0f, 1f) * 255f).toInt()
            val g = (Half.toFloat(argbData[baseIdx + 1]).coerceIn(0f, 1f) * 255f).toInt()
            val b = (Half.toFloat(argbData[baseIdx + 2]).coerceIn(0f, 1f) * 255f).toInt()
            val a = 255 // Assume full alpha or convert if needed
            
            pixels[i] = (a shl 24) or (r shl 16) or (g shl 8) or b
        }
        return Bitmap.createBitmap(pixels, width, height, Bitmap.Config.ARGB_8888)
    }

    /**
     * Native 预览处理方法
     */
    private external fun processToBitmap(
        yBuffer: ByteBuffer,
        uBuffer: ByteBuffer,
        vBuffer: ByteBuffer,
        width: Int,
        height: Int,
        yRowStride: Int,
        uvRowStride: Int,
        uvPixelStride: Int,
        rotation: Int,
        targetRatio: Float,
        format: Int,
        previewBitmap: Bitmap
    )

    /**
     * Native 处理并保存方法
     */
    private external fun processAndSaveYuv(
        yBuffer: ByteBuffer,
        uBuffer: ByteBuffer,
        vBuffer: ByteBuffer,
        width: Int,
        height: Int,
        yRowStride: Int,
        uvRowStride: Int,
        uvPixelStride: Int,
        rotation: Int,
        targetRatio: Float,
        format: Int,
        outputPath: String,
        previewBitmap: Bitmap
    ): Boolean

    /**
     * 从文件中读取并解压缩 ARGB 数据 (16-bit)
     */
    external fun loadCompressedArgb(inputPath: String): ShortArray?
}
