package com.hinnka.mycamera.ui.camera

import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.drawWithCache
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.geometry.Rect
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.Path
import androidx.compose.ui.graphics.drawscope.Stroke
import androidx.compose.ui.graphics.drawscope.clipRect
import androidx.compose.ui.graphics.drawscope.withTransform
import com.hinnka.mycamera.camera.GridStyle

private const val GOLDEN_SECTION = 0.61803398875f

/** Composition guides fitted to the actual preview bounds, including non-3:4 viewfinders. */
@Composable
fun GridOverlay(
    aspectRatio: Float,
    modifier: Modifier = Modifier,
    style: GridStyle = GridStyle.THIRDS
) {
    Box(
        modifier = modifier.fillMaxSize().drawWithCache {
            if (size.width <= 0f || size.height <= 0f ||
                !aspectRatio.isFinite() || aspectRatio <= 0f
            ) {
                return@drawWithCache onDrawBehind { }
            }
            val width = minOf(size.width, size.height * aspectRatio)
            val height = minOf(size.height, size.width / aspectRatio)
            val left = (size.width - width) / 2f
            val top = (size.height - height) / 2f
            val landscapeSpiral = style == GridStyle.GOLDEN_SPIRAL && width > height
            val path = if (landscapeSpiral) {
                buildGridPath(style, height, width)
            } else {
                buildGridPath(style, width, height)
            }
            onDrawBehind {
                clipRect(left, top, left + width, top + height) {
                    withTransform({
                        translate(left, top)
                        if (style == GridStyle.GOLDEN_SPIRAL) {
                            rotate(180f, pivot = Offset(width / 2f, height / 2f))
                        }
                        if (landscapeSpiral) {
                            translate(left = width)
                            rotate(90f, pivot = Offset.Zero)
                        }
                    }) {
                        drawPath(path, Color.White.copy(alpha = 0.5f), style = Stroke(1.5f))
                    }
                }
            }
        }
    )
}

private fun buildGridPath(style: GridStyle, width: Float, height: Float): Path = Path().apply {
    fun line(x1: Float, y1: Float, x2: Float, y2: Float) {
        moveTo(x1, y1)
        lineTo(x2, y2)
    }

    when (style) {
        GridStyle.THIRDS, GridStyle.GOLDEN_RATIO -> {
            val fraction = if (style == GridStyle.THIRDS) 1f / 3f else 1f - GOLDEN_SECTION
            for (position in floatArrayOf(fraction, 1f - fraction)) {
                line(width * position, 0f, width * position, height)
                line(0f, height * position, width, height * position)
            }
        }
        GridStyle.DIAGONALS -> {
            // Four 45-degree corner diagonals, as in the diagonal composition method.
            val length = minOf(width, height)
            line(0f, 0f, length, length)
            line(width, 0f, width - length, length)
            // In a square these are the same two diagonals; avoid drawing them twice.
            if (width != height) {
                line(0f, height, length, height - length)
                line(width, height, width - length, height - length)
            }
        }
        GridStyle.GOLDEN_TRIANGLE -> {
            line(0f, 0f, width, height)
            // Project the other two corners onto the diagonal to preserve right angles
            // for every aspect ratio, rather than stretching a fixed template.
            val denominator = width * width + height * height
            val upperProjection = width * width / denominator
            val lowerProjection = height * height / denominator
            line(width, 0f, width * upperProjection, height * upperProjection)
            line(0f, height, width * lowerProjection, height * lowerProjection)
        }
        GridStyle.GOLDEN_SPIRAL -> {
            addGoldenSpiral(width, height)
        }
    }
}

/**
 * Quarter arcs in successively smaller golden-rectangle tiles, with their partition lines.
 * The canonical portrait golden rectangle is scaled to the selected frame; quarter circles
 * become elliptical arcs when the frame has a different ratio, keeping the guide edge-to-edge.
 */
private fun Path.addGoldenSpiral(width: Float, height: Float) {
    var left = 0f
    var top = 0f
    var right = width
    var bottom = height
    val spiral = Path()
    repeat(12) { index ->
        if (minOf(right - left, bottom - top) < 1f) return@repeat
        val tile: Rect
        val center: Offset
        val startAngle: Float
        when (index % 4) {
            0 -> {
                val split = top + (bottom - top) * GOLDEN_SECTION
                tile = Rect(left, top, right, split)
                center = Offset(right, split)
                startAngle = 270f
                moveTo(left, split)
                lineTo(right, split)
                top = split
            }
            1 -> {
                val split = left + (right - left) * GOLDEN_SECTION
                tile = Rect(left, top, split, bottom)
                center = Offset(split, top)
                startAngle = 180f
                moveTo(split, top)
                lineTo(split, bottom)
                left = split
            }
            2 -> {
                val split = bottom - (bottom - top) * GOLDEN_SECTION
                tile = Rect(left, split, right, bottom)
                center = Offset(left, split)
                startAngle = 90f
                moveTo(left, split)
                lineTo(right, split)
                bottom = split
            }
            else -> {
                val split = right - (right - left) * GOLDEN_SECTION
                tile = Rect(split, top, right, bottom)
                center = Offset(split, bottom)
                startAngle = 0f
                moveTo(split, top)
                lineTo(split, bottom)
                right = split
            }
        }
        spiral.arcTo(
            rect = Rect(
                center.x - tile.width, center.y - tile.height,
                center.x + tile.width, center.y + tile.height
            ),
            startAngleDegrees = startAngle,
            sweepAngleDegrees = -90f,
            forceMoveTo = index == 0
        )
    }
    addPath(spiral)
}
