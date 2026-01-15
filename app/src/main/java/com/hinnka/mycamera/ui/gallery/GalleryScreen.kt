package com.hinnka.mycamera.ui.gallery

import android.app.Activity
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.IntentSenderRequest
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.animation.AnimatedVisibility
import androidx.compose.animation.fadeIn
import androidx.compose.animation.fadeOut
import androidx.compose.animation.slideInVertically
import androidx.compose.animation.slideOutVertically
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.ExperimentalFoundationApi
import androidx.compose.foundation.combinedClickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.grid.GridCells
import androidx.compose.foundation.lazy.grid.LazyVerticalGrid
import androidx.compose.foundation.lazy.grid.items
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.CheckCircle
import androidx.compose.material.icons.filled.Close
import androidx.compose.material.icons.filled.Delete
import androidx.compose.material.icons.filled.RadioButtonUnchecked
import androidx.compose.material.icons.filled.SelectAll
import androidx.compose.material.icons.filled.Share
import androidx.compose.material.icons.filled.AddPhotoAlternate
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import coil.compose.AsyncImage
import coil.request.ImageRequest
import com.hinnka.mycamera.R
import com.hinnka.mycamera.gallery.PhotoData
import com.hinnka.mycamera.ui.camera.autoRotate
import com.hinnka.mycamera.ui.theme.AccentOrange
import com.hinnka.mycamera.viewmodel.GalleryViewModel

/**
 * 相册浏览界面
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun GalleryScreen(
    viewModel: GalleryViewModel,
    onBack: () -> Unit,
    onPhotoClick: (Int) -> Unit,
    modifier: Modifier = Modifier
) {
    val photos by viewModel.photos.collectAsState()
    val isLoading by viewModel.isLoading.collectAsState()
    val isSharing by viewModel.isSharing.collectAsState()
    val isSelectionMode = viewModel.isSelectionMode
    val selectedPhotos = viewModel.selectedPhotos

    val launcher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.GetContent()
    ) { uri ->
        uri?.let { viewModel.importPhoto(it) }
    }

    // Activity Result Launcher for batch delete confirmation
    val batchDeleteLauncher = rememberLauncherForActivityResult(
        ActivityResultContracts.StartIntentSenderForResult()
    ) { result ->
        if (result.resultCode == Activity.RESULT_OK) {
            // User confirmed deletion, delete internal photos
            viewModel.deleteBatchPhotosAfterConfirmation()
        } else {
            // User cancelled deletion
            viewModel.clearBatchDeleteRequest()
        }
    }

    // Monitor batchDeletePendingIntent and launch system delete dialog
    LaunchedEffect(viewModel.batchDeletePendingIntent) {
        viewModel.batchDeletePendingIntent?.let { pendingIntent ->
            try {
                batchDeleteLauncher.launch(
                    IntentSenderRequest.Builder(pendingIntent.intentSender).build()
                )
            } catch (e: Exception) {
                // Failed to launch, clear the request
                viewModel.clearBatchDeleteRequest()
            }
        }
    }

    var showDeleteDialog by remember { mutableStateOf(false) }
    
    // 延迟加载照片列表，避免与跳转动画冲突导致卡顿
    LaunchedEffect(Unit) {
        kotlinx.coroutines.delay(500) // 等待跳转动画完成
        viewModel.loadPhotos()
    }
    
    Scaffold(
        topBar = {
            TopAppBar(
                modifier = Modifier,
                title = {
                    if (isSelectionMode) {
                        Text(
                            text = stringResource(R.string.items_selected, selectedPhotos.size),
                            color = Color.White
                        )
                    } else {
                        Text(
                            text = stringResource(R.string.gallery),
                            color = Color.White
                        )
                    }
                },
                navigationIcon = {
                    IconButton(onClick = {
                        if (isSelectionMode) {
                            viewModel.exitSelectionMode()
                        } else {
                            onBack()
                        }
                    }) {
                        Icon(
                            imageVector = if (isSelectionMode) Icons.Default.Close else Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = stringResource(R.string.back),
                            tint = Color.White
                        )
                    }
                },
                actions = {
                    if (isSelectionMode) {
                        IconButton(onClick = { viewModel.toggleSelectAll() }) {
                            Icon(
                                imageVector = Icons.Default.SelectAll,
                                contentDescription = stringResource(R.string.select_all),
                                tint = Color.White
                            )
                        }
                    } else {
                        IconButton(onClick = { launcher.launch("image/*") }) {
                            Icon(
                                imageVector = Icons.Default.AddPhotoAlternate,
                                contentDescription = stringResource(R.string.import_photo),
                                tint = Color.White
                            )
                        }
                    }
                },
                colors = TopAppBarDefaults.topAppBarColors(
                    containerColor = Color(0xFF434A5D)
                )
            )
        },
        bottomBar = {
            // 多选模式下显示操作栏
            AnimatedVisibility(
                visible = isSelectionMode && selectedPhotos.isNotEmpty(),
                enter = slideInVertically(initialOffsetY = { it }) + fadeIn(),
                exit = slideOutVertically(targetOffsetY = { it }) + fadeOut()
            ) {
                Surface(
                    color = Color(0xFF1A1A1A),
                    modifier = Modifier.fillMaxWidth()
                ) {
                    Row(
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(16.dp),
                        horizontalArrangement = Arrangement.SpaceEvenly
                    ) {
                        // 删除按钮
                        Column(
                            horizontalAlignment = Alignment.CenterHorizontally,
                            modifier = Modifier.clickable { showDeleteDialog = true }
                        ) {
                            Icon(
                                imageVector = Icons.Default.Delete,
                                contentDescription = stringResource(R.string.delete),
                                tint = Color.White,
                                modifier = Modifier.size(28.dp)
                            )
                            Spacer(modifier = Modifier.height(4.dp))
                            Text(
                                text = stringResource(R.string.delete),
                                color = Color.White,
                                fontSize = 12.sp
                            )
                        }
                        
                        // 分享按钮
                        Column(
                            horizontalAlignment = Alignment.CenterHorizontally,
                            modifier = Modifier.clickable(enabled = !isSharing) { viewModel.shareSelectedPhotos() }
                        ) {
                            if (isSharing) {
                                CircularProgressIndicator(
                                    color = Color.White,
                                    modifier = Modifier.size(28.dp),
                                    strokeWidth = 2.dp
                                )
                            } else {
                                Icon(
                                    imageVector = Icons.Default.Share,
                                    contentDescription = stringResource(R.string.share),
                                    tint = Color.White,
                                    modifier = Modifier.size(28.dp)
                                )
                            }
                            Spacer(modifier = Modifier.height(4.dp))
                            Text(
                                text = stringResource(R.string.share),
                                color = Color.White,
                                fontSize = 12.sp
                            )
                        }
                    }
                }
            }
        },
        containerColor = Color(0xFF434A5D),
        modifier = modifier
    ) { paddingValues ->
        Box(
            modifier = Modifier
                .fillMaxSize()
                .padding(paddingValues)
        ) {
            if (isLoading) {
                CircularProgressIndicator(
                    color = AccentOrange,
                    modifier = Modifier.align(Alignment.Center)
                )
            } else if (photos.isEmpty()) {
                // 空状态
                Column(
                    modifier = Modifier.align(Alignment.Center),
                    horizontalAlignment = Alignment.CenterHorizontally
                ) {
                    Text(
                        text = stringResource(R.string.no_photos),
                        color = Color.White.copy(alpha = 0.6f),
                        fontSize = 16.sp,
                        textAlign = TextAlign.Center
                    )
                }
            } else {
                // 照片网格
                LazyVerticalGrid(
                    columns = GridCells.Fixed(3),
                    contentPadding = PaddingValues(2.dp),
                    modifier = Modifier.fillMaxSize()
                ) {
                    items(
                        items = photos,
                        key = { it.id }
                    ) { photo ->
                        val index = photos.indexOf(photo)
                        PhotoGridItem(
                            photo = photo,
                            viewModel = viewModel,
                            isSelected = selectedPhotos.contains(photo),
                            isSelectionMode = isSelectionMode,
                            onClick = {
                                if (isSelectionMode) {
                                    viewModel.togglePhotoSelection(photo)
                                } else {
                                    viewModel.setCurrentPhoto(index)
                                    onPhotoClick(index)
                                }
                            },
                            onLongClick = {
                                if (!isSelectionMode) {
                                    viewModel.enterSelectionMode()
                                }
                                viewModel.togglePhotoSelection(photo)
                            }
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
                    Text(
                        text = stringResource(R.string.delete_multiple_confirm, selectedPhotos.size)
                    )
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
                        viewModel.deleteSelectedPhotos(deleteExported)
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
}

/**
 * 照片网格项
 */
@OptIn(ExperimentalFoundationApi::class)
@Composable
private fun PhotoGridItem(
    photo: PhotoData,
    viewModel: GalleryViewModel,
    isSelected: Boolean,
    isSelectionMode: Boolean,
    onClick: () -> Unit,
    onLongClick: () -> Unit
) {
    val context = LocalContext.current
    
    Box(
        modifier = Modifier
            .aspectRatio(1f)
            .padding(1.dp)
            .clip(RoundedCornerShape(4.dp))
            .background(Color(0xFF1A1A1A))
            .combinedClickable(
                onClick = onClick,
                onLongClick = onLongClick
            )
            .autoRotate()
    ) {
        // 照片缩略图
        AsyncImage(
            model = ImageRequest.Builder(context)
                .data(photo.thumbnailUri)
                .crossfade(true)
                .transformations(viewModel.getPhotoTransformation(photo))
                .build(),
            contentDescription = photo.displayName,
            contentScale = ContentScale.Crop,
            modifier = Modifier.fillMaxSize()
        )
        
        // 选择指示器
        if (isSelectionMode) {
            Box(
                modifier = Modifier
                    .fillMaxSize()
                    .background(
                        if (isSelected) AccentOrange.copy(alpha = 0.3f) else Color.Transparent
                    )
            )
            
            Icon(
                imageVector = if (isSelected) Icons.Default.CheckCircle else Icons.Default.RadioButtonUnchecked,
                contentDescription = if (isSelected) stringResource(R.string.selected) else stringResource(R.string.not_selected),
                tint = if (isSelected) AccentOrange else Color.White.copy(alpha = 0.7f),
                modifier = Modifier
                    .align(Alignment.TopEnd)
                    .padding(6.dp)
                    .size(24.dp)
            )
        }
        
        // 导入标记
        if (photo.metadata?.isImported == true) {
            Box(
                modifier = Modifier
                    .align(Alignment.BottomEnd)
                    .padding(4.dp)
                    .background(Color.Black.copy(alpha = 0.6f), RoundedCornerShape(2.dp))
                    .padding(horizontal = 4.dp, vertical = 2.dp)
            ) {
                Text(
                    text = stringResource(R.string.imported),
                    color = Color.White,
                    fontSize = 8.sp,
                    fontWeight = androidx.compose.ui.text.font.FontWeight.Bold
                )
            }
        }
    }
}
