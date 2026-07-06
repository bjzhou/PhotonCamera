package com.hinnka.mycamera.gallery

import android.graphics.Bitmap
import androidx.exifinterface.media.ExifInterface
import com.hinnka.mycamera.camera.CaptureInfo
import com.hinnka.mycamera.utils.PLog
import java.io.File
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale
import kotlin.math.abs

/**
 * EXIF 元数据写入器
 * 
 * 使用 ExifInterface 将拍摄信息写入 JPEG 文件
 */
object ExifWriter {

    private const val TAG = "ExifWriter"

    // EXIF 日期时间格式
    private val exifDateFormat = SimpleDateFormat("yyyy:MM:dd HH:mm:ss", Locale.US)

    /**
     * 将拍摄信息写入 JPEG 文件的 EXIF
     * 
     * @param file JPEG 文件
     * @param captureInfo 拍摄信息
     */
    fun writeExif(file: File, captureInfo: CaptureInfo) {
        try {
            val exif = ExifInterface(file)
            writeExifInternal(exif, captureInfo)
            exif.saveAttributes()
            PLog.d(
                TAG, "EXIF written to ${file.name}: ISO=${captureInfo.iso}, " +
                        "Exposure=${captureInfo.formatExposureTime()}, " +
                        "Aperture=${captureInfo.formatAperture()}, " +
                        "Focal=${captureInfo.formatFocalLength()}"
            )
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to write EXIF to ${file.name}", e)
        }
    }

    /**
     * 将拍摄信息写入 JPEG 文件的 EXIF (使用 FileDescriptor)
     * 
     * @param fd JPEG 文件的 FileDescriptor
     * @param captureInfo 拍摄信息
     */
    fun writeExif(fd: java.io.FileDescriptor, captureInfo: CaptureInfo) {
        try {
            val exif = ExifInterface(fd)
            writeExifInternal(exif, captureInfo)
            exif.saveAttributes()
            PLog.d(
                TAG, "EXIF written to FileDescriptor: ISO=${captureInfo.iso}, " +
                        "Exposure=${captureInfo.formatExposureTime()}, " +
                        "Aperture=${captureInfo.formatAperture()}, " +
                        "Focal=${captureInfo.formatFocalLength()}"
            )
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to write EXIF to FileDescriptor", e)
        }
    }

    fun buildExifBlock(cacheDir: File, captureInfo: CaptureInfo): ByteArray? {
        val tempFile = File(cacheDir, "temp_exif_${System.nanoTime()}.jpg")
        return try {
            val bitmap = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888)
            try {
                tempFile.outputStream().use { output ->
                    bitmap.compress(Bitmap.CompressFormat.JPEG, 90, output)
                }
            } finally {
                bitmap.recycle()
            }
            writeExif(tempFile, captureInfo)
            extractJpegExifBlock(tempFile.readBytes())
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to build EXIF block", e)
            null
        } finally {
            tempFile.delete()
        }
    }

    private fun extractJpegExifBlock(jpegBytes: ByteArray): ByteArray? {
        var offset = 2
        if (jpegBytes.size < offset || jpegBytes[0] != 0xFF.toByte() || jpegBytes[1] != 0xD8.toByte()) {
            return null
        }

        while (offset + 4 <= jpegBytes.size) {
            if (jpegBytes[offset] != 0xFF.toByte()) return null
            val marker = jpegBytes[offset + 1].toInt() and 0xFF
            if (marker == 0xDA || marker == 0xD9) return null

            val segmentLength = ((jpegBytes[offset + 2].toInt() and 0xFF) shl 8) or
                    (jpegBytes[offset + 3].toInt() and 0xFF)
            if (segmentLength < 2 || offset + 2 + segmentLength > jpegBytes.size) return null

            val payloadOffset = offset + 4
            val payloadLength = segmentLength - 2
            if (marker == 0xE1 && payloadLength >= EXIF_HEADER.size) {
                val hasExifHeader = EXIF_HEADER.indices.all { index ->
                    jpegBytes[payloadOffset + index] == EXIF_HEADER[index]
                }
                if (hasExifHeader) {
                    return jpegBytes.copyOfRange(payloadOffset, payloadOffset + payloadLength)
                }
            }
            offset += 2 + segmentLength
        }
        return null
    }

    /**
     * 核心写入逻辑
     */
    private fun writeExifInternal(exif: ExifInterface, captureInfo: CaptureInfo) {
        try {
            // ========== 设备信息 ==========
            exif.setAttribute(ExifInterface.TAG_MAKE, captureInfo.make)
            exif.setAttribute(ExifInterface.TAG_MODEL, captureInfo.model)
            exif.setAttribute(ExifInterface.TAG_SOFTWARE, captureInfo.software)

            // ========== 日期时间 ==========
            val dateTime = exifDateFormat.format(Date(captureInfo.captureTime))
            exif.setAttribute(ExifInterface.TAG_DATETIME, dateTime)
            exif.setAttribute(ExifInterface.TAG_DATETIME_ORIGINAL, dateTime)
            exif.setAttribute(ExifInterface.TAG_DATETIME_DIGITIZED, dateTime)

            // ========== 图像方向 ==========
            // 由于我们在保存前已经物理旋转了图片字节流（归一化），
            // 此时图片已经是正的，所以 EXIF 方向标志必须设为 NORMAL (1)。
            exif.setAttribute(ExifInterface.TAG_ORIENTATION, ExifInterface.ORIENTATION_NORMAL.toString())

            // ========== 图像尺寸 ==========
            if (captureInfo.imageWidth > 0) {
                exif.setAttribute(ExifInterface.TAG_IMAGE_WIDTH, captureInfo.imageWidth.toString())
                exif.setAttribute(ExifInterface.TAG_PIXEL_X_DIMENSION, captureInfo.imageWidth.toString())
            }
            if (captureInfo.imageHeight > 0) {
                exif.setAttribute(ExifInterface.TAG_IMAGE_LENGTH, captureInfo.imageHeight.toString())
                exif.setAttribute(ExifInterface.TAG_PIXEL_Y_DIMENSION, captureInfo.imageHeight.toString())
            }

            // ========== 曝光参数 ==========
            captureInfo.exposureTime?.let { exposureNs ->
                // 曝光时间格式：分子/分母（秒）
                val exposureSec = exposureNs / 1_000_000_000.0
                if (exposureSec >= 1.0) {
                    // 1秒或更长
                    exif.setAttribute(ExifInterface.TAG_EXPOSURE_TIME, exposureSec.toString())
                } else {
                    // 小于1秒，使用分数格式
                    val denominator = (1.0 / exposureSec).toLong()
                    exif.setAttribute(ExifInterface.TAG_EXPOSURE_TIME, "1/$denominator")
                }
            }

            captureInfo.iso?.let { iso ->
                exif.setAttribute(ExifInterface.TAG_ISO_SPEED_RATINGS, iso.toString())
                // 也设置 ISO_SPEED 用于兼容性
                exif.setAttribute(ExifInterface.TAG_PHOTOGRAPHIC_SENSITIVITY, iso.toString())
            }

            captureInfo.aperture?.let { fNumber ->
                // 光圈值格式：分子/分母
                exif.setAttribute(ExifInterface.TAG_F_NUMBER, formatRational(fNumber))
                exif.setAttribute(ExifInterface.TAG_APERTURE_VALUE, formatApexAperture(fNumber))
            }

            captureInfo.focalLength?.let { fl ->
                // 焦距格式：分子/分母 (mm)
                exif.setAttribute(ExifInterface.TAG_FOCAL_LENGTH, formatRational(fl))
            }

            captureInfo.focalLength35mm?.let { fl35 ->
                exif.setAttribute(ExifInterface.TAG_FOCAL_LENGTH_IN_35MM_FILM, fl35.toString())
            }

            // ========== 白平衡 ==========
            captureInfo.whiteBalance?.let { wb ->
                // 0 = Auto, 1 = Manual
                val whiteBalanceValue = if (wb == 0) 0 else 1
                exif.setAttribute(ExifInterface.TAG_WHITE_BALANCE, whiteBalanceValue.toString())
            }

            // ========== 闪光灯 ==========
            captureInfo.flashState?.let { flash ->
                exif.setAttribute(ExifInterface.TAG_FLASH, flash.toString())
            }

            // ========== GPS 信息 ==========
            captureInfo.latitude?.let { lat ->
                captureInfo.longitude?.let { lng ->
                    exif.setLatLong(lat, lng)
                }
            }
            captureInfo.altitude?.let { alt ->
                exif.setAltitude(alt)
            }

            // ========== 其他标准标签 ==========
            exif.setAttribute(ExifInterface.TAG_COLOR_SPACE, "1") // sRGB
            exif.setAttribute(ExifInterface.TAG_EXIF_VERSION, "0230") // EXIF 2.3

        } catch (e: Exception) {
            throw e
        }
    }

    /**
     * 格式化为 EXIF 有理数格式（分子/分母）
     */
    private fun formatRational(value: Float): String {
        // 将浮点数转换为分数
        // 例如：1.8 -> 18/10, 2.0 -> 2/1
        val multiplier = 10
        val numerator = (value * multiplier).toInt()

        // 简化分数
        val gcd = gcd(numerator, multiplier)
        return "${numerator / gcd}/${multiplier / gcd}"
    }

    /**
     * 格式化为 APEX 光圈值
     * APEX Av = 2 * log2(FNumber)
     */
    private fun formatApexAperture(fNumber: Float): String {
        val apex = 2.0 * (kotlin.math.ln(fNumber.toDouble()) / kotlin.math.ln(2.0))
        return formatRational(apex.toFloat())
    }

    /**
     * 计算最大公约数
     */
    private fun gcd(a: Int, b: Int): Int {
        var x = abs(a)
        var y = abs(b)
        while (y != 0) {
            val temp = y
            y = x % y
            x = temp
        }
        return if (x == 0) 1 else x
    }

    private val EXIF_HEADER = byteArrayOf(
        'E'.code.toByte(),
        'x'.code.toByte(),
        'i'.code.toByte(),
        'f'.code.toByte(),
        0,
        0
    )
}
