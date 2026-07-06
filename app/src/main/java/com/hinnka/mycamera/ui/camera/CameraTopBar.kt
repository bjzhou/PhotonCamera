package com.hinnka.mycamera.ui.camera

import androidx.compose.animation.core.*
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Settings
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.hinnka.mycamera.R
import com.hinnka.mycamera.video.CaptureMode
import com.hinnka.mycamera.video.QuickShotCapabilities
import com.hinnka.mycamera.video.QuickShotConfig
import com.hinnka.mycamera.video.QuickShotResolutionPreset
import com.hinnka.mycamera.video.VideoAspectRatio
import com.hinnka.mycamera.video.VideoCapabilities
import com.hinnka.mycamera.video.VideoConfig
import com.hinnka.mycamera.video.VideoLogProfile
import com.hinnka.mycamera.video.VideoResolutionPreset
import com.hinnka.mycamera.ui.icons.AppIcons

@Composable
fun CameraTopBar(
    captureMode: CaptureMode,
    isRecording: Boolean,
    recordingElapsedMs: Long,
    flashMode: Int,
    onFlashToggle: () -> Unit,
    timerSeconds: Int,
    onTimerToggle: () -> Unit,
    showHistogram: Boolean,
    onHistogramToggle: () -> Unit,
    useLivePhoto: Boolean,
    onLivePhotoToggle: () -> Unit,
    quickShotConfig: QuickShotConfig,
    quickShotCapabilities: QuickShotCapabilities,
    onQuickShotResolutionClick: () -> Unit,
    videoConfig: VideoConfig,
    videoCapabilities: VideoCapabilities,
    onVideoTorchToggle: () -> Unit,
    onVideoStabilizationToggle: () -> Unit,
    onVideoResolutionClick: () -> Unit,
    onVideoFpsClick: () -> Unit,
    onSettingsClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    if (captureMode == CaptureMode.VIDEO) {
        VideoTopBar(
            isRecording = isRecording,
            recordingElapsedMs = recordingElapsedMs,
            videoConfig = videoConfig,
            videoCapabilities = videoCapabilities,
            onVideoTorchToggle = onVideoTorchToggle,
            onVideoStabilizationToggle = onVideoStabilizationToggle,
            onVideoResolutionClick = onVideoResolutionClick,
            onVideoFpsClick = onVideoFpsClick,
            onSettingsClick = onSettingsClick,
            modifier = modifier
        )
        return
    }

    if (captureMode == CaptureMode.QUICK_SHOT) {
        QuickShotTopBar(
            flashMode = flashMode,
            onFlashToggle = onFlashToggle,
            timerSeconds = timerSeconds,
            onTimerToggle = onTimerToggle,
            showHistogram = showHistogram,
            onHistogramToggle = onHistogramToggle,
            quickShotConfig = quickShotConfig,
            quickShotCapabilities = quickShotCapabilities,
            onQuickShotResolutionClick = onQuickShotResolutionClick,
            onSettingsClick = onSettingsClick,
            modifier = modifier
        )
        return
    }

    Row(
        modifier = modifier
            .fillMaxWidth()
            .padding(top = 32.dp),
        horizontalArrangement = Arrangement.SpaceBetween,
        verticalAlignment = Alignment.CenterVertically
    ) {
        IconButton(onClick = onFlashToggle) {
            Icon(
                imageVector = when (flashMode) {
                    0 -> AppIcons.FlashOff
                    1 -> AppIcons.FlashOn
                    2 -> AppIcons.FlashlightOn
                    else -> AppIcons.FlashOff
                },
                modifier = Modifier.size(20.dp).autoRotate(),
                contentDescription = stringResource(R.string.flash),
                tint = Color.White
            )
        }

        IconButton(onClick = onTimerToggle) {
            if (timerSeconds > 0) {
                Text(
                    text = "${timerSeconds}s",
                    color = Color.Yellow,
                    fontSize = 14.sp,
                    fontWeight = FontWeight.Bold,
                    modifier = Modifier.autoRotate()
                )
            } else {
                Icon(
                    imageVector = AppIcons.Timer,
                    contentDescription = stringResource(R.string.timer),
                    modifier = Modifier.size(20.dp).autoRotate(),
                    tint = Color.White
                )
            }
        }

        IconButton(onClick = onLivePhotoToggle) {
            Icon(
                painterResource(R.drawable.ic_live_photo),
                contentDescription = stringResource(R.string.settings_use_live_photo),
                modifier = Modifier.size(20.dp).autoRotate(),
                tint = if (useLivePhoto) Color.Yellow else Color.White
            )
        }

        IconButton(onClick = onHistogramToggle) {
            Icon(
                imageVector = AppIcons.BarChart,
                contentDescription = stringResource(R.string.histogram),
                modifier = Modifier.size(20.dp).autoRotate(),
                tint = if (showHistogram) Color.Yellow else Color.White
            )
        }

        IconButton(onClick = onSettingsClick) {
            Icon(
                imageVector = Icons.Default.Settings,
                contentDescription = stringResource(R.string.settings),
                modifier = Modifier.size(20.dp).autoRotate(),
                tint = Color.White
            )
        }
    }
}

@Composable
private fun QuickShotTopBar(
    flashMode: Int,
    onFlashToggle: () -> Unit,
    timerSeconds: Int,
    onTimerToggle: () -> Unit,
    showHistogram: Boolean,
    onHistogramToggle: () -> Unit,
    quickShotConfig: QuickShotConfig,
    quickShotCapabilities: QuickShotCapabilities,
    onQuickShotResolutionClick: () -> Unit,
    onSettingsClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    Row(
        modifier = modifier
            .fillMaxWidth()
            .padding(top = 32.dp),
        horizontalArrangement = Arrangement.SpaceBetween,
        verticalAlignment = Alignment.CenterVertically
    ) {
        IconButton(onClick = onFlashToggle) {
            Icon(
                imageVector = when (flashMode) {
                    0 -> AppIcons.FlashOff
                    1 -> AppIcons.FlashOn
                    2 -> AppIcons.FlashlightOn
                    else -> AppIcons.FlashOff
                },
                modifier = Modifier.size(20.dp).autoRotate(),
                contentDescription = stringResource(R.string.flash),
                tint = Color.White
            )
        }

        IconButton(
            onClick = onQuickShotResolutionClick,
            modifier = Modifier.size(64.dp, 48.dp),
            enabled = quickShotCapabilities.availableResolutions.size > 1
        ) {
            Text(
                text = quickShotResolutionLabel(quickShotConfig.resolution),
                color = if (quickShotCapabilities.availableResolutions.size > 1) Color.White else Color.White.copy(alpha = 0.5f),
                fontSize = 12.sp,
                fontWeight = FontWeight.Bold,
                fontFamily = FontFamily.Monospace,
                modifier = Modifier.autoRotate()
            )
        }

        IconButton(onClick = onHistogramToggle) {
            Icon(
                imageVector = AppIcons.BarChart,
                contentDescription = stringResource(R.string.histogram),
                modifier = Modifier.size(20.dp).autoRotate(),
                tint = if (showHistogram) Color.Yellow else Color.White
            )
        }

        IconButton(onClick = onSettingsClick) {
            Icon(
                imageVector = Icons.Default.Settings,
                contentDescription = stringResource(R.string.settings),
                modifier = Modifier.size(20.dp).autoRotate(),
                tint = Color.White
            )
        }
    }
}

@Composable
private fun VideoTopBar(
    isRecording: Boolean,
    recordingElapsedMs: Long,
    videoConfig: VideoConfig,
    videoCapabilities: VideoCapabilities,
    onVideoTorchToggle: () -> Unit,
    onVideoStabilizationToggle: () -> Unit,
    onVideoResolutionClick: () -> Unit,
    onVideoFpsClick: () -> Unit,
    onSettingsClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    Box(
        modifier = modifier
            .fillMaxWidth()
            .padding(top = 32.dp, start = 8.dp, end = 8.dp)
            .height(56.dp),
        contentAlignment = Alignment.Center
    ) {
        if (isRecording) {
            RecordingHud(
                elapsedMs = recordingElapsedMs,
                videoConfig = videoConfig
            )
        } else {
            Row(
                modifier = Modifier.fillMaxWidth(),
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.SpaceBetween
            ) {
                // Settings Readouts (Left)
                VideoParameterCluster(
                    videoConfig = videoConfig,
                    onResolutionClick = onVideoResolutionClick,
                    onFpsClick = onVideoFpsClick
                )

                // Quick Action Toggles (Right)
                Row(
                    verticalAlignment = Alignment.CenterVertically,
                    horizontalArrangement = Arrangement.spacedBy(4.dp)
                ) {
                    VideoActionIcon(
                        icon = if (videoConfig.torchEnabled) AppIcons.FlashlightOn else AppIcons.FlashlightOff,
                        active = videoConfig.torchEnabled,
                        enabled = videoCapabilities.supportsTorch,
                        onClick = onVideoTorchToggle,
                        contentDescription = stringResource(R.string.video_torch_chip)
                    )

                    if (videoCapabilities.availableStabilizationModes.size > 1) {
                        TextActionIcon(
                            title = videoConfig.stabilizationMode.displayName,
                            active = videoConfig.stabilizationMode != com.hinnka.mycamera.video.VideoStabilizationMode.OFF,
                            enabled = true,
                            onClick = onVideoStabilizationToggle,
                        )
                    }

                    IconButton(onClick = onSettingsClick) {
                        Icon(
                            imageVector = Icons.Default.Settings,
                            contentDescription = stringResource(R.string.settings),
                            modifier = Modifier.size(20.dp).autoRotate(),
                            tint = Color.White
                        )
                    }
                }
            }
        }
    }
}

@Composable
private fun VideoParameterCluster(
    videoConfig: VideoConfig,
    onResolutionClick: () -> Unit,
    onFpsClick: () -> Unit
) {
    Surface(
        color = Color.Black.copy(alpha = 0.35f),
        shape = RoundedCornerShape(12.dp),
        border = BorderStroke(1.dp, Color.White.copy(alpha = 0.1f))
    ) {
        Row(
            modifier = Modifier.padding(horizontal = 8.dp, vertical = 4.dp),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            val resLabel = when (videoConfig.resolution) {
                VideoResolutionPreset.UHD_2160P -> "4K"
                VideoResolutionPreset.FHD_1080P -> "1080p"
                VideoResolutionPreset.HD_720P -> "720p"
            }
            ParameterText(resLabel, onResolutionClick)

            ParameterDivider()

            ParameterText("${videoConfig.fps.fps} fps", onFpsClick)
        }
    }
}

@Composable
private fun quickShotResolutionLabel(resolution: QuickShotResolutionPreset): String {
    return when (resolution) {
        QuickShotResolutionPreset.FULL -> stringResource(R.string.quick_shot_resolution_full)
        else -> resolution.displayName
    }
}

@Composable
private fun ParameterText(
    text: String,
    onClick: () -> Unit,
    tint: Color = Color.White
) {
    Text(
        text = text,
        color = tint,
        style = MaterialTheme.typography.labelLarge.copy(
            fontWeight = FontWeight.Bold,
            fontFamily = FontFamily.Monospace,
            letterSpacing = 0.sp
        ),
        modifier = Modifier
            .clip(RoundedCornerShape(4.dp))
            .clickable(onClick = onClick)
            .padding(horizontal = 4.dp, vertical = 2.dp)
    )
}

@Composable
private fun ParameterDivider() {
    Box(
        modifier = Modifier
            .size(1.dp, 12.dp)
            .background(Color.White.copy(alpha = 0.2f))
    )
}

@Composable
private fun VideoActionIcon(
    icon: ImageVector,
    active: Boolean,
    enabled: Boolean,
    onClick: () -> Unit,
    contentDescription: String
) {
    IconButton(
        onClick = onClick,
        enabled = enabled
    ) {
        Icon(
            imageVector = icon,
            contentDescription = contentDescription,
            modifier = Modifier.size(20.dp).autoRotate(),
            tint = if (enabled) {
                if (active) Color(0xFFFFD700) else Color.White
            } else {
                Color.White.copy(alpha = 0.3f)
            }
        )
    }
}

@Composable
private fun TextActionIcon(
    title: String,
    active: Boolean,
    enabled: Boolean,
    onClick: () -> Unit,
) {
    IconButton(
        onClick = onClick,
        enabled = enabled
    ) {
        Box(modifier = Modifier.width(30.dp).height(20.dp), contentAlignment = Alignment.Center) {
            Text(
                text = title,
                fontSize = 12.sp,
                lineHeight = 12.sp,
                maxLines = 1,
                fontWeight = FontWeight.Bold,
                color = if (enabled) {
                    if (active) Color(0xFFFFD700) else Color.White
                } else {
                    Color.White.copy(alpha = 0.3f)
                },
            )
        }
    }
}

@Composable
private fun RecordingHud(
    elapsedMs: Long,
    videoConfig: VideoConfig,
    modifier: Modifier = Modifier
) {
    val infiniteTransition = rememberInfiniteTransition(label = "recBlink")
    val dotAlpha by infiniteTransition.animateFloat(
        initialValue = 1f,
        targetValue = 0.3f,
        animationSpec = infiniteRepeatable(
            animation = tween(durationMillis = 800),
            repeatMode = RepeatMode.Reverse
        ),
        label = "recDotAlpha"
    )
    Column(
        modifier = modifier,
        horizontalAlignment = Alignment.CenterHorizontally
    ) {
        Surface(
            color = Color.Black.copy(alpha = 0.5f),
            shape = RoundedCornerShape(20.dp),
            border = BorderStroke(1.dp, Color.White.copy(alpha = 0.1f))
        ) {
            Row(
                modifier = Modifier.padding(horizontal = 12.dp, vertical = 4.dp),
                verticalAlignment = Alignment.CenterVertically
            ) {
                Box(
                    modifier = Modifier
                        .size(8.dp)
                        .clip(CircleShape)
                        .background(Color.Red.copy(alpha = dotAlpha))
                )
                Spacer(modifier = Modifier.width(8.dp))
                Text(
                    text = formatRecordingDuration(elapsedMs),
                    color = Color.White,
                    style = MaterialTheme.typography.titleSmall.copy(
                        fontWeight = FontWeight.Bold,
                        fontFamily = FontFamily.Monospace,
                        letterSpacing = 0.5.sp
                    )
                )
            }
        }

        Row(
            modifier = Modifier.padding(top = 2.dp),
            horizontalArrangement = Arrangement.spacedBy(8.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            Text(
                text = videoConfig.resolution.displayName,
                color = Color.White.copy(alpha = 0.6f),
                style = MaterialTheme.typography.labelSmall,
                fontWeight = FontWeight.Bold
            )
            Box(Modifier.size(3.dp).clip(CircleShape).background(Color.White.copy(alpha = 0.4f)))
            Text(
                text = "${videoConfig.fps.fps} FPS",
                color = Color.White.copy(alpha = 0.6f),
                style = MaterialTheme.typography.labelSmall,
                fontWeight = FontWeight.Bold
            )
            if (videoConfig.logProfile != VideoLogProfile.OFF) {
                Box(Modifier.size(3.dp).clip(CircleShape).background(Color.White.copy(alpha = 0.4f)))
                Text(
                    text = "LOG",
                    color = Color(0xFFE5A324).copy(alpha = 0.8f),
                    style = MaterialTheme.typography.labelSmall,
                    fontWeight = FontWeight.Bold
                )
            }
        }
    }
}

private fun formatRecordingDuration(elapsedMs: Long): String {
    val totalSeconds = (elapsedMs / 1000L).coerceAtLeast(0L)
    val minutes = totalSeconds / 60L
    val seconds = totalSeconds % 60L
    return "%02d:%02d".format(minutes, seconds)
}
