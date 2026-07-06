package com.hinnka.mycamera.ui.camera

import android.app.Activity
import android.content.Context
import android.content.ContextWrapper
import android.content.Intent
import android.graphics.Bitmap
import android.os.Environment
import android.provider.Settings
import android.view.WindowManager
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.animation.*
import androidx.compose.animation.core.*
import androidx.compose.foundation.*
import androidx.compose.foundation.gestures.*
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.filled.Check
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Close
import androidx.compose.material.icons.filled.PlayArrow
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
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.drawscope.Stroke
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.layout.boundsInRoot
import androidx.compose.ui.layout.layout
import androidx.compose.ui.layout.onGloballyPositioned
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.Constraints
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.IntOffset
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.core.net.toUri
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.compose.LifecycleEventEffect
import com.hinnka.mycamera.MyCameraApplication
import com.hinnka.mycamera.R
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.camera.CameraState
import com.hinnka.mycamera.data.AiFocusTargetMode
import com.hinnka.mycamera.lut.BaselineColorCorrectionTarget
import com.hinnka.mycamera.model.CameraPreset
import com.hinnka.mycamera.model.ColorRecipeParams
import com.hinnka.mycamera.model.EffectParams
import com.hinnka.mycamera.raw.SpectralFilmSelection
import com.hinnka.mycamera.ui.components.*
import com.hinnka.mycamera.utils.OrientationObserver
import com.hinnka.mycamera.viewmodel.CameraViewModel
import com.hinnka.mycamera.viewmodel.GalleryViewModel
import com.hinnka.mycamera.video.CaptureMode
import com.hinnka.mycamera.video.QuickShotResolutionPreset
import com.hinnka.mycamera.video.VideoAspectRatio
import com.hinnka.mycamera.video.VideoFpsPreset
import com.hinnka.mycamera.video.VideoLogProfile
import com.hinnka.mycamera.video.VideoResolutionPreset
import kotlinx.coroutines.Job
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import kotlin.math.*
import com.hinnka.mycamera.ui.icons.AppIcons

/**
 * 主相机界面
 */
enum class ActivePanel {
    NONE,
    SETTINGS,
    FILTERS,
    LUT_EDIT,
    PRESETS
}

private const val InitialPreviewTransitionDelayMillis = 150L
private const val PreviewTransitionRevealDurationMillis = 800
private const val RawCaptureTapDebounceMillis = 1000L
private const val EffectsParamsSaveDebounceMillis = 250L
private const val DefaultShutterSpeedNs = 1_000_000_000f / 60f
private const val DefaultIso = 100f
private const val DefaultAwbTemperature = 5000f
private const val DefaultFocusDistance = 0f
private val CameraTopBarBaseTopPadding = 32.dp
private val CameraTopBarBaseHeight = 80.dp

@Composable
private fun cameraTopSafePadding(): Dp {
    val density = LocalDensity.current
    val topInset = with(density) {
        maxOf(
            WindowInsets.statusBars.getTop(this).toDp(),
            WindowInsets.displayCutout.getTop(this).toDp()
        )
    }
    return (topInset - CameraTopBarBaseTopPadding).coerceAtLeast(0.dp)
}

private fun Bitmap.copyForCaptureAnimation(): Bitmap? {
    if (isRecycled) return null
    val copyConfig = if (config == Bitmap.Config.HARDWARE) {
        Bitmap.Config.ARGB_8888
    } else {
        config ?: Bitmap.Config.ARGB_8888
    }
    return copy(copyConfig, false) ?: copy(Bitmap.Config.ARGB_8888, false)
}

private fun Bitmap.recycleIfAlive() {
    if (!isRecycled) {
        recycle()
    }
}

@Composable
private fun PanelDismissPreviewOverlay(
    bounds: Rect?,
    parentBounds: Rect?,
    dimBackground: Boolean,
    onDismiss: () -> Unit,
    modifier: Modifier = Modifier
) {
    val bounds = bounds ?: return
    if (bounds.width <= 0f || bounds.height <= 0f) return

    val currentOnDismiss by rememberUpdatedState(onDismiss)
    val density = LocalDensity.current
    val parentLeft = parentBounds?.left ?: 0f
    val parentTop = parentBounds?.top ?: 0f
    val width = with(density) { bounds.width.toDp() }
    val height = with(density) { bounds.height.toDp() }

    Box(
        modifier = modifier
            .offset {
                IntOffset(
                    x = (bounds.left - parentLeft).roundToInt(),
                    y = (bounds.top - parentTop).roundToInt()
                )
            }
            .size(width = width, height = height)
            .then(
                if (dimBackground) {
                    Modifier.background(Color.Black.copy(alpha = 0.4f))
                } else {
                    Modifier
                }
            )
            .pointerInput(Unit) {
                detectTapGestures {
                    currentOnDismiss()
                }
            }
    )
}

private fun CameraParameter.defaultResetValue(): Float {
    return when (this) {
        CameraParameter.EXPOSURE_COMPENSATION -> 0f
        CameraParameter.SHUTTER_SPEED -> DefaultShutterSpeedNs
        CameraParameter.ISO -> DefaultIso
        CameraParameter.FOCUS -> DefaultFocusDistance
        CameraParameter.WHITE_BALANCE -> DefaultAwbTemperature
    }
}

@Composable
fun CameraScreen(
    viewModel: CameraViewModel,
    galleryViewModel: GalleryViewModel,
    onGalleryClick: () -> Unit,
    onSettingsClick: () -> Unit,
    onFilterManagementClick: (String?) -> Unit,
    onFrameManagementClick: () -> Unit,
    onToolboxClick: () -> Unit,
    onPresetEditClick: (String?) -> Unit,
    onPresetManagementClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    val context = LocalContext.current
    val scope = rememberCoroutineScope()
    val state by viewModel.state.collectAsState()
    val latestPhoto by galleryViewModel.latestPhoto.collectAsState()
    val showLevelIndicator by viewModel.showLevelIndicator.collectAsState(initial = false)
    val focusPeakingEnabled by viewModel.focusPeakingEnabled.collectAsState(initial = true)
    val keepScreenOn by viewModel.keepScreenOn.collectAsState(initial = false)
    val currentLutId by viewModel.currentLutId.collectAsState()
    val currentRecipeParams by viewModel.currentRecipeParams.collectAsState()
    val lutSelectorMode by viewModel.lutSelectorMode.collectAsState()
    val currentEffectParams by viewModel.currentEffectParams.collectAsState()
    val activePresetId by viewModel.activePresetId.collectAsState()
    val customPresets by viewModel.customPresets.collectAsState()
    var previewEffectParamsOverride by remember { mutableStateOf<EffectParams?>(null) }
    var pendingEffectParamsToSave by remember { mutableStateOf<EffectParams?>(null) }
    var effectParamsSaveJob by remember { mutableStateOf<Job?>(null) }
    val previewEffectParams = previewEffectParamsOverride ?: currentEffectParams
    val mergedRecipeParams = remember(currentRecipeParams, previewEffectParams) {
        previewEffectParams.applyTo(currentRecipeParams)
    }
    val currentBaselineRecipeParams by viewModel.currentBaselineRecipeParams.collectAsState()
    val categoryOrder by viewModel.categoryOrder.collectAsState(emptyList())
    val useRaw by viewModel.useRaw.collectAsState()
    val useMFNR by viewModel.useMFNR.collectAsState()
    val useHdrComposition by viewModel.useHdrComposition.collectAsState()
    val useMultipleExposure by viewModel.useMultipleExposure.collectAsState()
    val useMFSR by viewModel.useMFSR.collectAsState()
    val useLivePhoto by viewModel.useLivePhoto.collectAsState()
    val aiFocusTargetMode by viewModel.aiFocusTargetMode.collectAsState()
    val enableDevelopAnimation by viewModel.enableDevelopAnimation.collectAsState()
    val hlgHardwareCompatibilityEnabled by viewModel.hlgHardwareCompatibilityEnabled.collectAsState()
    val phantomMode by viewModel.phantomMode.collectAsState()
    val topSheetAspectRatios by viewModel.topSheetAspectRatios.collectAsState()
    val videoCodec by viewModel.videoCodec.collectAsState()
    val videoAudioInputOptions by viewModel.videoAudioInputOptions.collectAsState()
    val phantomPipPreview by viewModel.phantomPipPreview.collectAsState()
    val rawDcpId by viewModel.rawDcpId.collectAsState()
    val rawDcpIdsByLens by viewModel.rawDcpIdsByLens.collectAsState()
    val jpgBaselineLutId by viewModel.jpgBaselineLutId.collectAsState()
    val rawBaselineLutId by viewModel.rawBaselineLutId.collectAsState()
    val phantomBaselineLutId by viewModel.phantomBaselineLutId.collectAsState()
    val rawExposureCompensation by viewModel.rawExposureCompensation.collectAsState()
    val rawAutoExposure by viewModel.rawAutoExposure.collectAsState()
    val rawHighlightsAdjustment by viewModel.rawHighlightsAdjustment.collectAsState()
    val rawShadowsAdjustment by viewModel.rawShadowsAdjustment.collectAsState()
    val rawBlackPointCorrection by viewModel.rawBlackPointCorrection.collectAsState()
    val rawWhitePointCorrection by viewModel.rawWhitePointCorrection.collectAsState()
    val droMode by viewModel.droMode.collectAsState()
    val rawColorEngine by viewModel.rawRenderingEngine.collectAsState()
    val rawToneMappingParameters by viewModel.rawToneMappingParameters.collectAsState()
    val naturalLightEnabled by viewModel.naturalLightEnabled.collectAsState()
    val naturalLightWarningShown by viewModel.naturalLightWarningShown.collectAsState()
    val rawSpectralFilmStock by viewModel.rawSpectralFilmStock.collectAsState()
    val rawSpectralFilmSelection by viewModel.rawSpectralFilmSelection.collectAsState()
    val rawSpectralFilmPrint by viewModel.rawSpectralFilmPrint.collectAsState()
    val multipleExposureState = viewModel.multipleExposureState
    val canStartShutterAnimation by viewModel.canStartShutterAnimation.collectAsState()
    val currentCaptureModeForEffects by rememberUpdatedState(state.captureMode)
    var previewRecipeParamsOverride by remember(currentLutId, activePresetId) {
        mutableStateOf<ColorRecipeParams?>(null)
    }
    var pendingCaptureAnimationBitmap by remember { mutableStateOf<Bitmap?>(null) }
    var cameraScreenBounds by remember { mutableStateOf<Rect?>(null) }
    var previewBounds by remember { mutableStateOf<Rect?>(null) }
    var viewfinderAreaBounds by remember { mutableStateOf<Rect?>(null) }
    var zoomBarBounds by remember { mutableStateOf<Rect?>(null) }
    var galleryThumbnailBounds by remember { mutableStateOf<Rect?>(null) }
    var captureAnimationSnapshot by remember { mutableStateOf<CaptureAnimationSnapshot?>(null) }
    var previewTransitionActive by remember { mutableStateOf(true) }
    var previewTransitionRevealing by remember { mutableStateOf(false) }
    var previewTransitionToken by remember { mutableIntStateOf(0) }
    var previewTransitionAwaitingResume by remember { mutableStateOf(false) }
    var previewTransitionSawPause by remember { mutableStateOf(false) }
    var hasPlayedInitialPreviewTransition by remember { mutableStateOf(false) }
    var rawCaptureTapLocked by remember { mutableStateOf(false) }
    var baselineEditLutId by remember { mutableStateOf<String?>(null) }
    var baselineEditTarget by remember { mutableStateOf<BaselineColorCorrectionTarget?>(null) }

    fun saveEffectParamsDebounced(params: EffectParams) {
        previewEffectParamsOverride = params
        pendingEffectParamsToSave = params
        effectParamsSaveJob?.cancel()
        effectParamsSaveJob = scope.launch {
            delay(EffectsParamsSaveDebounceMillis)
            viewModel.setEffectParams(params)
            pendingEffectParamsToSave = null
            effectParamsSaveJob = null
        }
    }

    fun flushEffectParamsSave() {
        effectParamsSaveJob?.cancel()
        effectParamsSaveJob = null
        pendingEffectParamsToSave?.let(viewModel::setEffectParams)
        pendingEffectParamsToSave = null
    }

    fun discardTransientLookEdits() {
        effectParamsSaveJob?.cancel()
        effectParamsSaveJob = null
        pendingEffectParamsToSave = null
        previewEffectParamsOverride = null
        previewRecipeParamsOverride = null
    }

    LaunchedEffect(currentEffectParams) {
        if (previewEffectParamsOverride == currentEffectParams) {
            previewEffectParamsOverride = null
        }
    }

    DisposableEffect(Unit) {
        onDispose {
            flushEffectParamsSave()
        }
    }

    // 标记相机是否已打开
    var cameraOpened by remember { mutableStateOf(false) }

    // UI State
    var activePanel by remember { mutableStateOf(ActivePanel.NONE) }
    var showEffectsSheet by remember { mutableStateOf(false) }
    var selectedParameter by remember { mutableStateOf(CameraParameter.EXPOSURE_COMPENSATION) }
    var showVideoParameterRuler by remember { mutableStateOf(false) }
    val isXpan = state.aspectRatio == AspectRatio.XPAN
    val activeBaselineTarget = when {
        phantomMode -> BaselineColorCorrectionTarget.PHANTOM
        useRaw && state.captureMode == CaptureMode.PHOTO && state.isRawSupported -> BaselineColorCorrectionTarget.RAW
        else -> BaselineColorCorrectionTarget.JPG
    }
    val activeBaselineLutId = when (activeBaselineTarget) {
        BaselineColorCorrectionTarget.JPG -> jpgBaselineLutId
        BaselineColorCorrectionTarget.RAW -> rawBaselineLutId
        BaselineColorCorrectionTarget.PHANTOM -> phantomBaselineLutId
    }


    val burstCapturingCount = viewModel.burstImageCount

    var isGhostPermissionFlowActive by remember { mutableStateOf(false) }
    val activity = remember(context) { context.findActivity() }

    val ghostLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.StartActivityForResult(),
        onResult = { _ ->
            // Results are handled via the ON_RESUME lifecycle effect to avoid self-reference issues
        }
    )

    val dcpImportLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.GetMultipleContents(),
        onResult = { uris ->
            if (uris.isNotEmpty()) {
                viewModel.importRawDcps(uris) { _, _ -> }
            }
        }
    )

    // 当打开滤镜面板时，生成预览图
    LaunchedEffect(activePanel) {
        if (activePanel == ActivePanel.FILTERS) {
            viewModel.generateThumbnail()
        }
    }

    LaunchedEffect(useRaw, state.captureMode) {
        if (!useRaw || state.captureMode != CaptureMode.PHOTO) {
            rawCaptureTapLocked = false
        }
    }

    // 从后台返回时检查并恢复相机，刷新最新照片
    LifecycleEventEffect(Lifecycle.Event.ON_RESUME) {
        viewModel.checkAndRecoverCamera()
        viewModel.refreshLocationOnResume()
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
            if (!enableDevelopAnimation || currentCaptureModeForEffects != CaptureMode.PHOTO) {
                pendingCaptureAnimationBitmap = null
                captureAnimationSnapshot = null
                MyCameraApplication.updateWidgets(context)
                return@collect
            }
            val sourceBounds = previewBounds
            val targetBounds = galleryThumbnailBounds

            fun startCaptureAnimation(bitmap: Bitmap) {
                if (sourceBounds == null || targetBounds == null) {
                    bitmap.recycleIfAlive()
                    return
                }
                scope.launch {
                    val processedBitmap = viewModel.applyLut(bitmap)
                    val animationBitmap = processedBitmap.copyForCaptureAnimation()
                    if (processedBitmap !== animationBitmap) {
                        processedBitmap.recycleIfAlive()
                    }
                    animationBitmap?.let {
                        captureAnimationSnapshot = CaptureAnimationSnapshot(
                            bitmap = it.asImageBitmap(),
                            sourceBounds = sourceBounds,
                            targetBounds = targetBounds
                        )
                    }
                }
            }

            pendingCaptureAnimationBitmap?.let(::startCaptureAnimation)
                ?: viewModel.glSurfaceView?.capturePreviewFrame(::startCaptureAnimation)
            pendingCaptureAnimationBitmap = null
            MyCameraApplication.updateWidgets(context)
        }
    }

    val previewSize = state.currentPreviewSize
    val previewAspectRatio = state.getPreviewAspectRatio()
    val previewTransitionCoverFractionState = animateFloatAsState(
        targetValue = when {
            previewTransitionActive && !previewTransitionRevealing -> 1f
            previewTransitionActive -> 0f
            else -> 0f
        },
        animationSpec = if (previewTransitionActive && !previewTransitionRevealing) {
            snap()
        } else {
            tween(
                durationMillis = PreviewTransitionRevealDurationMillis,
                easing = FastOutSlowInEasing
            )
        },
        label = "previewTransitionCoverFraction"
    )
    val previewTransitionCoverFraction = previewTransitionCoverFractionState.value

    fun runPreviewTransition(onSwitch: () -> Unit) {
        previewTransitionActive = true
        previewTransitionRevealing = false
        previewTransitionToken += 1
        previewTransitionAwaitingResume = true
        previewTransitionSawPause = false
        scope.launch {
            withFrameNanos { }
            onSwitch()
        }
    }

    fun switchToLensWithPreviewTransition(cameraId: String) {
        if (cameraId == state.getCurrentCameraInfo()?.cameraId) return
        runPreviewTransition { viewModel.switchToLens(cameraId) }
    }

    fun setZoomWithPreviewTransition(targetZoom: Float) {
        if (viewModel.isCurrentLensCustomZoomRatioStop(targetZoom)) {
            viewModel.setZoomRatio(targetZoom)
            return
        }
        val currentCamera = state.getCurrentCameraInfo()
        val currentCameraId = currentCamera?.cameraId ?: "0"
        val camera = viewModel.findOptimalLens(
            targetZoom,
            state.availableCameras,
            currentCameraId
        )
        if (camera != null && camera.cameraId != currentCamera?.cameraId) {
            runPreviewTransition {
                viewModel.switchToLensAndSetZoomRatio(camera.cameraId, targetZoom)
            }
        } else {
            viewModel.setZoomRatio(targetZoom)
        }
    }

    fun switchCameraWithPreviewTransition() {
        runPreviewTransition { viewModel.switchCamera() }
    }

    fun setCaptureModeWithPreviewTransition(mode: CaptureMode) {
        if (mode == state.captureMode) return
        runPreviewTransition {
            if (mode == CaptureMode.VIDEO && state.aspectRatio == AspectRatio.XPAN) {
                viewModel.setAspectRatio(AspectRatio.RATIO_4_3)
            }
            viewModel.setCaptureMode(mode)
        }
    }

    fun presetTargetAspectRatio(preset: CameraPreset?): AspectRatio {
        return try {
            AspectRatio.valueOf(preset?.aspectRatio ?: AspectRatio.RATIO_4_3.name)
        } catch (_: Exception) {
            AspectRatio.RATIO_4_3
        }
    }

    fun presetRequiresPreviewTransition(preset: CameraPreset?): Boolean {
        val targetAspectRatio = presetTargetAspectRatio(preset)
        var targetUseRaw = preset?.useRaw ?: false
        var targetUseMFNR = preset?.useMFNR ?: false
        var targetUseMFSR = preset?.useMFSR ?: false

        if (targetUseRaw) {
            targetUseMFSR = false
        }
        if (targetUseMFNR) {
            targetUseMFSR = false
        }
        if (targetUseMFSR && targetUseRaw) {
            targetUseMFSR = false
        }

        return targetAspectRatio != state.aspectRatio ||
            targetUseRaw != useRaw ||
            targetUseMFNR != useMFNR ||
            targetUseMFSR != useMFSR
    }

    LaunchedEffect(previewTransitionToken, state.isPreviewActive, previewTransitionAwaitingResume) {
        if (!previewTransitionAwaitingResume) return@LaunchedEffect

        if (!state.isPreviewActive) {
            previewTransitionSawPause = true
            return@LaunchedEffect
        }

        if (previewTransitionSawPause) {
            delay(80)
            previewTransitionRevealing = true
            delay(220)
            previewTransitionActive = false
            previewTransitionAwaitingResume = false
            previewTransitionSawPause = false
        }
    }

    val shouldKeepScreenOn = keepScreenOn || state.videoRecordingState.isRecording

    DisposableEffect(activity, shouldKeepScreenOn) {
        if (shouldKeepScreenOn) {
            activity?.window?.addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON)
        } else {
            activity?.window?.clearFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON)
        }

        onDispose {
            activity?.window?.clearFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON)
        }
    }

    LaunchedEffect(previewTransitionToken) {
        if (previewTransitionToken == 0) return@LaunchedEffect
        delay(700)
        if (previewTransitionAwaitingResume) {
            previewTransitionRevealing = true
            delay(220)
            previewTransitionActive = false
            previewTransitionAwaitingResume = false
            previewTransitionSawPause = false
        }
    }

    LaunchedEffect(
        state.isPreviewActive,
        state.captureMode,
        hasPlayedInitialPreviewTransition,
        canStartShutterAnimation
    ) {
        val canRevealInitialPreview =
            canStartShutterAnimation ||
                state.captureMode == CaptureMode.VIDEO ||
                state.captureMode == CaptureMode.QUICK_SHOT
        if (hasPlayedInitialPreviewTransition || !state.isPreviewActive || !canRevealInitialPreview) return@LaunchedEffect
        previewTransitionActive = true
        delay(InitialPreviewTransitionDelayMillis)
        previewTransitionRevealing = true
        delay(PreviewTransitionRevealDurationMillis.toLong())
        previewTransitionActive = false
        hasPlayedInitialPreviewTransition = true
    }

    var showGhostPermissionDialog by remember { mutableStateOf(false) }

    LaunchedEffect(state.captureMode) {
        if (state.captureMode != CaptureMode.PHOTO) {
            showVideoParameterRuler = false
        }
    }

    LaunchedEffect(viewModel.showGhostPermissions) {
        if (viewModel.showGhostPermissions) {
            showGhostPermissionDialog = true
            viewModel.showGhostPermissions = false
        }
    }

    if (viewModel.showPaymentDialog) {
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

    BoxWithConstraints(
        modifier = modifier
            .fillMaxSize()
            .onGloballyPositioned { coordinates ->
                cameraScreenBounds = coordinates.boundsInRoot()
            }
    ) {

        val backgroundPainter = rememberBackgroundPainter(viewModel)

        val isVideoMode = state.captureMode == CaptureMode.VIDEO
        val isPhotoStyleMode = state.captureMode != CaptureMode.VIDEO
        val videoAspectRatio =
            state.videoConfig.aspectRatio.getPortraitAspectRatio(state.videoCapabilities.openGatePortraitAspectRatio)

        val density = LocalDensity.current
        val width = with(density) { constraints.maxWidth.toDp() }
        val height = with(density) { constraints.maxHeight.toDp() }
        val topSafePadding = cameraTopSafePadding()
        val topBarHeight = CameraTopBarBaseHeight + topSafePadding
        val cardWidth = if (isXpan) {
            (height - topSafePadding - 280.dp) * 24 / 65 + 8.dp
        } else {
            width
        }
        val cardHeight = if (isXpan) {
            height - topSafePadding - 224.dp
        } else if (isVideoMode) {
            width / videoAspectRatio
        } else {
            val standardHeight = (width - 24.dp) * 4 / 3 + 50.dp
            val bottomMinHeight = 196.dp // Precise height for parameterBar (52.dp) + controls (136.dp min + 8.dp buffer)
            val navigationBarHeight = with(density) {
                WindowInsets.navigationBars.getBottom(this).toDp()
            }
            val maxCardHeight = (height - topBarHeight - bottomMinHeight - navigationBarHeight).coerceAtLeast(300.dp)
            standardHeight.coerceAtMost(maxCardHeight)
        }

        val topBar = @Composable {
            CameraTopBar(
                captureMode = state.captureMode,
                isRecording = state.videoRecordingState.isRecording,
                recordingElapsedMs = state.videoRecordingState.elapsedMs,
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
                quickShotConfig = state.quickShotConfig,
                quickShotCapabilities = state.quickShotCapabilities,
                onQuickShotResolutionClick = {
                    cycleQuickShotResolution(state)?.let(viewModel::setQuickShotResolution)
                },
                videoConfig = state.videoConfig,
                videoCapabilities = state.videoCapabilities,
                onVideoTorchToggle = { viewModel.setVideoTorchEnabled(!state.videoConfig.torchEnabled) },
                onVideoStabilizationToggle = {
                    viewModel.cycleVideoStabilizationMode()
                },
                onVideoResolutionClick = {
                    cycleVideoResolution(state)?.let(viewModel::setVideoResolution)
                },
                onVideoFpsClick = {
                    cycleVideoFps(state)?.let(viewModel::setVideoFps)
                },
                onSettingsClick = {
                    activePanel = if (activePanel == ActivePanel.SETTINGS) ActivePanel.NONE else ActivePanel.SETTINGS
                },
                modifier = Modifier.padding(top = topSafePadding)
            )
        }

        val zoomBar = @Composable {
            if (activePanel == ActivePanel.NONE && !isXpan) {
                ZoomControlBar(
                    viewModel = viewModel,
                    zoomRatio = viewModel.zoomRatioByMain,
                    availableCameras = state.availableCameras,
                    currentCameraId = state.getCurrentCameraInfo()?.cameraId ?: "0",
                    onZoomChange = { setZoomWithPreviewTransition(it) },
                    onLensSwitch = { lensId -> switchToLensWithPreviewTransition(lensId) },
                    onFilterClick = {
                        activePanel = if (activePanel == ActivePanel.FILTERS) ActivePanel.NONE else ActivePanel.FILTERS
                    },
                    modifier = Modifier
                        .fillMaxWidth()
                        .onGloballyPositioned { coordinates ->
                            zoomBarBounds = coordinates.boundsInRoot()
                        }
                )
            } else {
                SideEffect {
                    zoomBarBounds = null
                }
            }
        }

        val parameterRuler = @Composable {
            ParameterRuler(
                parameter = selectedParameter,
                currentValue = when (selectedParameter) {
                    CameraParameter.EXPOSURE_COMPENSATION -> state.exposureCompensation * state.getExposureCompensationStep()
                    CameraParameter.SHUTTER_SPEED -> state.shutterSpeed.toFloat()
                    CameraParameter.ISO -> state.iso.toFloat()
                    CameraParameter.FOCUS -> state.focusDistance
                    CameraParameter.WHITE_BALANCE -> state.awbTemperature.toFloat()
                },
                minValue = when (selectedParameter) {
                    CameraParameter.EXPOSURE_COMPENSATION -> state.getExposureCompensationRange().lower * state.getExposureCompensationStep()
                    CameraParameter.SHUTTER_SPEED -> state.getShutterSpeedRange().lower.toFloat()
                    CameraParameter.ISO -> state.getIsoRange().lower.toFloat()
                    CameraParameter.FOCUS -> 0f
                    CameraParameter.WHITE_BALANCE -> 2000f
                },
                maxValue = when (selectedParameter) {
                    CameraParameter.EXPOSURE_COMPENSATION -> state.getExposureCompensationRange().upper * state.getExposureCompensationStep()
                    CameraParameter.SHUTTER_SPEED -> maxOf(state.getShutterSpeedRange().upper, 1_000_000_000L * 15).toFloat()
                    CameraParameter.ISO -> maxOf(state.getIsoRange().upper, 3200).toFloat()
                    CameraParameter.FOCUS -> state.minimumFocusDistance
                    CameraParameter.WHITE_BALANCE -> 10000f
                },
                isAdjustable = when (selectedParameter) {
                    CameraParameter.EXPOSURE_COMPENSATION -> state.isAutoExposure
                    CameraParameter.SHUTTER_SPEED -> !state.isShutterSpeedAuto
                    CameraParameter.ISO -> !state.isIsoAuto
                    CameraParameter.FOCUS -> !state.isAutoFocus
                    CameraParameter.WHITE_BALANCE -> state.awbMode != android.hardware.camera2.CameraMetadata.CONTROL_AWB_MODE_AUTO
                },
                showAutoButton = when (selectedParameter) {
                    CameraParameter.SHUTTER_SPEED, CameraParameter.ISO, CameraParameter.WHITE_BALANCE, CameraParameter.FOCUS -> true
                    else -> false
                },
                resetValue = selectedParameter.defaultResetValue(),
                showHyperfocalButton = selectedParameter == CameraParameter.FOCUS && state.minimumFocusDistance > 0f,
                hyperfocalEnabled = state.isHyperfocalFocusEnabled,
                hyperfocalDistanceMeters = state.hyperfocalDistanceMeters,
                onHyperfocalToggle = { enabled ->
                    viewModel.setHyperfocalFocusEnabled(enabled)
                },
                onValueChange = { value ->
                    when (selectedParameter) {
                        CameraParameter.EXPOSURE_COMPENSATION -> viewModel.setExposureCompensation((value / state.getExposureCompensationStep()).roundToInt())
                        CameraParameter.SHUTTER_SPEED -> viewModel.setShutterSpeed(value.toLong())
                        CameraParameter.ISO -> viewModel.setIso(value.toInt())
                        CameraParameter.FOCUS -> viewModel.setFocusDistance(value)
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

                        CameraParameter.FOCUS -> viewModel.setAutoFocus(!state.isAutoFocus)
                        else -> {}
                    }
                },
            )
        }

        val parameterBar = @Composable { onParameterClick: (CameraParameter) -> Unit ->
            CameraParameterBar(
                state = state,
                selectedParameter = selectedParameter,
                onParameterClick = onParameterClick
            )
        }

        val viewfinder = @Composable {
            Card(
                modifier = Modifier
                    .animateContentSize(alignment = Alignment.Center)
                    .width(cardWidth)
                    .height(cardHeight)
                    .padding(horizontal = if (isXpan || isVideoMode) 0.dp else 8.dp),
                shape = RoundedCornerShape(if (isVideoMode) 0.dp else 4.dp),
                colors = CardDefaults.cardColors(
                    containerColor = Color.Black
                )
            ) {
                Box(
                    modifier = Modifier
                        .padding(if (isVideoMode) 0.dp else 4.dp)
                        .weight(1f)
                        .background(Color.Black)
                        .onGloballyPositioned { coordinates ->
                            previewBounds = coordinates.boundsInRoot()
                        }
                        .pointerInput(state.availableCameras) {
                            var totalDrag = 0f
                            awaitEachGesture {
                                var gestureStartedInZoomBar: Boolean? = null
                                while (true) {
                                    val event = awaitPointerEvent()
                                    if (gestureStartedInZoomBar == null) {
                                        val firstPressedChange =
                                            event.changes.firstOrNull { it.pressed }
                                        val currentPreviewBounds = previewBounds
                                        gestureStartedInZoomBar =
                                            if (firstPressedChange != null && currentPreviewBounds != null) {
                                                val positionInRoot =
                                                    currentPreviewBounds.topLeft + firstPressedChange.position
                                                zoomBarBounds?.contains(positionInRoot) == true
                                            } else {
                                                false
                                            }
                                    }
                                    if (gestureStartedInZoomBar == true) {
                                        if (event.changes.all { !it.pressed }) {
                                            viewModel.isZooming = false
                                            totalDrag = 0f
                                            break
                                        }
                                        continue
                                    }
                                    if (event.changes.size >= 2) {
                                        // Pinch to zoom
                                        viewModel.isZooming = true
                                        val zoom = event.calculateZoom()
                                        if (zoom != 1f) {
                                            val nextZoom =
                                                (viewModel.zoomRatioByMain * zoom).coerceIn(
                                                    viewModel.globalMinZoom,
                                                    viewModel.globalMaxZoom
                                                )
                                            setZoomWithPreviewTransition(nextZoom)
                                        }
                                        event.changes.forEach { it.consume() }
                                    } else if (event.changes.size == 1) {
                                        // Single finger -> horizontal drag for LUT switch
                                        val change = event.changes[0]
                                        if (change.pressed) {
                                            val dragAmount =
                                                change.position.x - change.previousPosition.x
                                            totalDrag += dragAmount
                                        } else {
                                            // onDragEnd logic
                                            if (abs(totalDrag) > 100) {
                                                if (totalDrag > 0) {
                                                    viewModel.switchToPreviousLut()
                                                } else {
                                                    viewModel.switchToNextLut()
                                                }
                                            }
                                            totalDrag = 0f
                                            viewModel.isZooming = false
                                        }
                                    }

                                    if (event.changes.all { !it.pressed }) {
                                        viewModel.isZooming = false
                                        totalDrag = 0f
                                        break
                                    }
                                }
                            }
                        },
                ) {
                    val currentCameraId = state.currentCameraId
                    val calibrationOffset by viewModel.getCameraOrientationOffset(currentCameraId)
                        .collectAsState(initial = 0)

                    // 相机预览
                    CameraPreviewGL(
                        isAiFocusBusy = viewModel.isAiFocusBusy,
                        aspectRatio = previewAspectRatio,
                        previewSize = previewSize,
                        captureSize = state.currentCaptureSize,
                        captureMode = state.captureMode,
                        sensorOrientation = state.getCurrentCameraInfo()?.sensorOrientation ?: 0,
                        lensFacing = if (state.getCurrentCameraInfo()?.lensFacing == android.hardware.camera2.CameraCharacteristics.LENS_FACING_FRONT) 0 else 1,
                        calibrationOffset = calibrationOffset,
                        baselineLut = viewModel.currentBaselineLutConfig,
                        currentLut = viewModel.currentLutConfig,
                        baselineColorRecipeParams = currentBaselineRecipeParams,
                        colorRecipeParams = previewRecipeParamsOverride ?: mergedRecipeParams,
                        focusPoint = state.focusPoint,
                        focusPointSource = state.focusPointSource,
                        isFocusLocked = state.isFocusLocked,
                        isFocusing = state.isFocusing,
                        focusSuccess = state.focusSuccess,
                        meteringMode = state.meteringMode,
                        onSurfaceTextureReady = { surfaceTexture ->
                            viewModel.openCamera(surfaceTexture)
                            cameraOpened = true
                        },
                        onSurfaceDestroyed = { surfaceTexture ->
                            viewModel.closeCamera(surfaceTexture)
                            cameraOpened = false
                        },
                        onTap = { x, y, w, h ->
                            if (state.isFocusLocked) {
                                viewModel.unlockFocus()
                            } else if (activePanel != ActivePanel.NONE) {
                                activePanel = ActivePanel.NONE
                            } else {
                                viewModel.focusOnPoint(x, y, w, h)
                            }
                        },
                        onLongPress = { x, y, w, h ->
                            if (activePanel != ActivePanel.NONE) {
                                activePanel = ActivePanel.NONE
                            } else {
                                viewModel.lockFocusOnPoint(x, y, w, h)
                            }
                        },
                        onHistogramUpdated = { viewModel.handleHistogramUpdate(it) },
                        onMeteringUpdated = { w, l -> viewModel.handleMeteringUpdate(w, l) },
                        onHighlightPointUpdated = { hx, hy -> viewModel.handleHighlightPointUpdate(hx, hy) },
                        onDepthInputAvailable = { viewModel.handleDepthMapUpdate(it) },
                        onAiFocusInputAvailable = if (aiFocusTargetMode == AiFocusTargetMode.OFF) {
                            null
                        } else {
                            { viewModel.handleAiFocusInputUpdate(it) }
                        },
                        onGLSurfaceViewReady = {
                            viewModel.glSurfaceView = it
                        },
                        livePhotoRecorder = viewModel.livePhotoRecorder,
                        videoRecorder = viewModel.videoRecorder,
                        videoLogProfile = state.videoConfig.logProfile,
                        isHlgInput = if (hlgHardwareCompatibilityEnabled) state.isHLG else false,
                        naturalLightEnabled = naturalLightEnabled,
                        rawExposureCompensation = rawExposureCompensation,
                        rawBlackPointCorrection = rawBlackPointCorrection,
                        rawWhitePointCorrection = rawWhitePointCorrection,
                        rawRenderingEngine = rawColorEngine,
                        rawToneMappingParameters = rawToneMappingParameters,
                        aperture = if (state.isVirtualApertureEnabled) state.virtualAperture else 0f,
                        isAutoFocus = state.isAutoFocus,
                        focusPeakingEnabled = focusPeakingEnabled && !state.isHyperfocalFocusEnabled,
                        modifier = Modifier.fillMaxSize()
                    )

                    Box(
                        modifier = Modifier
                            .fillMaxSize()
                            .graphicsLayer {
                                alpha = if (previewTransitionActive || previewTransitionCoverFractionState.value > 0.001f) 1f else 0f
                            }
                    ) {
                        Box(
                            modifier = Modifier
                                .fillMaxWidth()
                                .fillMaxHeight(0.5f)
                                .align(Alignment.TopCenter)
                                .graphicsLayer {
                                    translationY = -size.height * (1f - previewTransitionCoverFractionState.value)
                                }
                                .background(Color.Black)
                        )
                        Box(
                            modifier = Modifier
                                .fillMaxWidth()
                                .fillMaxHeight(0.5f)
                                .align(Alignment.BottomCenter)
                                .graphicsLayer {
                                    translationY = size.height * (1f - previewTransitionCoverFractionState.value)
                                }
                                .background(Color.Black)
                        )
                    }

                    // Live Photo Indicator
                    if (state.captureMode == CaptureMode.PHOTO && useLivePhoto) {
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


                    Box(
                        modifier = Modifier.fillMaxSize()
                    ) {
                        multipleExposureState.previewBitmap?.let { previewBitmap ->
                            Image(
                                bitmap = previewBitmap.asImageBitmap(),
                                contentDescription = null,
                                modifier = Modifier.fillMaxSize(),
                                alpha = 0.45f,
                                contentScale = ContentScale.Crop
                            )
                        }

                        // 实时直方图 (Overlaid on preview if enabled)
                        if (isPhotoStyleMode && state.histogram != null && viewModel.showHistogram) {
                            HistogramView(
                                histogram = state.histogram,
                                modifier = Modifier
                                    .padding(8.dp)
                                    .size(80.dp, 40.dp)
                                    .align(Alignment.TopStart)
                                    .autoRotate(dx = -20.dp, dy = 20.dp)
                            )
                        }

                        // 网格线覆盖
                        if (state.showGrid) {
                            GridOverlay(
                                aspectRatio = previewAspectRatio,
                                modifier = Modifier.fillMaxSize()
                            )
                        }

                        // 水平仪覆盖
                        if (showLevelIndicator) {
                            LevelIndicatorOverlay(
                                aspectRatio = previewAspectRatio,
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

                        if (state.burstCapturing && burstCapturingCount > 0) {
                            BurstCaptureOverlay(
                                count = burstCapturingCount,
                                modifier = Modifier.fillMaxSize()
                            )
                        }

                        if (useMultipleExposure && state.captureMode == CaptureMode.PHOTO) {
                            MultipleExposureOverlay(
                                state = multipleExposureState,
                                onFinish = { viewModel.finishMultipleExposureSession() },
                                onUndo = { viewModel.undoLastMultipleExposureFrame() },
                                onCancel = { viewModel.cancelMultipleExposureSession() },
                                modifier = Modifier.fillMaxSize()
                            )
                        }

                        // Zoom bar overlaid on preview for photo-style modes.
                        if (isPhotoStyleMode) {
                            Box(
                                modifier = Modifier
                                    .fillMaxSize()
                                    .padding(bottom = 8.dp),
                                contentAlignment = Alignment.BottomCenter
                            ) {
                                zoomBar()
                            }
                        }
                    }

                    CornerOverlay(
                        modifier = Modifier.fillMaxSize(),
                        radius = if (isVideoMode) 0.dp else 4.dp,
                        color = Color.Black
                    )
                }
                if (isPhotoStyleMode) {
                    parameterRuler()
                }
            }

            if (isXpan) {
                Box(
                    modifier = Modifier
                        .fillMaxWidth()
                        .height(cardHeight),
                    contentAlignment = Alignment.Center
                ) {
                    Box(
                        modifier = Modifier
                            .align(Alignment.CenterStart)
                            .width((width - cardWidth) / 2)
                    ) {
                        ZoomControlBarVerticel(
                            viewModel = viewModel,
                            zoomRatio = viewModel.zoomRatioByMain,
                            availableCameras = state.availableCameras,
                            currentCameraId = state.getCurrentCameraInfo()?.cameraId ?: "0",
                            onZoomChange = { setZoomWithPreviewTransition(it) },
                            onLensSwitch = { lensId -> switchToLensWithPreviewTransition(lensId) },
                            onFilterClick = {
                                // Toggle Filter Panel
                                activePanel =
                                    if (activePanel == ActivePanel.FILTERS) ActivePanel.NONE else ActivePanel.FILTERS
                            },
                            modifier = Modifier
                                .align(Alignment.Center)
                        )
                    }
                    Box(
                        modifier = Modifier
                            .align(Alignment.CenterEnd)
                            .width((width - cardWidth) / 2)
                    ) {
                        CameraParameterBarVerticel(
                            state = state,
                            selectedParameter = selectedParameter,
                            onParameterClick = { param ->
                                selectedParameter = param
                            },
                            modifier = Modifier
                                .align(Alignment.Center)
                        )
                    }
                }
            }
        }


        val controls = @Composable { modifier: Modifier ->
            Controls(
                state = state,
                viewModel = viewModel,
                galleryViewModel = galleryViewModel,
                latestPhoto = latestPhoto,
                useMultipleExposure = useMultipleExposure,
                naturalLightEnabled = naturalLightEnabled,
                multipleExposureState = multipleExposureState,
                onGalleryThumbnailBoundsChanged = { bounds ->
                    galleryThumbnailBounds = bounds
                },
                onSwitchCameraClick = ::switchCameraWithPreviewTransition,
                onCaptureModeSelected = ::setCaptureModeWithPreviewTransition,
                onCaptureTap = {
                    val shouldDebounceRawCapture = useRaw && state.captureMode == CaptureMode.PHOTO
                    if (shouldDebounceRawCapture) {
                        if (rawCaptureTapLocked) {
                            return@Controls
                        }
                        rawCaptureTapLocked = true
                        scope.launch {
                            delay(RawCaptureTapDebounceMillis)
                            rawCaptureTapLocked = false
                        }
                    }

                    if (enableDevelopAnimation && state.captureMode == CaptureMode.PHOTO) {
                        viewModel.glSurfaceView?.capturePreviewFrame { bitmap ->
                            pendingCaptureAnimationBitmap?.recycleIfAlive()
                            pendingCaptureAnimationBitmap = bitmap
                        }
                    }
                    viewModel.capture()
                },
                onGalleryClick = {
                    onGalleryClick()
                },
                modifier = modifier
            )
        }

        if (isVideoMode) {
            Box(
                modifier = Modifier
                    .fillMaxSize()
                    .paint(backgroundPainter, contentScale = ContentScale.Crop)
                    .navigationBarsPadding(),
            ) {
                // Viewfinder centered
                Box(
                    modifier = Modifier
                        .fillMaxWidth()
                        .height(cardHeight)
                        .align(Alignment.Center)
                        .onGloballyPositioned { coordinates ->
                            viewfinderAreaBounds = coordinates.boundsInRoot()
                        },
                    contentAlignment = Alignment.Center
                ) {
                    viewfinder()
                }

                // UI Overlays
                topBar()

                Box(modifier = Modifier.fillMaxSize(), contentAlignment = Alignment.BottomCenter) {
                    Column(horizontalAlignment = Alignment.CenterHorizontally) {
                        zoomBar()
                        AnimatedVisibility(visible = showVideoParameterRuler) {
                            parameterRuler()
                        }
                        parameterBar { param ->
                            val wasSelected = selectedParameter == param
                            selectedParameter = param
                            showVideoParameterRuler = if (wasSelected) {
                                !showVideoParameterRuler
                            } else {
                                true
                            }
                        }
                        Spacer(modifier = Modifier.height(8.dp))
                        controls(Modifier
                            .fillMaxWidth()
                            .wrapContentHeight())
                    }
                }
            }
        } else {
            Column(
                modifier = Modifier
                    .fillMaxSize()
                    .paint(backgroundPainter, contentScale = ContentScale.Crop)
                    .navigationBarsPadding(),
                horizontalAlignment = Alignment.CenterHorizontally,
            ) {
                topBar()

                Box(
                    modifier = Modifier
                        .fillMaxWidth()
                        .height(cardHeight)
                        .onGloballyPositioned { coordinates ->
                            viewfinderAreaBounds = coordinates.boundsInRoot()
                        },
                    contentAlignment = Alignment.Center
                ) {
                    viewfinder()
                }

                Column(
                    modifier = Modifier
                        .fillMaxWidth()
                        .then(if (isXpan) Modifier.height(144.dp) else Modifier.weight(1f)),
                    horizontalAlignment = Alignment.CenterHorizontally
                ) {


                    AnimatedVisibility(
                        visible = !isXpan && isPhotoStyleMode,
                    ) {
                        parameterBar { param ->
                            selectedParameter = param
                        }
                    }

                    Box(
                        modifier = Modifier
                            .fillMaxWidth()
                            .then(if (isXpan) Modifier.height(144.dp) else Modifier.weight(1f)),
                        contentAlignment = Alignment.Center
                    ) {
                        controls(Modifier.fillMaxSize())
                    }
                }
            }
        }

        val panelDismissBounds = if (isXpan) {
            viewfinderAreaBounds ?: previewBounds
        } else {
            previewBounds
        }

        if (activePanel != ActivePanel.NONE) {
            PanelDismissPreviewOverlay(
                bounds = panelDismissBounds,
                parentBounds = cameraScreenBounds,
                dimBackground = activePanel == ActivePanel.SETTINGS,
                onDismiss = { activePanel = ActivePanel.NONE }
            )
        }

        // TopSheet for settings
        CameraTopSheet(
            visible = activePanel == ActivePanel.SETTINGS,
            captureMode = state.captureMode,
            aspectRatio = state.aspectRatio,
            topSheetAspectRatios = topSheetAspectRatios,
            onAspectRatioChange = { runPreviewTransition { viewModel.setAspectRatio(it) } },
            videoAspectRatio = state.videoConfig.aspectRatio,
            onVideoAspectRatioChange = { runPreviewTransition { viewModel.setVideoAspectRatio(it) } },
            videoLogProfile = state.videoConfig.logProfile,
            onVideoLogProfileChange = { viewModel.setVideoLogProfile(it) },
            videoBitrate = state.videoConfig.bitrate,
            onVideoBitrateChange = { viewModel.setVideoBitrate(it) },
            videoCodec = videoCodec,
            onVideoCodecChange = { viewModel.setVideoCodec(it) },
            videoAudioInputId = state.videoConfig.audioInputId,
            videoAudioInputOptions = videoAudioInputOptions,
            onVideoAudioInputChange = { viewModel.setVideoAudioInputId(it) },
            quickShotResolution = state.quickShotConfig.resolution,
            quickShotCapabilities = state.quickShotCapabilities,
            onQuickShotResolutionChange = { runPreviewTransition { viewModel.setQuickShotResolution(it) } },
            useRaw = useRaw && state.isRawSupported,
            onRawToggle = { viewModel.setUseRaw(it) },
            isRawSupported = state.isRawSupported,
            useNaturalLight = naturalLightEnabled,
            naturalLightWarningShown = naturalLightWarningShown,
            onNaturalLightToggle = {
                runPreviewTransition {
                    viewModel.setNaturalLightToneMapEnabled(it)
                }
            },
            onNaturalLightWarningShown = { viewModel.setNaturalLightWarningShown(true) },
            rawDcpId = rawDcpId,
            rawDcpIdsByLens = rawDcpIdsByLens,
            rawDcpLensOptions = rawDcpLensOptions(state.availableCameras),
            availableDcps = viewModel.availableDcps,
            rawBaselineLutId = rawBaselineLutId,
            availableLuts = viewModel.availableLutList,
            previewThumbnail = viewModel.previewThumbnail,
            rawExposureCompensation = rawExposureCompensation,
            rawAutoExposure = rawAutoExposure,
            rawHighlightsAdjustment = rawHighlightsAdjustment,
            rawShadowsAdjustment = rawShadowsAdjustment,
            rawDROMode = droMode,
            rawBlackPointCorrection = rawBlackPointCorrection,
            rawWhitePointCorrection = rawWhitePointCorrection,
            rawRenderingEngine = rawColorEngine,
            rawToneMappingParameters = rawToneMappingParameters,
            rawSpectralFilmSelection = rawSpectralFilmSelection ?: SpectralFilmSelection(rawSpectralFilmStock ?: "kodak_portra_400"),
            rawSpectralFilmPrint = rawSpectralFilmPrint ?: "kodak_portra_endura",
            onRawDcpChange = { viewModel.setRawDcpId(it) },
            onRawDcpIdsByLensChange = { viewModel.setRawDcpIdsByLens(it) },
            onImportRawDcp = { dcpImportLauncher.launch("*/*") },
            onDeleteRawDcp = { dcp ->
                viewModel.deleteRawDcp(dcp.id) { success ->
                    android.widget.Toast.makeText(
                        context,
                        if (success) R.string.raw_dcp_delete_success else R.string.raw_dcp_delete_failed,
                        android.widget.Toast.LENGTH_SHORT
                    ).show()
                }
            },
            onRawBaselineLutChange = {
                viewModel.setBaselineLut(BaselineColorCorrectionTarget.RAW, it)
            },
            onEditRawBaselineRecipe = { lutId ->
                baselineEditLutId = lutId
                baselineEditTarget = BaselineColorCorrectionTarget.RAW
            },
            onRawDROModeChange = { viewModel.setDroMode(it) },
            onRawColorEngineChange = { viewModel.setRawColorEngine(it) },
            onRawToneMappingParametersChange = { viewModel.setRawToneMappingParameters(it) },
            onRawSpectralFilmSelectionChange = { viewModel.setRawSpectralFilmSelection(it) },
            onRawSpectralFilmPrintChange = { viewModel.setRawSpectralFilmPrint(it) },
            meteringMode = state.meteringMode,
            onMeteringModeChange = { viewModel.setMeteringMode(it) },
            onFilterManageClick = {
                activePanel = ActivePanel.NONE
                onFilterManagementClick(null)
            },
            onFrameManageClick = {
                activePanel = ActivePanel.NONE
                onFrameManagementClick()
            },
            onToolboxClick = {
                activePanel = ActivePanel.NONE
                onToolboxClick()
            },
            onMoreSettingsClick = {
                activePanel = ActivePanel.NONE
                onSettingsClick()
            },
            useMFNR = useMFNR,
            onMFNRToggle = {
                viewModel.setUseMFNR(it)
            },
            useHdrComposition = useHdrComposition,
            onHdrCompositionToggle = {
                viewModel.setUseHdrComposition(it)
            },
            useMultipleExposure = useMultipleExposure,
            onMultipleExposureToggle = { viewModel.setUseMultipleExposure(it) },
            modifier = Modifier.padding(top = topSafePadding)
        )

        AnimatedVisibility(
            activePanel == ActivePanel.FILTERS,
            enter = if (isXpan) {slideInVertically(initialOffsetY = { it })} else fadeIn(),
            exit = if (isXpan) {slideOutVertically(targetOffsetY = { it })} else fadeOut()
        ) {
            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .then(
                        if (isXpan) {
                            Modifier.fillMaxHeight()
                        } else if (isVideoMode) {
                            //val bottomPadding = (maxHeight - 160.dp).coerceIn(16.dp, 40.dp)
                            Modifier.height(maxHeight - 170.dp)
                        } else {
                            Modifier
                                .padding(top = topBarHeight)
                                .height(cardHeight - 48.dp)
                        }
                    ),
                contentAlignment = Alignment.BottomCenter
            ) {
                Column(
                    modifier = Modifier
                        .fillMaxWidth()
                        .then(
                            if (isXpan) {
                                Modifier
                                    .padding(bottom = 48.dp)
                                    .background(Color.Black)
                            } else {
                                Modifier.background(
                                    Brush.verticalGradient(
                                        colors = listOf(
                                            Color.Transparent,
                                            Color.Black.copy(alpha = 0.2f),
                                            Color.Black.copy(alpha = 0.6f)
                                        )
                                    )
                                )
                            }
                        )
                        .padding(horizontal = 8.dp)
                        .padding(4.dp),
                    verticalArrangement = Arrangement.spacedBy(4.dp)
                ) {
                    val currentLut = viewModel.availableLutList.find { it.id == currentLutId }
                    Row(
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(horizontal = 8.dp, vertical = 4.dp),
                        horizontalArrangement = Arrangement.SpaceBetween,
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Text(
                            text = currentLut?.getName() ?: "",
                            color = Color.White,
                            fontSize = 14.sp,
                            fontWeight = FontWeight.Bold,
                            modifier = Modifier.weight(1f).basicMarquee()
                        )

                        Row(
                            horizontalArrangement = Arrangement.spacedBy(8.dp),
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            Row(
                                modifier = Modifier
                                    .clip(RoundedCornerShape(16.dp))
                                    .background(Color.White.copy(alpha = 0.15f))
                                    .clickable {
                                        activePanel = ActivePanel.LUT_EDIT
                                    }
                                    .padding(horizontal = 12.dp, vertical = 6.dp),
                                verticalAlignment = Alignment.CenterVertically,
                                horizontalArrangement = Arrangement.spacedBy(4.dp)
                            ) {
                                Icon(
                                    imageVector = AppIcons.Tune,
                                    contentDescription = stringResource(R.string.color_recipe),
                                    tint = Color(0xFFFFD700), // Gold color to match VIP/Premium feel
                                    modifier = Modifier.size(14.dp)
                                )
                                Text(
                                    text = stringResource(R.string.color_recipe),
                                    color = Color.White,
                                    fontSize = 11.sp,
                                    fontWeight = FontWeight.Medium
                                )
                            }

                            EffectsActionChip(
                                onClick = { showEffectsSheet = true }
                            )
                        }
                    }

                    val allPresets by viewModel.allPresets.collectAsState()
                    val activePresetId by viewModel.activePresetId.collectAsState()
                    val defaultPresetName = stringResource(R.string.preset_new_preset_default)

                    // LUT 选择器 (内嵌 Presets 列表)
                    LutSelector(
                        availableLuts = viewModel.availableLutList,
                        currentLutId = currentLutId,
                        thumbnail = viewModel.previewThumbnail,
                        onLutSelected = { viewModel.setLut(it) },
                        allPresets = allPresets,
                        activePresetId = activePresetId,
                        selectedMode = lutSelectorMode,
                        onModeSelected = { viewModel.setLutSelectorMode(it) },
                        onPresetSelected = { preset ->
                            discardTransientLookEdits()
                            if (presetRequiresPreviewTransition(preset)) {
                                runPreviewTransition { viewModel.applyPreset(preset) }
                            } else {
                                viewModel.applyPreset(preset)
                            }
                        },
                        onCreatePresetClick = {
                            viewModel.prepareCurrentSettingsPresetDraft(defaultPresetName)
                            onPresetEditClick(null)
                        },
                        onPresetManagementClick = onPresetManagementClick,
                        onEditClick = {
                            activePanel = ActivePanel.LUT_EDIT
                        },
                        onManageClick = { lutId ->
                            activePanel = ActivePanel.NONE
                            onFilterManagementClick(lutId)
                        },
                        categoryOrder = categoryOrder
                    )
                }
            }
        }

        if (activePanel == ActivePanel.LUT_EDIT) {
            LutEditBottomSheet(
                lutId = currentLutId,
                onParamsPreviewChange = { previewRecipeParamsOverride = it },
                onDismiss = {
                    previewRecipeParamsOverride = null
                    viewModel.refreshActivePresetMatch()
                    activePanel = ActivePanel.FILTERS
                }
            )
        }

        if (showEffectsSheet) {
            EffectsBottomSheet(
                currentParams = previewEffectParams,
                onParamsChange = { saveEffectParamsDebounced(it) },
                onDismiss = {
                    flushEffectParamsSave()
                    showEffectsSheet = false
                }
            )
        }

        if (baselineEditLutId != null && baselineEditTarget != null) {
            LutEditBottomSheet(
                lutId = baselineEditLutId!!,
                editorTarget = when (baselineEditTarget!!) {
                    BaselineColorCorrectionTarget.JPG -> LutEditorTarget.BASELINE_JPG
                    BaselineColorCorrectionTarget.RAW -> LutEditorTarget.BASELINE_RAW
                    BaselineColorCorrectionTarget.PHANTOM -> LutEditorTarget.BASELINE_PHANTOM
                },
                onDismiss = {
                    baselineEditLutId = null
                    baselineEditTarget = null
                }
            )
        }

        captureAnimationSnapshot?.let { snapshot ->
            CaptureAnimationOverlay(
                snapshot = snapshot,
                modifier = Modifier.fillMaxSize(),
                onFinished = {
                    if (captureAnimationSnapshot?.id == snapshot.id) {
                        captureAnimationSnapshot = null
                    }
                }
            )
        }

    }
}

@Composable
fun MultipleExposureOverlay(
    state: com.hinnka.mycamera.viewmodel.MultipleExposureSessionState,
    onFinish: () -> Unit,
    onUndo: () -> Unit,
    onCancel: () -> Unit,
    modifier: Modifier = Modifier
) {
    Box(modifier = modifier.padding(8.dp)) {
        Surface(
            modifier = Modifier
                .align(Alignment.TopEnd)
                .wrapContentWidth(),
            color = Color.Transparent,
            shape = RoundedCornerShape(20.dp)
        ) {
            Row(
                modifier = Modifier
                    .background(
                        brush = Brush.horizontalGradient(
                            listOf(
                                Color(0xD90D1117),
                                Color(0xB8141B22)
                            )
                        ),
                        shape = RoundedCornerShape(20.dp)
                    )
                    .border(1.dp, Color.White.copy(alpha = 0.08f), RoundedCornerShape(18.dp))
                    .padding(horizontal = 12.dp, vertical = 8.dp),
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(10.dp)
            ) {
                Icon(
                    imageVector = AppIcons.Layers,
                    contentDescription = null,
                    tint = Color(0xFFE5A324),
                    modifier = Modifier.size(16.dp)
                )

                Text(
                    text = "${state.capturedCount}/${state.targetCount}",
                    color = Color.White,
                    style = MaterialTheme.typography.labelLarge
                )

                if (state.isSessionActive) {
                    IconButton(
                        onClick = onUndo,
                        enabled = state.capturedCount > 0 && !state.isProcessing,
                        modifier = Modifier.size(24.dp)
                    ) {
                        Icon(
                            AppIcons.AutoMirroredOutlinedUndo,
                            contentDescription = stringResource(R.string.multiple_exposure_undo),
                            modifier = Modifier.size(16.dp),
                            tint = Color.White
                        )
                    }

                    IconButton(
                        onClick = onFinish,
                        enabled = state.canFinish,
                        modifier = Modifier.size(24.dp)
                    ) {
                        Icon(
                            Icons.Default.Check,
                            contentDescription = stringResource(R.string.multiple_exposure_finish),
                            modifier = Modifier.size(16.dp),
                            tint = Color(0xFFE5A324)
                        )
                    }

                    IconButton(
                        onClick = onCancel,
                        enabled = !state.isProcessing,
                        modifier = Modifier.size(24.dp)
                    ) {
                        Icon(
                            Icons.Default.Close,
                            contentDescription = stringResource(R.string.multiple_exposure_cancel),
                            modifier = Modifier.size(16.dp),
                            tint = Color.Red
                        )
                    }
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
    latestPhoto: com.hinnka.mycamera.gallery.MediaData?,
    useMultipleExposure: Boolean,
    naturalLightEnabled: Boolean,
    multipleExposureState: com.hinnka.mycamera.viewmodel.MultipleExposureSessionState,
    onGalleryThumbnailBoundsChanged: (Rect) -> Unit,
    onSwitchCameraClick: () -> Unit,
    onCaptureModeSelected: (CaptureMode) -> Unit,
    onCaptureTap: () -> Unit,
    onGalleryClick: () -> Unit,
    modifier: Modifier = Modifier.fillMaxSize()
) {
    BoxWithConstraints(
        modifier = modifier,
        contentAlignment = Alignment.Center
    ) {
        val bottomPadding = (maxHeight - 160.dp).coerceIn(16.dp, 40.dp)
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(bottom = bottomPadding),
            horizontalAlignment = Alignment.CenterHorizontally
        ) {
            Box(
                modifier = Modifier.fillMaxWidth(),
                contentAlignment = Alignment.Center
            ) {
                Box(
                    modifier = Modifier
                        .align(Alignment.CenterStart)
                        .padding(start = 32.dp)
                        .onGloballyPositioned { coordinates ->
                            onGalleryThumbnailBoundsChanged(coordinates.boundsInRoot())
                        }
                        .autoRotate()
                ) {
                    GalleryThumbnail(
                        latestPhoto = latestPhoto,
                        viewModel = galleryViewModel,
                        onClick = onGalleryClick
                    )
                }

                CaptureButton(
                    captureMode = state.captureMode,
                    isCapturing = state.isCapturing,
                    isVideoRecording = state.videoRecordingState.isRecording,
                    isPaused = state.videoRecordingState.isPaused,
                    allowLongPress = state.captureMode == CaptureMode.QUICK_SHOT ||
                        (!naturalLightEnabled &&
                            state.captureMode == CaptureMode.PHOTO &&
                            !useMultipleExposure),
                    multipleExposureEnabled = useMultipleExposure && state.captureMode == CaptureMode.PHOTO,
                    multipleExposureProgress = multipleExposureState.capturedCount.toFloat() /
                            multipleExposureState.targetCount.coerceAtLeast(1).toFloat(),
                    onTap = onCaptureTap,
                    onLongPressStart = { viewModel.startContinuousCapture() },
                    onLongPressEnd = { viewModel.stopContinuousCapture() }
                )

                if (state.videoRecordingState.isRecording) {
                    IconButton(
                        onClick = { viewModel.captureVideoFrame() },
                        modifier = Modifier
                            .align(Alignment.CenterEnd)
                            .padding(end = 40.dp)
                            .size(48.dp)
                            .autoRotate()
                    ) {
                        Icon(
                            imageVector = AppIcons.CameraAlt,
                            contentDescription = stringResource(R.string.take_photo),
                            tint = Color.White,
                            modifier = Modifier.size(32.dp)
                        )
                    }

                    IconButton(
                        onClick = {
                            if (state.videoRecordingState.isPaused) {
                                viewModel.resumeVideoRecording()
                            } else {
                                viewModel.pauseVideoRecording()
                            }
                        },
                        modifier = Modifier
                            .align(Alignment.CenterStart)
                            .padding(start = 100.dp)
                            .size(48.dp)
                            .autoRotate()
                    ) {
                        Icon(
                            imageVector = if (state.videoRecordingState.isPaused) Icons.Default.PlayArrow else AppIcons.Pause,
                            contentDescription = null,
                            tint = Color.White,
                            modifier = Modifier.size(32.dp)
                        )
                    }
                } else {
                    IconButton(
                        onClick = onSwitchCameraClick,
                        modifier = Modifier
                            .align(Alignment.CenterEnd)
                            .padding(end = 40.dp)
                            .size(48.dp)
                            .autoRotate()
                    ) {
                        Icon(
                            imageVector = AppIcons.Cameraswitch,
                            contentDescription = stringResource(R.string.switch_camera),
                            tint = Color.White,
                            modifier = Modifier.size(32.dp)
                        )
                    }
                }
            }

            Spacer(modifier = Modifier.height(18.dp))

            CaptureModeSwitcher(
                captureMode = state.captureMode,
                enabled = !state.videoRecordingState.isRecording,
                onModeSelected = onCaptureModeSelected
            )
        }
    }
}


/**
 * 拍照按钮
 */
@Composable
fun CaptureButton(
    captureMode: CaptureMode,
    isCapturing: Boolean,
    isVideoRecording: Boolean,
    isPaused: Boolean,
    allowLongPress: Boolean,
    multipleExposureEnabled: Boolean,
    multipleExposureProgress: Float,
    onTap: () -> Unit,
    onLongPressStart: () -> Unit,
    onLongPressEnd: () -> Unit,
    modifier: Modifier = Modifier
) {
    val infiniteTransition = rememberInfiniteTransition(label = "infinite transition")

    val scale by animateFloatAsState(
        targetValue = if (isCapturing || isVideoRecording) 0.95f else 1f,
        animationSpec = spring(dampingRatio = 0.5f),
        label = "captureScale"
    )

    val pulseAlpha by infiniteTransition.animateFloat(
        initialValue = 0.35f,
        targetValue = 1f,
        animationSpec = infiniteRepeatable(
            animation = tween(durationMillis = 1200),
            repeatMode = RepeatMode.Reverse
        ),
        label = "videoPulse"
    )

    val rotation by infiniteTransition.animateFloat(
        initialValue = 0f,
        targetValue = 360f,
        animationSpec = infiniteRepeatable(tween(1500)),
        label = "livePhotoRotation"
    )

    val currentDisabled by rememberUpdatedState(isCapturing || (captureMode == CaptureMode.VIDEO && isVideoRecording))

    Box(
        modifier = modifier
            .size(72.dp)
            .scale(scale)
            .pointerInput(allowLongPress) {
                var isLongPressStarted = false
                detectTapGestures(
                    onTap = {
                        if (!isCapturing) {
                            onTap()
                        }
                    },
                    onLongPress = if (allowLongPress) {
                        {
                            if (!currentDisabled) {
                                isLongPressStarted = true
                                onLongPressStart()
                            }
                        }
                    } else null,
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
        if (multipleExposureEnabled) {
            Canvas(modifier = Modifier.fillMaxSize()) {
                val strokeWidth = 5.dp.toPx()
                drawCircle(
                    color = Color.White.copy(alpha = 0.14f),
                    style = Stroke(width = strokeWidth)
                )
                drawArc(
                    color = Color(0xFFE5A324),
                    startAngle = -90f,
                    sweepAngle = 360f * multipleExposureProgress.coerceIn(0f, 1f),
                    useCenter = false,
                    style = Stroke(width = strokeWidth, cap = StrokeCap.Round)
                )
            }
        }

        val ringColor = when {
            captureMode == CaptureMode.VIDEO && isVideoRecording -> {
                if (isPaused) Color.White.copy(alpha = 0.8f)
                else Color.Red.copy(alpha = pulseAlpha)
            }
            captureMode == CaptureMode.VIDEO -> Color.White.copy(alpha = 0.8f)
            multipleExposureEnabled -> Color.White.copy(alpha = 0.55f)
            else -> Color(0xFFFFD700)
        }

        val ringWidth = if (multipleExposureEnabled) 1.dp else 2.dp

        Box(
            modifier = Modifier
                .fillMaxSize()
                .border(
                    width = ringWidth,
                    color = ringColor,
                    shape = CircleShape
                )
        )

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
        val centerPadding by animateDpAsState(
            targetValue = if (captureMode == CaptureMode.VIDEO && isVideoRecording) 24.dp else 6.dp,
            animationSpec = spring(dampingRatio = 0.7f, stiffness = Spring.StiffnessLow),
            label = "centerPadding"
        )
        val centerCorner by animateDpAsState(
            targetValue = if (captureMode == CaptureMode.VIDEO && isVideoRecording) 8.dp else 36.dp,
            label = "centerCorner"
        )
        val centerColor = if (captureMode == CaptureMode.VIDEO) Color(0xFFFF4D4F) else Color.White

        Box(
            modifier = Modifier
                .padding(centerPadding)
                .fillMaxSize()
                .clip(RoundedCornerShape(centerCorner))
                .background(centerColor)
        )
    }
}

@Composable
private fun CaptureModeSwitcher(
    captureMode: CaptureMode,
    enabled: Boolean,
    onModeSelected: (CaptureMode) -> Unit
) {

    Box(
        modifier = Modifier
            .width(148.dp)
            .height(30.dp)
            .clip(RoundedCornerShape(16.dp))
            .background(Color.White.copy(alpha = 0.12f))
            .padding(2.dp)
    ) {
        val knobWidth = 48.dp
        val knobOffset by animateDpAsState(
            targetValue = when (captureMode) {
                CaptureMode.QUICK_SHOT -> 0.dp
                CaptureMode.PHOTO -> 48.dp
                CaptureMode.VIDEO -> 96.dp
            },
            animationSpec = tween(durationMillis = 220),
            label = "modeSwitcher"
        )
        Box(
            modifier = Modifier
                .offset(x = knobOffset)
                .width(knobWidth)
                .fillMaxHeight()
                .clip(RoundedCornerShape(12.dp))
                .background(Color.White)
        )
        Row(
            modifier = Modifier.fillMaxSize(),
            verticalAlignment = Alignment.CenterVertically
        ) {
            ModeSwitcherItem(
                icon = AppIcons.Bolt,
                selected = captureMode == CaptureMode.QUICK_SHOT,
                enabled = enabled,
                contentDescription = stringResource(R.string.capture_mode_quick_shot),
                onClick = { onModeSelected(CaptureMode.QUICK_SHOT) },
                modifier = Modifier.weight(1f)
            )
            ModeSwitcherItem(
                icon = AppIcons.CameraAlt,
                selected = captureMode == CaptureMode.PHOTO,
                enabled = enabled,
                contentDescription = stringResource(R.string.capture_mode_photo),
                onClick = { onModeSelected(CaptureMode.PHOTO) },
                modifier = Modifier.weight(1f)
            )
            ModeSwitcherItem(
                icon = AppIcons.Videocam,
                selected = captureMode == CaptureMode.VIDEO,
                enabled = enabled,
                contentDescription = stringResource(R.string.capture_mode_video),
                onClick = { onModeSelected(CaptureMode.VIDEO) },
                modifier = Modifier.weight(1f)
            )
        }
    }
}

@Composable
private fun ModeSwitcherItem(
    icon: ImageVector,
    selected: Boolean,
    enabled: Boolean,
    contentDescription: String,
    onClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    Box(
        modifier = modifier
            .fillMaxHeight()
            .clip(RoundedCornerShape(20.dp))
            .clickable(enabled = enabled, onClick = onClick),
        contentAlignment = Alignment.Center
    ) {
        Icon(
            imageVector = icon,
            contentDescription = contentDescription,
            tint = if (selected) Color.Black else Color.White,
            modifier = Modifier.size(18.dp)
        )
    }
}

private fun cycleVideoResolution(state: CameraState): VideoResolutionPreset? {
    return nextOption(state.videoConfig.resolution, state.videoCapabilities.availableResolutions)
}

private fun cycleQuickShotResolution(state: CameraState): QuickShotResolutionPreset? {
    return nextOption(state.quickShotConfig.resolution, state.quickShotCapabilities.availableResolutions)
}

private fun cycleVideoFps(state: CameraState): VideoFpsPreset? {
    return nextOption(state.videoConfig.fps, state.videoCapabilities.availableFps)
}

private fun cycleVideoAspectRatio(state: CameraState): VideoAspectRatio? {
    return nextOption(state.videoConfig.aspectRatio, state.videoCapabilities.availableAspectRatios)
}

private fun cycleVideoLogProfile(state: CameraState): VideoLogProfile? {
    return nextOption(state.videoConfig.logProfile, state.videoCapabilities.availableLogProfiles)
}

private fun <T> nextOption(current: T, options: List<T>): T? {
    if (options.isEmpty()) return null
    val currentIndex = options.indexOf(current)
    return if (currentIndex == -1) {
        options.firstOrNull()
    } else {
        options[(currentIndex + 1) % options.size]
    }
}


fun Modifier.autoRotate(
    dx: Dp = 0.dp,
    dy: Dp = 0.dp,
    matchParentSize: Boolean = false
): Modifier = composed {
    val targetDegrees =
        if (OrientationObserver.rotationDegrees != 0f) OrientationObserver.rotationDegrees - 180 else 0f

    val animatedDegrees by animateFloatAsState(
        targetValue = targetDegrees,
        animationSpec = tween(durationMillis = 300),
        label = "rotationAnimation"
    )

    layout { measurable, constraints ->
        val rad = Math.toRadians(animatedDegrees.toDouble())
        val cos = abs(cos(rad))
        val sin = abs(sin(rad))

        // 核心优化：匹配父布局大小时，如果旋转接近 90 度，交换约束，
        // 从而让子组件（如 AsyncImage）按旋转后的方向进行测量，实现“铺满”效果。
        val modifiedConstraints = if (matchParentSize && sin > 0.5f) {
            Constraints(
                minWidth = constraints.minHeight,
                maxWidth = constraints.maxHeight,
                minHeight = constraints.minWidth,
                maxHeight = constraints.maxWidth
            )
        } else {
            constraints
        }

        val placeable = measurable.measure(modifiedConstraints)
        val width = placeable.width
        val height = placeable.height

        if (matchParentSize) {
            val visualWidth = width * cos + height * sin
            val visualHeight = width * sin + height * cos

            val containerWidth = constraints.maxWidth.toFloat()
            val containerHeight = constraints.maxHeight.toFloat()

            // 计算缩放：确保即使在动画中，内容也能刚好填满或不超出边界
            val scale = min(
                if (visualWidth > 0) containerWidth / visualWidth else 1.0,
                if (visualHeight > 0) containerHeight / visualHeight else 1.0
            ).toFloat().coerceAtMost(1.0f)

            layout(constraints.maxWidth, constraints.maxHeight) {
                placeable.placeRelativeWithLayer(
                    (constraints.maxWidth - width) / 2,
                    (constraints.maxHeight - height) / 2
                ) {
                    rotationZ = animatedDegrees
                    scaleX = scale
                    scaleY = scale
                }
            }
        } else {
            val newWidth = (placeable.width * cos + placeable.height * sin).toInt()
            val newHeight = (placeable.width * sin + placeable.height * cos).toInt()

            val nDx = dx.toPx() * sin
            val nDy = dy.toPx() * sin

            layout(newWidth, newHeight) {
                placeable.placeRelativeWithLayer(
                    x = (newWidth - placeable.width) / 2 + nDx.toInt(),
                    y = (newHeight - placeable.height) / 2 + nDy.toInt()
                ) {
                    rotationZ = animatedDegrees
                }
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

private fun Context.findActivity(): Activity? {
    var context = this
    while (context is ContextWrapper) {
        if (context is Activity) return context
        context = context.baseContext
    }
    return null
}
