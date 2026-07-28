package com.hinnka.mycamera.ui.components

import androidx.compose.foundation.Canvas
import androidx.compose.foundation.gestures.detectDragGestures
import androidx.compose.foundation.gestures.detectTapGestures
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.aspectRatio
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.runtime.Composable
import androidx.compose.runtime.rememberUpdatedState
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.CornerRadius
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.geometry.Size
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.drawscope.Stroke
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.unit.dp
import com.hinnka.mycamera.model.ColorPaletteState
import kotlin.math.min

@Composable
fun ColorRecipePalettePanel(
    paletteState: ColorPaletteState,
    onPaletteStateChange: (ColorPaletteState) -> Unit,
    modifier: Modifier = Modifier
) {
    val currentOnPaletteStateChange = rememberUpdatedState(onPaletteStateChange)
    val currentPaletteState = rememberUpdatedState(paletteState)

    Column(
        modifier = modifier.fillMaxWidth()
    ) {
        Box(
            modifier = Modifier
                .fillMaxWidth()
                .aspectRatio(2f)
                .padding(horizontal = 8.dp)
                .pointerInput(Unit) {
                    detectTapGestures(
                        onDoubleTap = { offset ->
                            val width = size.width.toFloat().coerceAtLeast(1f)
                            val height = size.height.toFloat().coerceAtLeast(1f)
                            val currentState = currentPaletteState.value
                            val thumbX = currentState.x.coerceIn(0f, 1f) * width
                            val thumbY = currentState.y.coerceIn(0f, 1f) * height
                            val thumbRadius = min(width, height) * 0.065f
                            val dx = offset.x - thumbX
                            val dy = offset.y - thumbY
                            if (dx * dx + dy * dy <= thumbRadius * thumbRadius * 2.2f) {
                                currentOnPaletteStateChange.value(
                                    currentState.copy(x = 0.5f, y = 0.5f)
                                )
                            }
                        },
                        onTap = { offset ->
                            val width = size.width.toFloat().coerceAtLeast(1f)
                            val height = size.height.toFloat().coerceAtLeast(1f)
                            currentOnPaletteStateChange.value(
                                currentPaletteState.value.copy(
                                    x = (offset.x / width).coerceIn(0f, 1f),
                                    y = (offset.y / height).coerceIn(0f, 1f)
                                )
                            )
                        }
                    )
                }
                .pointerInput(Unit) {
                    detectDragGestures { change, _ ->
                        change.consume()
                        val width = size.width.toFloat().coerceAtLeast(1f)
                        val height = size.height.toFloat().coerceAtLeast(1f)
                        currentOnPaletteStateChange.value(
                            currentPaletteState.value.copy(
                                x = (change.position.x / width).coerceIn(0f, 1f),
                                y = (change.position.y / height).coerceIn(0f, 1f)
                            )
                        )
                    }
                }
        ) {
            Canvas(modifier = Modifier.matchParentSize()) {
                val corner = CornerRadius(20.dp.toPx(), 20.dp.toPx())

                drawRoundRect(
                    brush = Brush.horizontalGradient(
                        listOf(
                            Color(0xFF6C8A91),
                            Color(0xFFB8AEA0),
                            Color(0xFFD36A72)
                        )
                    ),
                    size = size,
                    cornerRadius = corner
                )

                drawRoundRect(
                    brush = Brush.verticalGradient(
                        0f to Color.White.copy(alpha = 0.36f),
                        0.52f to Color.Transparent,
                        1f to Color(0xFF001F22).copy(alpha = 0.88f)
                    ),
                    size = size,
                    cornerRadius = corner
                )

                drawRoundRect(
                    color = Color.Black.copy(alpha = 0.16f),
                    style = Stroke(width = 1.5.dp.toPx()),
                    size = size,
                    cornerRadius = corner
                )

                drawPaletteGrid(size)

                val thumbX = paletteState.x.coerceIn(0f, 1f) * size.width
                val thumbY = paletteState.y.coerceIn(0f, 1f) * size.height
                val thumbRadius = min(size.width, size.height) * 0.065f

                drawCircle(
                    color = Color.Black.copy(alpha = 0.18f),
                    radius = thumbRadius * 1.35f,
                    center = Offset(thumbX, thumbY)
                )
                drawCircle(
                    color = Color.White,
                    radius = thumbRadius,
                    center = Offset(thumbX, thumbY)
                )
                drawCircle(
                    color = Color.Black.copy(alpha = 0.18f),
                    radius = thumbRadius,
                    center = Offset(thumbX, thumbY),
                    style = Stroke(width = 1.dp.toPx())
                )
            }
        }

    }
}

private fun androidx.compose.ui.graphics.drawscope.DrawScope.drawPaletteGrid(size: Size) {
    val columns = 9
    val rows = 9
    val dotRadius = min(size.width, size.height) * 0.012f
    val left = size.width * 0.07f
    val top = size.height * 0.10f
    val gridWidth = size.width * 0.86f
    val gridHeight = size.height * 0.80f

    for (row in 0 until rows) {
        for (column in 0 until columns) {
            val x = left + gridWidth * column / (columns - 1)
            val y = top + gridHeight * row / (rows - 1)
            val alpha = 0.18f + (column.toFloat() / (columns - 1)) * 0.34f + (1f - row.toFloat() / (rows - 1)) * 0.18f
            drawCircle(
                color = Color.White.copy(alpha = alpha.coerceIn(0.14f, 0.62f)),
                radius = dotRadius,
                center = Offset(x, y)
            )
        }
    }
}
