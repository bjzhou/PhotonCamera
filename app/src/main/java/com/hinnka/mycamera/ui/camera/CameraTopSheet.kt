package com.hinnka.mycamera.ui.camera

import android.media.AudioDeviceInfo
import android.os.Build
import androidx.compose.animation.*
import androidx.compose.foundation.ScrollState
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection
import androidx.compose.ui.input.nestedscroll.NestedScrollSource
import androidx.compose.ui.input.nestedscroll.nestedScroll
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.Velocity
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.hinnka.mycamera.R
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.camera.MeteringMode
import com.hinnka.mycamera.raw.DcpInfo
import com.hinnka.mycamera.raw.HncsFilmCurveMode
import com.hinnka.mycamera.raw.HncsProfileInfo
import com.hinnka.mycamera.raw.RawRenderingEngine
import com.hinnka.mycamera.raw.RawToneMappingParameters
import com.hinnka.mycamera.raw.SpectralFilmSelection
import com.hinnka.mycamera.ui.components.RawDcpLensOption
import com.hinnka.mycamera.ui.components.RawRenderingEngineSettingsPanel
import com.hinnka.mycamera.video.*
import com.hinnka.mycamera.video.VideoCodec
import com.hinnka.mycamera.ui.icons.AppIcons

private enum class VideoSettingPanel {
    ASPECT_RATIO,
    LOG_PROFILE,
    BITRATE,
    CODEC,
    MICROPHONE
}

private val CameraTopSheetContentTopPadding = 32.dp

/**
 * Keeps scroll-boundary drag and fling remainders inside the RAW sheet content.
 *
 * ModalBottomSheet otherwise settles its own anchors with those remainders. When the sheet is
 * already expanded, repeated settling can still produce a visible bounce on some devices. The
 * connection only consumes forward scrolling at the content bottom, so dragging down from the
 * content top and dragging the sheet handle retain their standard collapse/dismiss behavior.
 */
private class RenderingEngineSheetScrollBoundaryConnection(
    private val scrollState: ScrollState
) : NestedScrollConnection {
    override fun onPostScroll(
        consumed: Offset,
        available: Offset,
        source: NestedScrollSource
    ): Offset {
        return if (
            source == NestedScrollSource.UserInput &&
            available.y < 0f &&
            !scrollState.canScrollForward
        ) {
            Offset(x = 0f, y = available.y)
        } else {
            Offset.Zero
        }
    }

    override suspend fun onPostFling(consumed: Velocity, available: Velocity): Velocity {
        return if (available.y < 0f && !scrollState.canScrollForward) {
            Velocity(x = 0f, y = available.y)
        } else {
            Velocity.Zero
        }
    }
}

@OptIn(ExperimentalLayoutApi::class, ExperimentalMaterial3Api::class)
@Composable
fun CameraTopSheet(
    visible: Boolean,
    captureMode: CaptureMode,
    aspectRatio: AspectRatio,
    topSheetAspectRatios: List<AspectRatio>,
    onAspectRatioChange: (AspectRatio) -> Unit,
    videoAspectRatio: VideoAspectRatio,
    onVideoAspectRatioChange: (VideoAspectRatio) -> Unit,
    videoLogProfile: VideoLogProfile,
    onVideoLogProfileChange: (VideoLogProfile) -> Unit,
    videoBitrate: VideoBitratePreset,
    onVideoBitrateChange: (VideoBitratePreset) -> Unit,
    videoCodec: VideoCodec,
    onVideoCodecChange: (VideoCodec) -> Unit,
    videoAudioInputId: String,
    videoAudioInputOptions: List<VideoAudioInputOption>,
    onVideoAudioInputChange: (String) -> Unit,
    useRaw: Boolean,
    isRawSupported: Boolean,
    rawDcpId: String?,
    rawDcpIdsByLens: Map<String, String?> = emptyMap(),
    rawDcpLensOptions: List<RawDcpLensOption> = emptyList(),
    availableDcps: List<DcpInfo>,
    rawHncsProfileId: String?,
    rawHncsFilmCurveMode: HncsFilmCurveMode,
    availableHncsProfiles: List<HncsProfileInfo>,
    rawRenderingEngine: RawRenderingEngine,
    rawToneMappingParameters: RawToneMappingParameters,
    rawSpectralFilmSelection: SpectralFilmSelection?,
    rawSpectralFilmPrint: String?,
    ultraHdrEnabled: Boolean,
    onUltraHdrToggle: (Boolean) -> Unit,
    photoPreviewStabilizationEnabled: Boolean,
    photoPreviewStabilizationAvailable: Boolean,
    onPhotoPreviewStabilizationChange: (Boolean) -> Unit,
    onRawDcpChange: (String?) -> Unit,
    onRawDcpIdsByLensChange: ((Map<String, String?>) -> Unit)? = null,
    onRawHncsProfileChange: (String?) -> Unit,
    onRawHncsFilmCurveModeChange: (HncsFilmCurveMode) -> Unit,
    onImportRawDcp: () -> Unit,
    onDeleteRawDcp: (DcpInfo) -> Unit,
    onRawColorEngineChange: (RawRenderingEngine) -> Unit,
    onRawToneMappingParametersChange: (RawToneMappingParameters) -> Unit,
    onRawSpectralFilmSelectionChange: (SpectralFilmSelection?) -> Unit,
    onRawSpectralFilmPrintChange: (String?) -> Unit,
    meteringMode: MeteringMode,
    onMeteringModeChange: (MeteringMode) -> Unit,
    onFilterManageClick: () -> Unit,
    onFrameManageClick: () -> Unit,
    onPresetManageClick: () -> Unit,
    onToolboxClick: () -> Unit,
    onMoreSettingsClick: () -> Unit,
    useJpgMax: Boolean,
    onJpgMaxToggle: (Boolean) -> Unit,
    useMultipleExposure: Boolean,
    onMultipleExposureToggle: (Boolean) -> Unit,
    contentTopPadding: Dp = CameraTopSheetContentTopPadding,
    modifier: Modifier = Modifier
) {
    var expandedVideoPanel by rememberSaveable { mutableStateOf<VideoSettingPanel?>(null) }
    var showRenderingEngineSheet by rememberSaveable { mutableStateOf(false) }
    var showContentManagementOptions by rememberSaveable { mutableStateOf(false) }
    fun handleContentManagementAction(action: () -> Unit) {
        showContentManagementOptions = false
        action()
    }

    LaunchedEffect(visible, captureMode) {
        showContentManagementOptions = false
    }

    LaunchedEffect(useRaw) {
        if (!useRaw) {
            showRenderingEngineSheet = false
        }
    }

    AnimatedVisibility(
        visible = visible,
        enter = slideInVertically(initialOffsetY = { -it }) + fadeIn(),
        exit = slideOutVertically(targetOffsetY = { -it }) + fadeOut(),
        modifier = modifier
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .aspectRatio(1f)
                .verticalScroll(rememberScrollState())
                .clip(RoundedCornerShape(bottomStart = 24.dp, bottomEnd = 24.dp))
                .background(Color.Black.copy(alpha = 0.8f))
                .padding(top = contentTopPadding, bottom = 0.dp, start = 24.dp, end = 24.dp)
                .autoRotate()
        ) {
            if (captureMode == CaptureMode.PHOTO) {
                val isProfessionalMode = useRaw && isRawSupported
                SectionLabel(title = stringResource(R.string.aspect_ratio))
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    AspectRatio.sanitizeTopSheetRatios(topSheetAspectRatios).forEach { ratio ->
                        val isSelected = aspectRatio == ratio
                        Box(
                            modifier = Modifier
                                .weight(1f)
                                .height(40.dp)
                                .clip(RoundedCornerShape(8.dp))
                                .background(
                                    if (isSelected) Color(0xFFFF6B35) else Color.White.copy(
                                        alpha = 0.12f
                                    )
                                )
                                .clickable { onAspectRatioChange(ratio) },
                            contentAlignment = Alignment.Center
                        ) {
                            Text(
                                text = ratio.getDisplayName(),
                                color = if (isSelected) Color.Black else Color.White,
                                fontSize = 11.sp,
                                fontWeight = if (isSelected) FontWeight.Bold else FontWeight.Medium
                            )
                        }
                    }
                }

                Spacer(modifier = Modifier.height(16.dp))

                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(10.dp)
                ) {
                    if (isProfessionalMode) {
                        QuickSettingButton2(
                            title = stringResource(R.string.settings_raw_color_engine),
                            checked = true,
                            onClick = { showRenderingEngineSheet = true },
                            modifier = Modifier.weight(1f)
                        )
                        QuickSettingToggle(
                            title = stringResource(R.string.settings_ultra_hdr_gain_map),
                            checked = ultraHdrEnabled,
                            onCheckedChange = onUltraHdrToggle,
                            modifier = Modifier.weight(1f)
                        )
                    } else {
                        QuickSettingToggle(
                            title = stringResource(R.string.settings_use_jpg_max),
                            checked = useJpgMax,
                            onCheckedChange = onJpgMaxToggle,
                            modifier = Modifier.weight(1f)
                        )
                        QuickSettingToggle(
                            title = stringResource(R.string.settings_use_multiple_exposure),
                            checked = useMultipleExposure,
                            onCheckedChange = onMultipleExposureToggle,
                            modifier = Modifier.weight(1f)
                        )
                    }
                    QuickSettingToggle(
                        title = stringResource(R.string.camera_preview_stabilization),
                        checked = photoPreviewStabilizationEnabled,
                        onCheckedChange = onPhotoPreviewStabilizationChange,
                        enabled = photoPreviewStabilizationAvailable,
                        modifier = Modifier.weight(1f)
                    )
                }

                Spacer(modifier = Modifier.height(12.dp))

                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(10.dp)
                ) {
                    MeteringModeQuickSetting(
                        meteringMode = meteringMode,
                        onMeteringModeChange = onMeteringModeChange,
                        modifier = Modifier.weight(1f)
                    )

                    ToolboxQuickSetting(
                        onToolboxClick = onToolboxClick,
                        modifier = Modifier.weight(1f)
                    )

                    ContentManagementQuickSetting(
                        onClick = { showContentManagementOptions = !showContentManagementOptions },
                        modifier = Modifier.weight(1f)
                    )

                }

                ContentManagementOptionsPanel(
                    visible = showContentManagementOptions,
                    showPresetManagement = isProfessionalMode,
                    onFilterManageClick = {
                        handleContentManagementAction(onFilterManageClick)
                    },
                    onFrameManageClick = {
                        handleContentManagementAction(onFrameManageClick)
                    },
                    onPresetManageClick = {
                        handleContentManagementAction(onPresetManageClick)
                    }
                )
            } else {
                SectionLabel(title = stringResource(R.string.video_aspect_chip))
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(10.dp)
                ) {
                    VideoAspectRatio.entries.forEach { ratio ->
                        val isSelected = videoAspectRatio == ratio
                        Box(
                            modifier = Modifier
                                .weight(1f)
                                .height(40.dp)
                                .clip(RoundedCornerShape(8.dp))
                                .background(
                                    if (isSelected) Color(0xFFFFD700) else Color.White.copy(
                                        alpha = 0.12f
                                    )
                                )
                                .clickable { onVideoAspectRatioChange(ratio) },
                            contentAlignment = Alignment.Center
                        ) {
                            Text(
                                text = videoAspectRatioLabel(ratio),
                                color = if (isSelected) Color.Black else Color.White,
                                fontSize = 13.sp,
                                fontWeight = if (isSelected) FontWeight.Bold else FontWeight.Medium
                            )
                        }
                    }
                }

                Spacer(modifier = Modifier.height(16.dp))

                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(8.dp),
                ) {
                    VideoSettingTile(
                        title = stringResource(R.string.video_log_chip),
                        summary = videoLogProfileLabel(videoLogProfile),
                        expanded = expandedVideoPanel == VideoSettingPanel.LOG_PROFILE,
                        onClick = {
                            expandedVideoPanel = if (expandedVideoPanel == VideoSettingPanel.LOG_PROFILE) null else VideoSettingPanel.LOG_PROFILE
                        },
                        modifier = Modifier.weight(1f)
                    )
                    VideoSettingTile(
                        title = stringResource(R.string.video_bitrate_chip),
                        summary = "${videoBitrate.bitrateMbps}M",
                        expanded = expandedVideoPanel == VideoSettingPanel.BITRATE,
                        onClick = {
                            expandedVideoPanel = if (expandedVideoPanel == VideoSettingPanel.BITRATE) null else VideoSettingPanel.BITRATE
                        },
                        modifier = Modifier.weight(1f)
                    )
                }
                Spacer(Modifier.height(8.dp))
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(8.dp),
                ) {
                    VideoSettingTile(
                        title = stringResource(R.string.video_codec_chip),
                        summary = videoCodec.displayName,
                        expanded = expandedVideoPanel == VideoSettingPanel.CODEC,
                        onClick = {
                            expandedVideoPanel = if (expandedVideoPanel == VideoSettingPanel.CODEC) null else VideoSettingPanel.CODEC
                        },
                        modifier = Modifier.weight(1f)
                    )
                    VideoSettingTile(
                        title = stringResource(R.string.video_microphone_title),
                        summary = selectedVideoAudioInputLabel(
                            selectedAudioInputId = videoAudioInputId,
                            options = videoAudioInputOptions
                        ),
                        expanded = expandedVideoPanel == VideoSettingPanel.MICROPHONE,
                        onClick = {
                            expandedVideoPanel = if (expandedVideoPanel == VideoSettingPanel.MICROPHONE) null else VideoSettingPanel.MICROPHONE
                        },
                        modifier = Modifier.weight(1f)
                    )
                }

                AnimatedVisibility(
                    visible = expandedVideoPanel != null,
                    enter = expandVertically() + fadeIn(),
                    exit = shrinkVertically() + fadeOut()
                ) {
                    Column {
                        Spacer(modifier = Modifier.height(12.dp))
                        VideoSettingExpandedPanel {
                            when (expandedVideoPanel) {
                                VideoSettingPanel.LOG_PROFILE -> {
                                    FlowRow(
                                        modifier = Modifier.fillMaxWidth(),
                                        verticalArrangement = Arrangement.spacedBy(8.dp),
                                        horizontalArrangement = Arrangement.spacedBy(8.dp)
                                    ) {
                                        VideoLogProfile.entries.forEach { profile ->
                                            val isSelected = videoLogProfile == profile
                                            VideoOptionChip(
                                                title = videoLogProfileLabel(profile),
                                                selected = isSelected,
                                                onClick = { onVideoLogProfileChange(profile) }
                                            )
                                        }
                                    }
                                }

                                VideoSettingPanel.BITRATE -> {
                                    FlowRow(
                                        modifier = Modifier.fillMaxWidth(),
                                        verticalArrangement = Arrangement.spacedBy(8.dp),
                                        horizontalArrangement = Arrangement.spacedBy(8.dp)
                                    ) {
                                        VideoBitratePreset.entries.forEach { bitrate ->
                                            VideoOptionChip(
                                                title = "${bitrate.bitrateMbps}M",
                                                selected = videoBitrate == bitrate,
                                                onClick = { onVideoBitrateChange(bitrate) }
                                            )
                                        }
                                    }
                                }

                                VideoSettingPanel.CODEC -> {
                                    FlowRow(
                                        modifier = Modifier.fillMaxWidth(),
                                        verticalArrangement = Arrangement.spacedBy(8.dp),
                                        horizontalArrangement = Arrangement.spacedBy(8.dp)
                                    ) {
                                        VideoCodec.entries.forEach { codec ->
                                            VideoOptionChip(
                                                title = codec.displayName,
                                                selected = videoCodec == codec,
                                                onClick = { onVideoCodecChange(codec) }
                                            )
                                        }
                                    }
                                }

                                VideoSettingPanel.MICROPHONE -> {
                                    FlowRow(
                                        modifier = Modifier.fillMaxWidth(),
                                        verticalArrangement = Arrangement.spacedBy(8.dp),
                                        horizontalArrangement = Arrangement.spacedBy(8.dp)
                                    ) {
                                        VideoOptionChip(
                                            title = stringResource(R.string.video_microphone_auto),
                                            selected = videoAudioInputId == VIDEO_AUDIO_INPUT_AUTO,
                                            onClick = { onVideoAudioInputChange(VIDEO_AUDIO_INPUT_AUTO) }
                                        )
                                        videoAudioInputOptions.forEach { option ->
                                            VideoOptionChip(
                                                title = videoAudioInputLabel(option),
                                                selected = videoAudioInputId == option.id,
                                                onClick = { onVideoAudioInputChange(option.id) }
                                            )
                                        }
                                    }
                                }

                                else -> Unit
                            }
                        }
                    }
                }
            }

            if (captureMode == CaptureMode.VIDEO) {
                Spacer(modifier = Modifier.height(16.dp))

                ContentManagementQuickSetting(
                    onClick = { showContentManagementOptions = !showContentManagementOptions },
                    modifier = Modifier.fillMaxWidth()
                )

                ContentManagementOptionsPanel(
                    visible = showContentManagementOptions,
                    showPresetManagement = false,
                    onFilterManageClick = {
                        handleContentManagementAction(onFilterManageClick)
                    },
                    onFrameManageClick = {
                        handleContentManagementAction(onFrameManageClick)
                    },
                    onPresetManageClick = {
                        handleContentManagementAction(onPresetManageClick)
                    }
                )
            }

            Spacer(Modifier.weight(1f))

            // More Settings Button
            Box(
                modifier = Modifier.fillMaxWidth().padding(vertical = 16.dp),
                contentAlignment = Alignment.Center
            ) {
                Row(
                    modifier = Modifier
                        .clickable(onClick = onMoreSettingsClick)
                        .clip(RoundedCornerShape(8.dp))
                        .background(color = Color.White.copy(alpha = 0.15f))
                        .padding(16.dp, 8.dp),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Box(
                        modifier = Modifier
                            .size(32.dp)
                            .clip(RoundedCornerShape(8.dp))
                            .background(Color.White.copy(alpha = 0.1f)),
                        contentAlignment = Alignment.Center
                    ) {
                        Icon(
                            imageVector = Icons.Default.Settings,
                            contentDescription = null,
                            tint = Color.White,
                            modifier = Modifier.size(18.dp)
                        )
                    }
                    Spacer(modifier = Modifier.width(12.dp))
                    Text(
                        text = stringResource(R.string.settings_title),
                        color = Color.White,
                        fontSize = 15.sp,
                        fontWeight = FontWeight.Medium,
                        modifier = Modifier.weight(1f)
                    )
                    Icon(
                        imageVector = AppIcons.ChevronRight,
                        contentDescription = null,
                        tint = Color.White.copy(alpha = 0.3f),
                        modifier = Modifier.size(20.dp)
                    )
                }
            }

            Spacer(Modifier.weight(1f))
        }
    }

    if (showRenderingEngineSheet) {
        val renderingEngineScrollState = rememberScrollState()
        val renderingEngineScrollBoundaryConnection = remember(renderingEngineScrollState) {
            RenderingEngineSheetScrollBoundaryConnection(renderingEngineScrollState)
        }
        ModalBottomSheet(
            onDismissRequest = { showRenderingEngineSheet = false },
            containerColor = Color(0xFF1E1E1E),
            dragHandle = { BottomSheetDefaults.DragHandle(color = Color.White.copy(alpha = 0.2f)) }
        ) {
            Column(
                modifier = Modifier
                    .fillMaxWidth()
                    .nestedScroll(renderingEngineScrollBoundaryConnection)
                    .verticalScroll(renderingEngineScrollState)
                    .navigationBarsPadding()
                    .padding(horizontal = 16.dp, vertical = 8.dp)
            ) {
                Text(
                    text = stringResource(R.string.settings_raw_color_engine),
                    color = Color.White,
                    fontSize = 20.sp,
                    fontWeight = FontWeight.Bold
                )
                Spacer(modifier = Modifier.height(12.dp))
                RawRenderingEngineSettingsPanel(
                    selectedDcpId = rawDcpId,
                    rawDcpIdsByLens = rawDcpIdsByLens,
                    dcpLensOptions = rawDcpLensOptions,
                    availableDcps = availableDcps,
                    rawRenderingEngine = rawRenderingEngine,
                    rawToneMappingParameters = rawToneMappingParameters,
                    spectralFilmSelection = rawSpectralFilmSelection,
                    spectralFilmPrint = rawSpectralFilmPrint,
                    onSelectDcp = onRawDcpChange,
                    onRawDcpIdsByLensChange = onRawDcpIdsByLensChange,
                    onImportDcp = onImportRawDcp,
                    onDeleteDcp = onDeleteRawDcp,
                    selectedHncsProfileId = rawHncsProfileId,
                    availableHncsProfiles = availableHncsProfiles,
                    onSelectHncsProfile = onRawHncsProfileChange,
                    hncsFilmCurveMode = rawHncsFilmCurveMode,
                    onHncsFilmCurveModeChange = onRawHncsFilmCurveModeChange,
                    onRawColorEngineChange = onRawColorEngineChange,
                    onRawToneMappingParametersChange = onRawToneMappingParametersChange,
                    onSpectralFilmSelectionChange = onRawSpectralFilmSelectionChange,
                    onSpectralFilmPrintChange = onRawSpectralFilmPrintChange,
                    inlineEngineOptions = true,
                    showToneMappingControls = true,
                )
            }
        }
    }
}

@Composable
private fun VideoSettingTile(
    title: String,
    summary: String,
    expanded: Boolean,
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
) {
    Column(
        modifier = modifier
            .height(40.dp)
            .clip(RoundedCornerShape(8.dp))
            .background(
                if (expanded) Color(0xFFFFD700) else Color.White.copy(alpha = 0.14f)
            )
            .clickable(onClick = onClick)
            .padding(horizontal = 8.dp, vertical = 4.dp),
        verticalArrangement = Arrangement.SpaceBetween
    ) {
        Text(
            text = title,
            color = if (expanded) Color.Black.copy(alpha = 0.75f) else Color.White.copy(alpha = 0.72f),
            fontSize = 9.sp,
            lineHeight = 12.sp,
            fontWeight = FontWeight.Medium
        )
        Row(verticalAlignment = Alignment.Bottom) {
            Text(
                text = summary,
                color = if (expanded) Color.Black else Color.White,
                fontSize = 12.sp,
                lineHeight = 15.sp,
                fontWeight = FontWeight.Bold,
                modifier = Modifier.weight(1f)
            )
            Icon(
                imageVector = if (expanded) AppIcons.ExpandLess else AppIcons.OpenInFull,
                contentDescription = null,
                tint = if (expanded) Color.Black else Color.White.copy(alpha = 0.8f),
                modifier = Modifier.size(12.dp)
            )
        }
    }
}

@Composable
private fun VideoSettingExpandedPanel(
    content: @Composable ColumnScope.() -> Unit
) {
    Column(
        modifier = Modifier
            .fillMaxWidth()
            .clip(RoundedCornerShape(14.dp))
            .background(Color.White.copy(alpha = 0.08f))
            .padding(14.dp),
        content = content
    )
}

@Composable
private fun VideoOptionChip(
    title: String,
    selected: Boolean,
    onClick: () -> Unit
) {
    Box(
        modifier = Modifier
            .height(36.dp)
            .clip(RoundedCornerShape(8.dp))
            .background(
                if (selected) Color(0xFFFFD700) else Color.White.copy(alpha = 0.12f)
            )
            .clickable(onClick = onClick)
            .padding(horizontal = 12.dp),
        contentAlignment = Alignment.Center
    ) {
        Text(
            text = title,
            color = if (selected) Color.Black else Color.White,
            fontSize = 12.sp,
            fontWeight = if (selected) FontWeight.Bold else FontWeight.Medium
        )
    }
}

@Composable
private fun selectedVideoAudioInputLabel(
    selectedAudioInputId: String,
    options: List<VideoAudioInputOption>
): String {
    if (selectedAudioInputId == VIDEO_AUDIO_INPUT_AUTO) {
        return stringResource(R.string.video_microphone_auto)
    }
    val option = options.firstOrNull { it.id == selectedAudioInputId }
    return option?.let { videoAudioInputLabel(it) } ?: stringResource(R.string.video_microphone_disconnected)
}

@Composable
private fun videoAudioInputLabel(option: VideoAudioInputOption): String {
    val baseLabel = when (option.type) {
        AudioDeviceInfo.TYPE_BUILTIN_MIC -> stringResource(R.string.video_microphone_builtin)
        AudioDeviceInfo.TYPE_WIRED_HEADSET -> stringResource(R.string.video_microphone_wired)
        AudioDeviceInfo.TYPE_BLUETOOTH_SCO -> stringResource(R.string.video_microphone_bluetooth)
        AudioDeviceInfo.TYPE_BLE_HEADSET -> stringResource(R.string.video_microphone_ble)
        AudioDeviceInfo.TYPE_USB_HEADSET,
        AudioDeviceInfo.TYPE_USB_DEVICE -> stringResource(R.string.video_microphone_usb)
        AudioDeviceInfo.TYPE_HDMI -> stringResource(R.string.video_microphone_hdmi)
        AudioDeviceInfo.TYPE_LINE_ANALOG,
        AudioDeviceInfo.TYPE_LINE_DIGITAL -> stringResource(R.string.video_microphone_line_in)
        else -> stringResource(R.string.video_microphone_external)
    }
    val customName = option.productName
        ?.takeUnless { it.equals(Build.MODEL, ignoreCase = true) }
        ?.takeUnless { it.equals(Build.DEVICE, ignoreCase = true) }
        ?.takeUnless { it.equals(Build.PRODUCT, ignoreCase = true) }
    val suffix = when {
        option.type == AudioDeviceInfo.TYPE_BUILTIN_MIC && !option.address.isNullOrBlank() -> option.address
        customName != null && customName != baseLabel -> customName
        else -> null
    }
    return if (suffix != null) "$baseLabel (${suffix})" else baseLabel
}

@Composable
private fun videoAspectRatioLabel(aspectRatio: VideoAspectRatio): String {
    return when (aspectRatio) {
        VideoAspectRatio.RATIO_16_9 -> stringResource(R.string.video_aspect_16_9)
        VideoAspectRatio.RATIO_21_9 -> stringResource(R.string.video_aspect_21_9)
        VideoAspectRatio.OPEN_GATE -> stringResource(R.string.video_aspect_open_gate)
    }
}

@Composable
private fun videoLogProfileLabel(profile: VideoLogProfile): String {
    return when (profile) {
        VideoLogProfile.OFF -> stringResource(R.string.video_log_off)
        else -> profile.displayName
    }
}

@Composable
private fun SectionLabel(title: String) {
    Text(
        text = title,
        color = Color.White.copy(alpha = 0.6f),
        fontSize = 12.sp,
        fontWeight = FontWeight.Medium,
        modifier = Modifier.padding(bottom = 12.dp)
    )
}

@Composable
private fun MeteringModeQuickSetting(
    meteringMode: MeteringMode,
    onMeteringModeChange: (MeteringMode) -> Unit,
    modifier: Modifier = Modifier
) {
    val meteringLabel = when (meteringMode) {
        MeteringMode.SPOT -> stringResource(R.string.metering_spot)
        MeteringMode.CENTER_WEIGHTED -> stringResource(R.string.metering_center_weighted)
        MeteringMode.SYSTEM_DEFAULT -> stringResource(R.string.metering_system_default)
        MeteringMode.AVERAGE -> stringResource(R.string.metering_average)
        MeteringMode.HIGHLIGHT_PRIORITY -> stringResource(R.string.metering_highlight_priority)
    }
    QuickSettingValue(
        title = stringResource(R.string.metering_mode),
        value = meteringLabel,
        onClick = {
            val next = when (meteringMode) {
                MeteringMode.SPOT -> MeteringMode.SYSTEM_DEFAULT
                MeteringMode.SYSTEM_DEFAULT -> MeteringMode.CENTER_WEIGHTED
                MeteringMode.CENTER_WEIGHTED -> MeteringMode.AVERAGE
                MeteringMode.AVERAGE -> MeteringMode.HIGHLIGHT_PRIORITY
                MeteringMode.HIGHLIGHT_PRIORITY -> MeteringMode.SPOT
            }
            onMeteringModeChange(next)
        },
        modifier = modifier
    )
}

@Composable
private fun ToolboxQuickSetting(
    onToolboxClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    QuickSettingButton(
        title = stringResource(R.string.toolbox_title),
        icon = AppIcons.Palette,
        onClick = onToolboxClick,
        modifier = modifier
    )
}

@Composable
private fun ContentManagementQuickSetting(
    onClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    QuickSettingButton(
        title = stringResource(R.string.settings_section_management),
        icon = AppIcons.Tune,
        onClick = onClick,
        modifier = modifier
    )
}

@Composable
private fun ContentManagementOptionsPanel(
    visible: Boolean,
    showPresetManagement: Boolean,
    onFilterManageClick: () -> Unit,
    onFrameManageClick: () -> Unit,
    onPresetManageClick: () -> Unit
) {
    AnimatedVisibility(
        visible = visible,
        enter = expandVertically() + fadeIn(),
        exit = shrinkVertically() + fadeOut()
    ) {
        Column {
            Spacer(modifier = Modifier.height(12.dp))
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(10.dp)
            ) {
                QuickSettingButton(
                    title = stringResource(R.string.settings_filter_management),
                    icon = AppIcons.AutoAwesome,
                    onClick = onFilterManageClick,
                    modifier = Modifier.weight(1f)
                )
                QuickSettingButton(
                    title = stringResource(R.string.settings_frame_management),
                    icon = AppIcons.BorderBottom,
                    onClick = onFrameManageClick,
                    modifier = Modifier.weight(1f)
                )
                if (showPresetManagement) {
                    QuickSettingButton(
                        title = stringResource(R.string.settings_preset_management),
                        icon = AppIcons.Bookmark,
                        onClick = onPresetManageClick,
                        modifier = Modifier.weight(1f)
                    )
                }
            }
        }
    }
}

@Composable
fun QuickSettingValue(
    title: String,
    value: String,
    onClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    Box(
        modifier = modifier
            .height(40.dp)
            .clip(RoundedCornerShape(8.dp))
            .background(Color.White.copy(alpha = 0.15f))
            .clickable { onClick() }
            .padding(horizontal = 16.dp),
        contentAlignment = Alignment.CenterStart
    ) {
        Column(modifier = Modifier.fillMaxHeight(), verticalArrangement = Arrangement.SpaceEvenly) {
            Text(
                text = title,
                color = Color.White.copy(alpha = 0.6f),
                fontSize = 8.sp,
                lineHeight = 8.sp,
                fontWeight = FontWeight.Normal,
            )
            Text(
                text = value,
                color = Color.White,
                fontSize = 10.sp,
                lineHeight = 10.sp,
                fontWeight = FontWeight.Medium
            )
        }
    }
}

@Composable
fun QuickSettingButton(
    title: String,
    icon: ImageVector,
    onClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    Box(
        modifier = modifier
            .height(40.dp)
            .clip(RoundedCornerShape(8.dp))
            .background(Color.White.copy(alpha = 0.15f))
            .clickable { onClick() }
            .padding(horizontal = 8.dp),
        contentAlignment = Alignment.CenterStart
    ) {
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Text(
                text = title,
                color = Color.White,
                fontSize = 10.sp,
                fontWeight = FontWeight.Normal,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis,
                modifier = Modifier.weight(1f)
            )
            Icon(
                imageVector = icon,
                contentDescription = null,
                tint = Color.White.copy(alpha = 0.6f),
                modifier = Modifier.size(18.dp)
            )
        }
    }
}



@Composable
fun QuickSettingButton2(
    title: String,
    checked: Boolean,
    onClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    Box(
        modifier = modifier
            .height(40.dp)
            .clip(RoundedCornerShape(8.dp))
            .background(
                if (checked) Color(0xFFFF6B35).copy(alpha = 0.15f) else Color.White.copy(
                    alpha = 0.15f
                )
            )
            .clickable { onClick() }
            .padding(horizontal = 16.dp),
        contentAlignment = Alignment.CenterStart
    ) {
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Text(
                text = title,
                color = if (checked) Color(0xFFFF6B35) else Color.White.copy(alpha = 0.9f),
                fontSize = 10.sp,
                fontWeight = if (checked) FontWeight.Bold else FontWeight.Normal,
            )
            Icon(
                imageVector = AppIcons.ChevronRight,
                contentDescription = null,
                tint = if (checked) Color(0xFFFF6B35) else Color.White.copy(alpha = 0.9f),
                modifier = Modifier.size(18.dp)
            )
        }
    }
}

@Composable
fun QuickSettingToggle(
    title: String,
    checked: Boolean,
    onCheckedChange: (Boolean) -> Unit,
    enabled: Boolean = true,
    modifier: Modifier = Modifier
) {
    val contentAlpha = if (enabled) 1f else 0.38f
    Box(
        modifier = modifier
            .height(40.dp)
            .clip(RoundedCornerShape(8.dp))
            .background(
                if (checked) Color(0xFFFF6B35).copy(alpha = 0.15f * contentAlpha) else Color.White.copy(
                    alpha = 0.15f
                )
            )
            .clickable(enabled = enabled) { onCheckedChange(!checked) }
            .padding(horizontal = 16.dp),
        contentAlignment = Alignment.CenterStart
    ) {
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Text(
                text = title,
                color = if (checked) {
                    Color(0xFFFF6B35).copy(alpha = contentAlpha)
                } else {
                    Color.White.copy(alpha = 0.9f * contentAlpha)
                },
                fontSize = 10.sp,
                lineHeight = 10.sp,
                fontWeight = if (checked) FontWeight.Bold else FontWeight.Normal,
                modifier = Modifier.weight(1f)
            )

            // Simple indicator
            Box(
                modifier = Modifier
                    .size(8.dp)
                    .clip(androidx.compose.foundation.shape.CircleShape)
                    .background(
                        if (checked) {
                            Color(0xFFFF6B35).copy(alpha = contentAlpha)
                        } else {
                            Color.White.copy(alpha = 0.2f * contentAlpha)
                        }
                    )
            )
        }
    }
}
