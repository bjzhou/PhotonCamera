package com.hinnka.mycamera.ui.settings

import androidx.compose.animation.AnimatedVisibility
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.BasicTextField
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.hapticfeedback.HapticFeedbackType
import androidx.compose.ui.platform.LocalHapticFeedback
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.hinnka.mycamera.R
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.model.CameraPreset
import com.hinnka.mycamera.model.ColorPaletteState
import com.hinnka.mycamera.model.ColorRecipeParams
import com.hinnka.mycamera.model.EffectParams
import com.hinnka.mycamera.ui.components.ColorRecipePanel
import com.hinnka.mycamera.ui.components.LutSelectorWithRecipeAction
import com.hinnka.mycamera.ui.components.CurveChannel
import com.hinnka.mycamera.raw.RawRenderingEngine
import com.hinnka.mycamera.raw.SpectralFilmUiInfo
import com.hinnka.mycamera.ui.components.EffectsBottomSheet
import com.hinnka.mycamera.ui.components.FrameSelector
import com.hinnka.mycamera.ui.components.RawBaselineColorCorrectionSelector
import com.hinnka.mycamera.ui.components.RawDcpSelector
import com.hinnka.mycamera.ui.components.rawDcpLensOptions
import com.hinnka.mycamera.ui.camera.LutEditBottomSheet
import com.hinnka.mycamera.ui.camera.LutEditorTarget
import com.hinnka.mycamera.viewmodel.CameraViewModel
import java.util.UUID

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun PresetEditorScreen(
    viewModel: CameraViewModel,
    presetId: String?,
    onBack: () -> Unit,
    modifier: Modifier = Modifier
) {
    val haptic = LocalHapticFeedback.current
    val cameraState by viewModel.state.collectAsState()
    val allPresets by viewModel.allPresets.collectAsState()
    val availableLuts = viewModel.availableLutList
    val availableDcps = viewModel.availableDcps
    val availableFrames = viewModel.availableFrameList
    val defaultNewPresetName = stringResource(R.string.preset_new_preset_default)

    // 寻找是否存在编辑目标，如果不存在（新建预设），则尝试从 ViewModel.draftPreset 初始化，或者基于当前状态新建
    val sourcePreset = remember(presetId, allPresets, defaultNewPresetName) {
        if (presetId != null) {
            allPresets.find { it.id == presetId }
        } else {
            viewModel.draftPreset ?: viewModel.prepareCurrentSettingsPresetDraft(defaultNewPresetName)
        }
    }

    // 在编辑状态中维护各个字段，以便保存
    var presetName by remember {
        mutableStateOf(
            sourcePreset?.name ?: defaultNewPresetName
        )
    }

    var selectedLutId by remember { mutableStateOf(sourcePreset?.lutId) }
    var colorRecipe by remember { mutableStateOf(sourcePreset?.colorRecipe ?: ColorRecipeParams.DEFAULT) }
    var effects by remember { mutableStateOf(sourcePreset?.effects ?: EffectParams.DEFAULT) }

    var paletteState by remember(colorRecipe) {
        mutableStateOf(
            ColorPaletteState(
                x = colorRecipe.paletteX,
                y = colorRecipe.paletteY,
                density = colorRecipe.paletteDensity
            )
        )
    }

    // 相机参数
    var aspectRatio by remember { mutableStateOf(sourcePreset?.aspectRatio ?: AspectRatio.RATIO_4_3.name) }
    var useRaw by remember { mutableStateOf(sourcePreset?.useRaw ?: false) }
    var useMFNR by remember { mutableStateOf(sourcePreset?.useMFNR ?: false) }
    var useHdrComposition by remember { mutableStateOf(sourcePreset?.useHdrComposition ?: true) }
    var useMFSR by remember { mutableStateOf(sourcePreset?.useMFSR ?: false) }
    var frameId by remember { mutableStateOf(sourcePreset?.frameId) }

    // Quick RAW 参数
    var rawDcpId by remember { mutableStateOf(sourcePreset?.rawDcpId) }
    var rawDcpIdsByLens by remember { mutableStateOf(sourcePreset?.rawDcpIdsByLens ?: emptyMap()) }
    var rawRenderingEngine by remember {
        mutableStateOf(RawRenderingEngine.fromPersistedName(sourcePreset?.rawRenderingEngine))
    }
    var rawGooglePixelToneMap by remember { mutableStateOf(sourcePreset?.rawGooglePixelToneMap ?: false) }
    var rawOppoMasterToneMap by remember { mutableStateOf(sourcePreset?.rawOppoMasterToneMap ?: false) }
    var rawSpectralFilmStock by remember { mutableStateOf(sourcePreset?.rawSpectralFilmStock ?: "kodak_portra_400") }
    var rawSpectralFilmPrint by remember { mutableStateOf(sourcePreset?.rawSpectralFilmPrint ?: "kodak_2383") }
    var rawDROMode by remember { mutableStateOf(sourcePreset?.rawDROMode ?: "OFF") }

    // 基准色彩校正
    var jpgBaselineLutId by remember { mutableStateOf(sourcePreset?.jpgBaselineLutId) }
    var rawBaselineLutId by remember { mutableStateOf(sourcePreset?.rawBaselineLutId) }
    var phantomBaselineLutId by remember { mutableStateOf(sourcePreset?.phantomBaselineLutId) }

    // 折叠卡片展开控制
    var expandSettings by remember { mutableStateOf(false) }
    var expandQuickRaw by remember { mutableStateOf(false) }
    var expandBaseline by remember { mutableStateOf(false) }
    var showColorRecipeSheet by remember { mutableStateOf(false) }
    var showEffectsSheet by remember { mutableStateOf(false) }
    var baselineRecipeEditLutId by remember { mutableStateOf<String?>(null) }
    var baselineRecipeEditorTarget by remember { mutableStateOf<LutEditorTarget?>(null) }

    // 保存方法
    val onSave = {
        val newPresetId = presetId ?: sourcePreset?.id ?: UUID.randomUUID().toString()
        val isBuiltInFlag = sourcePreset?.isBuiltIn ?: false // 如果是内置预设的修改，依然保留 isBuiltIn 以展示内置标签
        val savedPreset = CameraPreset(
            id = newPresetId,
            name = presetName,
            lutId = selectedLutId,
            colorRecipe = colorRecipe,
            effects = effects,
            aspectRatio = aspectRatio,
            useRaw = useRaw,
            useMFNR = useMFNR,
            useHdrComposition = useHdrComposition,
            useMFSR = useMFSR,
            frameId = frameId,
            rawDcpId = rawDcpId,
            rawDcpIdsByLens = rawDcpIdsByLens,
            rawRenderingEngine = rawRenderingEngine.name,
            rawGooglePixelToneMap = rawGooglePixelToneMap,
            rawOppoMasterToneMap = rawOppoMasterToneMap,
            rawSpectralFilmStock = rawSpectralFilmStock,
            rawSpectralFilmPrint = rawSpectralFilmPrint,
            rawDROMode = rawDROMode,
            jpgBaselineLutId = jpgBaselineLutId,
            rawBaselineLutId = rawBaselineLutId,
            phantomBaselineLutId = phantomBaselineLutId,
            isBuiltIn = isBuiltInFlag
        )
        viewModel.savePreset(savedPreset)
        viewModel.draftPreset = null
        haptic.performHapticFeedback(HapticFeedbackType.LongPress)
        onBack()
    }

    Scaffold(
        topBar = {
            TopAppBar(
                title = {
                    Text(
                        text = if (presetId != null) stringResource(R.string.preset_editor_title) else stringResource(R.string.preset_new),
                        color = Color.White,
                        fontSize = 18.sp,
                        fontWeight = FontWeight.Bold
                    )
                },
                navigationIcon = {
                    IconButton(onClick = { onBack() }) {
                        Icon(
                            imageVector = Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = stringResource(R.string.back),
                            tint = Color.White
                        )
                    }
                },
                actions = {
                    TextButton(onClick = { onSave() }) {
                        Text(
                            text = stringResource(R.string.preset_save),
                            color = Color(0xFFFFD700),
                            fontSize = 15.sp,
                            fontWeight = FontWeight.Bold
                        )
                    }
                },
                colors = TopAppBarDefaults.topAppBarColors(
                    containerColor = Color(0xFF0F0F0F)
                )
            )
        },
        containerColor = Color(0xFF0A0A0A),
        modifier = modifier.fillMaxSize()
    ) { paddingValues ->
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(paddingValues)
                .verticalScroll(rememberScrollState())
                .padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            SettingsSection(title = stringResource(R.string.preset_name_hint), isExpandable = false) {
                Column(modifier = Modifier.fillMaxWidth()) {
                    Text(
                        text = stringResource(R.string.preset_name_label),
                        color = Color.White.copy(alpha = 0.5f),
                        fontSize = 12.sp,
                        modifier = Modifier.padding(bottom = 6.dp)
                    )
                    BasicTextField(
                        value = presetName,
                        onValueChange = { presetName = it },
                        textStyle = TextStyle(
                            color = Color.White,
                            fontSize = 15.sp,
                            fontWeight = FontWeight.Bold
                        ),
                        cursorBrush = SolidColor(Color.White),
                        modifier = Modifier
                            .fillMaxWidth()
                            .height(44.dp)
                            .background(Color.White.copy(alpha = 0.05f), RoundedCornerShape(8.dp))
                            .border(1.dp, Color.White.copy(alpha = 0.1f), RoundedCornerShape(8.dp))
                            .padding(horizontal = 12.dp, vertical = 12.dp)
                    )
                }
            }

            SettingsSection(title = stringResource(R.string.filter), isExpandable = false) {
                LutSelectorWithRecipeAction(
                    availableLuts = availableLuts,
                    currentLutId = selectedLutId,
                    thumbnail = null,
                    onLutSelected = { selectedLutId = it },
                    onEditRecipeClick = { showColorRecipeSheet = true },
                    onEditEffectClick = { showEffectsSheet = true },
                    recipeIsCustomized = !colorRecipe.isDefault(),
                    modifier = Modifier.fillMaxWidth()
                )
            }

            SettingsSection(title = stringResource(R.string.settings_section_frame), isExpandable = false) {
                FrameSelector(
                    availableFrames = availableFrames,
                    currentFrameId = frameId,
                    onFrameSelected = { frameId = it },
                    modifier = Modifier.fillMaxWidth()
                )
            }

            SettingsSection(
                title = stringResource(R.string.settings_section_capture),
                isExpandable = true,
                isExpanded = expandSettings,
                onToggleExpand = { expandSettings = !expandSettings }
            ) {
                val topSheetAspectRatios by viewModel.topSheetAspectRatios.collectAsState()
                DropdownSettingItem(
                    title = stringResource(R.string.aspect_ratio),
                    value = AspectRatio.valueOf(aspectRatio).getDisplayName(),
                    options = topSheetAspectRatios.map { it.getDisplayName() },
                    isLoading = false,
                    onExpanded = {},
                    onOptionSelected = { selectedLabel ->
                        val matchedKey = topSheetAspectRatios.find { it.getDisplayName() == selectedLabel }
                        if (matchedKey != null) {
                            aspectRatio = matchedKey.name
                        }
                    }
                )

                HorizontalDivider(color = Color.White.copy(alpha = 0.05f), modifier = Modifier.padding(vertical = 8.dp))

                SwitchSettingItem(
                    title = stringResource(R.string.settings_use_multi_frame),
                    checked = useMFNR,
                    onCheckedChange = {
                        useMFNR = it
                    }
                )

                HorizontalDivider(color = Color.White.copy(alpha = 0.05f), modifier = Modifier.padding(vertical = 8.dp))

                SwitchSettingItem(
                    title = stringResource(R.string.settings_use_hdr_composition),
                    checked = useHdrComposition,
                    onCheckedChange = {
                        useHdrComposition = it
                    }
                )

            }

            if (showColorRecipeSheet) {
                ModalBottomSheet(
                    onDismissRequest = { showColorRecipeSheet = false },
                    containerColor = Color.Black.copy(alpha = 0.86f),
                    scrimColor = Color.Transparent,
                    dragHandle = { BottomSheetDefaults.DragHandle(color = Color.White.copy(alpha = 0.2f)) }
                ) {
                    ColorRecipePanel(
                        currentParams = colorRecipe,
                        paletteState = paletteState,
                        onPaletteStateChange = { newState ->
                            paletteState = newState
                            colorRecipe = colorRecipe.copy(
                                paletteX = newState.x,
                                paletteY = newState.y,
                                paletteDensity = newState.density
                            )
                        },
                        onParamChange = { param, value ->
                            colorRecipe = param.setValue(colorRecipe, value)
                        },
                        onParamsChange = { newParams ->
                            colorRecipe = newParams
                            paletteState = ColorPaletteState(
                                x = newParams.paletteX,
                                y = newParams.paletteY,
                                density = newParams.paletteDensity
                            )
                        },
                        onRemarksChange = { remarks ->
                            colorRecipe = colorRecipe.copy(remarks = remarks)
                        },
                        onCurveChange = { channel, points ->
                            colorRecipe = when (channel) {
                                CurveChannel.MASTER -> colorRecipe.copy(masterCurvePoints = points)
                                CurveChannel.RED -> colorRecipe.copy(redCurvePoints = points)
                                CurveChannel.GREEN -> colorRecipe.copy(greenCurvePoints = points)
                                CurveChannel.BLUE -> colorRecipe.copy(blueCurvePoints = points)
                            }
                        },
                        hideNonBakeable = true,
                        modifier = Modifier
                            .fillMaxWidth()
                            .navigationBarsPadding()
                    )
                }
            }

            if (showEffectsSheet) {
                EffectsBottomSheet(
                    currentParams = effects,
                    onParamsChange = { effects = it },
                    onDismiss = { showEffectsSheet = false }
                )
            }

            val editBaselineRecipe: (String, LutEditorTarget) -> Unit = { lutId, target ->
                baselineRecipeEditLutId = lutId
                baselineRecipeEditorTarget = target
            }

            if (baselineRecipeEditLutId != null && baselineRecipeEditorTarget != null) {
                LutEditBottomSheet(
                    lutId = baselineRecipeEditLutId!!,
                    editorTarget = baselineRecipeEditorTarget!!,
                    onDismiss = {
                        baselineRecipeEditLutId = null
                        baselineRecipeEditorTarget = null
                    }
                )
            }

            SettingsSection(
                title = stringResource(R.string.baseline_target_raw),
                isExpandable = true,
                isExpanded = expandQuickRaw,
                onToggleExpand = { expandQuickRaw = !expandQuickRaw }
            ) {
                SwitchSettingItem(
                    title = stringResource(R.string.settings_use_raw),
                    checked = useRaw,
                    onCheckedChange = {
                        useRaw = it
                    }
                )

                HorizontalDivider(color = Color.White.copy(alpha = 0.05f), modifier = Modifier.padding(vertical = 8.dp))

                val engineNames = RawRenderingEngine.entries.associateWith { engine ->
                    when (engine) {
                        RawRenderingEngine.AdobeCurve -> stringResource(R.string.settings_raw_color_engine_adobe_curve)
                        RawRenderingEngine.AgX -> stringResource(R.string.settings_raw_color_engine_agx)
                        RawRenderingEngine.DarktableSigmoid -> stringResource(R.string.settings_raw_color_engine_darktable_sigmoid)
                        RawRenderingEngine.DarktableFilmic -> stringResource(R.string.settings_raw_color_engine_darktable_filmic)
                        RawRenderingEngine.Spektrafilm -> stringResource(R.string.settings_raw_color_engine_spectral_film)
                    }
                }
                DropdownSettingItem(
                    title = stringResource(R.string.settings_raw_color_engine),
                    value = engineNames[rawRenderingEngine] ?: rawRenderingEngine.name,
                    options = engineNames.values.toList(),
                    isLoading = false,
                    onExpanded = {},
                    onOptionSelected = { selectedName ->
                        engineNames.entries.find { it.value == selectedName }?.key?.let { engine ->
                            rawRenderingEngine = engine
                            if (engine == RawRenderingEngine.Spektrafilm) {
                                if (rawSpectralFilmStock.isBlank()) rawSpectralFilmStock = "kodak_portra_400"
                                if (rawSpectralFilmPrint.isBlank()) rawSpectralFilmPrint = "kodak_2383"
                            }
                        }
                    }
                )

                AnimatedVisibility(visible = rawRenderingEngine == RawRenderingEngine.AdobeCurve) {
                    Column(modifier = Modifier.fillMaxWidth()) {
                        HorizontalDivider(
                            color = Color.White.copy(alpha = 0.05f),
                            modifier = Modifier.padding(vertical = 8.dp)
                        )

                        SwitchSettingItem(
                            title = stringResource(R.string.settings_raw_google_pixel_tone_map),
                            description = stringResource(R.string.settings_raw_google_pixel_tone_map_description),
                            checked = rawGooglePixelToneMap,
                            onCheckedChange = { enabled ->
                                rawGooglePixelToneMap = enabled
                                if (enabled) rawOppoMasterToneMap = false
                            }
                        )

                        SwitchSettingItem(
                            title = stringResource(R.string.settings_raw_oppo_master_tone_map),
                            description = stringResource(R.string.settings_raw_oppo_master_tone_map_description),
                            checked = rawOppoMasterToneMap,
                            onCheckedChange = { enabled ->
                                rawOppoMasterToneMap = enabled
                                if (enabled) rawGooglePixelToneMap = false
                            }
                        )

                        HorizontalDivider(
                            color = Color.White.copy(alpha = 0.05f),
                            modifier = Modifier.padding(vertical = 8.dp)
                        )

                        RawDcpSelector(
                            selectedDcpId = rawDcpId,
                            rawDcpIdsByLens = rawDcpIdsByLens,
                            lensOptions = rawDcpLensOptions(cameraState.availableCameras),
                            availableDcps = availableDcps,
                            onSelectDcp = { rawDcpId = it },
                            onRawDcpIdsByLensChange = { rawDcpIdsByLens = it }
                        )
                    }
                }

                AnimatedVisibility(visible = rawRenderingEngine == RawRenderingEngine.Spektrafilm) {
                    Column(modifier = Modifier.fillMaxWidth()) {
                        val currentStockLabel = SpectralFilmUiInfo.getFilmDisplayName(rawSpectralFilmStock)
                        val stockMap = SpectralFilmUiInfo.availableFilms.associateWith { SpectralFilmUiInfo.getFilmDisplayName(it) }
                        DropdownSettingItem(
                            title = stringResource(R.string.settings_negative_film),
                            value = currentStockLabel,
                            options = stockMap.values.toList(),
                            isLoading = false,
                            onExpanded = {},
                            onOptionSelected = { selectedName ->
                                val matchedKey = stockMap.entries.find { it.value == selectedName }?.key
                                if (matchedKey != null) {
                                    rawSpectralFilmStock = matchedKey
                                }
                            }
                        )

                        HorizontalDivider(color = Color.White.copy(alpha = 0.05f), modifier = Modifier.padding(vertical = 8.dp))

                        val currentPrintLabel = SpectralFilmUiInfo.getPrintDisplayName(rawSpectralFilmPrint)
                        val printMap = SpectralFilmUiInfo.availablePrints.associateWith { SpectralFilmUiInfo.getPrintDisplayName(it) }
                        DropdownSettingItem(
                            title = stringResource(R.string.settings_print_paper),
                            value = currentPrintLabel,
                            options = printMap.values.toList(),
                            isLoading = false,
                            onExpanded = {},
                            onOptionSelected = { selectedName ->
                                val matchedKey = printMap.entries.find { it.value == selectedName }?.key
                                if (matchedKey != null) {
                                    rawSpectralFilmPrint = matchedKey
                                }
                            }
                        )
                    }
                }

                /*HorizontalDivider(color = Color.White.copy(alpha = 0.05f), modifier = Modifier.padding(vertical = 8.dp))

                val droMap = mapOf(
                    "OFF" to stringResource(R.string.settings_dro_off),
                    "DR100" to stringResource(R.string.settings_dro_dr100),
                    "DR200" to stringResource(R.string.settings_dro_dr200),
                    "DR400" to stringResource(R.string.settings_dro_dr400)
                )
                val currentDroLabel = droMap[rawDROMode] ?: stringResource(R.string.settings_dro_off)
                DropdownSettingItem(
                    title = stringResource(R.string.settings_dro_mode),
                    value = currentDroLabel,
                    options = droMap.values.toList(),
                    isLoading = false,
                    onExpanded = {},
                    onOptionSelected = { selectedName ->
                        val matchedKey = droMap.entries.find { it.value == selectedName }?.key
                        if (matchedKey != null) {
                            rawDROMode = matchedKey
                        }
                    }
                )*/
            }

            SettingsSection(
                title = stringResource(R.string.lut_selector_baseline_tab),
                isExpandable = true,
                isExpanded = expandBaseline,
                onToggleExpand = { expandBaseline = !expandBaseline }
            ) {
                RawBaselineColorCorrectionSelector(
                    title = stringResource(R.string.settings_baseline_jpg_title),
                    selectedLutId = jpgBaselineLutId,
                    availableLuts = availableLuts,
                    thumbnail = null,
                    onSelectLut = { jpgBaselineLutId = it },
                    onEditRecipe = { editBaselineRecipe(it, LutEditorTarget.BASELINE_JPG) }
                )

                HorizontalDivider(color = Color.White.copy(alpha = 0.05f), modifier = Modifier.padding(vertical = 8.dp))

                RawBaselineColorCorrectionSelector(
                    title = stringResource(R.string.settings_baseline_raw_title),
                    selectedLutId = rawBaselineLutId,
                    availableLuts = availableLuts,
                    thumbnail = null,
                    onSelectLut = { rawBaselineLutId = it },
                    onEditRecipe = { editBaselineRecipe(it, LutEditorTarget.BASELINE_RAW) }
                )

                HorizontalDivider(color = Color.White.copy(alpha = 0.05f), modifier = Modifier.padding(vertical = 8.dp))

                RawBaselineColorCorrectionSelector(
                    title = stringResource(R.string.settings_baseline_phantom_title),
                    selectedLutId = phantomBaselineLutId,
                    availableLuts = availableLuts,
                    thumbnail = null,
                    onSelectLut = { phantomBaselineLutId = it },
                    onEditRecipe = { editBaselineRecipe(it, LutEditorTarget.BASELINE_PHANTOM) }
                )
            }
        }
    }
}

@Composable
fun borderStroke(width: androidx.compose.ui.unit.Dp, color: Color) =
    androidx.compose.foundation.BorderStroke(width, color)
