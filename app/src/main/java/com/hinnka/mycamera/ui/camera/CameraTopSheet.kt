package com.hinnka.mycamera.ui.camera

import com.hinnka.mycamera.raw.fotufilm.FotufilmDocument
import android.media.AudioDeviceInfo
import android.os.Build
import androidx.activity.compose.BackHandler
import androidx.compose.animation.*
import androidx.compose.animation.core.MutableTransitionState
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.relocation.BringIntoViewRequester
import androidx.compose.foundation.relocation.bringIntoViewRequester
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.selection.selectable
import androidx.compose.foundation.selection.selectableGroup
import androidx.compose.foundation.selection.toggleable
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.BasicText
import androidx.compose.foundation.text.TextAutoSize
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
import androidx.compose.ui.graphics.luminance
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection
import androidx.compose.ui.input.nestedscroll.NestedScrollSource
import androidx.compose.ui.input.nestedscroll.nestedScroll
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.TextUnit
import androidx.compose.ui.unit.Velocity
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.em
import androidx.compose.ui.unit.sp
import com.hinnka.mycamera.ui.theme.AccentColor
import com.hinnka.mycamera.ui.theme.DarkSurface
import com.hinnka.mycamera.ui.theme.TextSecondary
import com.hinnka.mycamera.R
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.camera.GridStyle
import com.hinnka.mycamera.raw.DcpInfo
import com.hinnka.mycamera.raw.HncsFilmCurveMode
import com.hinnka.mycamera.raw.RawRenderingEngine
import com.hinnka.mycamera.raw.RawToneMappingParameters
import com.hinnka.mycamera.raw.SpectralFilmSelection
import com.hinnka.mycamera.ui.components.CameraPanelGlassStyle
import com.hinnka.mycamera.ui.components.LiquidGlassBackdrop
import com.hinnka.mycamera.ui.components.RawDcpLensOption
import com.hinnka.mycamera.ui.components.RawRenderingEngineSettingsPanel
import com.hinnka.mycamera.ui.components.liquidGlassBackground
import com.hinnka.mycamera.video.*
import com.hinnka.mycamera.video.VideoCodec
import com.hinnka.mycamera.ui.icons.AppIcons

private enum class QuickSettingMenuId {
    ASPECT_RATIO,
    GRID_STYLE,
    LOG_PROFILE,
    BITRATE,
    CODEC,
    MICROPHONE
}

private val CameraTopSheetContentTopPadding = 32.dp
private val QuickSettingDropdownTriggerHeight = 54.dp
private val QuickSettingDropdownGap = 6.dp

private object QuickSettingDropdownScrollConnection : NestedScrollConnection {
    // Consume motion left over at either end of the list before it reaches the sheet.
    override fun onPostScroll(consumed: Offset, available: Offset, source: NestedScrollSource): Offset =
        Offset(0f, available.y)

    override suspend fun onPostFling(consumed: Velocity, available: Velocity): Velocity =
        Velocity(0f, available.y)
}

@OptIn(ExperimentalLayoutApi::class, ExperimentalMaterial3Api::class)
@Composable
fun CameraTopSheet(
    visible: Boolean,
    backdrop: LiquidGlassBackdrop,
    captureMode: CaptureMode,
    aspectRatio: AspectRatio,
    topSheetAspectRatios: List<AspectRatio>,
    onAspectRatioChange: (AspectRatio) -> Unit,
    videoAspectRatio: VideoAspectRatio,
    onVideoAspectRatioChange: (VideoAspectRatio) -> Unit,
    videoLogProfile: VideoLogProfile,
    availableVideoLogProfiles: List<VideoLogProfile>,
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
    rawHncsFilmCurveMode: HncsFilmCurveMode,
    rawRenderingEngine: RawRenderingEngine,
    rawExposureCompensation: Float,
    rawToneMappingParameters: RawToneMappingParameters,
    rawSpectralFilmSelection: SpectralFilmSelection?,
    rawSpectralFilmPrint: String?,
    rawFotufilmDocument: FotufilmDocument?,
    ultraHdrEnabled: Boolean,
    onUltraHdrToggle: (Boolean) -> Unit,
    photoPreviewStabilizationEnabled: Boolean,
    photoPreviewStabilizationAvailable: Boolean,
    onPhotoPreviewStabilizationChange: (Boolean) -> Unit,
    onRawDcpChange: (String?) -> Unit,
    onRawDcpIdsByLensChange: ((Map<String, String?>) -> Unit)? = null,
    onRawHncsFilmCurveModeChange: (HncsFilmCurveMode) -> Unit,
    onImportRawDcp: () -> Unit,
    onDeleteRawDcp: (DcpInfo) -> Unit,
    onRawColorEngineChange: (RawRenderingEngine) -> Unit,
    onRawToneMappingParametersChange: (RawToneMappingParameters) -> Unit,
    onRawSpectralFilmSelectionChange: (SpectralFilmSelection?) -> Unit,
    onRawSpectralFilmPrintChange: (String?) -> Unit,
    onRawFotufilmDocumentChange: (FotufilmDocument) -> Unit,
    onFilterManageClick: () -> Unit,
    onFrameManageClick: () -> Unit,
    onPresetManageClick: () -> Unit,
    onToolboxClick: () -> Unit,
    showHistogram: Boolean,
    onHistogramChange: (Boolean) -> Unit,
    showGrid: Boolean,
    gridStyle: GridStyle,
    onGridStyleChange: (GridStyle?) -> Unit,
    showLevelIndicator: Boolean,
    onLevelIndicatorChange: (Boolean) -> Unit,
    onMoreSettingsClick: () -> Unit,
    useJpgMax: Boolean,
    onJpgMaxToggle: (Boolean) -> Unit,
    useMultipleExposure: Boolean,
    onMultipleExposureToggle: (Boolean) -> Unit,
    contentTopPadding: Dp = CameraTopSheetContentTopPadding,
    modifier: Modifier = Modifier,
    visibilityState: MutableTransitionState<Boolean>? = null
) {
    val panelVisibility = visibilityState ?: remember { MutableTransitionState(visible) }
    panelVisibility.targetState = visible
    var expandedMenu by remember(captureMode) { mutableStateOf<QuickSettingMenuId?>(null) }
    var showRenderingEngineSheet by rememberSaveable { mutableStateOf(false) }
    var showContentManagementOptions by rememberSaveable { mutableStateOf(false) }
    fun handleContentManagementAction(action: () -> Unit) {
        showContentManagementOptions = false
        action()
    }

    LaunchedEffect(visible, captureMode) {
        showContentManagementOptions = false
        if (!visible) {
            expandedMenu = null
            showRenderingEngineSheet = false
        }
    }

    BackHandler(enabled = visible && expandedMenu != null) { expandedMenu = null }

    LaunchedEffect(useRaw) {
        if (!useRaw) {
            showRenderingEngineSheet = false
        }
    }

    AnimatedVisibility(
        visibleState = panelVisibility,
        // Reveal the sheet at its final coordinates so the glass samples a stationary area.
        enter = expandVertically(expandFrom = Alignment.Top),
        exit = shrinkVertically(shrinkTowards = Alignment.Top),
        modifier = modifier
    ) {
        val panelScrollState = rememberScrollState()
        val dropdownMaxHeight = with(LocalDensity.current) {
            (panelScrollState.viewportSize.toDp() - QuickSettingDropdownTriggerHeight - QuickSettingDropdownGap)
                .coerceIn(0.dp, 220.dp)
        }
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .aspectRatio(1f)
                .clip(RoundedCornerShape(bottomStart = 24.dp, bottomEnd = 24.dp))
                .liquidGlassBackground(
                    backdrop = backdrop,
                    openTopEdge = true,
                    style = CameraPanelGlassStyle,
                )
                // Keep the screen's top inset fixed, but measure content and side padding
                // in the rotated viewport so landscape controls stay inside the sheet.
                .padding(top = contentTopPadding)
                .autoRotate(matchParentSize = true)
                .padding(horizontal = 20.dp)
        ) {
            Column(
                modifier = Modifier
                    .weight(1f)
                    .verticalScroll(panelScrollState)
            ) {
                val isPhoto = captureMode == CaptureMode.PHOTO
                val aspectRatioMenu = if (isPhoto) {
                    quickSettingMenu(
                        id = QuickSettingMenuId.ASPECT_RATIO,
                        title = stringResource(R.string.aspect_ratio),
                        value = aspectRatio,
                        options = AspectRatio.sanitizeTopSheetRatios(topSheetAspectRatios),
                        onValueChange = onAspectRatioChange,
                        label = { it.getDisplayName() }
                    )
                } else {
                    quickSettingMenu(
                        id = QuickSettingMenuId.ASPECT_RATIO,
                        title = stringResource(R.string.video_aspect_chip),
                        value = videoAspectRatio,
                        options = VideoAspectRatio.entries,
                        onValueChange = onVideoAspectRatioChange,
                        label = { videoAspectRatioLabel(it) }
                    )
                }
                val gridMenu = quickSettingMenu(
                    id = QuickSettingMenuId.GRID_STYLE,
                    title = stringResource(R.string.settings_grid_lines),
                    value = gridStyle.takeIf { showGrid },
                    options = listOf<GridStyle?>(null) + GridStyle.entries,
                    onValueChange = onGridStyleChange,
                    label = { style -> stringResource(style?.labelRes ?: R.string.grid_style_off) }
                )
                QuickSettingDropdownRow(
                    first = aspectRatioMenu,
                    second = gridMenu,
                    expanded = expandedMenu,
                    dropdownMaxHeight = dropdownMaxHeight,
                    onExpandedChange = { expandedMenu = it }
                )

                if (isPhoto) {
                    Spacer(Modifier.height(12.dp))
                    QuickSettingGrid(columns = 2) { itemModifier ->
                        QuickSettingToggle(
                            title = stringResource(R.string.histogram),
                            checked = showHistogram,
                            onCheckedChange = onHistogramChange,
                            modifier = itemModifier
                        )
                        QuickSettingToggle(
                            title = stringResource(R.string.settings_level_indicator),
                            checked = showLevelIndicator,
                            onCheckedChange = onLevelIndicatorChange,
                            modifier = itemModifier
                        )
                    }

                    Spacer(Modifier.height(8.dp))

                    QuickSettingGrid { itemModifier ->
                        if (useRaw && isRawSupported) {
                            QuickSettingButton(
                                title = stringResource(R.string.settings_raw_color_engine),
                                icon = AppIcons.ChevronRight,
                                onClick = {
                                    expandedMenu = null
                                    showRenderingEngineSheet = true
                                },
                                modifier = itemModifier
                            )
                        } else {
                            QuickSettingToggle(
                                title = stringResource(R.string.settings_use_jpg_max),
                                checked = useJpgMax,
                                onCheckedChange = onJpgMaxToggle,
                                modifier = itemModifier
                            )
                            QuickSettingToggle(
                                title = stringResource(R.string.settings_use_multiple_exposure),
                                checked = useMultipleExposure,
                                onCheckedChange = onMultipleExposureToggle,
                                modifier = itemModifier
                            )
                        }
                        QuickSettingToggle(
                            title = stringResource(R.string.settings_ultra_hdr_gain_map),
                            checked = ultraHdrEnabled,
                            onCheckedChange = onUltraHdrToggle,
                            modifier = itemModifier
                        )
                        QuickSettingToggle(
                            title = stringResource(R.string.camera_preview_stabilization),
                            checked = photoPreviewStabilizationEnabled,
                            onCheckedChange = onPhotoPreviewStabilizationChange,
                            enabled = photoPreviewStabilizationAvailable,
                            modifier = itemModifier
                        )
                        ToolboxQuickSetting(
                            onToolboxClick = onToolboxClick,
                            modifier = itemModifier
                        )
                        ContentManagementQuickSetting(
                            onClick = { showContentManagementOptions = !showContentManagementOptions },
                            modifier = itemModifier
                        )
                    }
                } else {
                    Spacer(Modifier.height(8.dp))
                    QuickSettingDropdownRow(
                        first = quickSettingMenu(
                            id = QuickSettingMenuId.LOG_PROFILE,
                            title = stringResource(R.string.video_log_chip),
                            value = videoLogProfile,
                            options = availableVideoLogProfiles,
                            onValueChange = onVideoLogProfileChange,
                            label = { videoLogProfileLabel(it) }
                        ),
                        second = quickSettingMenu(
                            id = QuickSettingMenuId.BITRATE,
                            title = stringResource(R.string.video_bitrate_chip),
                            value = videoBitrate,
                            options = VideoBitratePreset.entries,
                            onValueChange = onVideoBitrateChange,
                            label = { stringResource(R.string.video_bitrate_value, it.bitrateMbps) }
                        ),
                        expanded = expandedMenu,
                        dropdownMaxHeight = dropdownMaxHeight,
                        onExpandedChange = { expandedMenu = it }
                    )
                    Spacer(Modifier.height(8.dp))
                    QuickSettingDropdownRow(
                        first = quickSettingMenu(
                            id = QuickSettingMenuId.CODEC,
                            title = stringResource(R.string.video_codec_chip),
                            value = videoCodec,
                            options = VideoCodec.entries,
                            onValueChange = onVideoCodecChange,
                            label = { it.displayName }
                        ),
                        second = quickSettingMenu(
                            id = QuickSettingMenuId.MICROPHONE,
                            title = stringResource(R.string.video_microphone_title),
                            value = videoAudioInputId,
                            options = listOf(VIDEO_AUDIO_INPUT_AUTO) + videoAudioInputOptions.map { it.id },
                            onValueChange = onVideoAudioInputChange,
                            label = { selectedVideoAudioInputLabel(it, videoAudioInputOptions) }
                        ),
                        expanded = expandedMenu,
                        dropdownMaxHeight = dropdownMaxHeight,
                        onExpandedChange = { expandedMenu = it }
                    )

                    Spacer(Modifier.height(12.dp))
                    QuickSettingGrid(columns = 2) { itemModifier ->
                        QuickSettingToggle(
                            title = stringResource(R.string.settings_level_indicator),
                            checked = showLevelIndicator,
                            onCheckedChange = onLevelIndicatorChange,
                            modifier = itemModifier
                        )
                        ContentManagementQuickSetting(
                            onClick = { showContentManagementOptions = !showContentManagementOptions },
                            modifier = itemModifier
                        )
                    }
                }

                ContentManagementOptionsPanel(
                    visible = showContentManagementOptions,
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

                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(vertical = 12.dp)
                        .height(48.dp)
                        .quickSettingSurface()
                        .clickable(role = Role.Button, onClick = onMoreSettingsClick)
                        .padding(horizontal = 12.dp),
                    horizontalArrangement = Arrangement.spacedBy(10.dp),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Icon(
                        imageVector = Icons.Default.Settings,
                        contentDescription = null,
                        tint = Color.White,
                        modifier = Modifier.size(18.dp)
                    )
                    QuickSettingLabel(
                        text = stringResource(R.string.settings_title),
                        color = Color.White,
                        fontWeight = FontWeight.Medium,
                        maxFontSize = 13.sp,
                        modifier = Modifier.weight(1f)
                    )
                    Icon(
                        imageVector = AppIcons.ChevronRight,
                        contentDescription = null,
                        tint = TextSecondary,
                        modifier = Modifier.size(18.dp)
                    )
                }
            }
        }
    }

    if (visible && showRenderingEngineSheet) {
        CameraPanelBottomSheet(
            backdrop = backdrop,
            onDismissRequest = { showRenderingEngineSheet = false },
            dragHandle = { BottomSheetDefaults.DragHandle(color = Color.White.copy(alpha = 0.2f)) }
        ) {
            Text(
                text = stringResource(R.string.settings_raw_color_engine),
                color = Color.White,
                fontSize = 20.sp,
                fontWeight = FontWeight.Bold,
                modifier = Modifier.padding(horizontal = 16.dp, vertical = 8.dp)
            )
            // Fill the sheet so switching engines only changes the scroll range, never the anchors.
            Column(
                modifier = Modifier
                    .fillMaxWidth()
                    .weight(1f)
                    .verticalScroll(rememberScrollState())
                    .padding(horizontal = 16.dp)
                    .padding(top = 4.dp, bottom = 8.dp)
            ) {
                RawRenderingEngineSettingsPanel(
                    selectedDcpId = rawDcpId,
                    rawDcpIdsByLens = rawDcpIdsByLens,
                    dcpLensOptions = rawDcpLensOptions,
                    availableDcps = availableDcps,
                    rawRenderingEngine = rawRenderingEngine,
                    rawExposureCompensation = rawExposureCompensation,
                    rawToneMappingParameters = rawToneMappingParameters,
                    spectralFilmSelection = rawSpectralFilmSelection,
                    spectralFilmPrint = rawSpectralFilmPrint,
                    onSelectDcp = onRawDcpChange,
                    onRawDcpIdsByLensChange = onRawDcpIdsByLensChange,
                    onImportDcp = onImportRawDcp,
                    onDeleteDcp = onDeleteRawDcp,
                    hncsFilmCurveMode = rawHncsFilmCurveMode,
                    onHncsFilmCurveModeChange = onRawHncsFilmCurveModeChange,
                    onRawColorEngineChange = onRawColorEngineChange,
                    onRawToneMappingParametersChange = onRawToneMappingParametersChange,
                    onSpectralFilmSelectionChange = onRawSpectralFilmSelectionChange,
                    onSpectralFilmPrintChange = onRawSpectralFilmPrintChange,
                    fotufilmDocument = rawFotufilmDocument,
                    onFotufilmDocumentChange = onRawFotufilmDocumentChange,
                    inlineEngineOptions = true,
                    showToneMappingControls = true,
                )
            }
        }
    }
}

private data class QuickSettingMenu(
    val id: QuickSettingMenuId,
    val title: String,
    val summary: String,
    val choices: List<QuickSettingChoice>
)

private data class QuickSettingChoice(
    val label: String,
    val selected: Boolean,
    val onSelect: () -> Unit
)

@Composable
private fun <T> quickSettingMenu(
    id: QuickSettingMenuId,
    title: String,
    value: T,
    options: List<T>,
    onValueChange: (T) -> Unit,
    label: @Composable (T) -> String
): QuickSettingMenu {
    val summary = label(value)
    val choices = options.map { option ->
        val selected = option == value
        QuickSettingChoice(
            label = if (selected) summary else label(option),
            selected = selected,
            onSelect = { onValueChange(option) }
        )
    }
    return QuickSettingMenu(id, title, summary, choices)
}

@Composable
private fun QuickSettingDropdownRow(
    first: QuickSettingMenu,
    second: QuickSettingMenu,
    expanded: QuickSettingMenuId?,
    dropdownMaxHeight: Dp,
    onExpandedChange: (QuickSettingMenuId?) -> Unit
) {
    val openMenu = when (expanded) {
        first.id -> first
        second.id -> second
        else -> null
    }
    val rowRequester = remember { BringIntoViewRequester() }
    LaunchedEffect(openMenu?.id, dropdownMaxHeight) {
        if (openMenu != null) {
            withFrameNanos { }
            rowRequester.bringIntoView()
        }
    }

    // Keep the dropdown in the rotated sheet so it follows both the trigger and device orientation.
    Column(Modifier.fillMaxWidth().bringIntoViewRequester(rowRequester)) {
        Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
            QuickSettingDropdownTrigger(
                menu = first,
                expanded = expanded == first.id,
                onClick = { onExpandedChange(first.id.takeUnless { it == expanded }) },
                modifier = Modifier.weight(1f)
            )
            QuickSettingDropdownTrigger(
                menu = second,
                expanded = expanded == second.id,
                onClick = { onExpandedChange(second.id.takeUnless { it == expanded }) },
                modifier = Modifier.weight(1f)
            )
        }
        if (openMenu != null) {
            Spacer(Modifier.height(QuickSettingDropdownGap))
            key(openMenu.id) {
                QuickSettingDropdownOptions(
                    choices = openMenu.choices,
                    maxHeight = dropdownMaxHeight,
                    onSelect = { choice ->
                        onExpandedChange(null)
                        if (!choice.selected) choice.onSelect()
                    }
                )
            }
        }
    }
}

@Composable
private fun QuickSettingDropdownTrigger(
    menu: QuickSettingMenu,
    expanded: Boolean,
    onClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    val enabled = menu.choices.isNotEmpty()
    val accentForeground = quickSettingAccentForeground(AccentColor)
    Row(
        modifier = modifier
            .height(QuickSettingDropdownTriggerHeight)
            .quickSettingSurface(active = expanded)
            .clickable(enabled = enabled, role = Role.Button, onClick = onClick)
            .padding(horizontal = 11.dp, vertical = 6.dp),
        horizontalArrangement = Arrangement.spacedBy(7.dp),
        verticalAlignment = Alignment.CenterVertically
    ) {
        Column(
            modifier = Modifier.weight(1f),
            verticalArrangement = Arrangement.spacedBy(2.dp, Alignment.CenterVertically)
        ) {
            Text(
                text = menu.title,
                color = TextSecondary,
                fontSize = 10.sp,
                lineHeight = 12.sp,
                fontWeight = FontWeight.Medium,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis
            )
            QuickSettingLabel(
                text = menu.summary,
                color = if (enabled) accentForeground else Color.White.copy(alpha = 0.38f),
                maxFontSize = 14.sp,
                fontWeight = FontWeight.SemiBold
            )
        }
        Icon(
            imageVector = if (expanded) AppIcons.ExpandLess else AppIcons.ExpandMore,
            contentDescription = null,
            tint = when {
                expanded -> accentForeground
                enabled -> TextSecondary
                else -> Color.White.copy(alpha = 0.38f)
            },
            modifier = Modifier.size(18.dp)
        )
    }
}

@Composable
private fun QuickSettingDropdownOptions(
    choices: List<QuickSettingChoice>,
    maxHeight: Dp,
    onSelect: (QuickSettingChoice) -> Unit
) {
    val accent = AccentColor
    val accentForeground = quickSettingAccentForeground(accent)
    val selectedFill = accent.copy(alpha = 0.12f)
    Surface(
        modifier = Modifier.fillMaxWidth(),
        shape = QuickSettingShape,
        color = DarkSurface,
        border = BorderStroke(1.dp, Color.White.copy(alpha = 0.14f))
    ) {
        Column(
            modifier = Modifier
                .heightIn(max = maxHeight)
                .nestedScroll(QuickSettingDropdownScrollConnection)
                .verticalScroll(rememberScrollState())
                .selectableGroup()
                .padding(5.dp)
        ) {
            choices.forEach { choice ->
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .heightIn(min = 40.dp)
                        .clip(RoundedCornerShape(8.dp))
                        .background(if (choice.selected) selectedFill else Color.Transparent)
                        .selectable(selected = choice.selected, role = Role.RadioButton) { onSelect(choice) }
                        .padding(horizontal = 10.dp, vertical = 6.dp),
                    horizontalArrangement = Arrangement.spacedBy(8.dp),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Text(
                        text = choice.label,
                        color = if (choice.selected) accentForeground else Color.White.copy(alpha = 0.90f),
                        fontSize = 13.sp,
                        fontWeight = if (choice.selected) FontWeight.SemiBold else FontWeight.Normal,
                        modifier = Modifier.weight(1f)
                    )
                    if (choice.selected) {
                        Icon(
                            imageVector = Icons.Default.Check,
                            contentDescription = null,
                            tint = accentForeground,
                            modifier = Modifier.size(16.dp)
                        )
                    }
                }
            }
        }
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

@OptIn(ExperimentalLayoutApi::class)
@Composable
private fun QuickSettingGrid(
    columns: Int = 3,
    content: @Composable (Modifier) -> Unit
) {
    // Keep a consistent column count as the available photo controls change.
    FlowRow(
        modifier = Modifier.fillMaxWidth(),
        horizontalArrangement = Arrangement.spacedBy(8.dp),
        verticalArrangement = Arrangement.spacedBy(8.dp),
        maxItemsInEachRow = columns
    ) {
        content(Modifier.weight(1f).height(48.dp))
    }
}

@Composable
private fun QuickSettingLabel(
    text: String,
    color: Color,
    modifier: Modifier = Modifier,
    fontWeight: FontWeight = FontWeight.Normal,
    maxFontSize: TextUnit = 10.sp
) {
    BasicText(
        text = text,
        modifier = modifier,
        style = LocalTextStyle.current.copy(
            color = color,
            fontWeight = fontWeight,
            fontSize = maxFontSize,
            lineHeight = 1.2.em
        ),
        maxLines = 2,
        autoSize = TextAutoSize.StepBased(minFontSize = 8.sp, maxFontSize = maxFontSize)
    )
}

@Composable
private fun ContentManagementOptionsPanel(
    visible: Boolean,
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
            QuickSettingGrid { itemModifier ->
                QuickSettingButton(
                    title = stringResource(R.string.settings_filter_management),
                    icon = AppIcons.AutoAwesome,
                    onClick = onFilterManageClick,
                    modifier = itemModifier
                )
                QuickSettingButton(
                    title = stringResource(R.string.settings_frame_management),
                    icon = AppIcons.BorderBottom,
                    onClick = onFrameManageClick,
                    modifier = itemModifier
                )
                QuickSettingButton(
                    title = stringResource(R.string.settings_preset_management),
                    icon = AppIcons.Bookmark,
                    onClick = onPresetManageClick,
                    modifier = itemModifier
                )
            }
        }
    }
}

private val QuickSettingShape = RoundedCornerShape(12.dp)

private fun quickSettingAccentForeground(accent: Color): Color =
    if (accent.luminance() >= 0.38f) accent else Color.White

@Composable
private fun Modifier.quickSettingSurface(active: Boolean = false): Modifier {
    val accent = AccentColor
    val background = if (active) accent.copy(alpha = 0.12f) else Color.White.copy(alpha = 0.08f)
    val outline = if (active) {
        quickSettingAccentForeground(accent).copy(alpha = 0.65f)
    } else {
        Color.White.copy(alpha = 0.12f)
    }
    return clip(QuickSettingShape)
        .background(background)
        .border(1.dp, outline, QuickSettingShape)
}

@Composable
private fun QuickSettingButton(
    title: String,
    icon: ImageVector,
    onClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    Box(
        modifier = modifier
            .height(48.dp)
            .quickSettingSurface()
            .clickable(role = Role.Button, onClick = onClick)
            .padding(horizontal = 8.dp, vertical = 6.dp),
        contentAlignment = Alignment.CenterStart
    ) {
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(4.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            QuickSettingLabel(
                text = title,
                color = Color.White,
                fontWeight = FontWeight.Normal,
                modifier = Modifier.weight(1f)
            )
            Icon(
                imageVector = icon,
                contentDescription = null,
                tint = TextSecondary,
                modifier = Modifier.size(14.dp)
            )
        }
    }
}



@Composable
private fun QuickSettingToggle(
    title: String,
    checked: Boolean,
    onCheckedChange: (Boolean) -> Unit,
    enabled: Boolean = true,
    modifier: Modifier = Modifier
) {
    val contentAlpha = if (enabled) 1f else 0.38f
    val accentForeground = quickSettingAccentForeground(AccentColor)
    val active = checked && enabled
    Box(
        modifier = modifier
            .height(48.dp)
            .quickSettingSurface(active = active)
            .toggleable(value = checked, enabled = enabled, role = Role.Switch, onValueChange = onCheckedChange)
            .padding(horizontal = 8.dp, vertical = 6.dp),
        contentAlignment = Alignment.CenterStart
    ) {
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(4.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            QuickSettingLabel(
                text = title,
                color = if (active) accentForeground else Color.White.copy(alpha = 0.9f * contentAlpha),
                fontWeight = if (checked) FontWeight.SemiBold else FontWeight.Normal,
                modifier = Modifier.weight(1f)
            )

            // Simple indicator
            Box(
                modifier = Modifier.size(7.dp).background(
                    color = if (checked) accentForeground.copy(alpha = contentAlpha)
                    else Color.White.copy(alpha = 0.24f * contentAlpha),
                    shape = CircleShape
                )
            )
        }
    }
}
