package com.hinnka.mycamera.ui.components

import androidx.compose.animation.animateColorAsState
import androidx.compose.foundation.background
import androidx.compose.foundation.basicMarquee
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.combinedClickable
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Add
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.hapticfeedback.HapticFeedbackType
import androidx.compose.ui.platform.LocalHapticFeedback
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.hinnka.mycamera.R
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.model.CameraPreset
import com.hinnka.mycamera.raw.RawRenderingEngine

/**
 * 拍摄预设面板组件 (取代原先的 PresetDial 拨盘)
 */
@Composable
fun PresetsPanel(
    activePresetId: String?,
    allPresets: List<CameraPreset>,
    onPresetSelected: (CameraPreset?) -> Unit,
    onCreatePreset: () -> Unit,
    onManagePresets: () -> Unit,
    modifier: Modifier = Modifier
) {
    val haptic = LocalHapticFeedback.current
    val scrollState = rememberScrollState()

    Column(
        modifier = modifier
            .fillMaxWidth()
            .padding(vertical = 12.dp),
        horizontalAlignment = Alignment.CenterHorizontally
    ) {
        // 横向滑动的预设列表
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .horizontalScroll(scrollState)
                .padding(horizontal = 16.dp),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            // “新建预设”卡片
            Card(
                shape = RoundedCornerShape(16.dp),
                colors = CardDefaults.cardColors(containerColor = Color.Black.copy(alpha = 0.3f)),
                modifier = Modifier
                    .width(80.dp)
                    .height(80.dp)
                    .clip(RoundedCornerShape(16.dp))
                    .clickable {
                        haptic.performHapticFeedback(HapticFeedbackType.LongPress)
                        onCreatePreset()
                    }
                    .border(1.dp, Color.White.copy(alpha = 0.15f), RoundedCornerShape(16.dp))
            ) {
                Column(
                    modifier = Modifier.fillMaxSize(),
                    verticalArrangement = Arrangement.Center,
                    horizontalAlignment = Alignment.CenterHorizontally
                ) {
                    Icon(
                        imageVector = Icons.Default.Add,
                        contentDescription = stringResource(R.string.preset_new),
                        tint = Color.White.copy(alpha = 0.8f),
                        modifier = Modifier.size(22.dp)
                    )
                    Spacer(modifier = Modifier.height(6.dp))
                    Text(
                        text = stringResource(R.string.preset_new),
                        color = Color.White.copy(alpha = 0.8f),
                        fontSize = 11.sp,
                        fontWeight = FontWeight.Medium,
                        textAlign = TextAlign.Center
                    )
                }
            }

            // 各个预设卡片
            allPresets.forEach { preset ->
                val isSelected = activePresetId == preset.id
                val presetBorderColor by animateColorAsState(
                    targetValue = if (isSelected) Color(0xFFFFD700) else Color.White.copy(alpha = 0.15f),
                    label = "presetBorderColor"
                )

                // 翻译内置预设名字
                val displayName = when (preset.id) {
                    "builtin_default" -> stringResource(R.string.default_text)
                    "builtin_portrait" -> stringResource(R.string.preset_builtin_portrait)
                    "builtin_classic_film" -> stringResource(R.string.preset_builtin_classic_film)
                    "builtin_monochrome" -> stringResource(R.string.preset_builtin_monochrome)
                    "builtin_cinematic" -> stringResource(R.string.preset_builtin_cinematic)
                    "builtin_leica_m9_moment" -> stringResource(R.string.preset_builtin_leica_m9_moment)
                    else -> preset.name
                }

                Card(
                    shape = RoundedCornerShape(16.dp),
                    colors = CardDefaults.cardColors(
                        containerColor = if (isSelected) Color(0xFFFFD700).copy(alpha = 0.1f) else Color.Black.copy(alpha = 0.15f)
                    ),
                    modifier = Modifier
                        .width(80.dp)
                        .height(80.dp)
                        .clip(RoundedCornerShape(16.dp))
                        .combinedClickable(
                            onClick = {
                                haptic.performHapticFeedback(HapticFeedbackType.LongPress)
                                onPresetSelected(preset)
                            },
                            onLongClick = {
                                haptic.performHapticFeedback(HapticFeedbackType.LongPress)
                                onManagePresets()
                            }
                        )
                        .border(1.2.dp, presetBorderColor, RoundedCornerShape(16.dp))
                ) {
                    Column(
                        modifier = Modifier
                            .fillMaxSize()
                            .padding(8.dp),
                        verticalArrangement = Arrangement.Center,
                        horizontalAlignment = Alignment.CenterHorizontally
                    ) {
                        // 预设名
                        Text(
                            text = displayName,
                            color = if (isSelected) Color(0xFFFFD700) else Color.White,
                            fontSize = 11.sp,
                            fontWeight = FontWeight.SemiBold,
                            textAlign = TextAlign.Center,
                            maxLines = 1,
                            overflow = TextOverflow.Ellipsis,
                            modifier = Modifier.padding(horizontal = 2.dp).basicMarquee()
                        )

                        Spacer(Modifier.height(8.dp))

                        // 包含的特性微小徽章（Film, Lut, DCP等）
                        Row(
                            horizontalArrangement = Arrangement.spacedBy(4.dp),
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            val rawRenderingEngine = RawRenderingEngine.fromPersistedName(preset.rawRenderingEngine)
                            FeatureBadge(text = AspectRatio.valueOf(preset.aspectRatio).getDisplayName())
                            if (rawRenderingEngine == RawRenderingEngine.Spektrafilm) {
                                FeatureBadge(text = "FILM")
                            }
                            if (rawRenderingEngine == RawRenderingEngine.AdobeCurve && preset.hasRawDcpSelection()) {
                                FeatureBadge(text = "DCP")
                            } else if (preset.lutId != null) {
                                FeatureBadge(text = "LUT")
                            } else if (preset.frameId != null) {
                                FeatureBadge(text = "FRAME")
                            }
                        }
                    }
                }
            }
        }
    }
}

@Composable
private fun FeatureBadge(text: String) {
    Box(
        modifier = Modifier
            .clip(RoundedCornerShape(3.dp))
            .background(Color.White.copy(alpha = 0.12f))
            .padding(horizontal = 4.dp)
    ) {
        Text(
            text = text,
            color = Color.White.copy(alpha = 0.6f),
            fontSize = 6.sp,
            fontWeight = FontWeight.Bold
        )
    }
}
