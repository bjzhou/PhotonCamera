package com.hinnka.mycamera.ui.settings

import androidx.compose.foundation.*
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.Check
import androidx.compose.material.icons.filled.FilterNone
import androidx.compose.material.icons.filled.Article
import androidx.compose.material3.*
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.ui.res.stringResource
import com.hinnka.mycamera.R
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.frame.FrameInfo
import com.hinnka.mycamera.ui.camera.autoRotate
import com.hinnka.mycamera.ui.components.LogViewerDialog
import com.hinnka.mycamera.viewmodel.CameraViewModel

/**
 * 设置页面
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun SettingsScreen(
    viewModel: CameraViewModel,
    onBack: () -> Unit,
    modifier: Modifier = Modifier
) {
    val state by viewModel.state.collectAsState()
    val showLevelIndicator by viewModel.showLevelIndicator.collectAsState(initial = false)
    val shutterSoundEnabled by viewModel.shutterSoundEnabled.collectAsState(initial = true)
    val volumeKeyCapture by viewModel.volumeKeyCapture.collectAsState(initial = false)
    val autoSaveAfterCapture by viewModel.autoSaveAfterCapture.collectAsState(initial = true)
    val isPurchased by viewModel.isPurchased.collectAsState()

    val context = androidx.compose.ui.platform.LocalContext.current

    // 日志查看器弹窗状态
    var showLogViewerDialog by remember { mutableStateOf(false) }

    val backgroundColor = Color(0xFF434A5D)

    Column(
        modifier = modifier
            .fillMaxSize()
            .background(backgroundColor)
    ) {
        // 顶部标题栏
        TopAppBar(
            title = {
                Text(
                    text = stringResource(R.string.settings_title),
                    color = Color.White,
                    fontSize = 20.sp,
                    fontWeight = FontWeight.Medium
                )
            },
            navigationIcon = {
                IconButton(
                    onClick = onBack,
                    modifier = Modifier.autoRotate()
                ) {
                    Icon(
                        imageVector = Icons.AutoMirrored.Filled.ArrowBack,
                        contentDescription = stringResource(R.string.back),
                        tint = Color.White
                    )
                }
            },
            colors = TopAppBarDefaults.topAppBarColors(
                containerColor = backgroundColor
            )
        )

        // 设置项列表
        Column(
            modifier = Modifier
                .fillMaxSize()
                .verticalScroll(rememberScrollState())
                .padding(horizontal = 16.dp)
        ) {
            Spacer(modifier = Modifier.height(8.dp))

            if (!isPurchased) {
                PremiumCard(
                    onClick = {
                        val activity = context.findActivity()
                        if (activity != null) {
                            viewModel.purchase(activity)
                        }
                    }
                )
                Spacer(modifier = Modifier.height(24.dp))
            }

            // 画面比例设置
            SettingsSection(title = stringResource(R.string.settings_section_capture)) {
                AspectRatioSetting(
                    currentRatio = state.aspectRatio,
                    onRatioSelected = { viewModel.setAspectRatio(it) }
                )
            }

            Spacer(modifier = Modifier.height(24.dp))

            // 显示设置
            SettingsSection(title = stringResource(R.string.settings_section_display)) {
                SwitchSettingItem(
                    title = stringResource(R.string.settings_level_indicator),
                    description = stringResource(R.string.settings_level_description),
                    checked = showLevelIndicator,
                    onCheckedChange = { viewModel.setShowLevelIndicator(it) }
                )

                HorizontalDivider(
                    color = Color.White.copy(alpha = 0.1f),
                    modifier = Modifier.padding(vertical = 8.dp)
                )

                SwitchSettingItem(
                    title = stringResource(R.string.settings_grid_lines),
                    description = stringResource(R.string.settings_grid_description),
                    checked = state.showGrid,
                    onCheckedChange = { viewModel.toggleGrid() }
                )
            }

            Spacer(modifier = Modifier.height(24.dp))

            // 自定义导入设置
            SettingsSection(title = stringResource(R.string.settings_section_custom)) {
                CustomImportSection(
                    customImportManager = viewModel.getCustomImportManager(),
                    onImportSuccess = { viewModel.refreshCustomContent() }
                )
            }

            Spacer(modifier = Modifier.height(24.dp))

            // 边框水印设置
            SettingsSection(title = stringResource(R.string.settings_section_frame)) {
                FrameWatermarkSetting(
                    currentFrameId = viewModel.currentFrameId,
                    availableFrames = viewModel.availableFrameList,
                    onFrameSelected = { viewModel.setFrame(it) }
                )
            }

            Spacer(modifier = Modifier.height(24.dp))

            // 拍摄设置
            SettingsSection(title = stringResource(R.string.settings_section_operation)) {
                SwitchSettingItem(
                    title = stringResource(R.string.settings_shutter_sound),
                    description = stringResource(R.string.settings_shutter_sound_description),
                    checked = shutterSoundEnabled,
                    onCheckedChange = { viewModel.setShutterSoundEnabled(it) }
                )

                HorizontalDivider(
                    color = Color.White.copy(alpha = 0.1f),
                    modifier = Modifier.padding(vertical = 8.dp)
                )

                SwitchSettingItem(
                    title = stringResource(R.string.settings_volume_key),
                    description = stringResource(R.string.settings_volume_key_description),
                    checked = volumeKeyCapture,
                    onCheckedChange = { viewModel.setVolumeKeyCapture(it) }
                )

                HorizontalDivider(
                    color = Color.White.copy(alpha = 0.1f),
                    modifier = Modifier.padding(vertical = 8.dp)
                )

                SwitchSettingItem(
                    title = stringResource(R.string.settings_auto_save),
                    description = stringResource(R.string.settings_auto_save_description),
                    checked = autoSaveAfterCapture,
                    onCheckedChange = { viewModel.setAutoSaveAfterCapture(it) }
                )
            }

            Spacer(modifier = Modifier.height(24.dp))

            // 开发者选项
            SettingsSection(title = stringResource(R.string.settings_section_developer)) {
                // 日志收集按钮
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .clickable { showLogViewerDialog = true }
                        .padding(vertical = 8.dp),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Column(modifier = Modifier.weight(1f)) {
                        Text(
                            text = stringResource(R.string.settings_log_viewer),
                            color = Color.White,
                            fontSize = 16.sp,
                            fontWeight = FontWeight.Normal
                        )
                        Spacer(modifier = Modifier.height(4.dp))
                        Text(
                            text = stringResource(R.string.settings_log_viewer_description),
                            color = Color.White.copy(alpha = 0.6f),
                            fontSize = 13.sp,
                            lineHeight = 18.sp
                        )
                    }

                    Spacer(modifier = Modifier.width(16.dp))

                    Icon(
                        imageVector = Icons.Default.Article,
                        contentDescription = stringResource(R.string.logs),
                        tint = Color.White.copy(alpha = 0.6f)
                    )
                }
            }

            Spacer(modifier = Modifier.height(32.dp))
        }
    }

    // 显示日志查看器弹窗
    if (showLogViewerDialog) {
        LogViewerDialog(
            onDismiss = { showLogViewerDialog = false }
        )
    }
}

/**
 * 设置分组
 */
@Composable
fun SettingsSection(
    title: String,
    modifier: Modifier = Modifier,
    content: @Composable ColumnScope.() -> Unit
) {
    Column(modifier = modifier) {
        Text(
            text = title,
            color = Color.White.copy(alpha = 0.6f),
            fontSize = 14.sp,
            fontWeight = FontWeight.Medium,
            modifier = Modifier.padding(bottom = 12.dp)
        )

        Column(
            modifier = Modifier
                .fillMaxWidth()
                .clip(RoundedCornerShape(12.dp))
                .background(Color.White.copy(alpha = 0.05f))
                .padding(16.dp)
        ) {
            content()
        }
    }
}

/**
 * 开关设置项
 */
@Composable
fun SwitchSettingItem(
    title: String,
    description: String,
    checked: Boolean,
    onCheckedChange: (Boolean) -> Unit,
    modifier: Modifier = Modifier
) {
    Row(
        modifier = modifier
            .fillMaxWidth()
            .clickable { onCheckedChange(!checked) }
            .padding(vertical = 8.dp),
        horizontalArrangement = Arrangement.SpaceBetween,
        verticalAlignment = Alignment.CenterVertically
    ) {
        Column(modifier = Modifier.weight(1f)) {
            Text(
                text = title,
                color = Color.White,
                fontSize = 16.sp,
                fontWeight = FontWeight.Normal
            )
            Spacer(modifier = Modifier.height(4.dp))
            Text(
                text = description,
                color = Color.White.copy(alpha = 0.6f),
                fontSize = 13.sp,
                lineHeight = 18.sp
            )
        }

        Spacer(modifier = Modifier.width(16.dp))

        Switch(
            checked = checked,
            onCheckedChange = onCheckedChange,
            colors = SwitchDefaults.colors(
                checkedThumbColor = Color.White,
                checkedTrackColor = Color(0xFFFF6B35),
                uncheckedThumbColor = Color.White.copy(alpha = 0.6f),
                uncheckedTrackColor = Color.White.copy(alpha = 0.2f)
            )
        )
    }
}

/**
 * 画面比例设置
 */
@Composable
fun AspectRatioSetting(
    currentRatio: AspectRatio,
    onRatioSelected: (AspectRatio) -> Unit,
    modifier: Modifier = Modifier
) {
    Column(modifier = modifier.fillMaxWidth()) {
        Text(
            text = stringResource(R.string.aspect_ratio),
            color = Color.White,
            fontSize = 16.sp,
            fontWeight = FontWeight.Normal,
            modifier = Modifier.padding(bottom = 12.dp)
        )

        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            AspectRatio.entries.forEach { ratio ->
                AspectRatioButton(
                    ratio = ratio,
                    isSelected = currentRatio == ratio,
                    onClick = { onRatioSelected(ratio) },
                    modifier = Modifier.weight(1f)
                )
            }
        }
    }
}

/**
 * 画面比例按钮
 */
@Composable
fun AspectRatioButton(
    ratio: AspectRatio,
    isSelected: Boolean,
    onClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    Box(
        modifier = modifier
            .aspectRatio(1f)
            .clip(RoundedCornerShape(8.dp))
            .background(
                if (isSelected) Color(0xFFFF6B35) else Color.White.copy(alpha = 0.1f)
            )
            .clickable(onClick = onClick)
            .padding(8.dp),
        contentAlignment = Alignment.Center
    ) {
        Text(
            text = ratio.getDisplayName(),
            color = Color.White,
            fontSize = 14.sp,
            fontWeight = if (isSelected) FontWeight.Bold else FontWeight.Normal
        )
    }
}

/**
 * 边框水印设置
 */
@Composable
fun FrameWatermarkSetting(
    availableFrames: List<FrameInfo>,
    currentFrameId: String?,
    onFrameSelected: (String?) -> Unit,
    modifier: Modifier = Modifier
) {

    val frameScrollState = rememberLazyListState()

    LaunchedEffect(currentFrameId) {
        currentFrameId?.let { lutId ->
            val selectedIndex = availableFrames.indexOfFirst { it.id == lutId }
            if (selectedIndex >= 1) {
                frameScrollState.animateScrollToItem(selectedIndex - 1)
            }
        }
    }

    Column(modifier = modifier.fillMaxWidth()) {
        Text(
            text = stringResource(R.string.settings_frame_style),
            color = Color.White,
            fontSize = 16.sp,
            fontWeight = FontWeight.Normal,
            modifier = Modifier.padding(bottom = 12.dp)
        )

        // 边框选择器
        LazyRow(
            modifier = Modifier
                .fillMaxWidth()
                .padding(vertical = 8.dp),
            horizontalArrangement = Arrangement.spacedBy(8.dp),
            state = frameScrollState
        ) {
            // "无边框" 选项
            item {
                FrameItem(
                    name = stringResource(R.string.none),
                    isSelected = currentFrameId == null,
                    onClick = { onFrameSelected(null) },
                    isNone = true
                )
            }

            // 边框列表
            items(availableFrames) { frame ->
                FrameItem(
                    name = frame.name,
                    isSelected = currentFrameId == frame.id,
                    onClick = { onFrameSelected(frame.id) }
                )
            }
        }

        Spacer(modifier = Modifier.height(12.dp))

        Text(
            text = stringResource(R.string.settings_frame_description),
            color = Color.White.copy(alpha = 0.6f),
            fontSize = 13.sp
        )
    }
}


/**
 * 单个边框选项
 */
@Composable
private fun FrameItem(
    name: String,
    isSelected: Boolean,
    onClick: () -> Unit,
    isNone: Boolean = false,
    modifier: Modifier = Modifier
) {
    val backgroundColor = if (isSelected) {
        Color.White.copy(alpha = 0.3f)
    } else {
        Color.Transparent
    }

    val borderColor = if (isSelected) {
        Color.White
    } else {
        Color.Gray.copy(alpha = 0.5f)
    }

    Column(
        modifier = modifier
            .width(60.dp)
            .clip(RoundedCornerShape(8.dp))
            .background(backgroundColor)
            .border(
                width = if (isSelected) 2.dp else 1.dp,
                color = borderColor,
                shape = RoundedCornerShape(8.dp)
            )
            .clickable(onClick = onClick)
            .padding(8.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.Center
    ) {
        // 预览区域
        Box(
            modifier = Modifier
                .size(44.dp)
                .clip(RoundedCornerShape(4.dp))
                .background(if (isNone) Color.DarkGray else Color.White.copy(alpha = 0.2f))
                .then(
                    if (!isNone) {
                        Modifier.border(
                            width = 2.dp,
                            color = Color.White.copy(alpha = 0.5f),
                            shape = RoundedCornerShape(4.dp)
                        )
                    } else Modifier
                ),
            contentAlignment = Alignment.Center
        ) {
            if (isNone) {
                Icon(
                    imageVector = Icons.Default.FilterNone,
                    contentDescription = null,
                    tint = Color.White.copy(alpha = 0.7f),
                    modifier = Modifier.size(24.dp)
                )
            } else {
                // 模拟边框预览
                Box(
                    modifier = Modifier
                        .fillMaxSize()
                        .padding(4.dp)
                        .background(Color.Gray.copy(alpha = 0.5f))
                )
                Box(
                    modifier = Modifier
                        .align(Alignment.BottomCenter)
                        .fillMaxWidth()
                        .height(12.dp)
                        .background(Color.White.copy(alpha = 0.8f))
                )
            }

            if (isSelected) {
                Box(
                    modifier = Modifier
                        .fillMaxSize()
                        .background(Color.Black.copy(alpha = 0.4f)),
                    contentAlignment = Alignment.Center
                ) {
                    Icon(
                        imageVector = Icons.Default.Check,
                        contentDescription = stringResource(R.string.selected),
                        tint = Color.White,
                        modifier = Modifier.size(24.dp)
                    )
                }
            }
        }

        Spacer(modifier = Modifier.height(4.dp))

        // 名称
        Text(
            text = name,
            color = Color.White,
            fontSize = 9.sp,
            fontWeight = if (isSelected) FontWeight.Bold else FontWeight.Normal,
            maxLines = 1,
            overflow = TextOverflow.Ellipsis,
            textAlign = TextAlign.Center,
            modifier = Modifier.fillMaxWidth()
        )
    }
}
@Composable
private fun PremiumCard(
    onClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    Card(
        modifier = modifier
            .fillMaxWidth()
            .clip(RoundedCornerShape(16.dp))
            .clickable(onClick = onClick),
        colors = CardDefaults.cardColors(containerColor = Color.Transparent)
    ) {
        Box(
            modifier = Modifier
                .fillMaxWidth()
                .background(
                    androidx.compose.ui.graphics.Brush.linearGradient(
                        listOf(Color(0xFFFFD700), Color(0xFFFFA000))
                    )
                )
                .padding(20.dp)
        ) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                verticalAlignment = Alignment.CenterVertically
            ) {
                Column(modifier = Modifier.weight(1f)) {
                    Text(
                        text = stringResource(R.string.settings_premium_title),
                        color = Color.Black,
                        fontSize = 18.sp,
                        fontWeight = FontWeight.Bold
                    )
                    Spacer(modifier = Modifier.height(4.dp))
                    Text(
                        text = stringResource(R.string.settings_premium_description),
                        color = Color.Black.copy(alpha = 0.7f),
                        fontSize = 13.sp
                    )
                }
                
                Icon(
                    imageVector = Icons.Default.Check, // Reuse an icon or add Star
                    contentDescription = null,
                    tint = Color.Black,
                    modifier = Modifier
                        .size(40.dp)
                        .background(Color.Black.copy(alpha = 0.1f), CircleShape)
                        .padding(8.dp)
                )
            }
        }
    }
}

private fun android.content.Context.findActivity(): android.app.Activity? {
    var context = this
    while (context is android.content.ContextWrapper) {
        if (context is android.app.Activity) return context
        context = context.baseContext
    }
    return null
}
