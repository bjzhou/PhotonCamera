package com.hinnka.mycamera.ui.components

import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.material3.*
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.scale
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp

/**
 * 滑块设置项
 */
@Composable
fun SliderSettingItem(
    title: String,
    description: String? = null,
    value: Float,
    valueRange: ClosedFloatingPointRange<Float>,
    onValueChange: (Float) -> Unit,
    toggleValue: Boolean? = null,
    onToggleChange: (Boolean) -> Unit = {},
    modifier: Modifier = Modifier
) {
    val enabled = toggleValue ?: true
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
                color = Color.White,
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
                        checkedThumbColor = Color.White,
                        checkedTrackColor = Color(0xFFFF6B35),
                        uncheckedThumbColor = Color.Gray,
                        uncheckedTrackColor = Color.White.copy(alpha = 0.2f),
                        uncheckedBorderColor = Color.Transparent
                    )
                )
            }

            Spacer(modifier = Modifier.weight(1f))
            
            if (enabled) {
                Text(
                    text = String.format("%.2f", value),
                    color = Color.White.copy(alpha = 0.8f),
                    fontSize = 14.sp,
                    fontWeight = FontWeight.Medium
                )
            }
        }
        
        description?.let {
            Spacer(modifier = Modifier.height(4.dp))
            Text(
                text = it,
                color = Color.White.copy(alpha = 0.6f),
                fontSize = 13.sp,
                lineHeight = 18.sp
            )
        }
        
        if (enabled) {
            Spacer(modifier = Modifier.height(8.dp))

            CustomSliderThinThumb(
                value = value,
                onValueChange = onValueChange,
                valueRange = valueRange,
                thumbColor = Color.White,
                activeTrackColor = Color(0xFFFF6B35),
                inactiveTrackColor = Color.White.copy(alpha = 0.2f)
            )
        }
    }
}
