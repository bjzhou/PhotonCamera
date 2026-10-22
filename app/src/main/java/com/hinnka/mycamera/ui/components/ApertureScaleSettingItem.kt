package com.hinnka.mycamera.ui.components

import androidx.compose.foundation.background
import androidx.compose.foundation.gestures.detectHorizontalDragGestures
import androidx.compose.foundation.gestures.detectTapGestures
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Switch
import androidx.compose.material3.SwitchDefaults
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.rememberUpdatedState
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.scale
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.hapticfeedback.HapticFeedbackType
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.platform.LocalHapticFeedback
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.hinnka.mycamera.ui.theme.AccentColor
import com.hinnka.mycamera.ui.theme.OnAccentColor
import kotlin.math.abs

/** 虚化光圈固定刻度 */
val ApertureScaleStops = listOf(1.2f, 1.4f, 1.8f, 2.0f, 2.8f, 3.5f, 4.0f, 5.6f, 8f, 11f, 16f)

private fun formatApertureStop(value: Float): String =
    if (value >= 8f) value.toInt().toString() else String.format("%.1f", value)

private fun closestApertureStopIndex(value: Float): Int =
    ApertureScaleStops.indices.minByOrNull { abs(ApertureScaleStops[it] - value) } ?: 0

/**
 * 固定刻度尺设置项：只能选择 [ApertureScaleStops] 中的光圈值
 */
@Composable
fun ApertureScaleSettingItem(
    title: String,
    description: String? = null,
    value: Float,
    onValueChange: (Float) -> Unit,
    toggleValue: Boolean? = null,
    onToggleChange: (Boolean) -> Unit = {},
    enabled: Boolean = toggleValue ?: true,
    modifier: Modifier = Modifier
) {
    val shouldShowScale = enabled || toggleValue == null
    val selectedIndex = closestApertureStopIndex(value)
    val selectedIndexState by rememberUpdatedState(selectedIndex)
    val enabledState by rememberUpdatedState(enabled)
    val onValueChangeState by rememberUpdatedState(onValueChange)
    val haptic = LocalHapticFeedback.current

    fun selectIndex(index: Int) {
        if (!enabledState || index == selectedIndexState) return
        haptic.performHapticFeedback(HapticFeedbackType.TextHandleMove)
        onValueChangeState(ApertureScaleStops[index])
    }

    Column(
        modifier = modifier
            .fillMaxWidth()
            .padding(vertical = 8.dp)
    ) {
        Row(
            modifier = Modifier.fillMaxWidth(),
            verticalAlignment = Alignment.CenterVertically
        ) {
            Text(
                text = title,
                color = if (enabled) Color.White else Color.White.copy(alpha = 0.45f),
                fontSize = 16.sp,
                fontWeight = FontWeight.Normal
            )

            if (toggleValue != null) {
                Spacer(modifier = Modifier.width(8.dp))
                Switch(
                    checked = toggleValue,
                    onCheckedChange = onToggleChange,
                    modifier = Modifier.scale(0.7f).size(40.dp, 24.dp),
                    colors = SwitchDefaults.colors(
                        checkedThumbColor = OnAccentColor,
                        checkedTrackColor = AccentColor,
                        uncheckedThumbColor = Color.Gray,
                        uncheckedTrackColor = Color.White.copy(alpha = 0.2f),
                        uncheckedBorderColor = Color.Transparent
                    )
                )
            }

            Spacer(modifier = Modifier.weight(1f))

            if (shouldShowScale) {
                Text(
                    text = "f/${formatApertureStop(ApertureScaleStops[selectedIndex])}",
                    color = Color.White.copy(alpha = if (enabled) 0.8f else 0.35f),
                    fontSize = 14.sp,
                    fontWeight = FontWeight.Medium
                )
            }
        }

        description?.let {
            Spacer(modifier = Modifier.height(4.dp))
            Text(
                text = it,
                color = Color.White.copy(alpha = if (enabled) 0.6f else 0.35f),
                fontSize = 13.sp,
                lineHeight = 18.sp
            )
        }

        if (shouldShowScale) {
            Spacer(modifier = Modifier.height(8.dp))
            val stopCount = ApertureScaleStops.size
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .pointerInput(Unit) {
                        detectTapGestures { position ->
                            val cellWidth = size.width.toFloat() / stopCount
                            selectIndex((position.x / cellWidth).toInt().coerceIn(0, stopCount - 1))
                        }
                    }
                    .pointerInput(Unit) {
                        detectHorizontalDragGestures { change, _ ->
                            change.consume()
                            val cellWidth = size.width.toFloat() / stopCount
                            selectIndex((change.position.x / cellWidth).toInt().coerceIn(0, stopCount - 1))
                        }
                    },
                horizontalArrangement = Arrangement.SpaceBetween
            ) {
                ApertureScaleStops.forEachIndexed { index, stop ->
                    val selected = index == selectedIndex
                    val color = when {
                        selected -> AccentColor.copy(alpha = if (enabled) 1f else 0.35f)
                        else -> Color.White.copy(alpha = if (enabled) 0.55f else 0.25f)
                    }
                    Column(
                        modifier = Modifier.weight(1f),
                        horizontalAlignment = Alignment.CenterHorizontally
                    ) {
                        Box(
                            modifier = Modifier.height(18.dp),
                            contentAlignment = Alignment.BottomCenter
                        ) {
                            Box(
                                modifier = Modifier
                                    .width(if (selected) 2.dp else 1.dp)
                                    .height(if (selected) 18.dp else 10.dp)
                                    .background(color, RoundedCornerShape(1.dp))
                            )
                        }
                        Spacer(modifier = Modifier.height(4.dp))
                        Text(
                            text = formatApertureStop(stop),
                            color = color,
                            fontSize = 11.sp,
                            fontWeight = if (selected) FontWeight.SemiBold else FontWeight.Normal,
                            maxLines = 1,
                            softWrap = false
                        )
                    }
                }
            }
        }
    }
}
