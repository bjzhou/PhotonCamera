package com.hinnka.mycamera.frame

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapShader
import android.graphics.BlendMode
import android.graphics.BlurMaskFilter
import android.graphics.Canvas
import android.graphics.Color
import android.graphics.Matrix
import android.graphics.Paint
import android.graphics.Path
import android.graphics.RectF
import android.graphics.Shader
import com.hinnka.mycamera.utils.PLog
import androidx.core.graphics.createBitmap
import androidx.core.graphics.withSave
import kotlin.math.ceil

/**
 * AndroidLiquidGlass optical material on an inset overlay capsule.
 * The shared overlay geometry also defines the watermark content and HDR mask.
 */
internal object FrameLiquidGlass {
    private const val TILE_SIZE = 1024

    fun draw(
        context: Context,
        canvas: Canvas,
        photo: Bitmap,
        layout: FrameLayout,
        width: Int,
        height: Int,
        materialBounds: RectF,
        unitScale: Float,
    ) {
        if (materialBounds.isEmpty) return
        val backdropPaint = backdropPaint(photo, layout.orientation, width, height)
        check(layout.position == FramePosition.OVERLAY)
        val outline = FrameGlassOverlay.outline(materialBounds)
        val radius = FrameGlassOverlay.radius(materialBounds)
        PLog.d("FrameLiquidGlass", "capsule=$materialBounds radius=$radius scale=$unitScale")
        FrameGlassGpu(context).use { gpu ->
            gpu.initialize()
            // The library's depth-aware lens uses a 24dp edge profile and 48dp displacement.
            val padding = ceil(48f * unitScale).toInt() + 2
            val tileSize = minOf(TILE_SIZE, gpu.maxTextureSize - 2 * padding)
            require(tileSize > 0) { "Glass capture exceeds texture limit ${gpu.maxTextureSize}" }
            drawSurface(canvas, backdropPaint, materialBounds, outline, radius,
                unitScale, padding, tileSize, gpu)
        }
    }

    private fun backdropPaint(
        photo: Bitmap,
        orientation: FrameOrientation,
        width: Int,
        height: Int,
    ): Paint {
        val rotated = orientation.rotatesPhoto(photo.width, photo.height)
        val sourceWidth = if (rotated) photo.height else photo.width
        val sourceHeight = if (rotated) photo.width else photo.height
        val scale = maxOf(width.toFloat() / sourceWidth, height.toFloat() / sourceHeight)
        val matrix = Matrix().apply {
            setTranslate(-photo.width / 2f, -photo.height / 2f)
            postScale(scale, scale)
            if (rotated) postRotate(if (orientation == FrameOrientation.LANDSCAPE) -90f else 90f)
            postTranslate(width / 2f, height / 2f)
        }
        return Paint(Paint.ANTI_ALIAS_FLAG or Paint.FILTER_BITMAP_FLAG).apply {
            shader = BitmapShader(photo, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP).apply {
                setLocalMatrix(matrix)
            }
        }
    }

    private fun drawSurface(
        canvas: Canvas,
        backdropPaint: Paint,
        panel: RectF,
        outline: Path,
        radius: Float,
        unitScale: Float,
        padding: Int,
        tileSize: Int,
        gpu: FrameGlassGpu,
    ) {
        val panelWidth = ceil(panel.width()).toInt()
        val panelHeight = ceil(panel.height()).toInt()
        for (top in 0 until panelHeight step tileSize) {
            for (left in 0 until panelWidth step tileSize) {
                val tile = RectF(
                    left.toFloat(), top.toFloat(),
                    minOf(left + tileSize, panelWidth).toFloat(),
                    minOf(top + tileSize, panelHeight).toFloat()
                )
                val inputRect = RectF(tile).apply { inset(-padding.toFloat(), -padding.toFloat()) }
                val input = createBitmap(inputRect.width().toInt(), inputRect.height().toInt())
                try {
                    Canvas(input).apply {
                        drawColor(Color.BLACK)
                        translate(-panel.left - inputRect.left, -panel.top - inputRect.top)
                        drawRect(
                            panel.left + inputRect.left, panel.top + inputRect.top,
                            panel.left + inputRect.right, panel.top + inputRect.bottom, backdropPaint
                        )
                    }
                    val glass = gpu.render(
                        input, inputRect, tile, panel.width(), panel.height(), radius,
                        refractionHeight = 24f * unitScale, refractionAmount = 48f * unitScale,
                        photoRect = null, photoCornerRadius = 0f
                    )
                    try {
                        val highlight = gpu.renderHighlight(tile, panel.width(), panel.height(), radius, null, 0f)
                        try {
                            canvas.withSave {
                                clipRect(panel.left + tile.left, panel.top + tile.top,
                                    panel.left + tile.right, panel.top + tile.bottom)
                                val paint = tilePaint(glass, panel, tile)
                                drawPath(outline, paint)
                                // Upstream glass surface treatment: black at 5%, separate from the lens.
                                drawPath(outline, Paint(Paint.ANTI_ALIAS_FLAG).apply { color = Color.argb(13, 0, 0, 0) })
                                clipPath(outline)
                                // Highlight.Default: .5dp inner stroke, .25dp mask blur,
                                // white at .5 alpha, additive. The shader supplies the original light gradient.
                                val rimPaint = tilePaint(highlight, panel, tile).apply {
                                    style = Paint.Style.STROKE
                                    strokeWidth = ceil(minOf(.5f * unitScale, minOf(panel.width(), panel.height()) / 2f)) * 2f
                                    maskFilter = BlurMaskFilter(.25f * unitScale, BlurMaskFilter.Blur.NORMAL)
                                    alpha = 128
                                    blendMode = BlendMode.PLUS
                                }
                                drawPath(outline, rimPaint)
                            }
                        } finally {
                            highlight.recycle()
                        }
                    } finally {
                        glass.recycle()
                    }
                } finally {
                    input.recycle()
                }
            }
        }
    }

    private fun tilePaint(bitmap: Bitmap, panel: RectF, tile: RectF) =
        Paint(Paint.ANTI_ALIAS_FLAG or Paint.FILTER_BITMAP_FLAG).apply {
            shader = BitmapShader(bitmap, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP).apply {
                setLocalMatrix(Matrix().apply { setTranslate(panel.left + tile.left, panel.top + tile.top) })
            }
        }

}
