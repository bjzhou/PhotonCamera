package com.hinnka.mycamera.ui.camera

import androidx.compose.animation.*
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.AutoAwesome
import androidx.compose.material.icons.filled.ChevronRight
import androidx.compose.material.icons.filled.Settings
import androidx.compose.material3.*
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.hinnka.mycamera.R
import com.hinnka.mycamera.camera.AspectRatio

@Composable
fun CameraTopSheet(
    visible: Boolean,
    aspectRatio: AspectRatio,
    onAspectRatioChange: (AspectRatio) -> Unit,
    showLevel: Boolean,
    onLevelToggle: (Boolean) -> Unit,
    useRaw: Boolean,
    onRawToggle: (Boolean) -> Unit,
    isRawSupported: Boolean,
    nrLevel: Int,
    availableNrLevels: IntArray,
    onNRLevelChange: (Int) -> Unit,
    onFilterManageClick: () -> Unit,
    onMoreSettingsClick: () -> Unit,
    useMultiFrame: Boolean,
    onMultiFrameToggle: (Boolean) -> Unit,
    useSuperResolution: Boolean,
    onSuperResolutionToggle: (Boolean) -> Unit,
    showGrid: Boolean,
    onShowGridToggle: (Boolean) -> Unit,
    modifier: Modifier = Modifier
) {
    AnimatedVisibility(
        visible = visible,
        enter = slideInVertically(initialOffsetY = { -it }) + fadeIn(),
        exit = slideOutVertically(targetOffsetY = { -it }) + fadeOut(),
        modifier = modifier
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .clip(RoundedCornerShape(bottomStart = 24.dp, bottomEnd = 24.dp))
                .background(Color.Black.copy(alpha = 0.8f))
                .padding(top = 48.dp, bottom = 24.dp, start = 24.dp, end = 24.dp)
        ) {
            // Aspect Ratio Section
            Text(
                text = stringResource(R.string.aspect_ratio),
                color = Color.White.copy(alpha = 0.6f),
                fontSize = 12.sp,
                fontWeight = FontWeight.Medium,
                modifier = Modifier.padding(bottom = 12.dp)
            )
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(10.dp)
            ) {
                AspectRatio.entries.forEach { ratio ->
                    val isSelected = aspectRatio == ratio
                    Box(
                        modifier = Modifier
                            .weight(1f)
                            .height(48.dp)
                            .clip(RoundedCornerShape(12.dp))
                            .background(if (isSelected) Color(0xFFFF6B35) else Color.White.copy(alpha = 0.15f))
                            .clickable { onAspectRatioChange(ratio) },
                        contentAlignment = Alignment.Center
                    ) {
                        Text(
                            text = ratio.getDisplayName(),
                            color = Color.White,
                            fontSize = 14.sp,
                            fontWeight = if (isSelected) FontWeight.Bold else FontWeight.Normal
                        )
                    }
                }
            }

            Spacer(modifier = Modifier.height(24.dp))

            // Display settings section (Grid & Level)
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(10.dp)
            ) {
                // Multi-Frame Stacking Toggle
                QuickSettingToggle(
                    title = stringResource(R.string.settings_use_multi_frame),
                    checked = useMultiFrame,
                    onCheckedChange = onMultiFrameToggle,
                    modifier = Modifier.weight(1f)
                )

                QuickSettingToggle(
                    title = stringResource(R.string.settings_use_super_resolution),
                    checked = useSuperResolution,
                    onCheckedChange = onSuperResolutionToggle,
                    modifier = Modifier.weight(1f)
                )

                // RAW Toggle (if supported)
                if (isRawSupported) {
                    QuickSettingToggle(
                        title = stringResource(R.string.settings_use_raw),
                        checked = useRaw,
                        onCheckedChange = onRawToggle,
                        modifier = Modifier.weight(1f)
                    )
                }
            }

            Spacer(modifier = Modifier.height(12.dp))

            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(10.dp)
            ) {
                // Level Indicator Toggle
                QuickSettingToggle(
                    title = stringResource(R.string.settings_level_indicator),
                    checked = showLevel,
                    onCheckedChange = onLevelToggle,
                    modifier = Modifier.weight(1f)
                )

                // Grid Toggle
                QuickSettingToggle(
                    title = stringResource(R.string.grid),
                    checked = showGrid,
                    onCheckedChange = onShowGridToggle,
                    modifier = Modifier.weight(1f)
                )

                // NR Level Cycle
                val nrLevelNames = availableNrLevels.map {
                    when (it) {
                        0 -> stringResource(R.string.settings_nr_level_off)
                        1 -> stringResource(R.string.settings_nr_level_fast)
                        2 -> stringResource(R.string.settings_nr_level_high_quality)
                        3 -> stringResource(R.string.settings_nr_level_minimal)
                        4 -> stringResource(R.string.settings_nr_level_zsl)
                        else -> "Unknown"
                    }
                }
                QuickSettingValue(
                    title = stringResource(R.string.settings_nr_level),
                    value = nrLevelNames.getOrElse(nrLevel) { "Unknown" },
                    onClick = {
                        val nextIndex = (availableNrLevels.indexOf(nrLevel) + 1) % availableNrLevels.size
                        val nextLevel = availableNrLevels[nextIndex]
                        onNRLevelChange(nextLevel)
                    },
                    modifier = Modifier.weight(1f)
                )
            }

            Spacer(modifier = Modifier.height(12.dp))

            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(10.dp)
            ) {

                // Filter Management Button
                QuickSettingButton(
                    title = stringResource(R.string.settings_filter_management),
                    icon = Icons.Default.AutoAwesome,
                    onClick = onFilterManageClick,
                    modifier = Modifier.weight(1f)
                )

                QuickSettingButton(
                    title = stringResource(R.string.settings_title),
                    icon = Icons.Default.Settings,
                    onClick = onMoreSettingsClick,
                    modifier = Modifier.weight(1f)
                )
            }

//            Spacer(modifier = Modifier.height(24.dp))

            // More Settings Button
            /*Surface(
                onClick = onMoreSettingsClick,
                color = Color.White.copy(alpha = 0.05f),
                shape = RoundedCornerShape(12.dp),
                modifier = Modifier.fillMaxWidth()
            ) {
                Row(
                    modifier = Modifier
                        .padding(16.dp),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Box(
                        modifier = Modifier
                            .size(32.dp)
                            .clip(RoundedCornerShape(8.dp))
                            .background(Color.White.copy(alpha = 0.1f)),
                        contentAlignment = Alignment.Center
                    ) {
                        Icon(
                            imageVector = Icons.Default.Settings,
                            contentDescription = null,
                            tint = Color.White,
                            modifier = Modifier.size(18.dp)
                        )
                    }
                    Spacer(modifier = Modifier.width(12.dp))
                    Text(
                        text = stringResource(R.string.settings_title),
                        color = Color.White,
                        fontSize = 15.sp,
                        fontWeight = FontWeight.Medium,
                        modifier = Modifier.weight(1f)
                    )
                    Icon(
                        imageVector = Icons.Default.ChevronRight,
                        contentDescription = null,
                        tint = Color.White.copy(alpha = 0.3f),
                        modifier = Modifier.size(20.dp)
                    )
                }
            }*/
        }
    }
}

@Composable
fun QuickSettingValue(
    title: String,
    value: String,
    onClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    Box(
        modifier = modifier
            .height(48.dp)
            .clip(RoundedCornerShape(12.dp))
            .background(Color.White.copy(alpha = 0.15f))
            .clickable { onClick() }
            .padding(horizontal = 16.dp),
        contentAlignment = Alignment.CenterStart
    ) {
        Column(modifier = Modifier.fillMaxHeight(), verticalArrangement = Arrangement.SpaceEvenly) {
            Text(
                text = title,
                color = Color.White.copy(alpha = 0.6f),
                fontSize = 8.sp,
                lineHeight = 8.sp,
                fontWeight = FontWeight.Normal,
            )
            Text(
                text = value,
                color = Color.White,
                fontSize = 10.sp,
                lineHeight = 10.sp,
                fontWeight = FontWeight.Medium
            )
        }
    }
}

@Composable
fun QuickSettingButton(
    title: String,
    icon: androidx.compose.ui.graphics.vector.ImageVector,
    onClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    Box(
        modifier = modifier
            .height(56.dp)
            .clip(RoundedCornerShape(12.dp))
            .background(Color.White.copy(alpha = 0.05f))
            .clickable { onClick() }
            .padding(horizontal = 16.dp),
        contentAlignment = Alignment.CenterStart
    ) {
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Text(
                text = title,
                color = Color.White,
                fontSize = 14.sp,
                fontWeight = FontWeight.Normal
            )
            Icon(
                imageVector = icon,
                contentDescription = null,
                tint = Color.White.copy(alpha = 0.6f),
                modifier = Modifier.size(18.dp)
            )
        }
    }
}

@Composable
fun QuickSettingToggle(
    title: String,
    checked: Boolean,
    onCheckedChange: (Boolean) -> Unit,
    modifier: Modifier = Modifier
) {
    Box(
        modifier = modifier
            .height(48.dp)
            .clip(RoundedCornerShape(12.dp))
            .background(if (checked) Color(0xFFFF6B35).copy(alpha = 0.15f) else Color.White.copy(alpha = 0.15f))
            .clickable { onCheckedChange(!checked) }
            .padding(horizontal = 16.dp),
        contentAlignment = Alignment.CenterStart
    ) {
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Text(
                text = title,
                color = if (checked) Color(0xFFFF6B35) else Color.White.copy(alpha = 0.9f),
                fontSize = 10.sp,
                lineHeight = 10.sp,
                fontWeight = if (checked) FontWeight.Bold else FontWeight.Normal,
                modifier = Modifier.weight(1f)
            )

            // Simple indicator
            Box(
                modifier = Modifier
                    .size(8.dp)
                    .clip(androidx.compose.foundation.shape.CircleShape)
                    .background(if (checked) Color(0xFFFF6B35) else Color.White.copy(alpha = 0.2f))
            )
        }
    }
}
