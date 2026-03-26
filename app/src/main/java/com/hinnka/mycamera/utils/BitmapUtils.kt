package com.hinnka.mycamera.utils

import android.graphics.*
import android.media.Image
import android.util.Log
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

        // 4. 计算裁切逻辑 (核心算法)
        val visualIsLandscape = visualHeight <= visualWidth
        val targetRatio = aspectRatio.getValue(visualIsLandscape)

        var finalVisualW: Int
        var finalVisualH: Int

        val currentRatio = visualWidth.toFloat() / visualHeight.toFloat()
        if (currentRatio > targetRatio) {
            // 视觉区域比目标更“扁”，裁切宽度
            finalVisualH = visualHeight
            finalVisualW = (visualHeight * targetRatio).toInt()
        } else {
            // 视觉区域比目标更“瘦”，裁切高度
            finalVisualW = visualWidth
            finalVisualH = (visualWidth / targetRatio).toInt()
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

    /**
     * 水平翻转 Bitmap
     */
    fun flipHorizontal(bitmap: Bitmap): Bitmap {
        val matrix = Matrix().apply { postScale(-1f, 1f) }
        val flipped = Bitmap.createBitmap(bitmap, 0, 0, bitmap.width, bitmap.height, matrix, true)
        if (flipped != bitmap) {
            bitmap.recycle()
        }
        return flipped
    }

    /**
     * 旋转 Bitmap。
     *
     * 旋转角度为 0 时直接返回原图，避免额外创建 Bitmap。
     */
    fun rotate(bitmap: Bitmap, rotationDegrees: Float): Bitmap {
        val normalizedDegrees = ((rotationDegrees % 360) + 360) % 360
        if (normalizedDegrees == 0f) {
            return bitmap
        }

        val matrix = Matrix().apply { postRotate(normalizedDegrees) }
        val rotated = Bitmap.createBitmap(bitmap, 0, 0, bitmap.width, bitmap.height, matrix, true)
        if (rotated != bitmap) {
            bitmap.recycle()
        }
        return rotated
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
     * @param cropRegion 裁切区域 (可选)
     * @param rotation
     */
    fun calculateProcessedRect(
        width: Int,
        height: Int,
        aspectRatio: AspectRatio?,
        cropRegion: Rect?,
        rotation: Int = 0
    ): Rect {
        val bitmapBounds = Rect(0, 0, width, height)

        // 1. 统一方向并取交集
        val currentIsLandscape = width >= height
        val safeRegion = if (cropRegion != null && !cropRegion.isEmpty) {
            val regionIsLandscape = cropRegion.width() >= cropRegion.height()
            val alignedRegion = if (regionIsLandscape != currentIsLandscape) {
                // 轴方向不一致，进行坐标转置 (Transpose)
                Rect(cropRegion.top, cropRegion.left, cropRegion.bottom, cropRegion.right)
            } else {
                Rect(cropRegion)
            }
            // 与原图边界取交集
            if (!alignedRegion.intersect(bitmapBounds)) {
                bitmapBounds
            } else {
                alignedRegion
            }
        } else {
            bitmapBounds
        }

        // 2. 确定目标比例
        val targetRatio = aspectRatio?.getValue(currentIsLandscape) ?: (width.toFloat() / height.toFloat())

        // 3. 在安全区域 (safeRegion) 内按照目标比例进行最终裁切
        val baseWidth = safeRegion.width()
        val baseHeight = safeRegion.height()
        val srcRatio = baseWidth.toFloat() / baseHeight.toFloat()

        var finalW: Float
        var finalH: Float

        if (srcRatio > targetRatio) {
            // 安全区太宽 -> 缩减宽度
            finalH = baseHeight.toFloat()
            finalW = baseHeight * targetRatio
        } else {
            // 安全区太瘦 -> 缩减高度
            finalW = baseWidth.toFloat()
            finalH = baseWidth / targetRatio
        }

        // 4. 在安全区域内居中计算最终坐标
        val x = (safeRegion.left + (baseWidth - finalW) / 2f).toInt().coerceAtLeast(0)
        val y = (safeRegion.top + (baseHeight - finalH) / 2f).toInt().coerceAtLeast(0)
        val finalWInt = finalW.toInt().coerceAtMost(width - x)
        val finalHInt = finalH.toInt().coerceAtMost(height - y)

        // 5. 适配旋转角度
        val isSwapped = rotation == 90 || rotation == 270
        return if (isSwapped) {
            Rect(y, x, y + finalHInt, x + finalWInt)
        } else {
            Rect(x, y, x + finalWInt, y + finalHInt)
        }
    }
}
