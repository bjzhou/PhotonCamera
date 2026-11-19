package com.hinnka.mycamera.ui.camera

import androidx.annotation.StringRes
import androidx.compose.foundation.Canvas
import androidx.compose.foundation.layout.size
import androidx.compose.material3.IconButton
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.CornerRadius
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.geometry.Size
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.Path
import androidx.compose.ui.graphics.StrokeCap
import androidx.compose.ui.graphics.StrokeJoin
import androidx.compose.ui.graphics.drawscope.Stroke
import androidx.compose.ui.graphics.drawscope.rotate
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.semantics.stateDescription
import androidx.compose.ui.unit.dp
import com.hinnka.mycamera.R
import com.hinnka.mycamera.camera.MeteringMode

@get:StringRes
internal val MeteringMode.labelRes: Int
    get() = when (this) {
        MeteringMode.SYSTEM_DEFAULT -> R.string.metering_system_default
        MeteringMode.CENTER_WEIGHTED -> R.string.metering_center_weighted
        MeteringMode.AVERAGE -> R.string.metering_average
        MeteringMode.HIGHLIGHT_PRIORITY -> R.string.metering_highlight_priority
        MeteringMode.SPOT -> R.string.metering_spot
    }

@Composable
internal fun MeteringModeButton(
    mode: MeteringMode,
    onModeChange: (MeteringMode) -> Unit,
    enabled: Boolean,
    modifier: Modifier = Modifier
) {
    val label = stringResource(R.string.metering_mode)
    val modeLabel = stringResource(mode.labelRes)
    val tint = Color.White.copy(alpha = if (enabled) 1f else 0.35f)

    IconButton(
        onClick = {
            val nextMode = when (mode) {
                MeteringMode.SYSTEM_DEFAULT -> MeteringMode.CENTER_WEIGHTED
                MeteringMode.CENTER_WEIGHTED -> MeteringMode.AVERAGE
                MeteringMode.AVERAGE -> MeteringMode.HIGHLIGHT_PRIORITY
                MeteringMode.HIGHLIGHT_PRIORITY -> MeteringMode.SPOT
                MeteringMode.SPOT -> MeteringMode.SYSTEM_DEFAULT
            }
            onModeChange(nextMode)
        },
        enabled = enabled,
        modifier = Modifier.size(32.dp).then(modifier).semantics {
            contentDescription = label
            stateDescription = modeLabel
        }
    ) {
        Canvas(Modifier.size(20.dp).autoRotate()) {
            val unit = size.minDimension / 20f
            val stroke = 1.5f * unit
            val halfWidth = 8f * unit
            val halfHeight = 6f * unit
            drawRoundRect(
                color = tint,
                topLeft = center - Offset(halfWidth, halfHeight),
                size = Size(2 * halfWidth, 2 * halfHeight),
                cornerRadius = CornerRadius(unit),
                style = Stroke(stroke)
            )
            when (mode) {
                MeteringMode.SYSTEM_DEFAULT -> {
                    val x = center.x
                    val y = center.y
                    val autoSymbol = Path().apply {
                        moveTo(x - 3.5f * unit, y + 3.5f * unit)
                        lineTo(x, y - 3.5f * unit)
                        lineTo(x + 3.5f * unit, y + 3.5f * unit)
                        moveTo(x - 2.25f * unit, y + unit)
                        lineTo(x + 2.25f * unit, y + unit)
                    }
                    drawPath(
                        path = autoSymbol,
                        color = tint,
                        style = Stroke(width = stroke, cap = StrokeCap.Round, join = StrokeJoin.Round)
                    )
                }
                MeteringMode.CENTER_WEIGHTED -> {
                    drawCircle(tint, radius = 3.3f * unit, style = Stroke(stroke))
                    drawCircle(tint, radius = unit)
                }
                MeteringMode.AVERAGE -> {
                    drawLine(tint, center - Offset(halfWidth, 0f), center + Offset(halfWidth, 0f), stroke)
                    drawLine(tint, center - Offset(0f, halfHeight), center + Offset(0f, halfHeight), stroke)
                }
                MeteringMode.HIGHLIGHT_PRIORITY -> {
                    drawCircle(tint, radius = 1.8f * unit)
                    repeat(4) { ray ->
                        rotate(90f * ray) {
                            drawLine(tint, center + Offset(0f, 3f * unit), center + Offset(0f, 4.5f * unit), stroke)
                        }
                    }
                }
                MeteringMode.SPOT -> drawCircle(tint, radius = 1.8f * unit)
            }
        }
    }
}
