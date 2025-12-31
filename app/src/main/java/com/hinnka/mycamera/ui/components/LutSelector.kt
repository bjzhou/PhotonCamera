package com.hinnka.mycamera.ui.components

import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Check
import androidx.compose.material.icons.filled.FilterNone
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Slider
import androidx.compose.material3.SliderDefaults
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.hinnka.mycamera.lut.LutInfo

/**
 * LUT 选择器组件
 * 
 * 显示可用的 LUT 列表，支持选择和预览
 */
@Composable
fun LutSelector(
    availableLuts: List<LutInfo>,
    currentLutId: String?,
    onLutSelected: (String?) -> Unit,
    modifier: Modifier = Modifier
) {
    Row(
        modifier = modifier
            .fillMaxWidth()
            .horizontalScroll(rememberScrollState())
            .padding(vertical = 8.dp),
        horizontalArrangement = Arrangement.spacedBy(12.dp)
    ) {
        // "无滤镜" 选项
        LutItem(
            name = "原图",
            isSelected = currentLutId == null,
            onClick = { onLutSelected(null) },
            isNone = true
        )
        
        // LUT 列表
        availableLuts.forEach { lut ->
            LutItem(
                name = lut.name,
                isSelected = currentLutId == lut.id,
                onClick = { onLutSelected(lut.id) }
            )
        }
    }
}

/**
 * 单个 LUT 选项
 */
@Composable
private fun LutItem(
    name: String,
    isSelected: Boolean,
    onClick: () -> Unit,
    isNone: Boolean = false,
    modifier: Modifier = Modifier
) {
    val backgroundColor = if (isSelected) {
        Color.White.copy(alpha = 0.3f)
    } else {
        Color.Black.copy(alpha = 0.5f)
    }
    
    val borderColor = if (isSelected) {
        Color.White
    } else {
        Color.Gray.copy(alpha = 0.5f)
    }
    
    Column(
        modifier = modifier
            .width(72.dp)
            .clip(RoundedCornerShape(8.dp))
            .background(backgroundColor)
            .border(
                width = if (isSelected) 2.dp else 1.dp,
                color = borderColor,
                shape = RoundedCornerShape(8.dp)
            )
            .clickable(onClick = onClick)
            .padding(8.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.Center
    ) {
        // 预览区域
        Box(
            modifier = Modifier
                .size(56.dp)
                .clip(RoundedCornerShape(4.dp))
                .then(
                    if (isNone) {
                        Modifier.background(Color.DarkGray)
                    } else {
                        // 模拟滤镜预览的渐变色
                        Modifier.background(
                            Brush.linearGradient(
                                colors = listOf(
                                    Color(0xFF4A148C),
                                    Color(0xFF00897B),
                                    Color(0xFFFF6F00)
                                )
                            )
                        )
                    }
                ),
            contentAlignment = Alignment.Center
        ) {
            if (isNone) {
                Icon(
                    imageVector = Icons.Default.FilterNone,
                    contentDescription = null,
                    tint = Color.White.copy(alpha = 0.7f),
                    modifier = Modifier.size(24.dp)
                )
            }
            
            if (isSelected) {
                Box(
                    modifier = Modifier
                        .fillMaxSize()
                        .background(Color.Black.copy(alpha = 0.4f)),
                    contentAlignment = Alignment.Center
                ) {
                    Icon(
                        imageVector = Icons.Default.Check,
                        contentDescription = "Selected",
                        tint = Color.White,
                        modifier = Modifier.size(24.dp)
                    )
                }
            }
        }
        
        Spacer(modifier = Modifier.height(4.dp))
        
        // 名称
        Text(
            text = name,
            color = Color.White,
            fontSize = 10.sp,
            fontWeight = if (isSelected) FontWeight.Bold else FontWeight.Normal,
            maxLines = 1,
            overflow = TextOverflow.Ellipsis,
            textAlign = TextAlign.Center,
            modifier = Modifier.fillMaxWidth()
        )
    }
}

/**
 * LUT 强度滑块组件
 */
@Composable
fun LutIntensitySlider(
    intensity: Float,
    onIntensityChange: (Float) -> Unit,
    enabled: Boolean = true,
    modifier: Modifier = Modifier
) {
    Column(
        modifier = modifier
            .fillMaxWidth()
            .background(
                Color.Black.copy(alpha = 0.6f),
                RoundedCornerShape(8.dp)
            )
            .padding(horizontal = 16.dp, vertical = 8.dp)
    ) {
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Text(
                text = "滤镜强度",
                color = if (enabled) Color.White else Color.Gray,
                fontSize = 12.sp
            )
            
            Text(
                text = "${(intensity * 100).toInt()}%",
                color = if (enabled) Color.White else Color.Gray,
                fontSize = 12.sp,
                fontWeight = FontWeight.Bold
            )
        }
        
        Slider(
            value = intensity,
            onValueChange = onIntensityChange,
            enabled = enabled,
            valueRange = 0f..1f,
            colors = SliderDefaults.colors(
                thumbColor = Color.White,
                activeTrackColor = Color.White,
                inactiveTrackColor = Color.Gray.copy(alpha = 0.5f),
                disabledThumbColor = Color.Gray,
                disabledActiveTrackColor = Color.Gray.copy(alpha = 0.5f),
                disabledInactiveTrackColor = Color.Gray.copy(alpha = 0.3f)
            ),
            modifier = Modifier.fillMaxWidth()
        )
    }
}

/**
 * LUT 控制面板
 * 
 * 包含 LUT 选择器和强度滑块
 */
@Composable
fun LutControlPanel(
    availableLuts: List<LutInfo>,
    currentLutId: String?,
    lutIntensity: Float,
    onLutSelected: (String?) -> Unit,
    onIntensityChange: (Float) -> Unit,
    modifier: Modifier = Modifier
) {
    Column(
        modifier = modifier
            .fillMaxWidth()
            .background(
                Color.Black.copy(alpha = 0.7f),
                RoundedCornerShape(topStart = 16.dp, topEnd = 16.dp)
            )
            .padding(16.dp),
        verticalArrangement = Arrangement.spacedBy(12.dp)
    ) {
        // 标题
        Text(
            text = "滤镜",
            color = Color.White,
            fontSize = 16.sp,
            fontWeight = FontWeight.Bold
        )
        
        // LUT 选择器
        LutSelector(
            availableLuts = availableLuts,
            currentLutId = currentLutId,
            onLutSelected = onLutSelected
        )
        
        // 强度滑块（仅当选择了 LUT 时显示）
        if (currentLutId != null) {
            LutIntensitySlider(
                intensity = lutIntensity,
                onIntensityChange = onIntensityChange,
                enabled = true
            )
        }
    }
}
