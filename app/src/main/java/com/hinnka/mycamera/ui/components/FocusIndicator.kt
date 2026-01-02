package com.hinnka.mycamera.ui.components

import androidx.compose.animation.AnimatedVisibility
import androidx.compose.animation.core.*
import androidx.compose.foundation.Canvas
import androidx.compose.foundation.layout.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp
import kotlinx.coroutines.delay

/**
 * 对焦指示器
 */
@Composable
fun FocusIndicator(
    position: Pair<Float, Float>?,
    isFocusing: Boolean,
    focusSuccess: Boolean?,
    modifier: Modifier = Modifier
) {
    var visible by remember { mutableStateOf(position != null) }
    
    // 透明度动画
    val alpha by animateFloatAsState(
        targetValue = when {
            isFocusing -> 1f
            focusSuccess == true -> 0.8f
            focusSuccess == false -> 0.5f
            else -> 0f
        },
        animationSpec = tween(300),
        label = "focusAlpha"
    )

    // 聚焦动画
    val scale by animateFloatAsState(
        targetValue = if (focusSuccess == true) 0.8f else 1f,
        animationSpec = tween(300),
        label = "focusScale"
    )
    
    // 颜色
    val color = when (focusSuccess) {
        true -> Color.Green
        false -> Color.Red
        else -> Color.White
    }

    LaunchedEffect(position, isFocusing) {
        visible = position != null
        if (!isFocusing) {
            delay(500)
            visible = false
        }
    }

    val position = position ?: Pair(0f, 0f)

    AnimatedVisibility(visible = visible, modifier = modifier.fillMaxSize()) {
        Canvas(
            modifier = modifier.fillMaxSize()
        ) {
            val x = position.first * size.width
            val y = position.second * size.height
            val boxSize = 60.dp.toPx() * scale
            val halfSize = boxSize / 2
            val cornerLength = 15.dp.toPx()
            val strokeWidth = 2.dp.toPx()

            val drawColor = color.copy(alpha = alpha)

            // 左上角
            drawLine(
                color = drawColor,
                start = Offset(x - halfSize, y - halfSize),
                end = Offset(x - halfSize + cornerLength, y - halfSize),
                strokeWidth = strokeWidth
            )
            drawLine(
                color = drawColor,
                start = Offset(x - halfSize, y - halfSize),
                end = Offset(x - halfSize, y - halfSize + cornerLength),
                strokeWidth = strokeWidth
            )

            // 右上角
            drawLine(
                color = drawColor,
                start = Offset(x + halfSize, y - halfSize),
                end = Offset(x + halfSize - cornerLength, y - halfSize),
                strokeWidth = strokeWidth
            )
            drawLine(
                color = drawColor,
                start = Offset(x + halfSize, y - halfSize),
                end = Offset(x + halfSize, y - halfSize + cornerLength),
                strokeWidth = strokeWidth
            )

            // 左下角
            drawLine(
                color = drawColor,
                start = Offset(x - halfSize, y + halfSize),
                end = Offset(x - halfSize + cornerLength, y + halfSize),
                strokeWidth = strokeWidth
            )
            drawLine(
                color = drawColor,
                start = Offset(x - halfSize, y + halfSize),
                end = Offset(x - halfSize, y + halfSize - cornerLength),
                strokeWidth = strokeWidth
            )

            // 右下角
            drawLine(
                color = drawColor,
                start = Offset(x + halfSize, y + halfSize),
                end = Offset(x + halfSize - cornerLength, y + halfSize),
                strokeWidth = strokeWidth
            )
            drawLine(
                color = drawColor,
                start = Offset(x + halfSize, y + halfSize),
                end = Offset(x + halfSize, y + halfSize - cornerLength),
                strokeWidth = strokeWidth
            )
        }
    }
}
