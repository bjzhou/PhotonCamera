package com.hinnka.mycamera.ui.components

import androidx.compose.foundation.Canvas
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.Path
import androidx.compose.ui.graphics.StrokeCap
import androidx.compose.ui.graphics.StrokeJoin
import androidx.compose.ui.graphics.drawscope.DrawScope
import androidx.compose.ui.graphics.drawscope.Stroke
import androidx.compose.ui.unit.dp
import kotlin.math.sqrt

/**
 * Overlay histogram for a display-referred image preview.
 *
 * All three channels share the same vertical scale so their relative distributions remain
 * comparable. Square-root scaling keeps isolated highlight or shadow spikes from flattening the
 * rest of the graph.
 */
@Composable
fun RgbHistogramView(
    histogram: ImageHistogram?,
    modifier: Modifier = Modifier,
) {
    Box(
        modifier = modifier
            .clip(RoundedCornerShape(8.dp))
            .background(Color.Black.copy(alpha = 0.62f))
            .border(
                width = 1.dp,
                color = Color.White.copy(alpha = 0.14f),
                shape = RoundedCornerShape(8.dp),
            )
    ) {
        Canvas(modifier = Modifier.fillMaxSize()) {
            val currentHistogram = histogram ?: return@Canvas
            val channels = listOf(
                currentHistogram.binsFor(CurveChannel.RED) to Color(0xFFF05252),
                currentHistogram.binsFor(CurveChannel.GREEN) to Color(0xFF45C568),
                currentHistogram.binsFor(CurveChannel.BLUE) to Color(0xFF4A83E5),
            )
            val peak = channels
                .maxOfOrNull { (bins, _) -> bins.maxOrNull() ?: 0 }
                ?.takeIf { it > 0 }
                ?: return@Canvas
            val peakScale = sqrt(peak.toFloat())

            channels.forEach { (bins, color) ->
                drawRgbChannel(
                    bins = bins,
                    color = color,
                    peakScale = peakScale,
                )
            }
        }
    }
}

private fun DrawScope.drawRgbChannel(
    bins: IntArray,
    color: Color,
    peakScale: Float,
) {
    if (bins.size < 2) return

    val baseline = size.height
    val fillPath = Path().apply {
        moveTo(0f, baseline)
        bins.forEachIndexed { index, count ->
            val x = index.toFloat() / bins.lastIndex * size.width
            val normalizedHeight = sqrt(count.toFloat()) / peakScale
            lineTo(x, baseline * (1f - normalizedHeight))
        }
        lineTo(size.width, baseline)
        close()
    }
    val linePath = Path().apply {
        bins.forEachIndexed { index, count ->
            val x = index.toFloat() / bins.lastIndex * size.width
            val normalizedHeight = sqrt(count.toFloat()) / peakScale
            val y = baseline * (1f - normalizedHeight)
            if (index == 0) {
                moveTo(x, y)
            } else {
                lineTo(x, y)
            }
        }
    }

    drawPath(path = fillPath, color = color.copy(alpha = 0.18f))
    drawPath(
        path = linePath,
        color = color.copy(alpha = 0.9f),
        style = Stroke(
            width = 1.5.dp.toPx(),
            cap = StrokeCap.Round,
            join = StrokeJoin.Round,
        ),
    )
}
