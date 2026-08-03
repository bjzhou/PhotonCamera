package com.hinnka.mycamera.ui.components

import androidx.compose.foundation.Canvas
import androidx.compose.foundation.background
import androidx.compose.foundation.gestures.detectDragGestures
import androidx.compose.foundation.gestures.detectTapGestures
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.aspectRatio
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.rememberUpdatedState
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.geometry.CornerRadius
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.geometry.Rect
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.drawscope.Stroke
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.hinnka.mycamera.R
import com.hinnka.mycamera.model.ColorPaletteState
import kotlin.math.roundToInt

private val PaletteHorizontalInset = 18.dp
private val PaletteVerticalInset = 16.dp
private val PaletteAccent = Color(0xFFFFC76B)
private const val PaletteReferenceStepCount = 9

@Composable
fun ColorRecipePalettePanel(
    paletteState: ColorPaletteState,
    onPaletteStateChange: (ColorPaletteState) -> Unit,
    modifier: Modifier = Modifier
) {
    val currentOnPaletteStateChange = rememberUpdatedState(onPaletteStateChange)
    val currentPaletteState = rememberUpdatedState(paletteState)
    val normalizedState = paletteState.normalized()
    val toneLabel = stringResource(R.string.recipe_palette_tone)
    val saturationLabel = stringResource(R.string.recipe_param_saturation)

    Column(
        modifier = modifier.fillMaxWidth(),
        verticalArrangement = Arrangement.spacedBy(8.dp)
    ) {
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            PaletteAxisValue(
                label = toneLabel,
                value = normalizedState.toneValue,
                modifier = Modifier.weight(1f)
            )
            PaletteAxisValue(
                label = saturationLabel,
                value = normalizedState.saturationValue,
                modifier = Modifier.weight(1f)
            )
        }

        Box(modifier = Modifier.fillMaxWidth()) {
            Box(
                modifier = Modifier
                    .padding(start = 30.dp)
                    .fillMaxWidth()
                    .aspectRatio(2f)
                    .semantics {
                        contentDescription =
                            "$toneLabel ${formatAxisValue(normalizedState.toneValue)}, " +
                            "$saturationLabel ${formatAxisValue(normalizedState.saturationValue)}"
                    }
                    .pointerInput(Unit) {
                        fun stateAt(position: Offset): ColorPaletteState {
                            val left = PaletteHorizontalInset.toPx()
                            val right = size.width - left
                            val top = PaletteVerticalInset.toPx()
                            val bottom = size.height - top
                            val horizontalPosition =
                                ((position.x - left) / (right - left).coerceAtLeast(1f))
                                    .coerceIn(0f, 1f)
                            val verticalPosition =
                                ((position.y - top) / (bottom - top).coerceAtLeast(1f))
                                    .coerceIn(0f, 1f)
                            return currentPaletteState.value.copy(
                                x = horizontalPosition,
                                y = verticalPosition
                            ).normalized()
                        }

                        detectTapGestures(
                            onDoubleTap = { position ->
                                val current = currentPaletteState.value.normalized()
                                val left = PaletteHorizontalInset.toPx()
                                val top = PaletteVerticalInset.toPx()
                                val gridWidth = size.width - left * 2f
                                val gridHeight = size.height - top * 2f
                                val thumb = Offset(
                                    x = left + current.x * gridWidth,
                                    y = top + current.y * gridHeight
                                )
                                val distance = position - thumb
                                val hitRadius = 24.dp.toPx()
                                if (distance.getDistanceSquared() <= hitRadius * hitRadius) {
                                    currentOnPaletteStateChange.value(
                                        currentPaletteState.value.withValues(
                                            saturation = 0f,
                                            tone = 0f
                                        )
                                    )
                                }
                            },
                            onTap = { position ->
                                val next = stateAt(position)
                                val current = currentPaletteState.value.normalized()
                                if (next.x != current.x || next.y != current.y) {
                                    currentOnPaletteStateChange.value(next)
                                }
                            }
                        )
                    }
                    .pointerInput(Unit) {
                        detectDragGestures { change, _ ->
                            change.consume()
                            val left = PaletteHorizontalInset.toPx()
                            val right = size.width - left
                            val top = PaletteVerticalInset.toPx()
                            val bottom = size.height - top
                            val horizontalPosition =
                                ((change.position.x - left) / (right - left).coerceAtLeast(1f))
                                    .coerceIn(0f, 1f)
                            val verticalPosition =
                                ((change.position.y - top) / (bottom - top).coerceAtLeast(1f))
                                    .coerceIn(0f, 1f)
                            val current = currentPaletteState.value
                            val next = current.copy(
                                x = horizontalPosition,
                                y = verticalPosition
                            ).normalized()
                            val normalizedCurrent = current.normalized()
                            if (next.x != normalizedCurrent.x || next.y != normalizedCurrent.y) {
                                currentOnPaletteStateChange.value(next)
                            }
                        }
                    }
            ) {
                Canvas(modifier = Modifier.fillMaxSize()) {
                    drawPalette(
                        x = normalizedState.x,
                        y = normalizedState.y
                    )
                }
            }

            Column(
                modifier = Modifier
                    .matchParentSize()
                    .padding(top = 9.dp, end = 6.dp, bottom = 9.dp),
                verticalArrangement = Arrangement.SpaceBetween,
                horizontalAlignment = Alignment.Start
            ) {
                AxisMarker("+100")
                AxisMarker("0")
                AxisMarker("-100")
            }
        }

        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(start = 48.dp, end = 18.dp),
            horizontalArrangement = Arrangement.SpaceBetween
        ) {
            AxisMarker("-100")
            AxisMarker("0")
            AxisMarker("+100")
        }
    }
}

@Composable
private fun PaletteAxisValue(
    label: String,
    value: Float,
    modifier: Modifier = Modifier
) {
    Row(
        modifier = modifier
            .clip(RoundedCornerShape(8.dp))
            .background(Color.White.copy(alpha = 0.08f))
            .padding(horizontal = 12.dp, vertical = 8.dp),
        horizontalArrangement = Arrangement.SpaceBetween,
        verticalAlignment = Alignment.CenterVertically
    ) {
        Text(
            text = label,
            color = Color.White.copy(alpha = 0.68f),
            fontSize = 11.sp,
            maxLines = 1
        )
        Text(
            text = formatAxisValue(value),
            color = if (value == 0f) Color.White.copy(alpha = 0.72f) else PaletteAccent,
            fontSize = 13.sp,
            fontWeight = FontWeight.SemiBold,
            fontFamily = FontFamily.Monospace
        )
    }
}

@Composable
private fun AxisMarker(text: String) {
    Text(
        text = text,
        color = Color.White.copy(alpha = 0.42f),
        fontSize = 9.sp,
        fontFamily = FontFamily.Monospace
    )
}

private fun formatAxisValue(value: Float): String {
    val rounded = value.roundToInt()
    return when {
        rounded > 0 -> "+$rounded"
        else -> rounded.toString()
    }
}

private fun androidx.compose.ui.graphics.drawscope.DrawScope.drawPalette(
    x: Float,
    y: Float
) {
    val corner = CornerRadius(14.dp.toPx(), 14.dp.toPx())
    val horizontalInset = PaletteHorizontalInset.toPx()
    val verticalInset = PaletteVerticalInset.toPx()
    val grid = Rect(
        left = horizontalInset,
        top = verticalInset,
        right = size.width - horizontalInset,
        bottom = size.height - verticalInset
    )

    drawRoundRect(
        brush = Brush.horizontalGradient(
            colors = listOf(
                Color(0xFF777A78),
                Color(0xFF9B8173),
                Color(0xFFDF694E)
            )
        ),
        size = size,
        cornerRadius = corner
    )
    drawRoundRect(
        brush = Brush.verticalGradient(
            colorStops = arrayOf(
                0f to Color.White.copy(alpha = 0.40f),
                0.48f to Color.Transparent,
                1f to Color(0xFF081113).copy(alpha = 0.72f)
            )
        ),
        size = size,
        cornerRadius = corner
    )
    drawRoundRect(
        color = Color.White.copy(alpha = 0.12f),
        size = size,
        cornerRadius = corner,
        style = Stroke(width = 1.dp.toPx())
    )

    for (index in 0 until PaletteReferenceStepCount) {
        val fraction = index.toFloat() / (PaletteReferenceStepCount - 1)
        val x = grid.left + grid.width * fraction
        val y = grid.top + grid.height * fraction
        val isCenter = index == PaletteReferenceStepCount / 2

        drawLine(
            color = Color.White.copy(alpha = if (isCenter) 0.28f else 0.10f),
            start = Offset(x, grid.top),
            end = Offset(x, grid.bottom),
            strokeWidth = if (isCenter) 1.25.dp.toPx() else 0.75.dp.toPx()
        )
        drawLine(
            color = Color.White.copy(alpha = if (isCenter) 0.28f else 0.10f),
            start = Offset(grid.left, y),
            end = Offset(grid.right, y),
            strokeWidth = if (isCenter) 1.25.dp.toPx() else 0.75.dp.toPx()
        )
    }

    val selectedX = grid.left + grid.width * x.coerceIn(0f, 1f)
    val selectedY = grid.top + grid.height * y.coerceIn(0f, 1f)

    drawLine(
        color = PaletteAccent.copy(alpha = 0.30f),
        start = Offset(selectedX, grid.top),
        end = Offset(selectedX, grid.bottom),
        strokeWidth = 1.dp.toPx()
    )
    drawLine(
        color = PaletteAccent.copy(alpha = 0.30f),
        start = Offset(grid.left, selectedY),
        end = Offset(grid.right, selectedY),
        strokeWidth = 1.dp.toPx()
    )

    for (row in 0 until PaletteReferenceStepCount) {
        for (column in 0 until PaletteReferenceStepCount) {
            val x =
                grid.left + grid.width * column / (PaletteReferenceStepCount - 1)
            val y =
                grid.top + grid.height * row / (PaletteReferenceStepCount - 1)
            drawCircle(
                color = Color.White.copy(alpha = if (row == 4 && column == 4) 0.72f else 0.42f),
                radius = if (row == 4 && column == 4) 2.1.dp.toPx() else 1.5.dp.toPx(),
                center = Offset(x, y)
            )
        }
    }

    val thumbCenter = Offset(selectedX, selectedY)
    drawCircle(
        color = Color.Black.copy(alpha = 0.30f),
        radius = 12.dp.toPx(),
        center = thumbCenter
    )
    drawCircle(
        color = PaletteAccent,
        radius = 9.dp.toPx(),
        center = thumbCenter
    )
    drawCircle(
        color = Color.White.copy(alpha = 0.92f),
        radius = 4.dp.toPx(),
        center = thumbCenter
    )
}
