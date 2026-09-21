package com.hinnka.mycamera.frame

import android.content.Context
import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.Color
import android.graphics.Paint
import android.graphics.RectF
import androidx.core.graphics.createBitmap
import kotlin.math.ceil
import kotlin.math.exp
import kotlin.math.roundToInt

/** Photo materials shared by preview and export, including Android 11 bitmap canvases. */
internal object FrameBackgroundRenderer {
    private const val MAX_WORKING_SIZE = 512

    fun draw(
        context: Context,
        canvas: Canvas,
        photo: Bitmap,
        layout: FrameLayout,
        width: Int,
        height: Int,
        sigma: Float,
        materialBounds: RectF,
        unitScale: Float,
    ) {
        if (layout.effectiveBackgroundType == FrameBackgroundType.LIQUID_GLASS) {
            FrameLiquidGlass.draw(context, canvas, photo, layout, width, height, materialBounds, unitScale)
            return
        }
        // Bound Gaussian convolution cost independently of the full-resolution export size.
        val workingScale = minOf(1f, MAX_WORKING_SIZE.toFloat() / maxOf(width, height))
        val workingWidth = (width * workingScale).roundToInt().coerceAtLeast(1)
        val workingHeight = (height * workingScale).roundToInt().coerceAtLeast(1)
        val background = createBitmap(workingWidth, workingHeight)
        try {
            val paint = Paint(Paint.ANTI_ALIAS_FLAG or Paint.FILTER_BITMAP_FLAG)
            val workingCanvas = Canvas(background)
            // Flatten transparent source pixels before filtering RGB.
            workingCanvas.drawColor(Color.BLACK)
            workingCanvas.scale(workingWidth.toFloat() / width, workingHeight.toFloat() / height)
            workingCanvas.translate(width / 2f, height / 2f)
            val fillScale = maxOf(width.toFloat() / photo.width, height.toFloat() / photo.height)
            workingCanvas.scale(fillScale, fillScale)
            workingCanvas.drawBitmap(
                photo, null,
                RectF(-photo.width / 2f, -photo.height / 2f, photo.width / 2f, photo.height / 2f),
                paint
            )

            if (sigma > 0f) {
                blur(background, sigma * workingWidth / width, sigma * workingHeight / height)
            }
            canvas.drawBitmap(background, null, RectF(0f, 0f, width.toFloat(), height.toFloat()), paint)
        } finally {
            background.recycle()
        }
    }

    private fun kernel(sigma: Float): FloatArray {
        require(sigma > 0f && sigma.isFinite())
        val radius = ceil(3f * sigma).toInt()
        val weights = FloatArray(radius * 2 + 1) { index ->
            val distance = (index - radius).toFloat()
            exp(-distance * distance / (2f * sigma * sigma))
        }
        val total = weights.sum()
        weights.indices.forEach { weights[it] /= total }
        return weights
    }

    private fun blur(bitmap: Bitmap, sigmaX: Float, sigmaY: Float) {
        val width = bitmap.width
        val height = bitmap.height
        val pixels = IntArray(width * height)
        bitmap.getPixels(pixels, 0, width, 0, 0, width, height)
        // Retain fractional channel values between the two separable passes.
        val horizontal = FloatArray(pixels.size * 3)
        val weightsX = kernel(sigmaX)
        val radiusX = weightsX.size / 2
        for (y in 0 until height) {
            for (x in 0 until width) {
                var red = 0f
                var green = 0f
                var blue = 0f
                for (tap in weightsX.indices) {
                    val color = pixels[y * width + (x + tap - radiusX).coerceIn(0, width - 1)]
                    val weight = weightsX[tap]
                    red += ((color ushr 16) and 255) * weight
                    green += ((color ushr 8) and 255) * weight
                    blue += (color and 255) * weight
                }
                val offset = (y * width + x) * 3
                horizontal[offset] = red
                horizontal[offset + 1] = green
                horizontal[offset + 2] = blue
            }
        }
        val weightsY = kernel(sigmaY)
        val radiusY = weightsY.size / 2
        for (y in 0 until height) {
            for (x in 0 until width) {
                var red = 0f
                var green = 0f
                var blue = 0f
                for (tap in weightsY.indices) {
                    val offset = ((y + tap - radiusY).coerceIn(0, height - 1) * width + x) * 3
                    val weight = weightsY[tap]
                    red += horizontal[offset] * weight
                    green += horizontal[offset + 1] * weight
                    blue += horizontal[offset + 2] * weight
                }
                pixels[y * width + x] = Color.rgb(
                    red.roundToInt().coerceIn(0, 255),
                    green.roundToInt().coerceIn(0, 255),
                    blue.roundToInt().coerceIn(0, 255)
                )
            }
        }
        bitmap.setPixels(pixels, 0, width, 0, 0, width, height)
    }
}
