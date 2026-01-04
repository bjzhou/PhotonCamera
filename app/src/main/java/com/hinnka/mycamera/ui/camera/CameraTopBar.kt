package com.hinnka.mycamera.ui.camera

import androidx.compose.foundation.layout.*
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp

@Composable
fun CameraTopBar(
    flashMode: Int,
    onFlashToggle: () -> Unit,
    timerSeconds: Int,
    onTimerToggle: () -> Unit,
    showHistogram: Boolean,
    onHistogramToggle: () -> Unit,
    showGrid: Boolean,
    onGridToggle: () -> Unit,
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
        // Flash Button
        IconButton(onClick = onFlashToggle) {
            Icon(
                imageVector = when (flashMode) {
                    0 -> Icons.Default.FlashOff
                    1 -> Icons.Default.FlashAuto
                    2 -> Icons.Default.FlashOn
                    else -> Icons.Default.FlashOff
                },
                modifier = Modifier.size(20.dp).autoRotate(),
                contentDescription = "Flash",
                tint = Color.White
            )
        }

        // Timer Button
        IconButton(onClick = onTimerToggle) {
            if (timerSeconds > 0) {
                // 显示定时器数字
                androidx.compose.material3.Text(
                    text = "${timerSeconds}s",
                    color = Color.Yellow,
                    fontSize = 14.sp,
                    fontWeight = FontWeight.Bold,
                    modifier = Modifier.autoRotate()
                )
            } else {
                Icon(
                    imageVector = Icons.Default.Timer,
                    contentDescription = "Timer",
                    modifier = Modifier.size(20.dp).autoRotate(),
                    tint = Color.White
                )
            }
        }

        // Histogram Toggle
        IconButton(onClick = onHistogramToggle) {
            Icon(
                imageVector = Icons.Default.BarChart,
                contentDescription = "Histogram",
                modifier = Modifier.size(20.dp).autoRotate(),
                tint = if (showHistogram) Color.Yellow else Color.White
            )
        }

        // Grid Toggle
        IconButton(onClick = onGridToggle) {
            Icon(
                imageVector = Icons.Default.GridOn,
                contentDescription = "Grid",
                modifier = Modifier.size(20.dp).autoRotate(),
                tint = if (showGrid) Color.Yellow else Color.White
            )
        }

        // Settings Button
        IconButton(onClick = onSettingsClick) {
            Icon(
                imageVector = Icons.Default.Settings,
                contentDescription = "Settings",
                modifier = Modifier.size(20.dp).autoRotate(),
                tint = Color.White
            )
        }
    }
}
