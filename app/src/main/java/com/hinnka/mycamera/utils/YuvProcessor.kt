package com.hinnka.mycamera.utils

import android.graphics.Bitmap
import android.media.Image
import com.hinnka.mycamera.camera.AspectRatio
import java.nio.ByteBuffer
import androidx.core.graphics.createBitmap
import com.hinnka.mycamera.model.SafeImage

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
    fun processAndToBitmap(image: Image, aspectRatio: AspectRatio?, rotation: Int): Bitmap {
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

        val dimensions = BitmapUtils.calculateProcessedRect(width, height, aspectRatio, null, rotation)
        val previewBitmap = createBitmap(dimensions.width(), dimensions.height())

        val tw = aspectRatio?.widthRatio ?: width
        val th = aspectRatio?.heightRatio ?: height

        processToBitmap(
            yBuffer, uBuffer, vBuffer,
            width, height,
            yRowStride, uvRowStride, uvPixelStride,
            rotation, tw, th, format,
            previewBitmap
        )
        return previewBitmap
    }

    /**
     * 处理 YUV 图像并直接保存为高精度 JXL 文件 (FP16)，同时生成预览图
     */
    fun processAndSave16(
        image: SafeImage,
        aspectRatio: AspectRatio,
        rotation: Int,
        outputPath: String,
        hdrSidecarPath: String? = null,
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

        return processAndSaveYuv(
            yBuffer, uBuffer, vBuffer,
            width, height,
            yRowStride, uvRowStride, uvPixelStride,
            rotation, aspectRatio.widthRatio, aspectRatio.heightRatio, format,
            outputPath, hdrSidecarPath, previewBitmap
        )
    }

    fun processAndSave(
        image: SafeImage,
        rotation: Int,
        outputPath: String,
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

        return processToFile(
            yBuffer, uBuffer, vBuffer,
            width, height,
            yRowStride, uvRowStride, uvPixelStride,
            rotation, format,
            outputPath
        )
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
        targetWR: Int,
        targetHR: Int,
        format: Int,
        previewBitmap: Bitmap
    )

    private external fun processToFile(
        yBuffer: ByteBuffer,
        uBuffer: ByteBuffer,
        vBuffer: ByteBuffer,
        width: Int,
        height: Int,
        yRowStride: Int,
        uvRowStride: Int,
        uvPixelStride: Int,
        rotation: Int,
        format: Int,
        outputPath: String
    ): Boolean

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
        targetWR: Int,
        targetHR: Int,
        format: Int,
        outputPath: String,
        hdrSidecarPath: String?,
        previewBitmap: Bitmap
    ): Boolean

    /**
     * 从文件中读取并解压缩 ARGB 数据 (16-bit)
     */
    external fun loadCompressedArgb(inputPath: String): ByteBuffer?

    /**
     * 将 ARGB 数据 (16-bit) 压缩并保存到文件
     */
    external fun saveCompressedArgb(buffer: ByteBuffer, width: Int, height: Int, outputPath: String): Boolean

    external fun free(buffer: ByteBuffer)
}
