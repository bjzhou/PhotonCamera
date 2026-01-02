package com.hinnka.mycamera.ui.camera

import androidx.compose.animation.core.animateFloatAsState
import androidx.compose.animation.core.spring
import androidx.compose.animation.core.tween
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Cameraswitch
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.composed
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.scale
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.layout.layout
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.compose.LifecycleEventEffect
import com.hinnka.mycamera.camera.CameraState
import com.hinnka.mycamera.camera.CameraUtils
import com.hinnka.mycamera.ui.components.GalleryThumbnail
import com.hinnka.mycamera.ui.components.EditControlPanel
import com.hinnka.mycamera.ui.components.HistogramView
import com.hinnka.mycamera.utils.OrientationObserver
import com.hinnka.mycamera.viewmodel.CameraViewModel
import com.hinnka.mycamera.viewmodel.GalleryViewModel
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
    galleryViewModel: GalleryViewModel,
    onGalleryClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    val context = LocalContext.current
    val state by viewModel.state.collectAsState()
    val latestPhoto by galleryViewModel.latestPhoto.collectAsState()
    
    // 标记相机是否已打开
    var cameraOpened by remember { mutableStateOf(false) }
    
    // UI State
    var activePanel by remember { mutableStateOf(ActivePanel.NONE) }
    
    // 从后台返回时检查并恢复相机，刷新最新照片
    LifecycleEventEffect(Lifecycle.Event.ON_RESUME) {
        if (cameraOpened) {
            viewModel.checkAndRecoverCamera()
        }
        galleryViewModel.refreshLatestPhoto()
    }
    
    // 监听照片保存完成事件，立即刷新缩略图
    LaunchedEffect(Unit) {
        viewModel.imageSavedEvent.collect {
            galleryViewModel.refreshLatestPhoto()
        }
    }

    val previewSize = CameraUtils.getFixedPreviewSize(context, state.currentCameraId)
    
    Column(
        modifier = modifier
            .fillMaxSize()
            .background(Color.Black)
    ) {
        // 顶部控制条
        CameraTopBar(
            flashMode = state.flashMode,
            onFlashToggle = {
                viewModel.toggleFlash()
            },
            timerSeconds = 0, // TODO: State
            onTimerToggle = { /* TODO */ },
            showHistogram = viewModel.showHistogram,
            onHistogramToggle = {
                viewModel.saveShowHistogram(!viewModel.showHistogram)
            },
            showGrid = true, // TODO: State
            onGridToggle = { /* TODO */ },
            onSettingsClick = { /* TODO */ }
        )

        Box(
            modifier = Modifier
                .weight(1f)
                .fillMaxWidth()
        ) {
            // 相机预览
            CameraPreviewGL(
                aspectRatio = state.aspectRatio,
                previewSize = previewSize,
                currentLut = viewModel.currentLutConfig,
                lutIntensity = state.lutIntensity,
                focusPoint = state.focusPoint,
                isFocusing = state.isFocusing,
                focusSuccess = state.focusSuccess,
                onSurfaceTextureReady = { surfaceTexture ->
                    viewModel.openCamera(surfaceTexture)
                    cameraOpened = true
                },
                onSurfaceDestroyed = { 
                    viewModel.closeCamera()
                    cameraOpened = false
                },
                onTap = { x, y, w, h ->
                    viewModel.focusOnPoint(x, y, w, h)
                },
                modifier = Modifier.fillMaxSize()
            )
            
            // 实时直方图 (Overlaid on preview if enabled)
            if (state.histogram != null && viewModel.showHistogram) {
                HistogramView(
                    histogram = state.histogram,
                    modifier = Modifier
                        .padding(16.dp)
                        .size(80.dp, 40.dp)
                        .align(Alignment.TopStart)
                        .autoRotate(dx = -20.dp, dy = 20.dp)
                )
            }

            if (activePanel == ActivePanel.FILTERS) {
                EditControlPanel(
                    availableLuts = viewModel.availableLutList,
                    currentLutId = viewModel.currentLutId,
                    lutIntensity = state.lutIntensity,
                    onLutSelected = { viewModel.setLut(it) },
                    onIntensityChange = { viewModel.setLutIntensity(it) },
                    availableFrames = viewModel.availableFrameList,
                    currentFrameId = viewModel.currentFrameId,
                    showAppBranding = viewModel.currentShowAppBranding,
                    onFrameSelected = { viewModel.setFrame(it) },
                    onBrandingToggle = { viewModel.setShowAppBranding(it) },
                    modifier = Modifier
                        .fillMaxWidth()
                        .height(200.dp)
                        .background(Color.Black)
                )
            }
            
            // Zoom Control Bar (Overlay at bottom of preview)
            ZoomControlBar(
                zoomRatio = state.zoomRatio,
                maxZoom = state.getMaxZoom(),
                minZoom = state.getMinZoom(),
                onZoomChange = { viewModel.setZoomRatio(it) },
                onFilterClick = { 
                     // Toggle Filter Panel
                     activePanel = if (activePanel == ActivePanel.FILTERS) ActivePanel.NONE else ActivePanel.FILTERS
                },
                modifier = Modifier.align(Alignment.BottomCenter)
            )
        }

        CameraParameterBar(state = state)

        // 底部控制层
        Controls(
            state = state,
            viewModel = viewModel,
            galleryViewModel = galleryViewModel,
            latestPhoto = latestPhoto,
            onGalleryClick = {
                galleryViewModel.loadPhotos()
                onGalleryClick()
            }
        )
    }
}

@Composable
fun Controls(
    state: CameraState,
    viewModel: CameraViewModel,
    galleryViewModel: GalleryViewModel,
    latestPhoto: com.hinnka.mycamera.gallery.PhotoData?,
    onGalleryClick: () -> Unit
) {
    Box(
        modifier = Modifier
            .fillMaxWidth()
            .padding(bottom = 32.dp),
        contentAlignment = Alignment.Center
    ) {
        // 相册入口 (Left)
        Box(
            modifier = Modifier
                .align(Alignment.CenterStart)
                .padding(start = 32.dp)
                .autoRotate()
        ) {
            GalleryThumbnail(
                latestPhoto = latestPhoto,
                viewModel = galleryViewModel,
                onClick = onGalleryClick
            )
        }

        // 拍照按钮 (Center)
        CaptureButton(
            isCapturing = state.isCapturing,
            onClick = { viewModel.capture() }
        )

        // 切换摄像头按钮 (Right)
        IconButton(
            onClick = { viewModel.switchCamera() },
            modifier = Modifier
                .align(Alignment.CenterEnd)
                .padding(end = 40.dp)
                .size(48.dp)
                .autoRotate()
        ) {
            Icon(
                imageVector = Icons.Default.Cameraswitch,
                contentDescription = "Switch Camera",
                tint = Color.White,
                modifier = Modifier.size(32.dp)
            )
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
            .size(80.dp)
            .scale(scale)
            .clickable(enabled = !isCapturing) { onClick() },
        contentAlignment = Alignment.Center
    ) {
        // Outer White Ring
        Box(
            modifier = Modifier
                .fillMaxSize()
                .border(2.dp, Color.White, CircleShape)
        )
        
        // Inner Yellow Ring
        Box(
            modifier = Modifier
                .padding(4.dp)
                .fillMaxSize()
                .border(4.dp, Color(0xFFFFD700), CircleShape)
        )
        
        // Center Solid Button (When not capturing)
        if (!isCapturing) {
            Box(
                modifier = Modifier
                    .padding(12.dp)
                    .fillMaxSize()
                    .clip(CircleShape)
                    .background(Color.Black)
            )
        }
    }
}


fun Modifier.autoRotate(dx: Dp = 0.dp, dy: Dp = 0.dp): Modifier = composed {
    val targetDegrees = if (OrientationObserver.rotationDegrees != 0f) OrientationObserver.rotationDegrees - 180 else 0f

    // 2. 创建动画状态
    // label 是为了调试方便，animationSpec 可以调整快慢和回弹
    val animatedDegrees by animateFloatAsState(
        targetValue = targetDegrees,
        animationSpec = tween(durationMillis = 300),
        label = "rotationAnimation"
    )

    // 3. 使用 layout 修改器
    // 注意：这里我们使用 animatedDegrees (当前动画值) 而不是 targetDegrees (最终值)
    layout { measurable, constraints ->
        // --- 测量阶段 ---

        // A. 测量子组件 (使用原始约束)
        val placeable = measurable.measure(constraints)

        // B. 使用【动画中的角度】计算弧度
        val rad = Math.toRadians(animatedDegrees.toDouble())
        val cos = abs(cos(rad))
        val sin = abs(sin(rad))

        // C. 动态计算当前动画帧所需的外接矩形大小
        // 随着动画进行，这个 newWidth/newHeight 会每一帧都变化，产生平滑的形变效果
        val newWidth = (placeable.width * cos + placeable.height * sin).toInt()
        val newHeight = (placeable.width * sin + placeable.height * cos).toInt()

        val nDx = dx.toPx() * sin
        val nDy = dy.toPx() * sin

        // --- 布局阶段 ---
        layout(newWidth, newHeight) {
            // D. 放置并旋转
            placeable.placeRelativeWithLayer(
                x = (newWidth - placeable.width) / 2 + nDx.toInt(),
                y = (newHeight - placeable.height) / 2 + nDy.toInt()
            ) {
                // 这里也必须使用动画值
                rotationZ = animatedDegrees
            }
        }
    }
}

