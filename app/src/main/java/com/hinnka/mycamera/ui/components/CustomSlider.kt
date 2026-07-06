package com.hinnka.mycamera.ui.components

import androidx.compose.foundation.Canvas
import androidx.compose.foundation.gestures.awaitEachGesture
import androidx.compose.foundation.gestures.awaitFirstDown
import androidx.compose.foundation.gestures.detectTapGestures
import androidx.compose.foundation.layout.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.StrokeCap
import androidx.compose.ui.graphics.drawscope.DrawScope
import androidx.compose.ui.input.pointer.PointerInputScope
import androidx.compose.ui.input.pointer.positionChange
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import kotlin.math.abs

/**
 * 自定义 Slider 组件
 * 
 * 提供专业的滑块控制体验，带有精细的视觉反馈
 *
 * @param value 当前值，范围在 valueRange 内
 * @param onValueChange 值变化回调
 * @param modifier 修饰符
 * @param enabled 是否启用
 * @param valueRange 值范围
 * @param thumbRadius Thumb 半径
 * @param trackHeight 轨道高度
 * @param activeTrackColor 激活轨道颜色
 * @param inactiveTrackColor 未激活轨道颜色
 * @param thumbColor Thumb 颜色
 */
@Composable
fun CustomSlider(
    value: Float,
    onValueChange: (Float) -> Unit,
    onDoubleTap: (() -> Unit)? = null,
    onValueChangeFinished: (() -> Unit)? = null,
    modifier: Modifier = Modifier,
    enabled: Boolean = true,
    valueRange: ClosedFloatingPointRange<Float> = 0f..1f,
    thumbRadius: Dp = 8.dp,
    trackHeight: Dp = 4.dp,
    activeTrackColor: Color = Color.White,
    inactiveTrackColor: Color = Color.Gray.copy(alpha = 0.5f),
    thumbColor: Color = Color.White
) {
    var isDragging by remember { mutableStateOf(false) }
    val currentOnValueChange by rememberUpdatedState(onValueChange)
    val currentOnDoubleTap by rememberUpdatedState(onDoubleTap)
    val currentOnValueChangeFinished by rememberUpdatedState(onValueChangeFinished)

    val density = LocalDensity.current
    val thumbRadiusPx = with(density) { thumbRadius.toPx() }
    val trackHeightPx = with(density) { trackHeight.toPx() }

    // 确保值在范围内
    val coercedValue = value.coerceIn(valueRange.start, valueRange.endInclusive)

    // 计算归一化的值（0-1）
    val normalizedValue = (coercedValue - valueRange.start) / (valueRange.endInclusive - valueRange.start)

    Box(
        modifier = modifier
            .fillMaxWidth()
            .height(thumbRadius * 2 + 8.dp), // 额外空间用于触摸区域
        contentAlignment = Alignment.Center
    ) {
        Canvas(
            modifier = Modifier
                .fillMaxWidth()
                .height(thumbRadius * 2)
                .horizontalSliderDragInput(
                    enabled = enabled,
                    key1 = valueRange,
                    key2 = thumbRadiusPx,
                    onDragStart = { isDragging = true },
                    onDragEnd = { isDragging = false; currentOnValueChangeFinished?.invoke() },
                    onDragCancel = { isDragging = false; currentOnValueChangeFinished?.invoke() }
                ) { positionX ->
                    val trackWidth = size.width - thumbRadiusPx * 2
                    val trackStart = thumbRadiusPx
                    val x = positionX.coerceIn(trackStart, trackStart + trackWidth)
                    val fraction = (x - trackStart) / trackWidth
                    val newValue = valueRange.start + fraction * (valueRange.endInclusive - valueRange.start)
                    currentOnValueChange(newValue.coerceIn(valueRange.start, valueRange.endInclusive))
                }
                .pointerInput(enabled, valueRange, thumbRadiusPx) {
                    if (!enabled) return@pointerInput
                    detectTapGestures(
                        onDoubleTap = {
                            currentOnDoubleTap?.invoke()
                        },
                        onTap = { offset ->
                            val trackWidth = size.width - thumbRadiusPx * 2
                            val trackStart = thumbRadiusPx
                            val x = offset.x.coerceIn(trackStart, trackStart + trackWidth)
                            val fraction = (x - trackStart) / trackWidth
                            val newValue = valueRange.start + fraction * (valueRange.endInclusive - valueRange.start)
                            currentOnValueChange(newValue.coerceIn(valueRange.start, valueRange.endInclusive))
                            currentOnValueChangeFinished?.invoke()
                        }
                    )
                }
        ) {
            val trackWidth = size.width - thumbRadiusPx * 2
            val trackStart = thumbRadiusPx
            val trackEnd = trackStart + trackWidth
            val centerY = size.height / 2

            // 绘制未激活轨道
            drawTrack(
                start = Offset(trackStart, centerY),
                end = Offset(trackEnd, centerY),
                color = if (enabled) inactiveTrackColor else inactiveTrackColor.copy(alpha = 0.3f),
                strokeWidth = trackHeightPx
            )

            // 绘制激活轨道
            val activeEnd = trackStart + trackWidth * normalizedValue
            drawTrack(
                start = Offset(trackStart, centerY),
                end = Offset(activeEnd, centerY),
                color = if (enabled) activeTrackColor else activeTrackColor.copy(alpha = 0.5f),
                strokeWidth = trackHeightPx
            )

            // 绘制 Thumb
            val thumbX = trackStart + trackWidth * normalizedValue
            drawThumb(
                center = Offset(thumbX, centerY),
                radius = thumbRadiusPx,
                color = if (enabled) thumbColor else thumbColor.copy(alpha = 0.5f),
                isDragging = isDragging,
                enabled = enabled
            )
        }
    }
}

/**
 * 绘制轨道
 */
private fun DrawScope.drawTrack(
    start: Offset,
    end: Offset,
    color: Color,
    strokeWidth: Float
) {
    drawLine(
        color = color,
        start = start,
        end = end,
        strokeWidth = strokeWidth,
        cap = StrokeCap.Round
    )
}

/**
 * 绘制 Thumb
 */
private fun DrawScope.drawThumb(
    center: Offset,
    radius: Float,
    color: Color,
    isDragging: Boolean,
    enabled: Boolean
) {
    // 外圈阴影/光晕效果（拖拽时显示）
    if (isDragging && enabled) {
        drawCircle(
            color = color.copy(alpha = 0.2f),
            radius = radius * 1.5f,
            center = center
        )
    }

    // 主圆圈
    drawCircle(
        color = color,
        radius = radius,
        center = center
    )

    // 同心内圈小圆点（完美几何居中）
    drawCircle(
        color = Color.White.copy(alpha = if (enabled) 0.7f else 0.35f),
        radius = radius * 0.35f,
        center = center
    )
}

private fun Modifier.horizontalSliderDragInput(
    enabled: Boolean,
    key1: Any?,
    key2: Any?,
    onDragStart: () -> Unit,
    onDragEnd: () -> Unit,
    onDragCancel: () -> Unit,
    onPositionChange: PointerInputScope.(Float) -> Unit
): Modifier = pointerInput(enabled, key1, key2) {
    if (!enabled) return@pointerInput
    awaitEachGesture {
        val down = awaitFirstDown(requireUnconsumed = false)
        var totalX = 0f
        var totalY = 0f
        var dragging = false

        while (true) {
            val event = awaitPointerEvent()
            val change = event.changes.firstOrNull { it.id == down.id }
            if (change == null) {
                if (dragging) onDragCancel()
                break
            }
            if (!change.pressed) {
                if (dragging) onDragEnd()
                break
            }

            val positionChange = change.positionChange()
            if (!dragging) {
                totalX += positionChange.x
                totalY += positionChange.y
                if (abs(totalY) > viewConfiguration.touchSlop && abs(totalY) > abs(totalX)) {
                    break
                }
                if (abs(totalX) <= viewConfiguration.touchSlop || abs(totalX) <= abs(totalY)) {
                    continue
                }
                dragging = true
                onDragStart()
            }

            change.consume()
            onPositionChange(change.position.x)
        }
    }
}
