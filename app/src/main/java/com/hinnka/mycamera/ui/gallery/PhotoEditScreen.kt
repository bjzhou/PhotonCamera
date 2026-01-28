package com.hinnka.mycamera.ui.gallery

import android.app.Activity
import android.content.Context
import android.content.ContextWrapper
import android.graphics.Bitmap
import androidx.activity.compose.BackHandler
import androidx.compose.animation.*
import androidx.compose.foundation.*
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.Check
import androidx.compose.material.icons.filled.Tune
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import com.hinnka.mycamera.ui.common.WatermarkEditSheet
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.geometry.Offset
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
import com.hinnka.mycamera.frame.TextType
import com.hinnka.mycamera.gallery.PhotoMetadata
import com.hinnka.mycamera.ui.camera.LutEditBottomSheet
import com.hinnka.mycamera.ui.components.LutSelector
import com.hinnka.mycamera.ui.components.PaymentDialog
import com.hinnka.mycamera.ui.components.SliderSettingItem
import com.hinnka.mycamera.ui.theme.AccentOrange
import com.hinnka.mycamera.viewmodel.GalleryViewModel
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import me.saket.telephoto.zoomable.ZoomSpec
import java.text.SimpleDateFormat
import java.util.*

/**
 * 照片编辑界面
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun PhotoEditScreen(
    viewModel: GalleryViewModel,
    onBack: () -> Unit,
    modifier: Modifier = Modifier
) {
    val context = LocalContext.current
    val currentPhoto = viewModel.getCurrentPhoto()
    val editLutId by viewModel.editLutId.collectAsState()
    val editLutRecipeParams by viewModel.editLutRecipeParams.collectAsState()
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

    val sharpening by viewModel.editSharpening.collectAsState()
    val noiseReduction by viewModel.editNoiseReduction.collectAsState()
    val chromaNoiseReduction by viewModel.editChromaNoiseReduction.collectAsState()

    var showOrigin by remember { mutableStateOf(false) }

    // 编辑标签页状态
    var editTab by remember { mutableIntStateOf(0) } // 0: 滤镜/边框, 1: 细节处理
    var showControls by remember { mutableStateOf(true) }
    var isZoomed by remember { mutableStateOf(false) }


    LaunchedEffect(currentPhoto) {
        currentPhoto ?: return@LaunchedEffect
        editFrameCustomProperties = currentPhoto.metadata?.customProperties
            ?: viewModel.getEditCustomProperties(currentPhoto.id)
    }

    LaunchedEffect(
        currentPhoto,
        editLutId,
        editLutRecipeParams,
        editLutConfig,
        editFrameId,
        editFrameCustomProperties,
        sharpening,
        noiseReduction,
        chromaNoiseReduction,
        showOrigin
    ) {
        if (currentPhoto == null) return@LaunchedEffect
        isLoadingPreview = previewBitmap == null
        previewBitmap = withContext(Dispatchers.IO) {
            viewModel.getPreviewBitmap(currentPhoto, useGlobalEdit = true, showOrigin = showOrigin)
        }
        isLoadingPreview = false
    }

    LaunchedEffect(currentPhoto) {
        if (currentPhoto == null) return@LaunchedEffect
        thumbnailBitmap = withContext(Dispatchers.IO) {
            viewModel.loadThumbnail(currentPhoto)
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

    Scaffold(
        containerColor = Color.Black,
        modifier = modifier
    ) { paddingValues ->
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(paddingValues)
                .animateContentSize()
        ) {
            AnimatedVisibility(
                visible = showControls,
                enter = slideInVertically(initialOffsetY = { -it }) + expandVertically(expandFrom = Alignment.Top) + fadeIn(),
                exit = slideOutVertically(targetOffsetY = { -it }) + shrinkVertically(shrinkTowards = Alignment.Top) + fadeOut()
            ) {
                TopAppBar(
                    modifier = Modifier,
                    title = {
                        Text(
                            text = stringResource(R.string.edit),
                            color = Color.White
                        )
                    },
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
                        containerColor = Color.Black
                    ),
                    windowInsets = WindowInsets(0, 0, 0, 0)
                )
            }
            // 预览区域
            Box(
                modifier = Modifier
                    .weight(1f)
                    .fillMaxWidth()
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
                                            // 快速点击：切换控制区域显隐
                                            showControls = !showControls
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
                ZoomableEditImage(
                    previewBitmap = previewBitmap,
                    contentDescription = stringResource(R.string.edit),
                    onZoomChange = {
                        isZoomed = it
                    },
                    modifier = Modifier.fillMaxSize()
                )

                // 加载指示器
                if (isLoadingPreview) {
                    CircularProgressIndicator(
                        color = AccentOrange,
                        modifier = Modifier.size(48.dp)
                    )
                }
            }

            // 编辑控制区域
            AnimatedVisibility(
                visible = showControls,
                enter = slideInVertically(initialOffsetY = { it }) + expandVertically(expandFrom = Alignment.Bottom) + fadeIn(),
                exit = slideOutVertically(targetOffsetY = { it }) + shrinkVertically(shrinkTowards = Alignment.Bottom) + fadeOut()
            ) {
                Surface(
                    color = Color(0xFF1A1A1A),
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
                        }

                        if (editTab == 0) {
                            val currentInfo = availableLuts.find { it.id == editLutId }
                            val lutTitle = currentInfo?.getName() ?: ""

                            Spacer(modifier = Modifier.height(16.dp))
                            Row(
                                modifier = Modifier.fillMaxWidth(),
                                horizontalArrangement = Arrangement.SpaceBetween,
                                verticalAlignment = Alignment.CenterVertically
                            ) {
                                Column(verticalArrangement = Arrangement.spacedBy(2.dp)) {
                                    Text(
                                        text = stringResource(R.string.filter).uppercase(),
                                        color = Color.White.copy(alpha = 0.4f),
                                        fontSize = 10.sp,
                                        fontWeight = FontWeight.Bold,
                                        letterSpacing = 1.sp
                                    )
                                    Text(
                                        text = if (lutTitle.isEmpty()) stringResource(R.string.none) else lutTitle,
                                        color = Color.White,
                                        fontSize = 16.sp,
                                        fontWeight = FontWeight.Bold
                                    )
                                }

                                if (editLutId != null) {
                                    Row(
                                        modifier = Modifier
                                            .clip(RoundedCornerShape(16.dp))
                                            .background(Color.White.copy(alpha = 0.1f))
                                            .clickable { showLutEditDialog = true }
                                            .padding(horizontal = 10.dp, vertical = 6.dp),
                                        verticalAlignment = Alignment.CenterVertically,
                                        horizontalArrangement = Arrangement.spacedBy(4.dp)
                                    ) {
                                        Icon(
                                            imageVector = Icons.Default.Tune,
                                            contentDescription = null,
                                            tint = Color(0xFFFFD700),
                                            modifier = Modifier.size(14.dp)
                                        )
                                        Text(
                                            text = stringResource(R.string.color_recipe),
                                            color = Color.White,
                                            fontSize = 11.sp,
                                            fontWeight = FontWeight.Medium
                                        )
                                    }
                                }
                            }

                            Spacer(modifier = Modifier.height(8.dp))

                            LutSelector(
                                availableLuts = viewModel.availableLuts,
                                currentLutId = editLutId,
                                thumbnail = thumbnailBitmap,
                                onLutSelected = { viewModel.setEditLut(it) },
                                onEditClick = { showLutEditDialog = true },
                                categoryOrder = categoryOrder
                            )

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
                                                .clickable { viewModel.showWatermarkSheet = true }
                                                .padding(horizontal = 10.dp, vertical = 4.dp),
                                            verticalAlignment = Alignment.CenterVertically,
                                            horizontalArrangement = Arrangement.spacedBy(4.dp)
                                        ) {
                                            Icon(
                                                imageVector = Icons.Default.Tune,
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
                                                viewModel.showWatermarkSheet = true
                                            } else {
                                                viewModel.setEditFrame(frame.id)
                                            }
                                        }
                                    )
                                }
                            }
                        } else {
                            Spacer(modifier = Modifier.height(16.dp))
                            // 细节处理调整 (锐化, 降噪, 杂色降噪)
                            SliderSettingItem(
                                title = stringResource(R.string.settings_sharpening),
                                value = sharpening,
                                valueRange = 0f..1f,
                                onValueChange = { viewModel.setSharpening(it) }
                            )
                            SliderSettingItem(
                                title = stringResource(R.string.settings_noise_reduction),
                                value = noiseReduction,
                                valueRange = 0f..1f,
                                onValueChange = { viewModel.setNoiseReduction(it) }
                            )
                            SliderSettingItem(
                                title = stringResource(R.string.settings_chroma_noise_reduction),
                                value = chromaNoiseReduction,
                                valueRange = 0f..1f,
                                onValueChange = { viewModel.setChromaNoiseReduction(it) }
                            )
                            Spacer(modifier = Modifier.height(8.dp))
                        }
                    }
                }
            }
        }
    }

    if (showLutEditDialog && editLutId != null) {
        LutEditBottomSheet(
            lutId = editLutId!!,
            onDismiss = { showLutEditDialog = false }
        )
    }

    if (viewModel.showWatermarkSheet) {
        val currentPhoto = viewModel.getCurrentPhoto()
        val originalValues = remember(currentPhoto) {
            mutableMapOf<TextType, String>().apply {
                currentPhoto?.metadata?.let { metadata ->
                    put(TextType.DEVICE_MODEL, metadata.deviceModel ?: "")
                    put(TextType.BRAND, metadata.brand ?: "")
                    metadata.dateTaken?.let { date ->
                        put(TextType.DATE, SimpleDateFormat("yyyy.MM.dd", Locale.getDefault()).format(Date(date)))
                        put(TextType.TIME, SimpleDateFormat("HH:mm", Locale.getDefault()).format(Date(date)))
                        put(
                            TextType.DATETIME,
                            SimpleDateFormat("yyyy.MM.dd HH:mm", Locale.getDefault()).format(Date(date))
                        )
                    }
                }
            }
        }
        WatermarkEditSheet(
            customProperties = editFrameCustomProperties,
            onPropertiesChange = {
                viewModel.saveEditCustomProperties(it)
                editFrameCustomProperties = it
            },
            onDismiss = { viewModel.showWatermarkSheet = false },
            originalValues = originalValues,
            onImportFont = { uri ->
                viewModel.getCustomImportManager().importFont(uri)
            },
            onImportLogo = { uri ->
                viewModel.getCustomImportManager().importLogo(uri)
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
                            imageVector = Icons.Default.Tune,
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
            modifier = Modifier.fillMaxSize()
        )
    }
}
