package com.hinnka.mycamera.lut.synthesis

import android.annotation.SuppressLint
import android.graphics.Bitmap
import android.widget.Toast
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.ExperimentalFoundationApi
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.Add
import androidx.compose.material.icons.filled.Close
import androidx.compose.material.icons.filled.Delete
import androidx.compose.material.icons.filled.Done
import androidx.compose.material.icons.filled.KeyboardArrowDown
import androidx.compose.material.icons.filled.KeyboardArrowUp
import androidx.compose.material.icons.filled.Refresh
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.input.pointer.PointerEventPass
import androidx.compose.ui.input.pointer.PointerEventType
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.ui.window.Dialog
import androidx.lifecycle.viewmodel.compose.viewModel
import coil.request.ImageRequest
import com.hinnka.mycamera.R
import com.hinnka.mycamera.model.ColorPaletteMapper
import com.hinnka.mycamera.model.ColorPaletteState
import com.hinnka.mycamera.ui.components.ColorRecipePanel
import com.hinnka.mycamera.ui.components.CurveChannel
import com.hinnka.mycamera.ui.components.LutSelector
import com.hinnka.mycamera.ui.components.PaymentDialog
import androidx.compose.ui.graphics.SolidColor
import com.hinnka.mycamera.ui.components.CustomSlider
import me.saket.telephoto.zoomable.ZoomSpec
import me.saket.telephoto.zoomable.coil.ZoomableAsyncImage
import me.saket.telephoto.zoomable.rememberZoomableImageState
import me.saket.telephoto.zoomable.rememberZoomableState
import com.hinnka.mycamera.ui.icons.AppIcons

@SuppressLint("LocalContextGetResourceValueCall")
@OptIn(ExperimentalMaterial3Api::class, ExperimentalFoundationApi::class)
@Composable
fun LutSynthesisScreen(
    onNavigateBack: () -> Unit,
    modifier: Modifier = Modifier
) {
    val viewModel: LutSynthesisViewModel = viewModel()
    val context = LocalContext.current

    val layers by viewModel.layers.collectAsState()
    val isPurchased by viewModel.isPurchased.collectAsState()
    val recipe by viewModel.colorRecipe.collectAsState()
    val availableLuts by viewModel.availableLuts.collectAsState()
    val originalBitmap by viewModel.originalBitmap.collectAsState()
    val processedBitmap by viewModel.processedBitmap.collectAsState()
    val isLoading by viewModel.isLoading.collectAsState()
    val exportState by viewModel.exportState.collectAsState()

    val synthesisStr = stringResource(R.string.lut_synthesis_title)

    var showLutSelector by remember { mutableStateOf(false) }
    var showBakeParamsSheet by remember { mutableStateOf(false) }
    var showExportDialog by remember { mutableStateOf(false) }
    var lutNameInput by remember { mutableStateOf("") }
    var lutCategoryInput by remember { mutableStateOf(synthesisStr) }

    val galleryLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.GetContent()
    ) { uri ->
        uri?.let { viewModel.setPreviewUri(it) }
    }

    // 监听导出状态
    LaunchedEffect(exportState) {
        when (exportState) {
            is ExportState.Success -> {
                Toast.makeText(context, context.getString(R.string.lut_synthesis_save_success), Toast.LENGTH_LONG).show()
                viewModel.resetExportState()
                onNavigateBack()
            }
            is ExportState.Error -> {
                Toast.makeText(context, "${context.getString(R.string.lut_synthesis_save_failed)}: ${(exportState as ExportState.Error).message}", Toast.LENGTH_LONG).show()
                viewModel.resetExportState()
            }
            else -> {}
        }
    }

    Scaffold(
        topBar = {
            CenterAlignedTopAppBar(
                title = {
                    Text(
                        text = synthesisStr,
                        fontSize = 16.sp,
                        fontWeight = FontWeight.Bold,
                        color = Color.White
                    )
                },
                navigationIcon = {
                    IconButton(onClick = onNavigateBack) {
                        Icon(
                            imageVector = Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = "Back",
                            tint = Color.White
                        )
                    }
                },
                actions = {
                    IconButton(
                        onClick = {
                            if (isPurchased) {
                                showExportDialog = true
                            } else {
                                viewModel.showPaymentDialog = true
                            }
                        },
                        enabled = layers.isNotEmpty() || !recipe.isDefault()
                    ) {
                        Icon(
                            imageVector = Icons.Default.Done,
                            contentDescription = "Save",
                            tint = if (layers.isNotEmpty() || !recipe.isDefault()) Color.White else Color.White.copy(alpha = 0.3f)
                        )
                    }
                },
                colors = TopAppBarDefaults.centerAlignedTopAppBarColors(
                    containerColor = Color.Black,
                    titleContentColor = Color.White
                )
            )
        },
        containerColor = Color.Black,
        modifier = modifier
    ) { innerPadding ->
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(innerPadding)
                .background(Color.Black)
        ) {
            // 1. 顶部预览卡片与长按对比 (1:1 或固定高度)
            var isComparing by remember { mutableStateOf(false) }
            val currentBitmap = if (isComparing) originalBitmap else (processedBitmap ?: originalBitmap)

            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .weight(1.2f)
                    .background(Color(0xFF121212))
                    .pointerInput(originalBitmap, processedBitmap) {
                        awaitPointerEventScope {
                            while (true) {
                                val downEvent = awaitPointerEvent(PointerEventPass.Initial)
                                if (downEvent.type == PointerEventType.Press && downEvent.changes.size == 1) {
                                    val touchSlop = viewConfiguration.touchSlop
                                    val initialPosition = downEvent.changes[0].position
                                    val longPressTimeout = viewConfiguration.longPressTimeoutMillis
                                    var isMultiTouch = false
                                    var isMoved = false
                                    var isReleased = false

                                    val timedOut = withTimeoutOrNull(longPressTimeout) {
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
                                                isReleased = true
                                                break
                                            }
                                        }
                                        false
                                    } ?: true

                                    if (timedOut && !isMultiTouch && !isMoved && !isReleased) {
                                        isComparing = true
                                        try {
                                            while (true) {
                                                val event = awaitPointerEvent(PointerEventPass.Initial)
                                                if (event.type == PointerEventType.Release || event.changes.size > 1) {
                                                    break
                                                }
                                            }
                                        } finally {
                                            isComparing = false
                                        }
                                    }
                                }
                            }
                        }
                    }
            ) {
                if (currentBitmap != null) {
                    ZoomableSynthesisPreview(
                        bitmap = currentBitmap,
                        contentDescription = "Preview",
                        modifier = Modifier.fillMaxSize()
                    )
                }

                // 交互层：Loading / 对比提示
                if (isLoading) {
                    Box(
                        modifier = Modifier
                            .fillMaxSize()
                            .background(Color.Black.copy(alpha = 0.3f)),
                        contentAlignment = Alignment.Center
                    ) {
                        CircularProgressIndicator(color = Color.White, strokeWidth = 3.dp)
                    }
                }

                // 底部轻量提示条
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .align(Alignment.BottomCenter)
                        .background(Color.Black.copy(alpha = 0.5f))
                        .padding(horizontal = 12.dp, vertical = 6.dp),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Text(
                        text = stringResource(R.string.lut_synthesis_compare_tip),
                        color = Color.White.copy(alpha = 0.6f),
                        fontSize = 10.sp
                    )

                    Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                        Text(
                            text = stringResource(R.string.lut_synthesis_select_gallery),
                            color = Color(0xFF2196F3),
                            fontSize = 10.sp,
                            fontWeight = FontWeight.Bold,
                            modifier = Modifier
                                .clip(RoundedCornerShape(4.dp))
                                .clickable { galleryLauncher.launch("image/*") }
                                .padding(horizontal = 6.dp, vertical = 2.dp)
                        )

                        Text(
                            text = stringResource(R.string.lut_synthesis_default_preview),
                            color = Color.White.copy(alpha = 0.8f),
                            fontSize = 10.sp,
                            fontWeight = FontWeight.Bold,
                            modifier = Modifier
                                .clip(RoundedCornerShape(4.dp))
                                .clickable { viewModel.useDefaultPreview() }
                                .padding(horizontal = 6.dp, vertical = 2.dp)
                        )
                    }
                }
            }

            Spacer(modifier = Modifier.height(8.dp))

            // 2. 中间层级管理器：可添加多个 LUT 图层并带有各自的权重调节
            Card(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(horizontal = 12.dp),
                colors = CardDefaults.cardColors(containerColor = Color(0xFF1E1E1E)),
                shape = RoundedCornerShape(8.dp)
            ) {
                Column(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(8.dp)
                ) {
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.SpaceBetween,
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Text(
                            text = stringResource(R.string.lut_synthesis_add_lut) + " (${layers.size})",
                            color = Color.White,
                            fontSize = 13.sp,
                            fontWeight = FontWeight.Bold
                        )

                        IconButton(
                            onClick = { showLutSelector = true },
                            modifier = Modifier.size(24.dp)
                        ) {
                            Icon(
                                imageVector = Icons.Default.Add,
                                contentDescription = "Add Layer",
                                tint = Color.White
                            )
                        }
                    }

                    Spacer(modifier = Modifier.height(6.dp))

                    if (layers.isEmpty()) {
                        Box(
                            modifier = Modifier
                                .fillMaxWidth()
                                .height(60.dp),
                            contentAlignment = Alignment.Center
                        ) {
                            Text(
                                text = stringResource(R.string.lut_synthesis_empty_layers),
                                color = Color.White.copy(alpha = 0.4f),
                                fontSize = 11.sp,
                                textAlign = TextAlign.Center
                            )
                        }
                    } else {
                        // 利用 LazyColumn 限制固定高度以避免顶板被无限撑大，也可设置固定 MaxHeight
                        Box(modifier = Modifier.heightIn(max = 210.dp)) {
                            LazyColumn(
                                verticalArrangement = Arrangement.spacedBy(8.dp),
                                modifier = Modifier.fillMaxWidth()
                            ) {
                                itemsIndexed(layers) { index, layer ->
                                    Row(
                                        modifier = Modifier
                                            .fillMaxWidth()
                                            .clip(RoundedCornerShape(6.dp))
                                            .background(Color(0xFF2C2C2C))
                                            .padding(8.dp),
                                        verticalAlignment = Alignment.CenterVertically
                                    ) {
                                        Column(modifier = Modifier.weight(1f)) {
                                            Row(
                                                modifier = Modifier.fillMaxWidth(),
                                                horizontalArrangement = Arrangement.SpaceBetween
                                            ) {
                                                Text(
                                                    text = layer.lut.getName(),
                                                    color = Color.White,
                                                    fontSize = 12.sp,
                                                    fontWeight = FontWeight.Medium,
                                                    maxLines = 1,
                                                    overflow = TextOverflow.Ellipsis,
                                                    modifier = Modifier.weight(1f)
                                                )
                                                Text(
                                                    text = "${(layer.weight * 100).toInt()}%",
                                                    color = Color.White.copy(alpha = 0.6f),
                                                    fontSize = 10.sp
                                                )
                                            }
                                            Spacer(modifier = Modifier.height(4.dp))
                                            CustomSlider(
                                                value = layer.weight,
                                                onValueChange = { viewModel.updateLayerWeight(index, it) },
                                                onDoubleTap = { viewModel.updateLayerWeight(index, 1.0f) },
                                                valueRange = 0f..1f,
                                                activeTrackColor = Color.White,
                                                inactiveTrackColor = Color.Gray.copy(alpha = 0.3f),
                                                thumbColor = Color.White,
                                                modifier = Modifier.fillMaxWidth()
                                            )
                                            Spacer(modifier = Modifier.height(6.dp))
                                            LutLayerMaskSelector(
                                                selectedMask = layer.mask,
                                                onMaskSelected = { viewModel.updateLayerMask(index, it) }
                                            )
                                        }

                                        Spacer(modifier = Modifier.width(8.dp))

                                        // 控制顺序移动 (上/下)
                                        Column {
                                            if (index > 0) {
                                                IconButton(
                                                    onClick = { viewModel.moveLayer(index, index - 1) },
                                                    modifier = Modifier.size(24.dp)
                                                ) {
                                                    Icon(Icons.Default.KeyboardArrowUp, null, tint = Color.White)
                                                }
                                                Spacer(modifier = Modifier.width(8.dp))
                                            }
                                            if (index < layers.size - 1) {
                                                IconButton(
                                                    onClick = { viewModel.moveLayer(index, index + 1) },
                                                    modifier = Modifier.size(24.dp)
                                                ) {
                                                    Icon(Icons.Default.KeyboardArrowDown, null, tint = Color.White)
                                                }
                                                Spacer(modifier = Modifier.width(8.dp))
                                            }
                                        }

                                        IconButton(
                                            onClick = { viewModel.removeLayer(index) },
                                            modifier = Modifier.size(24.dp)
                                        ) {
                                            Icon(
                                                imageVector = Icons.Default.Delete,
                                                contentDescription = "Delete",
                                                tint = Color(0xFFE53935)
                                            )
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }

            Spacer(modifier = Modifier.height(16.dp))

            // 底部精致的操作区：包含重置和调色烘焙入口
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(horizontal = 16.dp, vertical = 8.dp),
                horizontalArrangement = Arrangement.spacedBy(12.dp),
                verticalAlignment = Alignment.CenterVertically
            ) {
                // 重置按钮
                OutlinedButton(
                    onClick = {
                        viewModel.updateColorRecipe(com.hinnka.mycamera.model.ColorRecipeParams())
                    },
                    colors = ButtonDefaults.outlinedButtonColors(contentColor = Color.White),
                    border = ButtonDefaults.outlinedButtonBorder.copy(brush = SolidColor(Color.White.copy(alpha = 0.3f))),
                    shape = RoundedCornerShape(24.dp),
                    modifier = Modifier.weight(1f)
                ) {
                    Icon(
                        imageVector = Icons.Default.Refresh,
                        contentDescription = "Reset Params",
                        modifier = Modifier.size(16.dp)
                    )
                    Spacer(modifier = Modifier.width(6.dp))
                    Text(
                        text = stringResource(R.string.crop_reset),
                        fontSize = 13.sp,
                        fontWeight = FontWeight.Medium
                    )
                }

                // 调色烘焙按钮 (精选醒目的暖橙色，突出入口)
                Button(
                    onClick = { showBakeParamsSheet = true },
                    colors = ButtonDefaults.buttonColors(
                        containerColor = Color(0xFFFF6B35),
                        contentColor = Color.White
                    ),
                    shape = RoundedCornerShape(24.dp),
                    modifier = Modifier.weight(1.5f)
                ) {
                    Icon(
                        imageVector = AppIcons.Tune,
                        contentDescription = "Tune Parameters",
                        modifier = Modifier.size(16.dp)
                    )
                    Spacer(modifier = Modifier.width(6.dp))
                    Text(
                        text = stringResource(R.string.lut_synthesis_bake_params),
                        fontSize = 13.sp,
                        fontWeight = FontWeight.Bold
                    )
                }
            }

            Spacer(modifier = Modifier.height(12.dp))
        }
    }

    // 弹出式：LUT 选择器 BottomSheet (精致磨砂)
    if (showLutSelector) {
        val sheetState = rememberModalBottomSheetState(skipPartiallyExpanded = true)
        ModalBottomSheet(
            onDismissRequest = { showLutSelector = false },
            sheetState = sheetState,
            containerColor = Color(0xFF161616),
            contentColor = Color.White,
            dragHandle = { BottomSheetDefaults.DragHandle(color = Color.White.copy(alpha = 0.3f)) }
        ) {
            Column(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(horizontal = 16.dp, vertical = 8.dp)
            ) {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Text(
                        text = stringResource(R.string.lut_synthesis_add_lut),
                        color = Color.White,
                        fontSize = 15.sp,
                        fontWeight = FontWeight.Bold
                    )
                    IconButton(
                        onClick = { showLutSelector = false },
                        modifier = Modifier.size(24.dp)
                    ) {
                        Icon(Icons.Default.Close, null, tint = Color.White)
                    }
                }

                Divider(color = Color.White.copy(alpha = 0.1f), modifier = Modifier.padding(vertical = 8.dp))

                LutSelector(
                    availableLuts = availableLuts,
                    currentLutId = null,
                    thumbnail = originalBitmap,
                    onLutSelected = { selectedLutId ->
                        if (selectedLutId != null) {
                            val lut = availableLuts.find { it.id == selectedLutId }
                            if (lut != null) {
                                viewModel.addLayer(lut)
                            }
                        }
                        showLutSelector = false
                    },
                    modifier = Modifier.fillMaxWidth()
                )

                Spacer(modifier = Modifier.height(24.dp))
            }
        }
    }

    // 弹出式：调色烘焙参数控制 BottomSheet (精致磨砂)
    if (showBakeParamsSheet) {
        val sheetState = rememberModalBottomSheetState(skipPartiallyExpanded = true)
        ModalBottomSheet(
            onDismissRequest = { showBakeParamsSheet = false },
            sheetState = sheetState,
            containerColor = Color.Black.copy(alpha = 0.8f),
            contentColor = Color.White,
            scrimColor = Color.Transparent,
            dragHandle = { BottomSheetDefaults.DragHandle(color = Color.White.copy(alpha = 0.3f)) }
        ) {
            val paletteState = remember(recipe) {
                ColorPaletteState(
                    x = recipe.paletteX,
                    y = recipe.paletteY,
                    density = recipe.paletteDensity
                ).normalized()
            }

            Column(
                modifier = Modifier
                    .fillMaxWidth()
                    .navigationBarsPadding()
            ) {
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(horizontal = 16.dp, vertical = 8.dp),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Text(
                        text = stringResource(R.string.lut_synthesis_bake_params),
                        color = Color.White,
                        fontSize = 15.sp,
                        fontWeight = FontWeight.Bold
                    )
                    IconButton(
                        onClick = { showBakeParamsSheet = false },
                        modifier = Modifier.size(24.dp)
                    ) {
                        Icon(
                            imageVector = Icons.Default.Close,
                            contentDescription = "Close",
                            tint = Color.White
                        )
                    }
                }

                Box(
                    modifier = Modifier.fillMaxWidth()
                ) {
                    ColorRecipePanel(
                        currentParams = recipe,
                        paletteState = paletteState,
                        onPaletteStateChange = { newState ->
                            val normalized = newState.normalized()
                            viewModel.updateColorRecipe(
                                ColorPaletteMapper.updatePaletteState(recipe, normalized)
                            )
                        },
                        onParamChange = { param, value ->
                            viewModel.updateColorRecipe(param.setValue(recipe, value))
                        },
                        onParamsChange = { newParams ->
                            viewModel.updateColorRecipe(newParams)
                        },
                        onRemarksChange = {
                            viewModel.updateColorRecipe(recipe.copy(remarks = it))
                        },
                        onCurveChange = { channel, points ->
                            viewModel.updateColorRecipe(
                                when (channel) {
                                    CurveChannel.MASTER -> recipe.copy(masterCurvePoints = points)
                                    CurveChannel.RED -> recipe.copy(redCurvePoints = points)
                                    CurveChannel.GREEN -> recipe.copy(greenCurvePoints = points)
                                    CurveChannel.BLUE -> recipe.copy(blueCurvePoints = points)
                                }
                            )
                        },
                        hideNonBakeable = true,
                        modifier = Modifier.fillMaxWidth()
                    )
                }
            }
        }
    }

    // 导出 LUT 命名 Dialog
    if (showExportDialog) {
        AlertDialog(
            onDismissRequest = { showExportDialog = false },
            title = {
                Text(
                    text = stringResource(R.string.lut_synthesis_enter_name),
                    color = Color.White,
                    fontSize = 16.sp,
                    fontWeight = FontWeight.Bold
                )
            },
            text = {
                Column(
                    verticalArrangement = Arrangement.spacedBy(12.dp),
                    modifier = Modifier.fillMaxWidth()
                ) {
                    OutlinedTextField(
                        value = lutNameInput,
                        onValueChange = { lutNameInput = it },
                        label = { Text(stringResource(R.string.lut_synthesis_name_label), color = Color.White.copy(alpha = 0.5f)) },
                        colors = TextFieldDefaults.colors(
                            focusedContainerColor = Color.Transparent,
                            unfocusedContainerColor = Color.Transparent,
                            focusedTextColor = Color.White,
                            unfocusedTextColor = Color.White,
                            focusedLabelColor = Color.White,
                            unfocusedLabelColor = Color.White.copy(alpha = 0.5f)
                        ),
                        modifier = Modifier.fillMaxWidth()
                    )

                    OutlinedTextField(
                        value = lutCategoryInput,
                        onValueChange = { lutCategoryInput = it },
                        label = { Text(stringResource(R.string.lut_synthesis_category_label), color = Color.White.copy(alpha = 0.5f)) },
                        colors = TextFieldDefaults.colors(
                            focusedContainerColor = Color.Transparent,
                            unfocusedContainerColor = Color.Transparent,
                            focusedTextColor = Color.White,
                            unfocusedTextColor = Color.White,
                            focusedLabelColor = Color.White,
                            unfocusedLabelColor = Color.White.copy(alpha = 0.5f)
                        ),
                        modifier = Modifier.fillMaxWidth()
                    )
                }
            },
            confirmButton = {
                TextButton(
                    onClick = {
                        val name = lutNameInput.trim().ifEmpty { "Synthesized_${System.currentTimeMillis()}" }
                        val category = lutCategoryInput.trim().ifEmpty { synthesisStr }
                        viewModel.exportSynthesizedLut(name, category)
                        showExportDialog = false
                    }
                ) {
                    Text(stringResource(R.string.confirm), color = Color.White)
                }
            },
            dismissButton = {
                TextButton(onClick = { showExportDialog = false }) {
                    Text(stringResource(R.string.cancel), color = Color.White.copy(alpha = 0.6f))
                }
            },
            containerColor = Color(0xFF1E1E1E)
        )
    }

    // 全屏 Loading 导出 Dialog
    if (exportState is ExportState.Saving) {
        Dialog(onDismissRequest = {}) {
            Surface(
                modifier = Modifier.size(150.dp),
                shape = RoundedCornerShape(12.dp),
                color = Color.Black.copy(alpha = 0.8f)
            ) {
                Column(
                    modifier = Modifier.fillMaxSize(),
                    verticalArrangement = Arrangement.Center,
                    horizontalAlignment = Alignment.CenterHorizontally
                ) {
                    CircularProgressIndicator(color = Color.White, strokeWidth = 3.dp)
                    Spacer(modifier = Modifier.height(16.dp))
                    Text(
                        text = stringResource(R.string.lut_synthesis_saving),
                        color = Color.White,
                        fontSize = 11.sp,
                        textAlign = TextAlign.Center,
                        modifier = Modifier.padding(horizontal = 8.dp)
                    )
                }
            }
        }
    }

    if (viewModel.showPaymentDialog) {
        val activity = context as? android.app.Activity
        PaymentDialog(
            onDismiss = { viewModel.showPaymentDialog = false },
            onPurchase = {
                viewModel.showPaymentDialog = false
                activity?.let { viewModel.purchase(it) }
            }
        )
    }
}

@Composable
private fun ZoomableSynthesisPreview(
    bitmap: Bitmap,
    contentDescription: String,
    modifier: Modifier = Modifier
) {
    val context = LocalContext.current
    val zoomableState = rememberZoomableImageState(
        zoomableState = rememberZoomableState(zoomSpec = ZoomSpec(maxZoomFactor = 10f))
    )
    val model = remember(context, bitmap) {
        ImageRequest.Builder(context)
            .data(bitmap)
            .crossfade(true)
            .build()
    }

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

@Composable
private fun LutLayerMaskSelector(
    selectedMask: LutSynthesisMask,
    onMaskSelected: (LutSynthesisMask) -> Unit,
    modifier: Modifier = Modifier
) {
    Row(
        modifier = modifier.horizontalScroll(rememberScrollState()),
        horizontalArrangement = Arrangement.spacedBy(6.dp),
        verticalAlignment = Alignment.CenterVertically
    ) {
        LutSynthesisMask.entries.forEach { mask ->
            FilterChip(
                selected = selectedMask == mask,
                onClick = { onMaskSelected(mask) },
                label = {
                    Text(
                        text = stringResource(mask.labelRes),
                        fontSize = 10.sp,
                        maxLines = 1
                    )
                },
                colors = FilterChipDefaults.filterChipColors(
                    containerColor = Color.Transparent,
                    labelColor = Color.White.copy(alpha = 0.65f),
                    selectedContainerColor = Color.White.copy(alpha = 0.18f),
                    selectedLabelColor = Color.White
                ),
                border = FilterChipDefaults.filterChipBorder(
                    enabled = true,
                    selected = selectedMask == mask,
                    borderColor = Color.White.copy(alpha = 0.18f),
                    selectedBorderColor = Color.White.copy(alpha = 0.45f)
                ),
                modifier = Modifier.height(28.dp)
            )
        }
    }
}

private val LutSynthesisMask.labelRes: Int
    get() = when (this) {
        LutSynthesisMask.ALL -> R.string.lut_synthesis_mask_all
        LutSynthesisMask.SKIN -> R.string.lut_synthesis_mask_skin
        LutSynthesisMask.SKY -> R.string.lut_synthesis_mask_sky
    }
