package com.hinnka.mycamera.ui.gallery

import android.app.Activity
import android.content.Context
import android.content.ContextWrapper
import android.graphics.Bitmap
import android.graphics.ColorSpace
import android.net.Uri
import android.os.Build
import android.provider.OpenableColumns
import android.view.LayoutInflater
import android.widget.Toast
import androidx.activity.compose.BackHandler
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.IntentSenderRequest
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.animation.core.*
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.foundation.pager.HorizontalPager
import androidx.compose.foundation.pager.rememberPagerState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.alpha
import androidx.compose.ui.draw.shadow
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.input.pointer.PointerEvent
import androidx.compose.ui.input.pointer.PointerEventPass
import androidx.compose.ui.input.pointer.PointerEventType
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.ui.text.font.FontWeight
import com.hinnka.mycamera.R
import androidx.compose.ui.res.painterResource
import com.hinnka.mycamera.gallery.MediaData
import com.hinnka.mycamera.ui.theme.AccentOrange
import com.hinnka.mycamera.viewmodel.GalleryViewModel
import kotlinx.coroutines.delay
import androidx.media3.exoplayer.ExoPlayer
import androidx.media3.common.MediaItem
import androidx.media3.common.PlaybackException
import androidx.media3.common.Player
import androidx.media3.ui.PlayerView
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.ui.viewinterop.AndroidView
import androidx.core.view.isVisible
import androidx.media3.ui.AspectRatioFrameLayout
import coil.request.ImageRequest
import coil.compose.AsyncImage
import com.hinnka.mycamera.hdr.HdrGainmapStrength
import com.hinnka.mycamera.lut.creator.AiPhotoCriterion
import com.hinnka.mycamera.lut.creator.AiPhotoEvaluation
import com.hinnka.mycamera.lut.isVideoTransformerExportSupported
import com.hinnka.mycamera.lut.VideoLutEffect
import com.hinnka.mycamera.ui.camera.autoRotate
import com.hinnka.mycamera.ui.components.CustomSlider
import com.hinnka.mycamera.ui.components.PaymentDialog
import com.hinnka.mycamera.ui.components.PhysicalButton
import com.hinnka.mycamera.utils.DeviceUtil
import com.hinnka.mycamera.utils.PLog
import com.hinnka.mycamera.viewmodel.GalleryTab
import kotlinx.coroutines.Dispatchers
import me.saket.telephoto.zoomable.ZoomSpec
import me.saket.telephoto.zoomable.coil.ZoomableAsyncImage
import me.saket.telephoto.zoomable.rememberZoomableImageState
import me.saket.telephoto.zoomable.rememberZoomableState
import kotlinx.coroutines.withContext
import me.saket.telephoto.zoomable.DoubleClickToZoomListener
import java.io.File
import kotlin.math.min
import kotlin.math.roundToInt
import com.hinnka.mycamera.ui.icons.AppIcons

private val GalleryToolbarSurface = Color(0xFF0E0E0E)
private val GalleryToolbarButton = Color(0xFF242424)
private val GalleryToolbarContent = Color(0xFFF2F2F2)
private val GallerySheetSurface = Color(0xFF171717)

/**
 * 照片详情界面
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun GalleryDetailScreen(
    viewModel: GalleryViewModel,
    initialIndex: Int = 0,
    selectedTab: GalleryTab? = null,
    photoId: String? = null,
    isExpanded: Boolean = false,
    onBack: () -> Unit = {},
    onGoToGallery: (() -> Unit)? = null,
    onEdit: () -> Unit,
    onViewBurst: ((String) -> Unit)? = null,
    modifier: Modifier = Modifier
) {
    val photos by viewModel.currentPhotos.collectAsState()
    val context = LocalContext.current

    var showDeleteDialog by remember { mutableStateOf(false) }
    var showInfoDialog by remember { mutableStateOf(false) }
    var isZoomed by remember { mutableStateOf(false) }
    var showExportDialog by remember { mutableStateOf(false) }
    var isSaving by remember { mutableStateOf(false) }
    var isExportingDng by remember { mutableStateOf(false) }
    var isCopyingSettings by remember { mutableStateOf(false) }
    var isPastingSettings by remember { mutableStateOf(false) }
    val isVideoExporting = viewModel.isVideoExporting
    val videoExportProgress = viewModel.videoExportProgress
    var showVideoExportConfirmDialog by remember { mutableStateOf(false) }
    val isSharing by viewModel.isSharing.collectAsState()
    val hasCopiedEditSettings by viewModel.hasCopiedEditSettings.collectAsState()
    val isPurchased by viewModel.isPurchased.collectAsState()
    var showAiScoreSheet by remember { mutableStateOf(false) }
    var showMoreSheet by remember { mutableStateOf(false) }
    var showHdrStrengthPanel by remember { mutableStateOf(false) }

    val currentColorSpace = remember { mutableStateOf<ColorSpace?>(null) }

    // Activity Result Launcher for delete confirmation
    val deletePhotoLauncher = rememberLauncherForActivityResult(
        ActivityResultContracts.StartIntentSenderForResult()
    ) { result ->
        if (result.resultCode == Activity.RESULT_OK || viewModel.selectedTab == GalleryTab.PHOTON) {
            // User confirmed deletion or we are in PHOTON tab (delete internal photo anyway)
            viewModel.deletePhotoAfterConfirmation { success ->
                if (success && viewModel.currentPhotos.value.isEmpty()) {
                    onBack()
                }
            }
        } else {
            // User cancelled deletion in SYSTEM tab
            viewModel.clearDeleteRequest()
        }
    }

    val systemDeletePhotoLauncher = rememberLauncherForActivityResult(
        ActivityResultContracts.StartIntentSenderForResult()
    ) { result ->
        if (result.resultCode == Activity.RESULT_OK) {
            viewModel.deleteSystemPhotoAfterConfirmation { success ->
                if (success && viewModel.currentPhotos.value.isEmpty()) {
                    onBack()
                }
            }
        } else {
            viewModel.clearDeleteRequest()
        }
    }

    LaunchedEffect(selectedTab) {
        if (selectedTab != null) {
            viewModel.selectTab(selectedTab)
        }
    }

    // Monitor deletePendingIntent and launch system delete dialog
    LaunchedEffect(viewModel.deletePendingIntent) {
        viewModel.deletePendingIntent?.let { pendingIntent ->
            try {
                deletePhotoLauncher.launch(
                    IntentSenderRequest.Builder(pendingIntent.intentSender).build()
                )
            } catch (e: Exception) {
                // Failed to launch, clear the request
                viewModel.clearDeleteRequest()
            }
        }
    }

    LaunchedEffect(viewModel.systemDeletePendingIntent) {
        viewModel.systemDeletePendingIntent?.let { pendingIntent ->
            try {
                systemDeletePhotoLauncher.launch(
                    IntentSenderRequest.Builder(pendingIntent.intentSender).build()
                )
            } catch (e: Exception) {
                viewModel.clearDeleteRequest()
            }
        }
    }

    val pagerState = rememberPagerState(
        initialPage = remember(initialIndex, photoId) {
            // 初始页只在首次组合时计算，后续通过 LaunchedEffect 跳转
            if (photoId != null) {
                val index = photos.indexOfFirst { it.id == photoId }
                if (index != -1) index else initialIndex
            } else {
                initialIndex
            }
        },
        pageCount = { photos.size }
    )

    // 记录是否已经执行过初始的 photoId 跳转
    var initialJumpDone by rememberSaveable(photoId) { mutableStateOf(false) }
    // 记录上次的照片数量，用于判断是否有新照片增加
    var lastPhotosCount by rememberSaveable { mutableIntStateOf(photos.size) }

    // 同步当前索引
    LaunchedEffect(pagerState.currentPage) {
        viewModel.setCurrentPhoto(pagerState.currentPage)
        currentColorSpace.value = null
    }

    // 在快到底部时加载更多系统照片
    LaunchedEffect(pagerState.currentPage, photos.size) {
        if (pagerState.currentPage >= photos.size - 5) {
            viewModel.loadCurrentTabMore()
        }
    }

    LaunchedEffect(viewModel.selectedTab, photos, viewModel.currentPhotoIndex) {
        val targetIndex = viewModel.currentPhotoIndex
        if (targetIndex in photos.indices && pagerState.currentPage != targetIndex) {
            pagerState.scrollToPage(targetIndex)
        }
    }

    LaunchedEffect(photos.size, isExpanded) {
        // 仅在分屏模式且照片数量增加（通常是新拍摄）时才自动跳到第一张
        if (isExpanded == true && photos.size > lastPhotosCount) {
            pagerState.scrollToPage(0)
        }
        lastPhotosCount = photos.size
    }

    // 当 photoId 提供时，确保在照片列表加载后自动跳转到该照片（仅执行一次）
    LaunchedEffect(photos, photoId) {
        if (photoId != null && initialJumpDone == false) {
            val index = photos.indexOfFirst { it.id == photoId }
            if (index != -1) {
                // 即使 index == currentPage 也执行跳转，以应对 HorizontalPager 内部键位同步导致的索引偏移
                pagerState.scrollToPage(index)
                initialJumpDone = true
            }
        }
    }

    val currentPhoto = photos.getOrNull(pagerState.currentPage)
    val preparingEditPhotoId = viewModel.preparingEditPhotoId
    var hdrStrengthSliderValue by remember(currentPhoto?.id) {
        mutableFloatStateOf(currentPhoto?.let { viewModel.getManualHdrStrength(it) } ?: HdrGainmapStrength.DEFAULT)
    }
    LaunchedEffect(currentPhoto?.id, currentPhoto?.metadata?.hdrEffectStrength) {
        hdrStrengthSliderValue = currentPhoto?.let { viewModel.getManualHdrStrength(it) } ?: HdrGainmapStrength.DEFAULT
    }
    LaunchedEffect(currentPhoto?.id) {
        showHdrStrengthPanel = false
    }
    val isCurrentRawPhoto = currentPhoto?.let {
        it.isImage && (viewModel.selectedTab == GalleryTab.PHOTON || it.relatedPhoto != null) && viewModel.isRaw(it.id)
    } == true
    var displayPhotoSize by remember(currentPhoto?.id) { mutableLongStateOf(currentPhoto?.size ?: 0L) }

    LaunchedEffect(currentPhoto?.id, currentPhoto?.size, currentPhoto?.uri, currentPhoto?.sourceUri) {
        val photo = currentPhoto ?: return@LaunchedEffect
        displayPhotoSize = photo.size
        if (displayPhotoSize > 0L) return@LaunchedEffect

        var resolvedSize = withContext(Dispatchers.IO) {
            resolveCurrentMediaSize(context, photo)
        }
        if (resolvedSize <= 0L && viewModel.awaitPreparedPhotoReady(photo)) {
            resolvedSize = withContext(Dispatchers.IO) {
                maxOf(
                    resolveCurrentMediaSize(context, photo),
                    viewModel.getInternalPhotoSize(photo.id)
                )
            }
        }
        if (resolvedSize > 0L) {
            displayPhotoSize = resolvedSize
        }
    }

    BackHandler {
        onBack()
    }

    Scaffold(
        topBar = {
            TopAppBar(
                modifier = Modifier,
                title = {
                    if (onGoToGallery != null) {
                        Surface(
                            onClick = onGoToGallery,
                            shape = CircleShape,
                            color = Color.White.copy(alpha = 0.15f),
                            contentColor = Color.White
                        ) {
                            Row(
                                verticalAlignment = Alignment.CenterVertically,
                                modifier = Modifier.padding(horizontal = 12.dp, vertical = 6.dp)
                            ) {
                                Icon(
                                    imageVector = AppIcons.GridView,
                                    contentDescription = "Gallery",
                                    modifier = Modifier.size(18.dp)
                                )
                                Spacer(modifier = Modifier.width(6.dp))
                                Text(
                                    text = "${pagerState.currentPage + 1} / ${photos.size}",
                                    fontSize = 16.sp,
                                    fontWeight = FontWeight.Medium
                                )
                            }
                        }
                    } else {
                        Text(
                            text = "${pagerState.currentPage + 1} / ${photos.size}",
                            maxLines = 1,
                            color = Color.White,
                            fontSize = 18.sp
                        )
                    }
                },
                navigationIcon = {
                    if (!isExpanded) {
                        IconButton(onClick = onBack, modifier = Modifier.autoRotate()) {
                            Icon(
                                imageVector = Icons.AutoMirrored.Filled.ArrowBack,
                                contentDescription = stringResource(R.string.back),
                                tint = Color.White
                            )
                        }
                    }
                },
                actions = {
                    // LIVE 标记
                    if (currentPhoto?.isMotionPhoto == true) {
                        Box(
                            modifier = Modifier.padding(8.dp)
                        ) {
                            Row(verticalAlignment = Alignment.CenterVertically) {
                                Icon(
                                    painterResource(R.drawable.ic_live_photo),
                                    contentDescription = stringResource(R.string.settings_use_live_photo),
                                    tint = Color.White,
                                    modifier = Modifier.size(20.dp)
                                )
                            }
                        }
                    }
                    if (currentPhoto != null && currentPhoto.isImage && viewModel.isRaw(currentPhoto.id)) {
                        val isRefreshing = viewModel.refreshingPhotos.contains(currentPhoto.id)
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
                                viewModel.refreshRawPreview(currentPhoto) { success ->
                                    if (success) {
                                        Toast.makeText(context, R.string.refresh_success, Toast.LENGTH_SHORT).show()
                                    } else {
                                        Toast.makeText(context, R.string.refresh_failed, Toast.LENGTH_SHORT).show()
                                    }
                                }
                            },
                            enabled = !isRefreshing,
                            modifier = Modifier.autoRotate()
                        ) {
                            Icon(
                                imageVector = Icons.Default.Refresh,
                                contentDescription = stringResource(R.string.refresh),
                                tint = if (isRefreshing) Color.White.copy(alpha = 0.5f) else Color.White,
                                modifier = Modifier.graphicsLayer {
                                    if (isRefreshing) {
                                        rotationZ = rotation
                                    }
                                }
                            )
                        }
                    }
                    if (currentPhoto != null && currentPhoto.isImage && currentPhoto.isBurstPhoto) {
                        IconButton(onClick = { onViewBurst?.invoke(currentPhoto.id) }, modifier = Modifier.autoRotate()) {
                            Icon(
                                imageVector = AppIcons.BurstMode,
                                contentDescription = "查看连拍照片", // 连拍照片
                                tint = Color.White
                            )
                        }
                    }
                    if (
                        currentPhoto != null &&
                        currentPhoto.isImage &&
                        Build.VERSION.SDK_INT >= Build.VERSION_CODES.UPSIDE_DOWN_CAKE &&
                        !DeviceUtil.isHarmonyOS &&
                        viewModel.canToggleManualHdrEnhance(currentPhoto)
                    ) {
                        val hdrEnabled = viewModel.isManualHdrEnhanceEnabled(currentPhoto)
                        TextButton(
                            onClick = {
                                showHdrStrengthPanel = !showHdrStrengthPanel
                            },
                        ) {
                            Text(
                                text = stringResource(R.string.hdr_label),
                                color = if (hdrEnabled) AccentOrange else Color.White.copy(alpha = 0.72f),
                                fontWeight = FontWeight.SemiBold
                            )
                        }
                    }
                    IconButton(onClick = { showInfoDialog = true }, modifier = Modifier.autoRotate()) {
                        Icon(
                            imageVector = Icons.Default.Info,
                            contentDescription = stringResource(if (currentPhoto?.isVideo == true) R.string.video_info else R.string.photo_info),
                            tint = Color.White
                        )
                    }
                },
                colors = TopAppBarDefaults.topAppBarColors(
                    containerColor = Color.Black.copy(alpha = 0.8f)
                )
            )
        },
        bottomBar = {
            GalleryBottomActionBar(
                leadingAction = {
                    GalleryCircleActionButton(
                        icon = Icons.Default.Share,
                        contentDescription = stringResource(R.string.share),
                        isLoading = isSharing,
                        enabled = currentPhoto != null && !isSharing,
                        onClick = {
                            currentPhoto?.let(viewModel::sharePhoto)
                        }
                    )
                },
                groupedActions = {
                    if (currentPhoto?.isImage == true) {
                        GalleryGroupedActionButton(
                            icon = AppIcons.AutoAwesome,
                            contentDescription = stringResource(R.string.gallery_ai_analysis),
                            onClick = { showAiScoreSheet = true }
                        )
                    }

                    if (currentPhoto?.isImage == true || currentPhoto?.isVideo == true) {
                        GalleryGroupedActionButton(
                            icon = Icons.Default.Edit,
                            contentDescription = stringResource(R.string.edit),
                            isLoading = preparingEditPhotoId == currentPhoto.id,
                            onClick = {
                                viewModel.prepareCurrentPhotoForEdit(
                                    index = pagerState.currentPage,
                                    onReady = onEdit,
                                    onFailure = {
                                        Toast.makeText(
                                            context,
                                            R.string.gallery_prepare_edit_failed,
                                            Toast.LENGTH_SHORT
                                        ).show()
                                    }
                                )
                            }
                        )
                    }

                    GalleryGroupedActionButton(
                        icon = Icons.Default.Delete,
                        contentDescription = stringResource(R.string.delete),
                        enabled = currentPhoto != null,
                        onClick = { showDeleteDialog = true }
                    )
                },
                trailingAction = {
                    GalleryCircleActionButton(
                        icon = AppIcons.MoreHoriz,
                        contentDescription = stringResource(R.string.more_options),
                        enabled = currentPhoto != null,
                        onClick = { showMoreSheet = true }
                    )
                }
            )
        },
        containerColor = Color.Black,
        modifier = modifier
    ) { paddingValues ->
        Box(
            modifier = Modifier
                .fillMaxSize()
                .padding(paddingValues)
        ) {
            if (photos.isEmpty()) {
                Box(modifier = Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
                    Text(
                        text = stringResource(R.string.no_photos),
                        color = Color.White.copy(alpha = 0.6f),
                        fontSize = 16.sp
                    )
                }
            } else {
                HorizontalPager(
                    state = pagerState,
                    key = { page -> if (page < photos.size) photos[page].id else page },
                    modifier = Modifier.fillMaxSize(),
                    userScrollEnabled = !isZoomed,
                    beyondViewportPageCount = 1
                ) { page ->
                    val photo = photos.getOrNull(page)
                    if (photo != null) {
                        key(photo.id) {

                            var showOrigin by remember { mutableStateOf(false) }
                            var isPlaying by remember { mutableStateOf(false) }

                            Box(
                                modifier = Modifier.fillMaxSize().pointerInput(photo.id, photo.isImage, photo.isMotionPhoto) {
                                    if (!photo.isImage) return@pointerInput
                                    awaitPointerEventScope {
                                        while (true) {
                                            val downEvent = awaitPointerEvent(PointerEventPass.Initial)
                                            if (downEvent.type == PointerEventType.Press && downEvent.changes.size == 1) {
                                                val touchSlop = viewConfiguration.touchSlop
                                                val initialPosition = downEvent.changes[0].position
                                                val longPressTimeout = viewConfiguration.longPressTimeoutMillis
                                                var upEvent: PointerEvent? = null
                                                var isMultiTouch = false
                                                var isMoved = false

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

                                                if (!isMultiTouch && !isMoved && upEvent == null) {
                                                    if (photo.isMotionPhoto) {
                                                        isPlaying = true
                                                    } else {
                                                        showOrigin = true
                                                    }
                                                    while (true) {
                                                        val event = awaitPointerEvent(PointerEventPass.Initial)
                                                        if (event.type == PointerEventType.Release || event.changes.size > 1) {
                                                            break
                                                        }
                                                    }
                                                    showOrigin = false
                                                    isPlaying = false
                                                }
                                            }
                                        }
                                    }
                                }
                            ) {
                                if (photo.isVideo) {
                                    VideoDetailPlayer(
                                        photo = photo,
                                        isActive = page == pagerState.currentPage && !viewModel.isEditing,
                                        viewModel = viewModel,
                                        modifier = Modifier.fillMaxSize()
                                    )
                                } else {
                                    val forceSystemOrigin = viewModel.selectedTab == GalleryTab.SYSTEM &&
                                        photo.relatedPhoto == null
                                    ZoomableImage(
                                        photo = photo,
                                        colorSpace = currentColorSpace,
                                        showOrigin = showOrigin || forceSystemOrigin,
                                        isActive = page == pagerState.currentPage,
                                        isScrollInProgress = pagerState.isScrollInProgress,
                                        viewModel = viewModel,
                                        showRawBadge = photo.isImage && viewModel.isRawMedia(photo),
                                        onZoomChange = { zoomed ->
                                            if (page == pagerState.currentPage) {
                                                isZoomed = zoomed
                                            }
                                        },
                                        modifier = Modifier.fillMaxSize()
                                    )
                                    MotionPhotoPlayer(
                                        photo = photo,
                                        isPlaying = isPlaying,
                                        viewModel = viewModel,
                                        modifier = Modifier.fillMaxSize()
                                    )
                                }
                            }
                        }
                    }
                }
            }
            if (
                showHdrStrengthPanel &&
                currentPhoto != null &&
                currentPhoto.isImage &&
                Build.VERSION.SDK_INT >= Build.VERSION_CODES.UPSIDE_DOWN_CAKE &&
                !DeviceUtil.isHarmonyOS &&
                viewModel.canToggleManualHdrEnhance(currentPhoto)
            ) {
                HdrStrengthPanel(
                    enabled = viewModel.isManualHdrEnhanceEnabled(currentPhoto),
                    strength = hdrStrengthSliderValue,
                    onEnabledChange = {
                        viewModel.toggleManualHdrEnhance(currentPhoto) { success ->
                            if (!success) {
                                Toast.makeText(context, R.string.hdr_toggle_failed, Toast.LENGTH_SHORT).show()
                            }
                        }
                    },
                    onStrengthChange = { hdrStrengthSliderValue = it },
                    onStrengthChangeFinished = {
                        viewModel.setManualHdrStrength(currentPhoto, hdrStrengthSliderValue) { success ->
                            if (!success) {
                                Toast.makeText(context, R.string.hdr_strength_update_failed, Toast.LENGTH_SHORT).show()
                            }
                        }
                    },
                    modifier = Modifier
                        .align(Alignment.TopEnd)
                        .padding(top = 12.dp, end = 12.dp)
                )
            }
        }
    }

    val deleteExportedPref by viewModel.deleteExported.collectAsState()

    // 删除确认对话框
    if (showDeleteDialog) {
        val exportedPhotosCount = remember(currentPhoto, currentPhoto?.metadata, currentPhoto?.metadata?.exportedUris) {
            val baseCount = currentPhoto?.metadata?.exportedUris?.size ?: 0
            val sourceUri = currentPhoto?.metadata?.sourceUri
            val isVideoAndCaptured = currentPhoto?.isVideo == true &&
                    currentPhoto.metadata?.isImported != true &&
                    !sourceUri.isNullOrBlank()
            baseCount + (if (isVideoAndCaptured) 1 else 0)
        }
        var deleteExportedState by remember(showDeleteDialog) { mutableStateOf(deleteExportedPref) }

        AlertDialog(
            onDismissRequest = { showDeleteDialog = false },
            title = { Text(stringResource(R.string.delete)) },
            text = {
                Column {
                    Text(stringResource(R.string.delete_confirm))
                    if (viewModel.selectedTab == GalleryTab.PHOTON) {
                        if (exportedPhotosCount > 0) {
                            Spacer(modifier = Modifier.height(12.dp))
                            Row(
                                verticalAlignment = Alignment.CenterVertically,
                                modifier = Modifier
                                    .fillMaxWidth()
                                    .clickable { deleteExportedState = !deleteExportedState }
                                    .padding(vertical = 4.dp)
                            ) {
                                Checkbox(
                                    checked = deleteExportedState,
                                    onCheckedChange = { deleteExportedState = it },
                                    colors = CheckboxDefaults.colors(
                                        checkedColor = AccentOrange,
                                        uncheckedColor = Color.White.copy(alpha = 0.6f)
                                    )
                                )
                                Spacer(modifier = Modifier.width(8.dp))
                                Text(
                                    text = if (currentPhoto?.isVideo == true) {
                                        stringResource(R.string.delete_exported_videos_count, exportedPhotosCount)
                                    } else {
                                        stringResource(R.string.delete_exported_photos_count, exportedPhotosCount)
                                    },
                                    color = Color.White,
                                    fontSize = 14.sp
                                )
                            }
                        }
                    }
                }
            },
            confirmButton = {
                TextButton(
                    onClick = {
                        currentPhoto?.let { photo ->
                            val finalDeleteExported = if (viewModel.selectedTab == GalleryTab.PHOTON && exportedPhotosCount > 0) deleteExportedState else true
                            if (viewModel.selectedTab == GalleryTab.PHOTON && exportedPhotosCount > 0) {
                                viewModel.setDeleteExported(deleteExportedState)
                            }
                            viewModel.requestDeletePhoto(photo, finalDeleteExported)
                        }
                        showDeleteDialog = false
                    }
                ) {
                    Text(stringResource(R.string.delete), color = Color.Red)
                }
            },
            dismissButton = {
                TextButton(onClick = { showDeleteDialog = false }) {
                    Text(stringResource(R.string.cancel))
                }
            },
            containerColor = Color(0xFF2D2D2D),
            titleContentColor = Color.White,
            textContentColor = Color.White
        )
    }

    // 导出确认对话框
    if (showExportDialog) {
        AlertDialog(
            onDismissRequest = { showExportDialog = false },
            title = { Text(stringResource(R.string.export)) },
            text = {
                Text(stringResource(R.string.export_confirm))
            },
            confirmButton = {
                TextButton(
                    onClick = {
                        showExportDialog = false
                        currentPhoto?.let {
                            isSaving = true
                            viewModel.exportPhoto(it) { success ->
                                showMoreSheet = false
                                isSaving = false
                                if (success) {
                                    Toast.makeText(context, R.string.export_success, Toast.LENGTH_SHORT).show()
                                } else {
                                    Toast.makeText(context, R.string.export_failed, Toast.LENGTH_SHORT).show()
                                }
                            }
                        }
                    }
                ) {
                    Text(stringResource(R.string.export), color = AccentOrange)
                }
            },
            dismissButton = {
                TextButton(onClick = { showExportDialog = false }) {
                    Text(stringResource(R.string.cancel))
                }
            },
            containerColor = Color(0xFF2D2D2D),
            titleContentColor = Color.White,
            textContentColor = Color.White
        )
    }

    // 视频导出确认对话框
    if (showVideoExportConfirmDialog) {
        AlertDialog(
            onDismissRequest = { showVideoExportConfirmDialog = false },
            title = { Text(stringResource(R.string.export_video)) },
            text = { Text(stringResource(R.string.export_video_confirm)) },
            confirmButton = {
                TextButton(onClick = {
                    showVideoExportConfirmDialog = false
                    currentPhoto?.let { photo ->
                        viewModel.exportVideo(photo) { success, _ ->
                            showMoreSheet = false
                            val msgRes = if (success) R.string.export_video_success else R.string.export_video_failed
                            Toast.makeText(context, msgRes, Toast.LENGTH_SHORT).show()
                        }
                    }
                }) {
                    Text(stringResource(R.string.export_video))
                }
            },
            dismissButton = {
                TextButton(onClick = { showVideoExportConfirmDialog = false }) {
                    Text(stringResource(R.string.cancel))
                }
            }
        )
    }

    // 照片信息对话框
    if (showInfoDialog && currentPhoto != null) {
        val infoPhoto = currentPhoto.relatedPhoto ?: currentPhoto
        val infoMetadata = infoPhoto.metadata ?: currentPhoto.metadata
        AlertDialog(
            onDismissRequest = { showInfoDialog = false },
            title = { Text(stringResource(if (currentPhoto.isVideo) R.string.video_info else R.string.photo_info)) },
            text = {
                Column {
                    if (viewModel.selectedTab == GalleryTab.SYSTEM) {
                        InfoRow(stringResource(R.string.name), currentPhoto.displayName)
                    }
                    InfoRow(stringResource(R.string.photo_info_date), currentPhoto.getFormattedDate())
                    InfoRow(stringResource(R.string.photo_info_resolution), currentPhoto.getResolution())
                    InfoRow(stringResource(R.string.photo_info_size), currentPhoto.copy(size = displayPhotoSize).getFormattedSize())
                    infoMetadata?.let {
                        if (currentPhoto.isVideo) {
                            InfoRow(stringResource(R.string.video_info_duration), currentPhoto.getFormattedDuration())
                            InfoRow(stringResource(R.string.video_info_mime), it.mimeType ?: (currentPhoto.mimeType ?: "N/A"))
                            InfoRow(stringResource(R.string.video_info_frame_rate), it.frameRate?.toString() ?: "N/A")
                            InfoRow(stringResource(R.string.video_info_bitrate), it.bitrate?.let { bitrate -> "${bitrate / 1000} kbps" } ?: "N/A")
                            InfoRow(stringResource(R.string.video_info_has_audio), it.hasAudio?.let { hasAudio -> if (hasAudio) stringResource(R.string.yes) else stringResource(R.string.no) } ?: "N/A")
                            InfoRow(stringResource(R.string.video_info_rotation), it.rotationDegrees?.toString() ?: "N/A")
                        } else {
                            InfoRow(stringResource(R.string.photo_info_focal_length), it.focalLength35mm ?: "N/A")
                            InfoRow(stringResource(R.string.photo_info_aperture), it.aperture ?: "N/A")
                            InfoRow(stringResource(R.string.photo_info_iso), it.iso?.toString() ?: "N/A")
                            InfoRow(stringResource(R.string.photo_info_shutter_speed), it.shutterSpeed ?: "N/A")
                            if (DeviceUtil.canShowPhantom) {
                                InfoRow("LV", "%.2f".format(it.lv))
                                InfoRow("平均亮度", "%.2f".format(viewModel.currentBrightness[currentPhoto.id]))
                            }
                        }
                    }
                    currentColorSpace.value?.let {
                        InfoRow(stringResource(R.string.color_space), it.name)
                    }
                }
            },
            confirmButton = {
                TextButton(onClick = { showInfoDialog = false }) {
                    Text(stringResource(R.string.cancel))
                }
            },
            containerColor = Color(0xFF2D2D2D),
            titleContentColor = Color.White,
            textContentColor = Color.White
        )
    }

    // AI 评分 BottomSheet
    if (showAiScoreSheet && currentPhoto != null && currentPhoto.isImage) {
        AiScoreBottomSheet(
            photo = currentPhoto,
            viewModel = viewModel,
            isPurchased = isPurchased,
            onPurchase = { viewModel.showPaymentDialog = true },
            onDismissRequest = { showAiScoreSheet = false }
        )
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

    // 更多 BottomSheet
    if (showMoreSheet && currentPhoto != null) {
        val moreSheetState = rememberModalBottomSheetState(skipPartiallyExpanded = true)
        val moreActions = buildList {
            if (currentPhoto.isImage && (viewModel.selectedTab == GalleryTab.PHOTON || currentPhoto.relatedPhoto != null)) {
                add(
                    GalleryMoreAction(
                        icon = AppIcons.Output,
                        text = context.getString(R.string.export),
                        isLoading = isSaving,
                        enabled = !isCopyingSettings && !isPastingSettings,
                        onClick = {
                            showMoreSheet = false
                            showExportDialog = true
                        }
                    )
                )
            }

            if (currentPhoto.isVideo) {
                add(
                    GalleryMoreAction(
                        icon = AppIcons.Output,
                        text = if (isVideoExporting && videoExportProgress > 0) {
                            "$videoExportProgress%"
                        } else {
                            context.getString(R.string.export)
                        },
                        isLoading = isVideoExporting,
                        enabled = !isCopyingSettings && !isPastingSettings,
                        onClick = {
                            if (isVideoTransformerExportSupported()) {
                                showMoreSheet = false
                                showVideoExportConfirmDialog = true
                            } else {
                                Toast.makeText(
                                    context,
                                    R.string.export_video_requires_android12,
                                    Toast.LENGTH_SHORT
                                ).show()
                            }
                        }
                    )
                )
            }

            add(
                GalleryMoreAction(
                    icon = AppIcons.ContentCopy,
                    text = context.getString(R.string.copy_settings),
                    isLoading = isCopyingSettings,
                    enabled = !isCopyingSettings &&
                        !isPastingSettings &&
                        !isSharing &&
                        !isSaving,
                    onClick = {
                        isCopyingSettings = true
                        viewModel.copyPhotoSettings(currentPhoto) { success ->
                            isCopyingSettings = false
                            if (success) {
                                showMoreSheet = false
                            }
                            Toast.makeText(
                                context,
                                if (success) {
                                    R.string.copy_settings_success
                                } else {
                                    R.string.copy_settings_failed
                                },
                                Toast.LENGTH_SHORT
                            ).show()
                        }
                    }
                )
            )

            add(
                GalleryMoreAction(
                    icon = AppIcons.ContentCopy,
                    text = context.getString(R.string.paste_settings),
                    isLoading = isPastingSettings,
                    enabled = hasCopiedEditSettings &&
                        !isCopyingSettings &&
                        !isPastingSettings &&
                        !isSharing &&
                        !isSaving,
                    onClick = {
                        isPastingSettings = true
                        viewModel.pasteCopiedSettingsToPhoto(currentPhoto) { success ->
                            isPastingSettings = false
                            if (success) {
                                showMoreSheet = false
                            }
                            Toast.makeText(
                                context,
                                if (success) {
                                    R.string.paste_settings_success
                                } else {
                                    R.string.paste_settings_failed
                                },
                                Toast.LENGTH_SHORT
                            ).show()
                        }
                    }
                )
            )

            if (isCurrentRawPhoto) {
                add(
                    GalleryMoreAction(
                        iconText = context.getString(R.string.dng_format),
                        text = context.getString(R.string.dng_format),
                        isLoading = isExportingDng,
                        enabled = !isSaving &&
                            !isExportingDng &&
                            !isCopyingSettings &&
                            !isPastingSettings,
                        onClick = {
                            showMoreSheet = false
                            isExportingDng = true
                            viewModel.exportDng(currentPhoto) { success ->
                                isExportingDng = false
                                Toast.makeText(
                                    context,
                                    if (success) R.string.export_dng_success else R.string.export_dng_failed,
                                    Toast.LENGTH_SHORT
                                ).show()
                            }
                        }
                    )
                )
            }
        }

        @OptIn(ExperimentalMaterial3Api::class)
        ModalBottomSheet(
            onDismissRequest = { showMoreSheet = false },
            sheetState = moreSheetState,
            containerColor = GallerySheetSurface,
            contentColor = GalleryToolbarContent,
            shape = RoundedCornerShape(topStart = 30.dp, topEnd = 30.dp),
            scrimColor = Color.Black.copy(alpha = 0.64f),
            tonalElevation = 0.dp,
            dragHandle = {
                BottomSheetDefaults.DragHandle(
                    width = 36.dp,
                    height = 4.dp,
                    color = GalleryToolbarContent.copy(alpha = 0.24f)
                )
            }
        ) {
            Column(
                modifier = Modifier
                    .fillMaxWidth()
                    .verticalScroll(rememberScrollState())
                    .navigationBarsPadding()
                    .padding(start = 20.dp, end = 20.dp, bottom = 24.dp)
            ) {
                Column(modifier = Modifier.padding(horizontal = 4.dp)) {
                    Text(
                        text = stringResource(R.string.more_options),
                        color = GalleryToolbarContent,
                        fontSize = 21.sp,
                        fontWeight = FontWeight.SemiBold,
                        letterSpacing = (-0.2).sp
                    )
                }

                Spacer(modifier = Modifier.height(18.dp))
                HorizontalDivider(color = GalleryToolbarContent.copy(alpha = 0.09f))
                Spacer(modifier = Modifier.height(14.dp))

                Column(verticalArrangement = Arrangement.spacedBy(10.dp)) {
                    moreActions.chunked(4).forEach { rowActions ->
                        Row(
                            modifier = Modifier.fillMaxWidth(),
                            horizontalArrangement = Arrangement.spacedBy(10.dp)
                        ) {
                            rowActions.forEach { action ->
                                GalleryMoreActionCard(
                                    action = action,
                                    modifier = Modifier.weight(1f)
                                )
                            }
                            repeat(4 - rowActions.size) {
                                Spacer(modifier = Modifier.weight(1f))
                            }
                        }
                    }
                }
            }
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
private fun AiScoreBottomSheet(
    photo: MediaData,
    viewModel: GalleryViewModel,
    isPurchased: Boolean,
    onPurchase: () -> Unit,
    onDismissRequest: () -> Unit
) {
    val sheetState = rememberModalBottomSheetState(skipPartiallyExpanded = true)
    var requestToken by remember(photo.id) { mutableIntStateOf(0) }
    var uiState by remember(photo.id) { mutableStateOf<AiEvaluationUiState>(AiEvaluationUiState.Loading) }

    val openAIKey by viewModel.openAIApiKey.collectAsState()
    val canEvaluate = isPurchased || !openAIKey.isNullOrBlank()

    LaunchedEffect(photo.id, requestToken, canEvaluate) {
        if (!canEvaluate) return@LaunchedEffect
        uiState = AiEvaluationUiState.Loading
        uiState = viewModel.evaluatePhotoWithAi(photo).fold(
            onSuccess = { AiEvaluationUiState.Success(it) },
            onFailure = { AiEvaluationUiState.Error(it) }
        )
    }

    ModalBottomSheet(
        onDismissRequest = onDismissRequest,
        sheetState = sheetState,
        containerColor = AiEditorialBackground,
        dragHandle = {
            BottomSheetDefaults.DragHandle(color = AiEditorialOnSurface.copy(alpha = 0.28f))
        }
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .verticalScroll(rememberScrollState())
                .padding(bottom = 36.dp, start = 20.dp, end = 20.dp)
        ) {
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(bottom = 24.dp),
                verticalAlignment = Alignment.CenterVertically
            ) {
                Column(modifier = Modifier.weight(1f)) {
                    Text(
                        text = stringResource(R.string.gallery_ai_quality_title),
                        color = AiEditorialOnSurface,
                        fontSize = 22.sp,
                        fontWeight = FontWeight.SemiBold
                    )
                    Spacer(modifier = Modifier.height(5.dp))
                    Text(
                        text = stringResource(R.string.gallery_ai_editorial_framework),
                        color = AiEditorialAccent,
                        fontSize = 11.sp,
                        fontWeight = FontWeight.Bold,
                        letterSpacing = 1.2.sp
                    )
                }
                IconButton(onClick = onDismissRequest) {
                    Icon(
                        imageVector = Icons.Default.Close,
                        contentDescription = stringResource(R.string.cancel),
                        tint = AiEditorialOnSurface.copy(alpha = 0.62f)
                    )
                }
            }

            if (!canEvaluate) {
                Text(
                    text = stringResource(R.string.gallery_ai_premium_required),
                    color = AiEditorialOnSurface.copy(alpha = 0.68f),
                    fontSize = 15.sp,
                    lineHeight = 22.sp,
                    modifier = Modifier.fillMaxWidth()
                )
                Spacer(modifier = Modifier.height(24.dp))
                Button(
                    onClick = onPurchase,
                    modifier = Modifier.fillMaxWidth(),
                    colors = ButtonDefaults.buttonColors(
                        containerColor = AccentOrange,
                        contentColor = Color.Black
                    )
                ) {
                    Text(
                        text = stringResource(R.string.billing_premium_get_access),
                        fontWeight = FontWeight.Bold
                    )
                }
                return@Column
            }

            when (val state = uiState) {
                AiEvaluationUiState.Loading -> {
                    AiScoreLoading()
                }

                is AiEvaluationUiState.Error -> {
                    AiScoreError(onRetry = { requestToken += 1 })
                }

                is AiEvaluationUiState.Success -> {
                    AiScoreReview(evaluation = state.evaluation)
                }
            }
        }
    }
}

@Composable
private fun AiScoreLoading() {
    Surface(
        color = AiEditorialSurface,
        shape = RoundedCornerShape(24.dp),
        border = BorderStroke(1.dp, AiEditorialOnSurface.copy(alpha = 0.08f)),
        modifier = Modifier.fillMaxWidth()
    ) {
        Column(
            modifier = Modifier.padding(vertical = 44.dp, horizontal = 24.dp),
            horizontalAlignment = Alignment.CenterHorizontally
        ) {
            CircularProgressIndicator(
                color = AiEditorialAccent,
                modifier = Modifier.size(30.dp),
                strokeWidth = 3.dp
            )
            Spacer(modifier = Modifier.height(18.dp))
            Text(
                text = stringResource(R.string.gallery_ai_analyzing),
                color = AiEditorialOnSurface,
                fontSize = 15.sp,
                fontWeight = FontWeight.Medium
            )
            Spacer(modifier = Modifier.height(8.dp))
            Text(
                text = stringResource(R.string.gallery_ai_analyzing_description),
                color = AiEditorialOnSurface.copy(alpha = 0.5f),
                fontSize = 13.sp,
                lineHeight = 19.sp
            )
        }
    }
}

@Composable
private fun AiScoreError(onRetry: () -> Unit) {
    Surface(
        color = AiEditorialSurface,
        shape = RoundedCornerShape(24.dp),
        border = BorderStroke(1.dp, AiEditorialOnSurface.copy(alpha = 0.08f)),
        modifier = Modifier.fillMaxWidth()
    ) {
        Column(
            modifier = Modifier.padding(24.dp),
            horizontalAlignment = Alignment.CenterHorizontally
        ) {
            Icon(
                imageVector = Icons.Default.Info,
                contentDescription = null,
                tint = Color(0xFFD98270),
                modifier = Modifier.size(30.dp)
            )
            Spacer(modifier = Modifier.height(14.dp))
            Text(
                text = stringResource(R.string.gallery_ai_analysis_failed),
                color = AiEditorialOnSurface,
                fontSize = 15.sp,
                fontWeight = FontWeight.Medium
            )
            Spacer(modifier = Modifier.height(8.dp))
            Text(
                text = stringResource(R.string.gallery_ai_analysis_failed_description),
                color = AiEditorialOnSurface.copy(alpha = 0.55f),
                fontSize = 13.sp,
                lineHeight = 19.sp
            )
            Spacer(modifier = Modifier.height(14.dp))
            TextButton(onClick = onRetry) {
                Text(
                    text = stringResource(R.string.lut_creator_try_again),
                    color = AiEditorialAccent,
                    fontWeight = FontWeight.SemiBold
                )
            }
        }
    }
}

@Composable
private fun AiScoreReview(evaluation: AiPhotoEvaluation) {
    val score = evaluation.overallScore
    val scoreColor = aiScoreColor(score)
    val rankText = when {
        score >= 90 -> stringResource(R.string.gallery_ai_rank_excellent_plus)
        score >= 82 -> stringResource(R.string.gallery_ai_rank_excellent)
        score >= 74 -> stringResource(R.string.gallery_ai_rank_good)
        score >= 65 -> stringResource(R.string.gallery_ai_rank_pass)
        else -> stringResource(R.string.gallery_ai_rank_needs_work)
    }
    val animatedProgress by animateFloatAsState(
        targetValue = score / 100f,
        animationSpec = tween(1200, easing = FastOutSlowInEasing),
        label = "overallScoreProgress"
    )
    val animatedScore by animateIntAsState(
        targetValue = score,
        animationSpec = tween(1200, easing = FastOutSlowInEasing),
        label = "overallScore"
    )

    Surface(
        color = AiEditorialSurface,
        shape = RoundedCornerShape(24.dp),
        border = BorderStroke(1.dp, AiEditorialOnSurface.copy(alpha = 0.08f)),
        modifier = Modifier.fillMaxWidth()
    ) {
        Column(modifier = Modifier.padding(22.dp)) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                verticalAlignment = Alignment.CenterVertically
            ) {
                Column(modifier = Modifier.weight(1f)) {
                    Text(
                        text = stringResource(R.string.gallery_ai_score_label),
                        color = AiEditorialOnSurface.copy(alpha = 0.48f),
                        fontSize = 11.sp,
                        fontWeight = FontWeight.Bold,
                        letterSpacing = 1.1.sp
                    )
                    Row(verticalAlignment = Alignment.Bottom) {
                        Text(
                            text = animatedScore.toString(),
                            color = scoreColor,
                            fontSize = 56.sp,
                            fontWeight = FontWeight.SemiBold,
                            lineHeight = 58.sp
                        )
                        Text(
                            text = stringResource(R.string.gallery_ai_score_out_of),
                            color = AiEditorialOnSurface.copy(alpha = 0.42f),
                            fontSize = 14.sp,
                            modifier = Modifier.padding(bottom = 9.dp, start = 4.dp)
                        )
                    }
                }
                Surface(
                    color = scoreColor.copy(alpha = 0.12f),
                    shape = CircleShape,
                    border = BorderStroke(1.dp, scoreColor.copy(alpha = 0.28f))
                ) {
                    Text(
                        text = rankText,
                        color = scoreColor,
                        fontSize = 12.sp,
                        fontWeight = FontWeight.SemiBold,
                        modifier = Modifier.padding(horizontal = 13.dp, vertical = 7.dp)
                    )
                }
            }

            Spacer(modifier = Modifier.height(14.dp))
            LinearProgressIndicator(
                progress = { animatedProgress },
                modifier = Modifier
                    .fillMaxWidth()
                    .height(5.dp)
                    .clip(CircleShape),
                color = scoreColor,
                trackColor = AiEditorialOnSurface.copy(alpha = 0.08f),
                strokeCap = androidx.compose.ui.graphics.StrokeCap.Round
            )
            Spacer(modifier = Modifier.height(22.dp))
            HorizontalDivider(color = AiEditorialOnSurface.copy(alpha = 0.08f))
            Spacer(modifier = Modifier.height(18.dp))
            Text(
                text = evaluation.verdict,
                color = AiEditorialOnSurface.copy(alpha = 0.88f),
                fontSize = 16.sp,
                lineHeight = 24.sp
            )
        }
    }

    Spacer(modifier = Modifier.height(12.dp))
    AiEditorialCallout(
        title = stringResource(R.string.gallery_ai_strength),
        text = evaluation.strength,
        icon = AppIcons.AutoAwesome,
        accent = AiEditorialAccent
    )
    Spacer(modifier = Modifier.height(10.dp))
    AiEditorialCallout(
        title = stringResource(R.string.gallery_ai_next_step),
        text = evaluation.improvement,
        icon = AppIcons.AutoMirroredArrowRight,
        accent = Color(0xFF8FAEA3)
    )

    Spacer(modifier = Modifier.height(28.dp))
    Text(
        text = stringResource(R.string.gallery_ai_criteria_title),
        color = AiEditorialOnSurface,
        fontSize = 17.sp,
        fontWeight = FontWeight.SemiBold
    )
    Spacer(modifier = Modifier.height(5.dp))
    Text(
        text = stringResource(R.string.gallery_ai_criteria_description),
        color = AiEditorialOnSurface.copy(alpha = 0.48f),
        fontSize = 12.sp,
        lineHeight = 18.sp
    )
    Spacer(modifier = Modifier.height(14.dp))

    val criteria = listOf(
        stringResource(R.string.gallery_ai_criterion_visual_impact) to
            evaluation.scores.visualImpact,
        stringResource(R.string.gallery_ai_criterion_originality_voice) to
            evaluation.scores.originalityAndVoice,
        stringResource(R.string.gallery_ai_criterion_narrative_meaning) to
            evaluation.scores.narrativeAndMeaning,
        stringResource(R.string.gallery_ai_criterion_intent_coherence) to
            evaluation.scores.intentAndCoherence,
        stringResource(R.string.gallery_ai_criterion_aesthetic_technical) to
            evaluation.scores.aestheticAndTechnicalExecution
    )
    criteria.forEachIndexed { index, (label, criterion) ->
        AiScoreCriterionCard(
            index = index + 1,
            label = label,
            criterion = criterion
        )
        if (index != criteria.lastIndex) {
            Spacer(modifier = Modifier.height(10.dp))
        }
    }

    Spacer(modifier = Modifier.height(18.dp))
    Text(
        text = stringResource(R.string.gallery_ai_scale_note),
        color = AiEditorialOnSurface.copy(alpha = 0.38f),
        fontSize = 11.sp,
        lineHeight = 16.sp,
        modifier = Modifier.padding(horizontal = 4.dp)
    )
}

@Composable
private fun AiEditorialCallout(
    title: String,
    text: String,
    icon: ImageVector,
    accent: Color
) {
    Surface(
        color = accent.copy(alpha = 0.08f),
        shape = RoundedCornerShape(18.dp),
        border = BorderStroke(1.dp, accent.copy(alpha = 0.18f)),
        modifier = Modifier.fillMaxWidth()
    ) {
        Row(
            modifier = Modifier.padding(17.dp),
            verticalAlignment = Alignment.Top
        ) {
            Icon(
                imageVector = icon,
                contentDescription = null,
                tint = accent,
                modifier = Modifier
                    .padding(top = 1.dp)
                    .size(19.dp)
            )
            Spacer(modifier = Modifier.width(13.dp))
            Column {
                Text(
                    text = title,
                    color = accent,
                    fontSize = 11.sp,
                    fontWeight = FontWeight.Bold,
                    letterSpacing = 0.8.sp
                )
                Spacer(modifier = Modifier.height(5.dp))
                Text(
                    text = text,
                    color = AiEditorialOnSurface.copy(alpha = 0.78f),
                    fontSize = 14.sp,
                    lineHeight = 20.sp
                )
            }
        }
    }
}

@Composable
private fun AiScoreCriterionCard(
    index: Int,
    label: String,
    criterion: AiPhotoCriterion
) {
    val color = aiScoreColor(criterion.score)
    val animatedProgress by animateFloatAsState(
        targetValue = criterion.score / 100f,
        animationSpec = tween(
            durationMillis = 900,
            delayMillis = index * 90,
            easing = FastOutSlowInEasing
        ),
        label = "criterionScore$index"
    )

    Surface(
        color = AiEditorialSurface,
        shape = RoundedCornerShape(18.dp),
        border = BorderStroke(1.dp, AiEditorialOnSurface.copy(alpha = 0.07f)),
        modifier = Modifier
            .fillMaxWidth()
    ) {
        Column(modifier = Modifier.padding(17.dp)) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                verticalAlignment = Alignment.CenterVertically
            ) {
                Text(
                    text = index.toString().padStart(2, '0'),
                    color = AiEditorialAccent.copy(alpha = 0.72f),
                    fontSize = 11.sp,
                    fontWeight = FontWeight.Bold,
                    letterSpacing = 1.sp,
                    modifier = Modifier.width(30.dp)
                )
                Text(
                    text = label,
                    color = AiEditorialOnSurface.copy(alpha = 0.86f),
                    fontSize = 14.sp,
                    fontWeight = FontWeight.Medium,
                    modifier = Modifier.weight(1f)
                )
                Text(
                    text = criterion.score.toString(),
                    color = color,
                    fontSize = 17.sp,
                    fontWeight = FontWeight.SemiBold
                )
            }
            Spacer(modifier = Modifier.height(12.dp))
            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .height(4.dp)
                    .background(AiEditorialOnSurface.copy(alpha = 0.08f), CircleShape)
            ) {
                Box(
                    modifier = Modifier
                        .fillMaxHeight()
                        .fillMaxWidth(animatedProgress)
                        .background(color, CircleShape)
                )
            }
            Spacer(modifier = Modifier.height(12.dp))
            Text(
                text = criterion.feedback,
                color = AiEditorialOnSurface.copy(alpha = 0.58f),
                fontSize = 13.sp,
                lineHeight = 19.sp
            )
        }
    }
}

private val AiEditorialBackground = Color(0xFF11110F)
private val AiEditorialSurface = Color(0xFF1A1A17)
private val AiEditorialOnSurface = Color(0xFFF3EFE7)
private val AiEditorialAccent = Color(0xFFE7904F)

private fun aiScoreColor(score: Int): Color =
    when {
        score >= 90 -> Color(0xFFF0C96B)
        score >= 82 -> AiEditorialAccent
        score >= 74 -> Color(0xFFD7A36D)
        score >= 65 -> Color(0xFFB8B2A7)
        else -> Color(0xFFD98270)
    }

private sealed class AiEvaluationUiState {
    object Loading : AiEvaluationUiState()
    data class Success(val evaluation: AiPhotoEvaluation) : AiEvaluationUiState()
    data class Error(val error: Throwable) : AiEvaluationUiState()
}

@Composable
private fun HdrStrengthPanel(
    enabled: Boolean,
    strength: Float,
    onEnabledChange: (Boolean) -> Unit,
    onStrengthChange: (Float) -> Unit,
    onStrengthChangeFinished: () -> Unit,
    modifier: Modifier = Modifier
) {
    Surface(
        color = Color(0x881E1E1E),
        shape = RoundedCornerShape(16.dp),
        modifier = modifier.width(200.dp)
    ) {
        Column(
            modifier = Modifier.padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                verticalAlignment = Alignment.CenterVertically
            ) {
                Text(
                    text = stringResource(R.string.hdr_label),
                    color = Color.White,
                    fontSize = 13.sp,
                    fontWeight = FontWeight.Bold,
                    modifier = Modifier.weight(1f)
                )
                Switch(
                    checked = enabled,
                    onCheckedChange = onEnabledChange,
                    colors = SwitchDefaults.colors(
                        checkedThumbColor = Color.White,
                        checkedTrackColor = AccentOrange,
                        uncheckedThumbColor = Color.LightGray,
                        uncheckedTrackColor = Color.DarkGray
                    )
                )
            }

            Column(
                modifier = Modifier.fillMaxWidth(),
                verticalArrangement = Arrangement.spacedBy(4.dp)
            ) {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Text(
                        text = stringResource(R.string.hdr_strength_label),
                        color = Color.White.copy(alpha = 0.86f),
                        fontSize = 9.sp,
                        modifier = Modifier.weight(1f)
                    )
                    Text(
                        text = "${(strength * 100f).roundToInt()}%",
                        color = AccentOrange,
                        fontWeight = FontWeight.Bold,
                        fontSize = 9.sp
                    )
                }
                CustomSlider(
                    value = strength,
                    onValueChange = onStrengthChange,
                    valueRange = HdrGainmapStrength.MIN..HdrGainmapStrength.MAX,
                    enabled = enabled,
                    onValueChangeFinished = onStrengthChangeFinished,
                )
            }
        }
    }
}

private data class GalleryMoreAction(
    val text: String,
    val onClick: () -> Unit,
    val icon: ImageVector? = null,
    val iconText: String? = null,
    val enabled: Boolean = true,
    val contentColor: Color = GalleryToolbarContent,
    val isLoading: Boolean = false
)

@Composable
private fun GalleryBottomActionBar(
    leadingAction: @Composable () -> Unit,
    groupedActions: @Composable RowScope.() -> Unit,
    trailingAction: @Composable () -> Unit
) {
    Surface(
        modifier = Modifier.fillMaxWidth(),
        color = GalleryToolbarSurface,
        shadowElevation = 10.dp
    ) {
        Box(
            modifier = Modifier
                .fillMaxWidth()
                .navigationBarsPadding(),
            contentAlignment = Alignment.Center
        ) {
            Row(
                modifier = Modifier
                    .widthIn(max = 380.dp)
                    .fillMaxWidth()
                    .height(64.dp)
                    .padding(horizontal = 18.dp, vertical = 10.dp),
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.SpaceBetween
            ) {
                leadingAction()
                Surface(
                    modifier = Modifier
                        .height(40.dp)
                        .widthIn(min = 116.dp)
                        .shadow(
                            elevation = 5.dp,
                            shape = CircleShape,
                            ambientColor = Color.Black.copy(alpha = 0.18f),
                            spotColor = Color.Black.copy(alpha = 0.18f)
                        ),
                    shape = CircleShape,
                    color = GalleryToolbarButton,
                    tonalElevation = 0.dp
                ) {
                    Row(
                        modifier = Modifier.padding(horizontal = 4.dp),
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.Center,
                        content = groupedActions
                    )
                }
                trailingAction()
            }
        }
    }
}

@Composable
private fun GalleryCircleActionButton(
    icon: ImageVector,
    contentDescription: String,
    onClick: () -> Unit,
    enabled: Boolean = true,
    isLoading: Boolean = false
) {
    val isInteractive = enabled && !isLoading
    PhysicalButton(
        modifier = Modifier
            .size(40.dp)
            .shadow(
                elevation = 5.dp,
                shape = CircleShape,
                ambientColor = Color.Black.copy(alpha = 0.18f),
                spotColor = Color.Black.copy(alpha = 0.18f)
            )
            .alpha(if (enabled || isLoading) 1f else 0.42f),
        onClick = onClick,
        enabled = isInteractive,
        shape = CircleShape,
        backgroundColor = GalleryToolbarButton,
        highlightBorderWidth = 0.5.dp,
        highlightGlowWidth = 1.5.dp
    ) {
        if (isLoading) {
            CircularProgressIndicator(
                color = GalleryToolbarContent,
                modifier = Modifier.size(17.dp),
                strokeWidth = 1.8.dp
            )
        } else {
            Icon(
                imageVector = icon,
                contentDescription = contentDescription,
                tint = GalleryToolbarContent,
                modifier = Modifier
                    .size(18.dp)
                    .autoRotate()
            )
        }
    }
}

@Composable
private fun GalleryGroupedActionButton(
    icon: ImageVector,
    contentDescription: String,
    onClick: () -> Unit,
    enabled: Boolean = true,
    isLoading: Boolean = false
) {
    IconButton(
        onClick = onClick,
        enabled = enabled && !isLoading,
        modifier = Modifier.size(36.dp)
    ) {
        if (isLoading) {
            CircularProgressIndicator(
                color = GalleryToolbarContent,
                modifier = Modifier.size(17.dp),
                strokeWidth = 1.8.dp
            )
        } else {
            Icon(
                imageVector = icon,
                contentDescription = contentDescription,
                tint = GalleryToolbarContent.copy(alpha = if (enabled) 1f else 0.38f),
                modifier = Modifier
                    .size(18.dp)
                    .autoRotate()
            )
        }
    }
}

@Composable
private fun GalleryMoreActionCard(
    action: GalleryMoreAction,
    modifier: Modifier = Modifier
) {
    val isInteractive = action.enabled && !action.isLoading
    Column(
        modifier = modifier.alpha(if (action.enabled || action.isLoading) 1f else 0.38f),
        horizontalAlignment = Alignment.CenterHorizontally
    ) {
        PhysicalButton(
            modifier = Modifier
                .size(44.dp)
                .shadow(
                    elevation = 4.dp,
                    shape = CircleShape,
                    ambientColor = Color.Black.copy(alpha = 0.15f),
                    spotColor = Color.Black.copy(alpha = 0.15f)
                ),
            onClick = action.onClick,
            enabled = isInteractive,
            shape = CircleShape,
            backgroundColor = GalleryToolbarButton,
            highlightBorderWidth = 0.5.dp,
            highlightGlowWidth = 1.5.dp
        ) {
            if (action.isLoading) {
                CircularProgressIndicator(
                    color = action.contentColor,
                    modifier = Modifier.size(18.dp),
                    strokeWidth = 1.8.dp
                )
            } else if (action.icon != null) {
                Icon(
                    imageVector = action.icon,
                    contentDescription = action.text,
                    tint = action.contentColor,
                    modifier = Modifier.size(19.dp)
                )
            } else if (action.iconText != null) {
                Text(
                    text = action.iconText,
                    color = action.contentColor,
                    fontSize = 10.sp,
                    fontWeight = FontWeight.Bold
                )
            }
        }
        Spacer(modifier = Modifier.height(7.dp))
        Text(
            text = action.text,
            color = GalleryToolbarContent.copy(alpha = 0.86f),
            fontSize = 11.sp,
            fontWeight = FontWeight.Medium,
            lineHeight = 14.sp,
            maxLines = 2,
            textAlign = TextAlign.Center,
            overflow = TextOverflow.Ellipsis,
            modifier = Modifier.fillMaxWidth()
        )
    }
}

@Composable
private fun InfoRow(label: String, value: String) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .padding(vertical = 4.dp),
        verticalAlignment = Alignment.CenterVertically
    ) {
        Text(
            text = label,
            color = Color.White.copy(alpha = 0.7f),
            fontSize = 14.sp,
            modifier = Modifier.width(80.dp)
        )
        Text(
            text = value,
            color = Color.White,
            fontSize = 14.sp
        )
    }
}

private fun resolveCurrentMediaSize(context: Context, photo: MediaData): Long {
    if (photo.size > 0L) return photo.size

    val candidates = listOfNotNull(photo.uri, photo.sourceUri).distinctBy { it.toString() }
    candidates.forEach { uri ->
        val size = resolveUriSize(context, uri)
        if (size > 0L) return size
    }

    return photo.size
}

private fun resolveUriSize(context: Context, uri: Uri): Long {
    if (uri.scheme == null || uri.scheme == "file") {
        return uri.path?.let { File(it).takeIf(File::exists)?.length() } ?: 0L
    }

    if (uri.scheme == "content") {
        val queriedSize = runCatching {
            context.contentResolver.query(
                uri,
                arrayOf(OpenableColumns.SIZE),
                null,
                null,
                null
            )?.use { cursor ->
                if (!cursor.moveToFirst()) return@use 0L
                val sizeIndex = cursor.getColumnIndex(OpenableColumns.SIZE)
                if (sizeIndex != -1 && !cursor.isNull(sizeIndex)) cursor.getLong(sizeIndex) else 0L
            } ?: 0L
        }.getOrDefault(0L)
        if (queriedSize > 0L) return queriedSize

        return runCatching {
            context.contentResolver.openFileDescriptor(uri, "r")?.use { descriptor ->
                descriptor.statSize.takeIf { it > 0L } ?: 0L
            } ?: 0L
        }.getOrDefault(0L)
    }

    return 0L
}

private fun Context.findActivity(): Activity? {
    var currentContext = this
    while (currentContext is ContextWrapper) {
        if (currentContext is Activity) return currentContext
        currentContext = currentContext.baseContext
    }
    return null
}

@androidx.annotation.OptIn(androidx.media3.common.util.UnstableApi::class)
@Composable
private fun VideoDetailPlayer(
    photo: MediaData,
    isActive: Boolean,
    viewModel: GalleryViewModel,
    modifier: Modifier = Modifier
) {
    val context = LocalContext.current
    val mediaUri = remember(photo.id, photo.uri, photo.sourceUri) {
        photo.sourceUri ?: photo.uri
    }

    PLog.d("VideoDetailPlayer", "VideoDetailPlayer recomposing/initializing. photoId: ${photo.id}, isActive: $isActive, mediaUri: $mediaUri")

    val contentRepository = remember {
        com.hinnka.mycamera.data.ContentRepository.getInstance(context)
    }

    var lutConfig by remember { mutableStateOf<com.hinnka.mycamera.lut.LutConfig?>(null) }
    var recipeParams by remember { mutableStateOf<com.hinnka.mycamera.model.ColorRecipeParams?>(null) }
    val refreshKey = viewModel.photoRefreshKeys[photo.id] ?: 0L

    LaunchedEffect(photo.id, refreshKey) {
        withContext(Dispatchers.IO) {
            PLog.d("VideoDetailPlayer", "Loading video metadata from DB.")
            val metadata = com.hinnka.mycamera.gallery.GalleryManager.loadMetadata(context, photo.id) ?: photo.metadata
            val lutId = metadata?.lutId
            val params = metadata?.colorRecipeParams
            PLog.d("VideoDetailPlayer", "Metadata loaded. lutId: $lutId, recipeEnabled: ${params != null}")

            val config = if (lutId != null) {
                contentRepository.lutManager.loadLut(lutId)
            } else {
                null
            }

            withContext(Dispatchers.Main) {
                lutConfig = config
                recipeParams = params
            }
        }
    }

    // Maintain the video LUT effect
    val videoLutEffect = remember {
        PLog.d("VideoDetailPlayer", "Instantiating new VideoLutEffect.")
        VideoLutEffect(lutConfig, recipeParams)
    }

    // Update effect parameters dynamically on the GL pipeline without reconstruction
    LaunchedEffect(lutConfig, recipeParams) {
        PLog.d("VideoDetailPlayer", "Updating VideoLutEffect params. lut: ${lutConfig?.title}, recipe: ${recipeParams != null}")
        videoLutEffect.update(lutConfig, recipeParams)
    }

    val exoPlayer = remember(photo.id, mediaUri, isActive) {
        if (!isActive) return@remember null
        PLog.d("VideoDetailPlayer", "Creating ExoPlayer for detail video.")
        ExoPlayer.Builder(context).build().apply {
            repeatMode = Player.REPEAT_MODE_OFF
            setVideoEffects(listOf(videoLutEffect))

            addListener(object : Player.Listener {
                override fun onPlaybackStateChanged(state: Int) {
                    PLog.d("VideoDetailPlayer", "ExoPlayer state changed: $state")
                }
                override fun onPlayerError(error: androidx.media3.common.PlaybackException) {
                    PLog.e("VideoDetailPlayer", "ExoPlayer encountered error!", error)
                }
            })
        }
    }

    DisposableEffect(exoPlayer) {
        onDispose {
            if (exoPlayer != null) {
                PLog.d("VideoDetailPlayer", "Disposing ExoPlayer.")
                exoPlayer.release()
            }
        }
    }

    LaunchedEffect(exoPlayer, isActive) {
        PLog.d("VideoDetailPlayer", "VideoDetailPlayer isActive changed: $isActive, player: $exoPlayer")
        if (exoPlayer != null && isActive) {
            delay(150) // Wait for transitions to complete and EGL surface to be fully ready
            PLog.d("VideoDetailPlayer", "Preparing and starting ExoPlayer.")
            exoPlayer.setMediaItem(MediaItem.fromUri(mediaUri))
            exoPlayer.prepare()
            exoPlayer.playWhenReady = true
        }
    }

    if (exoPlayer != null) {
        AndroidView(
            factory = {
                PLog.d("VideoDetailPlayer", "Creating PlayerView factory.")
                LayoutInflater.from(context).inflate(R.layout.view_motion_photo_player, null) as PlayerView
            },
            update = {
                PLog.d("VideoDetailPlayer", "Updating PlayerView with player.")
                it.player = exoPlayer
                it.resizeMode = AspectRatioFrameLayout.RESIZE_MODE_FIT
                it.useController = true
                it.controllerAutoShow = false
                it.setShowBuffering(PlayerView.SHOW_BUFFERING_NEVER)
                it.isVisible = true
            },
            modifier = modifier.autoRotate(matchParentSize = true)
        )
    } else {
        // Show video thumbnail with a play icon when player is not active
        Box(
            modifier = modifier.autoRotate(matchParentSize = true),
            contentAlignment = Alignment.Center
        ) {
            val transformation = remember(photo) {
                viewModel.getPhotoTransformation(photo)
            }
            AsyncImage(
                model = ImageRequest.Builder(context)
                    .data(photo.thumbnailUri)
                    .crossfade(true)
                    .apply {
                        if (transformation != null) {
                            transformations(transformation)
                        }
                    }
                    .build(),
                contentDescription = photo.displayName,
                contentScale = ContentScale.Fit,
                modifier = Modifier.fillMaxSize()
            )
            Icon(
                imageVector = Icons.Default.PlayArrow,
                contentDescription = null,
                tint = Color.White.copy(alpha = 0.8f),
                modifier = Modifier.size(64.dp)
            )
        }
    }
}

/**
 * 可缩放的图片组件
 * 使用 Telephoto 库支持大尺寸图片查看
 */
@Composable
private fun ZoomableImage(
    photo: MediaData,
    colorSpace: MutableState<ColorSpace?>,
    showOrigin: Boolean,
    isActive: Boolean,
    isScrollInProgress: Boolean,
    viewModel: GalleryViewModel,
    showRawBadge: Boolean,
    onZoomChange: (Boolean) -> Unit,
    modifier: Modifier = Modifier
) {
    val context = LocalContext.current

    var isLoading by remember { mutableStateOf(true) }
    val maxZoom = min(photo.width, photo.height) / 100f
    val zoomableState = rememberZoomableImageState(
        zoomableState = rememberZoomableState(zoomSpec = ZoomSpec(maxZoomFactor = maxZoom))
    )

    LaunchedEffect(zoomableState.zoomableState.zoomFraction) {
        onZoomChange((zoomableState.zoomableState.zoomFraction ?: 0f) > 0.01f)
    }

    Box(
        modifier = modifier.fillMaxSize(),
        contentAlignment = Alignment.Center
    ) {
        val displayPhoto = if (viewModel.selectedTab == GalleryTab.SYSTEM) {
            photo.relatedPhoto ?: photo
        } else {
            photo
        }
        // 使用 hashCode() 代替 toJson() 序列化，避免 composition 时做 JSON 序列化
        val metadataHash = remember(displayPhoto.metadata, photo.metadata) {
            displayPhoto.metadata?.hashCode() ?: photo.metadata?.hashCode() ?: 0
        }

        var bitmap by remember { mutableStateOf<Bitmap?>(null) }
        var hdrBitmap by remember { mutableStateOf<Bitmap?>(null) }
        var showHdr by remember { mutableStateOf(false) }
        val hdrAlpha by animateFloatAsState(
            targetValue = if (showHdr) 1f else 0f,
            animationSpec = tween(durationMillis = 750, easing = LinearOutSlowInEasing),
            label = "hdrFadeIn"
        )
        val refreshKey = viewModel.photoRefreshKeys[displayPhoto.id] ?: 0L
        val isSettledActive = isActive && !isScrollInProgress

        LaunchedEffect(displayPhoto.id, metadataHash, showOrigin, refreshKey, isSettledActive) {
            isLoading = bitmap == null
            bitmap = viewModel.getPreviewBitmap(
                displayPhoto,
                showOrigin = showOrigin,
                ignoreDenoise = !isSettledActive,
                maxEdge = if (isSettledActive) 4096 else 1024
            )
            if (bitmap == null && viewModel.awaitPreparedPhotoReady(displayPhoto)) {
                bitmap = viewModel.getPreviewBitmap(
                    displayPhoto,
                    showOrigin = showOrigin,
                    ignoreDenoise = !isSettledActive,
                    maxEdge = if (isSettledActive) 4096 else 1024
                )
            }
            colorSpace.value = bitmap?.colorSpace
            isLoading = bitmap == null

            if (displayPhoto.metadata?.manualHdrEffectEnabled == true && isSettledActive) {
                hdrBitmap = viewModel.getDetailBitmap(displayPhoto)
                hdrBitmap?.let {
                    colorSpace.value = it.colorSpace
                }
            } else {
                hdrBitmap = null
            }
        }

        LaunchedEffect(hdrBitmap, showOrigin, isActive) {
            delay(300)
            showHdr = hdrBitmap != null && !showOrigin && isActive
        }

        if (bitmap != null) {
            val imageModel = remember(displayPhoto.id, metadataHash, bitmap) {
                ImageRequest.Builder(context)
                    .data(bitmap)
                    .crossfade(false) // 禁用交叉淡入淡出，避免滑动时同时渲染两张大图
                    .build()
            }

            ZoomableAsyncImage(
                model = imageModel,
                contentDescription = displayPhoto.displayName,
                contentScale = ContentScale.Fit,
                state = zoomableState,
                onDoubleClick = DoubleClickToZoomListener.cycle(maxZoomFactor = 3f),
                modifier = Modifier.fillMaxSize().autoRotate(matchParentSize = true)
            )
        }

        if (showHdr && hdrBitmap != null) {
            val imageModel = remember(displayPhoto.id, metadataHash, hdrBitmap) {
                ImageRequest.Builder(context)
                    .data(hdrBitmap)
                    .crossfade(false) // 禁用交叉淡入淡出，避免滑动时同时渲染两张大图
                    .build()
            }

            ZoomableAsyncImage(
                model = imageModel,
                contentDescription = displayPhoto.displayName,
                contentScale = ContentScale.Fit,
                state = zoomableState,
                modifier = Modifier.fillMaxSize().alpha(hdrAlpha).autoRotate(matchParentSize = true)
            )
        }

        if (showRawBadge && bitmap != null) {
            Surface(
                shape = RoundedCornerShape(4.dp),
                color = Color.Black.copy(alpha = 0.58f),
                modifier = Modifier
                    .align(Alignment.TopStart)
                    .padding(horizontal = 16.dp, vertical = 8.dp)
            ) {
                Text(
                    text = stringResource(R.string.gallery_raw_badge),
                    color = AccentOrange,
                    fontSize = 11.sp,
                    fontWeight = FontWeight.Bold,
                    modifier = Modifier.padding(horizontal = 8.dp, vertical = 4.dp)
                )
            }
        }

        if (isLoading) {
            CircularProgressIndicator(
                color = AccentOrange,
                modifier = Modifier.size(48.dp)
            )
        }
    }
}

@androidx.annotation.OptIn(androidx.media3.common.util.UnstableApi::class)
@Composable
fun MotionPhotoPlayer(
    photo: MediaData,
    isPlaying: Boolean,
    viewModel: GalleryViewModel,
    modifier: Modifier = Modifier
) {
    val context = LocalContext.current
    val videoFile = remember(photo.id) {
        viewModel.getMotionPhotoVideo(photo)
    }

    if (!photo.isMotionPhoto || videoFile == null || !videoFile.exists()) {
        if (photo.isMotionPhoto) {
            PLog.w("MotionPhotoPlayer", "Motion Photo video file missing: ${photo.id}")
        }
        return
    }

    val contentRepository = remember {
        com.hinnka.mycamera.data.ContentRepository.getInstance(context)
    }

    var lutConfig by remember { mutableStateOf<com.hinnka.mycamera.lut.LutConfig?>(null) }
    var recipeParams by remember { mutableStateOf<com.hinnka.mycamera.model.ColorRecipeParams?>(null) }
    var effectMetadataLoaded by remember(photo.id) { mutableStateOf(false) }
    val refreshKey = viewModel.photoRefreshKeys[photo.id] ?: 0L

    LaunchedEffect(photo.id, refreshKey) {
        effectMetadataLoaded = false
        withContext(Dispatchers.IO) {
            PLog.d("MotionPhotoPlayer", "Loading video metadata from DB.")
            val metadata = com.hinnka.mycamera.gallery.GalleryManager.loadMetadata(context, photo.id) ?: photo.metadata
            val applyEffects = metadata?.applyEffectsToVideo == true
            val lutId = if (applyEffects) metadata.lutId else null
            val params = if (applyEffects) metadata.colorRecipeParams else null
            PLog.d("MotionPhotoPlayer", "Metadata loaded. applyEffects: $applyEffects, lutId: $lutId, recipeEnabled: ${params != null}")

            val config = if (lutId != null) {
                contentRepository.lutManager.loadLut(lutId)
            } else {
                null
            }

            withContext(Dispatchers.Main) {
                lutConfig = config
                recipeParams = params
                effectMetadataLoaded = true
            }
        }
    }

    // Maintain the video LUT effect
    val videoLutEffect = remember {
        PLog.d("MotionPhotoPlayer", "Instantiating new VideoLutEffect.")
        VideoLutEffect(lutConfig, recipeParams)
    }

    // Update effect parameters dynamically on the GL pipeline without reconstruction
    LaunchedEffect(lutConfig, recipeParams) {
        PLog.d("MotionPhotoPlayer", "Updating VideoLutEffect params. lut: ${lutConfig?.title}, recipe: ${recipeParams != null}")
        videoLutEffect.update(lutConfig, recipeParams)
    }

    if (!effectMetadataLoaded) return

    val hasVideoEffects = lutConfig != null || recipeParams != null
    val shouldApplyVideoEffects = hasVideoEffects

    var isReadyToShow by remember(photo.id) { mutableStateOf(false) }

    val exoPlayer = remember(photo.id, videoFile.absolutePath, shouldApplyVideoEffects) {
        ExoPlayer.Builder(context).build().apply {
            PLog.d(
                "MotionPhotoPlayer",
                "Creating ExoPlayer for ${photo.id}, video=${videoFile.absolutePath}, size=${videoFile.length()}, effects=$shouldApplyVideoEffects"
            )
            repeatMode = Player.REPEAT_MODE_ONE
            if (shouldApplyVideoEffects) {
                setVideoEffects(listOf(videoLutEffect))
            }
            addListener(object : Player.Listener {
                override fun onRenderedFirstFrame() {
                    isReadyToShow = true
                }

                override fun onPlaybackStateChanged(playbackState: Int) {
                }

                override fun onIsPlayingChanged(isPlaying: Boolean) {
                }

                override fun onPlayerError(error: PlaybackException) {
                }
            })
            prepare()
        }
    }

    LaunchedEffect(exoPlayer, isPlaying, shouldApplyVideoEffects) {
        if (isPlaying) {
            isReadyToShow = false
            delay(150)
            if (exoPlayer.mediaItemCount == 0) {
                PLog.d("MotionPhotoPlayer", "Preparing Motion Photo player after PlayerView attach: ${photo.id}")
                exoPlayer.setMediaItem(MediaItem.fromUri(Uri.fromFile(videoFile)))
                exoPlayer.prepare()
            }
            exoPlayer.seekTo(0)
            exoPlayer.playWhenReady = true
            exoPlayer.play()
        } else {
            isReadyToShow = false
            exoPlayer.playWhenReady = false
            exoPlayer.pause()
        }
    }

    DisposableEffect(exoPlayer) {
        onDispose {
            exoPlayer.release()
        }
    }

    AndroidView(
        factory = {
            LayoutInflater.from(context).inflate(R.layout.view_motion_photo_player, null) as PlayerView
        },
        update = {
            it.player = exoPlayer
            it.resizeMode = AspectRatioFrameLayout.RESIZE_MODE_FIT
            it.setShutterBackgroundColor(android.graphics.Color.TRANSPARENT)
            it.isVisible = true
            it.alpha = if (isPlaying && isReadyToShow) 1f else 0f
        },
        modifier = modifier.autoRotate(matchParentSize = true)
    )
}
