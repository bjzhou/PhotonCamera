package com.hinnka.mycamera.ui.camera

import androidx.compose.foundation.Canvas
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.geometry.Size
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.StrokeCap
import androidx.compose.ui.graphics.drawscope.Stroke
import androidx.compose.ui.graphics.lerp
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import com.hinnka.mycamera.ui.theme.accentContentColor

/** Ring geometry also determines the clearance around the shutter surface. */
internal object CaptureProgressRingDefaults {
    val StrokeWidth = 3.dp
    val OutlineWidth = 1.dp
    val OuterInset = 1.dp
    val Gap = 1.dp
    val RingSpacing = StrokeWidth + OutlineWidth * 2 + Gap

    fun contentPadding(ringCount: Int): Dp = OuterInset + RingSpacing * ringCount
}

/** An opaque contrast band keeps the accent visible over any shutter color or image. */
@Composable
internal fun CaptureProgressRing(
    color: Color,
    startAngle: Float,
    sweepAngle: Float,
    inset: Dp = CaptureProgressRingDefaults.OuterInset,
    modifier: Modifier = Modifier
) {
    val backingColor = accentContentColor(color)
    val trackColor = lerp(backingColor, color, 0.2f)
    Canvas(modifier.fillMaxSize()) {
        val strokeWidth = CaptureProgressRingDefaults.StrokeWidth.toPx()
        val backingWidth = strokeWidth + CaptureProgressRingDefaults.OutlineWidth.toPx() * 2f
        val radius = size.minDimension / 2f - inset.toPx() - backingWidth / 2f
        val arcTopLeft = Offset(center.x - radius, center.y - radius)
        val arcSize = Size(radius * 2f, radius * 2f)

        drawCircle(backingColor, radius, style = Stroke(width = backingWidth))
        drawCircle(trackColor, radius, style = Stroke(width = strokeWidth))
        drawArc(
            color = color,
            startAngle = startAngle,
            sweepAngle = sweepAngle.coerceIn(0f, 360f),
            useCenter = false,
            topLeft = arcTopLeft,
            size = arcSize,
            style = Stroke(width = strokeWidth, cap = StrokeCap.Round)
        )
    }
}
