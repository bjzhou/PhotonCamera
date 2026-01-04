package com.hinnka.mycamera.ui.camera

import androidx.compose.animation.core.animateFloatAsState
import androidx.compose.animation.core.spring
import androidx.compose.animation.core.tween
import androidx.compose.foundation.Canvas
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
import androidx.compose.ui.geometry.CornerRadius
import androidx.compose.ui.geometry.Rect
import androidx.compose.ui.geometry.RoundRect
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.Path
import androidx.compose.ui.graphics.PathOperation
import androidx.compose.ui.layout.layout
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.compose.LifecycleEventEffect
import com.hinnka.mycamera.camera.CameraState
import com.hinnka.mycamera.camera.CameraUtils
import com.hinnka.mycamera.ui.components.GalleryThumbnail
import com.hinnka.mycamera.ui.components.HistogramView
import com.hinnka.mycamera.ui.components.LutControlPanel
import com.hinnka.mycamera.utils.OrientationObserver
import com.hinnka.mycamera.viewmodel.CameraViewModel
import com.hinnka.mycamera.viewmodel.GalleryViewModel
import kotlin.math.abs
import kotlin.math.cos
import kotlin.math.roundToInt
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
    onSettingsClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    val context = LocalContext.current
    val state by viewModel.state.collectAsState()
    val latestPhoto by galleryViewModel.latestPhoto.collectAsState()
    val showLevelIndicator by viewModel.showLevelIndicator.collectAsState(initial = false)

    val backgroundColor = Color(0xFF434A5D)
    
    // 标记相机是否已打开
    var cameraOpened by remember { mutableStateOf(false) }
    
    // UI State
    var activePanel by remember { mutableStateOf(ActivePanel.NONE) }
    var selectedParameter by remember { mutableStateOf<CameraParameter?>(null) }
    
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
            .background(backgroundColor)
    ) {
        // 顶部控制条
        CameraTopBar(
            flashMode = state.flashMode,
            onFlashToggle = {
                viewModel.toggleFlash()
            },
            timerSeconds = state.timerSeconds,
            onTimerToggle = { viewModel.toggleTimer() },
            showHistogram = viewModel.showHistogram,
            onHistogramToggle = {
                viewModel.saveShowHistogram(!viewModel.showHistogram)
            },
            showGrid = state.showGrid,
            onGridToggle = { viewModel.toggleGrid() },
            onSettingsClick = onSettingsClick
        )

        Box(
            modifier = Modifier
                .padding(8.dp)
                .fillMaxWidth()
                .aspectRatio(3 / 4f)
                .background(Color.Black),
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
            
            Box(modifier = Modifier.fillMaxWidth().aspectRatio(3 / 4f).align(Alignment.Center)) {
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
                    LutControlPanel(
                        availableLuts = viewModel.availableLutList,
                        currentLutId = viewModel.currentLutId,
                        lutIntensity = state.lutIntensity,
                        onLutSelected = { viewModel.setLut(it) },
                        onIntensityChange = { viewModel.setLutIntensity(it) },
                        modifier = Modifier.fillMaxWidth().align(Alignment.BottomCenter).padding(bottom = 48.dp)
                    )
                }

                // Zoom Control Bar (Overlay at bottom of preview)
                ZoomControlBar(
                    zoomRatio = viewModel.zoomRatioByMain,
                    availableCameras = state.availableCameras,
                    currentCameraId = state.getCurrentCameraInfo()?.cameraId ?: "0",
                    onZoomChange = { viewModel.setZoomRatio(it) },
                    onLensSwitch = { lenId -> viewModel.switchToLens(lenId) },
                    onFilterClick = {
                        // Toggle Filter Panel
                        activePanel = if (activePanel == ActivePanel.FILTERS) ActivePanel.NONE else ActivePanel.FILTERS
                    },
                    modifier = Modifier.align(Alignment.BottomCenter)
                )
                
                // 网格线覆盖
                if (state.showGrid) {
                    GridOverlay(
                        aspectRatio = state.aspectRatio,
                        modifier = Modifier.fillMaxSize()
                    )
                }
                
                // 水平仪覆盖
                if (showLevelIndicator) {
                    LevelIndicatorOverlay(
                        aspectRatio = state.aspectRatio,
                        modifier = Modifier.fillMaxSize()
                    )
                }
                
                // 倒计时覆盖
                if (state.countdownValue > 0) {
                    CountdownOverlay(
                        countdownValue = state.countdownValue,
                        modifier = Modifier.fillMaxSize()
                    )
                }
            }

            Box(modifier = Modifier.align(Alignment.BottomCenter)) {

                // Parameter Ruler (shown above CameraParameterBar when a parameter is selected)
                selectedParameter?.let { param ->
                    ParameterRuler(
                        parameter = param,
                        currentValue = when (param) {
                            CameraParameter.EXPOSURE_COMPENSATION -> state.exposureCompensation * state.getExposureCompensationStep()
                            CameraParameter.SHUTTER_SPEED -> state.shutterSpeed.toFloat()
                            CameraParameter.ISO -> state.iso.toFloat()
                            CameraParameter.APERTURE -> state.aperture
                            CameraParameter.WHITE_BALANCE -> state.awbTemperature.toFloat()
                        },
                        minValue = when (param) {
                            CameraParameter.EXPOSURE_COMPENSATION -> state.getExposureCompensationRange().lower * state.getExposureCompensationStep()
                            CameraParameter.SHUTTER_SPEED -> state.getShutterSpeedRange().lower.toFloat()
                            CameraParameter.ISO -> state.getIsoRange().lower.toFloat()
                            CameraParameter.APERTURE -> state.aperture // Fixed
                            CameraParameter.WHITE_BALANCE -> 2000f
                        },
                        maxValue = when (param) {
                            CameraParameter.EXPOSURE_COMPENSATION -> state.getExposureCompensationRange().upper * state.getExposureCompensationStep()
                            CameraParameter.SHUTTER_SPEED -> state.getShutterSpeedRange().upper.toFloat()
                            CameraParameter.ISO -> state.getIsoRange().upper.toFloat()
                            CameraParameter.APERTURE -> state.aperture // Fixed
                            CameraParameter.WHITE_BALANCE -> 10000f
                        },
                        isAdjustable = when (param) {
                            CameraParameter.EXPOSURE_COMPENSATION -> state.isAutoExposure
                            CameraParameter.SHUTTER_SPEED -> !state.isAutoExposure
                            CameraParameter.ISO -> !state.isAutoExposure
                            CameraParameter.APERTURE -> false
                            CameraParameter.WHITE_BALANCE -> state.awbMode != android.hardware.camera2.CameraMetadata.CONTROL_AWB_MODE_AUTO
                        },
                        showAutoButton = when (param) {
                            CameraParameter.SHUTTER_SPEED, CameraParameter.ISO, CameraParameter.WHITE_BALANCE -> true
                            else -> false
                        },
                        onValueChange = { value ->
                            when (param) {
                                CameraParameter.EXPOSURE_COMPENSATION -> viewModel.setExposureCompensation((value / state.getExposureCompensationStep()).roundToInt())
                                CameraParameter.SHUTTER_SPEED -> viewModel.setShutterSpeed(value.toLong())
                                CameraParameter.ISO -> viewModel.setIso(value.toInt())
                                CameraParameter.APERTURE -> {} // Not adjustable
                                CameraParameter.WHITE_BALANCE -> viewModel.setAwbTemperature(value.toInt())
                            }
                        },
                        onAutoModeToggle = {
                            when (param) {
                                CameraParameter.SHUTTER_SPEED -> viewModel.setAutoExposure(!state.isAutoExposure)
                                CameraParameter.ISO -> viewModel.setAutoExposure(!state.isAutoExposure)
                                CameraParameter.WHITE_BALANCE -> {
                                    if (state.awbMode == android.hardware.camera2.CameraMetadata.CONTROL_AWB_MODE_AUTO) {
                                        viewModel.setAwbMode(android.hardware.camera2.CameraMetadata.CONTROL_AWB_MODE_OFF)
                                    } else {
                                        viewModel.setAwbMode(android.hardware.camera2.CameraMetadata.CONTROL_AWB_MODE_AUTO)
                                    }
                                }
                                else -> {}
                            }
                        },
                        onDismiss = { selectedParameter = null }
                    )
                }
            }

            CornerOverlay(
                modifier = Modifier.fillMaxSize(),
                radius = 16.dp,
                color = backgroundColor
            )
        }

        Column(modifier = Modifier.fillMaxWidth().weight(1f)) {
            CameraParameterBar(
                state = state,
                selectedParameter = selectedParameter,
                onParameterClick = { param ->
                    // Toggle selection: if clicking the same parameter, deselect it; otherwise select new one
                    selectedParameter = if (selectedParameter == param) null else param
                }
            )

            Box(modifier = Modifier.weight(1f), contentAlignment = Alignment.Center) {
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
                    .background(Color(0xFF434A5D))
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

@Composable
fun CornerOverlay(
    modifier: Modifier = Modifier,
    radius: Dp,
    color: Color = Color.Black
) {
    Canvas(modifier = modifier) {
        val path = Path().apply {
            // 创建一个全屏矩形
            addRect(Rect(0f, 0f, size.width, size.height))
            // 减去中间的圆角矩形
            val roundedRect = Path().apply {
                addRoundRect(
                    RoundRect(
                        rect = Rect(0f, 0f, size.width, size.height),
                        cornerRadius = CornerRadius(radius.toPx())
                    )
                )
            }
            // 关键：计算差集 (全屏 - 圆角矩形 = 四个角)
            op(this, roundedRect, PathOperation.Difference)
        }
        drawPath(path, color)
    }
}
