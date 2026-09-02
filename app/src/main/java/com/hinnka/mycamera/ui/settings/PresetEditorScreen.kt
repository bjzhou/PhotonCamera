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
import com.hinnka.mycamera.ui.components.LutSelector
import com.hinnka.mycamera.ui.components.CurveChannel
import com.hinnka.mycamera.raw.HncsFilmCurveMode
import com.hinnka.mycamera.raw.RawProfileToneMapMode
import com.hinnka.mycamera.raw.RawRenderingEngine
import com.hinnka.mycamera.raw.RawDenoiseDefaults
import com.hinnka.mycamera.raw.RawSharpeningDefaults
import com.hinnka.mycamera.raw.MeteringSystem
import com.hinnka.mycamera.raw.RawAdaptiveExposureMode
import com.hinnka.mycamera.processor.DenoiseStrength
import com.hinnka.mycamera.raw.HncsProfileManager
import com.hinnka.mycamera.raw.SpectralFilmUiInfo
import com.hinnka.mycamera.ui.components.FrameSelector
import com.hinnka.mycamera.ui.components.RawBaselineColorCorrectionSelector
import com.hinnka.mycamera.ui.components.RawDcpSelector
import com.hinnka.mycamera.ui.components.RawAdaptiveExposureModeSetting
import com.hinnka.mycamera.ui.components.SliderSettingItem
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
    val context = androidx.compose.ui.platform.LocalContext.current
    val availableHncsProfiles = remember(context) {
        HncsProfileManager(context.applicationContext).getAvailableProfiles()
    }
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
    var useRaw by remember {
        mutableStateOf(sourcePreset?.let { it.useRaw || it.useRawMax } ?: false)
    }
    var useJpgMax by remember { mutableStateOf(sourcePreset?.useJpgMax ?: false) }
    var ultraHdrGainMapEnabled by remember {
        mutableStateOf(sourcePreset?.ultraHdrGainMapEnabled ?: false)
    }
    var frameId by remember { mutableStateOf(sourcePreset?.frameId) }

    // Quick RAW 参数
    var rawDcpId by remember { mutableStateOf(sourcePreset?.rawDcpId) }
    var rawDcpIdsByLens by remember { mutableStateOf(sourcePreset?.rawDcpIdsByLens ?: emptyMap()) }
    var rawHncsProfileId by remember { mutableStateOf(sourcePreset?.rawHncsProfileId) }
    var rawSharpening by remember {
        mutableStateOf(
            sourcePreset?.rawSharpening ?: RawSharpeningDefaults.DEFAULT_STRENGTH
        )
    }
    var rawMaxSharpening by remember {
        mutableStateOf(
            sourcePreset?.rawMaxSharpening ?: RawSharpeningDefaults.DEFAULT_STRENGTH
        )
    }
    var rawNoiseReduction by remember {
        mutableStateOf(sourcePreset?.rawNoiseReduction ?: RawDenoiseDefaults.RAW_LUMA_STRENGTH)
    }
    var rawChromaNoiseReduction by remember {
        mutableStateOf(
            sourcePreset?.rawChromaNoiseReduction ?: RawDenoiseDefaults.RAW_CHROMA_STRENGTH
        )
    }
    var rawMaxNoiseReduction by remember {
        mutableStateOf(
            sourcePreset?.rawMaxNoiseReduction ?: RawDenoiseDefaults.RAW_MAX_LUMA_STRENGTH
        )
    }
    var rawMaxChromaNoiseReduction by remember {
        mutableStateOf(
            sourcePreset?.rawMaxChromaNoiseReduction
                ?: RawDenoiseDefaults.RAW_MAX_CHROMA_STRENGTH
        )
    }
    var rawExposureCompensation by remember {
        mutableStateOf(sourcePreset?.rawExposureCompensation ?: 0f)
    }
    var rawAdaptiveExposureMode by remember {
        mutableStateOf(
            RawAdaptiveExposureMode.resolve(
                usePhotonHdr = sourcePreset?.rawPhotonHdr ?: false,
                useLegacyAutoExposure = sourcePreset?.rawAutoExposure ?: true,
            )
        )
    }
    var rawHighlightsAdjustment by remember {
        mutableStateOf(sourcePreset?.rawHighlightsAdjustment ?: 0f)
    }
    var rawShadowsAdjustment by remember {
        mutableStateOf(sourcePreset?.rawShadowsAdjustment ?: 0f)
    }
    var rawBlackPointCorrection by remember {
        mutableStateOf(sourcePreset?.rawBlackPointCorrection ?: 0f)
    }
    var rawWhitePointCorrection by remember {
        mutableStateOf(sourcePreset?.rawWhitePointCorrection ?: 0f)
    }
    val rawHncsFilmCurveMode =
        sourcePreset?.rawHncsFilmCurveMode ?: HncsFilmCurveMode.Standard.persistedValue
    var rawRenderingEngine by remember {
        mutableStateOf(RawRenderingEngine.fromPersistedName(sourcePreset?.rawRenderingEngine))
    }
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
    var showEditSheet by remember { mutableStateOf(false) }
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
            useJpgMax = useJpgMax,
            useRawMax = useRaw,
            ultraHdrGainMapEnabled = ultraHdrGainMapEnabled,
            frameId = frameId,
            rawDcpId = rawDcpId,
            rawDcpIdsByLens = rawDcpIdsByLens,
            rawHncsProfileId = rawHncsProfileId,
            rawHncsFilmCurveMode = rawHncsFilmCurveMode,
            rawRenderingEngine = rawRenderingEngine.name,
            rawSharpening = rawSharpening,
            rawMaxSharpening = rawMaxSharpening,
            rawNoiseReduction = rawNoiseReduction,
            rawChromaNoiseReduction = rawChromaNoiseReduction,
            rawMaxNoiseReduction = rawMaxNoiseReduction,
            rawMaxChromaNoiseReduction = rawMaxChromaNoiseReduction,
            rawExposureCompensation = rawExposureCompensation,
            rawAutoExposure = rawAdaptiveExposureMode.usesLegacyAutoExposure,
            rawHighlightsAdjustment = rawHighlightsAdjustment,
            rawShadowsAdjustment = rawShadowsAdjustment,
            rawBlackPointCorrection = rawBlackPointCorrection,
            rawWhitePointCorrection = rawWhitePointCorrection,
            rawOppoMasterToneMap = rawOppoMasterToneMap,
            rawPhotonHdr = rawAdaptiveExposureMode.usesPhotonHdr,
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
                LutSelector(
                    availableLuts = availableLuts,
                    currentLutId = selectedLutId,
                    thumbnail = null,
                    onLutSelected = { selectedLutId = it },
                    modifier = Modifier.fillMaxWidth()
                )
            }

            SettingsSection(title = stringResource(R.string.edit), isExpandable = false) {
                OutlinedButton(
                    onClick = { showEditSheet = true },
                    modifier = Modifier.fillMaxWidth(),
                    colors = ButtonDefaults.outlinedButtonColors(contentColor = Color.White),
                    border = androidx.compose.foundation.BorderStroke(
                        1.dp,
                        Color.White.copy(alpha = 0.18f)
                    )
                ) {
                    Text(
                        text = stringResource(R.string.edit_color_and_effects),
                        fontSize = 13.sp
                    )
                }
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
                    title = stringResource(R.string.settings_use_jpg_max),
                    checked = useJpgMax,
                    onCheckedChange = {
                        useJpgMax = it
                        if (it) {
                            useRaw = false
                        }
                    }
                )

            }

            if (showEditSheet) {
                ModalBottomSheet(
                    onDismissRequest = { showEditSheet = false },
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
                        showLutIntensity = true,
                        currentEffects = effects,
                        onEffectsChange = { effects = it },
                        modifier = Modifier
                            .fillMaxWidth()
                            .navigationBarsPadding()
                    )
                }
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
                title = stringResource(R.string.settings_professional_parameters),
                isExpandable = true,
                isExpanded = expandQuickRaw,
                onToggleExpand = { expandQuickRaw = !expandQuickRaw }
            ) {
                SwitchSettingItem(
                    title = stringResource(R.string.capture_mode_professional),
                    checked = useRaw,
                    onCheckedChange = {
                        useRaw = it
                        if (it) {
                            useJpgMax = false
                        }
                    }
                )

                HorizontalDivider(color = Color.White.copy(alpha = 0.05f), modifier = Modifier.padding(vertical = 8.dp))

                SwitchSettingItem(
                    title = stringResource(R.string.settings_ultra_hdr_gain_map),
                    description = stringResource(R.string.settings_ultra_hdr_gain_map_description),
                    checked = ultraHdrGainMapEnabled,
                    onCheckedChange = { ultraHdrGainMapEnabled = it },
                    enabled = useRaw,
                )

                HorizontalDivider(color = Color.White.copy(alpha = 0.05f), modifier = Modifier.padding(vertical = 8.dp))

                SliderSettingItem(
                    title = stringResource(R.string.settings_raw_default_sharpening),
                    description = stringResource(
                        R.string.settings_raw_default_sharpening_description
                    ),
                    value = rawSharpening,
                    valueRange = 0f..1f,
                    resetValue = RawSharpeningDefaults.DEFAULT_STRENGTH,
                    onValueChange = { rawSharpening = it },
                )

                HorizontalDivider(color = Color.White.copy(alpha = 0.05f), modifier = Modifier.padding(vertical = 8.dp))

                RawAdaptiveExposureModeSetting(
                    mode = rawAdaptiveExposureMode,
                    onModeChange = { rawAdaptiveExposureMode = it },
                )

                SliderSettingItem(
                    title = stringResource(R.string.settings_raw_exposure_compensation),
                    value = rawExposureCompensation,
                    valueRange = MeteringSystem.RAW_EXPOSURE_MIN_EV..MeteringSystem.RAW_EXPOSURE_MAX_EV,
                    resetValue = 0f,
                    onValueChange = { rawExposureCompensation = it },
                )

                SliderSettingItem(
                    title = stringResource(R.string.settings_raw_highlights_adjustment),
                    value = rawHighlightsAdjustment,
                    valueRange = -1f..1f,
                    resetValue = 0f,
                    onValueChange = { rawHighlightsAdjustment = it },
                )

                SliderSettingItem(
                    title = stringResource(R.string.settings_raw_shadows_adjustment),
                    value = rawShadowsAdjustment,
                    valueRange = -1f..1f,
                    resetValue = 0f,
                    onValueChange = { rawShadowsAdjustment = it },
                )

                SliderSettingItem(
                    title = stringResource(R.string.settings_raw_blacks_adjustment),
                    value = rawBlackPointCorrection,
                    valueRange = -1f..1f,
                    resetValue = 0f,
                    onValueChange = { rawBlackPointCorrection = it },
                )

                SliderSettingItem(
                    title = stringResource(R.string.settings_raw_whites_adjustment),
                    value = rawWhitePointCorrection,
                    valueRange = -1f..1f,
                    resetValue = 0f,
                    onValueChange = { rawWhitePointCorrection = it },
                )

                HorizontalDivider(color = Color.White.copy(alpha = 0.05f), modifier = Modifier.padding(vertical = 8.dp))

                SliderSettingItem(
                    title = stringResource(R.string.settings_raw_default_luma_denoise),
                    description = stringResource(
                        R.string.settings_raw_default_luma_denoise_description
                    ),
                    value = rawNoiseReduction,
                    valueRange = DenoiseStrength.valueRange,
                    resetValue = RawDenoiseDefaults.RAW_LUMA_STRENGTH,
                    onValueChange = { rawNoiseReduction = it },
                )

                HorizontalDivider(color = Color.White.copy(alpha = 0.05f), modifier = Modifier.padding(vertical = 8.dp))

                SliderSettingItem(
                    title = stringResource(R.string.settings_raw_default_chroma_denoise),
                    description = stringResource(
                        R.string.settings_raw_default_chroma_denoise_description
                    ),
                    value = rawChromaNoiseReduction,
                    valueRange = DenoiseStrength.valueRange,
                    resetValue = RawDenoiseDefaults.RAW_CHROMA_STRENGTH,
                    onValueChange = { rawChromaNoiseReduction = it },
                )

                HorizontalDivider(color = Color.White.copy(alpha = 0.05f), modifier = Modifier.padding(vertical = 8.dp))

                SliderSettingItem(
                    title = stringResource(R.string.settings_raw_max_default_sharpening),
                    description = stringResource(
                        R.string.settings_raw_max_default_sharpening_description
                    ),
                    value = rawMaxSharpening,
                    valueRange = 0f..1f,
                    resetValue = RawSharpeningDefaults.DEFAULT_STRENGTH,
                    onValueChange = { rawMaxSharpening = it },
                )

                HorizontalDivider(color = Color.White.copy(alpha = 0.05f), modifier = Modifier.padding(vertical = 8.dp))

                SliderSettingItem(
                    title = stringResource(R.string.settings_raw_max_default_luma_denoise),
                    description = stringResource(
                        R.string.settings_raw_max_default_luma_denoise_description
                    ),
                    value = rawMaxNoiseReduction,
                    valueRange = DenoiseStrength.valueRange,
                    resetValue = RawDenoiseDefaults.RAW_MAX_LUMA_STRENGTH,
                    onValueChange = { rawMaxNoiseReduction = it },
                )

                HorizontalDivider(color = Color.White.copy(alpha = 0.05f), modifier = Modifier.padding(vertical = 8.dp))

                SliderSettingItem(
                    title = stringResource(R.string.settings_raw_max_default_chroma_denoise),
                    description = stringResource(
                        R.string.settings_raw_max_default_chroma_denoise_description
                    ),
                    value = rawMaxChromaNoiseReduction,
                    valueRange = DenoiseStrength.valueRange,
                    resetValue = RawDenoiseDefaults.RAW_MAX_CHROMA_STRENGTH,
                    onValueChange = { rawMaxChromaNoiseReduction = it },
                )

                HorizontalDivider(color = Color.White.copy(alpha = 0.05f), modifier = Modifier.padding(vertical = 8.dp))

                val engineNames = RawRenderingEngine.entries.associateWith { engine ->
                    when (engine) {
                        RawRenderingEngine.AdobeCurve -> stringResource(R.string.settings_raw_color_engine_adobe_curve)
                        RawRenderingEngine.AgX -> stringResource(R.string.settings_raw_color_engine_agx)
                        RawRenderingEngine.DarktableSigmoid -> stringResource(R.string.settings_raw_color_engine_darktable_sigmoid)
                        RawRenderingEngine.DarktableFilmic -> stringResource(R.string.settings_raw_color_engine_darktable_filmic)
                        RawRenderingEngine.Spektrafilm -> stringResource(R.string.settings_raw_color_engine_spectral_film)
                        RawRenderingEngine.HncsCcm -> stringResource(
                            R.string.settings_raw_color_engine_hncs_ccm
                        )
                        RawRenderingEngine.HncsLut -> stringResource(
                            R.string.settings_raw_color_engine_hncs_lut
                        )
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

                        val toneMapLabels = mapOf(
                            RawProfileToneMapMode.Default to stringResource(R.string.settings_raw_profile_tone_map_default),
                            RawProfileToneMapMode.OppoMaster to stringResource(R.string.settings_raw_profile_tone_map_oppo_master),
                        )
                        val selectedToneMapMode = when {
                            rawOppoMasterToneMap -> RawProfileToneMapMode.OppoMaster
                            else -> RawProfileToneMapMode.Default
                        }
                        DropdownSettingItem(
                            title = stringResource(R.string.settings_raw_profile_tone_map),
                            description = stringResource(R.string.settings_raw_profile_tone_map_description),
                            value = toneMapLabels[selectedToneMapMode].orEmpty(),
                            options = RawProfileToneMapMode.values().mapNotNull { toneMapLabels[it] },
                            isLoading = false,
                            onExpanded = {},
                            onOptionSelected = { selectedLabel ->
                                val selectedMode = toneMapLabels.entries
                                    .firstOrNull { it.value == selectedLabel }
                                    ?.key
                                    ?: RawProfileToneMapMode.Default
                                rawOppoMasterToneMap = selectedMode == RawProfileToneMapMode.OppoMaster
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

                AnimatedVisibility(visible = rawRenderingEngine == RawRenderingEngine.HncsLut) {
                    Column(modifier = Modifier.fillMaxWidth()) {
                        HorizontalDivider(
                            color = Color.White.copy(alpha = 0.05f),
                            modifier = Modifier.padding(vertical = 8.dp)
                        )
                        val profileNames = availableHncsProfiles.associate { profile ->
                            profile.id to profile.displayName
                        }
                        DropdownSettingItem(
                            title = stringResource(R.string.settings_raw_hncs_2d_lut),
                            description = stringResource(
                                R.string.settings_raw_hncs_profile_description
                            ),
                            value = profileNames[rawHncsProfileId].orEmpty(),
                            options = profileNames.values.toList(),
                            isLoading = false,
                            onExpanded = {},
                            onOptionSelected = { selectedName ->
                                rawHncsProfileId = profileNames.entries
                                    .firstOrNull { it.value == selectedName }
                                    ?.key
                            }
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
