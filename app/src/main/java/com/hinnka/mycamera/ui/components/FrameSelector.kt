package com.hinnka.mycamera.ui.components

import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material3.*
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.hinnka.mycamera.R
import com.hinnka.mycamera.frame.FrameInfo
import com.hinnka.mycamera.ui.theme.AccentOrange
import com.hinnka.mycamera.ui.icons.AppIcons

/**
 * 边框选择器组件
 * 
 * 显示可用的边框样式列表，支持选择和预览
 */
@Composable
fun FrameSelector(
    availableFrames: List<FrameInfo>,
    currentFrameId: String?,
    onFrameSelected: (String?) -> Unit,
    modifier: Modifier = Modifier
) {
    Row(
        modifier = modifier
            .fillMaxWidth()
            .horizontalScroll(rememberScrollState()),
        horizontalArrangement = Arrangement.spacedBy(12.dp)
    ) {
        // 无边框选项
        FrameItem(
            name = stringResource(R.string.none),
            isSelected = currentFrameId == null,
            onClick = { onFrameSelected(null) },
            isNone = true
        )
        
        // 边框选项
        availableFrames.forEach { frame ->
            FrameItem(
                name = frame.name,
                isSelected = currentFrameId == frame.id,
                onClick = { onFrameSelected(frame.id) }
            )
        }
    }
}

/**
 * 单个边框选项
 */
@Composable
private fun FrameItem(
    name: String,
    isSelected: Boolean,
    onClick: () -> Unit,
    isNone: Boolean = false,
    modifier: Modifier = Modifier
) {
    Column(
        horizontalAlignment = Alignment.CenterHorizontally,
        modifier = modifier
            .width(72.dp)
            .clickable { onClick() }
    ) {
        Box(
            modifier = Modifier
                .size(56.dp)
                .clip(RoundedCornerShape(8.dp))
                .background(
                    if (isSelected) AccentOrange.copy(alpha = 0.2f)
                    else Color.White.copy(alpha = 0.1f)
                )
                .then(
                    if (isSelected) Modifier.border(2.dp, AccentOrange, RoundedCornerShape(8.dp))
                    else Modifier.border(1.dp, Color.White.copy(alpha = 0.2f), RoundedCornerShape(8.dp))
                ),
            contentAlignment = Alignment.Center
        ) {
            if (isNone) {
                Icon(
                    imageVector = AppIcons.Image,
                    contentDescription = null,
                    tint = if (isSelected) AccentOrange else Color.White.copy(alpha = 0.6f),
                    modifier = Modifier.size(24.dp)
                )
            } else {
                // 显示边框预览图标
                Icon(
                    imageVector = AppIcons.Crop169,
                    contentDescription = null,
                    tint = if (isSelected) AccentOrange else Color.White.copy(alpha = 0.6f),
                    modifier = Modifier.size(24.dp)
                )
            }
        }
        
        Spacer(modifier = Modifier.height(4.dp))
        
        Text(
            text = name,
            color = if (isSelected) AccentOrange else Color.White.copy(alpha = 0.7f),
            fontSize = 11.sp,
            maxLines = 1,
            overflow = TextOverflow.Ellipsis,
            textAlign = TextAlign.Center
        )
    }
}

/**
 * 边框控制面板
 * 
 * 包含边框选择器和 App 品牌开关
 */
@Composable
fun FrameControlPanel(
    availableFrames: List<FrameInfo>,
    currentFrameId: String?,
    showAppBranding: Boolean,
    onFrameSelected: (String?) -> Unit,
    onBrandingToggle: (Boolean) -> Unit,
    modifier: Modifier = Modifier
) {
    Column(modifier = modifier) {
        // 边框选择器
        FrameSelector(
            availableFrames = availableFrames,
            currentFrameId = currentFrameId,
            onFrameSelected = onFrameSelected
        )
        
        // 仅当选择了边框时显示品牌开关
        if (currentFrameId != null) {
            Spacer(modifier = Modifier.height(12.dp))
            
            Row(
                modifier = Modifier.fillMaxWidth(),
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.SpaceBetween
            ) {
                Text(
                    text = stringResource(R.string.show_app_branding),
                    color = Color.White,
                    fontSize = 14.sp
                )
                
                Switch(
                    checked = showAppBranding,
                    onCheckedChange = onBrandingToggle,
                    colors = SwitchDefaults.colors(
                        checkedThumbColor = AccentOrange,
                        checkedTrackColor = AccentOrange.copy(alpha = 0.5f),
                        uncheckedThumbColor = Color.Gray,
                        uncheckedTrackColor = Color.Gray.copy(alpha = 0.3f)
                    )
                )
            }
        }
    }
}
