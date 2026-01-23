package com.hinnka.mycamera.utils

import android.graphics.Bitmap
import android.media.Image
import android.util.Log
import com.hinnka.mycamera.camera.AspectRatio
import java.nio.ByteBuffer

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
            PLog.i(TAG, "Native library loaded successfully")
        } catch (e: UnsatisfiedLinkError) {
            PLog.e(TAG, "Failed to load native library", e)
        }
    }


    fun process(image: Image, aspectRatio: AspectRatio, rotation: Int): ShortArray? {
        val planes = image.planes

        val yBuffer = planes[0].buffer
        val uBuffer = planes[1].buffer
        val vBuffer = planes[2].buffer

        // 重置 buffer position 到 0，确保从正确位置读取
        yBuffer.rewind()
        uBuffer.rewind()
        vBuffer.rewind()

        val width = image.width
        val height = image.height
        val yRowStride = planes[0].rowStride
        val uvRowStride = planes[1].rowStride
        val uvPixelStride = planes[1].pixelStride
        val format = image.format

        // 获取目标宽高比（长边/短边）
        val targetRatio = aspectRatio.getValue(true)

        // 调用 native 方法处理
        val result = processYuv(
            yBuffer, uBuffer, vBuffer,
            width, height,
            yRowStride, uvRowStride, uvPixelStride,
            rotation, targetRatio, format
        )

        if (result == null || result.size < 3) {
            PLog.e(TAG, "Native processing failed")
            return null
        }
        return result
    }
    
    /**
     * 处理 YUV Image 并返回 Bitmap
     * 
     * @param image YUV_420_888 格式的 Image
     * @param aspectRatio 目标宽高比
     * @param rotation 旋转角度 (0, 90, 180, 270)
     * @return 处理后的 Bitmap
     */
    fun processAndToBitmap(image: Image, aspectRatio: AspectRatio, rotation: Int): Bitmap {
        val result = process(image, aspectRatio, rotation) ?: return fallbackProcess(image, aspectRatio)
        return rgb16ToBitmap(result)
    }

    fun rgb16ToBitmap(argbData: ShortArray): Bitmap {
        val width = argbData[0].toInt() and 0xFFFF
        val height = argbData[1].toInt() and 0xFFFF

        if (width <= 0 || height <= 0) return Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888)

        val pixels = IntArray(width * height)
        for (i in 0 until width * height) {
            val r = (argbData[i * 4 + 2].toInt() and 0xFFFF) shr 8
            val g = (argbData[i * 4 + 3].toInt() and 0xFFFF) shr 8
            val b = (argbData[i * 4 + 4].toInt() and 0xFFFF) shr 8
            val a = (argbData[i * 4 + 5].toInt() and 0xFFFF) shr 8
            pixels[i] = (a shl 24) or (r shl 16) or (g shl 8) or b
        }
        return Bitmap.createBitmap(pixels, width, height, Bitmap.Config.ARGB_8888)
    }
    
    /**
     * 后备处理方法（如果 native 处理失败）
     */
    private fun fallbackProcess(image: Image, aspectRatio: AspectRatio): Bitmap {
        PLog.w(TAG, "Using fallback YUV processing")
        
        val planes = image.planes
        val width = image.width
        val height = image.height
        
        // 简单的 YUV to RGB 转换（仅作为后备）
        val yBuffer = planes[0].buffer
        val uBuffer = planes[1].buffer
        val vBuffer = planes[2].buffer
        
        val yRowStride = planes[0].rowStride
        val uvRowStride = planes[1].rowStride
        val uvPixelStride = planes[1].pixelStride
        
        val pixels = IntArray(width * height)
        
        for (row in 0 until height) {
            for (col in 0 until width) {
                val y = yBuffer.get(row * yRowStride + col).toInt() and 0xFF
                val uvRow = row / 2
                val uvCol = col / 2
                val u = uBuffer.get(uvRow * uvRowStride + uvCol * uvPixelStride).toInt() and 0xFF
                val v = vBuffer.get(uvRow * uvRowStride + uvCol * uvPixelStride).toInt() and 0xFF
                
                // YUV to RGB conversion
                val r = (y + 1.402 * (v - 128)).toInt().coerceIn(0, 255)
                val g = (y - 0.344 * (u - 128) - 0.714 * (v - 128)).toInt().coerceIn(0, 255)
                val b = (y + 1.772 * (u - 128)).toInt().coerceIn(0, 255)
                
                pixels[row * width + col] = (0xFF shl 24) or (r shl 16) or (g shl 8) or b
            }
        }
        
        return Bitmap.createBitmap(pixels, width, height, Bitmap.Config.ARGB_8888)
    }

    /**
     * Native YUV 处理方法
     *
     * @return ShortArray: [width, height, r1, g1, b1, a1, r2, g2, b2, a2, ...]
     */
    private external fun processYuv(
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
        format: Int
    ): ShortArray?

    /**
     * 将 RGBA16 数据进行 gzip 压缩并保存到文件
     * 
     * @param argbData RGBA16 像素数据 [width, height, r1, g1, b1, a1, ...]
     * @param outputPath 输出文件路径
     * @return 是否成功保存
     */
    external fun saveCompressedArgb(
        argbData: ShortArray,
        outputPath: String
    ): Boolean

    /**
     * 从文件中读取并解压缩 ARGB 数据
     * 
     * @param inputPath 输入文件路径
     * @return ShortArray: [width, height, pixel1, pixel2, ...]，失败返回 null
     */
    external fun loadCompressedArgb(inputPath: String): ShortArray?
}
