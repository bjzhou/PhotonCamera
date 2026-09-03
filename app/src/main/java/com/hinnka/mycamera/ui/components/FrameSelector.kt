package com.hinnka.mycamera.ui.components

import androidx.compose.foundation.background
import androidx.compose.foundation.basicMarquee
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.*
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.hinnka.mycamera.R
import com.hinnka.mycamera.frame.FrameInfo
import com.hinnka.mycamera.ui.camera.ViewfinderTextShadow
import com.hinnka.mycamera.ui.theme.AccentOrange

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
    val listState = rememberLazyListState()

    LaunchedEffect(currentFrameId, availableFrames) {
        val selectedIndex = currentFrameId
            ?.let { frameId -> availableFrames.indexOfFirst { it.id == frameId } }
            ?.takeIf { it >= 0 }
            ?.plus(1)
            ?: 0
        listState.scrollToItem((selectedIndex - 1).coerceAtLeast(0))
    }

    LazyRow(
        modifier = modifier.fillMaxWidth(),
        state = listState,
        horizontalArrangement = Arrangement.spacedBy(8.dp),
        contentPadding = PaddingValues(horizontal = 4.dp)
    ) {
        // 无边框选项
        item(key = "frame:none") {
            FrameItem(
                name = stringResource(R.string.none),
                isSelected = currentFrameId == null,
                onClick = { onFrameSelected(null) }
            )
        }
        
        // 边框选项
        items(availableFrames, key = { it.id }) { frame ->
            FrameItem(
                name = frame.name,
                isSelected = currentFrameId == frame.id,
                isCustom = !frame.isBuiltIn,
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
    isCustom: Boolean = false,
    modifier: Modifier = Modifier
) {
    val backgroundColor = if (isSelected) {
        Color.White.copy(alpha = 0.2f)
    } else {
        Color.Transparent
    }

    val borderColor = if (isSelected) {
        Color.White
    } else {
        Color.White.copy(alpha = 0.2f)
    }

    Column(
        horizontalAlignment = Alignment.CenterHorizontally,
        modifier = modifier
            .width(56.dp)
            .clip(RoundedCornerShape(8.dp))
            .background(backgroundColor)
            .border(
                width = if (isSelected) 1.5.dp else 1.dp,
                color = borderColor,
                shape = RoundedCornerShape(8.dp)
            )
            .clickable { onClick() }
            .padding(horizontal = 4.dp, vertical = 5.dp)
    ) {
        Box(
            modifier = Modifier
                .size(42.dp)
                .clip(RoundedCornerShape(5.dp))
                .background(if (isSelected) Color.White.copy(alpha = 0.15f) else Color.White.copy(alpha = 0.08f)),
            contentAlignment = Alignment.Center
        ) {
            Text(
                text = name.take(2).uppercase(),
                color = Color.White,
                fontSize = 13.sp,
                fontWeight = FontWeight.Bold,
                style = LocalTextStyle.current.copy(shadow = ViewfinderTextShadow)
            )

            if (isCustom) {
                Box(
                    modifier = Modifier
                        .align(Alignment.TopStart)
                        .background(
                            color = Color(0xFF4CAF50),
                            shape = RoundedCornerShape(bottomEnd = 4.dp)
                        )
                        .padding(horizontal = 3.dp, vertical = 1.dp)
                ) {
                    Text(
                        text = stringResource(R.string.custom_tag),
                        color = Color.White,
                        fontSize = 7.sp,
                        fontWeight = FontWeight.Bold,
                        lineHeight = 7.sp
                    )
                }
            }
        }
        
        Spacer(modifier = Modifier.height(4.dp))
        
        Text(
            text = name,
            color = Color.White,
            fontSize = 10.sp,
            fontWeight = if (isSelected) FontWeight.SemiBold else FontWeight.Normal,
            maxLines = 1,
            overflow = TextOverflow.Ellipsis,
            textAlign = TextAlign.Center,
            style = LocalTextStyle.current.copy(shadow = ViewfinderTextShadow),
            modifier = Modifier.fillMaxWidth().basicMarquee()
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
                    fontSize = 14.sp,
                    style = LocalTextStyle.current.copy(shadow = ViewfinderTextShadow)
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
