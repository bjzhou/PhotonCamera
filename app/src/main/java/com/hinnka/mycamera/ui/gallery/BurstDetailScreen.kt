package com.hinnka.mycamera.ui.gallery

import android.app.Activity
import android.net.Uri
import android.widget.Toast
import androidx.activity.compose.rememberLauncherForActivityResult
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
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.border
import androidx.compose.ui.draw.clip
import coil.compose.AsyncImage
import coil.request.ImageRequest
import com.hinnka.mycamera.R
import com.hinnka.mycamera.gallery.PhotoManager
import com.hinnka.mycamera.ui.theme.AccentOrange
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import me.saket.telephoto.zoomable.ZoomSpec
import me.saket.telephoto.zoomable.coil.ZoomableAsyncImage
import me.saket.telephoto.zoomable.rememberZoomableImageState
import me.saket.telephoto.zoomable.rememberZoomableState
import java.io.File
import android.content.Intent
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import androidx.compose.animation.AnimatedVisibility
import androidx.compose.ui.input.pointer.PointerEvent
import androidx.compose.ui.input.pointer.PointerEventPass
import androidx.compose.ui.input.pointer.PointerEventType
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.res.painterResource
import androidx.core.content.FileProvider
import com.hinnka.mycamera.gallery.PhotoData
import com.hinnka.mycamera.viewmodel.GalleryViewModel
import kotlinx.coroutines.delay
import kotlinx.coroutines.suspendCancellableCoroutine
import kotlin.coroutines.resume
import kotlin.math.max
import kotlin.math.min

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun BurstDetailScreen(
    viewModel: GalleryViewModel,
    photoId: String,
    onBack: () -> Unit = {},
    onEdit: () -> Unit,
    modifier: Modifier = Modifier
) {
    val context = LocalContext.current
    val coroutineScope = rememberCoroutineScope()

    val photos by viewModel.photos.collectAsState()
    val photoData = photos.find { photo -> photo.id == photoId } ?: return
    var burstFiles by remember { mutableStateOf<List<File>>(emptyList()) }
    var isLoading by remember { mutableStateOf(true) }

    // Load burst files
    LaunchedEffect(photoId) {
        withContext(Dispatchers.IO) {
            burstFiles = PhotoManager.getBurstPhotos(context, photoId)
        }
        isLoading = false
    }

    if (isLoading) {
        Box(modifier = Modifier.fillMaxSize().background(Color.Black), contentAlignment = Alignment.Center) {
            CircularProgressIndicator(color = AccentOrange)
        }
        return
    }

    if (burstFiles.isEmpty()) {
        Box(modifier = Modifier.fillMaxSize().background(Color.Black), contentAlignment = Alignment.Center) {
            Text(stringResource(R.string.no_photos), color = Color.White)
        }
        LaunchedEffect(Unit) {
            onBack()
        }
        return
    }

    val pagerState = rememberPagerState(pageCount = { burstFiles.size })
    val currentFile = burstFiles.getOrNull(pagerState.currentPage)

    val mainPhotoFile = remember(photoId) { PhotoManager.getPhotoFile(context, photoId) }
    val refreshKey = viewModel.photoRefreshKeys[photoId] ?: 0L
    val isMainPhoto = remember(currentFile, refreshKey) {
        currentFile?.exists() == true && mainPhotoFile.exists() && currentFile.length() == mainPhotoFile.length()
    }

    var showDeleteDialog by remember { mutableStateOf(false) }
    var isZoomed by remember { mutableStateOf(false) }
    var showExportDialog by remember { mutableStateOf(false) }
    var showExportAllDialog by remember { mutableStateOf(false) }
    var isSaving by remember { mutableStateOf(false) }
    var isSavingAll by remember { mutableStateOf(false) }

    Scaffold(
        topBar = {
            TopAppBar(
                modifier = Modifier,
                title = {
                    Text(
                        text = "${pagerState.currentPage + 1} / ${burstFiles.size}",
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
                    // 编辑
                    /*IconButton(
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
                    }*/

                    // 设为主图
                    IconButton(
                        onClick = {
                            currentFile?.let { file ->
                                isSaving = true
                                viewModel.setMainBurstPhoto(photoData, file) { success ->
                                    isSaving = false
                                    if (success) {
                                        Toast.makeText(context, "设置成功", Toast.LENGTH_SHORT).show()
                                    } else {
                                        Toast.makeText(context, "设置失败", Toast.LENGTH_SHORT).show()
                                    }
                                }
                            }
                        },
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
                                imageVector = if (isMainPhoto) Icons.Default.Star else Icons.Default.StarBorder,
                                contentDescription = "设为主图",
                                tint = if (isMainPhoto) AccentOrange else Color.White
                            )
                        }
                    }

                    // 导出
                    IconButton(
                        onClick = { currentFile?.let { showExportDialog = true } },
                        modifier = Modifier
                            .size(56.dp)
                            .background(Color.White.copy(alpha = 0.1f), CircleShape)
                    ) {
                        Icon(
                            imageVector = Icons.Default.Output,
                            contentDescription = stringResource(R.string.export),
                            tint = AccentOrange
                        )
                    }

                    // 导出全部
                    IconButton(
                        onClick = { if (burstFiles.isNotEmpty()) showExportAllDialog = true },
                        modifier = Modifier
                            .size(56.dp)
                            .background(Color.White.copy(alpha = 0.1f), CircleShape)
                    ) {
                        if (isSavingAll) {
                            CircularProgressIndicator(
                                color = Color.White,
                                modifier = Modifier.size(24.dp),
                                strokeWidth = 2.dp
                            )
                        } else {
                            Icon(
                                painterResource(R.drawable.ic_output_all),
                                contentDescription = stringResource(R.string.export_all),
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
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(paddingValues)
        ) {
            if (burstFiles.isEmpty()) {
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
                    key = { page -> if (page < burstFiles.size) burstFiles[page].absolutePath else page },
                    modifier = Modifier.fillMaxWidth().weight(1f),
                    userScrollEnabled = !isZoomed,
                    beyondViewportPageCount = 1
                ) { page ->
                    val photo = burstFiles.getOrNull(page)
                    if (photo != null) {
                        key(photo.absolutePath) {

                            var showOrigin by remember { mutableStateOf(false) }

                            Box(modifier = Modifier.fillMaxSize().pointerInput(Unit) {
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
                            }) {
                                ZoomableImage(
                                    photo = photoData,
                                    photoFile = photo,
                                    showOrigin = showOrigin,
                                    isActive = page == pagerState.currentPage,
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

                AnimatedVisibility(visible = !isZoomed) {
                    val lazyListState = rememberLazyListState()

                    LaunchedEffect(pagerState.currentPage) {
                        lazyListState.animateScrollToItem(max(0, pagerState.currentPage - 2))
                    }

                    LazyRow(
                        state = lazyListState,
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(bottom = 16.dp),
                        contentPadding = PaddingValues(horizontal = 16.dp),
                        horizontalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        itemsIndexed(burstFiles) { index, file ->
                            val isSelected = pagerState.currentPage == index
                            val isThisMainPhoto = remember(file, refreshKey) {
                                file.exists() && mainPhotoFile.exists() && file.length() == mainPhotoFile.length()
                            }
                            Box(
                                modifier = Modifier
                                    .size(60.dp)
                                    .clip(RoundedCornerShape(8.dp))
                                    .border(
                                        width = if (isSelected) 2.dp else 0.dp,
                                        color = if (isSelected) AccentOrange else Color.Transparent,
                                        shape = RoundedCornerShape(8.dp)
                                    )
                                    .clickable {
                                        coroutineScope.launch {
                                            pagerState.animateScrollToPage(index)
                                        }
                                    }
                            ) {
                                AsyncImage(
                                    model = file,
                                    contentDescription = null,
                                    contentScale = ContentScale.Crop,
                                    modifier = Modifier.fillMaxSize()
                                )
                                if (isThisMainPhoto) {
                                    Icon(
                                        imageVector = Icons.Default.Star,
                                        contentDescription = "",
                                        tint = AccentOrange,
                                        modifier = Modifier
                                            .align(Alignment.TopEnd)
                                            .padding(horizontal = 4.dp, vertical = 2.dp)
                                    )
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    // 删除确认对话框
    if (showDeleteDialog) {
        AlertDialog(
            onDismissRequest = { showDeleteDialog = false },
            title = { Text(stringResource(R.string.delete)) },
            text = {
                Text(stringResource(R.string.delete_confirm))
            },
            confirmButton = {
                TextButton(
                    onClick = {
                        coroutineScope.launch(Dispatchers.IO) {
                            currentFile?.delete()
                            val updatedFiles = PhotoManager.getBurstPhotos(context, photoId)
                            withContext(Dispatchers.Main) {
                                burstFiles = updatedFiles
                                showDeleteDialog = false
                                if (burstFiles.isEmpty()) {
                                    onBack()
                                }
                            }
                        }
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
                        currentFile?.let {
                            isSaving = true
                            coroutineScope.launch(Dispatchers.IO) {
                                val bitmap = BitmapFactory.decodeFile(it.path)
                                val suffix = "burst${pagerState.currentPage + 1}"
                                viewModel.exportPhoto(photoData, bitmap, suffix = suffix) { success ->
                                    isSaving = false
                                    if (success) {
                                        Toast.makeText(context, R.string.export_success, Toast.LENGTH_SHORT).show()
                                    } else {
                                        Toast.makeText(context, R.string.export_failed, Toast.LENGTH_SHORT).show()
                                    }
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

    // 导出全部确认对话框
    if (showExportAllDialog) {
        AlertDialog(
            onDismissRequest = { showExportAllDialog = false },
            title = { Text(stringResource(R.string.export_all)) },
            text = {
                Text(stringResource(R.string.export_all_confirm))
            },
            confirmButton = {
                TextButton(
                    onClick = {
                        showExportAllDialog = false
                        if (burstFiles.isNotEmpty()) {
                            isSavingAll = true
                            coroutineScope.launch(Dispatchers.IO) {
                                var allSuccess = true
                                burstFiles.forEachIndexed { index, file ->
                                    val success = suspendCancellableCoroutine { continuation ->
                                        val bitmap = BitmapFactory.decodeFile(file.path)
                                        val suffix = "burst${index + 1}"
                                        viewModel.exportPhoto(photoData, bitmap, suffix = suffix) { result ->
                                            continuation.resume(result)
                                        }
                                    }
                                    if (!success) allSuccess = false
                                }
                                withContext(Dispatchers.Main) {
                                    isSavingAll = false
                                    if (allSuccess) {
                                        Toast.makeText(context, R.string.export_all_success, Toast.LENGTH_SHORT).show()
                                    } else {
                                        Toast.makeText(context, R.string.export_failed, Toast.LENGTH_SHORT).show()
                                    }
                                }
                            }
                        }
                    }
                ) {
                    Text(stringResource(R.string.export_all), color = AccentOrange)
                }
            },
            dismissButton = {
                TextButton(onClick = { showExportAllDialog = false }) {
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
 * 可缩放的图片组件
 * 使用 Telephoto 库支持大尺寸图片查看
 */
@Composable
private fun ZoomableImage(
    photo: PhotoData,
    photoFile: File,
    showOrigin: Boolean,
    isActive: Boolean,
    viewModel: GalleryViewModel,
    onZoomChange: (Boolean) -> Unit,
    modifier: Modifier = Modifier
) {
    val context = LocalContext.current

    var isLoading by remember { mutableStateOf(true) }
    val maxZoom = min(photo.width, photo.height) / 300f
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
        val metadataHash = remember(photo.metadata) {
            photo.metadata?.toJson()?.hashCode() ?: 0
        }

        var bitmap by remember { mutableStateOf<Bitmap?>(null) }
        val refreshKey = viewModel.photoRefreshKeys[photo.id] ?: 0L

        LaunchedEffect(photo.id, metadataHash, showOrigin, refreshKey, photoFile, isActive) {
            val photoBitmap = withContext(Dispatchers.IO) {
                BitmapFactory.decodeFile(photoFile.path)
            }
            suspend fun loadBitmap() {
                isLoading = bitmap == null
                bitmap = viewModel.getPreviewBitmap(photo, showOrigin = showOrigin, bitmap = photoBitmap, ignoreDenoise = !isActive)
                if (bitmap == null) {
                    delay(500)
                    loadBitmap()
                }
                isLoading = bitmap == null
            }
            loadBitmap()
        }

        if (bitmap != null) {
            val imageModel = remember(photo.id, metadataHash, bitmap) {
                ImageRequest.Builder(context)
                    .data(bitmap)
                    .crossfade(true) // 禁用交叉淡入淡出，避免缩放时的抖动
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

        if (isLoading) {
            CircularProgressIndicator(
                color = AccentOrange,
                modifier = Modifier.size(48.dp)
            )
        }
    }
}
