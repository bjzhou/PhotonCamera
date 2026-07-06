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
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.IntentSenderRequest
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.animation.core.*
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.horizontalScroll
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
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.input.pointer.PointerEvent
import androidx.compose.ui.input.pointer.PointerEventPass
import androidx.compose.ui.input.pointer.PointerEventType
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
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
import com.hinnka.mycamera.lut.creator.AiPhotoEvaluation
import com.hinnka.mycamera.lut.isVideoTransformerExportSupported
import com.hinnka.mycamera.lut.VideoLutEffect
import com.hinnka.mycamera.ui.camera.autoRotate
import com.hinnka.mycamera.ui.components.CustomSlider
import com.hinnka.mycamera.ui.components.PaymentDialog
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
    val isVideoExporting = viewModel.isVideoExporting
    val videoExportProgress = viewModel.videoExportProgress
    var showVideoExportConfirmDialog by remember { mutableStateOf(false) }
    val isSharing by viewModel.isSharing.collectAsState()
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

        repeat(20) {
            val resolvedSize = withContext(Dispatchers.IO) {
                resolveCurrentMediaSize(context, photo)
            }
            if (resolvedSize > 0L) {
                displayPhotoSize = resolvedSize
                return@LaunchedEffect
            }
            delay(300L)
        }
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
            Surface(
                color = Color.Black.copy(alpha = 0.8f),
                modifier = Modifier.fillMaxWidth().navigationBarsPadding()
            ) {
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(horizontal = 16.dp, vertical = 12.dp),
                    horizontalArrangement = Arrangement.SpaceEvenly
                ) {
                    // AI 评分
                    if (currentPhoto?.isImage == true) {
                        GalleryActionItem(
                            icon = AppIcons.AutoAwesome,
                            text = stringResource(R.string.gallery_ai_analysis),
                            contentColor = AccentOrange,
                            containerColor = AccentOrange.copy(alpha = 0.15f),
                            onClick = { showAiScoreSheet = true },
                        )
                    }

                    // 编辑
                    if (currentPhoto?.isImage == true || currentPhoto?.isVideo == true) {
                        GalleryActionItem(
                            icon = Icons.Default.Edit,
                            text = stringResource(R.string.edit),
                            isLoading = preparingEditPhotoId == currentPhoto.id,
                            onClick = {
                                viewModel.prepareCurrentPhotoForEdit(
                                    index = pagerState.currentPage,
                                    onReady = onEdit,
                                    onFailure = {
                                        Toast.makeText(context, R.string.gallery_prepare_edit_failed, Toast.LENGTH_SHORT).show()
                                    }
                                )
                            },
                        )
                    }

                    // 删除
                    GalleryActionItem(
                        icon = Icons.Default.Delete,
                        text = stringResource(R.string.delete),
                        contentColor = Color.Red,
                        containerColor = Color.Red.copy(alpha = 0.2f),
                        onClick = { showDeleteDialog = true },
                    )

                    // 更多
                    GalleryActionItem(
                        icon = AppIcons.MoreHoriz,
                        text = stringResource(R.string.more_options),
                        onClick = { showMoreSheet = true },
                    )
                }
            }
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
                    currentPhoto.metadata?.let {
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
        @OptIn(ExperimentalMaterial3Api::class)
        ModalBottomSheet(
            onDismissRequest = { showMoreSheet = false },
            containerColor = Color(0xFF1E1E1E),
            dragHandle = { BottomSheetDefaults.DragHandle(color = Color.White.copy(alpha = 0.4f)) }
        ) {
            Column(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(bottom = 32.dp, start = 24.dp, end = 24.dp)
            ) {
                Text(
                    text = stringResource(R.string.more_options),
                    color = Color.White,
                    fontSize = 18.sp,
                    fontWeight = FontWeight.Bold,
                    modifier = Modifier.padding(bottom = 24.dp)
                )
                
                Row(
                    modifier = Modifier.fillMaxWidth().horizontalScroll(rememberScrollState()),
                    horizontalArrangement = Arrangement.spacedBy(16.dp)
                ) {
                    // 分享
                    GalleryActionItem(
                        icon = Icons.Default.Share,
                        text = stringResource(R.string.share),
                        isLoading = isSharing,
                        enabled = !isSharing && !isSaving,
                        onClick = {
                            showMoreSheet = false
                            viewModel.sharePhoto(currentPhoto)
                        }
                    )

                    // 导出
                    if (currentPhoto.isImage && (viewModel.selectedTab == GalleryTab.PHOTON || currentPhoto.relatedPhoto != null)) {
                        GalleryActionItem(
                            icon = AppIcons.Output,
                            text = stringResource(R.string.export),
                            isLoading = isSaving,
                            onClick = {
                                showExportDialog = true
                            }
                        )
                    }

                    // 视频导出按钮（仅视频）
                    if (currentPhoto.isVideo) {
                        GalleryActionItem(
                            icon = AppIcons.Output,
                            text = if (isVideoExporting && videoExportProgress > 0) "$videoExportProgress%" else stringResource(R.string.export),
                            isLoading = isVideoExporting,
                            onClick = {
                                if (isVideoTransformerExportSupported()) {
                                    showVideoExportConfirmDialog = true
                                } else {
                                    Toast.makeText(context, R.string.export_video_requires_android12, Toast.LENGTH_SHORT).show()
                                }
                            }
                        )
                    }

                    // DNG
                    if (isCurrentRawPhoto) {
                        GalleryActionItem(
                            iconText = "DNG",
                            text = "DNG",
                            isLoading = isExportingDng,
                            enabled = !isSaving && !isExportingDng,
                            onClick = {
                                showMoreSheet = false
                                isExportingDng = true
                                viewModel.exportDng(currentPhoto) { success ->
                                    isExportingDng = false
                                    if (success) {
                                        Toast.makeText(context, R.string.export_dng_success, Toast.LENGTH_SHORT).show()
                                    } else {
                                        Toast.makeText(context, R.string.export_dng_failed, Toast.LENGTH_SHORT).show()
                                    }
                                }
                                }
                        )
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

    LaunchedEffect(photo.id, requestToken, isPurchased) {
        if (!isPurchased) return@LaunchedEffect
        uiState = AiEvaluationUiState.Loading
        uiState = viewModel.evaluatePhotoWithAi(photo).fold(
            onSuccess = { AiEvaluationUiState.Success(it) },
            onFailure = { AiEvaluationUiState.Error(it) }
        )
    }

    val evaluation = (uiState as? AiEvaluationUiState.Success)?.evaluation
    val score = evaluation?.overallScore ?: 0
    val (color, rankText) = when {
        score >= 90 -> Color(0xFFFFD700) to stringResource(R.string.gallery_ai_rank_excellent_plus)
        score >= 80 -> Color(0xFF4CAF50) to stringResource(R.string.gallery_ai_rank_excellent)
        score >= 70 -> Color(0xFF8BC34A) to stringResource(R.string.gallery_ai_rank_good)
        score >= 60 -> Color.White.copy(alpha = 0.8f) to stringResource(R.string.gallery_ai_rank_pass)
        else -> Color(0xFFFF5252) to stringResource(R.string.gallery_ai_rank_needs_work)
    }

    ModalBottomSheet(
        onDismissRequest = onDismissRequest,
        sheetState = sheetState,
        containerColor = Color(0x881E1E1E),
        dragHandle = { BottomSheetDefaults.DragHandle(color = Color.White.copy(alpha = 0.4f)) }
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .verticalScroll(rememberScrollState())
                .padding(bottom = 32.dp, start = 24.dp, end = 24.dp),
            horizontalAlignment = Alignment.CenterHorizontally
        ) {
            Text(
                text = stringResource(R.string.gallery_ai_quality_title),
                color = Color.White,
                fontSize = 18.sp,
                fontWeight = FontWeight.Bold,
                modifier = Modifier.padding(bottom = 24.dp)
            )

            if (!isPurchased && openAIKey.isNullOrBlank()) {
                Text(
                    text = stringResource(R.string.gallery_ai_premium_required),
                    color = Color.White.copy(alpha = 0.72f),
                    fontSize = 14.sp,
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

            Box(
                contentAlignment = Alignment.Center,
                modifier = Modifier.size(160.dp)
            ) {
                CircularProgressIndicator(
                    progress = { 1f },
                    modifier = Modifier.fillMaxSize(),
                    color = Color.White.copy(alpha = 0.1f),
                    strokeWidth = 12.dp,
                    strokeCap = androidx.compose.ui.graphics.StrokeCap.Round
                )
                
                val animatedProgress by animateFloatAsState(
                    targetValue = score / 100f,
                    animationSpec = tween(1500, easing = FastOutSlowInEasing),
                    label = "progress"
                )
                val animatedScore by animateIntAsState(
                    targetValue = score,
                    animationSpec = tween(1500, easing = FastOutSlowInEasing),
                    label = "score"
                )

                CircularProgressIndicator(
                    progress = { animatedProgress },
                    modifier = Modifier.fillMaxSize(),
                    color = color,
                    strokeWidth = 12.dp,
                    strokeCap = androidx.compose.ui.graphics.StrokeCap.Round
                )
                
                Column(horizontalAlignment = Alignment.CenterHorizontally) {
                    Text(
                        text = animatedScore.toString(),
                        color = color,
                        fontSize = 48.sp,
                        fontWeight = FontWeight.Bold
                    )
                    Text(
                        text = rankText,
                        color = color.copy(alpha = 0.8f),
                        fontSize = 14.sp
                    )
                }
            }

            Spacer(modifier = Modifier.height(32.dp))

            when (val state = uiState) {
                AiEvaluationUiState.Loading -> {
                    Spacer(modifier = Modifier.height(32.dp))
                    CircularProgressIndicator(
                        color = AccentOrange,
                        modifier = Modifier.size(28.dp),
                        strokeWidth = 3.dp
                    )
                    Spacer(modifier = Modifier.height(12.dp))
                    Text(
                        text = stringResource(R.string.gallery_ai_analyzing),
                        color = Color.White.copy(alpha = 0.7f),
                        fontSize = 14.sp
                    )
                }

                is AiEvaluationUiState.Error -> {
                    Spacer(modifier = Modifier.height(32.dp))
                    Text(
                        text = state.error.toString(),
                        color = Color.White.copy(alpha = 0.75f),
                        fontSize = 14.sp
                    )
                    Spacer(modifier = Modifier.height(12.dp))
                    TextButton(onClick = { requestToken += 1 }) {
                        Text(stringResource(R.string.lut_creator_try_again), color = AccentOrange)
                    }
                }

                is AiEvaluationUiState.Success -> {
                    Spacer(modifier = Modifier.height(24.dp))

                    if (state.evaluation.summary.isNotBlank()) {
                        Text(
                            text = state.evaluation.summary,
                            color = Color.White.copy(alpha = 0.82f),
                            fontSize = 14.sp,
                            modifier = Modifier.fillMaxWidth()
                        )
                        Spacer(modifier = Modifier.height(16.dp))
                    }

                    val dimensions = listOf(
                        stringResource(R.string.gallery_ai_element_impact) to state.evaluation.scores.impact,
                        stringResource(R.string.gallery_ai_element_technical_excellence) to state.evaluation.scores.technicalExcellence,
                        stringResource(R.string.gallery_ai_element_creativity) to state.evaluation.scores.creativity,
                        stringResource(R.string.gallery_ai_element_style) to state.evaluation.scores.style,
                        stringResource(R.string.gallery_ai_element_composition) to state.evaluation.scores.composition,
                        stringResource(R.string.gallery_ai_element_presentation) to state.evaluation.scores.presentation,
                        stringResource(R.string.gallery_ai_element_color_balance) to state.evaluation.scores.colorBalance,
                        stringResource(R.string.gallery_ai_element_center_of_interest) to state.evaluation.scores.centerOfInterest,
                        stringResource(R.string.gallery_ai_element_lighting) to state.evaluation.scores.lighting,
                        stringResource(R.string.gallery_ai_element_subject_matter) to state.evaluation.scores.subjectMatter,
                        stringResource(R.string.gallery_ai_element_technique) to state.evaluation.scores.technique,
                        stringResource(R.string.gallery_ai_element_storytelling) to state.evaluation.scores.storytelling
                    )
                    dimensions.forEach { (label, value) ->
                        AiScoreDimensionRow(
                            label = label,
                            value = value,
                            color = aiScoreColor(value)
                        )
                    }
                }
            }
        }
    }
}

@Composable
private fun AiScoreDimensionRow(
    label: String,
    value: Int,
    color: Color
) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .padding(vertical = 8.dp),
        verticalAlignment = Alignment.CenterVertically
    ) {
        Text(
            text = label,
            color = Color.White.copy(alpha = 0.7f),
            fontSize = 12.sp,
            modifier = Modifier.width(128.dp)
        )

        Box(
            modifier = Modifier
                .weight(1f)
                .height(8.dp)
                .background(Color.White.copy(alpha = 0.1f), CircleShape)
        ) {
            val animValue by animateFloatAsState(
                targetValue = value.coerceIn(0, 100) / 100f,
                animationSpec = tween(1000, delayMillis = 500, easing = FastOutSlowInEasing),
                label = "dimen"
            )
            Box(
                modifier = Modifier
                    .fillMaxHeight()
                    .fillMaxWidth(animValue)
                    .background(color.copy(alpha = 0.8f), CircleShape)
            )
        }

        Text(
            text = value.coerceIn(0, 100).toString(),
            color = color,
            fontSize = 14.sp,
            modifier = Modifier
                .width(40.dp)
                .padding(start = 8.dp)
        )
    }
}

private sealed class AiEvaluationUiState {
    object Loading : AiEvaluationUiState()
    data class Success(val evaluation: AiPhotoEvaluation) : AiEvaluationUiState()
    data class Error(val error: Throwable) : AiEvaluationUiState()
}

private fun aiScoreColor(score: Int): Color =
    when {
        score >= 90 -> Color(0xFFFFD700)
        score >= 80 -> Color(0xFF4CAF50)
        score >= 70 -> Color(0xFF8BC34A)
        score >= 60 -> Color.White.copy(alpha = 0.8f)
        else -> Color(0xFFFF5252)
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

@Composable
private fun GalleryActionItem(
    text: String,
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
    icon: ImageVector? = null,
    iconText: String? = null,
    enabled: Boolean = true,
    contentColor: Color = Color.White,
    containerColor: Color = Color.White.copy(alpha = 0.1f),
    isLoading: Boolean = false
) {
    Column(
        horizontalAlignment = Alignment.CenterHorizontally,
        modifier = modifier
            .clip(RoundedCornerShape(8.dp))
            .clickable(enabled = enabled && !isLoading, onClick = onClick)
            .padding(horizontal = 8.dp, vertical = 6.dp)
            .alpha(if (enabled) 1f else 0.5f)
    ) {
        Box(
            modifier = Modifier
                .size(52.dp)
                .background(containerColor, CircleShape)
                .autoRotate(),
            contentAlignment = Alignment.Center
        ) {
            if (isLoading) {
                CircularProgressIndicator(
                    color = contentColor,
                    modifier = Modifier.size(24.dp),
                    strokeWidth = 2.dp
                )
            } else if (icon != null) {
                Icon(
                    imageVector = icon,
                    contentDescription = text,
                    tint = contentColor,
                    modifier = Modifier.size(24.dp)
                )
            } else if (iconText != null) {
                Text(
                    text = iconText,
                    color = contentColor,
                    fontSize = 14.sp,
                    fontWeight = FontWeight.Bold
                )
            }
        }
        Spacer(modifier = Modifier.height(6.dp))
        Text(
            text = text,
            color = contentColor.copy(alpha = 0.9f),
            fontSize = 12.sp,
            maxLines = 1
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
            suspend fun loadBitmap() {
                isLoading = bitmap == null
                bitmap = viewModel.getPreviewBitmap(displayPhoto, showOrigin = showOrigin,
                    ignoreDenoise = !isSettledActive, maxEdge = if (isSettledActive) 4096 else 1024)
                if (bitmap == null) {
                    delay(500)
                    loadBitmap()
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
            loadBitmap()
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
                    .padding(16.dp)
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
