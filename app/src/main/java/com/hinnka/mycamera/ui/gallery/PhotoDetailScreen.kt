package com.hinnka.mycamera.ui.gallery

import android.app.Activity
import android.graphics.Bitmap
import android.widget.Toast
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.IntentSenderRequest
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
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
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import coil.request.ImageRequest
import com.hinnka.mycamera.R
import androidx.compose.ui.layout.ContentScale
import me.saket.telephoto.zoomable.coil.ZoomableAsyncImage
import me.saket.telephoto.zoomable.rememberZoomableImageState
import me.saket.telephoto.zoomable.rememberZoomableState
import com.hinnka.mycamera.gallery.PhotoData
import com.hinnka.mycamera.ui.theme.AccentOrange
import com.hinnka.mycamera.viewmodel.GalleryViewModel
import me.saket.telephoto.zoomable.ZoomSpec

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
                        ZoomableImage(
                            photo = photo,
                            viewModel = viewModel,
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
                    InfoRow(stringResource(R.string.photo_info_date), currentPhoto.getFormattedDate())
                    InfoRow(stringResource(R.string.photo_info_resolution), currentPhoto.getResolution())
//                    InfoRow(stringResource(R.string.photo_info_size), currentPhoto.getFormattedSize())
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
 * 使用 Telephoto 库支持大尺寸图片查看
 */
@Composable
private fun ZoomableImage(
    photo: PhotoData,
    viewModel: GalleryViewModel,
    onZoomChange: (Boolean) -> Unit,
    modifier: Modifier = Modifier
) {
    val context = LocalContext.current

    key(photo.id) {
        var isLoading by remember { mutableStateOf(true) }
        val zoomableState = rememberZoomableImageState(
            zoomableState = rememberZoomableState(zoomSpec = ZoomSpec(maxZoomFactor = 10f))
        )

        LaunchedEffect(zoomableState.zoomableState.zoomFraction) {
            onZoomChange((zoomableState.zoomableState.zoomFraction ?: 0f) > 0.01f)
        }

        Box(
            modifier = modifier.fillMaxSize(),
            contentAlignment = Alignment.Center
        ) {
            // 使用 remember 缓存 transformation 和 ImageRequest，避免重组时重新创建导致图片闪烁
            // 使用 metadata 的内容 hash 作为 key，确保编辑后能正确刷新
            val metadataHash = remember(photo.metadata) {
                photo.metadata?.toJson()?.hashCode() ?: 0
            }

            var bitmap by remember { mutableStateOf<Bitmap?>(null) }

            LaunchedEffect(photo.id, metadataHash) {
                bitmap = viewModel.getPreviewBitmap(photo)
            }

            if (bitmap != null) {
                val imageModel = remember(photo.id, metadataHash) {
                    ImageRequest.Builder(context)
                        .data(bitmap)
                        .crossfade(true) // 禁用交叉淡入淡出，避免缩放时的抖动
                        .listener(
                            onStart = { isLoading = true },
                            onSuccess = { _, _ -> isLoading = false },
                            onError = { _, _ -> isLoading = false }
                        )
                        .build()
                }

                ZoomableAsyncImage(
                    model = imageModel,
                    contentDescription = photo.displayName,
                    contentScale = ContentScale.Fit,
                    state = zoomableState,
                    modifier = Modifier.fillMaxSize()
                )
            }

            if (isLoading || bitmap == null) {
                CircularProgressIndicator(
                    color = AccentOrange,
                    modifier = Modifier.size(48.dp)
                )
            }
        }
    }
}
