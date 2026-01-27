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
import androidx.compose.material.icons.filled.ChevronRight
import androidx.compose.material.icons.filled.ExpandLess
import androidx.compose.material.icons.filled.ExpandMore
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
import android.content.Intent
import android.net.Uri
import com.hinnka.mycamera.R
import com.hinnka.mycamera.frame.FrameInfo
import com.hinnka.mycamera.ui.camera.autoRotate
import com.hinnka.mycamera.ui.components.SliderSettingItem
import com.hinnka.mycamera.ui.components.LogViewerDialog
import com.hinnka.mycamera.data.VolumeKeyAction
import com.hinnka.mycamera.viewmodel.CameraViewModel
import androidx.compose.foundation.layout.ExperimentalLayoutApi
import androidx.compose.foundation.layout.FlowRow
import kotlin.math.roundToInt

/**
 * 设置页面
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun SettingsScreen(
    viewModel: CameraViewModel,
    onBack: () -> Unit,
    onFilterManagementClick: () -> Unit,
    onFrameManagementClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    val state by viewModel.state.collectAsState()
    val showLevelIndicator by viewModel.showLevelIndicator.collectAsState(initial = false)
    val shutterSoundEnabled by viewModel.shutterSoundEnabled.collectAsState(initial = true)
    val vibrationEnabled by viewModel.vibrationEnabled.collectAsState(initial = true)
    val volumeKeyAction by viewModel.volumeKeyAction.collectAsState()
    val autoSaveAfterCapture by viewModel.autoSaveAfterCapture.collectAsState(initial = true)
    val nrLevel by viewModel.nrLevel.collectAsState(initial = 1)
    val edgeLevel by viewModel.edgeLevel.collectAsState(initial = 1)
    val useRaw by viewModel.useRaw.collectAsState(initial = false)
    // 软件处理参数
    val sharpening by viewModel.sharpening.collectAsState(initial = 0f)
    val noiseReduction by viewModel.noiseReduction.collectAsState(initial = 0f)
    val chromaNoiseReduction by viewModel.chromaNoiseReduction.collectAsState(initial = 0f)
    val defaultFocalLength by viewModel.defaultFocalLength.collectAsState(initial = 0f)
    val useMultiFrame by viewModel.useMultiFrame.collectAsState()
    val multiFrameCount by viewModel.multiFrameCount.collectAsState()
    val isPurchased by viewModel.isPurchased.collectAsState()

    val context = androidx.compose.ui.platform.LocalContext.current

    // 日志查看器弹窗状态
    var showLogViewerDialog by remember { mutableStateOf(false) }
    var softwareProcessingExpanded by remember { mutableStateOf(false) }
    var calibrationExpanded by remember { mutableStateOf(false) }

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

            // 拍摄设置
            val currentCameraInfo = state.getCurrentCameraInfo()
            /*if (currentCameraInfo?.supportsRaw == true) {
                SettingsSection(title = stringResource(R.string.settings_section_capture)) {
                    SwitchSettingItem(
                        title = stringResource(R.string.settings_use_raw),
                        description = stringResource(R.string.settings_use_raw_description),
                        checked = useRaw,
                        onCheckedChange = { viewModel.setUseRaw(it) }
                    )
                }
                Spacer(modifier = Modifier.height(24.dp))
            }*/

            // 内容管理设置
            SettingsSection(title = stringResource(R.string.settings_section_management)) {
                NavigationSettingItem(
                    title = stringResource(R.string.settings_filter_management),
                    description = stringResource(R.string.settings_filter_management_description),
                    onClick = onFilterManagementClick
                )

                HorizontalDivider(
                    color = Color.White.copy(alpha = 0.1f),
                    modifier = Modifier.padding(vertical = 8.dp)
                )

                NavigationSettingItem(
                    title = stringResource(R.string.settings_frame_management),
                    description = stringResource(R.string.settings_frame_management_description),
                    onClick = onFrameManagementClick
                )
            }

            Spacer(modifier = Modifier.height(24.dp))

            // 相机校正设置
            val currentCameraId = state.currentCameraId
            val cameraOrientationOffset by viewModel.getCameraOrientationOffset(currentCameraId)
                .collectAsState(initial = 0)
            val cameraName = currentCameraInfo?.let { info ->
                val prefix = when (info.lensFacing) {
                    android.hardware.camera2.CameraCharacteristics.LENS_FACING_BACK -> stringResource(R.string.rear_camera)
                    android.hardware.camera2.CameraCharacteristics.LENS_FACING_FRONT -> stringResource(R.string.front_camera)
                    else -> stringResource(R.string.camera)
                }
                "$prefix ${info.cameraId}"
            } ?: stringResource(R.string.current_camera)

            SettingsSection(
                title = stringResource(R.string.settings_section_calibration),
                isExpandable = true,
                isExpanded = calibrationExpanded,
                onToggleExpand = { calibrationExpanded = !calibrationExpanded }
            ) {
                QualityLevelSetting(
                    title = stringResource(R.string.settings_camera_orientation) + " ($cameraName)",
                    description = stringResource(R.string.settings_camera_orientation_description),
                    levels = listOf(
                        0 to stringResource(R.string.settings_orientation_normal),
                        90 to stringResource(R.string.settings_orientation_90),
                        180 to stringResource(R.string.settings_orientation_180),
                        270 to stringResource(R.string.settings_orientation_270)
                    ),
                    currentLevel = cameraOrientationOffset,
                    onLevelSelected = { viewModel.setCameraOrientationOffset(currentCameraId, it) }
                )
            }

            Spacer(modifier = Modifier.height(24.dp))

            // 影像处理设置
            SettingsSection(title = stringResource(R.string.settings_section_image_processing)) {
                QualityLevelSetting(
                    title = stringResource(R.string.settings_nr_level),
                    description = stringResource(R.string.settings_nr_level_description),
                    levels = listOf(
                        0 to stringResource(R.string.settings_nr_level_off),
                        1 to stringResource(R.string.settings_nr_level_fast),
                        2 to stringResource(R.string.settings_nr_level_high_quality),
                        3 to stringResource(R.string.settings_nr_level_minimal),
                        4 to stringResource(R.string.settings_nr_level_zsl)
                    ),
                    currentLevel = nrLevel,
                    onLevelSelected = { viewModel.setNRLevel(it) }
                )

                HorizontalDivider(
                    color = Color.White.copy(alpha = 0.1f),
                    modifier = Modifier.padding(vertical = 12.dp)
                )

                QualityLevelSetting(
                    title = stringResource(R.string.settings_edge_level),
                    description = stringResource(R.string.settings_edge_level_description),
                    levels = listOf(
                        0 to stringResource(R.string.settings_nr_level_off),
                        1 to stringResource(R.string.settings_nr_level_fast),
                        2 to stringResource(R.string.settings_nr_level_high_quality),
                        3 to stringResource(R.string.settings_nr_level_zsl)
                    ),
                    currentLevel = edgeLevel,
                    onLevelSelected = { viewModel.setEdgeLevel(it) }
                )
            }

            Spacer(modifier = Modifier.height(16.dp))

            // 软件细节微调 (Fine Tuning Sliders)
            SettingsSection(
                title = stringResource(R.string.settings_section_software_processing),
                description = stringResource(R.string.settings_detail_enhancement_description),
                isExpandable = true,
                isExpanded = softwareProcessingExpanded,
                onToggleExpand = { softwareProcessingExpanded = !softwareProcessingExpanded }
            ) {
                SliderSettingItem(
                    title = stringResource(R.string.settings_sharpening),
                    description = stringResource(R.string.settings_sharpening_description),
                    value = sharpening,
                    valueRange = 0f..1f,
                    onValueChange = { viewModel.setSharpening(it) }
                )

                Spacer(modifier = Modifier.height(12.dp))

                SliderSettingItem(
                    title = stringResource(R.string.settings_noise_reduction),
                    description = stringResource(R.string.settings_noise_reduction_description),
                    value = noiseReduction,
                    valueRange = 0f..1f,
                    onValueChange = { viewModel.setNoiseReduction(it) }
                )

                Spacer(modifier = Modifier.height(12.dp))

                SliderSettingItem(
                    title = stringResource(R.string.settings_chroma_noise_reduction),
                    description = stringResource(R.string.settings_chroma_noise_reduction_description),
                    value = chromaNoiseReduction,
                    valueRange = 0f..1f,
                    onValueChange = { viewModel.setChromaNoiseReduction(it) }
                )
            }

            Spacer(modifier = Modifier.height(24.dp))

            // 拍摄设置（开关项）
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
                    title = stringResource(R.string.settings_vibration),
                    description = stringResource(R.string.settings_vibration_description),
                    checked = vibrationEnabled,
                    onCheckedChange = { viewModel.setVibrationEnabled(it) }
                )

                HorizontalDivider(
                    color = Color.White.copy(alpha = 0.1f),
                    modifier = Modifier.padding(vertical = 8.dp)
                )

                VolumeKeyActionSetting(
                    action = volumeKeyAction,
                    onActionSelected = { viewModel.setVolumeKeyAction(it) }
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

                HorizontalDivider(
                    color = Color.White.copy(alpha = 0.1f),
                    modifier = Modifier.padding(vertical = 8.dp)
                )

                SwitchSettingItem(
                    title = stringResource(R.string.settings_use_multi_frame),
                    description = stringResource(R.string.settings_use_multi_frame_description),
                    checked = useMultiFrame,
                    onCheckedChange = { viewModel.setUseMultiFrame(it) }
                )

                if (useMultiFrame) {
                    HorizontalDivider(
                        color = Color.White.copy(alpha = 0.1f),
                        modifier = Modifier.padding(vertical = 12.dp)
                    )

                    QualityLevelSetting(
                        title = stringResource(R.string.settings_multi_frame_count),
                        description = stringResource(R.string.settings_multi_frame_count_description),
                        levels = listOf(
                            4 to "4",
                            8 to "8",
                            12 to "12",
                        ),
                        currentLevel = multiFrameCount,
                        onLevelSelected = { viewModel.setMultiFrameCount(it) }
                    )
                }

                HorizontalDivider(
                    color = Color.White.copy(alpha = 0.1f),
                    modifier = Modifier.padding(vertical = 8.dp)
                )

                DefaultFocalLengthSetting(
                    viewModel = viewModel,
                    currentFocalLength = defaultFocalLength,
                    onFocalLengthSelected = { viewModel.setDefaultFocalLength(it) }
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

            Spacer(modifier = Modifier.height(24.dp))

            // 关于
            SettingsSection(title = stringResource(R.string.settings_section_about)) {
                NavigationSettingItem(
                    title = stringResource(R.string.settings_donation),
                    description = stringResource(R.string.settings_donation_description),
                    onClick = {
                        val qrCodeUrl = "https://qr.alipay.com/fkx103287mz2sqvs1esdh30"
                        val alipayUrl = "alipays://platformapi/startapp?saId=10000007&clientVersion=3.7.0.0718&qrcode=${
                            java.net.URLEncoder.encode(
                                qrCodeUrl,
                                "UTF-8"
                            )
                        }"
                        val intent = Intent(Intent.ACTION_VIEW, Uri.parse(alipayUrl))
                        intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                        try {
                            context.startActivity(intent)
                        } catch (e: Exception) {
                            // 如果没安装支付宝，则尝试用浏览器打开
                            val webIntent = Intent(Intent.ACTION_VIEW, Uri.parse(qrCodeUrl))
                            webIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                            try {
                                context.startActivity(webIntent)
                            } catch (e2: Exception) {
                                // 处理浏览器也没有的情况（极少见）
                            }
                        }
                    }
                )
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
    description: String? = null,
    isExpandable: Boolean = false,
    isExpanded: Boolean = true,
    onToggleExpand: () -> Unit = {},
    content: @Composable ColumnScope.() -> Unit
) {
    Column(modifier = modifier) {
        if (!isExpandable) {
            Text(
                text = title,
                color = Color.White.copy(alpha = 0.6f),
                fontSize = 14.sp,
                fontWeight = FontWeight.Medium,
                modifier = Modifier.padding(bottom = 12.dp)
            )
        }

        Column(
            modifier = Modifier
                .fillMaxWidth()
                .clip(RoundedCornerShape(12.dp))
                .background(Color.White.copy(alpha = 0.05f))
        ) {
            if (isExpandable) {
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .clickable(onClick = onToggleExpand)
                        .padding(16.dp),
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
                        if (description != null) {
                            Spacer(modifier = Modifier.height(4.dp))
                            Text(
                                text = description,
                                color = Color.White.copy(alpha = 0.6f),
                                fontSize = 13.sp,
                                lineHeight = 18.sp
                            )
                        }
                    }

                    Icon(
                        imageVector = if (isExpanded) Icons.Default.ExpandLess else Icons.Default.ExpandMore,
                        contentDescription = null,
                        tint = Color.White.copy(alpha = 0.6f),
                        modifier = Modifier.size(24.dp)
                    )
                }
            }

            if (isExpanded) {
                Column(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(16.dp)
                        .then(if (isExpandable) Modifier.padding(top = 0.dp) else Modifier)
                ) {
                    if (isExpandable) {
                        HorizontalDivider(
                            color = Color.White.copy(alpha = 0.1f),
                            modifier = Modifier.padding(bottom = 16.dp)
                        )
                    }
                    content()
                }
            }
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
 * 导航设置项（点击后跳转到其他页面）
 */
@Composable
fun NavigationSettingItem(
    title: String,
    description: String,
    onClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    Row(
        modifier = modifier
            .fillMaxWidth()
            .clickable(onClick = onClick)
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

        Icon(
            imageVector = Icons.Default.ChevronRight,
            contentDescription = null,
            tint = Color.White.copy(alpha = 0.6f)
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


/**
 * 图像质量等级设置（通用组件）
 */
@Composable
fun QualityLevelSetting(
    title: String,
    description: String,
    levels: List<Pair<Int, String>>,
    currentLevel: Int,
    onLevelSelected: (Int) -> Unit,
    modifier: Modifier = Modifier
) {

    Column(modifier = modifier.fillMaxWidth()) {
        Text(
            text = title,
            color = Color.White,
            fontSize = 16.sp,
            fontWeight = FontWeight.Normal,
            modifier = Modifier.padding(bottom = 4.dp)
        )
        Text(
            text = description,
            color = Color.White.copy(alpha = 0.6f),
            fontSize = 13.sp,
            lineHeight = 18.sp,
            modifier = Modifier.padding(bottom = 12.dp)
        )

        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            levels.forEach { (level, label) ->
                val isSelected = currentLevel == level
                Box(
                    modifier = Modifier
                        .weight(1f)
                        .height(36.dp)
                        .clip(RoundedCornerShape(8.dp))
                        .background(
                            if (isSelected) Color(0xFFFF6B35) else Color.White.copy(alpha = 0.1f)
                        )
                        .clickable { onLevelSelected(level) },
                    contentAlignment = Alignment.Center
                ) {
                    Text(
                        text = label,
                        color = Color.White,
                        fontSize = 12.sp,
                        fontWeight = if (isSelected) FontWeight.Bold else FontWeight.Normal
                    )
                }
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

/**
 * 音量键操作设置
 */
@Composable
fun VolumeKeyActionSetting(
    action: VolumeKeyAction,
    onActionSelected: (VolumeKeyAction) -> Unit,
    modifier: Modifier = Modifier
) {
    Column(modifier = modifier.fillMaxWidth()) {
        Text(
            text = stringResource(R.string.settings_volume_key_action),
            color = Color.White,
            fontSize = 16.sp,
            fontWeight = FontWeight.Normal,
            modifier = Modifier.padding(bottom = 4.dp)
        )
        Text(
            text = stringResource(R.string.settings_volume_key_action_description),
            color = Color.White.copy(alpha = 0.6f),
            fontSize = 13.sp,
            lineHeight = 18.sp,
            modifier = Modifier.padding(bottom = 12.dp)
        )

        val options = listOf(
            VolumeKeyAction.NONE to stringResource(R.string.settings_volume_key_action_none),
            VolumeKeyAction.CAPTURE to stringResource(R.string.settings_volume_key_action_capture),
            VolumeKeyAction.EXPOSURE_COMPENSATION to stringResource(R.string.settings_volume_key_action_exposure),
            VolumeKeyAction.ZOOM to stringResource(R.string.settings_volume_key_action_zoom)
        )

        // Use a wrapping layout or Row with weight
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(4.dp)
        ) {
            options.forEach { (option, label) ->
                val isSelected = action == option
                Box(
                    modifier = Modifier
                        .weight(1f)
                        .height(40.dp)
                        .clip(RoundedCornerShape(8.dp))
                        .background(if (isSelected) Color(0xFFFF6B35) else Color.White.copy(alpha = 0.1f))
                        .clickable { onActionSelected(option) },
                    contentAlignment = Alignment.Center
                ) {
                    Text(
                        text = label,
                        color = if (isSelected) Color.White else Color.White.copy(alpha = 0.7f),
                        fontSize = 11.sp,
                        fontWeight = if (isSelected) FontWeight.Bold else FontWeight.Normal,
                        textAlign = TextAlign.Center,
                        maxLines = 2,
                        lineHeight = 12.sp
                    )
                }
            }
        }
    }
}

/**
 * 默认焦段设置
 */
@OptIn(ExperimentalLayoutApi::class)
@Composable
fun DefaultFocalLengthSetting(
    viewModel: CameraViewModel,
    currentFocalLength: Float,
    onFocalLengthSelected: (Float) -> Unit,
    modifier: Modifier = Modifier
) {
    Column(modifier = modifier.fillMaxWidth()) {
        Text(
            text = stringResource(R.string.settings_default_focal_length),
            color = Color.White,
            fontSize = 16.sp,
            fontWeight = FontWeight.Normal,
            modifier = Modifier.padding(bottom = 4.dp)
        )
        Text(
            text = stringResource(R.string.settings_default_focal_length_description),
            color = Color.White.copy(alpha = 0.6f),
            fontSize = 13.sp,
            lineHeight = 18.sp,
            modifier = Modifier.padding(bottom = 12.dp)
        )

        val availableFLs = remember { viewModel.getAvailableFocalLengths() }
        val options = remember(availableFLs) {
            val list = mutableListOf(0f to "None")
            availableFLs.forEach { fl ->
                list.add(fl to "${fl.roundToInt()}mm")
            }
            list
        }

        FlowRow(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(8.dp),
            verticalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            options.forEach { (fl, label) ->
                val isSelected =
                    if (fl == 0f) currentFocalLength == 0f else kotlin.math.abs(currentFocalLength - fl) < 0.5f
                Box(
                    modifier = Modifier
                        .width(64.dp)
                        .height(40.dp)
                        .clip(RoundedCornerShape(8.dp))
                        .background(if (isSelected) Color(0xFFFF6B35) else Color.White.copy(alpha = 0.1f))
                        .clickable { onFocalLengthSelected(fl) },
                    contentAlignment = Alignment.Center
                ) {
                    Text(
                        text = if (fl == 0f) stringResource(R.string.none) else label,
                        color = if (isSelected) Color.White else Color.White.copy(alpha = 0.7f),
                        fontSize = 11.sp,
                        fontWeight = if (isSelected) FontWeight.Bold else FontWeight.Normal,
                        textAlign = TextAlign.Center
                    )
                }
            }
        }
    }
}
