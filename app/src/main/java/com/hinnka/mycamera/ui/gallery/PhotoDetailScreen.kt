package com.hinnka.mycamera.ui.gallery

import android.app.Activity
import android.content.Context
import android.graphics.Bitmap
import android.graphics.ColorSpace
import android.net.Uri
import android.os.SystemClock
import android.util.Log
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.FrameLayout
import android.widget.Toast
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.IntentSenderRequest
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.animation.core.*
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.pager.HorizontalPager
import androidx.compose.foundation.pager.rememberPagerState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.input.pointer.PointerEvent
import androidx.compose.ui.input.pointer.PointerEventPass
import androidx.compose.ui.input.pointer.PointerEventType
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.ui.text.font.FontWeight
import com.hinnka.mycamera.R
import androidx.compose.ui.res.painterResource
import com.hinnka.mycamera.gallery.PhotoData
import com.hinnka.mycamera.gallery.PhotoManager
import com.hinnka.mycamera.hdr.UltraHdrWriter
import com.hinnka.mycamera.ui.theme.AccentOrange
import com.hinnka.mycamera.viewmodel.GalleryViewModel
import kotlinx.coroutines.delay
import androidx.media3.exoplayer.ExoPlayer
import androidx.media3.common.MediaItem
import androidx.media3.common.Player
import androidx.media3.ui.PlayerView
import androidx.compose.ui.viewinterop.AndroidView
import androidx.compose.foundation.Image
import androidx.core.view.isVisible
import androidx.media3.ui.AspectRatioFrameLayout
import com.hinnka.mycamera.utils.DeviceUtil
import com.hinnka.mycamera.utils.PLog
import com.hinnka.mycamera.viewmodel.GalleryTab
import me.saket.telephoto.zoomable.ZoomSpec
import me.saket.telephoto.zoomable.ZoomableContentLocation
import me.saket.telephoto.zoomable.rememberZoomableState
import me.saket.telephoto.zoomable.zoomable
import java.io.File
import kotlin.math.min

/**
 * 照片详情界面
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun PhotoDetailScreen(
    viewModel: GalleryViewModel,
    initialIndex: Int = 0,
    photoId: String? = null,
    isExpanded: Boolean = false,
    onBack: () -> Unit = {},
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
    val isSharing by viewModel.isSharing.collectAsState()

    val currentColorSpace = remember { mutableStateOf<ColorSpace?>(null) }
    val currentHasHdr = remember { mutableStateOf(false) }
    val hdrRefreshNonce = remember { mutableStateOf(0L) }
    LaunchedEffect(currentHasHdr.value) {
        if (currentHasHdr.value) {
            hdrRefreshNonce.value = System.nanoTime()
        }
    }

    // Activity Result Launcher for delete confirmation
    val deletePhotoLauncher = rememberLauncherForActivityResult(
        ActivityResultContracts.StartIntentSenderForResult()
    ) { result ->
        if (result.resultCode == Activity.RESULT_OK) {
            // User confirmed deletion, delete internal photo
            viewModel.deletePhotoAfterConfirmation { success ->
                if (success) {
                    onBack()
                }
            }
        } else {
            // User cancelled deletion
            viewModel.clearDeleteRequest()
        }
    }

    val systemDeletePhotoLauncher = rememberLauncherForActivityResult(
        ActivityResultContracts.StartIntentSenderForResult()
    ) { result ->
        if (result.resultCode == Activity.RESULT_OK) {
            viewModel.deleteSystemPhotoAfterConfirmation { success ->
                if (success) {
                    onBack()
                }
            }
        } else {
            viewModel.clearDeleteRequest()
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

    // 同步当前索引，并在快到底部时加载更多系统照片
    LaunchedEffect(pagerState.currentPage, photos.size) {
        viewModel.setCurrentPhoto(pagerState.currentPage)
        currentHasHdr.value = false
        currentColorSpace.value = null

        photos.getOrNull(pagerState.currentPage)?.let { viewModel.prefetchDetailBitmap(it) }
        photos.getOrNull(pagerState.currentPage - 1)?.let { viewModel.prefetchDetailBitmap(it) }
        photos.getOrNull(pagerState.currentPage + 1)?.let { viewModel.prefetchDetailBitmap(it) }

        if (viewModel.selectedTab == GalleryTab.SYSTEM && pagerState.currentPage >= photos.size - 5) {
            viewModel.loadSystemPhotos(reset = false)
        }
    }

    LaunchedEffect(photos.size, isExpanded) {
        if (isExpanded) {
            pagerState.scrollToPage(0)
        }
    }

    // 当 photoId 提供时，确保在照片列表加载后自动跳转到该照片
    LaunchedEffect(photos, photoId) {
        if (photoId != null) {
            val index = photos.indexOfFirst { it.id == photoId }
            if (index != -1 && index != pagerState.currentPage) {
                pagerState.scrollToPage(index)
            }
        }
    }

    val currentPhoto = photos.getOrNull(pagerState.currentPage)

    Scaffold(
        topBar = {
            TopAppBar(
                modifier = Modifier,
                title = {
                    Text(
                        text = "${pagerState.currentPage + 1} / ${photos.size}",
                        color = Color.White
                    )
                },
                navigationIcon = {
                    if (!isExpanded) {
                        IconButton(onClick = onBack) {
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
                    if (currentPhoto != null && viewModel.isRaw(currentPhoto.id)) {
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
                            enabled = !isRefreshing
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
                    if (currentPhoto != null && currentPhoto.isBurstPhoto) {
                        IconButton(onClick = { onViewBurst?.invoke(currentPhoto.id) }) {
                            Icon(
                                imageVector = Icons.Default.BurstMode,
                                contentDescription = "查看连拍照片", // 连拍照片
                                tint = Color.White
                            )
                        }
                    }
                    if (currentPhoto != null && viewModel.canToggleManualHdrEnhance(currentPhoto)) {
                        val hdrEnabled = viewModel.isManualHdrEnhanceEnabled(currentPhoto)
                        TextButton(
                                    onClick = {
                                        viewModel.toggleManualHdrEnhance(currentPhoto) { success ->
                                            if (!success) {
                                                Toast.makeText(context, R.string.hdr_toggle_failed, Toast.LENGTH_SHORT).show()
                                            }
                                        }
                                    }
                        ) {
                            Text(
                                text = stringResource(R.string.hdr_label),
                                color = if (hdrEnabled) AccentOrange else Color.White.copy(alpha = 0.72f),
                                fontWeight = FontWeight.SemiBold
                            )
                        }
                    }
                    IconButton(onClick = { showInfoDialog = true }) {
                        Icon(
                            imageVector = Icons.Default.Info,
                            contentDescription = stringResource(R.string.photo_info),
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
                        .padding(16.dp),
                    horizontalArrangement = Arrangement.SpaceEvenly
                ) {
                    // 分享
                    IconButton(
                        onClick = { currentPhoto?.let { viewModel.sharePhoto(it) } },
                        enabled = !isSharing && !isSaving,
                        modifier = Modifier
                            .size(56.dp)
                            .background(Color.White.copy(alpha = 0.1f), CircleShape)
                    ) {
                        if (isSharing) {
                            CircularProgressIndicator(
                                color = Color.White,
                                modifier = Modifier.size(24.dp),
                                strokeWidth = 2.dp
                            )
                        } else {
                            Icon(
                                imageVector = Icons.Default.Share,
                                contentDescription = stringResource(R.string.share),
                                tint = Color.White
                            )
                        }
                    }

                    // 编辑
                    IconButton(
                        onClick = {
                            viewModel.setCurrentPhoto(pagerState.currentPage)
                            viewModel.enterEditMode()
                            onEdit()
                        },
                        modifier = Modifier
                            .size(56.dp)
                            .background(Color.White.copy(alpha = 0.1f), CircleShape)
                    ) {
                        Icon(
                            imageVector = Icons.Default.Edit,
                            contentDescription = stringResource(R.string.edit),
                            tint = Color.White
                        )
                    }

                    // 导出
                    if (viewModel.selectedTab == GalleryTab.PHOTON || currentPhoto?.relatedPhoto != null) {
                        IconButton(
                            onClick = { currentPhoto?.let { showExportDialog = true } },
                            modifier = Modifier
                                .size(56.dp)
                                .background(Color.White.copy(alpha = 0.1f), CircleShape)
                        ) {
                            if (isSaving) {
                                CircularProgressIndicator(
                                    color = Color.White,
                                    modifier = Modifier.size(24.dp),
                                    strokeWidth = 2.dp
                                )
                            } else {
                                Icon(
                                    imageVector = Icons.Default.Output,
                                    contentDescription = stringResource(R.string.export),
                                    tint = AccentOrange
                                )
                            }
                        }
                    }

                    // 删除
                    IconButton(
                        onClick = { showDeleteDialog = true },
                        modifier = Modifier
                            .size(56.dp)
                            .background(Color.Red.copy(alpha = 0.2f), CircleShape)
                    ) {
                        Icon(
                            imageVector = Icons.Default.Delete,
                            contentDescription = stringResource(R.string.delete),
                            tint = Color.Red
                        )
                    }
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
                            var useNativeImageGestures by remember { mutableStateOf(false) }

                            val gestureModifier = if (useNativeImageGestures) {
                                Modifier.fillMaxSize()
                            } else {
                                Modifier.fillMaxSize().pointerInput(Unit) {
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

                                                // 期间如果出现第二个手指，立即标志并退出
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

                                                // 如果不是多指操作，才根据结果执行逻辑
                                                if (!isMultiTouch && !isMoved) {
                                                    if (upEvent == null) {
                                                        // 确认为长按
                                                        if (photo.isMotionPhoto) {
                                                            isPlaying = true
                                                        } else {
                                                            showOrigin = true
                                                        }
                                                        // 继续监控直到手指抬起，或者变成多指（开始缩放）
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
                                }
                            }

                            Box(modifier = gestureModifier) {
                                ZoomableImage(
                                    photo = photo,
                                    colorSpace = currentColorSpace,
                                    hasHdr = currentHasHdr,
                                    hdrRefreshNonce = hdrRefreshNonce.value,
                                    isActive = page == pagerState.currentPage,
                                    showOrigin = showOrigin,
                                    viewModel = viewModel,
                                    onNativeGestureAvailabilityChange = { available ->
                                        useNativeImageGestures = available
                                    },
                                    onPressAndHoldChange = { pressed ->
                                        if (photo.isMotionPhoto) {
                                            isPlaying = pressed
                                        }
                                    },
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
                                /*val brightness = viewModel.currentBrightness[photo.id]
                                brightness?.let {
                                    Box(
                                        modifier = Modifier
                                            .padding(16.dp)
                                            .align(Alignment.TopEnd)
                                            .background(Color.Black.copy(alpha = 0.5f), RoundedCornerShape(4.dp))
                                            .padding(horizontal = 8.dp, vertical = 4.dp)
                                    ) {
                                        Text(
                                            text = "avg: ${String.format("%.2f", it)}",
                                            color = Color.White,
                                            fontSize = 12.sp,
                                            fontWeight = FontWeight.Bold
                                        )
                                    }
                                }*/
                            }
                        }
                    }
                }
            }
        }
    }

    // 删除确认对话框
    if (showDeleteDialog) {
        var deleteExported by remember { mutableStateOf(false) }

        AlertDialog(
            onDismissRequest = { showDeleteDialog = false },
            title = { Text(stringResource(R.string.delete)) },
            text = {
                Column {
                    Text(stringResource(R.string.delete_confirm))
                    if (viewModel.selectedTab == GalleryTab.PHOTON) {
                        Spacer(modifier = Modifier.height(12.dp))
                        Row(
                            verticalAlignment = Alignment.CenterVertically,
                            modifier = Modifier.clickable { deleteExported = !deleteExported }
                        ) {
                            Checkbox(
                                checked = deleteExported,
                                onCheckedChange = { deleteExported = it },
                                colors = CheckboxDefaults.colors(
                                    checkedColor = Color(0xFFFF6B35),
                                    uncheckedColor = Color.White.copy(alpha = 0.6f)
                                )
                            )
                            Spacer(modifier = Modifier.width(8.dp))
                            Text(
                                text = stringResource(R.string.delete_exported_photos),
                                color = Color.White.copy(alpha = 0.9f),
                                fontSize = 14.sp
                            )
                        }
                    }
                }
            },
            confirmButton = {
                TextButton(
                    onClick = {
                        currentPhoto?.let { photo ->
                            viewModel.requestDeletePhoto(photo, deleteExported)
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

    // 照片信息对话框
    if (showInfoDialog && currentPhoto != null) {
        AlertDialog(
            onDismissRequest = { showInfoDialog = false },
            title = { Text(stringResource(R.string.photo_info)) },
            text = {
                Column {
                    if (viewModel.selectedTab == GalleryTab.SYSTEM) {
                        InfoRow(stringResource(R.string.name), currentPhoto.displayName)
                    }
                    InfoRow(stringResource(R.string.photo_info_date), currentPhoto.getFormattedDate())
                    InfoRow(stringResource(R.string.photo_info_resolution), currentPhoto.getResolution())
//                    InfoRow(stringResource(R.string.photo_info_size), currentPhoto.getFormattedSize())
                    currentPhoto.metadata?.let {
                        InfoRow(stringResource(R.string.photo_info_focal_length), it.focalLength35mm ?: "N/A")
                        InfoRow(stringResource(R.string.photo_info_aperture), it.aperture ?: "N/A")
                        InfoRow(stringResource(R.string.photo_info_iso), it.iso?.toString() ?: "N/A")
                        InfoRow(stringResource(R.string.photo_info_shutter_speed), it.shutterSpeed ?: "N/A")
                        if (DeviceUtil.isChinaFlavor) {
                            InfoRow("LV", "%.2f".format(it.lv))
                            InfoRow("平均亮度", "%.2f".format(viewModel.currentBrightness[currentPhoto.id]))
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

/**
 * 可缩放的图片组件
 * 使用 Telephoto 库支持大尺寸图片查看
 */
@Composable
private fun ZoomableImage(
    photo: PhotoData,
    colorSpace: MutableState<ColorSpace?>,
    hasHdr: MutableState<Boolean>,
    hdrRefreshNonce: Long,
    isActive: Boolean,
    showOrigin: Boolean,
    viewModel: GalleryViewModel,
    onNativeGestureAvailabilityChange: (Boolean) -> Unit,
    onPressAndHoldChange: (Boolean) -> Unit,
    onZoomChange: (Boolean) -> Unit,
    modifier: Modifier = Modifier
) {
    var isLoading by remember { mutableStateOf(true) }
    var imageViewRef by remember { mutableStateOf<HdrZoomImageView?>(null) }
    var previewBitmap by remember { mutableStateOf<Bitmap?>(null) }
    var hdrBitmap by remember { mutableStateOf<Bitmap?>(null) }
    var hdrVisible by remember { mutableStateOf(false) }
    val effectiveShowOrigin = showOrigin
    val maxZoom = remember(photo.width, photo.height) {
        min(photo.width, photo.height).coerceAtLeast(1) / 300f
    }
    val zoomableState = rememberZoomableState(
        zoomSpec = ZoomSpec(maxZoomFactor = maxZoom.coerceAtLeast(2f)),
        autoApplyTransformations = false
    )
    val hdrAlpha by animateFloatAsState(
        targetValue = if (hdrVisible && hdrBitmap != null) 1f else 0f,
        animationSpec = tween(durationMillis = 750, easing = LinearOutSlowInEasing),
        label = "hdrFadeIn"
    )
    val shouldShowLoading = isLoading && previewBitmap == null && hdrBitmap == null
    val contentTransformation = zoomableState.contentTransformation

    LaunchedEffect(zoomableState.zoomFraction) {
        onZoomChange((zoomableState.zoomFraction ?: 0f) > 0.01f)
    }

    LaunchedEffect(previewBitmap, hdrBitmap) {
        val activeBitmap = hdrBitmap ?: previewBitmap
        if (activeBitmap != null) {
            zoomableState.setContentLocation(
                ZoomableContentLocation.scaledInsideAndCenterAligned(
                    androidx.compose.ui.geometry.Size(
                        activeBitmap.width.toFloat(),
                        activeBitmap.height.toFloat()
                    )
                )
            )
        }
    }

    Box(
        modifier = modifier
            .fillMaxSize()
            .zoomable(state = zoomableState),
        contentAlignment = Alignment.Center
    ) {
        // 使用 hashCode() 代替 toJson() 序列化，避免 composition 时做 JSON 序列化
        val metadataHash = remember(photo.metadata, photo.relatedPhoto?.metadata) {
            photo.metadata?.hashCode() ?: photo.relatedPhoto?.metadata?.hashCode() ?: 0
        }

        val refreshKey = viewModel.photoRefreshKeys[photo.id] ?: 0L

        LaunchedEffect(photo.id, metadataHash, effectiveShowOrigin, refreshKey, isActive) {
            suspend fun loadBitmap() {
                val minPreviewDisplayMs = 250L
                isLoading = previewBitmap == null && hdrBitmap == null
                if (effectiveShowOrigin) {
                    hdrVisible = false
                }

                var previewShownAtMs = 0L
                val loadedPreviewBitmap = viewModel.getPreviewBitmap(photo, showOrigin = effectiveShowOrigin)
                if (loadedPreviewBitmap != null) {
                    previewBitmap = loadedPreviewBitmap
                    previewShownAtMs = SystemClock.elapsedRealtime()
                    if (isActive) {
                        colorSpace.value = loadedPreviewBitmap.colorSpace
                        val previewHasHdr = UltraHdrWriter.hasGainmap(loadedPreviewBitmap)
                        hasHdr.value = previewHasHdr
                        PLog.d(
                            "PhotoDetailScreen",
                            "ZoomableImage preview loaded: photo=${photo.id}, active=$isActive, hasHdr=$previewHasHdr, colorSpace=${loadedPreviewBitmap.colorSpace?.name}"
                        )
                    }
                    isLoading = false
                }

                if (loadedPreviewBitmap == null) {
                    if (isActive) {
                        hasHdr.value = false
                    }
                    hdrBitmap = null
                    hdrVisible = false
                    isLoading = true
                    delay(500)
                    loadBitmap()
                    return
                }

                if (!isActive || effectiveShowOrigin) {
                    return
                }

                if (!viewModel.shouldPrioritizeDetailBitmap(photo, showOrigin = effectiveShowOrigin)) {
                    hasHdr.value = UltraHdrWriter.hasGainmap(loadedPreviewBitmap)
                    hdrBitmap = null
                    hdrVisible = false
                    isLoading = false
                    return
                }

                hasHdr.value = false
                val detailBitmap = viewModel.getDetailBitmap(photo, showOrigin = effectiveShowOrigin)
                if (detailBitmap == null) {
                    if (previewBitmap == null && hdrBitmap == null) {
                        delay(500)
                        loadBitmap()
                    }
                    return
                }

                val detailHasHdr = UltraHdrWriter.hasGainmap(detailBitmap)
                if (previewBitmap == null || !detailHasHdr) {
                    previewBitmap = detailBitmap
                }
                colorSpace.value = detailBitmap.colorSpace
                hasHdr.value = detailHasHdr
                PLog.d(
                    "PhotoDetailScreen",
                    "ZoomableImage detail loaded: photo=${photo.id}, active=$isActive, hasHdr=$detailHasHdr, colorSpace=${detailBitmap.colorSpace?.name}"
                )

                if (detailHasHdr) {
                    hdrBitmap = detailBitmap
                    val elapsed = if (previewShownAtMs > 0L) {
                        SystemClock.elapsedRealtime() - previewShownAtMs
                    } else {
                        minPreviewDisplayMs
                    }
                    val remainingDelay = (minPreviewDisplayMs - elapsed).coerceAtLeast(0L)
                    if (remainingDelay > 0L) {
                        delay(remainingDelay)
                    }
                    hdrVisible = true
                } else {
                    hdrBitmap = null
                    hdrVisible = false
                }
                isLoading = false
            }
            loadBitmap()
        }

        previewBitmap?.let { sdrBitmap ->
            AndroidView(
                modifier = Modifier
                    .fillMaxSize()
                    .graphicsLayer {
                        if (contentTransformation.isSpecified) {
                            scaleX = contentTransformation.scale.scaleX
                            scaleY = contentTransformation.scale.scaleY
                            translationX = contentTransformation.offset.x
                            translationY = contentTransformation.offset.y
                            transformOrigin = contentTransformation.transformOrigin
                        }
                    },
                factory = { ctx ->
                    HdrZoomImageView(ctx).apply {
                        imageViewRef = this
                        setBitmap(sdrBitmap)
                    }
                },
                update = { view ->
                    if (hdrBitmap == null) {
                        imageViewRef = view
                        view.setBitmap(sdrBitmap)
                    }
                }
            )
        }

        hdrBitmap?.let { currentHdrBitmap ->
            key(currentHdrBitmap, hasHdr.value, hdrRefreshNonce) {
                AndroidView(
                    modifier = Modifier
                        .fillMaxSize()
                        .graphicsLayer {
                            alpha = hdrAlpha
                            if (contentTransformation.isSpecified) {
                                scaleX = contentTransformation.scale.scaleX
                                scaleY = contentTransformation.scale.scaleY
                                translationX = contentTransformation.offset.x
                                translationY = contentTransformation.offset.y
                                transformOrigin = contentTransformation.transformOrigin
                            }
                        },
                    factory = { ctx ->
                        HdrZoomImageView(ctx).apply {
                            imageViewRef = this
                            setBitmap(currentHdrBitmap)
                        }
                    },
                    update = { view ->
                        imageViewRef = view
                        view.setBitmap(currentHdrBitmap)
                    }
                )
            }
        }

        LaunchedEffect(Unit) {
            onNativeGestureAvailabilityChange(false)
        }

        LaunchedEffect(hasHdr.value, hdrRefreshNonce, imageViewRef, hdrBitmap, hdrVisible) {
            if (isActive && hdrBitmap != null && hdrVisible) {
                withFrameNanos { }
                imageViewRef?.rebindForHdrMode()
                withFrameNanos { }
                imageViewRef?.refreshForHdrMode()
            }
        }

        if (shouldShowLoading) {
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
    photo: PhotoData,
    isPlaying: Boolean,
    viewModel: GalleryViewModel,
    modifier: Modifier = Modifier
) {
    if (!photo.isMotionPhoto) return
    val context = LocalContext.current

    var isReadyToShow by remember(photo.id, isPlaying) { mutableStateOf(false) }

    val exoPlayer = remember(photo.id, isPlaying) {
        val videoFile = viewModel.getMotionPhotoVideo(photo)
        if (videoFile == null || !videoFile.exists()) {
            return@remember null
        }
        ExoPlayer.Builder(context).build().apply {
            setMediaItem(MediaItem.fromUri(Uri.fromFile(videoFile)))
            repeatMode = Player.REPEAT_MODE_ONE
            addListener(object : Player.Listener {
                override fun onRenderedFirstFrame() {
                    isReadyToShow = true
                }
            })
            prepare()
            playWhenReady = isPlaying
        }
    }

    DisposableEffect(exoPlayer) {
        onDispose {
            exoPlayer?.release()
        }
    }

    if (exoPlayer == null) return

    AndroidView(
        factory = {
            LayoutInflater.from(context).inflate(R.layout.view_motion_photo_player, null) as PlayerView
        },
        update = {
            it.player = exoPlayer
            it.resizeMode = AspectRatioFrameLayout.RESIZE_MODE_FIT
            it.isVisible = isPlaying
            it.alpha = if (isReadyToShow) 1f else 0f
        },
        modifier = modifier
    )
}
