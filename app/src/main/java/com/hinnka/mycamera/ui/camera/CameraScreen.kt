package com.hinnka.mycamera.ui.camera

import android.content.Intent
import android.os.Environment
import android.provider.Settings
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.animation.core.animateFloat
import androidx.compose.animation.core.animateFloatAsState
import androidx.compose.animation.core.infiniteRepeatable
import androidx.compose.animation.core.rememberInfiniteTransition
import androidx.compose.animation.core.spring
import androidx.compose.animation.core.tween
import androidx.compose.foundation.Canvas
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.gestures.detectTapGestures
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Cameraswitch
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.composed
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.paint
import androidx.compose.ui.draw.scale
import androidx.compose.ui.geometry.CornerRadius
import androidx.compose.ui.geometry.Rect
import androidx.compose.ui.geometry.RoundRect
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.Path
import androidx.compose.ui.graphics.PathOperation
import androidx.compose.ui.graphics.StrokeCap
import androidx.compose.ui.graphics.drawscope.Stroke
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.layout.layout
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import androidx.core.net.toUri
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.compose.LifecycleEventEffect
import androidx.lifecycle.viewModelScope
import com.hinnka.mycamera.MyCameraApplication
import com.hinnka.mycamera.R
import com.hinnka.mycamera.camera.CameraState
import com.hinnka.mycamera.camera.CameraUtils
import com.hinnka.mycamera.ui.components.GalleryThumbnail
import com.hinnka.mycamera.ui.components.HistogramView
import com.hinnka.mycamera.ui.components.LutControlPanel
import com.hinnka.mycamera.ui.components.PaymentDialog
import com.hinnka.mycamera.ui.components.rememberBackgroundPainter
import com.hinnka.mycamera.utils.OrientationObserver
import com.hinnka.mycamera.viewmodel.CameraViewModel
import com.hinnka.mycamera.viewmodel.GalleryViewModel
import kotlinx.coroutines.flow.distinctUntilChanged
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.launch
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
    FILTERS,
}

@Composable
fun CameraScreen(
    viewModel: CameraViewModel,
    galleryViewModel: GalleryViewModel,
    onGalleryClick: () -> Unit,
    onSettingsClick: () -> Unit,
    onFilterManagementClick: () -> Unit,
    onFrameManagementClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    val context = LocalContext.current
    val state by viewModel.state.collectAsState()
    val latestPhoto by galleryViewModel.latestPhoto.collectAsState()
    val showLevelIndicator by viewModel.showLevelIndicator.collectAsState(initial = false)
    val currentLutId by viewModel.currentLutId.collectAsState()
    val currentRecipeParams by viewModel.currentRecipeParams.collectAsState()
    val categoryOrder by viewModel.categoryOrder.collectAsState(emptyList())
    val useRaw by viewModel.useRaw.collectAsState()
    val useMultiFrame by viewModel.useMultiFrame.collectAsState()
    val useSuperResolution by viewModel.useSuperResolution.collectAsState()
    val useLivePhoto by viewModel.useLivePhoto.collectAsState()
    val phantomMode by viewModel.phantomMode.collectAsState()

    // 标记相机是否已打开
    var cameraOpened by remember { mutableStateOf(false) }

    // UI State
    var activePanel by remember { mutableStateOf(ActivePanel.NONE) }
    var selectedParameter by remember { mutableStateOf(CameraParameter.EXPOSURE_COMPENSATION) }

    val burstCapturingCount = viewModel.burstImageCount

    var isGhostPermissionFlowActive by remember { mutableStateOf(false) }

    val ghostLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.StartActivityForResult(),
        onResult = { _ ->
            // Results are handled via the ON_RESUME lifecycle effect to avoid self-reference issues
        }
    )

    // 当打开滤镜面板时，生成预览图
    LaunchedEffect(activePanel) {
        if (activePanel == ActivePanel.FILTERS) {
            viewModel.generateThumbnail()
        }
    }

    // 从后台返回时检查并恢复相机，刷新最新照片
    LifecycleEventEffect(Lifecycle.Event.ON_RESUME) {
        if (cameraOpened) {
            viewModel.checkAndRecoverCamera()
        }
        galleryViewModel.refreshLatestPhoto()

        // Handle automated ghost mode permission sequence
        if (isGhostPermissionFlowActive) {
            val hasOverlay = Settings.canDrawOverlays(context)
            val hasFiles = Environment.isExternalStorageManager()

            if (hasOverlay && !hasFiles) {
                // Overlay granted, now request files
                ghostLauncher.launch(
                    Intent(
                        Settings.ACTION_MANAGE_APP_ALL_FILES_ACCESS_PERMISSION,
                        ("package:${context.packageName}").toUri()
                    )
                )
            } else if (hasOverlay) {
                // All permissions granted
                isGhostPermissionFlowActive = false
                if (!phantomMode) {
                    viewModel.togglePhantomMode()
                }
            } else {
                // If overlay is still missing after returning, user might have cancelled
                // We stop the automatic flow to avoid getting stuck
                isGhostPermissionFlowActive = false
            }
        }

        viewModel.updateLut()
    }

    // 监听照片保存完成事件，立即刷新缩略图
    LaunchedEffect(Unit) {
        viewModel.imageSavedEvent.collect {
            galleryViewModel.refreshLatestPhoto()
            MyCameraApplication.updateWidgets(context)
        }
    }

    val previewSize by remember(state.currentCameraId, state.aspectRatio) {
        val cameraId = state.currentCameraId
        val size = if (cameraId.isNotEmpty()) {
            CameraUtils.getFixedPreviewSize(context, cameraId, state.aspectRatio)
        } else {
            // 相机未初始化时使用默认尺寸（4:3 = 1440x1080）
            android.util.Size(1440, 1080)
        }
        mutableStateOf(size)
    }

    var showGhostPermissionDialog by remember { mutableStateOf(false) }

    LaunchedEffect(viewModel.showGhostPermissions) {
        if (viewModel.showGhostPermissions) {
            showGhostPermissionDialog = true
            viewModel.showGhostPermissions = false
        }
    }

    if (viewModel.showPaymentDialog) {
        val activity = context.findActivity()
        PaymentDialog(
            onDismiss = { viewModel.showPaymentDialog = false },
            onPurchase = {
                if (activity != null) {
                    viewModel.purchase(activity)
                }
                viewModel.showPaymentDialog = false
            }
        )
    }

    if (showGhostPermissionDialog) {
        AlertDialog(
            onDismissRequest = { showGhostPermissionDialog = false },
            title = {
                Text(
                    text = stringResource(R.string.ghost_mode_dialog_title),
                    style = MaterialTheme.typography.titleLarge
                )
            },
            text = {
                Column {
                    Text(
                        text = stringResource(R.string.ghost_mode_dialog_description),
                        style = MaterialTheme.typography.bodyMedium
                    )
                    Spacer(modifier = Modifier.height(16.dp))
                    Text(
                        text = stringResource(R.string.ghost_mode_permissions_required),
                        style = MaterialTheme.typography.titleSmall
                    )
                    Spacer(modifier = Modifier.height(8.dp))
                    Text(
                        text = stringResource(R.string.ghost_mode_overlay_permission),
                        style = MaterialTheme.typography.bodySmall
                    )
                    Spacer(modifier = Modifier.height(4.dp))
                    Text(
                        text = stringResource(R.string.ghost_mode_file_permission),
                        style = MaterialTheme.typography.bodySmall
                    )
                }
            },
            confirmButton = {
                TextButton(
                    onClick = {
                        showGhostPermissionDialog = false
                        isGhostPermissionFlowActive = true
                        if (!Settings.canDrawOverlays(context)) {
                            ghostLauncher.launch(
                                Intent(
                                    Settings.ACTION_MANAGE_OVERLAY_PERMISSION,
                                    ("package:${context.packageName}").toUri()
                                )
                            )
                        } else if (!Environment.isExternalStorageManager()) {
                            ghostLauncher.launch(
                                Intent(
                                    Settings.ACTION_MANAGE_APP_ALL_FILES_ACCESS_PERMISSION,
                                    ("package:${context.packageName}").toUri()
                                )
                            )
                        } else {
                            isGhostPermissionFlowActive = false
                            viewModel.togglePhantomMode()
                        }
                    }
                ) {
                    Text(stringResource(R.string.ghost_mode_dialog_confirm))
                }
            },
            dismissButton = {
                TextButton(onClick = { showGhostPermissionDialog = false }) {
                    Text(stringResource(R.string.cancel))
                }
            }
        )
    }

    Box(modifier = modifier.fillMaxSize()) {
        val backgroundPainter = rememberBackgroundPainter(viewModel)
        Column(
            modifier = Modifier
                .fillMaxSize()
                .paint(backgroundPainter, contentScale = ContentScale.Crop)
                .navigationBarsPadding()
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
                useLivePhoto = useLivePhoto,
                onLivePhotoToggle = { viewModel.setUseLivePhoto(!state.useLivePhoto) },
                onSettingsClick = {
                    activePanel = if (activePanel == ActivePanel.SETTINGS) ActivePanel.NONE else ActivePanel.SETTINGS
                }
            )

            Card(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(horizontal = 8.dp),
                shape = RoundedCornerShape(4.dp),
                colors = CardDefaults.cardColors(
                    containerColor = Color.Black
                )
            ) {
                Box(
                    modifier = Modifier
                        .padding(4.dp)
                        .fillMaxWidth()
                        .aspectRatio(3 / 4f)
                        .background(Color.Black),
                ) {
                    val currentCameraId = state.currentCameraId
                    val calibrationOffset by viewModel.getCameraOrientationOffset(currentCameraId)
                        .collectAsState(initial = 0)

                    // 相机预览
                    CameraPreviewGL(
                        aspectRatio = state.aspectRatio,
                        previewSize = previewSize,
                        sensorOrientation = state.getCurrentCameraInfo()?.sensorOrientation ?: 0,
                        lensFacing = if (state.getCurrentCameraInfo()?.lensFacing == android.hardware.camera2.CameraCharacteristics.LENS_FACING_FRONT) 0 else 1,
                        calibrationOffset = calibrationOffset,
                        currentLut = viewModel.currentLutConfig,
                        colorRecipeParams = currentRecipeParams,
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
                            // 如果 LUT 面板打开，点击预览区域关闭面板
                            if (activePanel != ActivePanel.NONE) {
                                activePanel = ActivePanel.NONE
                            } else {
                                // 否则执行对焦
                                viewModel.focusOnPoint(x, y, w, h)
                            }
                        },
                        onHistogramUpdated = { viewModel.handleHistogramUpdate(it) },
                        onMeteringUpdated = { w, l -> viewModel.handleMeteringUpdate(w, l) },
                        onDepthInputAvailable = { viewModel.handleDepthMapUpdate(it) },
                        onGLSurfaceViewReady = {
                            viewModel.glSurfaceView = it
                        },
                        livePhotoRecorder = viewModel.livePhotoRecorder,
                        aperture = if (state.isVirtualApertureEnabled) state.virtualAperture else 0f,
                        modifier = Modifier.fillMaxSize()
                    )

                    // Live Photo Indicator
                    if (useLivePhoto) {
                        Surface(
                            modifier = Modifier
                                .padding(12.dp)
                                .align(Alignment.TopEnd),
                            color = Color.Black.copy(alpha = 0.8f),
                            shape = CircleShape
                        ) {
                            Row(
                                modifier = Modifier.padding(4.dp),
                                verticalAlignment = Alignment.CenterVertically
                            ) {
                                Icon(
                                    painterResource(R.drawable.ic_live_photo),
                                    contentDescription = null,
                                    tint = Color.White,
                                    modifier = Modifier.size(18.dp)
                                )
                            }
                        }
                    }


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

                        if (activePanel == ActivePanel.NONE) {
                            // Zoom Control Bar (Overlay at bottom of preview)
                            ZoomControlBar(
                                viewModel = viewModel,
                                zoomRatio = viewModel.zoomRatioByMain,
                                availableCameras = state.availableCameras,
                                currentCameraId = state.getCurrentCameraInfo()?.cameraId ?: "0",
                                onZoomChange = { viewModel.setZoomRatio(it) },
                                onLensSwitch = { lenId -> viewModel.switchToLens(lenId) },
                                onFilterClick = {
                                    // Toggle Filter Panel
                                    activePanel =
                                        if (activePanel == ActivePanel.FILTERS) ActivePanel.NONE else ActivePanel.FILTERS
                                },
                                modifier = Modifier.align(Alignment.BottomCenter)
                            )
                        }

                        // 倒计时覆盖
                        if (state.countdownValue > 0) {
                            CountdownOverlay(
                                countdownValue = state.countdownValue,
                                modifier = Modifier.fillMaxSize()
                            )
                        }

                        if (burstCapturingCount > 0) {
                            BurstCaptureOverlay(
                                count = burstCapturingCount,
                                modifier = Modifier.fillMaxSize()
                            )
                        }
                    }

                    CornerOverlay(
                        modifier = Modifier.fillMaxSize(),
                        radius = 4.dp,
                        color = Color.Black
                    )
                }
                ParameterRuler(
                    parameter = selectedParameter,
                    currentValue = when (selectedParameter) {
                        CameraParameter.EXPOSURE_COMPENSATION -> state.exposureCompensation * state.getExposureCompensationStep()
                        CameraParameter.SHUTTER_SPEED -> state.shutterSpeed.toFloat()
                        CameraParameter.ISO -> state.iso.toFloat()
                        CameraParameter.APERTURE -> if (state.isVirtualApertureEnabled) state.virtualAperture else state.physicalAperture
                        CameraParameter.WHITE_BALANCE -> state.awbTemperature.toFloat()
                    },
                    minValue = when (selectedParameter) {
                        CameraParameter.EXPOSURE_COMPENSATION -> state.getExposureCompensationRange().lower * state.getExposureCompensationStep()
                        CameraParameter.SHUTTER_SPEED -> state.getShutterSpeedRange().lower.toFloat()
                        CameraParameter.ISO -> state.getIsoRange().lower.toFloat()
                        CameraParameter.APERTURE -> 1f // Min synthetic aperture
                        CameraParameter.WHITE_BALANCE -> 2000f
                    },
                    maxValue = when (selectedParameter) {
                        CameraParameter.EXPOSURE_COMPENSATION -> state.getExposureCompensationRange().upper * state.getExposureCompensationStep()
                        CameraParameter.SHUTTER_SPEED -> state.getShutterSpeedRange().upper.toFloat()
                        CameraParameter.ISO -> state.getIsoRange().upper.toFloat()
                        CameraParameter.APERTURE -> 16.0f // Max synthetic aperture
                        CameraParameter.WHITE_BALANCE -> 10000f
                    },
                    isAdjustable = when (selectedParameter) {
                        CameraParameter.EXPOSURE_COMPENSATION -> state.isAutoExposure
                        CameraParameter.SHUTTER_SPEED -> !state.isShutterSpeedAuto
                        CameraParameter.ISO -> !state.isIsoAuto
                        CameraParameter.APERTURE -> state.isVirtualApertureEnabled
                        CameraParameter.WHITE_BALANCE -> state.awbMode != android.hardware.camera2.CameraMetadata.CONTROL_AWB_MODE_AUTO
                    },
                    showAutoButton = when (selectedParameter) {
                        CameraParameter.SHUTTER_SPEED, CameraParameter.ISO, CameraParameter.WHITE_BALANCE, CameraParameter.APERTURE -> true
                        else -> false
                    },
                    onValueChange = { value ->
                        when (selectedParameter) {
                            CameraParameter.EXPOSURE_COMPENSATION -> viewModel.setExposureCompensation((value / state.getExposureCompensationStep()).roundToInt())
                            CameraParameter.SHUTTER_SPEED -> viewModel.setShutterSpeed(value.toLong())
                            CameraParameter.ISO -> viewModel.setIso(value.toInt())
                            CameraParameter.APERTURE -> viewModel.setAperture(value)
                            CameraParameter.WHITE_BALANCE -> viewModel.setAwbTemperature(value.toInt())
                        }
                    },
                    onAutoModeToggle = {
                        when (selectedParameter) {
                            CameraParameter.SHUTTER_SPEED -> viewModel.setShutterSpeedAuto(!state.isShutterSpeedAuto)
                            CameraParameter.ISO -> viewModel.setIsoAuto(!state.isIsoAuto)
                            CameraParameter.WHITE_BALANCE -> {
                                if (state.awbMode == android.hardware.camera2.CameraMetadata.CONTROL_AWB_MODE_AUTO) {
                                    viewModel.setAwbMode(android.hardware.camera2.CameraMetadata.CONTROL_AWB_MODE_OFF)
                                } else {
                                    viewModel.setAwbMode(android.hardware.camera2.CameraMetadata.CONTROL_AWB_MODE_AUTO)
                                }
                            }
                            CameraParameter.APERTURE -> viewModel.setVirtualApertureAuto(!state.isVirtualApertureEnabled)
                            else -> {}
                        }
                    },
                )
            }


            Column(modifier = Modifier.fillMaxWidth().weight(1f)) {
                CameraParameterBar(
                    state = state,
                    selectedParameter = selectedParameter,
                    onParameterClick = { param ->
                        selectedParameter = param
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

        // 全屏遮罩层，用于点击关闭 LutControlPanel
        // 放在最外层 Box，确保覆盖整个屏幕
        if (activePanel != ActivePanel.NONE) {
            Box(
                modifier = Modifier
                    .fillMaxSize()
                    .then(
                        if (activePanel == ActivePanel.SETTINGS) {
                            Modifier.background(Color.Black.copy(alpha = 0.4f))
                        } else Modifier
                    )
                    .pointerInput(Unit) {
                        detectTapGestures {
                            // 点击遮罩关闭 LUT 面板
                            activePanel = ActivePanel.NONE
                        }
                    }
            )
        }

        // TopSheet for settings
        CameraTopSheet(
            visible = activePanel == ActivePanel.SETTINGS,
            aspectRatio = state.aspectRatio,
            onAspectRatioChange = { viewModel.setAspectRatio(it) },
            showLevel = showLevelIndicator,
            onLevelToggle = { viewModel.setShowLevelIndicator(it) },
            useRaw = useRaw && state.isRawSupported,
            onRawToggle = { viewModel.toggleRaw() },
            isRawSupported = state.isRawSupported,
            nrLevel = state.nrLevel,
            availableNrLevels = state.availableNrModes,
            onNRLevelChange = { viewModel.setNRLevel(it) },
            onFilterManageClick = {
                activePanel = ActivePanel.NONE
                onFilterManagementClick()
            },
            onFrameManageClick = {
                activePanel = ActivePanel.NONE
                onFrameManagementClick()
            },
            phantomMode = phantomMode,
            onPhantomModeToggle = {
                if (it && (!Settings.canDrawOverlays(context) || !Environment.isExternalStorageManager())) {
                    showGhostPermissionDialog = true
                } else {
                    viewModel.togglePhantomMode()
                }
            },
            onMoreSettingsClick = {
                activePanel = ActivePanel.NONE
                onSettingsClick()
            },
            useMultiFrame = useMultiFrame,
            onMultiFrameToggle = {
                if (!it) {
                    viewModel.setUseSuperResolution(false)
                }
                viewModel.setUseMultiFrame(it)
            },
            useSuperResolution = useSuperResolution,
            onSuperResolutionToggle = {
                if (it) {
                    viewModel.setUseMultiFrame(true)
                }
                viewModel.setUseSuperResolution(it)
            },
            showGrid = state.showGrid,
            onShowGridToggle = { viewModel.toggleGrid() }
        )

        // LutControlPanel 显示在遮罩层之上，确保能接收点击事件
        if (activePanel != ActivePanel.NONE) {
            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(top = 48.dp)
                    .aspectRatio(3 / 4f),
                contentAlignment = Alignment.BottomCenter
            ) {
                if (activePanel == ActivePanel.FILTERS) {
                    LutControlPanel(
                        availableLuts = viewModel.availableLutList,
                        currentLutId = currentLutId,
                        thumbnail = viewModel.previewThumbnail,
                        onLutSelected = { viewModel.setLut(it) },
                        categoryOrder = categoryOrder,
                        modifier = Modifier.fillMaxWidth()
                            .padding(horizontal = 8.dp)
                    )
                }
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
            onTap = { viewModel.capture() },
            onLongPressStart = { viewModel.startContinuousCapture() },
            onLongPressEnd = { viewModel.stopContinuousCapture() }
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
                contentDescription = stringResource(R.string.switch_camera),
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
    onTap: () -> Unit,
    onLongPressStart: () -> Unit,
    onLongPressEnd: () -> Unit,
    modifier: Modifier = Modifier
) {
    val infiniteTransition = rememberInfiniteTransition(label = "infinite transition")

    val scale by animateFloatAsState(
        targetValue = if (isCapturing) 0.9f else 1f,
        animationSpec = spring(dampingRatio = 0.5f),
        label = "captureScale"
    )


    val rotation by infiniteTransition.animateFloat(
        initialValue = 0f,
        targetValue = 360f,
        animationSpec = infiniteRepeatable(tween(1500)),
        label = "livePhotoRotation"
    )

    val currentIsCapturing by rememberUpdatedState(isCapturing)

    Box(
        modifier = modifier
            .size(72.dp)
            .scale(scale)
            .pointerInput(Unit) {
                var isLongPressStarted = false
                detectTapGestures(
                    onTap = {
                        if (!currentIsCapturing) {
                            onTap()
                        }
                    },
                    onLongPress = {
                        if (!currentIsCapturing) {
                            isLongPressStarted = true
                            onLongPressStart()
                        }
                    },
                    onPress = {
                        isLongPressStarted = false
                        try {
                            tryAwaitRelease()
                        } finally {
                            if (isLongPressStarted) {
                                onLongPressEnd()
                            }
                        }
                    }
                )
            },
        contentAlignment = Alignment.Center
    ) {
        // Inner Yellow Ring
        Box(
            modifier = Modifier
                .fillMaxSize()
                .border(2.dp, Color(0xFFFFD700), CircleShape)
        )

        // Live Photo Indicator (Spinning dash)
        if (isCapturing) {
            Canvas(modifier = Modifier.fillMaxSize()) {
                val strokeWidth = 3.dp.toPx()
                drawArc(
                    color = Color(0xFFFFD700),
                    startAngle = rotation - 90f,
                    sweepAngle = 90f,
                    useCenter = false,
                    style = Stroke(
                        width = strokeWidth,
                        cap = StrokeCap.Round
                    )
                )
            }
        }

        // Center Solid Button
        Box(
            modifier = Modifier
                .padding(4.dp)
                .fillMaxSize()
                .clip(CircleShape)
                .background(Color.White)
        )
    }
}


fun Modifier.autoRotate(dx: Dp = 0.dp, dy: Dp = 0.dp): Modifier = composed {
    val targetDegrees =
        if (OrientationObserver.rotationDegrees != 0f) OrientationObserver.rotationDegrees - 180 else 0f

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
                        left = 0f,
                        top = 0f,
                        right = size.width,
                        bottom = size.height,
                        cornerRadius = CornerRadius(radius.toPx(), radius.toPx()),
                    )
                )
            }
            // 关键：计算差集 (全屏 - 圆角矩形 = 四个角)
            op(this, roundedRect, PathOperation.Difference)
        }
        drawPath(path, color)
    }
}

private fun android.content.Context.findActivity(): android.app.Activity? {
    var context = this
    while (context is android.content.ContextWrapper) {
        if (context is android.app.Activity) return context
        context = context.baseContext
    }
    return null
}
