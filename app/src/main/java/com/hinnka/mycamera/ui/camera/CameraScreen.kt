package com.hinnka.mycamera.ui.camera

import android.util.Log
import android.view.Surface
import androidx.camera.core.Preview
import androidx.compose.animation.core.animateFloatAsState
import androidx.compose.animation.core.spring
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Cameraswitch
import androidx.compose.material.icons.filled.Edit
import androidx.compose.material.icons.filled.Settings
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.rotate
import androidx.compose.ui.draw.scale
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.layout.layout
import androidx.compose.ui.platform.LocalLifecycleOwner
import androidx.compose.ui.unit.dp
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.compose.LifecycleEventEffect
import com.hinnka.mycamera.camera.CameraState
import com.hinnka.mycamera.ui.components.LutControlPanel
import com.hinnka.mycamera.viewmodel.CameraViewModel
import kotlin.math.abs
import kotlin.math.cos
import kotlin.math.sin

/**
 * 主相机界面
 */
enum class ActivePanel {
    NONE,
    SETTINGS,
    FILTERS
}

@Composable
fun CameraScreen(
    viewModel: CameraViewModel,
    modifier: Modifier = Modifier
) {
    val state by viewModel.state.collectAsState()
    val lifecycleOwner = LocalLifecycleOwner.current

    var surfaceProvider by remember { mutableStateOf<Preview.SurfaceProvider?>(null) }
    
    // 当 surfaceProvider 准备好时绑定相机
    LaunchedEffect(surfaceProvider) {
        surfaceProvider?.let {
            viewModel.bindCamera(lifecycleOwner, it)
        }
    }
    
    // 从后台返回时检查并恢复相机
    LifecycleEventEffect(Lifecycle.Event.ON_RESUME) {
        // 只有在 surfaceProvider 已经存在时才检查恢复
        if (surfaceProvider != null) {
            viewModel.checkAndRecoverCamera()
        }
    }
    
    Box(
        modifier = modifier
            .fillMaxSize()
            .background(Color.Black)
    ) {
        // 相机预览
        CameraPreviewGL(
            aspectRatio = state.aspectRatio,
            previewSize = viewModel.getPreviewSize(),
            currentLut = viewModel.currentLutConfig,
            lutIntensity = state.lutIntensity,
            focusPoint = state.focusPoint,
            isFocusing = state.isFocusing,
            focusSuccess = state.focusSuccess,
            onSurfaceProviderReady = { provider ->
                surfaceProvider = provider
            },
            onSurfaceDestroyed = { 
                viewModel.closeCamera()
                surfaceProvider = null
            },
            onTap = { x, y, w, h ->
                viewModel.focusOnPoint(x, y, w, h)
            },
            modifier = Modifier.fillMaxSize()
        )
        
        // 控制层
        Controls(state, viewModel)
    }
}

@Composable
fun Controls(
    state: CameraState,
    viewModel: CameraViewModel
) {
    var activePanel by remember { mutableStateOf(ActivePanel.SETTINGS) }

    if (viewModel.isLandscape) {
        // 旋转整个UI布局
        Box(
            modifier = Modifier
                .fillMaxSize()
                .rotateWithLayout(360 - viewModel.rotationDegrees),
            contentAlignment = Alignment.Center
        ) {
            LandscapeControlsContent(
                state = state,
                viewModel = viewModel,
                activePanel = activePanel,
                onActivePanelChange = { activePanel = it },
                onCapture = { viewModel.capture() },
                onSwitchCamera = { viewModel.switchCamera() },
                onExposureCompensationChange = { viewModel.setExposureCompensation(it) },
                onIsoChange = { viewModel.setIso(it) },
                onShutterSpeedChange = { viewModel.setShutterSpeed(it) },
                onZoomChange = { viewModel.setZoomRatio(it) },
                onAspectRatioChange = { viewModel.setAspectRatio(it) },
                onAutoExposureToggle = { viewModel.setAutoExposure(it) }
            )
        }
    } else {
        PortraitControls(
            state = state,
            viewModel = viewModel,
            activePanel = activePanel,
            onActivePanelChange = { activePanel = it },
            onCapture = { viewModel.capture() },
            onSwitchCamera = { viewModel.switchCamera() },
            onExposureCompensationChange = { viewModel.setExposureCompensation(it) },
            onIsoChange = { viewModel.setIso(it) },
            onShutterSpeedChange = { viewModel.setShutterSpeed(it) },
            onZoomChange = { viewModel.setZoomRatio(it) },
            onAspectRatioChange = { viewModel.setAspectRatio(it) },
            onAutoExposureToggle = { viewModel.setAutoExposure(it) }
        )
    }
}

fun Modifier.rotateWithLayout(degrees: Float) = this.layout { measurable, constraints ->
    // 1. 计算旋转后的外接矩形尺寸需求
    val rad = Math.toRadians(degrees.toDouble())
    val cos = abs(cos(rad))
    val sin = abs(sin(rad))

    // 2. 根据父约束和旋转角度，反推子组件应该有的尺寸
    // 如果是 90 度，这里会自动交换宽高约束
    val newWidth = (constraints.maxWidth * cos + constraints.maxHeight * sin).toInt()
    val newHeight = (constraints.maxWidth * sin + constraints.maxHeight * cos).toInt()

    // 3. 测量子组件
    val placeable = measurable.measure(constraints.copy(
        minWidth = 0,
        minHeight = 0,
        maxWidth = newWidth,
        maxHeight = newHeight
    ))

    // 4. 这里的 layout 尺寸决定了它在父容器中占多大位子
    layout(newWidth, newHeight) {
        placeable.placeRelativeWithLayer(
            (newWidth - placeable.width) / 2,
            (newHeight - placeable.height) / 2
        ) {
            rotationZ = degrees
        }
    }
}

/**
 * 横屏控制布局内容（用于旋转显示）
 */
@Composable
fun LandscapeControlsContent(
    state: CameraState,
    viewModel: CameraViewModel,
    activePanel: ActivePanel,
    onActivePanelChange: (ActivePanel) -> Unit,
    onCapture: () -> Unit,
    onSwitchCamera: () -> Unit,
    onExposureCompensationChange: (Int) -> Unit,
    onIsoChange: (Int) -> Unit,
    onShutterSpeedChange: (Long) -> Unit,
    onZoomChange: (Float) -> Unit,
    onAspectRatioChange: (com.hinnka.mycamera.camera.AspectRatio) -> Unit,
    onAutoExposureToggle: (Boolean) -> Unit
) {
    // 横屏布局：左侧控制面板，右侧按钮
    // 直接填充父容器，让旋转后的布局自动适应
    Row(
        modifier = Modifier.fillMaxSize(),
        horizontalArrangement = Arrangement.SpaceBetween
    ) {
        // 左侧控制面板
        if (activePanel != ActivePanel.NONE) {
            Box(
                modifier = Modifier
                    .fillMaxHeight()
                    .width(260.dp) // 稍微加宽一点以适应滤镜
            ) {
                if (activePanel == ActivePanel.SETTINGS) {
                    ControlPanel(
                        state = state,
                        onExposureCompensationChange = onExposureCompensationChange,
                        onIsoChange = onIsoChange,
                        onShutterSpeedChange = onShutterSpeedChange,
                        onZoomChange = onZoomChange,
                        onAspectRatioChange = onAspectRatioChange,
                        onAutoExposureToggle = onAutoExposureToggle,
                        modifier = Modifier.fillMaxSize()
                    )
                } else if (activePanel == ActivePanel.FILTERS) {
                    LutControlPanel(
                        availableLuts = viewModel.availableLutList,
                        currentLutId = viewModel.currentLutId,
                        lutIntensity = state.lutIntensity,
                        onLutSelected = { viewModel.setLut(it) },
                        onIntensityChange = { viewModel.setLutIntensity(it) },
                        modifier = Modifier.fillMaxSize()
                    )
                }
            }
        }

        Spacer(modifier = Modifier.weight(1f))

        // 右侧按钮区
        Column(
            modifier = Modifier
                .fillMaxHeight()
                .padding(16.dp),
            verticalArrangement = Arrangement.SpaceEvenly,
            horizontalAlignment = Alignment.CenterHorizontally
        ) {
            // 设置按钮
            IconButton(
                onClick = { 
                    onActivePanelChange(
                        if (activePanel == ActivePanel.SETTINGS) ActivePanel.NONE else ActivePanel.SETTINGS
                    )
                },
                modifier = Modifier
                    .size(48.dp)
                    .background(
                        if (activePanel == ActivePanel.SETTINGS) Color.White.copy(alpha = 0.2f) else Color.Black.copy(alpha = 0.5f),
                        CircleShape
                    )
            ) {
                Icon(
                    imageVector = Icons.Default.Settings,
                    contentDescription = "Settings",
                    tint = Color.White
                )
            }
            
            // 滤镜按钮
            IconButton(
                onClick = { 
                    onActivePanelChange(
                        if (activePanel == ActivePanel.FILTERS) ActivePanel.NONE else ActivePanel.FILTERS
                    )
                },
                modifier = Modifier
                    .size(48.dp)
                    .background(
                        if (activePanel == ActivePanel.FILTERS) Color.White.copy(alpha = 0.2f) else Color.Black.copy(alpha = 0.5f),
                        CircleShape
                    )
            ) {
                Icon(
                    imageVector = Icons.Default.Edit,
                    contentDescription = "Filters",
                    tint = Color.White
                )
            }

            // 拍照按钮
            CaptureButton(
                isCapturing = state.isCapturing,
                onClick = onCapture
            )

            // 切换摄像头按钮
            IconButton(
                onClick = onSwitchCamera,
                modifier = Modifier
                    .size(48.dp)
                    .background(
                        Color.Black.copy(alpha = 0.5f),
                        CircleShape
                    )
            ) {
                Icon(
                    imageVector = Icons.Default.Cameraswitch,
                    contentDescription = "Switch Camera",
                    tint = Color.White
                )
            }
        }
    }
}

/**
 * 竖屏控制布局
 */
@Composable
fun PortraitControls(
    state: CameraState,
    viewModel: CameraViewModel,
    activePanel: ActivePanel,
    onActivePanelChange: (ActivePanel) -> Unit,
    onCapture: () -> Unit,
    onSwitchCamera: () -> Unit,
    onExposureCompensationChange: (Int) -> Unit,
    onIsoChange: (Int) -> Unit,
    onShutterSpeedChange: (Long) -> Unit,
    onZoomChange: (Float) -> Unit,
    onAspectRatioChange: (com.hinnka.mycamera.camera.AspectRatio) -> Unit,
    onAutoExposureToggle: (Boolean) -> Unit,
    modifier: Modifier = Modifier
) {
    Column(
        modifier = modifier.fillMaxSize(),
        verticalArrangement = Arrangement.SpaceBetween
    ) {
        // 顶部控制面板
        if (activePanel != ActivePanel.NONE) {
            if (activePanel == ActivePanel.SETTINGS) {
                ControlPanel(
                    state = state,
                    onExposureCompensationChange = onExposureCompensationChange,
                    onIsoChange = onIsoChange,
                    onShutterSpeedChange = onShutterSpeedChange,
                    onZoomChange = onZoomChange,
                    onAspectRatioChange = onAspectRatioChange,
                    onAutoExposureToggle = onAutoExposureToggle
                )
            } else if (activePanel == ActivePanel.FILTERS) {
                LutControlPanel(
                    availableLuts = viewModel.availableLutList,
                    currentLutId = viewModel.currentLutId,
                    lutIntensity = state.lutIntensity,
                    onLutSelected = { viewModel.setLut(it) },
                    onIntensityChange = { viewModel.setLutIntensity(it) }
                )
            }
        }
        
        Spacer(modifier = Modifier.weight(1f))
        
        // 底部按钮区
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .background(Color.Black.copy(alpha = 0.6f))
                .padding(vertical = 24.dp, horizontal = 32.dp),
            horizontalArrangement = Arrangement.SpaceEvenly,
            verticalAlignment = Alignment.CenterVertically
        ) {
            // 设置按钮
            IconButton(
                onClick = { 
                    onActivePanelChange(
                        if (activePanel == ActivePanel.SETTINGS) ActivePanel.NONE else ActivePanel.SETTINGS
                    )
                },
                modifier = Modifier
                    .size(48.dp)
                    .background(
                        if (activePanel == ActivePanel.SETTINGS) Color.White.copy(alpha = 0.2f) else Color.White.copy(alpha = 0.2f),
                        CircleShape
                    )
            ) {
                Icon(
                    imageVector = Icons.Default.Settings,
                    contentDescription = "Settings",
                    tint = Color.White
                )
            }
            
            // 滤镜按钮
            IconButton(
                onClick = { 
                    onActivePanelChange(
                        if (activePanel == ActivePanel.FILTERS) ActivePanel.NONE else ActivePanel.FILTERS
                    )
                },
                modifier = Modifier
                    .size(48.dp)
                    .background(
                        if (activePanel == ActivePanel.FILTERS) Color.White.copy(alpha = 0.2f) else Color.White.copy(alpha = 0.2f),
                        CircleShape
                    )
            ) {
                Icon(
                    imageVector = Icons.Default.Edit,
                    contentDescription = "Filters",
                    tint = Color.White
                )
            }
            
            // 拍照按钮
            CaptureButton(
                isCapturing = state.isCapturing,
                onClick = onCapture
            )
            
            // 切换摄像头按钮
            IconButton(
                onClick = onSwitchCamera,
                modifier = Modifier
                    .size(48.dp)
                    .background(
                        Color.White.copy(alpha = 0.2f),
                        CircleShape
                    )
            ) {
                Icon(
                    imageVector = Icons.Default.Cameraswitch,
                    contentDescription = "Switch Camera",
                    tint = Color.White
                )
            }
        }
    }
}

/**
 * 拍照按钮
 */
@Composable
fun CaptureButton(
    isCapturing: Boolean,
    onClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    val scale by animateFloatAsState(
        targetValue = if (isCapturing) 0.9f else 1f,
        animationSpec = spring(dampingRatio = 0.5f),
        label = "captureScale"
    )
    
    Box(
        modifier = modifier
            .size(72.dp)
            .scale(scale)
            .clip(CircleShape)
            .background(Color.White)
            .border(4.dp, Color.White.copy(alpha = 0.5f), CircleShape)
            .clickable(enabled = !isCapturing) { onClick() }
            .padding(4.dp),
        contentAlignment = Alignment.Center
    ) {
        Box(
            modifier = Modifier
                .fillMaxSize()
                .clip(CircleShape)
                .background(
                    if (isCapturing) Color.Gray else Color.White
                )
        )
    }
}
