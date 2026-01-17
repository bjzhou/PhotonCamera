package com.hinnka.mycamera.ui.gallery

import android.app.Activity
import android.content.Context
import android.content.ContextWrapper
import android.graphics.Bitmap
import androidx.activity.compose.BackHandler
import androidx.compose.animation.core.animateFloatAsState
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.Check
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.input.pointer.positionChanged
import androidx.compose.foundation.gestures.*
import androidx.compose.ui.layout.onSizeChanged
import androidx.compose.ui.unit.IntSize
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import coil.compose.AsyncImage
import coil.request.ImageRequest
import com.hinnka.mycamera.R
import com.hinnka.mycamera.frame.TextType
import com.hinnka.mycamera.ui.components.LutSelector
import com.hinnka.mycamera.ui.components.PaymentDialog
import com.hinnka.mycamera.ui.theme.AccentOrange
import com.hinnka.mycamera.viewmodel.GalleryViewModel
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

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

    var isSaving by remember { mutableStateOf(false) }
    var showExportDialog by remember { mutableStateOf(false) }
    var isLoadingPreview by remember { mutableStateOf(false) }
    val lutScrollState = rememberLazyListState()
    val frameScrollState = rememberLazyListState()

    BackHandler {
        viewModel.exitEditMode()
        onBack()
    }

    // 预览 Bitmap 状态
    var previewBitmap by remember { mutableStateOf<Bitmap?>(null) }
    var lutPreviews by remember { mutableStateOf<Map<String, Bitmap>>(emptyMap()) }

    // 边框编辑状态
    val editFrameId = viewModel.editFrameId
    val availableFrames = viewModel.availableFrames

    // 当编辑参数变化时更新预览
    val customPropertiesList = viewModel.editCustomProperties.entries.toList()
    LaunchedEffect(
        currentPhoto,
        editLutId,
        editLutRecipeParams,
        editLutConfig,
        editFrameId,
        customPropertiesList
    ) {
        if (currentPhoto == null) return@LaunchedEffect

        isLoadingPreview = true
        previewBitmap = withContext(Dispatchers.IO) {
            viewModel.getPreviewBitmap(currentPhoto)
        }
        lutPreviews = withContext(Dispatchers.IO) {
            viewModel.loadLutPreviews(currentPhoto)
        }
        isLoadingPreview = false
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
        topBar = {
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

                    // 导出（烘焙）按钮
                    /*IconButton(
                        onClick = { showExportDialog = true },
                        enabled = !isSaving
                    ) {
                        Icon(
                            imageVector = Icons.Default.Save,
                            contentDescription = "Export",
                            tint = Color.White
                        )
                    }*/
                },
                colors = TopAppBarDefaults.topAppBarColors(
                    containerColor = Color.Black
                )
            )
        },
        containerColor = Color.Black,
        modifier = modifier
    ) { paddingValues ->
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(paddingValues)
        ) {
            // 预览区域
            Box(
                modifier = Modifier
                    .weight(1f)
                    .fillMaxWidth()
                    .padding(16.dp),
                contentAlignment = Alignment.Center
            ) {
                // 显示预览
                ZoomableEditImage(
                    previewBitmap = previewBitmap,
                    fallbackUri = currentPhoto.previewUri,
                    contentDescription = stringResource(R.string.edit),
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
            Surface(
                color = Color(0xFF1A1A1A),
                shape = RoundedCornerShape(topStart = 24.dp, topEnd = 24.dp),
                modifier = Modifier.fillMaxWidth()
            ) {
                Column(
                    modifier = Modifier.padding(16.dp)
                ) {
                    // LUT 选择器
                    Text(
                        text = stringResource(R.string.filter),
                        color = Color.White,
                        fontSize = 16.sp
                    )

                    Spacer(modifier = Modifier.height(8.dp))

                    LutSelector(
                        availableLuts = viewModel.availableLuts,
                        currentLutId = editLutId,
                        lutPreviewBitmaps = lutPreviews,
                        onLutSelected = { viewModel.setEditLut(it) }
                    )

                    Spacer(modifier = Modifier.height(16.dp))

                    // 边框水印选择器
                    Text(
                        text = stringResource(R.string.frame),
                        color = Color.White,
                        fontSize = 16.sp
                    )

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
                                onClick = { viewModel.setEditFrame(frame.id) }
                            )
                        }
                    }

                    if (editFrameId != null) {
                        Spacer(modifier = Modifier.height(16.dp))

                        Button(
                            onClick = { viewModel.showWatermarkSheet = true },
                            colors = ButtonDefaults.buttonColors(
                                containerColor = Color.White.copy(alpha = 0.1f)
                            ),
                            shape = RoundedCornerShape(8.dp),
                            modifier = Modifier.fillMaxWidth()
                        ) {
                            Text(text = stringResource(R.string.adjust_watermark), color = Color.White)
                        }
                    }
                }
            }
        }
    }

    if (viewModel.showWatermarkSheet) {
        WatermarkEditSheet(
            viewModel = viewModel,
            onDismiss = { viewModel.showWatermarkSheet = false }
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
                        isSaving = true
                        viewModel.saveEdit(currentPhoto) { success ->
                            isSaving = false
                            if (success) {
                                onBack()
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
 * LUT 选项
 */
@Composable
private fun FrameOption(
    name: String,
    previewBitmap: Bitmap? = null,
    isSelected: Boolean,
    isVip: Boolean = false,
    isCustom: Boolean = false,  // 添加自定义标识参数
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

@OptIn(ExperimentalMaterial3Api::class)
@Composable
private fun WatermarkEditSheet(
    viewModel: GalleryViewModel,
    onDismiss: () -> Unit
) {
    val sheetState = rememberModalBottomSheetState()
    val customProperties = viewModel.editCustomProperties

    ModalBottomSheet(
        onDismissRequest = onDismiss,
        sheetState = sheetState,
        containerColor = Color(0xFF1A1A1A),
        contentColor = Color.White
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp)
                .padding(bottom = 32.dp)
        ) {
            Text(
                text = stringResource(R.string.watermark_adjustment),
                fontSize = 18.sp,
                fontWeight = FontWeight.Bold,
                modifier = Modifier.padding(bottom = 16.dp)
            )

            // Logo 选择
            Text(
                text = stringResource(R.string.logo),
                fontSize = 14.sp,
                color = Color.White.copy(alpha = 0.6f),
                modifier = Modifier.padding(bottom = 8.dp)
            )

            val logos = listOf(
                "none" to stringResource(R.string.none),
                "apple" to "Apple",
                "leica" to "Leica",
                "hasselblad" to "Hasselblad",
                "sony" to "Sony",
                "canon" to "Canon",
                "nikon" to "Nikon",
                "fujifilm" to "Fujifilm",
                "xiaomi" to "Xiaomi",
                "huawei" to "Huawei",
                "oppo" to "OPPO",
                "vivo" to "Vivo"
            )

            val currentPhoto = viewModel.getCurrentPhoto()
            val currentBrand = currentPhoto?.metadata?.brand?.lowercase() ?: ""
            val effectiveActiveId =
                customProperties["LOGO"] ?: logos.find { it.first != "none" && currentBrand.contains(it.first) }?.first
                ?: "none"

            LazyRow(
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                modifier = Modifier.padding(bottom = 16.dp)
            ) {
                items(logos) { (id, name) ->
                    val isSelected = effectiveActiveId == id
                    Surface(
                        onClick = { viewModel.updateEditCustomProperty("LOGO", id) },
                        color = if (isSelected) AccentOrange.copy(alpha = 0.2f) else Color.White.copy(alpha = 0.1f),
                        shape = RoundedCornerShape(8.dp),
                        border = if (isSelected) BorderStroke(1.dp, AccentOrange) else null
                    ) {
                        Text(
                            text = name,
                            modifier = Modifier.padding(horizontal = 12.dp, vertical = 6.dp),
                            fontSize = 13.sp,
                            color = if (isSelected) AccentOrange else Color.White
                        )
                    }
                }
            }

            // 文字编辑
            Text(
                text = stringResource(R.string.text_content),
                fontSize = 14.sp,
                color = Color.White.copy(alpha = 0.6f),
                modifier = Modifier.padding(bottom = 8.dp)
            )

            val textTypes = listOf(
                TextType.DEVICE_MODEL to stringResource(R.string.device_model),
                TextType.BRAND to stringResource(R.string.brand_name),
                TextType.DATE to stringResource(R.string.date_label),
                TextType.TIME to stringResource(R.string.time_label),
                TextType.DATETIME to stringResource(R.string.datetime_label)
            )

            textTypes.forEach { (type, label) ->
                val currentPhoto = viewModel.getCurrentPhoto()
                val originalValue = when (type) {
                    TextType.DEVICE_MODEL -> currentPhoto?.metadata?.deviceModel
                    TextType.BRAND -> currentPhoto?.metadata?.brand
                    TextType.DATE -> currentPhoto?.metadata?.dateTaken?.let {
                        SimpleDateFormat("yyyy.MM.dd", Locale.getDefault()).format(Date(it))
                    }

                    TextType.TIME -> currentPhoto?.metadata?.dateTaken?.let {
                        SimpleDateFormat("HH:mm", Locale.getDefault()).format(Date(it))
                    }

                    TextType.DATETIME -> currentPhoto?.metadata?.dateTaken?.let {
                        SimpleDateFormat("yyyy.MM.dd HH:mm", Locale.getDefault()).format(Date(it))
                    }

                    else -> null
                } ?: ""

                OutlinedTextField(
                    value = customProperties[type.name] ?: originalValue,
                    onValueChange = { viewModel.updateEditCustomProperty(type.name, it) },
                    label = { Text(label) },
                    modifier = Modifier.fillMaxWidth().padding(bottom = 8.dp),
                    colors = OutlinedTextFieldDefaults.colors(
                        focusedBorderColor = AccentOrange,
                        unfocusedBorderColor = Color.White.copy(alpha = 0.2f),
                        focusedLabelColor = AccentOrange,
                        unfocusedLabelColor = Color.White.copy(alpha = 0.5f),
                        cursorColor = AccentOrange
                    ),
                    singleLine = true
                )
            }
        }
    }
}

/**
 * 用于编辑界面的可缩放图片组件
 * 支持双击缩放和双指缩放
 */
@Composable
private fun ZoomableEditImage(
    previewBitmap: Bitmap?,
    fallbackUri: android.net.Uri,
    contentDescription: String,
    modifier: Modifier = Modifier
) {
    val context = LocalContext.current
    
    var scale by remember { mutableFloatStateOf(1f) }
    var offsetX by remember { mutableFloatStateOf(0f) }
    var offsetY by remember { mutableFloatStateOf(0f) }
    
    // 用于计算边界的容器尺寸
    var containerSize by remember { mutableStateOf(IntSize.Zero) }
    
    val animatedScale by animateFloatAsState(targetValue = scale, label = "scale")
    
    // 计算当前缩放下的位移边界
    fun updateOffset(panX: Float, panY: Float, currentScale: Float, imageWidth: Int, imageHeight: Int) {
        if (imageWidth <= 0 || imageHeight <= 0 || containerSize.width <= 0 || containerSize.height <= 0) {
            offsetX += panX
            offsetY += panY
            return
        }

        // 在 ContentScale.Fit 模式下，图片的显示尺寸
        val contentAspectRatio = imageWidth.toFloat() / imageHeight
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
    
    // 获取图片尺寸
    val imageWidth = previewBitmap?.width ?: 1920
    val imageHeight = previewBitmap?.height ?: 1080
    
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
            .pointerInput(previewBitmap) {
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
                                    updateOffset(panChange.x, panChange.y, newScale, imageWidth, imageHeight)
                                }
                                
                                // 消费事件
                                event.changes.forEach { if (it.positionChanged()) it.consume() }
                            }
                        }
                    } while (event.changes.any { it.pressed })
                }
            },
        contentAlignment = Alignment.Center
    ) {
        if (previewBitmap != null) {
            AsyncImage(
                model = ImageRequest.Builder(context)
                    .data(previewBitmap)
                    .crossfade(true)
                    .build(),
                contentDescription = contentDescription,
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
        } else {
            // 加载中或尚无预览时显示原图
            AsyncImage(
                model = ImageRequest.Builder(context)
                    .data(fallbackUri)
                    .crossfade(true)
                    .build(),
                contentDescription = contentDescription,
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
