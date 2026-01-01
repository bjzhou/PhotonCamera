package com.hinnka.mycamera.ui.gallery

import androidx.compose.animation.core.animateFloatAsState
import androidx.compose.foundation.background
import androidx.compose.foundation.gestures.detectTransformGestures
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.pager.HorizontalPager
import androidx.compose.foundation.pager.rememberPagerState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.Delete
import androidx.compose.material.icons.filled.Edit
import androidx.compose.material.icons.filled.Info
import androidx.compose.material.icons.filled.IosShare
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
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
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
                            contentDescription = "Back",
                            tint = Color.White
                        )
                    }
                },
                actions = {
                    IconButton(onClick = { showInfoDialog = true }) {
                        Icon(
                            imageVector = Icons.Default.Info,
                            contentDescription = "Info",
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
                        modifier = Modifier
                            .size(56.dp)
                            .background(Color.White.copy(alpha = 0.1f), CircleShape)
                    ) {
                        Icon(
                            imageVector = Icons.Default.Share,
                            contentDescription = "Share",
                            tint = Color.White
                        )
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
                            contentDescription = "Edit",
                            tint = Color.White
                        )
                    }
                    
                    // 导出
                    IconButton(
                        onClick = { currentPhoto?.let { viewModel.exportPhoto(it) } },
                        modifier = Modifier
                            .size(56.dp)
                            .background(Color.White.copy(alpha = 0.1f), CircleShape)
                    ) {
                        Icon(
                            imageVector = Icons.Default.Save,
                            contentDescription = "Export",
                            tint = Color.White
                        )
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
                            contentDescription = "Delete",
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
                    modifier = Modifier.fillMaxSize()
                ) { page ->
                    ZoomableImage(
                        photo = photos[page],
                        viewModel = viewModel,
                        modifier = Modifier.fillMaxSize()
                    )
                }
            }
        }
    }
    
    // 删除确认对话框
    if (showDeleteDialog) {
        AlertDialog(
            onDismissRequest = { showDeleteDialog = false },
            title = { Text(stringResource(R.string.delete)) },
            text = { Text(stringResource(R.string.delete_confirm)) },
            confirmButton = {
                TextButton(
                    onClick = {
                        viewModel.deleteCurrentPhoto { success ->
                            if (success && photos.isEmpty()) {
                                onBack()
                            }
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
    
    // 照片信息对话框
    if (showInfoDialog && currentPhoto != null) {
        AlertDialog(
            onDismissRequest = { showInfoDialog = false },
            title = { Text(stringResource(R.string.photo_info)) },
            text = {
                Column {
                    InfoRow("文件名", currentPhoto.displayName)
                    InfoRow("拍摄时间", currentPhoto.getFormattedDate())
                    InfoRow("分辨率", currentPhoto.getResolution())
                    InfoRow("文件大小", currentPhoto.getFormattedSize())
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
 */
@Composable
private fun ZoomableImage(
    photo: PhotoData,
    viewModel: GalleryViewModel,
    modifier: Modifier = Modifier
) {
    val context = LocalContext.current
    
    var scale by remember { mutableFloatStateOf(1f) }
    var offsetX by remember { mutableFloatStateOf(0f) }
    var offsetY by remember { mutableFloatStateOf(0f) }
    
    val animatedScale by animateFloatAsState(targetValue = scale, label = "scale")
    
    Box(
        modifier = modifier
            .pointerInput(Unit) {
                detectTransformGestures { _, pan, zoom, _ ->
                    scale = (scale * zoom).coerceIn(1f, 5f)
                    
                    if (scale > 1f) {
                        offsetX += pan.x
                        offsetY += pan.y
                    } else {
                        offsetX = 0f
                        offsetY = 0f
                    }
                }
            },
        contentAlignment = Alignment.Center
    ) {
        AsyncImage(
            model = ImageRequest.Builder(context)
                .data(photo.uri)
                .crossfade(true)
                .transformations(viewModel.getLutTransformation(photo.metadata))
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
