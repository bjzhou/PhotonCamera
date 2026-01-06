package com.hinnka.mycamera.ui.gallery

import android.graphics.Bitmap
import androidx.activity.compose.BackHandler
import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.Check
import androidx.compose.material.icons.filled.Rotate90DegreesCw
import androidx.compose.material.icons.filled.Save
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import coil.compose.AsyncImage
import coil.request.ImageRequest
import com.hinnka.mycamera.R
import com.hinnka.mycamera.ui.components.CustomSlider
import com.hinnka.mycamera.ui.theme.AccentOrange
import com.hinnka.mycamera.viewmodel.GalleryViewModel
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext

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
    val rotation = viewModel.editRotation
    val brightness = viewModel.editBrightness
    val editLutId = viewModel.editLutId
    val editLutIntensity = viewModel.editLutIntensity
    val editLutConfig = viewModel.editLutConfig
    val availableLuts = viewModel.availableLuts
    
    var isSaving by remember { mutableStateOf(false) }
    var showExportDialog by remember { mutableStateOf(false) }
    var isLoadingPreview by remember { mutableStateOf(false) }
    
    BackHandler {
        viewModel.exitEditMode()
        onBack()
    }
    
    // 预览 Bitmap 状态
    var previewBitmap by remember { mutableStateOf<Bitmap?>(null) }
    var lutPreviews by remember { mutableStateOf<List<Bitmap?>>(emptyList()) }
    
    // 边框编辑状态
    val editFrameId = viewModel.editFrameId
    val editShowAppBranding = viewModel.editShowAppBranding
    
    // 当编辑参数变化时更新预览
    LaunchedEffect(currentPhoto, editLutId, editLutConfig, editLutIntensity, rotation, brightness, editFrameId, editShowAppBranding) {
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
    
    if (currentPhoto == null) {
        LaunchedEffect(Unit) {
            onBack()
        }
        return
    }
    
    Scaffold(
        topBar = {
            TopAppBar(
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
                            contentDescription = "Back",
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
                                contentDescription = "Save",
                                tint = AccentOrange
                            )
                        }
                    }
                    
                    // 导出（烘焙）按钮
                    IconButton(
                        onClick = { showExportDialog = true },
                        enabled = !isSaving
                    ) {
                        Icon(
                            imageVector = Icons.Default.Save,
                            contentDescription = "Export",
                            tint = Color.White
                        )
                    }
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
                if (previewBitmap != null) {
                    Image(
                        bitmap = previewBitmap!!.asImageBitmap(),
                        contentDescription = "Edit preview",
                        contentScale = ContentScale.Fit,
                        modifier = Modifier.fillMaxSize()
                    )
                } else {
                    // 加载中或尚无预览时显示原图
                    AsyncImage(
                        model = ImageRequest.Builder(context)
                            .data(currentPhoto.uri)
                            .crossfade(true)
                            .build(),
                        contentDescription = "Original",
                        contentScale = ContentScale.Fit,
                        modifier = Modifier.fillMaxSize()
                    )
                }
                
                // 加载指示器
                if (isLoadingPreview) {
                    CircularProgressIndicator(
                        color = AccentOrange,
                        modifier = Modifier.size(48.dp)
                    )
                }
                
                // LUT 指示器
                if (editLutId != null) {
                    Box(
                        modifier = Modifier
                            .align(Alignment.TopEnd)
                            .background(
                                AccentOrange.copy(alpha = 0.8f),
                                RoundedCornerShape(4.dp)
                            )
                            .padding(horizontal = 8.dp, vertical = 4.dp)
                    ) {
                        Text(
                            text = "LUT ${(editLutIntensity * 100).toInt()}%",
                            color = Color.White,
                            fontSize = 12.sp
                        )
                    }
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
                    
                    LazyRow(
                        horizontalArrangement = Arrangement.spacedBy(12.dp)
                    ) {
                        // LUT 选项
                        itemsIndexed(availableLuts) { index, lut ->
                            LutOption(
                                name = lut.name,
                                previewBitmap = lutPreviews.getOrNull(index),
                                isSelected = editLutId == lut.id,
                                onClick = { viewModel.setEditLut(lut.id) }
                            )
                        }
                    }
                    
                    // LUT 强度滑块（LUT 始终可用）
                    Spacer(modifier = Modifier.height(12.dp))
                    
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Text(
                            text = stringResource(R.string.intensity),
                            color = Color.White,
                            fontSize = 14.sp,
                            modifier = Modifier.width(60.dp)
                        )

                        CustomSlider(
                            value = editLutIntensity,
                            onValueChange = { viewModel.updateEditLutIntensity(it) },
                            valueRange = 0f..1f,
                            modifier = Modifier.weight(1f)
                        )
                        
                        Text(
                            text = "${(editLutIntensity * 100).toInt()}%",
                            color = Color.White.copy(alpha = 0.7f),
                            fontSize = 12.sp,
                            modifier = Modifier.width(40.dp)
                        )
                    }
                    
                    Spacer(modifier = Modifier.height(16.dp))
                    
                    // 边框水印选择器
                    Text(
                        text = stringResource(R.string.frame),
                        color = Color.White,
                        fontSize = 16.sp
                    )
                    
                    Spacer(modifier = Modifier.height(8.dp))
                    
                    val availableFrames = viewModel.availableFrames
                    
                    LazyRow(
                        horizontalArrangement = Arrangement.spacedBy(12.dp)
                    ) {
                        // 无边框选项
                        item {
                            LutOption(
                                name = stringResource(R.string.none),
                                isSelected = editFrameId == null,
                                onClick = { viewModel.setEditFrame(null) }
                            )
                        }
                        
                        // 边框选项
                        items(availableFrames) { frame ->
                            LutOption(
                                name = frame.name,
                                isSelected = editFrameId == frame.id,
                                onClick = { viewModel.setEditFrame(frame.id) }
                            )
                        }
                    }
                }
            }
        }
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
}

/**
 * LUT 选项
 */
@Composable
private fun LutOption(
    name: String,
    previewBitmap: Bitmap? = null,
    isSelected: Boolean,
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
