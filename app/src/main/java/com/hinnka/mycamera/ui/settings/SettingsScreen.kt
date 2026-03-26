package com.hinnka.mycamera.ui.settings

import android.content.Intent
import android.net.Uri
import android.os.Build
import android.os.Environment
import android.provider.Settings
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import kotlinx.coroutines.launch
import androidx.compose.foundation.layout.ColumnScope
import androidx.compose.foundation.layout.ExperimentalLayoutApi
import androidx.compose.foundation.layout.FlowRow
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.navigationBarsPadding
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.layout.widthIn
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.Article
import androidx.compose.material.icons.filled.Check
import androidx.compose.material.icons.filled.ChevronRight
import androidx.compose.material.icons.filled.ExpandLess
import androidx.compose.material.icons.filled.ExpandMore
import androidx.compose.material.icons.filled.FilterNone
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.Switch
import androidx.compose.material3.SwitchDefaults
import androidx.compose.material3.Text
import androidx.compose.material3.DropdownMenu
import androidx.compose.material3.DropdownMenuItem
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Tab
import androidx.compose.material3.TabRow
import androidx.compose.material3.TabRowDefaults
import androidx.compose.material3.TabRowDefaults.tabIndicatorOffset
import androidx.compose.material3.TextButton
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateListOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.paint
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.core.net.toUri
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.compose.LifecycleEventEffect
import com.hinnka.mycamera.R
import com.hinnka.mycamera.data.VolumeKeyAction
import com.hinnka.mycamera.frame.FrameInfo
import com.hinnka.mycamera.raw.RawProfile
import com.hinnka.mycamera.screencapture.PhantomPipPreviewCoordinator
import com.hinnka.mycamera.ui.camera.autoRotate
import com.hinnka.mycamera.ui.components.LogViewerDialog
import com.hinnka.mycamera.ui.components.PaymentDialog
import com.hinnka.mycamera.ui.components.SliderSettingItem
import com.hinnka.mycamera.ui.components.rememberBackgroundPainter
import com.hinnka.mycamera.utils.DeviceUtil
import com.hinnka.mycamera.viewmodel.CameraViewModel
import kotlin.math.roundToInt

enum class SettingsTab {
    GENERAL, IMAGING, PHANTOM, ABOUT
}

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
    onPhantomPipCropClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    val state by viewModel.state.collectAsState()
    val showLevelIndicator by viewModel.showLevelIndicator.collectAsState(initial = false)
    val showGrid = state.showGrid
    val shutterSoundEnabled by viewModel.shutterSoundEnabled.collectAsState(initial = true)
    val vibrationEnabled by viewModel.vibrationEnabled.collectAsState(initial = true)
    val volumeKeyAction by viewModel.volumeKeyAction.collectAsState()
    val autoSaveAfterCapture by viewModel.autoSaveAfterCapture.collectAsState(initial = true)
    val nrLevel by viewModel.nrLevel.collectAsState(initial = 5)
    val edgeLevel by viewModel.edgeLevel.collectAsState(initial = 1)
    val useRaw by viewModel.useRaw.collectAsState(initial = false)
    val useSuperResolution by viewModel.useMFSR.collectAsState(initial = false)
    // 软件处理参数
    val sharpening by viewModel.sharpening.collectAsState(initial = 0f)
    val noiseReduction by viewModel.noiseReduction.collectAsState(initial = 0f)
    val chromaNoiseReduction by viewModel.chromaNoiseReduction.collectAsState(initial = 0f)
    val defaultFocalLength by viewModel.defaultFocalLength.collectAsState(initial = 0f)
    val multiFrameCount by viewModel.multiFrameCount.collectAsState()
    val useMultipleExposure by viewModel.useMultipleExposure.collectAsState()
    val multipleExposureCount by viewModel.multipleExposureCount.collectAsState()
    val useLivePhoto by viewModel.useLivePhoto.collectAsState()
    val enableDevelopAnimation by viewModel.enableDevelopAnimation.collectAsState()
    val photoQuality by viewModel.photoQuality.collectAsState(initial = 95)
    val useGpuAcceleration by viewModel.useGpuAcceleration.collectAsState()
    val rawProfile by viewModel.rawProfile.collectAsState()
    val useP010 by viewModel.useP010.collectAsState()
    val useHlg10 by viewModel.useHlg10.collectAsState()
    val useP3ColorSpace by viewModel.useP3ColorSpace.collectAsState()
    val autoEnableHdr by viewModel.autoEnableHdr.collectAsState()
    val isPurchased by viewModel.isPurchased.collectAsState()
    val phantomMode by viewModel.phantomMode.collectAsState()
    val phantomButtonHidden by viewModel.phantomButtonHidden.collectAsState()
    val launchCameraOnPhantomMode by viewModel.launchCameraOnPhantomMode.collectAsState()
    val phantomPipPreview by viewModel.phantomPipPreview.collectAsState()
    val mirrorFrontCamera by viewModel.mirrorFrontCamera.collectAsState(initial = true)
    val widgetTheme by viewModel.widgetTheme.collectAsState()
    val saveLocation by viewModel.saveLocationEnabled.collectAsState(initial = false)
    val useBuiltInAiService by viewModel.useBuiltInAiService.collectAsState()
    val openAIApiKey by viewModel.openAIApiKey.collectAsState()
    val availableOpenAIModels by viewModel.availableOpenAIModels.collectAsState()
    val isFetchingAIModels by viewModel.isFetchingAIModels.collectAsState()
    val phantomSaveAsNew by viewModel.phantomSaveAsNew.collectAsState()
    val defaultVirtualAperture by viewModel.defaultVirtualAperture.collectAsState(initial = 0f)

    var selectedTab by remember { mutableStateOf(SettingsTab.GENERAL) }

    val context = androidx.compose.ui.platform.LocalContext.current
    val coroutineScope = androidx.compose.runtime.rememberCoroutineScope()
    val isHdrSettingsSupported = remember { Build.VERSION.SDK_INT >= Build.VERSION_CODES.UPSIDE_DOWN_CAKE && !DeviceUtil.isHarmonyOS }
    val launchPhantomPipPreview = remember(context) {
        {
            PhantomPipPreviewCoordinator.requestStart(context)
        }
    }

    val backupLauncher = rememberLauncherForActivityResult(
        ActivityResultContracts.CreateDocument("application/zip")
    ) { uri ->
        uri?.let {
            coroutineScope.launch {
                val success = com.hinnka.mycamera.data.BackupManager.performBackup(context, it)
                if (success) {
                    android.widget.Toast.makeText(context, R.string.backup_success, android.widget.Toast.LENGTH_SHORT).show()
                } else {
                    android.widget.Toast.makeText(context, R.string.backup_failed, android.widget.Toast.LENGTH_SHORT).show()
                }
            }
        }
    }

    val restoreLauncher = rememberLauncherForActivityResult(
        ActivityResultContracts.OpenDocument()
    ) { uri ->
        uri?.let {
            coroutineScope.launch {
                val success = com.hinnka.mycamera.data.BackupManager.performRestore(context, it)
                if (success) {
                    android.widget.Toast.makeText(context, R.string.restore_success, android.widget.Toast.LENGTH_LONG).show()
                } else {
                    android.widget.Toast.makeText(context, R.string.restore_failed, android.widget.Toast.LENGTH_SHORT).show()
                }
            }
        }
    }

    val locationPermissionLauncher = androidx.activity.compose.rememberLauncherForActivityResult(
        androidx.activity.result.contract.ActivityResultContracts.RequestMultiplePermissions()
    ) { permissions ->
        val granted = permissions.values.all { it }
        if (granted) {
            viewModel.setSaveLocation(true)
        }
    }

    // 日志查看器弹窗状态
    var showLogViewerDialog by remember { mutableStateOf(false) }
    var softwareProcessingExpanded by remember { mutableStateOf(false) }
    var calibrationExpanded by remember { mutableStateOf(false) }
    var showGhostPermissionDialog by remember { mutableStateOf(false) }
    var isGhostPermissionFlowActive by remember { mutableStateOf(false) }

    val ghostLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.StartActivityForResult(),
        onResult = { _ ->
            // Results are handled via the ON_RESUME lifecycle effect to avoid self-reference issues
        }
    )

    LifecycleEventEffect(Lifecycle.Event.ON_RESUME) {
        if (isGhostPermissionFlowActive) {
            val hasOverlay = Settings.canDrawOverlays(context)
            val hasFiles = Environment.isExternalStorageManager()

            if (hasOverlay && !hasFiles) {
                // Overlay granted, now request files
                ghostLauncher.launch(
                    Intent(
                        Settings.ACTION_MANAGE_APP_ALL_FILES_ACCESS_PERMISSION,
                        ("package:${context.packageName}").toUri()
                    )
                )
            } else if (hasOverlay) {
                // All permissions granted
                isGhostPermissionFlowActive = false
                if (!phantomMode) {
                    viewModel.togglePhantomMode()
                    if (phantomPipPreview) {
                        launchPhantomPipPreview()
                    }
                }
            } else {
                // If overlay is still missing after returning, user might have cancelled
                // We stop the automatic flow to avoid getting stuck
                isGhostPermissionFlowActive = false
            }
        }
    }

    LaunchedEffect(viewModel.showGhostPermissions) {
        if (viewModel.showGhostPermissions) {
            showGhostPermissionDialog = true
            viewModel.showGhostPermissions = false
        }
    }

    if (viewModel.showPaymentDialog) {
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

    if (showGhostPermissionDialog) {
        AlertDialog(
            onDismissRequest = { showGhostPermissionDialog = false },
            title = {
                Text(
                    text = stringResource(R.string.ghost_mode_dialog_title),
                    style = MaterialTheme.typography.titleLarge
                )
            },
            text = {
                Column {
                    Text(
                        text = stringResource(R.string.ghost_mode_dialog_description),
                        style = MaterialTheme.typography.bodyMedium
                    )
                    Spacer(modifier = Modifier.height(16.dp))
                    Text(
                        text = stringResource(R.string.ghost_mode_permissions_required),
                        style = MaterialTheme.typography.titleSmall
                    )
                    Spacer(modifier = Modifier.height(8.dp))
                    Text(
                        text = stringResource(R.string.ghost_mode_overlay_permission),
                        style = MaterialTheme.typography.bodySmall
                    )
                    Spacer(modifier = Modifier.height(4.dp))
                    Text(
                        text = stringResource(R.string.ghost_mode_file_permission),
                        style = MaterialTheme.typography.bodySmall
                    )
                }
            },
            confirmButton = {
                TextButton(
                    onClick = {
                        showGhostPermissionDialog = false
                        isGhostPermissionFlowActive = true
                        if (!Settings.canDrawOverlays(context)) {
                            ghostLauncher.launch(
                                Intent(
                                    Settings.ACTION_MANAGE_OVERLAY_PERMISSION,
                                    ("package:${context.packageName}").toUri()
                                )
                            )
                        } else if (!Environment.isExternalStorageManager()) {
                            ghostLauncher.launch(
                                Intent(
                                    Settings.ACTION_MANAGE_APP_ALL_FILES_ACCESS_PERMISSION,
                                    ("package:${context.packageName}").toUri()
                                )
                            )
                        } else {
                            isGhostPermissionFlowActive = false
                            viewModel.togglePhantomMode()
                            if (phantomPipPreview) {
                                launchPhantomPipPreview()
                            }
                        }
                    }
                ) {
                    Text(stringResource(R.string.ghost_mode_dialog_confirm))
                }
            },
            dismissButton = {
                TextButton(onClick = { showGhostPermissionDialog = false }) {
                    Text(stringResource(R.string.cancel))
                }
            }
        )
    }

    val backgroundPainter = rememberBackgroundPainter(viewModel)
    Column(
        modifier = modifier
            .fillMaxSize()
            .paint(backgroundPainter, contentScale = ContentScale.Crop)
            .navigationBarsPadding()
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
                containerColor = Color.Transparent
            )
        )

        val general = stringResource(R.string.general)
        val imaging = stringResource(R.string.imaging)
        val phantom = stringResource(R.string.phantom)
        val about = stringResource(R.string.about)

        // Tab 选择器
        val tabs = remember {
            mutableStateListOf<Pair<SettingsTab, String>>().apply {
                add(SettingsTab.GENERAL to general)
                add(SettingsTab.IMAGING to imaging)
                if (DeviceUtil.isChinaFlavor) {
                    add(SettingsTab.PHANTOM to phantom)
                }
                add(SettingsTab.ABOUT to about)
            }
        }
        val selectedTabIndex = tabs.indexOfFirst { it.first == selectedTab }.coerceAtLeast(0)

        TabRow(
            selectedTabIndex = selectedTabIndex,
            containerColor = Color.Transparent,
            contentColor = Color.White,
            divider = {},
            indicator = { tabPositions ->
                if (selectedTabIndex < tabPositions.size) {
                    TabRowDefaults.SecondaryIndicator(
                        modifier = Modifier.tabIndicatorOffset(tabPositions[selectedTabIndex]),
                        color = Color(0xFFFF6B35)
                    )
                }
            }
        ) {
            tabs.forEach { (tab, label) ->
                Tab(
                    selected = selectedTab == tab,
                    onClick = { selectedTab = tab },
                    text = {
                        Text(
                            text = label,
                            fontSize = 14.sp,
                            fontWeight = if (selectedTab == tab) FontWeight.Bold else FontWeight.Normal
                        )
                    }
                )
            }
        }

        // 设置项列表
        Column(
            modifier = Modifier
                .fillMaxSize()
                .verticalScroll(rememberScrollState())
                .padding(horizontal = 16.dp)
        ) {
            Spacer(modifier = Modifier.height(16.dp))

            when (selectedTab) {
                SettingsTab.GENERAL -> {
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

                    // 内容管理设置
                    SettingsSection(title = stringResource(R.string.settings_section_management)) {
                        // 背景设置
                        BackgroundSetting(
                            viewModel = viewModel,
                            modifier = Modifier.padding(bottom = 16.dp)
                        )

                        HorizontalDivider(
                            color = Color.White.copy(alpha = 0.1f),
                            modifier = Modifier.padding(vertical = 8.dp)
                        )

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

                        HorizontalDivider(
                            color = Color.White.copy(alpha = 0.1f),
                            modifier = Modifier.padding(vertical = 8.dp)
                        )

                        NavigationSettingItem(
                            title = stringResource(R.string.settings_backup_settings),
                            description = stringResource(R.string.settings_backup_settings_description),
                            onClick = { backupLauncher.launch("photon_camera_backup_${System.currentTimeMillis()}.zip") }
                        )

                        HorizontalDivider(
                            color = Color.White.copy(alpha = 0.1f),
                            modifier = Modifier.padding(vertical = 8.dp)
                        )

                        NavigationSettingItem(
                            title = stringResource(R.string.settings_restore_settings),
                            description = stringResource(R.string.settings_restore_settings_description),
                            onClick = { restoreLauncher.launch(arrayOf("application/zip", "application/x-zip-compressed", "application/octet-stream")) }
                        )
                    }

                    Spacer(modifier = Modifier.height(24.dp))

                    // 拍摄操作设置
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
                            title = stringResource(R.string.settings_mirror_front_camera),
                            description = stringResource(R.string.settings_mirror_front_camera_description),
                            checked = mirrorFrontCamera,
                            onCheckedChange = { viewModel.setMirrorFrontCamera(it) }
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
                            checked = showGrid,
                            onCheckedChange = { viewModel.setShowGrid(it) }
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
                            title = stringResource(R.string.settings_save_location),
                            description = stringResource(R.string.settings_save_location_description),
                            checked = saveLocation,
                            onCheckedChange = { checked ->
                                if (checked) {
                                    val fineLocation = androidx.core.content.ContextCompat.checkSelfPermission(
                                        context,
                                        android.Manifest.permission.ACCESS_FINE_LOCATION
                                    ) == android.content.pm.PackageManager.PERMISSION_GRANTED
                                    val coarseLocation = androidx.core.content.ContextCompat.checkSelfPermission(
                                        context,
                                        android.Manifest.permission.ACCESS_COARSE_LOCATION
                                    ) == android.content.pm.PackageManager.PERMISSION_GRANTED

                                    if (fineLocation || coarseLocation) {
                                        viewModel.setSaveLocation(true)
                                    } else {
                                        locationPermissionLauncher.launch(
                                            arrayOf(
                                                android.Manifest.permission.ACCESS_FINE_LOCATION,
                                                android.Manifest.permission.ACCESS_COARSE_LOCATION
                                            )
                                        )
                                    }
                                } else {
                                    viewModel.setSaveLocation(false)
                                }
                            }
                        )

                        HorizontalDivider(
                            color = Color.White.copy(alpha = 0.1f),
                            modifier = Modifier.padding(vertical = 8.dp)
                        )

                        DefaultFocalLengthSetting(
                            viewModel = viewModel,
                            currentFocalLength = defaultFocalLength,
                            onFocalLengthSelected = { viewModel.setDefaultFocalLength(it) }
                        )

                        HorizontalDivider(
                            color = Color.White.copy(alpha = 0.1f),
                            modifier = Modifier.padding(vertical = 12.dp)
                        )

                        QualityLevelSetting(
                            title = stringResource(R.string.settings_default_virtual_aperture),
                            description = stringResource(R.string.settings_default_virtual_aperture_description),
                            levels = listOf(0f to stringResource(R.string.settings_nr_level_off)) + listOf(
                                1.0f, 1.2f, 1.4f, 1.8f, 2.0f, 2.8f, 4.0f, 5.6f, 8.0f, 11f, 16f
                            ).map { it to "f/${if (it % 1f == 0f) it.toInt() else it}" },
                            currentLevel = defaultVirtualAperture,
                            onLevelSelected = { viewModel.setDefaultVirtualAperture(it) }
                        )
                    }
                }

                SettingsTab.IMAGING -> {
                    // AI 服务设置
                    SettingsSection(title = stringResource(R.string.lut_creator_title)) {
                        TextInputSettingItem(
                            title = stringResource(R.string.settings_openai_api_key),
                            description = stringResource(R.string.settings_openai_api_key_desc),
                            value = openAIApiKey ?: "",
                            onValueChange = { viewModel.setOpenAIApiKey(it) }
                        )
                    }

                    Spacer(modifier = Modifier.height(24.dp))

                    // 影像处理设置
                    SettingsSection(title = stringResource(R.string.settings_section_image_processing)) {
                        QualityLevelSetting(
                            title = stringResource(R.string.settings_nr_level),
                            description = stringResource(R.string.settings_nr_level_description),
                            levels = listOf(
                                5 to stringResource(R.string.settings_nr_level_auto),
                                0 to stringResource(R.string.settings_nr_level_off),
                                1 to stringResource(R.string.settings_nr_level_fast),
                                2 to stringResource(R.string.settings_nr_level_high_quality),
                                3 to stringResource(R.string.settings_nr_level_zsl),
                                4 to stringResource(R.string.settings_nr_level_minimal)
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

                        HorizontalDivider(
                            color = Color.White.copy(alpha = 0.1f),
                            modifier = Modifier.padding(vertical = 12.dp)
                        )

                        QualityLevelSetting(
                            title = stringResource(R.string.settings_photo_quality),
                            description = stringResource(R.string.settings_photo_quality_description),
                            levels = listOf(
                                90 to "90",
                                95 to "95",
                                100 to "100"
                            ),
                            currentLevel = photoQuality,
                            onLevelSelected = { viewModel.setPhotoQuality(it) }
                        )

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
                                16 to "16",
                            ),
                            currentLevel = multiFrameCount,
                            onLevelSelected = { viewModel.setMultiFrameCount(it) }
                        )

                        HorizontalDivider(
                            color = Color.White.copy(alpha = 0.1f),
                            modifier = Modifier.padding(vertical = 12.dp)
                        )

                        SwitchSettingItem(
                            title = stringResource(R.string.settings_use_multiple_exposure),
                            description = stringResource(R.string.settings_use_multiple_exposure_description),
                            checked = useMultipleExposure,
                            onCheckedChange = { viewModel.setUseMultipleExposure(it) }
                        )

                        HorizontalDivider(
                            color = Color.White.copy(alpha = 0.1f),
                            modifier = Modifier.padding(vertical = 12.dp)
                        )

                        QualityLevelSetting(
                            title = stringResource(R.string.settings_multiple_exposure_count),
                            description = stringResource(R.string.settings_multiple_exposure_count_description),
                            levels = listOf(
                                2 to "2",
                                3 to "3",
                                4 to "4",
                                5 to "5",
                                6 to "6"
                            ),
                            currentLevel = multipleExposureCount,
                            onLevelSelected = { viewModel.setMultipleExposureCount(it) }
                        )

                        HorizontalDivider(
                            color = Color.White.copy(alpha = 0.1f),
                            modifier = Modifier.padding(vertical = 8.dp)
                        )

                        SwitchSettingItem(
                            title = stringResource(R.string.settings_use_gpu_acceleration),
                            description = stringResource(R.string.settings_use_gpu_acceleration_description),
                            checked = useGpuAcceleration,
                            onCheckedChange = { viewModel.setUseGpuAcceleration(it) }
                        )

                        HorizontalDivider(
                            color = Color.White.copy(alpha = 0.1f),
                            modifier = Modifier.padding(vertical = 8.dp)
                        )

                        SwitchSettingItem(
                            title = stringResource(R.string.settings_use_live_photo),
                            description = stringResource(R.string.settings_use_live_photo_description),
                            checked = useLivePhoto,
                            onCheckedChange = { viewModel.setUseLivePhoto(it) }
                        )

                        HorizontalDivider(
                            color = Color.White.copy(alpha = 0.1f),
                            modifier = Modifier.padding(vertical = 8.dp)
                        )

                        SwitchSettingItem(
                            title = stringResource(R.string.settings_develop_animation),
                            description = stringResource(R.string.settings_develop_animation_description),
                            checked = enableDevelopAnimation,
                            onCheckedChange = { viewModel.setEnableDevelopAnimation(it) }
                        )

                        HorizontalDivider(
                            color = Color.White.copy(alpha = 0.1f),
                            modifier = Modifier.padding(vertical = 12.dp)
                        )

                        QualityLevelSetting(
                            title = stringResource(R.string.settings_raw_profile),
                            description = stringResource(R.string.settings_raw_profile_description),
                            levels = RawProfile.entries.map { it to rawProfileLabel(it) },
                            currentLevel = rawProfile,
                            onLevelSelected = { viewModel.setRawProfile(it) }
                        )

                        /*HorizontalDivider(
                            color = Color.White.copy(alpha = 0.1f),
                            modifier = Modifier.padding(vertical = 12.dp)
                        )

                        SwitchSettingItem(
                            title = stringResource(R.string.settings_apply_ultra_hdr),
                            description = stringResource(R.string.settings_apply_ultra_hdr_description),
                            checked = applyUltraHDR,
                            onCheckedChange = { viewModel.setApplyUltraHDR(it) }
                        )*/

                        if (state.isP010Supported) {
                            HorizontalDivider(
                                color = Color.White.copy(alpha = 0.1f),
                                modifier = Modifier.padding(vertical = 12.dp)
                            )

                            SwitchSettingItem(
                                title = stringResource(R.string.settings_use_p010),
                                description = stringResource(R.string.settings_use_p010_description),
                                checked = useP010,
                                onCheckedChange = { viewModel.setUseP010(it) }
                            )
                        }

                        if (state.isP3Supported) {
                            HorizontalDivider(
                                color = Color.White.copy(alpha = 0.1f),
                                modifier = Modifier.padding(vertical = 12.dp)
                            )

                            SwitchSettingItem(
                                title = stringResource(R.string.settings_use_p3_color_space),
                                description = stringResource(R.string.settings_use_p3_color_space_description),
                                checked = useP3ColorSpace,
                                onCheckedChange = { viewModel.setUseP3ColorSpace(it) }
                            )
                        }

                        if (isHdrSettingsSupported) {

                            if (state.isHlg10Supported) {
                                HorizontalDivider(
                                    color = Color.White.copy(alpha = 0.1f),
                                    modifier = Modifier.padding(vertical = 12.dp)
                                )

                                SwitchSettingItem(
                                    title = stringResource(R.string.settings_use_hlg10),
                                    description = stringResource(R.string.settings_use_hlg10_description),
                                    checked = useHlg10,
                                    onCheckedChange = { viewModel.setUseHlg10(it) }
                                )
                            }

                            HorizontalDivider(
                                color = Color.White.copy(alpha = 0.1f),
                                modifier = Modifier.padding(vertical = 12.dp)
                            )

                            SwitchSettingItem(
                                title = stringResource(R.string.settings_auto_enable_hdr_for_hdr_capture),
                                description = stringResource(R.string.settings_auto_enable_hdr_for_hdr_capture_description),
                                checked = autoEnableHdr,
                                onCheckedChange = { viewModel.setAutoEnableHdrForHdrCapture(it) }
                            )
                        }
                    }

                    Spacer(modifier = Modifier.height(24.dp))

                    // 软件细节微调
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

                    // 相机校正设置
                    val currentCameraId = state.currentCameraId
                    val cameraOrientationOffset by viewModel.getCameraOrientationOffset(currentCameraId)
                        .collectAsState(initial = 0)
                    val cameraName = state.getCurrentCameraInfo()?.let { info ->
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
                }

                SettingsTab.PHANTOM -> {
                    if (DeviceUtil.isChinaFlavor) {
                        // 幻影模式设置
                        SettingsSection(title = stringResource(R.string.ghost_mode)) {
                            SwitchSettingItem(
                                title = stringResource(R.string.ghost_mode),
                                description = stringResource(R.string.ghost_mode_dialog_description),
                                checked = phantomMode,
                                onCheckedChange = {
                                    if (it && (!Settings.canDrawOverlays(context) || !Environment.isExternalStorageManager())) {
                                        showGhostPermissionDialog = true
                                    } else {
                                        viewModel.togglePhantomMode()
                                        if (it && phantomPipPreview) {
                                            launchPhantomPipPreview()
                                        } else if (!it) {
                                            PhantomPipPreviewCoordinator.requestStop(context)
                                        }
                                    }
                                }
                            )

                            HorizontalDivider(
                                color = Color.White.copy(alpha = 0.1f),
                                modifier = Modifier.padding(vertical = 8.dp)
                            )

                            SwitchSettingItem(
                                title = stringResource(R.string.settings_phantom_button_hidden),
                                description = stringResource(R.string.settings_phantom_button_hidden_description),
                                checked = phantomButtonHidden,
                                onCheckedChange = { viewModel.setPhantomButtonHidden(it) }
                            )

                            HorizontalDivider(
                                color = Color.White.copy(alpha = 0.1f),
                                modifier = Modifier.padding(vertical = 8.dp)
                            )

                            SwitchSettingItem(
                                title = stringResource(R.string.settings_launch_camera_on_phantom_mode),
                                description = stringResource(R.string.settings_launch_camera_on_phantom_mode_description),
                                checked = launchCameraOnPhantomMode,
                                onCheckedChange = { viewModel.setLaunchCameraOnPhantomMode(it) }
                            )

                            HorizontalDivider(
                                color = Color.White.copy(alpha = 0.1f),
                                modifier = Modifier.padding(vertical = 8.dp)
                            )

                            SwitchSettingItem(
                                title = stringResource(R.string.settings_phantom_pip_preview),
                                description = stringResource(R.string.settings_phantom_pip_preview_description),
                                checked = phantomPipPreview,
                                onCheckedChange = { viewModel.setPhantomPipPreview(it) }
                            )

                            HorizontalDivider(
                                color = Color.White.copy(alpha = 0.1f),
                                modifier = Modifier.padding(vertical = 8.dp)
                            )

                            NavigationSettingItem(
                                title = stringResource(R.string.settings_phantom_pip_crop),
                                description = stringResource(R.string.settings_phantom_pip_crop_description),
                                onClick = onPhantomPipCropClick
                            )

                            HorizontalDivider(
                                color = Color.White.copy(alpha = 0.1f),
                                modifier = Modifier.padding(vertical = 8.dp)
                            )

                            SwitchSettingItem(
                                title = stringResource(R.string.settings_phantom_save_as_new),
                                description = stringResource(R.string.settings_phantom_save_as_new_description),
                                checked = phantomSaveAsNew,
                                onCheckedChange = { viewModel.setPhantomSaveAsNew(it) }
                            )
                        }
                    }
                }

                SettingsTab.ABOUT -> {
                    // Widget 设置
                    SettingsSection(title = stringResource(R.string.settings_widget_theme)) {
                        QualityLevelSetting(
                            title = stringResource(R.string.settings_widget_theme),
                            description = stringResource(R.string.settings_widget_theme_description),
                            levels = listOf(
                                com.hinnka.mycamera.data.WidgetTheme.FOLLOW_SYSTEM to stringResource(R.string.settings_widget_theme_system),
                                com.hinnka.mycamera.data.WidgetTheme.LIGHT to stringResource(R.string.settings_widget_theme_light),
                                com.hinnka.mycamera.data.WidgetTheme.DARK to stringResource(R.string.settings_widget_theme_dark)
                            ),
                            currentLevel = widgetTheme,
                            onLevelSelected = { viewModel.setWidgetTheme(it) }
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
                                val alipayUrl =
                                    "alipays://platformapi/startapp?saId=10000007&clientVersion=3.7.0.0718&qrcode=${
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
                    if (isExpanded) {
                        Icon(
                            imageVector = Icons.Default.ExpandLess,
                            contentDescription = null,
                            tint = Color.White.copy(alpha = 0.6f)
                        )
                    } else {
                        Icon(
                            imageVector = Icons.Default.ExpandMore,
                            contentDescription = null,
                            tint = Color.White.copy(alpha = 0.6f)
                        )
                    }
                }
            }

            if (!isExpandable || isExpanded) {
                Column(modifier = Modifier.padding(16.dp)) {
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
    description: String? = null,
    checked: Boolean,
    onCheckedChange: (Boolean) -> Unit,
    modifier: Modifier = Modifier
) {
    Row(
        modifier = modifier
            .fillMaxWidth()
            .clickable { onCheckedChange(!checked) }
            .padding(vertical = 4.dp),
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
                Spacer(modifier = Modifier.height(2.dp))
                Text(
                    text = description,
                    color = Color.White.copy(alpha = 0.6f),
                    fontSize = 13.sp,
                    lineHeight = 18.sp
                )
            }
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
 * 文本输入设置项
 */
@Composable
fun TextInputSettingItem(
    title: String,
    description: String? = null,
    value: String,
    onValueChange: (String) -> Unit,
    modifier: Modifier = Modifier
) {
    var showDialog by remember { mutableStateOf(false) }

    Row(
        modifier = modifier
            .fillMaxWidth()
            .clickable { showDialog = true }
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
            if (description != null) {
                Spacer(modifier = Modifier.height(2.dp))
                Text(
                    text = description,
                    color = Color.White.copy(alpha = 0.6f),
                    fontSize = 13.sp,
                    lineHeight = 18.sp
                )
            }
            if (value.isNotEmpty()) {
                Spacer(modifier = Modifier.height(4.dp))
                Text(
                    text = value,
                    color = Color(0xFFE5A324), // 主题色
                    fontSize = 14.sp,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis
                )
            }
        }

        Spacer(modifier = Modifier.width(16.dp))

        Icon(
            imageVector = Icons.Default.ChevronRight,
            contentDescription = null,
            tint = Color.White.copy(alpha = 0.4f)
        )
    }

    if (showDialog) {
        var tempValue by remember { mutableStateOf(value) }
        androidx.compose.material3.AlertDialog(
            onDismissRequest = { showDialog = false },
            title = { Text(text = title) },
            text = {
                androidx.compose.material3.OutlinedTextField(
                    value = tempValue,
                    onValueChange = { tempValue = it },
                    modifier = Modifier.fillMaxWidth(),
                    singleLine = true
                )
            },
            confirmButton = {
                androidx.compose.material3.TextButton(
                    onClick = {
                        onValueChange(tempValue)
                        showDialog = false
                    }
                ) {
                    Text(stringResource(android.R.string.ok))
                }
            },
            dismissButton = {
                androidx.compose.material3.TextButton(
                    onClick = { showDialog = false }
                ) {
                    Text(stringResource(android.R.string.cancel))
                }
            }
        )
    }
}

/**
 * 下拉选择菜单设置项
 */
@Composable
fun DropdownSettingItem(
    title: String,
    description: String? = null,
    value: String,
    options: List<String>,
    isLoading: Boolean,
    onExpanded: () -> Unit,
    onOptionSelected: (String) -> Unit,
    enabled: Boolean = true,
    modifier: Modifier = Modifier
) {
    var expanded by remember { mutableStateOf(false) }
    val alpha = if (enabled) 1f else 0.4f

    Row(
        modifier = modifier
            .fillMaxWidth()
            .clickable(enabled = enabled) {
                onExpanded()
                expanded = true
            }
            .padding(vertical = 8.dp),
        horizontalArrangement = Arrangement.SpaceBetween,
        verticalAlignment = Alignment.CenterVertically
    ) {
        Column(modifier = Modifier.weight(1f)) {
            Text(
                text = title,
                color = Color.White.copy(alpha = alpha),
                fontSize = 16.sp,
                fontWeight = FontWeight.Normal
            )
            if (description != null) {
                Spacer(modifier = Modifier.height(2.dp))
                Text(
                    text = description,
                    color = Color.White.copy(alpha = 0.6f * alpha),
                    fontSize = 13.sp,
                    lineHeight = 18.sp
                )
            }
            Spacer(modifier = Modifier.height(4.dp))
            Text(
                text = if (isLoading && options.isEmpty()) stringResource(R.string.settings_ai_model_loading) else value.ifEmpty {
                    stringResource(
                        R.string.settings_ai_model_select
                    )
                },
                color = Color(0xFFE5A324).copy(alpha = alpha), // 主题色
                fontSize = 14.sp,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis
            )
        }

        Spacer(modifier = Modifier.width(16.dp))

        Box {
            Icon(
                imageVector = Icons.Default.ExpandMore,
                contentDescription = null,
                tint = Color.White.copy(alpha = 0.4f)
            )

            DropdownMenu(
                expanded = expanded,
                onDismissRequest = { expanded = false },
                modifier = Modifier.background(Color(0xFF2C2C2E))
            ) {
                if (isLoading) {
                    DropdownMenuItem(
                        text = {
                            Text(
                                stringResource(R.string.settings_ai_model_fetching),
                                color = Color.White.copy(alpha = 0.6f)
                            )
                        },
                        onClick = { }
                    )
                } else if (options.isEmpty()) {
                    DropdownMenuItem(
                        text = {
                            Text(
                                stringResource(R.string.settings_ai_model_empty),
                                color = Color.White.copy(alpha = 0.6f)
                            )
                        },
                        onClick = { expanded = false }
                    )
                } else {
                    options.forEach { option ->
                        DropdownMenuItem(
                            text = {
                                Text(
                                    text = option,
                                    color = if (option == value) Color(0xFFE5A324) else Color.White
                                )
                            },
                            onClick = {
                                onOptionSelected(option)
                                expanded = false
                            }
                        )
                    }
                }
            }
        }
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
fun <T> QualityLevelSetting(
    title: String,
    description: String,
    levels: List<Pair<T, String>>,
    currentLevel: T,
    onLevelSelected: (T) -> Unit,
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

        FlowRow(
            modifier = Modifier.fillMaxWidth(),
            verticalArrangement = Arrangement.spacedBy(8.dp),
            horizontalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            levels.forEach { (level, label) ->
                val isSelected = currentLevel == level
                Box(
                    modifier = Modifier
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
                        fontWeight = if (isSelected) FontWeight.Bold else FontWeight.Normal,
                        textAlign = TextAlign.Center,
                        modifier = Modifier
                            .padding(horizontal = 4.dp)
                            .widthIn(min = 44.dp)
                    )
                }
            }
        }
    }
}

@Composable
private fun rawProfileLabel(rawProfile: RawProfile): String {
    return when (rawProfile) {
        RawProfile.ACES_CINE -> stringResource(R.string.raw_profile_aces_cine)
        RawProfile.FUJI_PROVIA -> stringResource(R.string.raw_profile_fuji_provia)
        RawProfile.STANDARD_SRGB -> stringResource(R.string.raw_profile_standard_srgb)
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

/**
 * 背景设置
 */
@Composable
fun BackgroundSetting(
    viewModel: CameraViewModel,
    modifier: Modifier = Modifier
) {
    val currentBg by viewModel.backgroundImage.collectAsState()
    val context = androidx.compose.ui.platform.LocalContext.current

    val launcher = androidx.activity.compose.rememberLauncherForActivityResult(
        contract = androidx.activity.result.contract.ActivityResultContracts.GetContent()
    ) { uri: Uri? ->
        uri?.let { viewModel.saveCustomBackgroundImage(it) }
    }

    val bgList = listOf("camera_bg", "camera_bg2", "camera_bg3", "camera_bg4")

    Column(modifier = modifier.fillMaxWidth()) {
        Text(
            text = stringResource(R.string.settings_background),
            color = Color.White,
            fontSize = 16.sp,
            fontWeight = FontWeight.Normal,
            modifier = Modifier.padding(bottom = 12.dp)
        )

        LazyRow(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            items(bgList) { bgName ->
                BackgroundItem(
                    name = bgName,
                    isSelected = currentBg == bgName,
                    onClick = { viewModel.setBackgroundImage(bgName) }
                )
            }

            item {
                CustomBackgroundItem(
                    isSelected = currentBg.startsWith("/"),
                    onClick = { launcher.launch("image/*") }
                )
            }
        }

        Spacer(modifier = Modifier.height(12.dp))

        Text(
            text = stringResource(R.string.settings_background_description),
            color = Color.White.copy(alpha = 0.6f),
            fontSize = 13.sp
        )
    }
}

@Composable
private fun BackgroundItem(
    name: String,
    isSelected: Boolean,
    onClick: () -> Unit
) {
    val context = androidx.compose.ui.platform.LocalContext.current
    val resId = context.resources.getIdentifier(name, "drawable", context.packageName)

    Box(
        modifier = Modifier
            .size(80.dp, 80.dp)
            .clip(RoundedCornerShape(8.dp))
            .border(
                width = 2.dp,
                color = if (isSelected) Color(0xFFFF6B35) else Color.Transparent,
                shape = RoundedCornerShape(8.dp)
            )
            .clickable(onClick = onClick)
    ) {
        if (resId != 0) {
            Image(
                painter = painterResource(resId),
                contentDescription = null,
                contentScale = ContentScale.Crop,
                modifier = Modifier.fillMaxSize()
            )
        }

        if (isSelected) {
            Box(
                modifier = Modifier
                    .fillMaxSize()
                    .background(Color.Black.copy(alpha = 0.3f)),
                contentAlignment = Alignment.Center
            ) {
                Icon(
                    imageVector = Icons.Default.Check,
                    contentDescription = null,
                    tint = Color.White,
                    modifier = Modifier.size(24.dp)
                )
            }
        }
    }
}

@Composable
private fun CustomBackgroundItem(
    isSelected: Boolean,
    onClick: () -> Unit
) {
    Box(
        modifier = Modifier
            .size(80.dp, 80.dp)
            .clip(RoundedCornerShape(8.dp))
            .background(Color.White.copy(alpha = 0.1f))
            .border(
                width = 2.dp,
                color = if (isSelected) Color(0xFFFF6B35) else Color.White.copy(alpha = 0.2f),
                shape = RoundedCornerShape(8.dp)
            )
            .clickable(onClick = onClick),
        contentAlignment = Alignment.Center
    ) {
        Column(horizontalAlignment = Alignment.CenterHorizontally) {
            Icon(
                imageVector = Icons.Default.FilterNone,
                contentDescription = null,
                tint = Color.White.copy(alpha = 0.6f),
                modifier = Modifier.size(24.dp)
            )
            Spacer(modifier = Modifier.height(8.dp))
            Text(
                text = stringResource(R.string.settings_custom_background),
                color = Color.White.copy(alpha = 0.6f),
                fontSize = 11.sp,
                textAlign = TextAlign.Center
            )
        }

        if (isSelected) {
            Box(
                modifier = Modifier
                    .fillMaxSize()
                    .background(Color.Black.copy(alpha = 0.3f)),
                contentAlignment = Alignment.Center
            ) {
                Icon(
                    imageVector = Icons.Default.Check,
                    contentDescription = null,
                    tint = Color.White,
                    modifier = Modifier.size(24.dp)
                )
            }
        }
    }
}
