package com.hinnka.mycamera.ui.components

import androidx.compose.foundation.layout.*
import androidx.compose.material3.*
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.hinnka.mycamera.ui.theme.AccentOrange

/**
 * 开关设置项
 */
@Composable
fun SwitchSettingItem(
    title: String,
    description: String? = null,
    checked: Boolean,
    onCheckedChange: (Boolean) -> Unit,
    modifier: Modifier = Modifier
) {
    Column(
        modifier = modifier
            .fillMaxWidth()
            .padding(vertical = 8.dp)
    ) {
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Column(modifier = Modifier.weight(1f)) {
                Text(
                    text = title,
                    color = Color.White,
                    fontSize = 16.sp,
                    fontWeight = FontWeight.Normal
                )
                description?.let {
                    Spacer(modifier = Modifier.height(2.dp))
                    Text(
                        text = it,
                        color = Color.White.copy(alpha = 0.6f),
                        fontSize = 13.sp,
                        lineHeight = 18.sp
                    )
                }
            }

            Switch(
                checked = checked,
                onCheckedChange = onCheckedChange,
                colors = SwitchDefaults.colors(
                    checkedThumbColor = Color.White,
                    checkedTrackColor = AccentOrange,
                    uncheckedThumbColor = Color.Gray,
                    uncheckedTrackColor = Color.White.copy(alpha = 0.2f),
                    uncheckedBorderColor = Color.Transparent
                )
            )
        }
    }
}
