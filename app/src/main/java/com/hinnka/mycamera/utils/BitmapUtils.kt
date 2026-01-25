package com.hinnka.mycamera.utils

import android.graphics.*
import android.media.Image
import androidx.exifinterface.media.ExifInterface
import com.hinnka.mycamera.camera.AspectRatio
import java.io.ByteArrayInputStream
import java.io.ByteArrayOutputStream
import kotlin.math.floor

/**
 * Bitmap 处理工具类
 */
object BitmapUtils {
    private const val TAG = "BitmapUtils"


    /**
     * 从字节数组获取 Bitmap
     */
    fun getBitmap(byteArray: ByteArray): Bitmap {
        return BitmapFactory.decodeByteArray(byteArray, 0, byteArray.size)
    }

    fun imageToBitmapAndRotate(image: Image, aspectRatio: AspectRatio): Bitmap {
        val plane = image.planes[0]
        val buffer = plane.buffer
        val bytes = ByteArray(buffer.remaining())
        buffer.get(bytes)

        val orientation = try {
            val exif = ExifInterface(ByteArrayInputStream(bytes))
            exif.getAttributeInt(ExifInterface.TAG_ORIENTATION, ExifInterface.ORIENTATION_NORMAL)
        } catch (e: Exception) {
            ExifInterface.ORIENTATION_NORMAL
        }

        return cropAndRotate(bytes, aspectRatio, orientation)
    }

    /**
     * 根据 EXIF 旋转图片，并按比例居中裁切
     */
    fun cropAndRotate(bytes: ByteArray, aspectRatio: AspectRatio, orientation: Int): Bitmap {
        val options = BitmapFactory.Options().apply { inJustDecodeBounds = true }
        BitmapFactory.decodeByteArray(bytes, 0, bytes.size, options)
        val width = options.outWidth
        val height = options.outHeight
        // 2. 准备旋转矩阵 & 判断宽高交换
        val matrix = Matrix()
        var isSwapped = false

        when (orientation) {
            ExifInterface.ORIENTATION_ROTATE_90 -> {
                matrix.postRotate(90f)
                isSwapped = true
            }
            ExifInterface.ORIENTATION_ROTATE_180 -> matrix.postRotate(180f)
            ExifInterface.ORIENTATION_ROTATE_270 -> {
                matrix.postRotate(270f)
                isSwapped = true
            }
            ExifInterface.ORIENTATION_FLIP_HORIZONTAL -> matrix.postScale(-1f, 1f)
            ExifInterface.ORIENTATION_FLIP_VERTICAL -> matrix.postScale(1f, -1f)
            ExifInterface.ORIENTATION_TRANSPOSE -> {
                matrix.postRotate(90f)
                matrix.postScale(-1f, 1f)
                isSwapped = true
            }
            ExifInterface.ORIENTATION_TRANSVERSE -> {
                matrix.postRotate(270f)
                matrix.postScale(-1f, 1f)
                isSwapped = true
            }
        }

        // 3. 计算“视觉”宽高
        val visualWidth = if (isSwapped) height else width
        val visualHeight = if (isSwapped) width else height

        // 4. 计算裁切逻辑 (核心算法：保证长短边比例)
        val targetRatio = aspectRatio.getValue(true) // 总是返回 长边/短边
        var finalVisualW: Int
        var finalVisualH: Int

        // 判断视觉上是横图还是竖图
        if (visualWidth > visualHeight) {
            // --- 视觉横图 ---
            val expectedWidth = visualHeight * targetRatio
            if (expectedWidth <= visualWidth) {
                finalVisualH = visualHeight
                finalVisualW = floor(expectedWidth).toInt()
            } else {
                finalVisualW = visualWidth
                finalVisualH = floor(visualWidth / targetRatio).toInt()
            }
        } else {
            // --- 视觉竖图 ---
            val expectedHeight = visualWidth * targetRatio
            if (expectedHeight <= visualHeight) {
                finalVisualW = visualWidth
                finalVisualH = floor(expectedHeight).toInt()
            } else {
                finalVisualH = visualHeight
                finalVisualW = floor(visualHeight / targetRatio).toInt()
            }
        }

        // 5. 映射回“物理”裁切区域
        val cropRawWidth = if (isSwapped) finalVisualH else finalVisualW
        val cropRawHeight = if (isSwapped) finalVisualW else finalVisualH

        val x = (width - cropRawWidth) / 2
        val y = (height - cropRawHeight) / 2

        // 边界安全检查
        val safeX = x.coerceAtLeast(0)
        val safeY = y.coerceAtLeast(0)
        val safeW = cropRawWidth.coerceAtMost(width - safeX)
        val safeH = cropRawHeight.coerceAtMost(height - safeY)

        val cropRect = Rect(safeX, safeY, safeX + safeW, safeY + safeH)

        // 6. 开始处理：Bytes -> Region -> Bitmap -> Rotate -> Bytes
        var decoder: BitmapRegionDecoder? = null
        var rawCroppedBitmap: Bitmap
        var finalBitmap: Bitmap

        return try {
            // A. 创建局部解码器
            decoder = BitmapRegionDecoder.newInstance(bytes, 0, bytes.size, false)
            // B. 解码裁切区域 (无缩放，高质量)
            rawCroppedBitmap = decoder.decodeRegion(cropRect, null)
            // C. 应用物理旋转
            if (matrix.isIdentity) {
                finalBitmap = rawCroppedBitmap
            } else {
                finalBitmap = Bitmap.createBitmap(
                    rawCroppedBitmap, 0, 0,
                    rawCroppedBitmap.width, rawCroppedBitmap.height,
                    matrix, true
                )
                // 立即回收旧图，节省内存
                if (rawCroppedBitmap != finalBitmap) {
                    rawCroppedBitmap.recycle()
                }
            }
            finalBitmap
        } catch (e: Exception) {
            e.printStackTrace()
            BitmapFactory.decodeByteArray(bytes, 0, bytes.size)
        } finally {
            decoder?.recycle()
        }
    }

    fun Bitmap.toByteArray(): ByteArray {
        val stream = ByteArrayOutputStream()
        this.compress(Bitmap.CompressFormat.JPEG, 100, stream)
        return stream.toByteArray()
    }

    /**
     * 计算经过旋转和裁切后的图像尺寸
     *
     * @param width 原始宽度
     * @param height 原始高度
     * @param aspectRatio 目标宽高比
     * @param cropRect 裁切区域 (可选)
     * @param rotation 旋转角度 (0, 90, 180, 270)
     * @return Pair<宽度, 高度> 处理后的尺寸
     */
    fun calculateProcessedDimensions(
        width: Int,
        height: Int,
        aspectRatio: AspectRatio,
        cropRect: Rect?,
        rotation: Int
    ): Pair<Int, Int> {
        // Step 1: 以 cropRect 或原始尺寸作为基础尺寸
        val baseWidth = cropRect?.width() ?: width
        val baseHeight = cropRect?.height() ?: height

        // Step 2: 在原始空间（横向）计算裁切后的尺寸
        // 逻辑与 RawDemosaicProcessor.processInternal 保持一致
        val srcRatio = baseWidth.toFloat() / baseHeight.toFloat()
        val targetRatio = aspectRatio.getValue(true) // 使用横向比例进行计算

        var finalCropWidth = baseWidth.toFloat()
        var finalCropHeight = baseHeight.toFloat()

        if (srcRatio > targetRatio) {
            // 基础区域更宽，水平方向裁切
            finalCropWidth = baseHeight * targetRatio
        } else if (srcRatio < targetRatio) {
            // 基础区域更高，垂直方向裁切
            finalCropHeight = baseWidth / targetRatio
        }

        // Step 3: 根据旋转角度确定最终宽高
        val isSwapped = rotation == 90 || rotation == 270
        val finalWidth = if (isSwapped) finalCropHeight.toInt() else finalCropWidth.toInt()
        val finalHeight = if (isSwapped) finalCropWidth.toInt() else finalCropHeight.toInt()

        return Pair(finalWidth, finalHeight)
    }
}
