package com.hinnka.mycamera.ui.camera

import androidx.compose.foundation.background
import androidx.compose.foundation.gestures.detectTapGestures
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.AutoAwesome
import androidx.compose.material.icons.filled.SwapHoriz
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.Text
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextDecoration
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.hinnka.mycamera.camera.CameraInfo
import com.hinnka.mycamera.camera.LensType
import kotlin.math.abs
import kotlin.math.roundToInt

/**
 * 显示模式：变焦倍率 or 35mm等效焦距
 */
enum class ZoomDisplayMode {
    ZOOM_RATIO,      // 显示 0.6x, 1x, 2x 等
    FOCAL_LENGTH     // 显示 35mm, 50mm, 85mm 等
}

@Composable
fun ZoomControlBar(
    zoomRatio: Float,
    availableCameras: List<CameraInfo>,
    currentCameraId: String,
    onZoomChange: (Float) -> Unit,
    onLensSwitch: (String) -> Unit,
    onFilterClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    // 显示模式状态
    var displayMode by remember { mutableStateOf(ZoomDisplayMode.FOCAL_LENGTH) }

    val currentCameraIdState by rememberUpdatedState(currentCameraId)

    val currentCamera = availableCameras.find { it.cameraId == currentCameraId }

    // 获取当前相机信息
    val mainCamera = availableCameras.find { it.lensType == if (currentCamera?.lensType == LensType.FRONT) LensType.FRONT else LensType.BACK_MAIN }
    
    // 根据可用相机计算变焦档位
    val lensZoomStops = calculateLensZoomStops(availableCameras, currentCamera)
    val zoomStops =  allZoomStops(lensZoomStops, mainCamera, currentCamera)
    
    Box(
        modifier = modifier
            .fillMaxWidth()
            .padding(16.dp)
            .height(32.dp),
        contentAlignment = Alignment.Center
    ) {
        // Display Mode Toggle (Left)
        IconButton(
            onClick = { 
                displayMode = if (displayMode == ZoomDisplayMode.ZOOM_RATIO) {
                    ZoomDisplayMode.FOCAL_LENGTH
                } else {
                    ZoomDisplayMode.ZOOM_RATIO
                }
            },
            modifier = Modifier
                .align(Alignment.CenterStart)
                .size(32.dp)
        ) {
            Icon(
                imageVector = Icons.Default.SwapHoriz,
                contentDescription = "Toggle Display Mode",
                modifier = Modifier.size(32.dp)
                    .background(Color.Black.copy(alpha = 0.3f), CircleShape)
                    .padding(8.dp),
                tint = Color.White
            )
        }
        
        // Filter Button (Right)
        IconButton(
            onClick = onFilterClick,
            modifier = Modifier
                .align(Alignment.CenterEnd)
                .size(32.dp)
        ) {
            Icon(
                imageVector = Icons.Default.AutoAwesome,
                contentDescription = "Filters",
                modifier = Modifier.size(32.dp)
                    .background(Color.Black.copy(alpha = 0.3f), CircleShape)
                    .padding(8.dp),
                tint = Color.Yellow
            )
        }

        // Zoom Ruler (Center)
        ZoomRuler(
            zoomRatio = zoomRatio,
            lensStops = lensZoomStops,
            stops = zoomStops,
            mainCamera = mainCamera,
            displayMode = displayMode,
            onZoomChange = { newZoom ->
                // 检查是否需要切换镜头
                val camera = findOptimalLens(newZoom, availableCameras, currentCameraIdState)
                if (camera != null && camera.cameraId != currentCameraIdState) {
                    onLensSwitch(camera.cameraId)
                }
                onZoomChange(newZoom)
            },
            modifier = Modifier.fillMaxHeight()
        )
    }
}


/**
 * 计算变焦档位
 */
private fun calculateLensZoomStops(
    cameras: List<CameraInfo>,
    currentCamera: CameraInfo?
): List<Float> {
    val stops = mutableSetOf<Float>()

    if (currentCamera?.lensType == LensType.FRONT) {
        // 添加各个镜头的固有变焦比例
        cameras.filter { it.lensType == LensType.FRONT }.forEach { camera ->
            if (camera.intrinsicZoomRatio > 0) {
                stops.add(camera.intrinsicZoomRatio)
            }
        }
        return stops.toList()
    }
    // 添加各个镜头的固有变焦比例
    cameras.filter { it.lensType != LensType.FRONT && it.lensType != LensType.BACK_MACRO }.forEach { camera ->
        if (camera.intrinsicZoomRatio > 0) {
            stops.add(camera.intrinsicZoomRatio)
        }
    }
    return stops.toList()
}

/**
 * 计算变焦档位
 */
private fun allZoomStops(
    lensZoomStops: List<Float>,
    mainCamera: CameraInfo?,
    currentCamera: CameraInfo?
): List<Float> {
    val stops = mutableSetOf<Float>()
    stops.addAll(lensZoomStops)

    if (currentCamera?.lensType == LensType.FRONT) {
        if (lensZoomStops.find { abs(it - 2f) <= 0.1f } == null) {
            stops.add(2f)
        }
        return stops.sorted()
    }

    mainCamera ?: return stops.sorted()

    listOf(35f, 50f, 85f, 200f).forEach { fl ->
        val zoom = fl / mainCamera.focalLength35mmEquivalent
        if (lensZoomStops.find { abs(it - zoom) <= 0.1f } == null) {
            stops.add(zoom)
        }
    }
    return stops.sorted()
}

/**
 * 根据变焦倍率找到最佳镜头
 */
private fun findOptimalLens(
    targetZoom: Float,
    cameras: List<CameraInfo>,
    currentCameraId: String
): CameraInfo? {
    val currentLensType = cameras.find { it.cameraId == currentCameraId }?.lensType
    val zoomableCameras = cameras.filter { if (currentLensType == LensType.FRONT) it.lensType == LensType.FRONT else (it.lensType != LensType.FRONT && it.lensType != LensType.BACK_MACRO) }
    if (zoomableCameras.isEmpty()) return null
    return zoomableCameras.filter { it.intrinsicZoomRatio <= targetZoom }.sortedByDescending { it.intrinsicZoomRatio }.getOrNull(0)
}

@Composable
fun ZoomRuler(
    zoomRatio: Float,
    lensStops: List<Float>,
    stops: List<Float>,
    mainCamera: CameraInfo?,
    displayMode: ZoomDisplayMode,
    onZoomChange: (Float) -> Unit,
    modifier: Modifier = Modifier
) {
    val activeColor = Color(0xFFFFD700)
    val inactiveColor = Color.White.copy(alpha = 0.5f)

    val stopsState by rememberUpdatedState(stops)

    Row(
        modifier = modifier
            .background(Color.Black.copy(alpha = 0.3f), RoundedCornerShape(16.dp))
            .pointerInput(Unit) {
                detectTapGestures { offset ->
                    val width = size.width
                    val stepWidth = width / stopsState.size
                    val index = (offset.x / stepWidth).toInt().coerceIn(0, stopsState.lastIndex)
                    onZoomChange(stopsState[index])
                }
            },
        horizontalArrangement = Arrangement.SpaceAround,
        verticalAlignment = Alignment.CenterVertically
    ) {
        stops.forEachIndexed { _, stop ->
            val isSelected = abs(stop - zoomRatio) <= 0.1f

            // 显示文本
            val text = when (displayMode) {
                ZoomDisplayMode.ZOOM_RATIO -> {
                    formatZoomRatio(stop)
                }
                ZoomDisplayMode.FOCAL_LENGTH -> {
                    zoomRatioToFocalLength(stop, mainCamera)
                }
            }

            val style = TextStyle(
                fontSize = if (isSelected) 13.sp else 10.sp,
                fontWeight = if (isSelected) FontWeight.Bold else FontWeight.Normal,
                color = if (isSelected) activeColor else inactiveColor,
                textDecoration = if (lensStops.contains(stop)) TextDecoration.Underline else TextDecoration.None
            )

            Box(modifier = Modifier.size(32.dp).autoRotate(), contentAlignment = Alignment.Center) {
                Text(text, style = style)
            }
        }
    }
}

/**
 * 格式化变焦倍率显示
 */
private fun formatZoomRatio(ratio: Float): String {
    val rounded = (ratio * 10).roundToInt() / 10f
    return if (rounded == rounded.toInt().toFloat()) {
        "${rounded.toInt()}x"
    } else {
        String.format("%.1fx", rounded)
    }
}

/**
 * 变焦倍率转换为35mm等效焦距
 */
private fun zoomRatioToFocalLength(zoomRatio: Float, mainCamera: CameraInfo?): String {
    if (mainCamera == null || mainCamera.focalLength35mmEquivalent <= 0) {
        // 默认主摄为23mm等效
        return (23f * zoomRatio).toInt().toString()
    }
    return (mainCamera.focalLength35mmEquivalent * zoomRatio).roundToInt().toString()
}
