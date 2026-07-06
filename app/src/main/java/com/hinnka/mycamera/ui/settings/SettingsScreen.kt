package com.hinnka.mycamera.ui.settings

import android.content.Context
import android.content.Intent
import android.net.Uri
import android.os.Build
import android.os.Environment
import android.provider.Settings
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.basicMarquee
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import kotlinx.coroutines.launch
import kotlin.math.abs
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
import androidx.compose.material.icons.filled.Check
import androidx.compose.material.icons.filled.Add
import androidx.compose.material.icons.filled.Close
import androidx.compose.material.ripple.RippleAlpha
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.LocalRippleConfiguration
import androidx.compose.material3.Switch
import androidx.compose.material3.SwitchDefaults
import androidx.compose.material3.Text
import androidx.compose.material3.DropdownMenu
import androidx.compose.material3.DropdownMenuItem
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.RippleConfiguration
import androidx.compose.material3.Tab
import androidx.compose.material3.TabRow
import androidx.compose.material3.TabRowDefaults
import androidx.compose.material3.TabRowDefaults.tabIndicatorOffset
import androidx.compose.material3.TextButton
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.CompositionLocalProvider
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
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.ui.text.input.KeyboardType
import com.hinnka.mycamera.BuildConfig
import com.hinnka.mycamera.R
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.camera.CameraInfo
import com.hinnka.mycamera.camera.CustomFocalLengthValue
import com.hinnka.mycamera.camera.IszLensConfig
import com.hinnka.mycamera.camera.LensType
import com.hinnka.mycamera.camera.MultiFrameConfig
import com.hinnka.mycamera.camera.RawBlackBorderCrop
import com.hinnka.mycamera.camera.VendorCaptureKey
import com.hinnka.mycamera.camera.VendorCaptureSettings
import com.hinnka.mycamera.camera.VendorCaptureSettingsByLens
import com.hinnka.mycamera.camera.VendorCaptureValueType
import com.hinnka.mycamera.data.AiFocusTargetMode
import com.hinnka.mycamera.data.VolumeKeyAction
import com.hinnka.mycamera.frame.FrameInfo
import com.hinnka.mycamera.gallery.PhotoSavePath
import com.hinnka.mycamera.gallery.HeicExportEncoder
import com.hinnka.mycamera.lut.BaselineColorCorrectionTarget
import com.hinnka.mycamera.lut.LutInfo
import com.hinnka.mycamera.lut.creator.OpenAIApiClient
import com.hinnka.mycamera.raw.RawCfaCorrection
import com.hinnka.mycamera.raw.RawWhiteLevelCorrection
import com.hinnka.mycamera.raw.SpectralFilmSelection
import com.hinnka.mycamera.ui.camera.LutEditBottomSheet
import com.hinnka.mycamera.ui.camera.LutEditorTarget
import com.hinnka.mycamera.ui.camera.autoRotate
import com.hinnka.mycamera.ui.components.LogViewerDialog
import com.hinnka.mycamera.ui.components.PaymentDialog
import com.hinnka.mycamera.ui.components.SliderSettingItem
import com.hinnka.mycamera.ui.components.LutSelector
import com.hinnka.mycamera.ui.components.RawEditPanel
import com.hinnka.mycamera.ui.components.RawEditPanelContentMode
import com.hinnka.mycamera.ui.components.rawDcpLensOptions
import com.hinnka.mycamera.ui.components.rememberBackgroundPainter
import com.hinnka.mycamera.update.AppUpdateManager
import com.hinnka.mycamera.utils.DeviceUtil
import com.hinnka.mycamera.viewmodel.CameraViewModel
import com.hinnka.mycamera.video.VideoRecordingPath
import java.io.File
import kotlin.math.roundToInt
import com.hinnka.mycamera.ui.icons.AppIcons

enum class SettingsTab {
    CAMERA, IMAGING, RAW, PHANTOM, SYSTEM
}

private enum class BackupOperation {
    BACKUP, RESTORE
}

private val SettingsBackgroundColor = Color(0xFF151515)
private val SettingsBackgroundScrim = Color.Black.copy(alpha = 0.62f)
private val SettingsRippleAlpha = RippleAlpha(
    pressedAlpha = 0.04f,
    focusedAlpha = 0.06f,
    draggedAlpha = 0.08f,
    hoveredAlpha = 0.03f
)

private const val TELEGRAM_GROUP_URL = "https://t.me/photoncameraapp"
private const val QQ_GROUP_URL = "https://qun.qq.com/universal-share/share?ac=1&authKey=SFezWP1Ub5Egb5yMc7dbc1W4BVKGzzs1Ld9RD%2BKYn%2FlXiuqD4XZCGse48v%2FNcvrq&busi_data=eyJncm91cENvZGUiOiI1Njk2MDU0NTIiLCJ0b2tlbiI6IjNTM0Z4MkN1NUpDQVU1OXJDZ0xFVlJOb0xHZHFCQ0xWc1pKQWpSVzNVT0FwaHFRcEFYR0lFTU9mNUxuNFl5TDEiLCJ1aW4iOiI0MTk3NzQ2OTYifQ%3D%3D&data=WwMa6V5hKvkhzfvOaOKz8MKqNOvSSjTxTRj6Dn-1bHP68fZuRJ66cyD5xOhydrUkF8yIA70R_yXqlFRwJGoaCQ&svctype=4&tempid=h5_group_info"

private val RAW_MIN_SHUTTER_SPEED_OPTIONS = listOf(
    0L,
    1_000_000_000L / 30,
    1_000_000_000L / 50,
    1_000_000_000L / 60,
    1_000_000_000L / 100,
    1_000_000_000L / 125,
    1_000_000_000L / 250,
    1_000_000_000L / 500,
    1_000_000_000L / 2000,
)

private fun sanitizeSettingsTonemapMode(mode: String): String {
    return when (mode) {
        "FAST", "HIGH_QUALITY" -> "SYSTEM_DEFAULT"
        "REC709" -> "SRGB"
        "SYSTEM_DEFAULT", "SRGB" -> mode
        else -> "SYSTEM_DEFAULT"
    }
}

private fun openExternalUrl(context: Context, url: String) {
    val intent = Intent(Intent.ACTION_VIEW, Uri.parse(url)).apply {
        addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
    }
    runCatching { context.startActivity(intent) }
}

private fun formatPersistedTreeLabel(uriString: String?): String {
    if (uriString.isNullOrBlank()) return ""
    return runCatching {
        Uri.decode(Uri.parse(uriString).lastPathSegment ?: uriString)
    }.getOrDefault(uriString)
}

@Composable
private fun PhotoSavePath.displayName(): String {
    return when (this) {
        PhotoSavePath.DCIM_PHOTON -> stringResource(R.string.settings_storage_path_dcim)
        PhotoSavePath.EXTERNAL_TREE -> stringResource(R.string.settings_storage_path_external_tree)
    }
}

@Composable
private fun VideoRecordingPath.displayName(): String {
    return when (this) {
        VideoRecordingPath.DCIM_PHOTON -> stringResource(R.string.settings_storage_path_dcim)
        VideoRecordingPath.EXTERNAL_TREE -> stringResource(R.string.settings_storage_path_external_tree)
    }
}

@Composable
private fun AiFocusTargetMode.displayName(): String {
    return when (this) {
        AiFocusTargetMode.OFF -> stringResource(R.string.settings_ai_focus_target_off)
        AiFocusTargetMode.AUTO -> stringResource(R.string.settings_ai_focus_target_auto)
        AiFocusTargetMode.PERSON -> stringResource(R.string.settings_ai_focus_target_person)
        AiFocusTargetMode.FACE -> stringResource(R.string.settings_ai_focus_target_face)
        AiFocusTargetMode.ANIMAL -> stringResource(R.string.settings_ai_focus_target_animal)
        AiFocusTargetMode.BIRD -> stringResource(R.string.settings_ai_focus_target_bird)
        AiFocusTargetMode.VEHICLE -> stringResource(R.string.settings_ai_focus_target_vehicle)
        AiFocusTargetMode.AIRPLANE -> stringResource(R.string.settings_ai_focus_target_airplane)
    }
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
    onPresetManagementClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    val state by viewModel.state.collectAsState()
    val showLevelIndicator by viewModel.showLevelIndicator.collectAsState(initial = false)
    val focusPeakingEnabled by viewModel.focusPeakingEnabled.collectAsState(initial = true)
    val aiFocusTargetMode by viewModel.aiFocusTargetMode.collectAsState()
    val aiFocusScoreThreshold by viewModel.aiFocusScoreThreshold.collectAsState()
    val showGrid = state.showGrid
    val shutterSoundEnabled by viewModel.shutterSoundEnabled.collectAsState(initial = true)
    val vibrationEnabled by viewModel.vibrationEnabled.collectAsState(initial = true)
    val keepScreenOn by viewModel.keepScreenOn.collectAsState(initial = false)
    val windowScreenBrightness by viewModel.windowScreenBrightness.collectAsState()
    val volumeKeyAction by viewModel.volumeKeyAction.collectAsState()
    val topSheetAspectRatios by viewModel.topSheetAspectRatios.collectAsState()
    val customAspectRatios by viewModel.customAspectRatios.collectAsState()
    val availablePhotoAspectRatios by viewModel.availablePhotoAspectRatios.collectAsState()
    val autoSaveAfterCapture by viewModel.autoSaveAfterCapture.collectAsState(initial = true)
    val nrLevel by viewModel.nrLevel.collectAsState(initial = 5)
    val edgeLevel by viewModel.edgeLevel.collectAsState(initial = 1)
    val vendorCaptureSettingsByLens by viewModel.vendorCaptureSettingsByLens.collectAsState()
    val useRaw by viewModel.useRaw.collectAsState(initial = false)
    val exportDngWithRawExport by viewModel.exportDngWithRawExport.collectAsState(initial = true)
    val useSuperResolution by viewModel.useMFSR.collectAsState(initial = false)
    // 软件处理参数
    val sharpening by viewModel.sharpening.collectAsState(initial = 0f)
    val noiseReduction by viewModel.noiseReduction.collectAsState(initial = 0f)
    val chromaNoiseReduction by viewModel.chromaNoiseReduction.collectAsState(initial = 0f)
    val defaultFocalLength by viewModel.defaultFocalLength.collectAsState(initial = 0f)
    val customLensIds by viewModel.customLensIds.collectAsState(initial = emptyList())
    val lensIdBlacklist by viewModel.lensIdBlacklist.collectAsState(initial = emptyList())
    val iszLensConfigs by viewModel.iszLensConfigs.collectAsState(initial = emptyList())
    val preferredMainCameraId by viewModel.preferredMainCameraId.collectAsState(initial = null)
    val enableLogicalMultiCameraDiscovery by viewModel.enableLogicalMultiCameraDiscovery.collectAsState(initial = false)
    val logicalCameraBindingWhitelist by viewModel.logicalCameraBindingWhitelist.collectAsState(initial = emptyList())
    val multiFrameCount by viewModel.multiFrameCount.collectAsState()
    val useMultipleExposure by viewModel.useMultipleExposure.collectAsState()
    val multipleExposureCount by viewModel.multipleExposureCount.collectAsState()
    val useLivePhoto by viewModel.useLivePhoto.collectAsState()
    val enableDevelopAnimation by viewModel.enableDevelopAnimation.collectAsState()
    val photoQuality by viewModel.photoQuality.collectAsState(initial = 95)
    val useHeicExport by viewModel.useHeicExport.collectAsState(initial = false)
    val tonemapMode by viewModel.tonemapMode.collectAsState()
    val settingsTonemapMode = remember(tonemapMode) { sanitizeSettingsTonemapMode(tonemapMode) }
    val fixTonemapPreview by viewModel.fixTonemapPreview.collectAsState()
    val fixTonemapCapture by viewModel.fixTonemapCapture.collectAsState()
    val useGpuAcceleration by viewModel.useGpuAcceleration.collectAsState()
    val useP010 by viewModel.useP010.collectAsState()
    val useHlg10 by viewModel.useHlg10.collectAsState()
    val hlgHardwareCompatibilityEnabled by viewModel.hlgHardwareCompatibilityEnabled.collectAsState()
    val useP3ColorSpace by viewModel.useP3ColorSpace.collectAsState()
    val autoEnableHdr by viewModel.autoEnableHdr.collectAsState()
    val useHdrScreenMode by viewModel.useHdrScreenMode.collectAsState()
    val isPurchased by viewModel.isPurchased.collectAsState()
    val phantomMode by viewModel.phantomMode.collectAsState()
    val phantomButtonHidden by viewModel.phantomButtonHidden.collectAsState()
    val launchCameraOnPhantomMode by viewModel.launchCameraOnPhantomMode.collectAsState()
    val phantomPipPreview by viewModel.phantomPipPreview.collectAsState()
    val mirrorFrontCamera by viewModel.mirrorFrontCamera.collectAsState(initial = true)
    val widgetTheme by viewModel.widgetTheme.collectAsState()
    val saveLocation by viewModel.saveLocationEnabled.collectAsState(initial = false)
    val photoSavePath by viewModel.photoSavePath.collectAsState()
    val photoSaveTreeUri by viewModel.photoSaveTreeUri.collectAsState()
    val videoRecordingPath by viewModel.videoRecordingPath.collectAsState()
    val videoRecordingTreeUri by viewModel.videoRecordingTreeUri.collectAsState()
    val openAIApiKey by viewModel.openAIApiKey.collectAsState()
    val openAIUrl by viewModel.openAIUrl.collectAsState()
    val openAIModel by viewModel.openAIModel.collectAsState()
    val availableOpenAIModels by viewModel.availableOpenAIModels.collectAsState()
    val isFetchingAIModels by viewModel.isFetchingAIModels.collectAsState()
    val phantomSaveAsNew by viewModel.phantomSaveAsNew.collectAsState()
    val defaultVirtualAperture by viewModel.defaultVirtualAperture.collectAsState(initial = 0f)
    val jpgBaselineLutId by viewModel.jpgBaselineLutId.collectAsState()
    val rawBaselineLutId by viewModel.rawBaselineLutId.collectAsState()
    val phantomBaselineLutId by viewModel.phantomBaselineLutId.collectAsState()
    val rawDcpId by viewModel.rawDcpId.collectAsState()
    val rawDcpIdsByLens by viewModel.rawDcpIdsByLens.collectAsState()
    val rawExposureCompensation by viewModel.rawExposureCompensation.collectAsState()
    val rawAutoExposure by viewModel.rawAutoExposure.collectAsState()
    val rawHighlightsAdjustment by viewModel.rawHighlightsAdjustment.collectAsState()
    val rawShadowsAdjustment by viewModel.rawShadowsAdjustment.collectAsState()
    val rawMinShutterSpeedNs by viewModel.rawMinShutterSpeedNs.collectAsState()
    val droMode by viewModel.droMode.collectAsState()
    val rawBlackPointCorrection by viewModel.rawBlackPointCorrection.collectAsState()
    val rawWhitePointCorrection by viewModel.rawWhitePointCorrection.collectAsState()
    val rawAutoWhiteBalanceEstimate by viewModel.rawAutoWhiteBalanceEstimate.collectAsState()
    val rawLensShadingCorrectionEnabled by viewModel.rawLensShadingCorrectionEnabled.collectAsState()
    val rawBlackLevelMode by viewModel.rawBlackLevelMode.collectAsState()
    val rawCustomBlackLevel by viewModel.rawCustomBlackLevel.collectAsState()
    val rawWhiteLevelMode by viewModel.rawWhiteLevelMode.collectAsState()
    val rawCfaCorrectionMode by viewModel.rawCfaCorrectionMode.collectAsState()
    val rawColorEngine by viewModel.rawRenderingEngine.collectAsState()
    val rawToneMappingParameters by viewModel.rawToneMappingParameters.collectAsState()
    val rawSpectralFilmStock by viewModel.rawSpectralFilmStock.collectAsState()
    val rawSpectralFilmSelection by viewModel.rawSpectralFilmSelection.collectAsState()
    val rawSpectralFilmPrint by viewModel.rawSpectralFilmPrint.collectAsState()
    val availableDcps = viewModel.availableDcps
    val availableLuts = viewModel.availableLutList
    val previewThumbnail = viewModel.previewThumbnail

    var selectedTab by remember { mutableStateOf(SettingsTab.CAMERA) }
    var isRawSliderAdjusting by remember { mutableStateOf(false) }
    var isSoftwareProcessingSliderAdjusting by remember { mutableStateOf(false) }
    var mainCameraIdOptions by remember { mutableStateOf<List<String>>(emptyList()) }
    var rawExposureCompensationUi by remember { mutableStateOf(rawExposureCompensation) }
    var rawHighlightsAdjustmentUi by remember { mutableStateOf(rawHighlightsAdjustment) }
    var rawShadowsAdjustmentUi by remember { mutableStateOf(rawShadowsAdjustment) }
    var rawBlackPointCorrectionUi by remember { mutableStateOf(rawBlackPointCorrection) }
    var rawWhitePointCorrectionUi by remember { mutableStateOf(rawWhitePointCorrection) }
    var rawToneMappingParametersUi by remember { mutableStateOf(rawToneMappingParameters) }
    var sharpeningUi by remember { mutableStateOf(sharpening) }
    var noiseReductionUi by remember { mutableStateOf(noiseReduction) }
    var chromaNoiseReductionUi by remember { mutableStateOf(chromaNoiseReduction) }
    var aiFocusScoreThresholdUi by remember(aiFocusScoreThreshold) { mutableStateOf(aiFocusScoreThreshold) }
    var windowScreenBrightnessUi by remember { mutableStateOf(windowScreenBrightness ?: 1f) }
    var windowScreenBrightnessEnabled by remember { mutableStateOf(windowScreenBrightness != null) }
    var showAspectRatioDialog by remember { mutableStateOf(false) }
    var showAddIszLensDialog by remember { mutableStateOf(false) }
    var backupOperation by remember { mutableStateOf<BackupOperation?>(null) }

    LaunchedEffect(
        rawExposureCompensation,
        rawHighlightsAdjustment,
        rawShadowsAdjustment,
        rawBlackPointCorrection,
        rawWhitePointCorrection,
        rawToneMappingParameters
    ) {
        if (!isRawSliderAdjusting) {
            rawExposureCompensationUi = rawExposureCompensation
            rawHighlightsAdjustmentUi = rawHighlightsAdjustment
            rawShadowsAdjustmentUi = rawShadowsAdjustment
            rawBlackPointCorrectionUi = rawBlackPointCorrection
            rawWhitePointCorrectionUi = rawWhitePointCorrection
            rawToneMappingParametersUi = rawToneMappingParameters
        }
    }

    LaunchedEffect(sharpening, noiseReduction, chromaNoiseReduction) {
        if (!isSoftwareProcessingSliderAdjusting) {
            sharpeningUi = sharpening
            noiseReductionUi = noiseReduction
            chromaNoiseReductionUi = chromaNoiseReduction
        }
    }

    LaunchedEffect(
        customLensIds,
        lensIdBlacklist,
        enableLogicalMultiCameraDiscovery,
        logicalCameraBindingWhitelist
    ) {
        mainCameraIdOptions = runCatching {
            viewModel.discoverMainCameraIdOptions()
        }.getOrElse {
            emptyList()
        }
    }

    fun applyTonemapMode(mode: String) {
        viewModel.setTonemapMode(mode)
    }

    LaunchedEffect(tonemapMode, settingsTonemapMode) {
        if (settingsTonemapMode != tonemapMode) {
            applyTonemapMode(settingsTonemapMode)
        }
    }

    LaunchedEffect(windowScreenBrightness) {
        windowScreenBrightnessEnabled = windowScreenBrightness != null
        windowScreenBrightness?.let {
            windowScreenBrightnessUi = it
        }
    }

    fun commitRawSliderValues() {
        isRawSliderAdjusting = false
        viewModel.setRawExposureCompensation(rawExposureCompensationUi)
        viewModel.setRawHighlightsAdjustment(rawHighlightsAdjustmentUi)
        viewModel.setRawShadowsAdjustment(rawShadowsAdjustmentUi)
        viewModel.setRawBlackPointCorrection(rawBlackPointCorrectionUi)
        viewModel.setRawWhitePointCorrection(rawWhitePointCorrectionUi)
        viewModel.setRawToneMappingParameters(rawToneMappingParametersUi)
    }

    fun commitSoftwareProcessingSliderValues() {
        isSoftwareProcessingSliderAdjusting = false
        viewModel.setSharpening(sharpeningUi)
        viewModel.setNoiseReduction(noiseReductionUi)
        viewModel.setChromaNoiseReduction(chromaNoiseReductionUi)
    }

    val context = androidx.compose.ui.platform.LocalContext.current
    val coroutineScope = androidx.compose.runtime.rememberCoroutineScope()
    val isHdrSettingsSupported = remember { Build.VERSION.SDK_INT >= Build.VERSION_CODES.UPSIDE_DOWN_CAKE && !DeviceUtil.isHarmonyOS }
    val isHeicExportSupported = remember { HeicExportEncoder.isSupported }
    val photoSavePathOptions = PhotoSavePath.entries.toList()
    val photoSavePathLabels = photoSavePathOptions.map { it.displayName() }
    val photoSaveTreeLabel = remember(photoSaveTreeUri) {
        formatPersistedTreeLabel(photoSaveTreeUri)
    }
    val photoSavePathValue = when {
        photoSavePath == PhotoSavePath.EXTERNAL_TREE && photoSaveTreeLabel.isNotBlank() ->
            stringResource(R.string.settings_storage_path_external_selected, photoSaveTreeLabel)
        else -> photoSavePath.displayName()
    }
    val videoRecordingPathOptions = VideoRecordingPath.entries.toList()
    val videoRecordingPathLabels = videoRecordingPathOptions.map { it.displayName() }
    val videoRecordingTreeLabel = remember(videoRecordingTreeUri) {
        formatPersistedTreeLabel(videoRecordingTreeUri)
    }
    val videoRecordingPathValue = when {
        videoRecordingPath == VideoRecordingPath.EXTERNAL_TREE && videoRecordingTreeLabel.isNotBlank() ->
            stringResource(R.string.settings_storage_path_external_selected, videoRecordingTreeLabel)
        else -> videoRecordingPath.displayName()
    }

    val backupLauncher = rememberLauncherForActivityResult(
        ActivityResultContracts.CreateDocument("application/zip")
    ) { uri ->
        uri?.let {
            coroutineScope.launch {
                backupOperation = BackupOperation.BACKUP
                try {
                    val success = com.hinnka.mycamera.data.BackupManager.performBackup(context, it)
                    if (success) {
                        android.widget.Toast.makeText(context, R.string.backup_success, android.widget.Toast.LENGTH_SHORT).show()
                    } else {
                        android.widget.Toast.makeText(context, R.string.backup_failed, android.widget.Toast.LENGTH_SHORT).show()
                    }
                } finally {
                    backupOperation = null
                }
            }
        }
    }

    val restoreLauncher = rememberLauncherForActivityResult(
        ActivityResultContracts.GetContent()
    ) { uri ->
        uri?.let {
            coroutineScope.launch {
                backupOperation = BackupOperation.RESTORE
                try {
                    val success = com.hinnka.mycamera.data.BackupManager.performRestore(context, it)
                    if (success) {
                        android.widget.Toast.makeText(context, R.string.restore_success, android.widget.Toast.LENGTH_LONG).show()
                    } else {
                        android.widget.Toast.makeText(context, R.string.restore_failed, android.widget.Toast.LENGTH_SHORT).show()
                    }
                } finally {
                    backupOperation = null
                }
            }
        }
    }

    val importDcpLauncher = rememberLauncherForActivityResult(
        ActivityResultContracts.GetMultipleContents()
    ) { uris ->
        if (uris.isNotEmpty()) {
            viewModel.importRawDcps(uris) { importedDcps, failedCount ->
                when {
                    importedDcps.size == 1 && failedCount == 0 -> {
                        android.widget.Toast.makeText(
                            context,
                            context.getString(R.string.raw_dcp_import_success, importedDcps.first().getName()),
                            android.widget.Toast.LENGTH_SHORT
                        ).show()
                    }
                    importedDcps.isNotEmpty() && failedCount == 0 -> {
                        android.widget.Toast.makeText(
                            context,
                            context.getString(R.string.raw_dcp_import_success_count, importedDcps.size),
                            android.widget.Toast.LENGTH_SHORT
                        ).show()
                    }
                    importedDcps.isNotEmpty() -> {
                        android.widget.Toast.makeText(
                            context,
                            context.getString(R.string.raw_dcp_import_partial, importedDcps.size, failedCount),
                            android.widget.Toast.LENGTH_SHORT
                        ).show()
                    }
                    else -> {
                        android.widget.Toast.makeText(
                            context,
                            R.string.raw_dcp_import_failed,
                            android.widget.Toast.LENGTH_SHORT
                        ).show()
                    }
                }
            }
        }
    }

    val photoSaveTreeLauncher = rememberLauncherForActivityResult(
        ActivityResultContracts.OpenDocumentTree()
    ) { uri ->
        uri?.let {
            val flags = Intent.FLAG_GRANT_READ_URI_PERMISSION or Intent.FLAG_GRANT_WRITE_URI_PERMISSION
            val permissionSaved = runCatching {
                context.contentResolver.takePersistableUriPermission(it, flags)
            }.isSuccess
            if (permissionSaved) {
                viewModel.setPhotoSavePath(PhotoSavePath.EXTERNAL_TREE, it.toString())
            } else {
                android.widget.Toast.makeText(
                    context,
                    R.string.settings_storage_path_permission_failed,
                    android.widget.Toast.LENGTH_SHORT
                ).show()
            }
        }
    }

    val videoRecordingTreeLauncher = rememberLauncherForActivityResult(
        ActivityResultContracts.OpenDocumentTree()
    ) { uri ->
        uri?.let {
            val flags = Intent.FLAG_GRANT_READ_URI_PERMISSION or Intent.FLAG_GRANT_WRITE_URI_PERMISSION
            val permissionSaved = runCatching {
                context.contentResolver.takePersistableUriPermission(it, flags)
            }.isSuccess
            if (permissionSaved) {
                viewModel.setVideoRecordingPath(VideoRecordingPath.EXTERNAL_TREE, it.toString())
            } else {
                android.widget.Toast.makeText(
                    context,
                    R.string.settings_storage_path_permission_failed,
                    android.widget.Toast.LENGTH_SHORT
                ).show()
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
    var showCustomAIModelDialog by remember { mutableStateOf(false) }
    var customAIModelValue by remember { mutableStateOf("") }
    var softwareProcessingExpanded by remember { mutableStateOf(false) }
    var calibrationExpanded by remember { mutableStateOf(false) }
    var showGhostPermissionDialog by remember { mutableStateOf(false) }
    var isGhostPermissionFlowActive by remember { mutableStateOf(false) }
    var isCheckingUpdate by remember { mutableStateOf(false) }
    var downloadedUpdateApk by remember { mutableStateOf<File?>(null) }
    var showInstallUpdateDialog by remember { mutableStateOf(false) }
    var baselinePickerTarget by remember { mutableStateOf<BaselineColorCorrectionTarget?>(null) }
    var baselineRecipeEditorTarget by remember { mutableStateOf<BaselineColorCorrectionTarget?>(null) }
    var multiFrameCountSliderValue by remember(multiFrameCount) {
        mutableStateOf(multiFrameCount.toFloat())
    }

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

    if (showInstallUpdateDialog) {
        val apkFile = downloadedUpdateApk
        if (apkFile != null) {
            AlertDialog(
                onDismissRequest = { showInstallUpdateDialog = false },
                title = {
                    Text(
                        text = stringResource(R.string.update_ready_title),
                        style = MaterialTheme.typography.titleLarge
                    )
                },
                text = {
                    Text(
                        text = stringResource(R.string.update_ready_message),
                        style = MaterialTheme.typography.bodyMedium
                    )
                },
                confirmButton = {
                    TextButton(
                        onClick = {
                            val installStarted = AppUpdateManager.startInstall(context, apkFile)
                            if (installStarted) {
                                showInstallUpdateDialog = false
                            } else {
                                android.widget.Toast.makeText(
                                    context,
                                    R.string.update_install_permission_hint,
                                    android.widget.Toast.LENGTH_LONG
                                ).show()
                            }
                        }
                    ) {
                        Text(stringResource(R.string.update_install_now))
                    }
                },
                dismissButton = {
                    TextButton(onClick = { showInstallUpdateDialog = false }) {
                        Text(stringResource(R.string.cancel))
                    }
                }
            )
        }
    }

    val backgroundPainter = rememberBackgroundPainter(viewModel)
    val settingsRippleConfiguration = remember {
        RippleConfiguration(
            color = Color.White,
            rippleAlpha = SettingsRippleAlpha
        )
    }

    CompositionLocalProvider(LocalRippleConfiguration provides settingsRippleConfiguration) {
        Column(
            modifier = modifier
                .fillMaxSize()
                .background(SettingsBackgroundColor)
                .paint(backgroundPainter, contentScale = ContentScale.Crop)
                .background(SettingsBackgroundScrim)
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

        val camera = stringResource(R.string.settings_tab_camera)
        val imaging = stringResource(R.string.imaging)
        val phantom = stringResource(R.string.phantom)
        val system = stringResource(R.string.settings_tab_system)

        // Tab 选择器
        val tabs = remember {
            mutableStateListOf<Pair<SettingsTab, String>>().apply {
                add(SettingsTab.CAMERA to camera)
                add(SettingsTab.IMAGING to imaging)
                add(SettingsTab.RAW to "RAW")
                if (DeviceUtil.canShowPhantom) {
                    add(SettingsTab.PHANTOM to phantom)
                }
                add(SettingsTab.SYSTEM to system)
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
                            fontSize = 12.sp,
                            fontWeight = FontWeight.Medium,
                            maxLines = 1,
                            overflow = TextOverflow.Ellipsis,
                            modifier = Modifier.basicMarquee()
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
                SettingsTab.CAMERA -> {
                    // 辅助工具
                    SettingsSection(title = stringResource(R.string.settings_section_assist)) {
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
                            title = stringResource(R.string.settings_focus_peaking),
                            description = stringResource(R.string.settings_focus_peaking_description),
                            checked = focusPeakingEnabled,
                            onCheckedChange = { viewModel.setFocusPeakingEnabled(it) }
                        )
                    }

                    Spacer(modifier = Modifier.height(24.dp))

                    // 对焦与镜头
                    SettingsSection(title = stringResource(R.string.settings_section_focus_lens)) {
                        val aiFocusModeOptions = AiFocusTargetMode.entries.map { it to it.displayName() }
                        val aiFocusModeLabels = aiFocusModeOptions.map { it.second }
                        DropdownSettingItem(
                            title = stringResource(R.string.settings_ai_focus_target),
                            description = stringResource(R.string.settings_ai_focus_target_description),
                            value = aiFocusTargetMode.displayName(),
                            options = aiFocusModeLabels,
                            isLoading = false,
                            onExpanded = {},
                            onOptionSelected = { label ->
                                aiFocusModeOptions.firstOrNull { it.second == label }?.first?.let {
                                    viewModel.setAiFocusTargetMode(it)
                                }
                            }
                        )

                        HorizontalDivider(
                            color = Color.White.copy(alpha = 0.1f),
                            modifier = Modifier.padding(vertical = 8.dp)
                        )

                        SliderSettingItem(
                            title = stringResource(R.string.settings_ai_focus_sensitivity),
                            description = stringResource(R.string.settings_ai_focus_sensitivity_description),
                            value = aiFocusScoreThresholdUi,
                            valueRange = 0.05f..0.95f,
                            onValueChange = {
                                aiFocusScoreThresholdUi = it
                                viewModel.setAiFocusScoreThreshold(it)
                            },
                            valueTextFormatter = { String.format("%.2f", it) },
                            resetValue = 0.5f
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
                            modifier = Modifier.padding(vertical = 8.dp)
                        )

                        NavigationSettingItem(
                            title = stringResource(R.string.settings_add_isz_lens),
                            description = stringResource(
                                R.string.settings_add_isz_lens_description,
                                iszLensConfigs.size
                            ),
                            onClick = { showAddIszLensDialog = true }
                        )

                        if (mainCameraIdOptions.size > 1) {
                            HorizontalDivider(
                                color = Color.White.copy(alpha = 0.1f),
                                modifier = Modifier.padding(vertical = 8.dp)
                            )

                            val currentMainCameraId = state.availableCameras.firstOrNull {
                                it.lensType == LensType.BACK_MAIN && abs(it.intrinsicZoomRatio - 1f) <= 0.01f
                            }?.cameraId
                            val selectedMainCameraId = preferredMainCameraId
                                ?.takeIf { mainCameraIdOptions.contains(it) }
                                ?: currentMainCameraId?.takeIf { mainCameraIdOptions.contains(it) }
                                ?: mainCameraIdOptions.first()
                            val mainCameraIdLabels = mainCameraIdOptions.map { cameraId ->
                                cameraId to stringResource(R.string.settings_main_camera_id_option, cameraId)
                            }
                            val selectedMainCameraLabel = mainCameraIdLabels
                                .firstOrNull { it.first == selectedMainCameraId }
                                ?.second
                                ?: selectedMainCameraId

                            DropdownSettingItem(
                                title = stringResource(R.string.settings_main_camera_id),
                                description = stringResource(R.string.settings_main_camera_id_description),
                                value = selectedMainCameraLabel,
                                options = mainCameraIdLabels.map { it.second },
                                isLoading = false,
                                onExpanded = {},
                                onOptionSelected = { label ->
                                    mainCameraIdLabels.firstOrNull { it.second == label }?.first?.let {
                                        viewModel.setPreferredMainCameraId(it)
                                    }
                                }
                            )
                        }

                        HorizontalDivider(
                            color = Color.White.copy(alpha = 0.1f),
                            modifier = Modifier.padding(vertical = 8.dp)
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

                        HorizontalDivider(
                            color = Color.White.copy(alpha = 0.1f),
                            modifier = Modifier.padding(vertical = 12.dp)
                        )

                        SwitchSettingItem(
                            title = stringResource(R.string.settings_logical_multi_camera_discovery),
                            description = stringResource(R.string.settings_logical_multi_camera_discovery_description),
                            checked = enableLogicalMultiCameraDiscovery,
                            onCheckedChange = { viewModel.setEnableLogicalMultiCameraDiscovery(it) }
                        )

                        HorizontalDivider(
                            color = Color.White.copy(alpha = 0.1f),
                            modifier = Modifier.padding(vertical = 8.dp)
                        )

                        TextInputSettingItem(
                            title = stringResource(R.string.settings_logical_camera_binding_whitelist),
                            description = stringResource(R.string.settings_logical_camera_binding_whitelist_description),
                            value = logicalCameraBindingWhitelist.joinToString(","),
                            onValueChange = { viewModel.setLogicalCameraBindingWhitelist(it) }
                        )

                        HorizontalDivider(
                            color = Color.White.copy(alpha = 0.1f),
                            modifier = Modifier.padding(vertical = 8.dp)
                        )

                        TextInputSettingItem(
                            title = stringResource(R.string.settings_custom_lens_ids),
                            description = stringResource(R.string.settings_custom_lens_ids_description),
                            value = customLensIds.joinToString(","),
                            onValueChange = { viewModel.setCustomLensIds(it) }
                        )

                        TextInputSettingItem(
                            title = stringResource(R.string.settings_lens_id_blacklist),
                            description = stringResource(R.string.settings_lens_id_blacklist_description),
                            value = lensIdBlacklist.joinToString(","),
                            onValueChange = { viewModel.setLensIdBlacklist(it) }
                        )
                    }

                    Spacer(modifier = Modifier.height(24.dp))

                    // 拍摄行为
                    SettingsSection(title = stringResource(R.string.settings_section_capture_storage)) {
                        NavigationSettingItem(
                            title = stringResource(R.string.settings_top_sheet_aspect_ratios),
                            description = stringResource(
                                R.string.settings_top_sheet_aspect_ratios_summary,
                                topSheetAspectRatios.joinToString(" / ") { it.getDisplayName() }
                            ),
                            onClick = { showAspectRatioDialog = true }
                        )

                        if (showAspectRatioDialog) {
                            AspectRatioDialog(
                                availableRatios = availablePhotoAspectRatios,
                                selectedRatios = topSheetAspectRatios,
                                customRatios = customAspectRatios,
                                onSelectionChange = { viewModel.setTopSheetAspectRatios(it) },
                                onAddCustomRatio = { width, height ->
                                    viewModel.addCustomAspectRatio(width, height)
                                },
                                onDeleteCustomRatio = { viewModel.deleteCustomAspectRatio(it) },
                                onDismiss = { showAspectRatioDialog = false }
                            )
                        }

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

                        DropdownSettingItem(
                            title = stringResource(
                                R.string.settings_storage_path_title,
                                stringResource(R.string.settings_storage_path_photo_title_arg)
                            ),
                            description = stringResource(
                                R.string.settings_storage_path_description,
                                stringResource(R.string.settings_storage_path_photo_description_arg)
                            ),
                            value = photoSavePathValue,
                            options = photoSavePathLabels,
                            isLoading = false,
                            onExpanded = {},
                            onOptionSelected = { selected ->
                                val selectedIndex = photoSavePathLabels.indexOf(selected)
                                when (photoSavePathOptions.getOrNull(selectedIndex)) {
                                    PhotoSavePath.DCIM_PHOTON -> {
                                        viewModel.setPhotoSavePath(PhotoSavePath.DCIM_PHOTON)
                                    }
                                    PhotoSavePath.EXTERNAL_TREE -> {
                                        photoSaveTreeLauncher.launch(null)
                                    }
                                    null -> Unit
                                }
                            }
                        )

                        HorizontalDivider(
                            color = Color.White.copy(alpha = 0.1f),
                            modifier = Modifier.padding(vertical = 8.dp)
                        )

                        DropdownSettingItem(
                            title = stringResource(
                                R.string.settings_storage_path_title,
                                stringResource(R.string.settings_storage_path_video_title_arg)
                            ),
                            description = stringResource(
                                R.string.settings_storage_path_description,
                                stringResource(R.string.settings_storage_path_video_description_arg)
                            ),
                            value = videoRecordingPathValue,
                            options = videoRecordingPathLabels,
                            isLoading = false,
                            onExpanded = {},
                            onOptionSelected = { selected ->
                                val selectedIndex = videoRecordingPathLabels.indexOf(selected)
                                when (videoRecordingPathOptions.getOrNull(selectedIndex)) {
                                    VideoRecordingPath.DCIM_PHOTON -> {
                                        viewModel.setVideoRecordingPath(VideoRecordingPath.DCIM_PHOTON)
                                    }
                                    VideoRecordingPath.EXTERNAL_TREE -> {
                                        videoRecordingTreeLauncher.launch(null)
                                    }
                                    null -> Unit
                                }
                            }
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
                    }
                }

                SettingsTab.IMAGING -> {
                    // 画质与性能
                    SettingsSection(title = stringResource(R.string.settings_section_quality_perf)) {
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

                        if (isHeicExportSupported) {
                            HorizontalDivider(
                                color = Color.White.copy(alpha = 0.1f),
                                modifier = Modifier.padding(vertical = 8.dp)
                            )

                            SwitchSettingItem(
                                title = stringResource(R.string.settings_use_heic_export),
                                description = stringResource(R.string.settings_use_heic_export_description),
                                checked = useHeicExport,
                                onCheckedChange = { viewModel.setUseHeicExport(it) }
                            )
                        }

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
                    }

                    Spacer(modifier = Modifier.height(24.dp))

                    // 色彩与 HDR
                    SettingsSection(title = stringResource(R.string.settings_section_color_hdr)) {
                        BaselineColorCorrectionSettingItem(
                            title = stringResource(R.string.settings_baseline_jpg_title),
                            description = stringResource(R.string.settings_baseline_jpg_description),
                            selectedLut = availableLuts.find { it.id == jpgBaselineLutId },
                            onClick = { baselinePickerTarget = BaselineColorCorrectionTarget.JPG }
                        )

                        HorizontalDivider(
                            color = Color.White.copy(alpha = 0.1f),
                            modifier = Modifier.padding(vertical = 12.dp)
                        )

                        QualityLevelSetting(
                            title = stringResource(R.string.settings_tonemap_mode),
                            description = stringResource(R.string.settings_tonemap_mode_description),
                            levels = listOf(
                                "SYSTEM_DEFAULT" to stringResource(R.string.settings_tonemap_mode_system_default),
                                "SRGB" to stringResource(R.string.settings_tonemap_mode_srgb),
                            ),
                            currentLevel = settingsTonemapMode,
                            onLevelSelected = ::applyTonemapMode
                        )

                        HorizontalDivider(
                            color = Color.White.copy(alpha = 0.1f),
                            modifier = Modifier.padding(vertical = 12.dp)
                        )

                        SwitchSettingItem(
                            title = stringResource(R.string.settings_fix_tonemap_preview),
                            description = stringResource(R.string.settings_fix_tonemap_preview_description),
                            checked = fixTonemapPreview,
                            onCheckedChange = { viewModel.setFixTonemapPreview(it) }
                        )

                        HorizontalDivider(
                            color = Color.White.copy(alpha = 0.1f),
                            modifier = Modifier.padding(vertical = 12.dp)
                        )

                        SwitchSettingItem(
                            title = stringResource(R.string.settings_fix_tonemap_capture),
                            description = stringResource(R.string.settings_fix_tonemap_capture_description),
                            checked = fixTonemapCapture,
                            onCheckedChange = { viewModel.setFixTonemapCapture(it) }
                        )

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
                                    onCheckedChange = {
                                        viewModel.setUseHlg10(it)
                                        if (it) {
                                            viewModel.setUseP010(true)
                                        }
                                    }
                                )

                                HorizontalDivider(
                                    color = Color.White.copy(alpha = 0.1f),
                                    modifier = Modifier.padding(vertical = 12.dp)
                                )

                                SwitchSettingItem(
                                    title = stringResource(R.string.settings_hlg_hardware_compatibility),
                                    description = stringResource(R.string.settings_hlg_hardware_compatibility_description),
                                    checked = hlgHardwareCompatibilityEnabled,
                                    onCheckedChange = { viewModel.setHlgHardwareCompatibilityEnabled(it) }
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

                            HorizontalDivider(
                                color = Color.White.copy(alpha = 0.1f),
                                modifier = Modifier.padding(vertical = 12.dp)
                            )

                            SwitchSettingItem(
                                title = stringResource(R.string.settings_screen_hdr),
                                description = stringResource(R.string.settings_screen_hdr_description),
                                checked = useHdrScreenMode,
                                onCheckedChange = { viewModel.setUseHdrScreenMode(it) }
                            )
                        }
                    }

                    Spacer(modifier = Modifier.height(24.dp))

                    // 多帧与曝光
                    SettingsSection(title = stringResource(R.string.settings_section_multiframe_exposure)) {
                        SliderSettingItem(
                            title = stringResource(R.string.settings_multi_frame_count),
                            description = stringResource(R.string.settings_multi_frame_count_description),
                            value = multiFrameCountSliderValue,
                            valueRange = MultiFrameConfig.MIN_FRAME_COUNT.toFloat()..MultiFrameConfig.MAX_FRAME_COUNT.toFloat(),
                            onValueChange = { multiFrameCountSliderValue = it.roundToInt().toFloat() },
                            resetValue = MultiFrameConfig.DEFAULT_FRAME_COUNT.toFloat(),
                            onValueChangeFinished = {
                                viewModel.setMultiFrameCount(multiFrameCountSliderValue.roundToInt())
                            },
                            valueTextFormatter = { it.roundToInt().toString() }
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
                    }

                    Spacer(modifier = Modifier.height(24.dp))

                    // AI 服务设置
                    SettingsSection(title = stringResource(R.string.ai_service)) {
                        TextInputSettingItem(
                            title = stringResource(R.string.settings_openai_api_key),
                            description = stringResource(R.string.settings_openai_api_key_desc),
                            value = openAIApiKey ?: "",
                            onValueChange = { viewModel.setOpenAIApiKey(it) }
                        )

                        HorizontalDivider(
                            color = Color.White.copy(alpha = 0.1f),
                            modifier = Modifier.padding(vertical = 8.dp)
                        )

                        TextInputSettingItem(
                            title = stringResource(R.string.settings_openai_base_url),
                            description = stringResource(R.string.settings_openai_base_url_desc),
                            value = openAIUrl ?: OpenAIApiClient.DEFAULT_API_URL,
                            onValueChange = { viewModel.setOpenAIUrl(it) }
                        )

                        HorizontalDivider(
                            color = Color.White.copy(alpha = 0.1f),
                            modifier = Modifier.padding(vertical = 8.dp)
                        )

                        val customModelLabel = stringResource(R.string.settings_ai_model_custom)
                        DropdownSettingItem(
                            title = stringResource(R.string.settings_ai_model),
                            description = stringResource(R.string.settings_ai_model_desc),
                            value = openAIModel ?: OpenAIApiClient.DEFAULT_MODEL,
                            options = availableOpenAIModels + customModelLabel,
                            isLoading = isFetchingAIModels,
                            enabled = !openAIApiKey.isNullOrBlank(),
                            onExpanded = { viewModel.fetchAvailableAIModels() },
                            onOptionSelected = {
                                if (it == customModelLabel) {
                                    customAIModelValue = openAIModel ?: ""
                                    showCustomAIModelDialog = true
                                } else {
                                    viewModel.setOpenAIModel(it)
                                }
                            }
                        )
                    }

                    Spacer(modifier = Modifier.height(24.dp))

                    // 细节微调
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
                            value = sharpeningUi,
                            valueRange = 0f..1f,
                            resetValue = 0f,
                            onValueChange = {
                                isSoftwareProcessingSliderAdjusting = true
                                sharpeningUi = it
                            },
                            onValueChangeFinished = ::commitSoftwareProcessingSliderValues
                        )

                        Spacer(modifier = Modifier.height(12.dp))

                        SliderSettingItem(
                            title = stringResource(R.string.settings_noise_reduction),
                            description = stringResource(R.string.settings_noise_reduction_description),
                            value = noiseReductionUi,
                            valueRange = 0f..1f,
                            resetValue = 0f,
                            onValueChange = {
                                isSoftwareProcessingSliderAdjusting = true
                                noiseReductionUi = it
                            },
                            onValueChangeFinished = ::commitSoftwareProcessingSliderValues
                        )

                        Spacer(modifier = Modifier.height(12.dp))

                        SliderSettingItem(
                            title = stringResource(R.string.settings_chroma_noise_reduction),
                            description = stringResource(R.string.settings_chroma_noise_reduction_description),
                            value = chromaNoiseReductionUi,
                            valueRange = 0f..1f,
                            resetValue = 0f,
                            onValueChange = {
                                isSoftwareProcessingSliderAdjusting = true
                                chromaNoiseReductionUi = it
                            },
                            onValueChangeFinished = ::commitSoftwareProcessingSliderValues
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

                SettingsTab.RAW -> {
                    RawEditPanel(
                        selectedDcpId = rawDcpId,
                        rawDcpIdsByLens = rawDcpIdsByLens,
                        dcpLensOptions = rawDcpLensOptions(state.availableCameras),
                        availableDcps = availableDcps,
                        selectedBaselineLutId = rawBaselineLutId,
                        onSelectBaselineLut = { viewModel.setBaselineLut(BaselineColorCorrectionTarget.RAW, it) },
                        onEditBaselineRecipe = { baselineRecipeEditorTarget = BaselineColorCorrectionTarget.RAW },
                        availableLuts = availableLuts,
                        thumbnail = previewThumbnail,
                        rawExposureCompensation = rawExposureCompensationUi,
                        rawAutoExposure = rawAutoExposure,
                        rawHighlightsAdjustment = rawHighlightsAdjustmentUi,
                        rawShadowsAdjustment = rawShadowsAdjustmentUi,
                        rawBlackPointCorrection = rawBlackPointCorrectionUi,
                        rawWhitePointCorrection = rawWhitePointCorrectionUi,
                        rawRenderingEngine = rawColorEngine,
                        rawToneMappingParameters = rawToneMappingParametersUi,
                        spectralFilmSelection = rawSpectralFilmSelection ?: SpectralFilmSelection(rawSpectralFilmStock ?: "kodak_portra_400"),
                        spectralFilmPrint = rawSpectralFilmPrint ?: "kodak_portra_endura",
                        onSelectDcp = { viewModel.setRawDcpId(it) },
                        onRawDcpIdsByLensChange = { viewModel.setRawDcpIdsByLens(it) },
                        onImportDcp = { importDcpLauncher.launch("*/*") },
                        onDeleteDcp = { dcp ->
                            viewModel.deleteRawDcp(dcp.id) { success ->
                                android.widget.Toast.makeText(
                                    context,
                                    if (success) R.string.raw_dcp_delete_success else R.string.raw_dcp_delete_failed,
                                    android.widget.Toast.LENGTH_SHORT
                                ).show()
                            }
                        },
                        onRawExposureCompensationChange = {
                            rawExposureCompensationUi = it
                            if (it != 0f && rawAutoExposure) {
                                viewModel.setRawAutoExposure(false)
                            }
                        },
                        onRawAutoExposureChange = {
                            if (it) {
                                rawExposureCompensationUi = 0f
                                viewModel.setRawExposureCompensation(0f)
                                viewModel.setRawHighlightsAdjustment(0f)
                            }
                            viewModel.setRawAutoExposure(it)
                        },
                        onRawHighlightsAdjustmentChange = {
                            rawHighlightsAdjustmentUi = it
                            if (it != 0f && rawAutoExposure) {
                                viewModel.setRawAutoExposure(false)
                            }
                        },
                        onRawShadowsAdjustmentChange = {
                            rawShadowsAdjustmentUi = it
                        },
                        onRawBlackPointCorrectionChange = { rawBlackPointCorrectionUi = it },
                        onRawWhitePointCorrectionChange = { rawWhitePointCorrectionUi = it },
                        onRawColorEngineChange = { viewModel.setRawColorEngine(it) },
                        onRawToneMappingParametersChange = { rawToneMappingParametersUi = it },
                        onSpectralFilmSelectionChange = { viewModel.setRawSpectralFilmSelection(it) },
                        onSpectralFilmPrintChange = { viewModel.setRawSpectralFilmPrint(it) },
                        onAdjustmentStart = { isRawSliderAdjusting = true },
                        onAdjustmentEnd = { commitRawSliderValues() },
                        contentMode = RawEditPanelContentMode.FULL
                    )

                    HorizontalDivider(
                        modifier = Modifier.padding(vertical = 8.dp),
                        color = Color.White.copy(alpha = 0.1f)
                    )

                    QualityLevelSetting(
                        title = stringResource(R.string.settings_raw_min_shutter_speed),
                        description = stringResource(R.string.settings_raw_min_shutter_speed_description),
                        levels = RAW_MIN_SHUTTER_SPEED_OPTIONS.map { value ->
                            value to if (value == 0L) {
                                stringResource(R.string.video_option_off)
                            } else {
                                "1/${(1_000_000_000L / value).toInt()}"
                            }
                        },
                        currentLevel = rawMinShutterSpeedNs,
                        onLevelSelected = { viewModel.setRawMinShutterSpeedNs(it) }
                    )

                    HorizontalDivider(
                        modifier = Modifier.padding(vertical = 8.dp),
                        color = Color.White.copy(alpha = 0.1f)
                    )

                    SwitchSettingItem(
                        title = stringResource(R.string.settings_raw_lens_shading_correction),
                        description = stringResource(R.string.settings_raw_lens_shading_correction_description),
                        checked = rawLensShadingCorrectionEnabled,
                        onCheckedChange = { viewModel.setRawLensShadingCorrectionEnabled(it) }
                    )

                    HorizontalDivider(
                        modifier = Modifier.padding(vertical = 8.dp),
                        color = Color.White.copy(alpha = 0.1f)
                    )

                    SwitchSettingItem(
                        title = stringResource(R.string.settings_export_dng_with_raw_export),
                        description = stringResource(R.string.settings_export_dng_with_raw_export_description),
                        checked = exportDngWithRawExport,
                        onCheckedChange = { viewModel.setExportDngWithRawExport(it) }
                    )

                    HorizontalDivider(
                        modifier = Modifier.padding(vertical = 8.dp),
                        color = Color.White.copy(alpha = 0.1f)
                    )

                    val rawCfaCorrectionTitle = state.getCurrentCameraInfo()?.let { info ->
                        stringResource(
                            R.string.settings_raw_cfa_correction_with_lens,
                            info.cameraId,
                            info.focalLength35mmEquivalent.roundToInt()
                        )
                    } ?: stringResource(R.string.settings_raw_cfa_correction)

                    QualityLevelSetting(
                        title = rawCfaCorrectionTitle,
                        description = stringResource(R.string.settings_raw_cfa_correction_description),
                        levels = listOf(
                            RawCfaCorrection.MODE_DEFAULT to stringResource(R.string.settings_cfa_correction_default),
                            RawCfaCorrection.MODE_2X2_RGGB to stringResource(R.string.settings_cfa_correction_2x2_rggb),
                            RawCfaCorrection.MODE_2X2_GRBG to stringResource(R.string.settings_cfa_correction_2x2_grbg),
                            RawCfaCorrection.MODE_2X2_GBRG to stringResource(R.string.settings_cfa_correction_2x2_gbrg),
                            RawCfaCorrection.MODE_2X2_BGGR to stringResource(R.string.settings_cfa_correction_2x2_bggr),
                            RawCfaCorrection.MODE_4X4_RGGB to stringResource(R.string.settings_cfa_correction_4x4_rggb),
                            RawCfaCorrection.MODE_4X4_GRBG to stringResource(R.string.settings_cfa_correction_4x4_grbg),
                            RawCfaCorrection.MODE_4X4_GBRG to stringResource(R.string.settings_cfa_correction_4x4_gbrg),
                            RawCfaCorrection.MODE_4X4_BGGR to stringResource(R.string.settings_cfa_correction_4x4_bggr),
                            RawCfaCorrection.MODE_8X8_RGGB to stringResource(R.string.settings_cfa_correction_8x8_rggb),
                            RawCfaCorrection.MODE_8X8_GRBG to stringResource(R.string.settings_cfa_correction_8x8_grbg),
                            RawCfaCorrection.MODE_8X8_GBRG to stringResource(R.string.settings_cfa_correction_8x8_gbrg),
                            RawCfaCorrection.MODE_8X8_BGGR to stringResource(R.string.settings_cfa_correction_8x8_bggr)
                        ),
                        currentLevel = rawCfaCorrectionMode,
                        onLevelSelected = { viewModel.setRawCfaCorrectionMode(it) }
                    )

                    HorizontalDivider(
                        modifier = Modifier.padding(vertical = 8.dp),
                        color = Color.White.copy(alpha = 0.1f)
                    )

                    val rawBlackLevelCorrectionTitle = state.getCurrentCameraInfo()?.let { info ->
                        stringResource(
                            R.string.settings_raw_black_level_correction_with_lens,
                            info.cameraId,
                            info.focalLength35mmEquivalent.roundToInt()
                        )
                    } ?: stringResource(R.string.settings_raw_black_level_correction)

                    QualityLevelSetting(
                        title = rawBlackLevelCorrectionTitle,
                        description = stringResource(R.string.settings_raw_black_level_correction_description),
                        levels = listOf(
                            "Default" to stringResource(R.string.settings_black_level_default),
                            "0" to "0",
                            "16" to "16",
                            "64" to "64",
                            "256" to "256",
                            "512" to "512",
                            "Custom" to stringResource(R.string.settings_black_level_custom)
                        ),
                        currentLevel = rawBlackLevelMode,
                        onLevelSelected = { viewModel.setRawBlackLevelMode(it) }
                    )

                    if (rawBlackLevelMode == "Custom") {
                        Spacer(modifier = Modifier.height(8.dp))
                        TextInputSettingItem(
                            title = stringResource(R.string.settings_black_level_custom),
                            description = null,
                            value = if (rawCustomBlackLevel == 0f) "" else rawCustomBlackLevel.toString(),
                            onValueChange = {
                                it.toFloatOrNull()?.let { value -> viewModel.setRawCustomBlackLevel(value) }
                            }
                        )
                    }

                    HorizontalDivider(
                        modifier = Modifier.padding(vertical = 8.dp),
                        color = Color.White.copy(alpha = 0.1f)
                    )

                    val rawWhiteLevelCorrectionTitle = state.getCurrentCameraInfo()?.let { info ->
                        stringResource(
                            R.string.settings_raw_white_level_correction_with_lens,
                            info.cameraId,
                            info.focalLength35mmEquivalent.roundToInt()
                        )
                    } ?: stringResource(R.string.settings_raw_white_level_correction)

                    QualityLevelSetting(
                        title = rawWhiteLevelCorrectionTitle,
                        description = stringResource(R.string.settings_raw_white_level_correction_description),
                        levels = listOf(
                            RawWhiteLevelCorrection.MODE_DEFAULT to stringResource(R.string.settings_white_level_default),
                            RawWhiteLevelCorrection.MODE_RAW10 to stringResource(R.string.settings_white_level_raw10),
                            RawWhiteLevelCorrection.MODE_RAW12 to stringResource(R.string.settings_white_level_raw12),
                            RawWhiteLevelCorrection.MODE_RAW14 to stringResource(R.string.settings_white_level_raw14),
                            RawWhiteLevelCorrection.MODE_RAW_SENSOR to stringResource(R.string.settings_white_level_raw_sensor)
                        ),
                        currentLevel = rawWhiteLevelMode,
                        onLevelSelected = { viewModel.setRawWhiteLevelMode(it) }
                    )
                }

                SettingsTab.PHANTOM -> {
                    if (DeviceUtil.canShowPhantom) {
                        // 幻影模式设置
                        SettingsSection(title = stringResource(R.string.ghost_mode)) {
                            SwitchSettingItem(
                                title = stringResource(R.string.ghost_mode),
                                description = stringResource(R.string.ghost_mode_dialog_description),
                                checked = phantomMode,
                                onCheckedChange = { enabled ->
                                    if (enabled && (!Settings.canDrawOverlays(context) || !Environment.isExternalStorageManager())) {
                                        showGhostPermissionDialog = true
                                    } else if (enabled != phantomMode) {
                                        viewModel.togglePhantomMode()
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

                            HorizontalDivider(
                                color = Color.White.copy(alpha = 0.1f),
                                modifier = Modifier.padding(vertical = 12.dp)
                            )

                            BaselineColorCorrectionSettingItem(
                                title = stringResource(R.string.settings_baseline_phantom_title),
                                description = stringResource(R.string.settings_baseline_phantom_description),
                                selectedLut = availableLuts.find { it.id == phantomBaselineLutId },
                                onClick = { baselinePickerTarget = BaselineColorCorrectionTarget.PHANTOM }
                            )
                        }
                    }
                }

                SettingsTab.SYSTEM -> {
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

                    // 界面样式
                    SettingsSection(title = stringResource(R.string.settings_section_interface)) {
                        BackgroundSetting(
                            viewModel = viewModel,
                            modifier = Modifier.padding(bottom = 16.dp)
                        )

                        HorizontalDivider(
                            color = Color.White.copy(alpha = 0.1f),
                            modifier = Modifier.padding(vertical = 12.dp)
                        )

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

                    // 内容管理
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

                        HorizontalDivider(
                            color = Color.White.copy(alpha = 0.1f),
                            modifier = Modifier.padding(vertical = 8.dp)
                        )

                        NavigationSettingItem(
                            title = stringResource(R.string.settings_preset_management),
                            description = stringResource(R.string.settings_preset_management_description),
                            onClick = onPresetManagementClick
                        )
                    }

                    Spacer(modifier = Modifier.height(24.dp))

                    // 系统与控制
                    SettingsSection(title = stringResource(R.string.settings_section_system_control)) {
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

                        SwitchSettingItem(
                            title = stringResource(R.string.settings_keep_screen_on),
                            description = stringResource(R.string.settings_keep_screen_on_description),
                            checked = keepScreenOn,
                            onCheckedChange = { viewModel.setKeepScreenOn(it) }
                        )

                        HorizontalDivider(
                            color = Color.White.copy(alpha = 0.1f),
                            modifier = Modifier.padding(vertical = 8.dp)
                        )

                        SliderSettingItem(
                            title = stringResource(R.string.settings_window_screen_brightness),
                            description = stringResource(R.string.settings_window_screen_brightness_description),
                            value = windowScreenBrightnessUi,
                            valueRange = 0f..1f,
                            onValueChange = {
                                windowScreenBrightnessUi = it.coerceIn(0f, 1f)
                            },
                            onValueChangeFinished = {
                                if (windowScreenBrightnessEnabled) {
                                    viewModel.setWindowScreenBrightness(windowScreenBrightnessUi)
                                }
                            },
                            valueTextFormatter = { String.format("%.2f", it) },
                            resetValue = 1f,
                            toggleValue = windowScreenBrightnessEnabled,
                            onToggleChange = { enabled ->
                                windowScreenBrightnessEnabled = enabled
                                viewModel.setWindowScreenBrightness(
                                    if (enabled) windowScreenBrightnessUi else null
                                )
                            }
                        )

                        HorizontalDivider(
                            color = Color.White.copy(alpha = 0.1f),
                            modifier = Modifier.padding(vertical = 8.dp)
                        )

                        VolumeKeyActionSetting(
                            action = volumeKeyAction,
                            onActionSelected = { viewModel.setVolumeKeyAction(it) }
                        )
                    }

                    Spacer(modifier = Modifier.height(24.dp))

                    // 数据维护
                    SettingsSection(title = stringResource(R.string.settings_section_data_maintenance)) {
                        NavigationSettingItem(
                            title = stringResource(R.string.settings_backup_settings),
                            description = if (backupOperation == BackupOperation.BACKUP) {
                                stringResource(R.string.backup_in_progress)
                            } else {
                                stringResource(R.string.settings_backup_settings_description)
                            },
                            enabled = backupOperation == null,
                            showProgress = backupOperation == BackupOperation.BACKUP,
                            onClick = { backupLauncher.launch("photon_camera_backup_${System.currentTimeMillis()}.zip") }
                        )

                        HorizontalDivider(
                            color = Color.White.copy(alpha = 0.1f),
                            modifier = Modifier.padding(vertical = 8.dp)
                        )

                        NavigationSettingItem(
                            title = stringResource(R.string.settings_restore_settings),
                            description = if (backupOperation == BackupOperation.RESTORE) {
                                stringResource(R.string.restore_in_progress)
                            } else {
                                stringResource(R.string.settings_restore_settings_description)
                            },
                            enabled = backupOperation == null,
                            showProgress = backupOperation == BackupOperation.RESTORE,
                            onClick = { restoreLauncher.launch("*/*") }
                        )
                    }

                    Spacer(modifier = Modifier.height(24.dp))

                    // 帮助与关于
                    val isGoogleFlavor = BuildConfig.FLAVOR == "google"
                    val communityGroupUrl = TELEGRAM_GROUP_URL
                    val communityGroupDescription = stringResource(
                        R.string.settings_community_group_telegram_description
                    )

                    SettingsSection(title = stringResource(R.string.settings_section_help_about)) {
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
                                Spacer(modifier = Modifier.height(2.dp))
                                Text(
                                    text = stringResource(R.string.settings_log_viewer_description),
                                    color = Color.White.copy(alpha = 0.6f),
                                    fontSize = 13.sp,
                                    lineHeight = 18.sp
                                )
                            }

                            Spacer(modifier = Modifier.width(16.dp))

                            Icon(
                                imageVector = AppIcons.Article,
                                contentDescription = stringResource(R.string.logs),
                                tint = Color.White.copy(alpha = 0.6f)
                            )
                        }

                        if (!isGoogleFlavor) {
                            HorizontalDivider(
                                color = Color.White.copy(alpha = 0.1f),
                                modifier = Modifier.padding(vertical = 8.dp)
                            )

                            NavigationSettingItem(
                                title = stringResource(R.string.settings_check_update),
                                description = if (isCheckingUpdate) {
                                    stringResource(R.string.settings_check_update_running)
                                } else {
                                    stringResource(
                                        R.string.settings_check_update_description,
                                        BuildConfig.VERSION_NAME
                                    )
                                },
                                onClick = {
                                    if (!isCheckingUpdate) {
                                        coroutineScope.launch {
                                            isCheckingUpdate = true
                                            try {
                                                android.widget.Toast.makeText(
                                                    context,
                                                    R.string.update_checking,
                                                    android.widget.Toast.LENGTH_SHORT
                                                ).show()
                                                val release = AppUpdateManager.checkForUpdate()
                                                if (release == null) {
                                                    android.widget.Toast.makeText(
                                                        context,
                                                        R.string.update_no_update,
                                                        android.widget.Toast.LENGTH_SHORT
                                                    ).show()
                                                    return@launch
                                                }

                                                android.widget.Toast.makeText(
                                                    context,
                                                    R.string.update_downloading,
                                                    android.widget.Toast.LENGTH_SHORT
                                                ).show()
                                                downloadedUpdateApk = AppUpdateManager.downloadApk(context, release)
                                                showInstallUpdateDialog = true
                                            } catch (error: Exception) {
                                                android.widget.Toast.makeText(
                                                    context,
                                                    R.string.update_failed,
                                                    android.widget.Toast.LENGTH_LONG
                                                ).show()
                                            } finally {
                                                isCheckingUpdate = false
                                            }
                                        }
                                    }
                                }
                            )
                        }

                        HorizontalDivider(
                            color = Color.White.copy(alpha = 0.1f),
                            modifier = Modifier.padding(vertical = 8.dp)
                        )

                        NavigationSettingItem(
                            title = stringResource(R.string.settings_community_group),
                            description = communityGroupDescription,
                            onClick = { openExternalUrl(context, communityGroupUrl) }
                        )

                        HorizontalDivider(
                            color = Color.White.copy(alpha = 0.1f),
                            modifier = Modifier.padding(vertical = 8.dp)
                        )

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
                                    val webIntent = Intent(Intent.ACTION_VIEW, Uri.parse(qrCodeUrl))
                                    webIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                                    try {
                                        context.startActivity(webIntent)
                                    } catch (e2: Exception) {
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
    }

    // 显示日志查看器弹窗
    if (showLogViewerDialog) {
        LogViewerDialog(
            onDismiss = { showLogViewerDialog = false }
        )
    }

    if (showCustomAIModelDialog) {
        AlertDialog(
            onDismissRequest = { showCustomAIModelDialog = false },
            title = { Text(text = stringResource(R.string.settings_ai_model_custom_dialog_title)) },
            text = {
                Column {
                    Text(
                        text = stringResource(R.string.settings_ai_model_custom_dialog_desc),
                        style = MaterialTheme.typography.bodyMedium,
                        color = Color.White.copy(alpha = 0.7f)
                    )
                    Spacer(modifier = Modifier.height(16.dp))
                    androidx.compose.material3.OutlinedTextField(
                        value = customAIModelValue,
                        onValueChange = { customAIModelValue = it },
                        modifier = Modifier.fillMaxWidth(),
                        singleLine = true,
                        colors = androidx.compose.material3.OutlinedTextFieldDefaults.colors(
                            focusedTextColor = Color.White,
                            unfocusedTextColor = Color.White,
                            focusedBorderColor = Color(0xFFE5A324),
                            unfocusedBorderColor = Color.White.copy(alpha = 0.2f)
                        )
                    )
                }
            },
            confirmButton = {
                TextButton(
                    onClick = {
                        if (customAIModelValue.isNotBlank()) {
                            viewModel.setOpenAIModel(customAIModelValue.trim())
                        }
                        showCustomAIModelDialog = false
                    }
                ) {
                    Text(stringResource(R.string.confirm))
                }
            },
            dismissButton = {
                TextButton(onClick = { showCustomAIModelDialog = false }) {
                    Text(stringResource(R.string.cancel))
                }
            }
        )
    }

    if (showAddIszLensDialog) {
        AddIszLensDialog(
            availableCameras = state.availableCameras,
            iszLensConfigs = iszLensConfigs,
            vendorCaptureSettingsByLens = vendorCaptureSettingsByLens,
            onAddLens = { baseCameraId, iszZoomRatio, isMacro, rawBlackBorderCrop, settings ->
                viewModel.addIszLensConfig(
                    baseCameraId,
                    iszZoomRatio,
                    isMacro,
                    rawBlackBorderCrop,
                    settings
                )
                showAddIszLensDialog = false
            },
            onRemoveLens = { viewModel.removeIszLensConfig(it) },
            onDismiss = { showAddIszLensDialog = false }
        )
    }

    baselinePickerTarget?.let { target ->
        val currentBaselineLutId = when (target) {
            BaselineColorCorrectionTarget.JPG -> jpgBaselineLutId
            BaselineColorCorrectionTarget.RAW -> rawBaselineLutId
            BaselineColorCorrectionTarget.PHANTOM -> phantomBaselineLutId
        }
        AlertDialog(
            onDismissRequest = { baselinePickerTarget = null },
            title = {
                Text(
                    text = when (target) {
                        BaselineColorCorrectionTarget.JPG -> stringResource(R.string.settings_baseline_jpg_title)
                        BaselineColorCorrectionTarget.RAW -> stringResource(R.string.settings_baseline_raw_title)
                        BaselineColorCorrectionTarget.PHANTOM -> stringResource(R.string.settings_baseline_phantom_title)
                    }
                )
            },
            text = {
                Column {
                    Text(
                        text = stringResource(R.string.settings_baseline_dialog_description),
                        color = Color.White.copy(alpha = 0.7f),
                        fontSize = 13.sp,
                        modifier = Modifier.padding(bottom = 12.dp)
                    )
                    LutSelector(
                        availableLuts = availableLuts,
                        currentLutId = currentBaselineLutId,
                        thumbnail = previewThumbnail,
                        onLutSelected = { selected ->
                            viewModel.setBaselineLut(target, selected)
                            baselinePickerTarget = null
                        }
                    )
                }
            },
            confirmButton = {
                TextButton(
                    onClick = {
                        baselinePickerTarget = null
                        if (currentBaselineLutId != null) {
                            baselineRecipeEditorTarget = target
                        }
                    },
                    enabled = currentBaselineLutId != null
                ) {
                    Text(stringResource(R.string.settings_baseline_edit_recipe))
                }
            },
            dismissButton = {
                Row {
                    TextButton(
                        onClick = {
                            viewModel.setBaselineLut(target, null)
                            baselinePickerTarget = null
                        }
                    ) {
                        Text(stringResource(R.string.settings_baseline_clear))
                    }
                    TextButton(onClick = { baselinePickerTarget = null }) {
                        Text(stringResource(R.string.cancel))
                    }
                }
            }
        )
    }

    baselineRecipeEditorTarget?.let { target ->
        val currentBaselineLutId = when (target) {
            BaselineColorCorrectionTarget.JPG -> jpgBaselineLutId
            BaselineColorCorrectionTarget.RAW -> rawBaselineLutId
            BaselineColorCorrectionTarget.PHANTOM -> phantomBaselineLutId
        }
        LaunchedEffect(target, currentBaselineLutId) {
            if (currentBaselineLutId == null) {
                baselineRecipeEditorTarget = null
            }
        }
        currentBaselineLutId?.let { lutId ->
            LutEditBottomSheet(
                lutId = lutId,
                editorTarget = when (target) {
                    BaselineColorCorrectionTarget.JPG -> LutEditorTarget.BASELINE_JPG
                    BaselineColorCorrectionTarget.RAW -> LutEditorTarget.BASELINE_RAW
                    BaselineColorCorrectionTarget.PHANTOM -> LutEditorTarget.BASELINE_PHANTOM
                },
                onDismiss = { baselineRecipeEditorTarget = null }
            )
        }
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
                            imageVector = AppIcons.ExpandLess,
                            contentDescription = null,
                            tint = Color.White.copy(alpha = 0.6f)
                        )
                    } else {
                        Icon(
                            imageVector = AppIcons.ExpandMore,
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

@OptIn(ExperimentalLayoutApi::class)
@Composable
private fun AspectRatioDialog(
    availableRatios: List<AspectRatio>,
    selectedRatios: List<AspectRatio>,
    customRatios: List<AspectRatio>,
    onSelectionChange: (List<AspectRatio>) -> Unit,
    onAddCustomRatio: (Int, Int) -> Unit,
    onDeleteCustomRatio: (AspectRatio) -> Unit,
    onDismiss: () -> Unit
) {
    val selected = AspectRatio.sanitizeTopSheetRatios(selectedRatios)
    var customWidth by remember { mutableStateOf("") }
    var customHeight by remember { mutableStateOf("") }
    val parsedWidth = customWidth.toIntOrNull()
    val parsedHeight = customHeight.toIntOrNull()
    val canAddCustomRatio = parsedWidth != null && parsedHeight != null && parsedWidth > 0 && parsedHeight > 0

    AlertDialog(
        onDismissRequest = onDismiss,
        containerColor = Color(0xFF1A1A1A),
        title = {
            Text(
                text = stringResource(R.string.settings_top_sheet_aspect_ratios),
                color = Color.White,
                fontSize = 20.sp,
                fontWeight = FontWeight.Bold
            )
        },
        text = {
            Column(
                modifier = Modifier.verticalScroll(rememberScrollState())
            ) {
                Text(
                    text = stringResource(R.string.settings_top_sheet_aspect_ratios_description),
                    color = Color.White.copy(alpha = 0.6f),
                    fontSize = 13.sp,
                    lineHeight = 18.sp
                )

                Spacer(modifier = Modifier.height(20.dp))

                // Built-in Ratios
                Text(
                    text = stringResource(R.string.built_in).uppercase(),
                    color = Color.White.copy(alpha = 0.4f),
                    fontSize = 11.sp,
                    fontWeight = FontWeight.Bold,
                    letterSpacing = 1.sp,
                    modifier = Modifier.padding(bottom = 12.dp)
                )

                FlowRow(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(10.dp),
                    verticalArrangement = Arrangement.spacedBy(10.dp)
                ) {
                    AspectRatio.entries.forEach { ratio ->
                        val isChecked = selected.any { it.name == ratio.name }
                        val canToggle = if (isChecked) selected.size > 1 else selected.size < AspectRatio.TOP_SHEET_MAX_COUNT
                        AspectRatioGridItem(
                            ratio = ratio,
                            isSelected = isChecked,
                            enabled = canToggle,
                            onClick = {
                                if (canToggle) {
                                    onSelectionChange(toggleTopSheetAspectRatio(selected, ratio))
                                }
                            }
                        )
                    }
                }

                if (customRatios.isNotEmpty()) {
                    Spacer(modifier = Modifier.height(24.dp))

                    Text(
                        text = stringResource(R.string.category_custom).uppercase(),
                        color = Color.White.copy(alpha = 0.4f),
                        fontSize = 11.sp,
                        fontWeight = FontWeight.Bold,
                        letterSpacing = 1.sp,
                        modifier = Modifier.padding(bottom = 12.dp)
                    )

                    FlowRow(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.spacedBy(10.dp),
                        verticalArrangement = Arrangement.spacedBy(10.dp)
                    ) {
                        customRatios.forEach { ratio ->
                            val isChecked = selected.any { it.name == ratio.name }
                            val canToggle = if (isChecked) selected.size > 1 else selected.size < AspectRatio.TOP_SHEET_MAX_COUNT
                            AspectRatioGridItem(
                                ratio = ratio,
                                isSelected = isChecked,
                                enabled = canToggle,
                                isCustom = true,
                                onClick = {
                                    if (canToggle) {
                                        onSelectionChange(toggleTopSheetAspectRatio(selected, ratio))
                                    }
                                },
                                onDelete = { onDeleteCustomRatio(ratio) }
                            )
                        }
                    }
                }

                Spacer(modifier = Modifier.height(24.dp))

                Text(
                    text = stringResource(R.string.settings_custom_aspect_ratio),
                    color = Color.White,
                    fontSize = 15.sp,
                    fontWeight = FontWeight.SemiBold
                )

                Spacer(modifier = Modifier.height(12.dp))

                Row(
                    horizontalArrangement = Arrangement.spacedBy(12.dp),
                    verticalAlignment = Alignment.CenterVertically,
                    modifier = Modifier
                        .fillMaxWidth()
                        .background(Color.White.copy(alpha = 0.05f), RoundedCornerShape(12.dp))
                        .padding(12.dp)
                ) {
                    androidx.compose.material3.OutlinedTextField(
                        value = customWidth,
                        onValueChange = { customWidth = it.filter(Char::isDigit).take(3) },
                        modifier = Modifier.weight(1f),
                        placeholder = { Text(stringResource(R.string.settings_custom_aspect_ratio_width), fontSize = 12.sp) },
                        singleLine = true,
                        keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Number),
                        colors = androidx.compose.material3.OutlinedTextFieldDefaults.colors(
                            focusedTextColor = Color.White,
                            unfocusedTextColor = Color.White,
                            focusedContainerColor = Color.Transparent,
                            unfocusedContainerColor = Color.Transparent,
                            focusedBorderColor = Color(0xFFFF6B35),
                            unfocusedBorderColor = Color.White.copy(alpha = 0.2f),
                            cursorColor = Color(0xFFFF6B35)
                        )
                    )
                    Text(
                        text = ":",
                        color = Color.White.copy(alpha = 0.7f),
                        fontSize = 18.sp,
                        fontWeight = FontWeight.Bold
                    )
                    androidx.compose.material3.OutlinedTextField(
                        value = customHeight,
                        onValueChange = { customHeight = it.filter(Char::isDigit).take(3) },
                        modifier = Modifier.weight(1f),
                        placeholder = { Text(stringResource(R.string.settings_custom_aspect_ratio_height), fontSize = 12.sp) },
                        singleLine = true,
                        keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Number),
                        colors = androidx.compose.material3.OutlinedTextFieldDefaults.colors(
                            focusedTextColor = Color.White,
                            unfocusedTextColor = Color.White,
                            focusedContainerColor = Color.Transparent,
                            unfocusedContainerColor = Color.Transparent,
                            focusedBorderColor = Color(0xFFFF6B35),
                            unfocusedBorderColor = Color.White.copy(alpha = 0.2f),
                            cursorColor = Color(0xFFFF6B35)
                        )
                    )
                    IconButton(
                        enabled = canAddCustomRatio,
                        onClick = {
                            onAddCustomRatio(parsedWidth ?: 1, parsedHeight ?: 1)
                            customWidth = ""
                            customHeight = ""
                        },
                        modifier = Modifier
                            .size(48.dp)
                            .background(
                                if (canAddCustomRatio) Color(0xFFFF6B35) else Color.White.copy(alpha = 0.1f),
                                RoundedCornerShape(12.dp)
                            )
                    ) {
                        Icon(
                            imageVector = Icons.Default.Add,
                            contentDescription = stringResource(R.string.settings_custom_aspect_ratio),
                            tint = if (canAddCustomRatio) Color.White else Color.White.copy(alpha = 0.3f)
                        )
                    }
                }
            }
        },
        confirmButton = {
            TextButton(onClick = onDismiss) {
                Text(
                    text = stringResource(R.string.confirm),
                    color = Color(0xFFFF6B35),
                    fontWeight = FontWeight.Bold
                )
            }
        }
    )
}

@Composable
private fun AspectRatioGridItem(
    ratio: AspectRatio,
    isSelected: Boolean,
    enabled: Boolean,
    isCustom: Boolean = false,
    onClick: () -> Unit,
    onDelete: (() -> Unit)? = null
) {
    Box(
        modifier = Modifier
            .width(72.dp)
            .clip(RoundedCornerShape(12.dp))
            .background(
                if (isSelected) Color(0xFFFF6B35).copy(alpha = 0.15f)
                else Color.White.copy(alpha = 0.05f)
            )
            .border(
                1.dp,
                if (isSelected) Color(0xFFFF6B35) else Color.White.copy(alpha = 0.1f),
                RoundedCornerShape(12.dp)
            )
            .clickable(enabled = enabled) { onClick() }
            .padding(vertical = 10.dp, horizontal = 4.dp),
        contentAlignment = Alignment.Center
    ) {
        Column(
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.spacedBy(6.dp)
        ) {
            // Visual Shape Preview
            Box(
                modifier = Modifier
                    .size(32.dp, 24.dp),
                contentAlignment = Alignment.Center
            ) {
                val w = ratio.widthRatio.toFloat()
                val h = ratio.heightRatio.toFloat()
                val maxWidth = 28.dp
                val maxHeight = 20.dp
                
                val displayW: androidx.compose.ui.unit.Dp
                val displayH: androidx.compose.ui.unit.Dp
                
                if (w / h > maxWidth / maxHeight) {
                    displayW = maxWidth
                    displayH = maxWidth * (h / w)
                } else {
                    displayH = maxHeight
                    displayW = maxHeight * (w / h)
                }
                
                Box(
                    modifier = Modifier
                        .size(displayW, displayH)
                        .background(
                            if (isSelected) Color(0xFFFF6B35) else Color.White.copy(alpha = 0.3f),
                            RoundedCornerShape(2.dp)
                        )
                )
            }
            
            Text(
                text = ratio.getDisplayName(),
                color = if (isSelected) Color(0xFFFF6B35) else if (enabled) Color.White else Color.White.copy(alpha = 0.3f),
                fontSize = 11.sp,
                fontWeight = if (isSelected) FontWeight.Bold else FontWeight.Medium,
                textAlign = TextAlign.Center
            )
        }

        if (isCustom && onDelete != null) {
            Box(
                modifier = Modifier
                    .align(Alignment.TopEnd)
                    .padding(2.dp)
                    .size(16.dp)
                    .clip(CircleShape)
                    .background(Color.Black.copy(alpha = 0.3f))
                    .clickable { onDelete() },
                contentAlignment = Alignment.Center
            ) {
                Icon(
                    imageVector = Icons.Default.Close,
                    contentDescription = null,
                    tint = Color.White.copy(alpha = 0.7f),
                    modifier = Modifier.size(10.dp)
                )
            }
        }
    }
}

private fun toggleTopSheetAspectRatio(
    selectedRatios: List<AspectRatio>,
    ratio: AspectRatio
): List<AspectRatio> {
    val updated = if (selectedRatios.any { it.name == ratio.name }) {
        selectedRatios.filterNot { it.name == ratio.name }
    } else {
        selectedRatios + ratio
    }
    return AspectRatio.sanitizeTopSheetRatios(
        updated
    )
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
            imageVector = AppIcons.ChevronRight,
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
                imageVector = AppIcons.ExpandMore,
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

@Composable
fun BaselineColorCorrectionSettingItem(
    title: String,
    description: String,
    selectedLut: LutInfo?,
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
            Spacer(modifier = Modifier.height(6.dp))
            Text(
                text = selectedLut?.getName() ?: stringResource(R.string.none),
                color = if (selectedLut != null) Color(0xFFE5A324) else Color.White.copy(alpha = 0.45f),
                fontSize = 14.sp,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis
            )
        }

        Spacer(modifier = Modifier.width(16.dp))

        Icon(
            imageVector = AppIcons.ChevronRight,
            contentDescription = null,
            tint = Color.White.copy(alpha = 0.6f)
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
    enabled: Boolean = true,
    showProgress: Boolean = false,
    modifier: Modifier = Modifier
) {
    Row(
        modifier = modifier
            .fillMaxWidth()
            .clickable(enabled = enabled, onClick = onClick)
            .padding(vertical = 8.dp),
        horizontalArrangement = Arrangement.SpaceBetween,
        verticalAlignment = Alignment.CenterVertically
    ) {
        Column(modifier = Modifier.weight(1f)) {
            Text(
                text = title,
                color = Color.White.copy(alpha = if (enabled || showProgress) 1f else 0.5f),
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

        if (showProgress) {
            CircularProgressIndicator(
                modifier = Modifier.size(22.dp),
                color = Color.White.copy(alpha = 0.8f),
                strokeWidth = 2.dp
            )
        } else {
            Icon(
                imageVector = AppIcons.ChevronRight,
                contentDescription = null,
                tint = Color.White.copy(alpha = if (enabled) 0.6f else 0.3f)
            )
        }
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
                    imageVector = AppIcons.FilterNone,
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
private fun AddIszLensDialog(
    availableCameras: List<CameraInfo>,
    iszLensConfigs: List<IszLensConfig>,
    vendorCaptureSettingsByLens: VendorCaptureSettingsByLens,
    onAddLens: (String, Float, Boolean, RawBlackBorderCrop, VendorCaptureSettings) -> Unit,
    onRemoveLens: (IszLensConfig) -> Unit,
    onDismiss: () -> Unit
) {
    val baseLensCandidates = availableCameras.filter {
        it.lensType != LensType.FRONT &&
            it.lensType != LensType.BACK_MACRO &&
            !it.isVirtualIszLens
    }
    var selectedBaseCameraId by remember(baseLensCandidates) {
        mutableStateOf(baseLensCandidates.firstOrNull()?.cameraId.orEmpty())
    }
    var selectedIszZoomRatio by remember { mutableStateOf(1f) }
    var isMacroLens by remember { mutableStateOf(false) }
    var rawBlackBorderCropLeftText by remember { mutableStateOf("0") }
    var rawBlackBorderCropTopText by remember { mutableStateOf("0") }
    var rawBlackBorderCropRightText by remember { mutableStateOf("0") }
    var rawBlackBorderCropBottomText by remember { mutableStateOf("0") }
    var settings by remember {
        mutableStateOf(
            VendorCaptureSettings(emptyMap())
        )
    }

    LaunchedEffect(baseLensCandidates) {
        if (baseLensCandidates.none { it.cameraId == selectedBaseCameraId }) {
            selectedBaseCameraId = baseLensCandidates.firstOrNull()?.cameraId.orEmpty()
        }
    }

    val selectedBaseCamera = baseLensCandidates.firstOrNull { it.cameraId == selectedBaseCameraId }
    val selectedBaseLabel = selectedBaseCamera?.let { iszBaseLensLabel(it) }.orEmpty()
    val baseLensLabels = baseLensCandidates.map { it.cameraId to iszBaseLensLabel(it) }
    val virtualLensId = IszLensConfig.createVirtualCameraId(selectedBaseCameraId, selectedIszZoomRatio)
    val virtualLensName = selectedBaseCamera?.let {
        stringResource(
            R.string.settings_isz_virtual_lens_name,
            iszBaseLensLabel(it),
            IszLensConfig.displayRatioLabel(selectedIszZoomRatio),
            IszLensConfig.displayRatioLabel(it.displayIntrinsicZoomRatio * selectedIszZoomRatio)
        )
    } ?: virtualLensId
    val rawBlackBorderCrop = IszLensConfig.sanitizeRawBlackBorderCrop(
        RawBlackBorderCrop(
            leftPx = rawBlackBorderCropLeftText.toIntOrNull() ?: 0,
            topPx = rawBlackBorderCropTopText.toIntOrNull() ?: 0,
            rightPx = rawBlackBorderCropRightText.toIntOrNull() ?: 0,
            bottomPx = rawBlackBorderCropBottomText.toIntOrNull() ?: 0
        )
    )

    AlertDialog(
        onDismissRequest = onDismiss,
        containerColor = Color(0xFF1A1A1A),
        title = { Text(stringResource(R.string.settings_add_isz_lens)) },
        text = {
            Column(
                modifier = Modifier.verticalScroll(rememberScrollState())
            ) {
                if (baseLensCandidates.isEmpty()) {
                    Text(
                        text = stringResource(R.string.settings_isz_lens_no_physical_lens),
                        color = Color.White.copy(alpha = 0.65f),
                        fontSize = 13.sp,
                        lineHeight = 18.sp
                    )
                } else {
                    DropdownSettingItem(
                        title = stringResource(R.string.settings_isz_base_lens),
                        description = stringResource(R.string.settings_isz_base_lens_description),
                        value = selectedBaseLabel,
                        options = baseLensLabels.map { it.second },
                        isLoading = false,
                        onExpanded = {},
                        onOptionSelected = { label ->
                            baseLensLabels.firstOrNull { it.second == label }?.let {
                                selectedBaseCameraId = it.first
                            }
                        }
                    )

                    HorizontalDivider(
                        color = Color.White.copy(alpha = 0.1f),
                        modifier = Modifier.padding(vertical = 12.dp)
                    )

                    QualityLevelSetting(
                        title = stringResource(R.string.settings_isz_zoom_ratio),
                        description = stringResource(R.string.settings_isz_zoom_ratio_description),
                        levels = listOf(1f, 2f, 4f)
                            .map { it to IszLensConfig.displayRatioLabel(it) },
                        currentLevel = selectedIszZoomRatio,
                        onLevelSelected = { selectedIszZoomRatio = it }
                    )

                    HorizontalDivider(
                        color = Color.White.copy(alpha = 0.1f),
                        modifier = Modifier.padding(vertical = 12.dp)
                    )

                    SwitchSettingItem(
                        title = stringResource(R.string.settings_isz_macro_lens),
                        description = stringResource(R.string.settings_isz_macro_lens_description),
                        checked = isMacroLens,
                        onCheckedChange = { isMacroLens = it }
                    )

                    HorizontalDivider(
                        color = Color.White.copy(alpha = 0.1f),
                        modifier = Modifier.padding(vertical = 12.dp)
                    )

                    Text(
                        text = stringResource(R.string.settings_isz_raw_black_border_crop),
                        color = Color.White,
                        fontSize = 14.sp
                    )
                    Text(
                        text = stringResource(R.string.settings_isz_raw_black_border_crop_description),
                        color = Color.White.copy(alpha = 0.6f),
                        fontSize = 12.sp,
                        lineHeight = 16.sp,
                        modifier = Modifier.padding(top = 4.dp, bottom = 8.dp)
                    )
                    Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                        Row(
                            modifier = Modifier.fillMaxWidth(),
                            horizontalArrangement = Arrangement.spacedBy(8.dp)
                        ) {
                            RawBlackBorderCropField(
                                value = rawBlackBorderCropLeftText,
                                onValueChange = { rawBlackBorderCropLeftText = it },
                                label = stringResource(R.string.settings_isz_raw_black_border_crop_left),
                                modifier = Modifier.weight(1f)
                            )
                            RawBlackBorderCropField(
                                value = rawBlackBorderCropTopText,
                                onValueChange = { rawBlackBorderCropTopText = it },
                                label = stringResource(R.string.settings_isz_raw_black_border_crop_top),
                                modifier = Modifier.weight(1f)
                            )
                        }
                        Row(
                            modifier = Modifier.fillMaxWidth(),
                            horizontalArrangement = Arrangement.spacedBy(8.dp)
                        ) {
                            RawBlackBorderCropField(
                                value = rawBlackBorderCropRightText,
                                onValueChange = { rawBlackBorderCropRightText = it },
                                label = stringResource(R.string.settings_isz_raw_black_border_crop_right),
                                modifier = Modifier.weight(1f)
                            )
                            RawBlackBorderCropField(
                                value = rawBlackBorderCropBottomText,
                                onValueChange = { rawBlackBorderCropBottomText = it },
                                label = stringResource(R.string.settings_isz_raw_black_border_crop_bottom),
                                modifier = Modifier.weight(1f)
                            )
                        }
                    }

                    HorizontalDivider(
                        color = Color.White.copy(alpha = 0.1f),
                        modifier = Modifier.padding(vertical = 12.dp)
                    )

                    VendorCaptureSettingsPanel(
                        currentLensId = virtualLensId,
                        currentLensName = virtualLensName,
                        settings = settings,
                        onSettingsChange = { settings = it }
                    )
                }

                if (iszLensConfigs.isNotEmpty()) {
                    HorizontalDivider(
                        color = Color.White.copy(alpha = 0.1f),
                        modifier = Modifier.padding(vertical = 12.dp)
                    )

                    Text(
                        text = stringResource(R.string.settings_isz_added_lenses),
                        color = Color.White,
                        fontSize = 15.sp,
                        fontWeight = FontWeight.Normal,
                        modifier = Modifier.padding(bottom = 8.dp)
                    )

                    iszLensConfigs.forEach { config ->
                        val baseCamera = availableCameras.firstOrNull { it.cameraId == config.baseCameraId }
                        val baseName = baseCamera?.let { iszBaseLensLabel(it) } ?: config.baseCameraId
                        val displayRatio = baseCamera?.let {
                            IszLensConfig.displayRatioLabel(it.displayIntrinsicZoomRatio * config.iszZoomRatio)
                        } ?: IszLensConfig.displayRatioLabel(config.iszZoomRatio)
                        val lensKind = stringResource(
                            if (config.isMacro) {
                                R.string.settings_isz_lens_kind_macro
                            } else {
                                R.string.settings_isz_lens_kind_normal
                            }
                        )
                        ExistingIszLensRow(
                            title = stringResource(
                                R.string.settings_isz_existing_lens_title,
                                baseName,
                                IszLensConfig.displayRatioLabel(config.iszZoomRatio)
                            ),
                            description = stringResource(
                                R.string.settings_isz_existing_lens_description,
                                config.virtualCameraId,
                                displayRatio,
                                lensKind,
                                vendorCaptureSettingsByLens.settingsFor(config.virtualCameraId).values.size,
                                stringResource(
                                    R.string.settings_isz_raw_black_border_crop_summary,
                                    config.rawBlackBorderCrop.leftPx,
                                    config.rawBlackBorderCrop.topPx,
                                    config.rawBlackBorderCrop.rightPx,
                                    config.rawBlackBorderCrop.bottomPx
                                )
                            ),
                            onRemove = { onRemoveLens(config) }
                        )
                    }
                }
            }
        },
        confirmButton = {
            TextButton(
                onClick = {
                    onAddLens(
                        selectedBaseCameraId,
                        selectedIszZoomRatio,
                        isMacroLens,
                        rawBlackBorderCrop,
                        settings
                    )
                },
                enabled = selectedBaseCameraId.isNotBlank()
            ) {
                Text(stringResource(R.string.settings_isz_add_lens_confirm))
            }
        },
        dismissButton = {
            TextButton(onClick = onDismiss) {
                Text(stringResource(R.string.cancel))
            }
        }
    )
}

@Composable
private fun RawBlackBorderCropField(
    value: String,
    onValueChange: (String) -> Unit,
    label: String,
    modifier: Modifier = Modifier
) {
    androidx.compose.material3.OutlinedTextField(
        value = value,
        onValueChange = { newValue ->
            onValueChange(newValue.filter { it.isDigit() }.take(4))
        },
        modifier = modifier,
        label = { Text(label) },
        singleLine = true,
        keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Number),
        colors = androidx.compose.material3.OutlinedTextFieldDefaults.colors(
            focusedTextColor = Color.White,
            unfocusedTextColor = Color.White,
            focusedBorderColor = Color(0xFFE5A324),
            unfocusedBorderColor = Color.White.copy(alpha = 0.2f),
            focusedLabelColor = Color(0xFFE5A324),
            unfocusedLabelColor = Color.White.copy(alpha = 0.6f),
            cursorColor = Color(0xFFE5A324)
        )
    )
}

@Composable
private fun ExistingIszLensRow(
    title: String,
    description: String,
    onRemove: () -> Unit,
    modifier: Modifier = Modifier
) {
    Row(
        modifier = modifier
            .fillMaxWidth()
            .padding(vertical = 6.dp),
        horizontalArrangement = Arrangement.SpaceBetween,
        verticalAlignment = Alignment.CenterVertically
    ) {
        Column(modifier = Modifier.weight(1f)) {
            Text(
                text = title,
                color = Color.White,
                fontSize = 14.sp,
                fontWeight = FontWeight.Normal
            )
            Spacer(modifier = Modifier.height(2.dp))
            Text(
                text = description,
                color = Color.White.copy(alpha = 0.55f),
                fontSize = 12.sp,
                lineHeight = 16.sp
            )
        }

        IconButton(onClick = onRemove) {
            Icon(
                imageVector = Icons.Default.Close,
                contentDescription = stringResource(R.string.delete),
                tint = Color.White.copy(alpha = 0.7f)
            )
        }
    }
}

@Composable
private fun iszBaseLensLabel(camera: CameraInfo): String {
    val prefix = when (camera.lensFacing) {
        android.hardware.camera2.CameraCharacteristics.LENS_FACING_BACK -> stringResource(R.string.rear_camera)
        android.hardware.camera2.CameraCharacteristics.LENS_FACING_FRONT -> stringResource(R.string.front_camera)
        else -> stringResource(R.string.camera)
    }
    val focalLength = if (camera.focalLength35mmEquivalent > 0) {
        stringResource(R.string.settings_isz_lens_focal_length, camera.focalLength35mmEquivalent.roundToInt())
    } else {
        stringResource(R.string.settings_isz_lens_unknown_focal_length)
    }
    return stringResource(R.string.settings_isz_lens_label, prefix, camera.cameraId, focalLength)
}

@Composable
private fun VendorCaptureSettingsPanel(
    currentLensId: String,
    currentLensName: String,
    settings: VendorCaptureSettings,
    onSettingsChange: (VendorCaptureSettings) -> Unit,
    modifier: Modifier = Modifier
) {
    Column(modifier = modifier.fillMaxWidth()) {
        Text(
            text = stringResource(R.string.settings_vendor_capture_title),
            color = Color.White,
            fontSize = 16.sp,
            fontWeight = FontWeight.Normal,
            modifier = Modifier.padding(bottom = 4.dp)
        )
        Text(
            text = stringResource(R.string.settings_vendor_capture_description, currentLensName),
            color = Color(0xFFFFB74D),
            fontSize = 13.sp,
            lineHeight = 18.sp,
            modifier = Modifier.padding(bottom = 12.dp)
        )

        VendorCaptureKey.entries.forEachIndexed { index, key ->
            if (index > 0) {
                HorizontalDivider(
                    color = Color.White.copy(alpha = 0.08f),
                    modifier = Modifier.padding(vertical = 10.dp)
                )
            }
            VendorCaptureKeySettingItem(
                key = key,
                currentLensId = currentLensId,
                settings = settings,
                onSettingsChange = onSettingsChange
            )
        }
    }
}

@Composable
private fun VendorCaptureKeySettingItem(
    key: VendorCaptureKey,
    currentLensId: String,
    settings: VendorCaptureSettings,
    onSettingsChange: (VendorCaptureSettings) -> Unit,
    modifier: Modifier = Modifier
) {
    val enabled = settings.isEnabled(key)
    val currentValue = settings.valueFor(key)
    var valueText by remember(key, currentLensId, currentValue) { mutableStateOf(currentValue.toString()) }
    val parsedValue = valueText.toIntOrNull()
    val isValueValid = parsedValue != null && key.normalizeValue(parsedValue) == parsedValue
    val description = key.requestKeyName
    val valueRangeDescription = when (key.valueType) {
        VendorCaptureValueType.INT -> stringResource(R.string.settings_vendor_capture_int_value)
        VendorCaptureValueType.BYTE -> stringResource(R.string.settings_vendor_capture_byte_value)
    }

    Column(modifier = modifier.fillMaxWidth()) {
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Column(modifier = Modifier.weight(1f)) {
                Text(
                    text = key.displayName(),
                    color = Color.White,
                    fontSize = 15.sp,
                    fontWeight = FontWeight.Normal
                )
                Spacer(modifier = Modifier.height(2.dp))
                Text(
                    text = description,
                    color = Color.White.copy(alpha = 0.6f),
                    fontSize = 12.sp,
                    lineHeight = 17.sp
                )
            }

            Spacer(modifier = Modifier.width(16.dp))

            Switch(
                checked = enabled,
                onCheckedChange = { checked ->
                    val value = parsedValue?.let { key.normalizeValue(it) } ?: key.defaultValue
                    onSettingsChange(settings.withOverride(key, checked, value))
                },
                colors = SwitchDefaults.colors(
                    checkedThumbColor = Color.White,
                    checkedTrackColor = Color(0xFFFF6B35),
                    uncheckedThumbColor = Color.White.copy(alpha = 0.6f),
                    uncheckedTrackColor = Color.White.copy(alpha = 0.2f)
                )
            )
        }

        if (enabled) {
            Spacer(modifier = Modifier.height(10.dp))
            androidx.compose.material3.OutlinedTextField(
                value = valueText,
                onValueChange = { newValue ->
                    valueText = newValue
                    val updatedValue = newValue.toIntOrNull()
                    if (updatedValue != null && key.normalizeValue(updatedValue) == updatedValue) {
                        onSettingsChange(settings.withValue(key, updatedValue))
                    }
                },
                modifier = Modifier.fillMaxWidth(),
                label = { Text(stringResource(R.string.settings_vendor_capture_value_label)) },
                supportingText = {
                    Text(
                        text = if (isValueValid) {
                            valueRangeDescription
                        } else {
                            stringResource(R.string.settings_vendor_capture_invalid_value)
                        }
                    )
                },
                isError = !isValueValid,
                singleLine = true,
                keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Number),
                colors = androidx.compose.material3.OutlinedTextFieldDefaults.colors(
                    focusedTextColor = Color.White,
                    unfocusedTextColor = Color.White,
                    focusedBorderColor = Color(0xFFE5A324),
                    unfocusedBorderColor = Color.White.copy(alpha = 0.2f),
                    focusedLabelColor = Color(0xFFE5A324),
                    unfocusedLabelColor = Color.White.copy(alpha = 0.6f),
                    focusedSupportingTextColor = Color.White.copy(alpha = 0.55f),
                    unfocusedSupportingTextColor = Color.White.copy(alpha = 0.55f),
                    errorTextColor = Color.White,
                    errorSupportingTextColor = Color(0xFFFF8A80),
                    errorBorderColor = Color(0xFFFF8A80),
                    cursorColor = Color(0xFFE5A324)
                )
            )
        }
    }
}

@Composable
private fun VendorCaptureKey.displayName(): String {
    return when (this) {
        VendorCaptureKey.INSENSOR_ZOOM -> stringResource(R.string.settings_vendor_capture_insensor_zoom)
        VendorCaptureKey.QCOM_SENSOR_CURRENT_MODE -> stringResource(R.string.settings_vendor_capture_qcom_sensor_mode)
        VendorCaptureKey.VIVO_FORCE_SENSOR_MODE -> stringResource(R.string.settings_vendor_capture_vivo_sensor_mode)
        VendorCaptureKey.OPLUS_AGINGTEST_MODE_SELECT -> stringResource(R.string.settings_vendor_capture_oplus_agingtest_mode)
    }
}

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
    var showAddDialog by remember { mutableStateOf(false) }
    var inputValue by remember { mutableStateOf("") }
    val customFocalLengths by viewModel.customFocalLengths.collectAsState(initial = emptyList())
    val hiddenFocalLengths by viewModel.hiddenFocalLengths.collectAsState(initial = emptyList())
    val cameraState by viewModel.state.collectAsState()

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

        val availableFLs = remember(cameraState.availableCameras) {
            viewModel.getAvailableFocalLengths()
        }

        FlowRow(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(8.dp),
            verticalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            // None chip
            val noneSelected = currentFocalLength == 0f
            Box(
                modifier = Modifier
                    .width(64.dp)
                    .height(40.dp)
                    .clip(RoundedCornerShape(8.dp))
                    .background(if (noneSelected) Color(0xFFFF6B35) else Color.White.copy(alpha = 0.1f))
                    .clickable { onFocalLengthSelected(0f) },
                contentAlignment = Alignment.Center
            ) {
                Text(
                    text = stringResource(R.string.none),
                    color = if (noneSelected) Color.White else Color.White.copy(alpha = 0.7f),
                    fontSize = 11.sp,
                    fontWeight = if (noneSelected) FontWeight.Bold else FontWeight.Normal,
                    textAlign = TextAlign.Center
                )
            }

            // Device focal length chips
            availableFLs.forEach { fl ->
                FocalLengthChip(
                    focalLength = fl,
                    isCustom = false,
                    isSelected = abs(currentFocalLength - fl) < 0.5f,
                    isHidden = hiddenFocalLengths.any { abs(it - fl) < 0.5f },
                    onSelect = { onFocalLengthSelected(fl) },
                    onToggleVisibility = { viewModel.toggleFocalLengthVisibility(fl) }
                )
            }

            // Custom focal length chips
            customFocalLengths.forEach { fl ->
                FocalLengthChip(
                    focalLength = fl,
                    isCustom = true,
                    isSelected = CustomFocalLengthValue.matches(currentFocalLength, fl),
                    isHidden = false,
                    onSelect = { onFocalLengthSelected(fl) },
                    onToggleVisibility = { },
                    onRemove = { viewModel.removeCustomFocalLength(fl) }
                )
            }

            // Add button (shown when total visible < 8)
            val visibleFLCount = availableFLs.count { fl ->
                hiddenFocalLengths.none { abs(it - fl) < 0.5f }
            } + customFocalLengths.size
            if (visibleFLCount < 8) {
                Box(
                    modifier = Modifier
                        .width(40.dp)
                        .height(40.dp)
                        .clip(RoundedCornerShape(8.dp))
                        .background(Color.White.copy(alpha = 0.08f))
                        .clickable { showAddDialog = true },
                    contentAlignment = Alignment.Center
                ) {
                    Icon(
                        imageVector = Icons.Default.Add,
                        contentDescription = stringResource(R.string.settings_custom_focal_length_add),
                        tint = Color.White.copy(alpha = 0.7f),
                        modifier = Modifier.size(20.dp)
                    )
                }
            }
        }
    }

    if (showAddDialog) {
        AlertDialog(
            onDismissRequest = { showAddDialog = false; inputValue = "" },
            title = { Text(stringResource(R.string.settings_custom_focal_length_add)) },
            text = {
                androidx.compose.material3.OutlinedTextField(
                    value = inputValue,
                    onValueChange = {
                        inputValue = it.filter { c -> c.isDigit() || c == '.' || c == 'x' || c == 'X' }
                    },
                    placeholder = { Text(stringResource(R.string.settings_custom_focal_length_hint)) },
                    singleLine = true,
                    keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Text)
                )
            },
            confirmButton = {
                TextButton(onClick = {
                    val fl = CustomFocalLengthValue.parseInput(inputValue)
                    if (fl != null && fl > 0f) {
                        viewModel.addCustomFocalLength(fl)
                    } else if (fl != null && CustomFocalLengthValue.isZoomRatio(fl)) {
                        viewModel.addCustomFocalLength(fl)
                    }
                    showAddDialog = false
                    inputValue = ""
                }) { Text("OK") }
            },
            dismissButton = {
                TextButton(onClick = { showAddDialog = false; inputValue = "" }) {
                    Text(stringResource(android.R.string.cancel))
                }
            }
        )
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
                imageVector = AppIcons.FilterNone,
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

@Composable
private fun FocalLengthChip(
    focalLength: Float,
    isCustom: Boolean,
    isSelected: Boolean,
    isHidden: Boolean,
    onSelect: () -> Unit,
    onToggleVisibility: () -> Unit,
    onRemove: (() -> Unit)? = null,
    modifier: Modifier = Modifier
) {
    Box(
        modifier = modifier
            .height(40.dp)
            .clip(RoundedCornerShape(8.dp))
            .background(
                if (isSelected) Color(0xFFFF6B35)
                else if (isHidden) Color.White.copy(alpha = 0.05f)
                else if (isCustom) Color(0xFF2A3A5C)
                else Color.White.copy(alpha = 0.1f)
            )
            .border(
                width = 1.dp,
                color = if (isHidden && !isSelected) Color.White.copy(alpha = 0.1f) else Color.Transparent,
                shape = RoundedCornerShape(8.dp)
            )
            .clickable {
                if (isHidden) {
                    onToggleVisibility()
                }
                onSelect()
            },
        contentAlignment = Alignment.Center
    ) {
        Row(
            modifier = Modifier.padding(horizontal = 10.dp),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(6.dp)
        ) {
            Text(
                text = "${CustomFocalLengthValue.displayText(focalLength)}${if (isCustom) "*" else ""}",
                color = if (isSelected) Color.White else if (isHidden) Color.White.copy(alpha = 0.3f) else Color.White.copy(alpha = 0.7f),
                fontSize = 11.sp,
                fontWeight = if (isSelected) FontWeight.Bold else FontWeight.Normal,
                textAlign = TextAlign.Center
            )
            if (!isCustom) {
                Icon(
                    imageVector = if (isHidden) AppIcons.VisibilityOff else AppIcons.Visibility,
                    contentDescription = null,
                    tint = if (isSelected) Color.White else if (isHidden) Color.White.copy(alpha = 0.3f) else Color.White.copy(alpha = 0.5f),
                    modifier = Modifier
                        .size(16.dp)
                        .clickable { onToggleVisibility() }
                )
            }
            if (onRemove != null) {
                Icon(
                    imageVector = Icons.Default.Close,
                    contentDescription = null,
                    tint = if (isSelected) Color.White else Color.White.copy(alpha = 0.5f),
                    modifier = Modifier
                        .size(16.dp)
                        .clickable { onRemove() }
                )
            }
        }
    }
}
