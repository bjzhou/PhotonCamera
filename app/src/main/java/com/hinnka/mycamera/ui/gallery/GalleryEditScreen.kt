package com.hinnka.mycamera.ui.gallery

import android.annotation.SuppressLint
import android.app.Activity
import android.content.Context
import android.content.ContextWrapper
import android.graphics.Bitmap
import android.widget.Toast
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.activity.compose.BackHandler
import androidx.compose.animation.*
import androidx.compose.animation.core.*
import androidx.compose.foundation.*
import androidx.compose.foundation.gestures.detectHorizontalDragGestures
import androidx.compose.foundation.gestures.detectDragGestures
import androidx.compose.ui.unit.IntOffset
import kotlin.math.roundToInt
import androidx.compose.material.icons.filled.Close
import androidx.compose.ui.zIndex
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.Check
import androidx.compose.material.icons.filled.Refresh
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.input.pointer.*
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import coil.request.ImageRequest
import com.hinnka.mycamera.R
import me.saket.telephoto.zoomable.coil.ZoomableAsyncImage
import me.saket.telephoto.zoomable.rememberZoomableImageState
import me.saket.telephoto.zoomable.rememberZoomableState
import com.hinnka.mycamera.gallery.MediaData
import com.hinnka.mycamera.model.ColorRecipeParams
import com.hinnka.mycamera.model.toEffectParams
import com.hinnka.mycamera.raw.SpectralFilmSelection
import com.hinnka.mycamera.raw.SpectralFilmTuning
import com.hinnka.mycamera.ui.camera.LutEditBottomSheet
import com.hinnka.mycamera.ui.camera.LutEditorTarget
import com.hinnka.mycamera.ui.camera.RecipeScope
import com.hinnka.mycamera.ui.components.*
import com.hinnka.mycamera.ui.components.RawEditPanel
import com.hinnka.mycamera.ui.components.RawBaselineColorCorrectionBottomSheet
import com.hinnka.mycamera.ui.theme.AccentOrange
import com.hinnka.mycamera.utils.PLog
import com.hinnka.mycamera.viewmodel.CameraViewModel
import com.hinnka.mycamera.viewmodel.GalleryViewModel
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.FlowPreview
import kotlinx.coroutines.launch
import kotlinx.coroutines.flow.collectLatest
import kotlinx.coroutines.flow.conflate
import kotlinx.coroutines.flow.debounce
import kotlinx.coroutines.flow.filter
import kotlinx.coroutines.withContext
import kotlinx.coroutines.delay
import me.saket.telephoto.zoomable.ZoomSpec

import androidx.compose.ui.viewinterop.AndroidView
import android.view.LayoutInflater
import androidx.media3.exoplayer.ExoPlayer
import androidx.media3.common.MediaItem
import androidx.media3.common.Player
import androidx.media3.ui.PlayerView
import androidx.media3.ui.AspectRatioFrameLayout
import com.hinnka.mycamera.lut.VideoLutEffect
import com.hinnka.mycamera.lut.LutConfig
import com.hinnka.mycamera.ui.camera.autoRotate
import com.hinnka.mycamera.ui.components.RawEditPanelContentMode
import me.saket.telephoto.zoomable.DoubleClickToZoomListener
import com.hinnka.mycamera.ui.icons.AppIcons

private data class PreviewRenderSignature(
    val photoId: String,
    val refreshKey: Long,
    val editLutId: String?,
    val previewRecipeParamsOverride: ColorRecipeParams?,
    val editPhotoRecipeParams: ColorRecipeParams?,
    val editLutRecipeParams: ColorRecipeParams?,
    val editLutConfig: Any?,
    val editFrameId: String?,
    val editFrameCustomProperties: Map<String, String>,
    val editSharpening: Float,
    val editNoiseReduction: Float,
    val editChromaNoiseReduction: Float,
    val editRawExposureCompensation: Float,
    val editRawAutoExposure: Boolean,
    val editRawHighlightsAdjustment: Float,
    val editRawShadowsAdjustment: Float,
    val editRawBlackPointCorrection: Float,
    val editRawWhitePointCorrection: Float,
    val editRawDROMode: String,
    val editRawBlackLevelMode: String,
    val editRawCustomBlackLevel: Float,
    val editRawWhiteLevelMode: String,
    val editRawCfaCorrectionMode: String,
    val editRawDcpId: String?,
    val editRawRenderingEngine: String,
    val editRawBaselineLutId: String?,
    val editRawBaselineRecipeParams: ColorRecipeParams?,
    val editComputationalAperture: Float?,
    val editFocusX: Float?,
    val editFocusY: Float?,
    val showOrigin: Boolean,
    val editTab: Int,
)

/**
 * 照片编辑界面
 */
@SuppressLint("LocalContextGetResourceValueCall")
@OptIn(ExperimentalMaterial3Api::class, FlowPreview::class)
@Composable
fun GalleryEditScreen(
    viewModel: GalleryViewModel,
    cameraViewModel: CameraViewModel,
    onBack: () -> Unit,
    onOpenFrameEditor: (String) -> Unit,
    onFilterManagementClick: (String?) -> Unit,
    modifier: Modifier = Modifier
) {
    val context = LocalContext.current
    val userPreferencesRepository = remember {
        com.hinnka.mycamera.data.ContentRepository.getInstance(context).userPreferencesRepository
    }
    val userPreferences by userPreferencesRepository.userPreferences.collectAsState(
        initial = com.hinnka.mycamera.data.UserPreferences()
    )
    val currentPhotos by viewModel.currentPhotos.collectAsState()
    val currentPhoto = currentPhotos.getOrNull(viewModel.currentPhotoIndex)
    val editSourcePhoto = currentPhoto?.relatedPhoto ?: currentPhoto
    val editLutId by viewModel.editLutId.collectAsState()
    val editLutRecipeParams by viewModel.editLutRecipeParams.collectAsState()
    val editPhotoRecipeParams by viewModel.editPhotoRecipeParams.collectAsState()
    val editLutConfig = viewModel.editLutConfig
    val availableLuts = viewModel.availableLuts
    val showPaymentDialog = viewModel.showPaymentDialog
    val isPurchased by viewModel.isPurchased.collectAsState()
    val categoryOrder by viewModel.categoryOrder.collectAsState()

    var isSaving by remember { mutableStateOf(false) }
    var isLoadingPreview by remember { mutableStateOf(false) }
    val lutScrollState = rememberLazyListState()
    val frameScrollState = rememberLazyListState()
    var showLutEditDialog by remember { mutableStateOf(false) }
    var showBaselineLutEditSheet by remember { mutableStateOf(false) }
    var baselineLutEditId by remember { mutableStateOf<String?>(null) }
    var showRawBaselineLutSelectorSheet by remember { mutableStateOf(false) }
    var previewRecipeParamsOverride by remember(editLutId) { mutableStateOf<ColorRecipeParams?>(null) }
    var showEffectsSheet by remember { mutableStateOf(false) }

    BackHandler {
        viewModel.exitEditMode()
        onBack()
    }

    // 预览 Bitmap 状态
    var previewBitmap by remember { mutableStateOf<Bitmap?>(null) }
    var thumbnailBitmap by remember { mutableStateOf<Bitmap?>(null) }

    // 边框编辑状态
    val editFrameId by viewModel.editFrameId.collectAsState()
    val availableFrames = viewModel.availableFrames
    var editFrameCustomProperties by remember { mutableStateOf(emptyMap<String, String>()) }

    val editSharpening by viewModel.editSharpening.collectAsState()
    val editNoiseReduction by viewModel.editNoiseReduction.collectAsState()
    val editChromaNoiseReduction by viewModel.editChromaNoiseReduction.collectAsState()
    val editRawExposureCompensation by viewModel.editRawExposureCompensation.collectAsState()
    val editRawAutoExposure by viewModel.editRawAutoExposure.collectAsState()
    val editRawHighlightsAdjustment by viewModel.editRawHighlightsAdjustment.collectAsState()
    val editRawShadowsAdjustment by viewModel.editRawShadowsAdjustment.collectAsState()
    val editRawBlackPointCorrection by viewModel.editRawBlackPointCorrection.collectAsState()
    val editRawWhitePointCorrection by viewModel.editRawWhitePointCorrection.collectAsState()
    val editRawDROMode by viewModel.editRawDROMode.collectAsState()
    val editRawBlackLevelMode by viewModel.editRawBlackLevelMode.collectAsState()
    val editRawCustomBlackLevel by viewModel.editRawCustomBlackLevel.collectAsState()
    val editRawWhiteLevelMode by viewModel.editRawWhiteLevelMode.collectAsState()
    val editRawCfaCorrectionMode by viewModel.editRawCfaCorrectionMode.collectAsState()
    val editRawDcpId by viewModel.editRawDcpId.collectAsState()
    val editRawBaselineLutId by viewModel.editRawBaselineLutId.collectAsState()
    val editRawBaselineRecipeParams by viewModel.editRawBaselineRecipeParams.collectAsState()
    val editRawColorEngine by viewModel.editRawRenderingEngine.collectAsState()
    val editRawToneMappingParameters by viewModel.editRawToneMappingParameters.collectAsState()
    val editRawSpectralFilmStock by viewModel.editRawSpectralFilmStock.collectAsState()
    val editRawSpectralFilmPrint by viewModel.editRawSpectralFilmPrint.collectAsState()
    val editRawSpectralFilmCDensityGain by viewModel.editRawSpectralFilmCDensityGain.collectAsState()
    val editRawSpectralFilmMDensityGain by viewModel.editRawSpectralFilmMDensityGain.collectAsState()
    val editRawSpectralFilmYDensityGain by viewModel.editRawSpectralFilmYDensityGain.collectAsState()
    val availableDcps = viewModel.availableDcps
    
    val editComputationalAperture by viewModel.editComputationalAperture.collectAsState()
    val editFocusX by viewModel.editFocusPointX.collectAsState()
    val editFocusY by viewModel.editFocusPointY.collectAsState()

    val editCropRect by viewModel.editCropRect.collectAsState()
    val editCropAspectOption by viewModel.editCropAspectOption.collectAsState()

    val editAiDenoiseStrength by viewModel.editAiDenoiseStrength.collectAsState()

    val isRaw = editSourcePhoto?.let { viewModel.isRaw(it.id) } ?: false

    var showOrigin by remember { mutableStateOf(false) }

    // 编辑标签页状态
    var editTab by remember { mutableIntStateOf(0) } // 0: 滤镜/边框, 1: 细节处理, 2: RAW, 3: 裁剪
    var showControls by remember { mutableStateOf(true) }
    var isZoomed by remember { mutableStateOf(false) }
    val scope = rememberCoroutineScope()
    val refreshKey = editSourcePhoto?.id?.let { viewModel.photoRefreshKeys[it] } ?: 0L
    val isBaselineLutEditSheetVisible = showBaselineLutEditSheet && baselineLutEditId != null
    val isLutEditSheetVisible = (showLutEditDialog || showEffectsSheet) && editLutId != null
    val shouldShowEditControls = showControls &&
        !isLutEditSheetVisible &&
        !isBaselineLutEditSheetVisible &&
        !showRawBaselineLutSelectorSheet

    val animatePaddingBottom by animateDpAsState(
        if (shouldShowEditControls) 160.dp else 0.dp
    )
    var previewRenderRequestId by remember { mutableLongStateOf(0L) }

    fun currentPreviewSignature(fast: Boolean = false): PreviewRenderSignature? {
        val photo = editSourcePhoto ?: return null
        return PreviewRenderSignature(
            photoId = photo.id,
            refreshKey = refreshKey,
            editLutId = editLutId,
            previewRecipeParamsOverride = previewRecipeParamsOverride,
            editPhotoRecipeParams = editPhotoRecipeParams,
            editLutRecipeParams = editLutRecipeParams,
            editLutConfig = editLutConfig,
            editFrameId = editFrameId,
            editFrameCustomProperties = editFrameCustomProperties.toMap(),
            editSharpening = editSharpening,
            editNoiseReduction = if (fast) 0f else editNoiseReduction,
            editChromaNoiseReduction = if (fast) 0f else editChromaNoiseReduction,
            editRawExposureCompensation = if (fast) 0f else editRawExposureCompensation,
            editRawAutoExposure = if (fast) false else editRawAutoExposure,
            editRawHighlightsAdjustment = if (fast) 0f else editRawHighlightsAdjustment,
            editRawShadowsAdjustment = if (fast) 0f else editRawShadowsAdjustment,
            editRawBlackPointCorrection = if (fast) 0f else editRawBlackPointCorrection,
            editRawWhitePointCorrection = if (fast) 0f else editRawWhitePointCorrection,
            editRawDROMode = if (fast) "" else editRawDROMode,
            editRawBlackLevelMode = if (fast) "" else editRawBlackLevelMode,
            editRawCustomBlackLevel = if (fast) 0f else editRawCustomBlackLevel,
            editRawWhiteLevelMode = if (fast) "" else editRawWhiteLevelMode,
            editRawCfaCorrectionMode = if (fast) "" else editRawCfaCorrectionMode,
            editRawDcpId = if (fast) null else editRawDcpId,
            editRawRenderingEngine = if (fast) "" else editRawColorEngine.name,
            editRawBaselineLutId = editRawBaselineLutId,
            editRawBaselineRecipeParams = editRawBaselineRecipeParams,
            editComputationalAperture = if (fast) 0f else editComputationalAperture,
            editFocusX = editFocusX,
            editFocusY = editFocusY,
            showOrigin = showOrigin,
            editTab = editTab
        )
    }

    suspend fun renderPreview(
        photo: MediaData,
        maxEdge: Int,
        cancelStaleResult: Boolean
    ) {
        val requestId = ++previewRenderRequestId
        val bitmap = withContext(Dispatchers.IO) {
            viewModel.getPreviewBitmap(
                photo,
                useGlobalEdit = true,
                showOrigin = showOrigin,
                ignoreCrop = editTab == 3,
                recipeParamsOverride = previewRecipeParamsOverride,
                maxEdge = maxEdge
            )
        }
        if ((!cancelStaleResult || requestId == previewRenderRequestId) && bitmap != null) {
            previewBitmap = bitmap
            isLoadingPreview = false
        }
    }



    LaunchedEffect(editSourcePhoto) {
        val photo = editSourcePhoto ?: return@LaunchedEffect
        editFrameCustomProperties = photo.metadata?.customProperties
            ?: viewModel.getEditCustomProperties(photo.id)
    }

    val rawDcpLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.GetMultipleContents()
    ) { uris ->
        if (uris.isEmpty()) return@rememberLauncherForActivityResult
        val photo = editSourcePhoto ?: return@rememberLauncherForActivityResult
        scope.launch {
            val importedDcps = viewModel.importRawDcps(uris)
            val failedCount = uris.size - importedDcps.size
            importedDcps.lastOrNull()?.let {
                viewModel.saveRawDcpSelection(photo, it.id) {
                    viewModel.refreshRawPreview(photo)
                }
            }
            when {
                importedDcps.size == 1 && failedCount == 0 -> {
                    Toast.makeText(context, context.getString(R.string.raw_dcp_import_success, importedDcps.first().getName()), Toast.LENGTH_SHORT).show()
                }
                importedDcps.isNotEmpty() && failedCount == 0 -> {
                    Toast.makeText(context, context.getString(R.string.raw_dcp_import_success_count, importedDcps.size), Toast.LENGTH_SHORT).show()
                }
                importedDcps.isNotEmpty() -> {
                    Toast.makeText(context, context.getString(R.string.raw_dcp_import_partial, importedDcps.size, failedCount), Toast.LENGTH_SHORT).show()
                }
                else -> {
                    Toast.makeText(context, context.getString(R.string.raw_dcp_import_failed), Toast.LENGTH_SHORT).show()
                }
            }
        }
    }

    LaunchedEffect(editSourcePhoto, refreshKey) {
        val photo = editSourcePhoto ?: return@LaunchedEffect
        if (photo.isVideo) return@LaunchedEffect
        snapshotFlow {
            currentPreviewSignature(true)
        }
            .filter { it != null }
            .conflate()
            .collect {
                renderPreview(photo, maxEdge = 1440, cancelStaleResult = false)
            }
    }

    LaunchedEffect(editSourcePhoto, refreshKey) {
        val photo = editSourcePhoto ?: return@LaunchedEffect
        if (photo.isVideo) return@LaunchedEffect
        snapshotFlow {
            currentPreviewSignature()
        }
            .filter { it != null }
            .conflate()
            .debounce(250)
            .collectLatest {
                renderPreview(photo, maxEdge = 4096, cancelStaleResult = true)
            }
    }

    LaunchedEffect(editSourcePhoto) {
        val photo = editSourcePhoto ?: return@LaunchedEffect
        thumbnailBitmap = withContext(Dispatchers.IO) {
            viewModel.loadThumbnail(photo)
        }
    }

    LaunchedEffect(editLutId) {
        editLutId?.let { lutId ->
            val selectedIndex = availableLuts.indexOfFirst { it.id == lutId }
            if (selectedIndex >= 2) {
                lutScrollState.animateScrollToItem(selectedIndex - 2)
            }
        }
    }

    LaunchedEffect(editFrameId) {
        editFrameId?.let { lutId ->
            val selectedIndex = availableFrames.indexOfFirst { it.id == lutId }
            if (selectedIndex >= 1) {
                frameScrollState.animateScrollToItem(selectedIndex - 1)
            }
        }
    }

    if (currentPhoto == null) {
        LaunchedEffect(Unit) {
            onBack()
        }
        return
    }
    val currentEditSourcePhoto = editSourcePhoto ?: currentPhoto

    var pendingRawPreviewRefresh by remember(currentEditSourcePhoto.id) { mutableStateOf(false) }
    val isRefreshingRawPreview = viewModel.refreshingPhotos.contains(currentEditSourcePhoto.id)

    fun refreshRawPreview(showResultToast: Boolean = false) {
        viewModel.refreshRawPreview(currentEditSourcePhoto) { success ->
            if (showResultToast) {
                Toast.makeText(
                    context,
                    if (success) R.string.refresh_success else R.string.refresh_failed,
                    Toast.LENGTH_SHORT
                ).show()
            }
        }
    }

    fun requestRawPreviewRefresh(showResultToast: Boolean = false) {
        if (!isRaw) return
        if (viewModel.refreshingPhotos.contains(currentEditSourcePhoto.id)) {
            pendingRawPreviewRefresh = true
            return
        }
        refreshRawPreview(showResultToast)
    }

    LaunchedEffect(isRefreshingRawPreview, pendingRawPreviewRefresh, currentEditSourcePhoto.id) {
        if (!isRefreshingRawPreview && pendingRawPreviewRefresh) {
            pendingRawPreviewRefresh = false
            refreshRawPreview()
        }
    }

    Scaffold(
        containerColor = Color.Black,
        modifier = modifier
    ) { paddingValues ->
        Box(
            modifier = Modifier
                .fillMaxSize()
                .padding(paddingValues)
                .animateContentSize()
        ) {
            // Draggable Floating Reference Photo
            val referencePhotoUrl = userPreferences.referencePhotoUrl
            var isMinimized by remember { mutableStateOf(false) }
            var isLarge by remember { mutableStateOf(false) }
            
            referencePhotoUrl?.let { url ->
                val density = androidx.compose.ui.platform.LocalDensity.current
                val initialOffsetX = remember(density) { with(density) { 20.dp.toPx() } }
                val initialOffsetY = remember(density) { with(density) { 80.dp.toPx() } }
                
                var offsetX by remember { mutableStateOf(initialOffsetX) }
                var offsetY by remember { mutableStateOf(initialOffsetY) }

                Box(
                    modifier = Modifier
                        .offset { IntOffset(offsetX.roundToInt(), offsetY.roundToInt()) }
                        .pointerInput(Unit) {
                            detectDragGestures { change, dragAmount ->
                                change.consume()
                                offsetX += dragAmount.x
                                offsetY += dragAmount.y
                            }
                        }
                        .zIndex(10f)
                ) {
                    if (isMinimized) {
                        Card(
                            modifier = Modifier
                                .size(48.dp)
                                .clickable { isMinimized = false },
                            shape = CircleShape,
                            colors = CardDefaults.cardColors(containerColor = Color.Black.copy(alpha = 0.8f)),
                            elevation = CardDefaults.cardElevation(defaultElevation = 8.dp),
                            border = BorderStroke(1.5.dp, Color.White)
                        ) {
                            Box(
                                modifier = Modifier.fillMaxSize(),
                                contentAlignment = Alignment.Center
                            ) {
                                Icon(
                                    imageVector = AppIcons.PushPin,
                                    contentDescription = "Show Reference",
                                    tint = Color(0xFFFFD700),
                                    modifier = Modifier.size(20.dp)
                                )
                            }
                        }
                    } else {
                        val cardSize = if (isLarge) 240.dp else 120.dp
                        Card(
                            modifier = Modifier
                                .width(cardSize),
                            shape = RoundedCornerShape(12.dp),
                            colors = CardDefaults.cardColors(containerColor = Color(0xFF1E1E1E)),
                            elevation = CardDefaults.cardElevation(defaultElevation = 8.dp),
                            border = BorderStroke(2.dp, Color.White)
                        ) {
                            Column(modifier = Modifier.fillMaxWidth()) {
                                Box(modifier = Modifier.fillMaxWidth()) {
                                    coil.compose.AsyncImage(
                                        model = ImageRequest.Builder(LocalContext.current)
                                            .data(url)
                                            .placeholder(R.mipmap.ic_launcher)
                                            .build(),
                                        contentDescription = "Reference Photo",
                                        modifier = Modifier
                                            .fillMaxWidth(),
                                        contentScale = ContentScale.FillWidth
                                    )
                                    
                                    Row(
                                        modifier = Modifier
                                            .fillMaxWidth()
                                            .padding(4.dp),
                                        horizontalArrangement = Arrangement.SpaceBetween,
                                        verticalAlignment = Alignment.CenterVertically
                                    ) {
                                        Box(
                                            modifier = Modifier
                                                .size(24.dp)
                                                .clip(CircleShape)
                                                .background(Color.Black.copy(alpha = 0.6f))
                                                .clickable { isMinimized = true },
                                            contentAlignment = Alignment.Center
                                        ) {
                                            Icon(
                                                imageVector = AppIcons.PushPin,
                                                contentDescription = "Minimize",
                                                tint = Color.White,
                                                modifier = Modifier.size(12.dp)
                                            )
                                        }
                                        Box(
                                            modifier = Modifier
                                                .size(24.dp)
                                                .clip(CircleShape)
                                                .background(Color.Black.copy(alpha = 0.6f))
                                                .clickable {
                                                    scope.launch {
                                                        userPreferencesRepository.saveReferencePhotoUrl(null)
                                                    }
                                                },
                                            contentAlignment = Alignment.Center
                                        ) {
                                            Icon(
                                                imageVector = Icons.Default.Close,
                                                contentDescription = "Close",
                                                tint = Color.White,
                                                modifier = Modifier.size(12.dp)
                                            )
                                        }
                                    }
                                }
                                
                                Row(
                                    modifier = Modifier
                                        .fillMaxWidth()
                                        .background(Color.White)
                                        .padding(horizontal = 8.dp, vertical = 6.dp)
                                        .clickable { isLarge = !isLarge },
                                    horizontalArrangement = Arrangement.Center,
                                    verticalAlignment = Alignment.CenterVertically
                                ) {
                                    Text(
                                        text = if (isLarge) stringResource(R.string.zoom_out) else stringResource(R.string.zoom_in),
                                        color = Color.Black,
                                        fontSize = 11.sp,
                                        fontWeight = FontWeight.Bold
                                    )
                                }
                            }
                        }
                    }
                }
            }

            // 预览区域
            Box(
                modifier = Modifier
                    .fillMaxSize()
                    .padding(bottom = animatePaddingBottom)
                    .pointerInput(isZoomed) {
                        if (!isZoomed) {
                            var totalDrag = 0f
                            detectHorizontalDragGestures(
                                onDragEnd = {
                                    if (kotlin.math.abs(totalDrag) > 100) {
                                        if (totalDrag > 0) {
                                            viewModel.switchToPreviousLut()
                                        } else {
                                            viewModel.switchToNextLut()
                                        }
                                    }
                                    totalDrag = 0f
                                },
                                onHorizontalDrag = { _, dragAmount ->
                                    totalDrag += dragAmount
                                }
                            )
                        }
                    }
                    .pointerInput(Unit) {
                        awaitPointerEventScope {
                            while (true) {
                                // 确认第一个手指按下，且当前只有一个指针
                                val downEvent = awaitPointerEvent(PointerEventPass.Initial)
                                if (downEvent.type == PointerEventType.Press && downEvent.changes.size == 1) {
                                    val touchSlop = viewConfiguration.touchSlop
                                    val initialPosition = downEvent.changes[0].position
                                    val longPressTimeout = viewConfiguration.longPressTimeoutMillis
                                    var upEvent: PointerEvent? = null
                                    var isMultiTouch = false
                                    var isMoved = false

                                    // 期间如果出现第二个手指或位移过大，立即标志并退出
                                    withTimeoutOrNull(longPressTimeout) {
                                        while (true) {
                                            val event = awaitPointerEvent(PointerEventPass.Initial)
                                            if (event.changes.size > 1) {
                                                isMultiTouch = true
                                                break
                                            }

                                            val currentPosition = event.changes[0].position
                                            if ((currentPosition - initialPosition).getDistance() > touchSlop) {
                                                isMoved = true
                                                break
                                            }

                                            if (event.type == PointerEventType.Release) {
                                                upEvent = event
                                                break
                                            }
                                        }
                                    }

                                    // 如果既没有多指操作也没有明显位移，才根据结果执行逻辑
                                    if (!isMultiTouch && !isMoved) {
                                        if (upEvent != null) {
                                            // 快速点击：切换控制区域显隐，或者调整景深焦点
                                            if (editTab == 1 && viewModel.editComputationalAperture.value != null && previewBitmap != null) {
                                                val tapPosition = upEvent.changes[0].position
                                                val boxWidth = size.width.toFloat()
                                                val boxHeight = size.height.toFloat()
                                                val imageRatio = previewBitmap!!.width.toFloat() / previewBitmap!!.height.toFloat()
                                                val boxRatio = boxWidth / boxHeight

                                                var imageDisplayWidth = boxWidth
                                                var imageDisplayHeight = boxHeight
                                                if (imageRatio > boxRatio) {
                                                    imageDisplayHeight = boxWidth / imageRatio
                                                } else {
                                                    imageDisplayWidth = boxHeight * imageRatio
                                                }

                                                val offsetX = (boxWidth - imageDisplayWidth) / 2f
                                                val offsetY = (boxHeight - imageDisplayHeight) / 2f

                                                val relativeX = (tapPosition.x - offsetX) / imageDisplayWidth
                                                val relativeY = (tapPosition.y - offsetY) / imageDisplayHeight

                                                if (relativeX in 0f..1f && relativeY in 0f..1f) {
                                                    viewModel.setFocusPoint(relativeX, relativeY)
                                                } else {
                                                    showControls = !showControls
                                                }
                                            } else {
                                                showControls = !showControls
                                            }
                                        } else {
                                            // 确认为长按：显示原图
                                            showOrigin = true
                                            // 继续监控直到手指抬起，或者变成多指（开始缩放）
                                            while (true) {
                                                val event = awaitPointerEvent(PointerEventPass.Initial)
                                                if (event.type == PointerEventType.Release || event.changes.size > 1) {
                                                    break
                                                }
                                            }
                                            showOrigin = false
                                        }
                                    }
                                }
                            }
                        }
                    },
                contentAlignment = Alignment.Center
            ) {
                // 显示预览
                if (currentPhoto.isVideo) {
                    VideoEditPlayer(
                        photo = currentPhoto,
                        lutConfig = editLutConfig,
                        recipeParams = if (showOrigin) null else (previewRecipeParamsOverride ?: editPhotoRecipeParams ?: editLutRecipeParams),
                        modifier = Modifier.fillMaxSize()
                    )
                } else if (editTab == 3 && previewBitmap != null) {
                    CropOverlay(
                        bitmap = previewBitmap,
                        cropRect = editCropRect ?: android.graphics.RectF(0f, 0f, 1f, 1f),
                        onCropRectChanged = { rect -> viewModel.setCropRect(rect) },
                        aspectOption = editCropAspectOption,
                        contentPadding = 28.dp,
                        modifier = Modifier.fillMaxSize()
                    )
                } else {
                    ZoomableEditImage(
                        previewBitmap = previewBitmap,
                        isLutEditing = isLutEditSheetVisible || isBaselineLutEditSheetVisible,
                        contentDescription = stringResource(R.string.edit),
                        onZoomChange = {
                            isZoomed = it
                        },
                        modifier = Modifier.fillMaxSize()
                    )
                }

                // 加载指示器
                if (isLoadingPreview) {
                    CircularProgressIndicator(
                        color = AccentOrange,
                        modifier = Modifier.size(48.dp)
                    )
                }
            }

            AnimatedVisibility(
                visible = showControls,
                enter = slideInVertically(initialOffsetY = { -it }) + expandVertically(expandFrom = Alignment.Top) + fadeIn(),
                exit = slideOutVertically(targetOffsetY = { -it }) + shrinkVertically(shrinkTowards = Alignment.Top) + fadeOut(),
                modifier = Modifier.align(Alignment.TopCenter),
            ) {
                TopAppBar(
                    modifier = Modifier,
                    title = {},
                    navigationIcon = {
                        IconButton(onClick = {
                            viewModel.exitEditMode()
                            onBack()
                        }) {
                            Icon(
                                imageVector = Icons.AutoMirrored.Filled.ArrowBack,
                                contentDescription = stringResource(R.string.back),
                                tint = Color.White
                            )
                        }
                    },
                    actions = {
                        if (isRaw) {
                            val infiniteTransition = rememberInfiniteTransition(label = "refresh")
                            val rotation by infiniteTransition.animateFloat(
                                initialValue = 0f,
                                targetValue = 360f,
                                animationSpec = infiniteRepeatable(
                                    animation = tween(1000, easing = LinearEasing),
                                    repeatMode = RepeatMode.Restart
                                ),
                                label = "rotation"
                            )

                            IconButton(
                                onClick = {
                                    requestRawPreviewRefresh(showResultToast = true)
                                },
                                enabled = !isRefreshingRawPreview
                            ) {
                                Icon(
                                    imageVector = Icons.Default.Refresh,
                                    contentDescription = stringResource(R.string.refresh),
                                    tint = if (isRefreshingRawPreview) Color.White.copy(alpha = 0.5f) else Color.White,
                                    modifier = Modifier.graphicsLayer {
                                        if (isRefreshingRawPreview) {
                                            rotationZ = rotation
                                        }
                                    }
                                )
                            }
                        }
                        // 保存元数据按钮
                        IconButton(
                            onClick = {
                                val currentLut = availableLuts.find { it.id == editLutId }
                                if (currentLut?.isVip == true && !isPurchased) {
                                    viewModel.showPaymentDialog = true
                                    return@IconButton
                                }
                                isSaving = true
                                viewModel.saveEditMetadata(currentPhoto) { success ->
                                    isSaving = false
                                    if (success) {
                                        onBack()
                                    }
                                }
                            },
                            enabled = !isSaving
                        ) {
                            if (isSaving) {
                                CircularProgressIndicator(
                                    color = Color.White,
                                    modifier = Modifier.size(24.dp),
                                    strokeWidth = 2.dp
                                )
                            } else {
                                Icon(
                                    imageVector = Icons.Default.Check,
                                    contentDescription = stringResource(R.string.save),
                                    tint = AccentOrange
                                )
                            }
                        }
                    },
                    colors = TopAppBarDefaults.topAppBarColors(
                        containerColor = Color.Transparent
                    ),
                    windowInsets = WindowInsets(0, 0, 0, 0)
                )
            }

            // 编辑控制区域
            AnimatedVisibility(
                visible = shouldShowEditControls,
                enter = slideInVertically(initialOffsetY = { it }) + expandVertically(expandFrom = Alignment.Bottom) + fadeIn(),
                exit = slideOutVertically(targetOffsetY = { it }) + shrinkVertically(shrinkTowards = Alignment.Bottom) + fadeOut(),
                modifier = Modifier.align(Alignment.BottomCenter)
            ) {
                Surface(
                    color = Color(0x331A1A1A),
                    shape = RoundedCornerShape(topStart = 24.dp, topEnd = 24.dp),
                    modifier = Modifier.fillMaxWidth()
                ) {
                    Column(
                        modifier = Modifier.padding(bottom = 16.dp, start = 16.dp, end = 16.dp)
                    ) {
                        // 标签页切换
                        Row(
                            modifier = Modifier.fillMaxWidth().padding(top = 16.dp),
                            horizontalArrangement = Arrangement.spacedBy(24.dp)
                        ) {
                            TabItem(
                                title = stringResource(R.string.filter) + " & " + stringResource(R.string.frame),
                                isSelected = editTab == 0,
                                onClick = { editTab = 0 }
                            )
                            TabItem(
                                title = stringResource(R.string.recipe_tab_post),
                                isSelected = editTab == 1,
                                onClick = { editTab = 1 }
                            )
                            if (isRaw) {
                                TabItem(
                                    title = "RAW",
                                    isSelected = editTab == 2,
                                    onClick = { editTab = 2 }
                                )
                            }
                            if (!currentPhoto.isVideo) {
                                TabItem(
                                    title = stringResource(R.string.crop),
                                    isSelected = editTab == 3,
                                    onClick = { editTab = 3 }
                                )
                            }
                        }
                        Column(modifier = Modifier.heightIn(max = 550.dp).verticalScroll(rememberScrollState())) {
                            when (editTab) {
                                0 -> {
                                    if (currentPhoto.isMotionPhoto) {
                                        val applyEffectsToVideo by viewModel.editApplyEffectsToVideo.collectAsState()
                                        Row(
                                            modifier = Modifier
                                                .fillMaxWidth()
                                                .padding(top = 12.dp, bottom = 4.dp),
                                            verticalAlignment = Alignment.CenterVertically
                                        ) {
                                            Checkbox(
                                                checked = applyEffectsToVideo,
                                                onCheckedChange = { viewModel.setApplyEffectsToVideo(it) },
                                                colors = CheckboxDefaults.colors(
                                                    checkedColor = AccentOrange,
                                                    uncheckedColor = Color.White.copy(alpha = 0.6f),
                                                    checkmarkColor = Color.Black
                                                )
                                            )
                                            Spacer(modifier = Modifier.width(8.dp))
                                            Text(
                                                text = stringResource(R.string.edit_embedded_video_simultaneously),
                                                color = Color.White,
                                                fontSize = 14.sp
                                            )
                                        }
                                    }

                                    Spacer(modifier = Modifier.height(16.dp))
                                    LutSelectorWithRecipeAction(
                                        availableLuts = viewModel.availableLuts,
                                        currentLutId = editLutId,
                                        thumbnail = thumbnailBitmap,
                                        onLutSelected = { viewModel.setEditLut(it) },
                                        onEditRecipeClick = if (editLutId != null) {
                                            { showLutEditDialog = true }
                                        } else null,
                                        onEditEffectClick = if (editLutId != null) {
                                            { showEffectsSheet = true }
                                        } else null,
                                        recipeIsCustomized = editPhotoRecipeParams != null,
                                        onManageClick = { onFilterManagementClick(it) },
                                        categoryOrder = categoryOrder
                                    )

                                    if (!currentPhoto.isVideo) {
                                        Spacer(modifier = Modifier.height(16.dp))

                                        // 边框水印选择器
                                        Row(
                                            modifier = Modifier.fillMaxWidth(),
                                            horizontalArrangement = Arrangement.SpaceBetween,
                                            verticalAlignment = Alignment.CenterVertically
                                        ) {
                                            Text(
                                                text = stringResource(R.string.frame),
                                                color = Color.White,
                                                fontSize = 16.sp
                                            )

                                            if (editFrameId != null) {
                                                val currentFrame = availableFrames.find { it.id == editFrameId }
                                                if (currentFrame?.isEditable == true) {
                                                    Row(
                                                        modifier = Modifier
                                                            .clip(RoundedCornerShape(16.dp))
                                                            .background(Color.White.copy(alpha = 0.1f))
                                                            .clickable { onOpenFrameEditor(currentFrame.id) }
                                                            .padding(horizontal = 10.dp, vertical = 4.dp),
                                                        verticalAlignment = Alignment.CenterVertically,
                                                        horizontalArrangement = Arrangement.spacedBy(4.dp)
                                                    ) {
                                                        Icon(
                                                            imageVector = AppIcons.Tune,
                                                            contentDescription = null,
                                                            tint = Color(0xFFFFD700),
                                                            modifier = Modifier.size(14.dp)
                                                        )
                                                        Text(
                                                            text = stringResource(R.string.edit),
                                                            color = Color.White,
                                                            fontSize = 11.sp
                                                        )
                                                    }
                                                }
                                            }
                                        }

                                        Spacer(modifier = Modifier.height(8.dp))


                                        LazyRow(
                                            horizontalArrangement = Arrangement.spacedBy(12.dp),
                                            state = frameScrollState
                                        ) {
                                            // 无边框选项
                                            item {
                                                FrameOption(
                                                    name = stringResource(R.string.none),
                                                    isSelected = editFrameId == null,
                                                    isCustom = false,  // 无边框不是自定义
                                                    onClick = { viewModel.setEditFrame(null) }
                                                )
                                            }

                                            // 边框选项
                                            items(availableFrames) { frame ->
                                                FrameOption(
                                                    name = frame.name,
                                                    isSelected = editFrameId == frame.id,
                                                    isCustom = !frame.isBuiltIn,  // 添加自定义标识
                                                    isEditable = frame.isEditable,
                                                    onClick = {
                                                        if (editFrameId == frame.id) {
                                                            if (frame.isEditable) {
                                                                onOpenFrameEditor(frame.id)
                                                            }
                                                        } else {
                                                            viewModel.setEditFrame(frame.id)
                                                        }
                                                    }
                                                )
                                            }
                                        }
                                    }
                                }
                                1 -> {
                                    Spacer(modifier = Modifier.height(16.dp))
                                    if (!currentPhoto.isVideo) {
                                        val isDnCNNDenoising by viewModel.isAiDenoising.collectAsState()
                                        val dnCNNProgress by viewModel.aiDenoiseProgress.collectAsState()

                                        SliderSettingItem(
                                            title = stringResource(R.string.ai_denoise_title),
                                            description = if (isDnCNNDenoising) stringResource(
                                                R.string.ai_denoise_processing,
                                                dnCNNProgress * 100
                                            ) else stringResource(R.string.ai_denoise_description),
                                            value = editAiDenoiseStrength,
                                            valueRange = 0f..1f,
                                            onValueChange = { viewModel.setAiDenoiseStrength(it) },
                                            onValueChangeFinished = {
                                                if (isDnCNNDenoising) return@SliderSettingItem
                                                if (editAiDenoiseStrength > 0.01f) {
                                                    viewModel.applyDnCNNDenoise(
                                                        photo = currentEditSourcePhoto,
                                                        strength = editAiDenoiseStrength,
                                                        onComplete = { success ->
                                                            if (!success) {
                                                                Toast.makeText(
                                                                    context,
                                                                    context.getString(R.string.ai_denoise_failed),
                                                                    Toast.LENGTH_SHORT
                                                                ).show()
                                                            }
                                                        }
                                                    )
                                                } else {
                                                    viewModel.resetDnCNNDenoise(
                                                        photo = currentEditSourcePhoto,
                                                        onComplete = { success ->
                                                            if (!success) {
                                                                Toast.makeText(
                                                                    context,
                                                                    context.getString(R.string.ai_denoise_failed),
                                                                    Toast.LENGTH_SHORT
                                                                ).show()
                                                            }
                                                        }
                                                    )
                                                }
                                            }
                                        )
                                        Spacer(modifier = Modifier.height(8.dp))
                                        // 细节处理调整 (锐化, 降噪, 杂色降噪)
                                        val aperture = editComputationalAperture
                                        SliderSettingItem(
                                            title = stringResource(R.string.virtual_aperture),
                                            value = editComputationalAperture ?: 2.8f,
                                            valueRange = 1.0f..16.0f,
                                            onValueChange = { viewModel.setComputationalAperture(it) },
                                            onValueChangeFinished = { },
                                            toggleValue = aperture != null && aperture > 0f,
                                            onToggleChange = { checked ->
                                                if (checked) {
                                                    viewModel.setComputationalAperture(2.8f)
                                                } else {
                                                    viewModel.setComputationalAperture(null)
                                                }
                                            }
                                        )
                                    }
                                    SliderSettingItem(
                                        title = stringResource(R.string.settings_sharpening),
                                        value = editSharpening,
                                        valueRange = 0f..1f,
                                        resetValue = 0f,
                                        onValueChange = { viewModel.setSharpening(it) },
                                        onValueChangeFinished = {
                                            if (isRaw) {
                                                viewModel.persistCurrentRawEditMetadata(currentEditSourcePhoto) { success ->
                                                    if (success) requestRawPreviewRefresh()
                                                }
                                            }
                                        }
                                    )
                                    SliderSettingItem(
                                        title = stringResource(R.string.settings_noise_reduction),
                                        value = editNoiseReduction,
                                        valueRange = 0f..1f,
                                        resetValue = 0f,
                                        onValueChange = { viewModel.setNoiseReduction(it) },
                                        onValueChangeFinished = {
                                            if (isRaw) {
                                                viewModel.persistCurrentRawEditMetadata(currentEditSourcePhoto) { success ->
                                                    if (success) requestRawPreviewRefresh()
                                                }
                                            }
                                        }
                                    )
                                    SliderSettingItem(
                                        title = stringResource(R.string.settings_chroma_noise_reduction),
                                        value = editChromaNoiseReduction,
                                        valueRange = 0f..1f,
                                        resetValue = 0f,
                                        onValueChange = { viewModel.setChromaNoiseReduction(it) },
                                        onValueChangeFinished = {
                                            if (isRaw) {
                                                viewModel.persistCurrentRawEditMetadata(currentEditSourcePhoto) { success ->
                                                    if (success) requestRawPreviewRefresh()
                                                }
                                            }
                                        }
                                    )
                                }
                                2 -> {
                                    RawEditPanel(
                                        selectedDcpId = editRawDcpId,
                                        availableDcps = availableDcps,
                                        selectedBaselineLutId = editRawBaselineLutId,
                                        onSelectBaselineLut = { lutId ->
                                            viewModel.saveRawBaselineLutSelection(currentEditSourcePhoto, lutId)
                                        },
                                        onEditBaselineRecipe = { lutId ->
                                            baselineLutEditId = lutId
                                            showBaselineLutEditSheet = true
                                        },
                                        availableLuts = availableLuts,
                                        thumbnail = previewBitmap,
                                        rawExposureCompensation = editRawExposureCompensation,
                                        rawAutoExposure = editRawAutoExposure,
                                        rawHighlightsAdjustment = editRawHighlightsAdjustment,
                                        rawShadowsAdjustment = editRawShadowsAdjustment,
                                        rawBlackPointCorrection = editRawBlackPointCorrection,
                                        rawWhitePointCorrection = editRawWhitePointCorrection,
                                        rawBlackLevelMode = editRawBlackLevelMode,
                                        rawCustomBlackLevel = editRawCustomBlackLevel,
                                        rawWhiteLevelMode = editRawWhiteLevelMode,
                                        rawCfaCorrectionMode = editRawCfaCorrectionMode,
                                        rawRenderingEngine = editRawColorEngine,
                                        rawToneMappingParameters = editRawToneMappingParameters,
                                        spectralFilmSelection = editRawSpectralFilmStock?.let { stock ->
                                            SpectralFilmSelection(
                                                id = stock,
                                                tuning = SpectralFilmTuning(
                                                    cDensityGain = editRawSpectralFilmCDensityGain,
                                                    mDensityGain = editRawSpectralFilmMDensityGain,
                                                    yDensityGain = editRawSpectralFilmYDensityGain
                                                )
                                            )
                                        },
                                        spectralFilmPrint = editRawSpectralFilmPrint,
                                        onSelectDcp = { dcpId ->
                                            viewModel.saveRawDcpSelection(currentEditSourcePhoto, dcpId) {
                                                requestRawPreviewRefresh()
                                            }
                                        },
                                        onImportDcp = {
                                            rawDcpLauncher.launch("*/*")
                                        },
                                        onDeleteDcp = { dcp ->
                                            val isDeletingSelectedDcp = editRawDcpId == dcp.id
                                            viewModel.deleteRawDcp(currentEditSourcePhoto, dcp.id) { success ->
                                                Toast.makeText(
                                                    context,
                                                    if (success) R.string.raw_dcp_delete_success else R.string.raw_dcp_delete_failed,
                                                    Toast.LENGTH_SHORT
                                                ).show()
                                                if (success && isDeletingSelectedDcp) {
                                                    requestRawPreviewRefresh()
                                                }
                                            }
                                        },
                                        onRawExposureCompensationChange = {
                                            viewModel.saveRawExposureCompensationValue(currentEditSourcePhoto, it)
                                        },
                                        onRawExposureCompensationReset = {
                                            viewModel.resetRawExposureCompensationValue(currentEditSourcePhoto) { success ->
                                                if (success) requestRawPreviewRefresh()
                                            }
                                        },
                                        onRawAutoExposureChange = {
                                            /*if (it) {
                                                viewModel.saveRawExposureCompensationValue(currentEditSourcePhoto, 0f)
                                            }
                                            viewModel.saveRawAutoExposureValue(currentEditSourcePhoto, it) {
                                                requestRawPreviewRefresh()
                                            }*/
                                        },
                                        onRawHighlightsAdjustmentChange = {
                                            viewModel.saveRawHighlightsAdjustmentValue(currentEditSourcePhoto, it)
                                        },
                                        onRawShadowsAdjustmentChange = {
                                            viewModel.saveRawShadowsAdjustmentValue(currentEditSourcePhoto, it)
                                        },
                                        onRawBlackPointCorrectionChange = {
                                            viewModel.saveRawBlackPointCorrectionValue(currentEditSourcePhoto, it)
                                        },
                                        onRawWhitePointCorrectionChange = {
                                            viewModel.saveRawWhitePointCorrectionValue(currentEditSourcePhoto, it)
                                        },
                                        onRawBlackLevelModeChange = {
                                            viewModel.saveRawBlackLevelMode(currentEditSourcePhoto, it) {
                                                requestRawPreviewRefresh()
                                            }
                                        },
                                        onRawCustomBlackLevelChange = {
                                            viewModel.saveRawCustomBlackLevel(currentEditSourcePhoto, it) {
                                                requestRawPreviewRefresh()
                                            }
                                        },
                                        onRawWhiteLevelModeChange = {
                                            viewModel.saveRawWhiteLevelMode(currentEditSourcePhoto, it) {
                                                requestRawPreviewRefresh()
                                            }
                                        },
                                        onRawCfaCorrectionModeChange = {
                                            viewModel.saveRawCfaCorrectionMode(currentEditSourcePhoto, it) {
                                                requestRawPreviewRefresh()
                                            }
                                        },
                                        onRawColorEngineChange = {
                                            viewModel.saveRawColorEngine(currentEditSourcePhoto, it) {
                                                requestRawPreviewRefresh()
                                            }
                                        },
                                        onRawToneMappingParametersChange = {
                                            viewModel.saveRawToneMappingParameters(currentEditSourcePhoto, it)
                                        },
                                        onSpectralFilmSelectionChange = {
                                            viewModel.saveRawSpectralFilmSelection(currentEditSourcePhoto, it) {
                                                requestRawPreviewRefresh()
                                            }
                                        },
                                        onSpectralFilmPrintChange = {
                                            viewModel.saveRawSpectralFilmPrint(currentEditSourcePhoto, it) {
                                                requestRawPreviewRefresh()
                                            }
                                        },
                                        onAdjustmentStart = { },
                                        onAdjustmentEnd = {
                                            viewModel.persistCurrentRawEditMetadata(currentEditSourcePhoto) {
                                                requestRawPreviewRefresh()
                                            }
                                        },
                                        onOpenBaselineLutSheet = {
                                            showRawBaselineLutSelectorSheet = true
                                        },
                                        showAutoExposureControl = false,
                                        showDngMetadataControls = true,
                                        contentMode = RawEditPanelContentMode.FULL,
                                        modifier = Modifier.fillMaxWidth()
                                    )
                                }
                                3 -> {
                                    if (!currentPhoto.isVideo) {
                                        // 裁剪编辑
                                        val availablePhotoAspectRatios by cameraViewModel.availablePhotoAspectRatios.collectAsState()
                                        CropEditPanel(
                                            selectedOption = editCropAspectOption,
                                            onOptionSelected = { viewModel.setCropAspectOption(it) },
                                            availableRatios = availablePhotoAspectRatios,
                                            imageWidth = previewBitmap?.width ?: 1,
                                            imageHeight = previewBitmap?.height ?: 1
                                        )
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    if (showEffectsSheet) {
        val currentRecipe = previewRecipeParamsOverride ?: editPhotoRecipeParams ?: editLutRecipeParams
        val currentEffectParams = currentRecipe.toEffectParams()
        EffectsBottomSheet(
            currentParams = currentEffectParams,
            onParamsChange = { newParams ->
                viewModel.setPhotoEffectParams(newParams, currentRecipe)
            },
            onDismiss = { showEffectsSheet = false },
            containerColor = Color(0x151A1A1A)
        )
    }

    if (showLutEditDialog && editLutId != null) {
        LutEditBottomSheet(
            lutId = editLutId!!,
            initialParams = previewRecipeParamsOverride ?: editPhotoRecipeParams ?: editLutRecipeParams,
            onParamsPreviewChange = {
                previewRecipeParamsOverride = it
            },
            onDismiss = {
                previewRecipeParamsOverride = null
                showLutEditDialog = false
            },
            photoRecipeParams = editPhotoRecipeParams,
            onPhotoParamsChange = { viewModel.setPhotoRecipeParams(it) },
            defaultScope = RecipeScope.PHOTO_LOCAL,
            containerColor = Color(0x151A1A1A)
        )
    }

    if (isBaselineLutEditSheetVisible) {
        LutEditBottomSheet(
            lutId = baselineLutEditId!!,
            editorTarget = LutEditorTarget.BASELINE_RAW,
            onDismiss = {
                showBaselineLutEditSheet = false
                showRawBaselineLutSelectorSheet = true
            },
            containerColor = Color(0x151A1A1A)
        )
    }

    if (showRawBaselineLutSelectorSheet) {
        RawBaselineColorCorrectionBottomSheet(
            selectedLutId = editRawBaselineLutId,
            availableLuts = availableLuts,
            thumbnail = thumbnailBitmap,
            containerColor = Color(0x151A1A1A),
            onSelectLut = { lutId ->
                viewModel.saveRawBaselineLutSelection(currentEditSourcePhoto, lutId)
            },
            onEditRecipe = { lutId ->
                baselineLutEditId = lutId
                showRawBaselineLutSelectorSheet = false
                showBaselineLutEditSheet = true
            },
            onDismiss = {
                showRawBaselineLutSelectorSheet = false
            }
        )
    }

    if (showPaymentDialog) {
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
}

private fun Context.findActivity(): Activity? {
    var context = this
    while (context is ContextWrapper) {
        if (context is Activity) return context
        context = context.baseContext
    }
    return null
}

/**
 * 标签页项
 */
@Composable
private fun TabItem(
    title: String,
    isSelected: Boolean,
    onClick: () -> Unit
) {
    Column(
        horizontalAlignment = Alignment.CenterHorizontally,
        modifier = Modifier.clickable(
            interactionSource = remember { MutableInteractionSource() },
            indication = null,
            onClick = onClick
        )
    ) {
        Text(
            text = title,
            color = if (isSelected) Color.White else Color.White.copy(alpha = 0.5f),
            fontSize = 14.sp,
            fontWeight = if (isSelected) FontWeight.Bold else FontWeight.Normal
        )
        Spacer(modifier = Modifier.height(4.dp))
        Box(
            modifier = Modifier
                .size(width = 24.dp, height = 2.dp)
                .background(if (isSelected) AccentOrange else Color.Transparent)
        )
    }
}

/**
 * LUT 选项
 */
@Composable
private fun FrameOption(
    name: String,
    previewBitmap: Bitmap? = null,
    isSelected: Boolean,
    isVip: Boolean = false,
    isCustom: Boolean = false,  // 添加自定义标识参数
    isEditable: Boolean = false,
    onClick: () -> Unit
) {
    Column(
        horizontalAlignment = Alignment.CenterHorizontally,
        modifier = Modifier
            .width(64.dp)
            .clickable { onClick() }
    ) {
        Box(
            modifier = Modifier
                .size(56.dp)
                .clip(RoundedCornerShape(8.dp))
                .background(
                    if (isSelected) AccentOrange.copy(alpha = 0.3f)
                    else Color.White.copy(alpha = 0.1f)
                )
                .then(
                    if (isSelected) Modifier.border(2.dp, AccentOrange, RoundedCornerShape(8.dp))
                    else Modifier
                ),
            contentAlignment = Alignment.Center
        ) {
            if (previewBitmap != null) {
                Image(
                    bitmap = previewBitmap.asImageBitmap(),
                    contentDescription = null,
                    contentScale = ContentScale.Crop,
                    modifier = Modifier.fillMaxSize()
                )
            } else {
                Text(
                    text = name.take(2).uppercase(),
                    color = if (isSelected) AccentOrange else Color.White.copy(alpha = 0.7f),
                    fontSize = 16.sp
                )
            }

            if (isSelected && isEditable) {
                Box(
                    modifier = Modifier
                        .fillMaxSize()
                        .background(Color.Black.copy(alpha = 0.3f)),
                    contentAlignment = Alignment.Center
                ) {
                    Box(
                        modifier = Modifier
                            .size(24.dp)
                            .background(Color.White.copy(alpha = 0.2f), CircleShape)
                            .border(1.dp, Color.White.copy(alpha = 0.5f), CircleShape),
                        contentAlignment = Alignment.Center
                    ) {
                        Icon(
                            imageVector = AppIcons.Tune,
                            contentDescription = stringResource(R.string.edit),
                            tint = Color.White,
                            modifier = Modifier.size(14.dp)
                        )
                    }
                }
            }

            if (isVip) {
                Box(
                    modifier = Modifier
                        .align(Alignment.TopEnd)
                        .background(
                            color = Color(0xFFFFD700),
                            shape = RoundedCornerShape(bottomStart = 4.dp)
                        )
                        .padding(horizontal = 4.dp, vertical = 2.dp)
                ) {
                    Text(
                        text = stringResource(R.string.billing_vip_tag),
                        color = Color.Black,
                        fontSize = 8.sp,
                        fontWeight = FontWeight.Bold,
                        lineHeight = 8.sp
                    )
                }
            }

            // 自定义标识
            if (isCustom) {
                Box(
                    modifier = Modifier
                        .align(Alignment.TopStart)
                        .background(
                            color = Color(0xFF4CAF50),  // 绿色表示自定义
                            shape = RoundedCornerShape(bottomEnd = 4.dp)
                        )
                        .padding(horizontal = 4.dp, vertical = 2.dp)
                ) {
                    Text(
                        text = stringResource(R.string.custom_tag),
                        color = Color.White,
                        fontSize = 8.sp,
                        fontWeight = FontWeight.Bold,
                        lineHeight = 8.sp
                    )
                }
            }
        }

        Spacer(modifier = Modifier.height(4.dp))

        Text(
            text = name,
            color = if (isSelected) AccentOrange else Color.White.copy(alpha = 0.7f),
            fontSize = 11.sp,
            maxLines = 1,
            overflow = TextOverflow.Ellipsis,
            textAlign = TextAlign.Center
        )
    }
}


/**
 * 用于编辑界面的可缩放图片组件
 * 使用 Telephoto 库支持大尺寸图片查看和缩放
 */
@Composable
private fun ZoomableEditImage(
    previewBitmap: Bitmap?,
    isLutEditing: Boolean,
    contentDescription: String,
    onZoomChange: (isZoomed: Boolean) -> Unit = {},
    modifier: Modifier = Modifier
) {
    val context = LocalContext.current
    val zoomableState = rememberZoomableImageState(
        zoomableState = rememberZoomableState(zoomSpec = ZoomSpec(maxZoomFactor = 10f))
    )

    LaunchedEffect(zoomableState.zoomableState.zoomFraction) {
        onZoomChange((zoomableState.zoomableState.zoomFraction ?: 0f) > 0.01f)
    }

    LaunchedEffect(isLutEditing) {
        if (isLutEditing) {
            zoomableState.zoomableState.resetZoom()
        }
    }

    val model = ImageRequest.Builder(context)
        .data(previewBitmap)
        .crossfade(true)
        .build()

    Box(
        modifier = modifier.fillMaxSize(),
        contentAlignment = Alignment.Center
    ) {
        ZoomableAsyncImage(
            model = model,
            contentDescription = contentDescription,
            contentScale = ContentScale.Fit,
            state = zoomableState,
            onDoubleClick = DoubleClickToZoomListener.cycle(maxZoomFactor = 3f),
            modifier = Modifier.fillMaxSize()
        )
    }
}


@Composable
private fun <T> SegmentedControl(
    title: String,
    items: List<T>,
    selectedItem: T,
    onItemSelected: (T) -> Unit,
    itemLabel: @Composable (T) -> String
) {
    Column(modifier = Modifier.fillMaxWidth()) {
        Text(
            text = title,
            color = Color.White.copy(alpha = 0.6f),
            fontSize = 12.sp,
            modifier = Modifier.padding(horizontal = 4.dp)
        )
        Spacer(modifier = Modifier.height(8.dp))
        LazyRow(
            horizontalArrangement = Arrangement.spacedBy(8.dp),
            contentPadding = PaddingValues(horizontal = 4.dp)
        ) {
            items(items) { item ->
                val isSelected = item == selectedItem
                Box(
                    modifier = Modifier
                        .clip(RoundedCornerShape(16.dp))
                        .background(if (isSelected) Color.White.copy(alpha = 0.2f) else Color.Transparent)
                        .border(
                            1.dp,
                            if (isSelected) Color.White else Color.White.copy(alpha = 0.1f),
                            RoundedCornerShape(16.dp)
                        )
                        .clickable { onItemSelected(item) }
                        .padding(horizontal = 12.dp, vertical = 6.dp)
                ) {
                    Text(
                        text = itemLabel(item),
                        color = if (isSelected) Color.White else Color.White.copy(alpha = 0.6f),
                        fontSize = 12.sp
                    )
                }
            }
        }
    }
}

@androidx.annotation.OptIn(androidx.media3.common.util.UnstableApi::class)
@Composable
private fun VideoEditPlayer(
    photo: MediaData,
    lutConfig: LutConfig?,
    recipeParams: ColorRecipeParams?,
    modifier: Modifier = Modifier
) {
    val context = LocalContext.current
    val mediaUri = remember(photo.id, photo.uri, photo.sourceUri) {
        photo.sourceUri ?: photo.uri
    }
    
    PLog.d("VideoEditPlayer", "VideoEditPlayer composable recomposing/initializing. photoId: ${photo.id}, mediaUri: $mediaUri")

    var isPlayerActive by remember { mutableStateOf(false) }
    LaunchedEffect(photo.id) {
        delay(150) // Wait for the transitions to complete and EGL context release
        isPlayerActive = true
    }

    val videoLutEffect = remember {
        PLog.d("VideoEditPlayer", "Instantiating new VideoLutEffect.")
        VideoLutEffect(lutConfig, recipeParams)
    }
    
    LaunchedEffect(lutConfig, recipeParams) {
        PLog.d("VideoEditPlayer", "Updating VideoLutEffect with lutConfig: ${lutConfig?.title}, recipeParams: ${recipeParams != null}")
        videoLutEffect.update(lutConfig, recipeParams)
    }

    val exoPlayer = remember(photo.id, mediaUri, isPlayerActive) {
        if (!isPlayerActive) return@remember null
        PLog.d("VideoEditPlayer", "Re-creating loopable ExoPlayer instance for video preview.")
        ExoPlayer.Builder(context).build().apply {
            setMediaItem(MediaItem.fromUri(mediaUri))
            repeatMode = Player.REPEAT_MODE_ONE
            setVideoEffects(listOf(videoLutEffect))
            prepare()
            playWhenReady = true
            
            addListener(object : Player.Listener {
                override fun onPlaybackStateChanged(state: Int) {
                    PLog.d("VideoEditPlayer", "ExoPlayer state changed: $state")
                }
                override fun onPlayerError(error: androidx.media3.common.PlaybackException) {
                    PLog.e("VideoEditPlayer", "ExoPlayer encountered playback error!", error)
                }
            })
        }
    }

    DisposableEffect(exoPlayer) {
        onDispose {
            if (exoPlayer != null) {
                PLog.d("VideoEditPlayer", "Disposing loopable ExoPlayer.")
                exoPlayer.release()
            }
        }
    }

    if (exoPlayer != null) {
        AndroidView(
            factory = {
                PLog.d("VideoEditPlayer", "Creating PlayerView factory.")
                LayoutInflater.from(context).inflate(R.layout.view_motion_photo_player, null) as PlayerView
            },
            update = {
                PLog.d("VideoEditPlayer", "Updating PlayerView with ExoPlayer.")
                it.player = exoPlayer
                it.resizeMode = AspectRatioFrameLayout.RESIZE_MODE_FIT
                it.useController = false
                it.visibility = android.view.View.VISIBLE
            },
            modifier = modifier.autoRotate(matchParentSize = true)
        )
    } else {
        Spacer(modifier = modifier.fillMaxSize())
    }
}
