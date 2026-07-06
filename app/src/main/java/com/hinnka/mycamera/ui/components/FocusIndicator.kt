package com.hinnka.mycamera.ui.components

import androidx.compose.animation.AnimatedVisibility
import androidx.compose.animation.core.*
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.Canvas
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Lock
import androidx.compose.material3.Icon
import androidx.compose.foundation.layout.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.unit.IntOffset
import androidx.compose.ui.unit.dp
import com.hinnka.mycamera.camera.FocusPointSource
import kotlinx.coroutines.delay
import kotlin.math.roundToInt

/**
 * 对焦指示器
 */
@Composable
fun FocusIndicator(
    position: Pair<Float, Float>?,
    source: FocusPointSource = FocusPointSource.MANUAL,
    isFocusLocked: Boolean = false,
    isFocusing: Boolean,
    focusSuccess: Boolean?,
    modifier: Modifier = Modifier
) {
    var visible by remember { mutableStateOf(position != null) }
    
    // 透明度动画
    val alpha by animateFloatAsState(
        targetValue = when {
            isFocusing -> 1f
            isFocusLocked && focusSuccess != false -> 0.9f
            focusSuccess == true -> 0.8f
            isFocusLocked -> 0.6f
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
        else -> if (source == FocusPointSource.AI) Color(0xFF64D8FF) else Color.White
    }

    LaunchedEffect(position) {
        if (position != null) {
            visible = true
        } else {
            delay(200)
            visible = false
        }
    }

    val displayPosition = position ?: Pair(0f, 0f)
    val density = LocalDensity.current

    AnimatedVisibility(visible = visible, modifier = modifier.fillMaxSize()) {
        BoxWithConstraints(modifier = Modifier.fillMaxSize()) {
            Canvas(
                modifier = Modifier.fillMaxSize()
            ) {
                val x = displayPosition.first * size.width
                val y = displayPosition.second * size.height
                val isAiFocus = source == FocusPointSource.AI
                val boxSize = (if (isAiFocus) 20.dp else 60.dp).toPx() * scale
                val halfSize = boxSize / 2
                val cornerLength = (if (isAiFocus) 5.dp else 15.dp).toPx()
                val strokeWidth = (if (isAiFocus) 1.dp else 2.dp).toPx()

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

                if (isAiFocus) {
                    val centerTick = 3.dp.toPx()
                    drawLine(
                        color = drawColor,
                        start = Offset(x - centerTick, y),
                        end = Offset(x + centerTick, y),
                        strokeWidth = strokeWidth
                    )
                    drawLine(
                        color = drawColor,
                        start = Offset(x, y - centerTick),
                        end = Offset(x, y + centerTick),
                        strokeWidth = strokeWidth
                    )
                }
            }

            if (isFocusLocked && position != null && source == FocusPointSource.MANUAL) {
                val badgeSize = 24.dp
                val badgeSizePx = with(density) { badgeSize.toPx() }
                val focusHalfSizePx = with(density) { 30.dp.toPx() }
                val maxWidthPx = constraints.maxWidth.toFloat()
                val maxHeightPx = constraints.maxHeight.toFloat()
                val offsetX = (displayPosition.first * maxWidthPx + focusHalfSizePx - badgeSizePx * 0.55f)
                    .coerceIn(0f, (maxWidthPx - badgeSizePx).coerceAtLeast(0f))
                val offsetY = (displayPosition.second * maxHeightPx - focusHalfSizePx - badgeSizePx * 0.45f)
                    .coerceIn(0f, (maxHeightPx - badgeSizePx).coerceAtLeast(0f))
                val badgeColor = color.copy(alpha = alpha.coerceAtLeast(0.75f))

                Box(
                    modifier = Modifier
                        .offset { IntOffset(offsetX.roundToInt(), offsetY.roundToInt()) }
                        .size(badgeSize)
                        .clip(CircleShape)
                        .background(Color.Black.copy(alpha = 0.55f))
                        .border(1.dp, badgeColor, CircleShape),
                    contentAlignment = Alignment.Center
                ) {
                    Icon(
                        imageVector = Icons.Filled.Lock,
                        contentDescription = null,
                        tint = badgeColor,
                        modifier = Modifier.size(14.dp)
                    )
                }
            }
        }
    }
}
