package com.hinnka.mycamera.ui.gallery

import android.app.Activity
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.IntentSenderRequest
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.animation.core.animateFloatAsState
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.gestures.*
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.pager.HorizontalPager
import androidx.compose.foundation.pager.rememberPagerState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.Check
import androidx.compose.material.icons.filled.Delete
import androidx.compose.material.icons.filled.Edit
import androidx.compose.material.icons.filled.ImportExport
import androidx.compose.material.icons.filled.Info
import androidx.compose.material.icons.filled.IosShare
import androidx.compose.material.icons.filled.Output
import androidx.compose.material.icons.filled.Save
import androidx.compose.material.icons.filled.Share
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.input.pointer.positionChanged
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.layout.onSizeChanged
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.unit.IntSize
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import coil.compose.AsyncImage
import coil.request.ImageRequest
import com.hinnka.mycamera.R
import com.hinnka.mycamera.gallery.PhotoData
import com.hinnka.mycamera.ui.theme.AccentOrange
import com.hinnka.mycamera.viewmodel.GalleryViewModel

/**
 * 照片详情界面
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun PhotoDetailScreen(
    viewModel: GalleryViewModel,
    initialIndex: Int,
    onBack: () -> Unit,
    onEdit: () -> Unit,
    modifier: Modifier = Modifier
) {
    val photos by viewModel.photos.collectAsState()
    val context = LocalContext.current

    var showDeleteDialog by remember { mutableStateOf(false) }
    var showInfoDialog by remember { mutableStateOf(false) }
    var isZoomed by remember { mutableStateOf(false) }
    var showExportDialog by remember { mutableStateOf(false) }
    var isSaving by remember { mutableStateOf(false) }
    val isSharing by viewModel.isSharing.collectAsState()

    // Activity Result Launcher for delete confirmation
    val deletePhotoLauncher = rememberLauncherForActivityResult(
        ActivityResultContracts.StartIntentSenderForResult()
    ) { result ->
        if (result.resultCode == Activity.RESULT_OK) {
            // User confirmed deletion, delete internal photo
            viewModel.deletePhotoAfterConfirmation { success ->
                if (success && photos.isEmpty()) {
                    onBack()
                }
            }
        } else {
            // User cancelled deletion
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

    val pagerState = rememberPagerState(
        initialPage = initialIndex,
        pageCount = { photos.size }
    )
    
    // 同步当前索引
    LaunchedEffect(pagerState.currentPage) {
        viewModel.setCurrentPhoto(pagerState.currentPage)
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
                    IconButton(onClick = onBack) {
                        Icon(
                            imageVector = Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = stringResource(R.string.back),
                            tint = Color.White
                        )
                    }
                },
                actions = {
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
                modifier = Modifier.fillMaxWidth()
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
                // 没有照片时返回
                LaunchedEffect(Unit) {
                    onBack()
                }
            } else {
                HorizontalPager(
                    state = pagerState,
                    modifier = Modifier.fillMaxSize(),
                    userScrollEnabled = !isZoomed
                ) { page ->
                    ZoomableImage(
                        photo = photos[page],
                        viewModel = viewModel,
                        isZoomed = isZoomed && page == pagerState.currentPage,
                        onZoomChange = { zoomed ->
                            if (page == pagerState.currentPage) {
                                isZoomed = zoomed
                            }
                        },
                        modifier = Modifier.fillMaxSize()
                    )
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
                                    onBack()
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
                    InfoRow(stringResource(R.string.photo_info_date), currentPhoto.getFormattedDate())
                    InfoRow(stringResource(R.string.photo_info_resolution), currentPhoto.getResolution())
                    InfoRow(stringResource(R.string.photo_info_size), currentPhoto.getFormattedSize())
                    currentPhoto.metadata?.let {
                        InfoRow(stringResource(R.string.photo_info_focal_length), it.focalLength35mm ?: "N/A")
                        InfoRow(stringResource(R.string.photo_info_aperture), it.aperture ?: "N/A")
                        InfoRow(stringResource(R.string.photo_info_iso), it.iso?.toString() ?: "N/A")
                        InfoRow(stringResource(R.string.photo_info_shutter_speed), it.shutterSpeed ?: "N/A")
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
            .padding(vertical = 4.dp)
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
 * 支持双击缩放和双指缩放，未放大时允许 HorizontalPager 滑动
 */
@Composable
private fun ZoomableImage(
    photo: PhotoData,
    viewModel: GalleryViewModel,
    isZoomed: Boolean,
    onZoomChange: (Boolean) -> Unit,
    modifier: Modifier = Modifier
) {
    val context = LocalContext.current
    
    key(photo.id) {
        var scale by remember { mutableFloatStateOf(1f) }
        var offsetX by remember { mutableFloatStateOf(0f) }
        var offsetY by remember { mutableFloatStateOf(0f) }
        
        // 用于计算边界的容器和图片实际尺寸
        var containerSize by remember { mutableStateOf(IntSize.Zero) }
        
        val animatedScale by animateFloatAsState(targetValue = scale, label = "scale")
        
        LaunchedEffect(scale) {
            onZoomChange(scale > 1.01f)
        }

        // 计算当前缩放下的位移边界
        fun updateOffset(panX: Float, panY: Float, currentScale: Float) {
            if (photo.width <= 0 || photo.height <= 0 || containerSize.width <= 0 || containerSize.height <= 0) {
                offsetX += panX
                offsetY += panY
                return
            }

            // 在 ContentScale.Fit 模式下，图片的显示尺寸
            val contentAspectRatio = photo.width.toFloat() / photo.height
            val containerAspectRatio = containerSize.width.toFloat() / containerSize.height
            
            val (displayW, displayH) = if (contentAspectRatio > containerAspectRatio) {
                containerSize.width.toFloat() to (containerSize.width.toFloat() / contentAspectRatio)
            } else {
                (containerSize.height.toFloat() * contentAspectRatio) to containerSize.height.toFloat()
            }

            val zoomedW = displayW * currentScale
            val zoomedH = displayH * currentScale

            // 只有当放大后的尺寸大于容器尺寸时，才允许在该方向上位移
            val maxOffsetX = if (zoomedW > containerSize.width) (zoomedW - containerSize.width) / 2f else 0f
            val maxOffsetY = if (zoomedH > containerSize.height) (zoomedH - containerSize.height) / 2f else 0f

            offsetX = (offsetX + panX).coerceIn(-maxOffsetX, maxOffsetX)
            offsetY = (offsetY + panY).coerceIn(-maxOffsetY, maxOffsetY)
        }
        
        Box(
            modifier = modifier
                .onSizeChanged { containerSize = it }
                .pointerInput(Unit) {
                    detectTapGestures(
                        onDoubleTap = {
                            if (scale > 1f) {
                                scale = 1f
                                offsetX = 0f
                                offsetY = 0f
                            } else {
                                scale = 2.5f
                            }
                        }
                    )
                }
                .pointerInput(photo.id) {
                    awaitEachGesture {
                        awaitFirstDown(requireUnconsumed = false)
                        do {
                            val event = awaitPointerEvent()
                            val canceled = event.changes.any { it.isConsumed }
                            if (!canceled) {
                                val zoomChange = event.calculateZoom()
                                val panChange = event.calculatePan()
                                val pointerCount = event.changes.size

                                // 决定是否消费并处理当前手势
                                // 1. 如果是多指（正在缩放）
                                // 2. 如果是单指但图片已经放大（正在平移）
                                if (pointerCount > 1 || scale > 1f) {
                                    val newScale = (scale * zoomChange).coerceIn(1f, 5f)
                                    
                                    if (newScale <= 1.01f && zoomChange < 1f) {
                                        scale = 1f
                                        offsetX = 0f
                                        offsetY = 0f
                                    } else {
                                        scale = newScale
                                        updateOffset(panChange.x, panChange.y, newScale)
                                    }
                                    
                                    // 消费事件防止 Pager 滑动
                                    event.changes.forEach { if (it.positionChanged()) it.consume() }
                                }
                            }
                        } while (event.changes.any { it.pressed })
                    }
                },
            contentAlignment = Alignment.Center
        ) {
            AsyncImage(
                model = ImageRequest.Builder(context)
                    .data(photo.previewUri)
                    .crossfade(true)
                    .transformations(viewModel.getPhotoTransformation(photo))
                    .build(),
                contentDescription = photo.displayName,
                contentScale = ContentScale.Fit,
                modifier = Modifier
                    .fillMaxSize()
                    .graphicsLayer {
                        scaleX = animatedScale
                        scaleY = animatedScale
                        translationX = offsetX
                        translationY = offsetY
                    }
            )
        }
    }
}
