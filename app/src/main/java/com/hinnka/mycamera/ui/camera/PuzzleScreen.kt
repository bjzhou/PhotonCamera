package com.hinnka.mycamera.ui.camera

import android.content.ContentValues
import android.content.Context
import android.graphics.*
import android.net.Uri
import android.os.Environment
import android.provider.MediaStore
import android.widget.Toast
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.*
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
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.hinnka.mycamera.R
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.data.ContentRepository
import com.hinnka.mycamera.frame.FrameInfo
import com.hinnka.mycamera.frame.FrameManager
import com.hinnka.mycamera.frame.FrameRenderer
import com.hinnka.mycamera.gallery.GalleryManager
import com.hinnka.mycamera.gallery.MediaMetadata
import com.hinnka.mycamera.gallery.ExifWriter
import androidx.compose.ui.graphics.toArgb
import com.hinnka.mycamera.ui.theme.AccentOrange
import com.hinnka.mycamera.ui.components.CustomSlider
import com.hinnka.mycamera.utils.PLog
import kotlin.math.roundToInt
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import java.io.File
import java.io.FileOutputStream
import java.text.SimpleDateFormat
import java.util.*
import com.hinnka.mycamera.ui.icons.AppIcons

/**
 * 拼图卡片布局结果数据类
 */
data class PuzzleItemLayout(
    val uri: Uri,
    val bitmap: Bitmap,
    val rect: RectF
)

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun PuzzleScreen(
    onBack: () -> Unit,
    modifier: Modifier = Modifier
) {
    val context = LocalContext.current
    val scope = rememberCoroutineScope()

    // 核心仓库
    val contentRepository = remember { ContentRepository.getInstance(context) }
    val frameManager = remember { contentRepository.frameManager }
    val frameRenderer = remember { contentRepository.frameRenderer }
    val availableFrames by contentRepository.availableFrames.collectAsState()

    // 选中的 URI 列表
    val selectedPhotoUris = remember { mutableStateListOf<Uri>() }
    // 缓存加载的预览用中等尺寸的 Bitmap
    val loadedPreviewBitmaps = remember { mutableStateMapOf<Uri, Bitmap>() }

    // 拼图配置参数
    var columns by remember { mutableStateOf(2) }
    var spacingDp by remember { mutableStateOf(8f) }
    var cornerRadiusDp by remember { mutableStateOf(8f) }
    var isWhiteBackground by remember { mutableStateOf(true) } // 背景颜色：纯白/纯黑
    var selectedFrameId by remember { mutableStateOf<String?>(null) } // 套用的边框水印 ID

    // 控制 Tab：0 - 照片, 1 - 排版, 2 - 水印
    var controlTab by remember { mutableStateOf(0) }

    // 预览图及加载状态
    var previewBitmap by remember { mutableStateOf<Bitmap?>(null) }
    var isGeneratingPreview by remember { mutableStateOf(false) }
    var isSaving by remember { mutableStateOf(false) }

    // 多图选择 Launcher
    val imagePickerLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.GetMultipleContents()
    ) { uris ->
        if (uris.isNotEmpty()) {
            selectedPhotoUris.addAll(uris)
        }
    }

    // 异步加载选中的图片缩略图
    LaunchedEffect(selectedPhotoUris.toList()) {
        val newUris = selectedPhotoUris.filter { !loadedPreviewBitmaps.containsKey(it) }
        if (newUris.isNotEmpty()) {
            withContext(Dispatchers.IO) {
                newUris.forEach { uri ->
                    val bmp = loadScaledBitmap(context, uri, 640) // 预览用图片限制在 640px 左右，防 OOM 且提升合成速度
                    if (bmp != null) {
                        loadedPreviewBitmaps[uri] = bmp
                    }
                }
            }
        }
        // 清理已被删除图片的缓存
        val keysToRemove = loadedPreviewBitmaps.keys.filter { !selectedPhotoUris.contains(it) }
        keysToRemove.forEach { loadedPreviewBitmaps.remove(it) }
    }

    // 防抖异步生成预览大图
    LaunchedEffect(
        selectedPhotoUris.toList(),
        loadedPreviewBitmaps.size,
        columns,
        spacingDp,
        cornerRadiusDp,
        isWhiteBackground,
        selectedFrameId
    ) {
        if (selectedPhotoUris.isEmpty() || loadedPreviewBitmaps.isEmpty()) {
            previewBitmap = null
            return@LaunchedEffect
        }
        isGeneratingPreview = true
        delay(120) // 滑块调节防抖
        
        withContext(Dispatchers.Default) {
            val photos = selectedPhotoUris.mapNotNull { uri ->
                loadedPreviewBitmaps[uri]?.let { uri to it }
            }
            if (photos.isNotEmpty()) {
                val bgColor = if (isWhiteBackground) Color.White.toArgb() else Color.Black.toArgb()
                // 虚拟预览画布宽度为 720f
                val collageBmp = generateCollageBitmap(
                    photos = photos,
                    canvasWidth = 720f,
                    columns = columns,
                    gap = spacingDp * 1.5f, // 换算比例
                    cornerRadius = cornerRadiusDp * 1.5f,
                    backgroundColor = bgColor
                )
                if (collageBmp != null) {
                    val finalBmp = applyFrameWatermark(
                        context = context,
                        collageBitmap = collageBmp,
                        frameId = selectedFrameId,
                        photos = photos,
                        frameManager = frameManager,
                        frameRenderer = frameRenderer
                    )
                    withContext(Dispatchers.Main) {
                        previewBitmap = finalBmp
                    }
                }
            }
        }
        isGeneratingPreview = false
    }

    // 首次进入界面若无照片则自动调起选择器，极佳用户体验
    LaunchedEffect(Unit) {
        if (selectedPhotoUris.isEmpty()) {
            imagePickerLauncher.launch("image/*")
        }
    }

    Scaffold(
        topBar = {
            CenterAlignedTopAppBar(
                title = {
                    Text(
                        text = stringResource(R.string.toolbox_puzzle_title),
                        fontSize = 18.sp,
                        fontWeight = FontWeight.Bold
                    )
                },
                navigationIcon = {
                    IconButton(onClick = onBack) {
                        Icon(
                            imageVector = Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = "Back"
                        )
                    }
                },
                actions = {
                    IconButton(
                        onClick = {
                            if (selectedPhotoUris.isEmpty()) {
                                Toast.makeText(context, R.string.puzzle_no_photos, Toast.LENGTH_SHORT).show()
                                return@IconButton
                            }
                            isSaving = true
                            scope.launch {
                                val success = saveCollage(
                                    context = context,
                                    selectedUris = selectedPhotoUris,
                                    columns = columns,
                                    spacingDp = spacingDp,
                                    cornerRadiusDp = cornerRadiusDp,
                                    isWhiteBg = isWhiteBackground,
                                    frameId = selectedFrameId,
                                    frameManager = frameManager,
                                    frameRenderer = frameRenderer
                                )
                                isSaving = false
                                if (success) {
                                    Toast.makeText(context, R.string.puzzle_save_success, Toast.LENGTH_SHORT).show()
                                    onBack()
                                } else {
                                    Toast.makeText(context, R.string.puzzle_save_fail, Toast.LENGTH_SHORT).show()
                                }
                            }
                        },
                        enabled = !isSaving && selectedPhotoUris.isNotEmpty()
                    ) {
                        if (isSaving) {
                            CircularProgressIndicator(
                                color = Color.White,
                                modifier = Modifier.size(20.dp),
                                strokeWidth = 2.dp
                            )
                        } else {
                            Text(
                                text = stringResource(R.string.puzzle_save),
                                color = AccentOrange,
                                fontWeight = FontWeight.Bold,
                                fontSize = 15.sp
                            )
                        }
                    }
                },
                colors = TopAppBarDefaults.centerAlignedTopAppBarColors(
                    containerColor = Color.Black,
                    titleContentColor = Color.White,
                    navigationIconContentColor = Color.White
                )
            )
        },
        containerColor = Color.Black,
        modifier = modifier.fillMaxSize()
    ) { padding ->
        Column(
            modifier = Modifier
                .padding(padding)
                .fillMaxSize()
        ) {
            // 预览大区
            Box(
                modifier = Modifier
                    .weight(1f)
                    .fillMaxWidth()
                    .background(Color(0xFF0F0F0F))
                    .padding(24.dp),
                contentAlignment = Alignment.Center
            ) {
                if (selectedPhotoUris.isEmpty()) {
                    // 空状态引导
                    Card(
                        modifier = Modifier
                            .fillMaxWidth()
                            .height(280.dp)
                            .clip(RoundedCornerShape(16.dp))
                            .clickable { imagePickerLauncher.launch("image/*") },
                        colors = CardDefaults.cardColors(
                            containerColor = Color.White.copy(alpha = 0.05f)
                        )
                    ) {
                        Column(
                            modifier = Modifier
                                .fillMaxSize()
                                .padding(24.dp),
                            horizontalAlignment = Alignment.CenterHorizontally,
                            verticalArrangement = Arrangement.Center
                        ) {
                            Box(
                                modifier = Modifier
                                    .size(64.dp)
                                    .background(Color.White.copy(alpha = 0.05f), CircleShape)
                                    .border(1.dp, Color.White.copy(alpha = 0.2f), CircleShape),
                                contentAlignment = Alignment.Center
                            ) {
                                Icon(
                                    imageVector = Icons.Default.Add,
                                    contentDescription = null,
                                    tint = AccentOrange,
                                    modifier = Modifier.size(32.dp)
                                )
                            }
                            Spacer(modifier = Modifier.height(16.dp))
                            Text(
                                text = stringResource(R.string.puzzle_select_photos),
                                color = Color.White,
                                fontSize = 16.sp,
                                fontWeight = FontWeight.Bold
                            )
                            Spacer(modifier = Modifier.height(8.dp))
                            Text(
                                text = stringResource(R.string.toolbox_puzzle_desc),
                                color = Color.White.copy(alpha = 0.4f),
                                fontSize = 12.sp,
                                textAlign = TextAlign.Center
                            )
                        }
                    }
                } else {
                    // 渲染预览图
                    Box(
                        modifier = Modifier
                            .fillMaxSize()
                            .clip(RoundedCornerShape(12.dp))
                            .border(1.dp, Color.White.copy(alpha = 0.08f), RoundedCornerShape(12.dp)),
                        contentAlignment = Alignment.Center
                    ) {
                        val bmp = previewBitmap
                        if (bmp != null) {
                            androidx.compose.foundation.Image(
                                bitmap = bmp.asImageBitmap(),
                                contentDescription = "Preview",
                                contentScale = ContentScale.Fit,
                                modifier = Modifier.fillMaxSize()
                            )
                        }
                        
                        if (isGeneratingPreview || loadedPreviewBitmaps.size < selectedPhotoUris.size) {
                            Box(
                                modifier = Modifier
                                    .fillMaxSize()
                                    .background(Color.Black.copy(alpha = 0.3f)),
                                contentAlignment = Alignment.Center
                            ) {
                                CircularProgressIndicator(
                                    color = AccentOrange,
                                    modifier = Modifier.size(36.dp)
                                )
                            }
                        }
                    }
                }
            }

            // 底部控制面板（类似于编辑界面的磨砂暗黑卡片风格）
            Surface(
                color = Color(0xFF161616),
                shape = RoundedCornerShape(topStart = 24.dp, topEnd = 24.dp),
                modifier = Modifier.fillMaxWidth()
            ) {
                Column(
                    modifier = Modifier
                        .navigationBarsPadding()
                        .padding(bottom = 16.dp, start = 16.dp, end = 16.dp)
                ) {
                    // TabRow
                    Row(
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(vertical = 12.dp),
                        horizontalArrangement = Arrangement.spacedBy(24.dp)
                    ) {
                        TabItem(
                            title = stringResource(R.string.lut_creator_select_images),
                            isSelected = controlTab == 0,
                            onClick = { controlTab = 0 }
                        )
                        TabItem(
                            title = stringResource(R.string.recipe_tab_calibration), // 排版
                            isSelected = controlTab == 1,
                            onClick = { controlTab = 1 }
                        )
                        TabItem(
                            title = stringResource(R.string.puzzle_frame_watermark),
                            isSelected = controlTab == 2,
                            onClick = { controlTab = 2 }
                        )
                    }

                    // Tab 内容区
                    Box(
                        modifier = Modifier
                            .fillMaxWidth()
                            .height(240.dp)
                    ) {
                        when (controlTab) {
                            0 -> {
                                // 照片选区与增删、排序
                                Column(modifier = Modifier.fillMaxSize()) {
                                    Row(
                                        modifier = Modifier.fillMaxWidth(),
                                        horizontalArrangement = Arrangement.SpaceBetween,
                                        verticalAlignment = Alignment.CenterVertically
                                    ) {
                                        Text(
                                            text = stringResource(R.string.items_selected, selectedPhotoUris.size),
                                            color = Color.White.copy(alpha = 0.5f),
                                            fontSize = 12.sp,
                                            fontWeight = FontWeight.Bold
                                        )
                                        Row(
                                            modifier = Modifier
                                                .clip(RoundedCornerShape(12.dp))
                                                .background(Color.White.copy(alpha = 0.08f))
                                                .clickable { imagePickerLauncher.launch("image/*") }
                                                .padding(horizontal = 12.dp, vertical = 6.dp),
                                            verticalAlignment = Alignment.CenterVertically,
                                            horizontalArrangement = Arrangement.spacedBy(4.dp)
                                        ) {
                                            Icon(
                                                imageVector = Icons.Default.Add,
                                                contentDescription = null,
                                                tint = AccentOrange,
                                                modifier = Modifier.size(14.dp)
                                            )
                                            Text(
                                                text = stringResource(R.string.import_photo),
                                                color = Color.White,
                                                fontSize = 12.sp,
                                                fontWeight = FontWeight.Medium
                                            )
                                        }
                                    }
                                    Spacer(modifier = Modifier.height(12.dp))
                                    
                                    if (selectedPhotoUris.isEmpty()) {
                                        Box(
                                            modifier = Modifier.fillMaxSize(),
                                            contentAlignment = Alignment.Center
                                        ) {
                                            Text(
                                                text = stringResource(R.string.puzzle_no_photos),
                                                color = Color.White.copy(alpha = 0.3f),
                                                fontSize = 14.sp
                                            )
                                        }
                                    } else {
                                        LazyRow(
                                            horizontalArrangement = Arrangement.spacedBy(12.dp),
                                            modifier = Modifier.fillMaxSize()
                                        ) {
                                            itemsIndexed(selectedPhotoUris.toList()) { index, uri ->
                                                Box(
                                                    modifier = Modifier
                                                        .size(width = 110.dp, height = 180.dp)
                                                        .clip(RoundedCornerShape(8.dp))
                                                        .border(1.dp, Color.White.copy(alpha = 0.1f), RoundedCornerShape(8.dp))
                                                ) {
                                                    val previewBmp = loadedPreviewBitmaps[uri]
                                                    if (previewBmp != null) {
                                                        androidx.compose.foundation.Image(
                                                            bitmap = previewBmp.asImageBitmap(),
                                                            contentDescription = null,
                                                            contentScale = ContentScale.Crop,
                                                            modifier = Modifier.fillMaxSize()
                                                        )
                                                    } else {
                                                        Box(
                                                            modifier = Modifier
                                                                .fillMaxSize()
                                                                .background(Color.White.copy(alpha = 0.05f)),
                                                            contentAlignment = Alignment.Center
                                                        ) {
                                                            CircularProgressIndicator(
                                                                color = AccentOrange.copy(alpha = 0.5f),
                                                                modifier = Modifier.size(20.dp),
                                                                strokeWidth = 2.dp
                                                            )
                                                        }
                                                    }
                                                    
                                                    // 删除按钮
                                                    Box(
                                                        modifier = Modifier
                                                            .align(Alignment.TopEnd)
                                                            .padding(4.dp)
                                                            .size(20.dp)
                                                            .background(Color.Black.copy(alpha = 0.6f), CircleShape)
                                                            .clickable { selectedPhotoUris.remove(uri) },
                                                        contentAlignment = Alignment.Center
                                                    ) {
                                                        Icon(
                                                            imageVector = Icons.Default.Close,
                                                            contentDescription = "Delete",
                                                            tint = Color.White,
                                                            modifier = Modifier.size(12.dp)
                                                        )
                                                    }

                                                    // 排序控制底盘栏
                                                    Row(
                                                        modifier = Modifier
                                                            .align(Alignment.BottomCenter)
                                                            .fillMaxWidth()
                                                            .background(Color.Black.copy(alpha = 0.7f))
                                                            .padding(vertical = 2.dp),
                                                        horizontalArrangement = Arrangement.SpaceEvenly,
                                                        verticalAlignment = Alignment.CenterVertically
                                                    ) {
                                                        // 左移按钮
                                                        Icon(
                                                            imageVector = AppIcons.AutoMirroredArrowLeft,
                                                            contentDescription = "Move Left",
                                                            tint = if (index > 0) Color.White else Color.White.copy(alpha = 0.2f),
                                                            modifier = Modifier
                                                                .size(22.dp)
                                                                .clickable(enabled = index > 0) {
                                                                    selectedPhotoUris.removeAt(index)
                                                                    selectedPhotoUris.add(index - 1, uri)
                                                                }
                                                        )
                                                        // 序号
                                                        Text(
                                                            text = "${index + 1}",
                                                            color = AccentOrange,
                                                            fontSize = 11.sp,
                                                            fontWeight = FontWeight.Bold
                                                        )
                                                        // 右移按钮
                                                        Icon(
                                                            imageVector = AppIcons.AutoMirroredArrowRight,
                                                            contentDescription = "Move Right",
                                                            tint = if (index < selectedPhotoUris.size - 1) Color.White else Color.White.copy(alpha = 0.2f),
                                                            modifier = Modifier
                                                                .size(22.dp)
                                                                .clickable(enabled = index < selectedPhotoUris.size - 1) {
                                                                    selectedPhotoUris.removeAt(index)
                                                                    selectedPhotoUris.add(index + 1, uri)
                                                                }
                                                        )
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            1 -> {
                                // 排版参数设置项
                                Column(
                                    modifier = Modifier
                                        .fillMaxSize()
                                        .verticalScroll(rememberScrollState()),
                                    verticalArrangement = Arrangement.spacedBy(16.dp)
                                ) {
                                    // 列数调节
                                    Row(
                                        modifier = Modifier.fillMaxWidth(),
                                        verticalAlignment = Alignment.CenterVertically
                                    ) {
                                        Text(
                                            text = stringResource(R.string.puzzle_columns),
                                            color = Color.White,
                                            fontSize = 13.sp,
                                            modifier = Modifier.width(72.dp)
                                        )
                                        CustomSlider(
                                            value = columns.toFloat(),
                                            onValueChange = { columns = it.roundToInt() },
                                            valueRange = 1f..4f,
                                            activeTrackColor = AccentOrange,
                                            thumbColor = AccentOrange,
                                            modifier = Modifier.weight(1f)
                                        )
                                        Text(
                                            text = "$columns",
                                            color = Color.White,
                                            fontSize = 13.sp,
                                            fontWeight = FontWeight.Bold,
                                            textAlign = TextAlign.End,
                                            modifier = Modifier.width(28.dp)
                                        )
                                    }

                                    // 边距调节
                                    Row(
                                        modifier = Modifier.fillMaxWidth(),
                                        verticalAlignment = Alignment.CenterVertically
                                    ) {
                                        Text(
                                            text = stringResource(R.string.puzzle_padding),
                                            color = Color.White,
                                            fontSize = 13.sp,
                                            modifier = Modifier.width(72.dp)
                                        )
                                        CustomSlider(
                                            value = spacingDp,
                                            onValueChange = { spacingDp = it },
                                            valueRange = 0f..24f,
                                            activeTrackColor = AccentOrange,
                                            thumbColor = AccentOrange,
                                            modifier = Modifier.weight(1f)
                                        )
                                        Text(
                                            text = "${spacingDp.toInt()}",
                                            color = Color.White,
                                            fontSize = 13.sp,
                                            fontWeight = FontWeight.Bold,
                                            textAlign = TextAlign.End,
                                            modifier = Modifier.width(36.dp)
                                        )
                                    }

                                    // 圆角调节
                                    Row(
                                        modifier = Modifier.fillMaxWidth(),
                                        verticalAlignment = Alignment.CenterVertically
                                    ) {
                                        Text(
                                            text = stringResource(R.string.puzzle_corner_radius),
                                            color = Color.White,
                                            fontSize = 13.sp,
                                            modifier = Modifier.width(72.dp)
                                        )
                                        CustomSlider(
                                            value = cornerRadiusDp,
                                            onValueChange = { cornerRadiusDp = it },
                                            valueRange = 0f..24f,
                                            activeTrackColor = AccentOrange,
                                            thumbColor = AccentOrange,
                                            modifier = Modifier.weight(1f)
                                        )
                                        Text(
                                            text = "${cornerRadiusDp.toInt()}",
                                            color = Color.White,
                                            fontSize = 13.sp,
                                            fontWeight = FontWeight.Bold,
                                            textAlign = TextAlign.End,
                                            modifier = Modifier.width(36.dp)
                                        )
                                    }

                                    // 背景颜色选择
                                    Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                                        Text(
                                            text = stringResource(R.string.puzzle_background),
                                            color = Color.White,
                                            fontSize = 13.sp
                                        )
                                        Row(
                                            horizontalArrangement = Arrangement.spacedBy(12.dp)
                                        ) {
                                            Row(
                                                modifier = Modifier
                                                    .clip(RoundedCornerShape(12.dp))
                                                    .background(if (isWhiteBackground) AccentOrange.copy(alpha = 0.2f) else Color.White.copy(alpha = 0.05f))
                                                    .border(1.dp, if (isWhiteBackground) AccentOrange else Color.Transparent, RoundedCornerShape(12.dp))
                                                    .clickable { isWhiteBackground = true }
                                                    .padding(horizontal = 16.dp, vertical = 8.dp),
                                                verticalAlignment = Alignment.CenterVertically
                                            ) {
                                                Box(modifier = Modifier.size(14.dp).clip(CircleShape).background(Color.White).border(1.dp, Color.LightGray, CircleShape))
                                                Spacer(modifier = Modifier.width(8.dp))
                                                Text(text = stringResource(R.string.puzzle_background_white), color = Color.White, fontSize = 12.sp)
                                            }

                                            Row(
                                                modifier = Modifier
                                                    .clip(RoundedCornerShape(12.dp))
                                                    .background(if (!isWhiteBackground) AccentOrange.copy(alpha = 0.2f) else Color.White.copy(alpha = 0.05f))
                                                    .border(1.dp, if (!isWhiteBackground) AccentOrange else Color.Transparent, RoundedCornerShape(12.dp))
                                                    .clickable { isWhiteBackground = false }
                                                    .padding(horizontal = 16.dp, vertical = 8.dp),
                                                verticalAlignment = Alignment.CenterVertically
                                            ) {
                                                Box(modifier = Modifier.size(14.dp).clip(CircleShape).background(Color.Black).border(1.dp, Color.DarkGray, CircleShape))
                                                Spacer(modifier = Modifier.width(8.dp))
                                                Text(text = stringResource(R.string.puzzle_background_black), color = Color.White, fontSize = 12.sp)
                                            }
                                        }
                                    }
                                }
                            }
                            2 -> {
                                // 水印选择 Tab
                                Column(modifier = Modifier.fillMaxSize()) {
                                    Text(
                                        text = stringResource(R.string.puzzle_frame_watermark),
                                        color = Color.White.copy(alpha = 0.5f),
                                        fontSize = 12.sp,
                                        fontWeight = FontWeight.Bold
                                    )
                                    Spacer(modifier = Modifier.height(16.dp))
                                    LazyRow(
                                        horizontalArrangement = Arrangement.spacedBy(12.dp),
                                        modifier = Modifier.fillMaxWidth()
                                    ) {
                                        // 无水印
                                        item {
                                            FrameSelectorItem(
                                                name = stringResource(R.string.none),
                                                isSelected = selectedFrameId == null,
                                                onClick = { selectedFrameId = null }
                                            )
                                        }
                                        // 可用水印外框
                                        items(availableFrames) { frame ->
                                            FrameSelectorItem(
                                                name = frame.name,
                                                isSelected = selectedFrameId == frame.id,
                                                onClick = { selectedFrameId = frame.id }
                                            )
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}


/**
 * 水印模板 Option 项
 */
@Composable
private fun FrameSelectorItem(
    name: String,
    isSelected: Boolean,
    onClick: () -> Unit
) {
    Column(
        horizontalAlignment = Alignment.CenterHorizontally,
        modifier = Modifier
            .width(72.dp)
            .clickable { onClick() }
    ) {
        Box(
            modifier = Modifier
                .size(64.dp)
                .clip(RoundedCornerShape(12.dp))
                .background(
                    if (isSelected) AccentOrange.copy(alpha = 0.25f)
                    else Color.White.copy(alpha = 0.06f)
                )
                .then(
                    if (isSelected) Modifier.border(2.dp, AccentOrange, RoundedCornerShape(12.dp))
                    else Modifier
                ),
            contentAlignment = Alignment.Center
        ) {
            Text(
                text = name.take(3).uppercase(),
                color = if (isSelected) AccentOrange else Color.White.copy(alpha = 0.6f),
                fontSize = 13.sp,
                fontWeight = FontWeight.Bold,
                textAlign = TextAlign.Center,
                modifier = Modifier.padding(4.dp)
            )
        }
        Spacer(modifier = Modifier.height(6.dp))
        Text(
            text = name,
            color = if (isSelected) AccentOrange else Color.White.copy(alpha = 0.5f),
            fontSize = 10.sp,
            textAlign = TextAlign.Center,
            maxLines = 1
        )
    }
}

/**
 * 滑块控制面板 TabItem
 */
@Composable
private fun TabItem(
    title: String,
    isSelected: Boolean,
    onClick: () -> Unit
) {
    Column(
        horizontalAlignment = Alignment.CenterHorizontally,
        modifier = Modifier.clickable(onClick = onClick)
    ) {
        Text(
            text = title,
            color = if (isSelected) Color.White else Color.White.copy(alpha = 0.4f),
            fontSize = 14.sp,
            fontWeight = if (isSelected) FontWeight.Bold else FontWeight.Normal
        )
        Spacer(modifier = Modifier.height(4.dp))
        Box(
            modifier = Modifier
                .size(width = 18.dp, height = 2.dp)
                .background(if (isSelected) AccentOrange else Color.Transparent)
        )
    }
}

/**
 * 瀑布流排版位置计算核心算法
 */
fun calculatePuzzleLayout(
    photos: List<Pair<Uri, Bitmap>>,
    canvasWidth: Float,
    columns: Int,
    gap: Float
): Pair<List<PuzzleItemLayout>, Float> {
    if (photos.isEmpty()) return emptyList<PuzzleItemLayout>() to 0f
    
    val layouts = mutableListOf<PuzzleItemLayout>()
    val columnHeights = FloatArray(columns) { 0f }
    val columnWidth = (canvasWidth - (columns - 1) * gap - 2 * gap) / columns
    
    // 用于记录每一列中最后放置的普通照片在 layouts 中的索引
    val lastItemIndexInColumn = IntArray(columns) { -1 }
    
    for (pair in photos) {
        val (uri, bitmap) = pair
        val bmpWidth = bitmap.width.toFloat()
        val bmpHeight = bitmap.height.toFloat()
        if (bmpWidth <= 0f || bmpHeight <= 0f) continue
        val ratio = bmpWidth / bmpHeight
        
        // 超宽图判定阈值设为 1.8
        val isWide = ratio >= 1.8f
        
        if (isWide) {
            // 超宽图占满整行
            val maxCurrentHeight = columnHeights.maxOrNull() ?: 0f
            val itemWidth = canvasWidth - 2 * gap
            val itemHeight = itemWidth / ratio
            
            val rect = RectF(
                gap,
                maxCurrentHeight + gap,
                gap + itemWidth,
                maxCurrentHeight + gap + itemHeight
            )
            layouts.add(PuzzleItemLayout(uri, bitmap, rect))
            
            val newLayoutIndex = layouts.size - 1
            // 拉平所有列的高度并加上此张图
            val newHeight = maxCurrentHeight + gap + itemHeight
            for (i in columnHeights.indices) {
                columnHeights[i] = newHeight
                lastItemIndexInColumn[i] = newLayoutIndex
            }
        } else {
            // 放入高度最短的那一列
            var shortestColumnIndex = 0
            var shortestHeight = columnHeights[0]
            for (i in 1 until columns) {
                if (columnHeights[i] < shortestHeight) {
                    shortestHeight = columnHeights[i]
                    shortestColumnIndex = i
                }
            }
            
            val itemWidth = columnWidth
            val itemHeight = itemWidth / ratio
            
            val left = gap + shortestColumnIndex * (columnWidth + gap)
            val top = shortestHeight + gap
            val rect = RectF(
                left,
                top,
                left + itemWidth,
                top + itemHeight
            )
            layouts.add(PuzzleItemLayout(uri, bitmap, rect))
            
            val newLayoutIndex = layouts.size - 1
            columnHeights[shortestColumnIndex] = top + itemHeight
            lastItemIndexInColumn[shortestColumnIndex] = newLayoutIndex
        }
    }
    
    // 计算所有列的平均高度作为目标对齐高度
    val averageHeight = columnHeights.average().toFloat()
    
    // 找出各列中需要对齐的最底部普通照片的索引
    val targetIndicesToAlign = lastItemIndexInColumn.filter { it >= 0 }.distinct()
    
    val alignedLayouts = layouts.mapIndexed { idx, item ->
        if (idx in targetIndicesToAlign) {
            val rect = item.rect
            // 超宽图不裁剪
            val isWide = rect.width() >= canvasWidth - 2 * gap - 1f
            if (isWide) {
                item
            } else {
                // 将底部对齐到 averageHeight，并确保高度至少为 10f
                val newBottom = maxOf(averageHeight, rect.top + 10f)
                item.copy(rect = RectF(rect.left, rect.top, rect.right, newBottom))
            }
        } else {
            item
        }
    }
    
    val finalContentHeight = averageHeight + gap
    return alignedLayouts to finalContentHeight
}

/**
 * 离屏拼图 Bitmap 生成算法
 */
fun generateCollageBitmap(
    photos: List<Pair<Uri, Bitmap>>,
    canvasWidth: Float,
    columns: Int,
    gap: Float,
    cornerRadius: Float,
    backgroundColor: Int
): Bitmap? {
    if (photos.isEmpty()) return null
    
    // 1. 瀑布流排版计算
    val (items, contentHeight) = calculatePuzzleLayout(photos, canvasWidth, columns, gap)
    if (items.isEmpty() || contentHeight <= 0f) return null
    
    // 2. 背景比例缩放及尺寸计算
    val finalWidth = canvasWidth
    val finalHeight = contentHeight
    val scale = 1f
    val deltaX = 0f
    val deltaY = 0f
    
    // 3. 绘制
    val outputBmp = Bitmap.createBitmap(finalWidth.toInt(), finalHeight.toInt(), Bitmap.Config.ARGB_8888)
    val canvas = Canvas(outputBmp)
    canvas.drawColor(backgroundColor)
    
    val paint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
        isFilterBitmap = true
    }
    
    for (item in items) {
        val origRect = item.rect
        val targetRect = RectF(
            origRect.left * scale + deltaX,
            origRect.top * scale + deltaY,
            origRect.right * scale + deltaX,
            origRect.bottom * scale + deltaY
        )
        
        val bmpWidth = item.bitmap.width.toFloat()
        val bmpHeight = item.bitmap.height.toFloat()
        val targetWidth = targetRect.width()
        val targetHeight = targetRect.height()
        
        val clipPath = Path()
        val actualCorner = cornerRadius * scale
        clipPath.addRoundRect(targetRect, actualCorner, actualCorner, Path.Direction.CW)
        
        canvas.save()
        canvas.clipPath(clipPath)
        
        if (bmpWidth > 0f && bmpHeight > 0f && targetWidth > 0f && targetHeight > 0f) {
            val bitmapRatio = bmpWidth / bmpHeight
            val targetRatio = targetWidth / targetHeight
            
            val srcRect = if (bitmapRatio > targetRatio) {
                // 原图更宽，左右裁剪
                val srcWidth = bmpHeight * targetRatio
                val left = (bmpWidth - srcWidth) / 2f
                Rect(left.toInt(), 0, (left + srcWidth).toInt(), bmpHeight.toInt())
            } else {
                // 原图更高，上下裁剪
                val srcHeight = bmpWidth / targetRatio
                val top = (bmpHeight - srcHeight) / 2f
                Rect(0, top.toInt(), bmpWidth.toInt(), (top + srcHeight).toInt())
            }
            canvas.drawBitmap(item.bitmap, srcRect, targetRect, paint)
        } else {
            canvas.drawBitmap(item.bitmap, null, targetRect, paint)
        }
        
        canvas.restore()
    }
    
    return outputBmp
}

/**
 * 异步套用水印边框外框
 */
suspend fun applyFrameWatermark(
    context: Context,
    collageBitmap: Bitmap,
    frameId: String?,
    photos: List<Pair<Uri, Bitmap>>,
    frameManager: FrameManager,
    frameRenderer: FrameRenderer
): Bitmap {
    if (frameId == null) return collageBitmap
    
    val template = frameManager.loadTemplate(frameId) ?: return collageBitmap
    
    // 读取第一张照片的 EXIF 填充进 Metadata
    val sourceMetadata = if (photos.isNotEmpty()) {
        try {
            MediaMetadata.fromUri(context, photos[0].first)
        } catch (e: Exception) {
            MediaMetadata.createDefault(collageBitmap.width, collageBitmap.height)
        }
    } else {
        MediaMetadata.createDefault(collageBitmap.width, collageBitmap.height)
    }
    
    val metadata = sourceMetadata.copy(
        width = collageBitmap.width,
        height = collageBitmap.height,
        dateTaken = System.currentTimeMillis()
    )
    
    return withContext(Dispatchers.IO) {
        try {
            frameRenderer.render(collageBitmap, template, metadata)
        } catch (e: Exception) {
            PLog.e("PuzzleScreen", "Failed to render frame watermark", e)
            collageBitmap
        }
    }
}

/**
 * 高清大图的后台加载与最终拼图合成导出
 */
suspend fun saveCollage(
    context: Context,
    selectedUris: List<Uri>,
    columns: Int,
    spacingDp: Float,
    cornerRadiusDp: Float,
    isWhiteBg: Boolean,
    frameId: String?,
    frameManager: FrameManager,
    frameRenderer: FrameRenderer
): Boolean {
    return withContext(Dispatchers.IO) {
        val tempExportFile = File(context.cacheDir, "temp_collage_${System.nanoTime()}.jpg")
        try {
            // 1. 加载高清原始大图，限制最大边为 4096 以求极致高画质且防 OOM
            val photos = selectedUris.mapNotNull { uri ->
                val bmp = loadScaledBitmap(context, uri, 4096)
                if (bmp != null) uri to bmp else null
            }
            if (photos.isEmpty()) return@withContext false
            
            // 2. 合成
            val bgColor = if (isWhiteBg) Color.White.toArgb() else Color.Black.toArgb()
            
            // 高清画布基准宽度为 4096f
            val collageBmp = generateCollageBitmap(
                photos = photos,
                canvasWidth = 4096f,
                columns = columns,
                gap = spacingDp * (4096f / 480f), // 换算高清画布比例
                cornerRadius = cornerRadiusDp * (4096f / 480f),
                backgroundColor = bgColor
            ) ?: return@withContext false
            
            val finalBmp = applyFrameWatermark(
                context = context,
                collageBitmap = collageBmp,
                frameId = frameId,
                photos = photos,
                frameManager = frameManager,
                frameRenderer = frameRenderer
            )
            
            // 3. 导出到系统 MediaStore
            val date = System.currentTimeMillis()
            val filename = "PhotonCamera_Collage_${SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US).format(Date(date))}.jpg"
            val contentValues = ContentValues().apply {
                put(MediaStore.MediaColumns.DISPLAY_NAME, filename)
                put(MediaStore.MediaColumns.MIME_TYPE, "image/jpeg")
                put(MediaStore.MediaColumns.RELATIVE_PATH, Environment.DIRECTORY_DCIM + "/PhotonCamera")
            }
            
            val uri = context.contentResolver.insert(
                MediaStore.Images.Media.EXTERNAL_CONTENT_URI,
                contentValues
            ) ?: return@withContext false
            
            FileOutputStream(tempExportFile).use { outputStream ->
                finalBmp.compress(Bitmap.CompressFormat.JPEG, 95, outputStream)
            }
            
            // 写入 EXIF
            val sourceMetadata = try {
                MediaMetadata.fromUri(context, photos[0].first)
            } catch (e: Exception) {
                MediaMetadata.createDefault(finalBmp.width, finalBmp.height)
            }
            val metadata = sourceMetadata.copy(
                width = finalBmp.width,
                height = finalBmp.height,
                dateTaken = date
            )
            
            ExifWriter.writeExif(
                tempExportFile,
                metadata.toCaptureInfo().copy(
                    imageWidth = finalBmp.width,
                    imageHeight = finalBmp.height
                )
            )
            
            context.contentResolver.openOutputStream(uri)?.use { output ->
                tempExportFile.inputStream().use { input -> input.copyTo(output) }
            }
            
            // 4. 清理内存与通知刷新
            photos.forEach { it.second.recycle() }
            if (collageBmp !== finalBmp) {
                collageBmp.recycle()
            }
            finalBmp.recycle()
            
            GalleryManager.notifyPhotoLibraryChanged()
            true
        } catch (e: Exception) {
            PLog.e("PuzzleScreen", "Failed to save collage", e)
            false
        } finally {
            tempExportFile.delete()
        }
    }
}

/**
 * 安全的下采样解码，防止内存溢出 (OOM)
 */
fun loadScaledBitmap(context: Context, uri: Uri, maxEdge: Int): Bitmap? {
    return try {
        context.contentResolver.openInputStream(uri)?.use { stream ->
            val options = BitmapFactory.Options().apply { inJustDecodeBounds = true }
            BitmapFactory.decodeStream(stream, null, options)
            var scale = 1
            val largestEdge = maxOf(options.outWidth, options.outHeight)
            if (largestEdge > maxEdge) {
                scale = largestEdge / maxEdge
            }
            options.inJustDecodeBounds = false
            options.inSampleSize = scale.coerceAtLeast(1)
            
            val scaledStream = context.contentResolver.openInputStream(uri)
            val bmp = BitmapFactory.decodeStream(scaledStream, null, options)
            scaledStream?.close()
            
            // 考虑 EXIF 旋转
            val rotation = getExifRotation(context, uri)
            if (rotation != 0 && bmp != null) {
                val matrix = Matrix().apply { postRotate(rotation.toFloat()) }
                val rotatedBmp = Bitmap.createBitmap(bmp, 0, 0, bmp.width, bmp.height, matrix, true)
                if (rotatedBmp !== bmp) {
                    bmp.recycle()
                }
                rotatedBmp
            } else {
                bmp
            }
        }
    } catch (e: Exception) {
        PLog.e("PuzzleScreen", "Failed to load scaled bitmap for $uri", e)
        null
    }
}

/**
 * 读取 EXIF 旋转度数
 */
private fun getExifRotation(context: Context, uri: Uri): Int {
    return try {
        context.contentResolver.openInputStream(uri)?.use { stream ->
            val exif = androidx.exifinterface.media.ExifInterface(stream)
            when (exif.getAttributeInt(androidx.exifinterface.media.ExifInterface.TAG_ORIENTATION, androidx.exifinterface.media.ExifInterface.ORIENTATION_NORMAL)) {
                androidx.exifinterface.media.ExifInterface.ORIENTATION_ROTATE_90 -> 90
                androidx.exifinterface.media.ExifInterface.ORIENTATION_ROTATE_180 -> 180
                androidx.exifinterface.media.ExifInterface.ORIENTATION_ROTATE_270 -> 270
                else -> 0
            }
        } ?: 0
    } catch (e: Exception) {
        0
    }
}
