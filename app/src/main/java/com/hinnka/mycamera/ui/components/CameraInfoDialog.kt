package com.hinnka.mycamera.ui.components

import android.os.Build
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.*
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.ui.window.Dialog
import com.hinnka.mycamera.ui.theme.AccentColor
import com.hinnka.mycamera.camera.CameraInfo

@Composable
fun CameraInfoDialog(
    cameras: List<CameraInfo>,
    onDismiss: () -> Unit
) {
    Dialog(onDismissRequest = onDismiss) {
        Card(
            modifier = Modifier
                .fillMaxWidth()
                .fillMaxHeight(0.8f)
                .padding(16.dp),
            shape = RoundedCornerShape(24.dp),
            colors = CardDefaults.cardColors(containerColor = Color(0xFF1A1A1A))
        ) {
            Box(
                modifier = Modifier
                    .fillMaxSize()
                    .background(
                        Brush.verticalGradient(
                            listOf(Color(0xFF2C2C2C), Color(0xFF1A1A1A))
                        )
                    )
            ) {
                Column(
                    modifier = Modifier
                        .fillMaxSize()
                        .padding(24.dp)
                ) {
                    // 标题
                    Text(
                        text = "摄像头信息",
                        color = Color.White,
                        fontSize = 24.sp,
                        fontWeight = FontWeight.Bold,
                        modifier = Modifier.padding(bottom = 8.dp)
                    )

                    Text(
                        text = "设备: ${Build.MANUFACTURER} ${Build.MODEL}",
                        color = Color.Gray,
                        fontSize = 14.sp,
                        modifier = Modifier.padding(bottom = 16.dp)
                    )

                    Divider(color = Color.DarkGray, thickness = 1.dp)

                    Spacer(modifier = Modifier.height(16.dp))

                    // 摄像头列表
                    Column(
                        modifier = Modifier
                            .weight(1f)
                            .verticalScroll(rememberScrollState())
                    ) {
                        cameras.forEachIndexed { index, camera ->
                            CameraInfoItem(camera)
                            if (index < cameras.size - 1) {
                                Spacer(modifier = Modifier.height(16.dp))
                                Divider(color = Color.DarkGray.copy(alpha = 0.5f), thickness = 0.5.dp)
                                Spacer(modifier = Modifier.height(16.dp))
                            }
                        }
                    }

                    Spacer(modifier = Modifier.height(16.dp))

                    // 关闭按钮
                    Button(
                        onClick = onDismiss,
                        modifier = Modifier
                            .fillMaxWidth()
                            .height(48.dp),
                        shape = RoundedCornerShape(24.dp),
                        colors = ButtonDefaults.buttonColors(
                            containerColor = Color(0xFF3A3A3A),
                            contentColor = Color.White
                        )
                    ) {
                        Text(text = "关闭", fontSize = 16.sp)
                    }
                }
            }
        }
    }
}

@Composable
private fun CameraInfoItem(camera: CameraInfo) {
    Column(
        modifier = Modifier.fillMaxWidth()
    ) {
        // 摄像头名称
        Row(
            verticalAlignment = Alignment.CenterVertically,
            modifier = Modifier.fillMaxWidth()
        ) {
            Text(
                text = camera.getLensDisplayName(),
                color = Color.White,
                fontSize = 18.sp,
                fontWeight = FontWeight.Bold
            )
            Spacer(modifier = Modifier.width(8.dp))
            Text(
                text = "ID: ${camera.cameraId}",
                color = Color.Gray,
                fontSize = 12.sp,
                fontFamily = FontFamily.Monospace
            )
        }

        Spacer(modifier = Modifier.height(12.dp))

        // 硬件支持级别 - 突出显示
        InfoRow(
            label = "硬件级别",
            value = camera.getHardwareLevelName(),
            highlight = true
        )

        // 其他详细信息
        InfoRow(
            label = "传感器方向",
            value = "${camera.sensorOrientation}°"
        )

        InfoRow(
            label = "物理焦距",
            value = if (camera.focalLength > 0) "${String.format("%.2f", camera.focalLength)}mm" else "N/A"
        )

        InfoRow(
            label = "等效焦距",
            value = if (camera.focalLength35mmEquivalent > 0) "${String.format("%.1f", camera.focalLength35mmEquivalent)}mm" else "N/A"
        )

        InfoRow(
            label = "固有变焦比",
            value = String.format("%.2fx", camera.intrinsicZoomRatio)
        )

        InfoRow(
            label = "数字变焦范围",
            value = "1.0x - ${String.format("%.1f", camera.maxZoom)}x"
        )

        camera.isoRange?.let { range ->
            InfoRow(
                label = "ISO 范围",
                value = "${range.lower} - ${range.upper}"
            )
        }

        camera.exposureTimeRange?.let { range ->
            InfoRow(
                label = "曝光时间范围",
                value = "${formatExposureTime(range.lower)} - ${formatExposureTime(range.upper)}"
            )
        }

        InfoRow(
            label = "曝光补偿范围",
            value = "${camera.exposureCompensationRange.lower} - ${camera.exposureCompensationRange.upper} (步长: ${String.format("%.3f", camera.exposureCompensationStep)})"
        )

        camera.activeArraySize?.let { rect ->
            InfoRow(
                label = "传感器尺寸",
                value = "${rect.width()} x ${rect.height()}"
            )
        }
    }
}

@Composable
private fun InfoRow(
    label: String,
    value: String,
    highlight: Boolean = false
) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .padding(vertical = 4.dp),
        horizontalArrangement = Arrangement.SpaceBetween
    ) {
        Text(
            text = label,
            color = Color.Gray,
            fontSize = 14.sp,
            modifier = Modifier.weight(1f)
        )
        Text(
            text = value,
            color = if (highlight) AccentColor else Color.White,
            fontSize = 14.sp,
            fontWeight = if (highlight) FontWeight.Bold else FontWeight.Normal,
            fontFamily = FontFamily.Monospace,
            modifier = Modifier.weight(1.5f)
        )
    }
}

/**
 * 格式化曝光时间（纳秒 -> 可读格式）
 */
private fun formatExposureTime(nanos: Long): String {
    val seconds = nanos / 1_000_000_000.0
    return when {
        seconds >= 1 -> "${String.format("%.1f", seconds)}s"
        seconds >= 0.001 -> "1/${(1 / seconds).toInt()}"
        else -> "${(nanos / 1_000_000.0).toInt()}ms"
    }
}
