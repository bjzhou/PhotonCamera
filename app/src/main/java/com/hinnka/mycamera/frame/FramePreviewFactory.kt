package com.hinnka.mycamera.frame

import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.LinearGradient
import android.graphics.Paint
import android.graphics.Path
import android.graphics.RectF
import android.graphics.Shader
import android.os.Build
import com.hinnka.mycamera.gallery.MediaMetadata
import com.hinnka.mycamera.utils.DeviceUtil
import java.util.Calendar
import java.util.TimeZone

/**
 * 生成边框编辑器使用的固定样片与样例 EXIF。
 */
object FramePreviewFactory {

    private const val PORTRAIT_WIDTH = 1080
    private const val PORTRAIT_HEIGHT = 1440
    private const val LANDSCAPE_WIDTH = 1440
    private const val LANDSCAPE_HEIGHT = 1080

    fun createPreviewBitmap(portrait: Boolean): Bitmap {
        val width = if (portrait) PORTRAIT_WIDTH else LANDSCAPE_WIDTH
        val height = if (portrait) PORTRAIT_HEIGHT else LANDSCAPE_HEIGHT
        val bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)
        val canvas = Canvas(bitmap)

        val backgroundPaint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
            shader = LinearGradient(
                0f,
                0f,
                width.toFloat(),
                height.toFloat(),
                intArrayOf(0xFF18212C.toInt(), 0xFF324A5F.toInt(), 0xFFEFC78A.toInt()),
                floatArrayOf(0f, 0.55f, 1f),
                Shader.TileMode.CLAMP
            )
        }
        canvas.drawRect(0f, 0f, width.toFloat(), height.toFloat(), backgroundPaint)

        val glowPaint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
            color = 0x26FFFFFF
        }
        canvas.drawCircle(width * 0.78f, height * 0.24f, width * 0.22f, glowPaint)

        val mountainPaint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
            color = 0x66301818
        }
        val mountainPath = Path().apply {
            moveTo(0f, height * 0.72f)
            lineTo(width * 0.18f, height * 0.46f)
            lineTo(width * 0.38f, height * 0.7f)
            lineTo(width * 0.58f, height * 0.42f)
            lineTo(width * 0.82f, height * 0.68f)
            lineTo(width.toFloat(), height * 0.58f)
            lineTo(width.toFloat(), height.toFloat())
            lineTo(0f, height.toFloat())
            close()
        }
        canvas.drawPath(mountainPath, mountainPaint)

        val cardPaint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
            color = 0x18FFFFFF
        }
        val cardRect = RectF(width * 0.08f, height * 0.1f, width * 0.92f, height * 0.9f)
        canvas.drawRoundRect(cardRect, width * 0.04f, width * 0.04f, cardPaint)

        val accentPaint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
            color = 0xFFF7D07A.toInt()
        }
        canvas.drawRoundRect(
            RectF(width * 0.16f, height * 0.18f, width * 0.34f, height * 0.23f),
            width * 0.02f,
            width * 0.02f,
            accentPaint
        )

        val blockPaint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
            color = 0x22FFFFFF
        }
        repeat(3) { index ->
            val top = height * (0.3f + index * 0.16f)
            canvas.drawRoundRect(
                RectF(width * 0.16f, top, width * 0.84f, top + height * 0.08f),
                width * 0.025f,
                width * 0.025f,
                blockPaint
            )
        }

        return bitmap
    }

    fun createPreviewMetadata(width: Int, height: Int): MediaMetadata {
        val sampleTime = Calendar.getInstance(TimeZone.getTimeZone("Asia/Shanghai")).apply {
            set(2026, Calendar.APRIL, 14, 19, 26, 18)
            set(Calendar.MILLISECOND, 0)
        }.timeInMillis

        return MediaMetadata(
            width = width,
            height = height,
            deviceModel = DeviceUtil.model,
            brand = Build.BRAND,
            dateTaken = sampleTime,
            location = null,
            iso = 200,
            shutterSpeed = "1/250",
            focalLength = "35mm",
            focalLength35mm = "52mm",
            aperture = "f/2.0",
            customProperties = mapOf(
                "LOGO" to Build.BRAND.lowercase(),
                "DEVICE_MODEL_FONT" to "Default"
            )
        )
    }
}
