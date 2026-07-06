package com.hinnka.mycamera.ui.components

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Check
import androidx.compose.material.icons.filled.Close
import androidx.compose.material.icons.filled.Delete
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.rotate
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.ui.text.font.FontWeight
import android.graphics.Bitmap
import android.hardware.camera2.CameraCharacteristics
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import com.hinnka.mycamera.R
import com.hinnka.mycamera.camera.CameraInfo
import com.hinnka.mycamera.lut.LutInfo
import com.hinnka.mycamera.raw.DcpInfo
import com.hinnka.mycamera.raw.MeteringSystem
import com.hinnka.mycamera.raw.RawCfaCorrection
import com.hinnka.mycamera.raw.RawProcessingPreferences.DROMode
import com.hinnka.mycamera.raw.RawRenderingEngine
import com.hinnka.mycamera.raw.RawToneMappingParameters
import com.hinnka.mycamera.raw.RawWhiteLevelCorrection
import com.hinnka.mycamera.raw.SpectralFilmSelection
import com.hinnka.mycamera.raw.SpectralFilmUiInfo
import com.hinnka.mycamera.raw.SpectralFilmTuning
import kotlin.math.roundToInt
import com.hinnka.mycamera.ui.icons.AppIcons

enum class RawEditPanelContentMode {
    FULL,
    QUICK,
}

data class RawDcpLensOption(
    val id: String,
    val label: String
)

@Composable
fun rawDcpLensOptions(cameras: List<CameraInfo>): List<RawDcpLensOption> {
    return cameras.map { camera ->
        val prefix = when (camera.lensFacing) {
            CameraCharacteristics.LENS_FACING_BACK -> stringResource(R.string.rear_camera)
            CameraCharacteristics.LENS_FACING_FRONT -> stringResource(R.string.front_camera)
            else -> stringResource(R.string.camera)
        }
        val focalLength = if (camera.focalLength35mmEquivalent > 0) {
            stringResource(R.string.settings_isz_lens_focal_length, camera.focalLength35mmEquivalent.roundToInt())
        } else {
            stringResource(R.string.settings_isz_lens_unknown_focal_length)
        }
        RawDcpLensOption(
            id = camera.cameraId,
            label = stringResource(R.string.settings_isz_lens_label, prefix, camera.cameraId, focalLength)
        )
    }
}

@Composable
fun RawEditPanel(
    selectedDcpId: String?,
    rawDcpIdsByLens: Map<String, String?> = emptyMap(),
    dcpLensOptions: List<RawDcpLensOption> = emptyList(),
    availableDcps: List<DcpInfo>,
    selectedBaselineLutId: String?,
    onSelectBaselineLut: (String?) -> Unit,
    onEditBaselineRecipe: (String) -> Unit,
    availableLuts: List<LutInfo>,
    thumbnail: Bitmap?,
    rawExposureCompensation: Float,
    rawAutoExposure: Boolean,
    rawHighlightsAdjustment: Float,
    rawShadowsAdjustment: Float,
    rawBlackPointCorrection: Float,
    rawWhitePointCorrection: Float,
    rawBlackLevelMode: String = RawCfaCorrection.MODE_DEFAULT,
    rawCustomBlackLevel: Float = 0f,
    rawWhiteLevelMode: String = RawWhiteLevelCorrection.MODE_DEFAULT,
    rawCfaCorrectionMode: String = RawCfaCorrection.MODE_DEFAULT,
    rawRenderingEngine: RawRenderingEngine,
    rawToneMappingParameters: RawToneMappingParameters = RawToneMappingParameters.DEFAULT,
    spectralFilmSelection: SpectralFilmSelection?,
    spectralFilmPrint: String?,
    onSelectDcp: (String?) -> Unit,
    onRawDcpIdsByLensChange: ((Map<String, String?>) -> Unit)? = null,
    onImportDcp: () -> Unit,
    onDeleteDcp: (DcpInfo) -> Unit,
    onRawExposureCompensationChange: (Float) -> Unit,
    onRawAutoExposureChange: (Boolean) -> Unit,
    onRawHighlightsAdjustmentChange: (Float) -> Unit,
    onRawShadowsAdjustmentChange: (Float) -> Unit,
    onRawBlackPointCorrectionChange: (Float) -> Unit,
    onRawWhitePointCorrectionChange: (Float) -> Unit,
    onRawBlackLevelModeChange: (String) -> Unit = {},
    onRawCustomBlackLevelChange: (Float) -> Unit = {},
    onRawWhiteLevelModeChange: (String) -> Unit = {},
    onRawCfaCorrectionModeChange: (String) -> Unit = {},
    onRawColorEngineChange: (RawRenderingEngine) -> Unit,
    onRawToneMappingParametersChange: (RawToneMappingParameters) -> Unit = {},
    onSpectralFilmSelectionChange: (SpectralFilmSelection?) -> Unit,
    onSpectralFilmPrintChange: (String?) -> Unit,
    onAdjustmentStart: () -> Unit,
    onAdjustmentEnd: () -> Unit,
    onRawExposureCompensationReset: ((Float) -> Unit)? = null,
    onOpenBaselineLutSheet: (() -> Unit)? = null,
    showAutoExposureControl: Boolean = true,
    showDngMetadataControls: Boolean = false,
    contentMode: RawEditPanelContentMode = RawEditPanelContentMode.FULL,
    modifier: Modifier = Modifier
) {
    Column(
        modifier = modifier
            .fillMaxWidth()
            .padding(vertical = 16.dp),
        verticalArrangement = Arrangement.SpaceBetween
    ) {
        RawRenderingEngineSelector(
            selectedEngine = rawRenderingEngine,
            onSelectEngine = onRawColorEngineChange
        )
        Spacer(modifier = Modifier.height(16.dp))

        if (rawRenderingEngine == RawRenderingEngine.AdobeCurve) {
            RawDcpSelector(
                selectedDcpId = selectedDcpId,
                rawDcpIdsByLens = rawDcpIdsByLens,
                lensOptions = dcpLensOptions,
                availableDcps = availableDcps,
                onSelectDcp = onSelectDcp,
                onRawDcpIdsByLensChange = onRawDcpIdsByLensChange,
                onImportDcp = onImportDcp,
                onDeleteDcp = onDeleteDcp
            )
            Spacer(modifier = Modifier.height(16.dp))
            RawProfileToneMapSwitches(
                params = rawToneMappingParameters.normalized(),
                onParamsChange = onRawToneMappingParametersChange,
                onAdjustmentEnd = onAdjustmentEnd
            )
            Spacer(modifier = Modifier.height(16.dp))
        }

        if (rawRenderingEngine == RawRenderingEngine.Spektrafilm) {
            val isPositiveFilm = SpectralFilmUiInfo.isPositiveFilm(spectralFilmSelection?.id)
            RawSpectralFilmSelector(
                selectedFilm = spectralFilmSelection?.id,
                onSelectFilm = { film ->
                    onSpectralFilmSelectionChange(film?.let { SpectralFilmSelection(it) })
                }
            )
            if (!isPositiveFilm) {
                Spacer(modifier = Modifier.height(16.dp))
                RawSpectralPrintSelector(
                    selectedPrint = spectralFilmPrint,
                    onSelectPrint = onSpectralFilmPrintChange
                )
                Spacer(modifier = Modifier.height(16.dp))
            } else {
                Spacer(modifier = Modifier.height(16.dp))
            }
        }

        if (contentMode != RawEditPanelContentMode.QUICK) {
            RawToneMappingControls(
                rawRenderingEngine = rawRenderingEngine,
                params = rawToneMappingParameters.normalized(),
                spectralFilmSelection = spectralFilmSelection,
                onParamsChange = onRawToneMappingParametersChange,
                onSpectralFilmSelectionChange = onSpectralFilmSelectionChange,
                onAdjustmentStart = onAdjustmentStart,
                onAdjustmentEnd = onAdjustmentEnd
            )
            if (showAutoExposureControl) {
                RawSwitchSettingItem(
                    title = stringResource(R.string.settings_raw_auto_exposure),
                    description = stringResource(R.string.settings_raw_auto_exposure_description),
                    checked = rawAutoExposure,
                    onCheckedChange = onRawAutoExposureChange
                )
            }
            SliderSettingItem(
                title = stringResource(R.string.settings_raw_exposure_compensation),
                value = rawExposureCompensation,
                valueRange = MeteringSystem.RAW_EXPOSURE_MIN_EV..MeteringSystem.RAW_EXPOSURE_MAX_EV,
                resetValue = 0f,
                onResetValue = onRawExposureCompensationReset,
                onValueChange = {
                    onAdjustmentStart()
                    onRawExposureCompensationChange(it)
                },
                onValueChangeFinished = onAdjustmentEnd
            )
            SliderSettingItem(
                title = stringResource(R.string.settings_raw_highlights_adjustment),
                value = rawHighlightsAdjustment,
                valueRange = -1f..1f,
                resetValue = 0f,
                onValueChange = {
                    onAdjustmentStart()
                    onRawHighlightsAdjustmentChange(it)
                },
                onValueChangeFinished = onAdjustmentEnd
            )
            SliderSettingItem(
                title = stringResource(R.string.settings_raw_shadows_adjustment),
                value = rawShadowsAdjustment,
                valueRange = -1f..1f,
                resetValue = 0f,
                onValueChange = {
                    onAdjustmentStart()
                    onRawShadowsAdjustmentChange(it)
                },
                onValueChangeFinished = onAdjustmentEnd
            )
            SliderSettingItem(
                title = stringResource(R.string.settings_raw_blacks_adjustment),
                value = rawBlackPointCorrection,
                valueRange = -1f..1f,
                resetValue = 0f,
                onValueChange = {
                    onAdjustmentStart()
                    onRawBlackPointCorrectionChange(it)
                },
                onValueChangeFinished = onAdjustmentEnd
            )
            SliderSettingItem(
                title = stringResource(R.string.settings_raw_whites_adjustment),
                value = rawWhitePointCorrection,
                valueRange = -1f..1f,
                resetValue = 0f,
                onValueChange = {
                    onAdjustmentStart()
                    onRawWhitePointCorrectionChange(it)
                },
                onValueChangeFinished = onAdjustmentEnd
            )
            if (showDngMetadataControls) {
                RawChoiceSetting(
                    title = stringResource(R.string.settings_raw_black_level_correction),
                    description = stringResource(R.string.settings_raw_black_level_correction_description),
                    levels = listOf(
                        RawCfaCorrection.MODE_DEFAULT to stringResource(R.string.settings_black_level_default),
                        "0" to "0",
                        "16" to "16",
                        "64" to "64",
                        "256" to "256",
                        "512" to "512",
                        "Custom" to stringResource(R.string.settings_black_level_custom)
                    ),
                    currentLevel = rawBlackLevelMode,
                    onLevelSelected = onRawBlackLevelModeChange
                )
                if (rawBlackLevelMode == "Custom") {
                    RawNumberInputSetting(
                        title = stringResource(R.string.settings_black_level_custom),
                        value = rawCustomBlackLevel,
                        onValueChange = onRawCustomBlackLevelChange
                    )
                }
                RawChoiceSetting(
                    title = stringResource(R.string.settings_raw_white_level_correction),
                    description = stringResource(R.string.settings_raw_white_level_correction_description),
                    levels = listOf(
                        RawWhiteLevelCorrection.MODE_DEFAULT to stringResource(R.string.settings_white_level_default),
                        RawWhiteLevelCorrection.MODE_RAW10 to stringResource(R.string.settings_white_level_raw10),
                        RawWhiteLevelCorrection.MODE_RAW12 to stringResource(R.string.settings_white_level_raw12),
                        RawWhiteLevelCorrection.MODE_RAW14 to stringResource(R.string.settings_white_level_raw14),
                        RawWhiteLevelCorrection.MODE_RAW_SENSOR to stringResource(R.string.settings_white_level_raw_sensor)
                    ),
                    currentLevel = rawWhiteLevelMode,
                    onLevelSelected = onRawWhiteLevelModeChange
                )
                RawChoiceSetting(
                    title = stringResource(R.string.settings_raw_cfa_correction),
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
                    onLevelSelected = onRawCfaCorrectionModeChange
                )
            }
        }

        RawBaselineColorCorrectionSelector(
            selectedLutId = selectedBaselineLutId,
            availableLuts = availableLuts,
            thumbnail = thumbnail,
            onSelectLut = onSelectBaselineLut,
            onEditRecipe = onEditBaselineRecipe,
            onOpenSheet = onOpenBaselineLutSheet
        )
        Spacer(modifier = Modifier.height(16.dp))
    }
}

@Composable
private fun RawChoiceSetting(
    title: String,
    description: String,
    levels: List<Pair<String, String>>,
    currentLevel: String,
    onLevelSelected: (String) -> Unit,
    modifier: Modifier = Modifier
) {
    Column(
        modifier = modifier
            .fillMaxWidth()
            .padding(vertical = 8.dp)
    ) {
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
        Spacer(modifier = Modifier.height(12.dp))
        FlowRow(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(8.dp),
            verticalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            levels.forEach { (level, label) ->
                val selected = currentLevel == level
                Box(
                    modifier = Modifier
                        .height(36.dp)
                        .clip(RoundedCornerShape(8.dp))
                        .background(if (selected) Color(0xFFFF6B35) else Color.White.copy(alpha = 0.1f))
                        .clickable { onLevelSelected(level) }
                        .padding(horizontal = 12.dp),
                    contentAlignment = Alignment.Center
                ) {
                    Text(
                        text = label,
                        color = Color.White,
                        fontSize = 12.sp,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis
                    )
                }
            }
        }
    }
}

@Composable
private fun RawNumberInputSetting(
    title: String,
    value: Float,
    onValueChange: (Float) -> Unit,
    modifier: Modifier = Modifier
) {
    var text by remember(value) {
        mutableStateOf(if (value == 0f) "" else value.toString())
    }

    Column(
        modifier = modifier
            .fillMaxWidth()
            .padding(vertical = 8.dp)
    ) {
        Text(
            text = title,
            color = Color.White,
            fontSize = 16.sp,
            fontWeight = FontWeight.Normal
        )
        Spacer(modifier = Modifier.height(8.dp))
        OutlinedTextField(
            value = text,
            onValueChange = { input ->
                text = input
                input.toFloatOrNull()?.let(onValueChange)
            },
            singleLine = true,
            textStyle = LocalTextStyle.current.copy(color = Color.White),
            modifier = Modifier.fillMaxWidth(),
            colors = OutlinedTextFieldDefaults.colors(
                focusedTextColor = Color.White,
                unfocusedTextColor = Color.White,
                cursorColor = Color.White,
                focusedBorderColor = Color(0xFFFF6B35),
                unfocusedBorderColor = Color.White.copy(alpha = 0.25f),
                focusedContainerColor = Color.Transparent,
                unfocusedContainerColor = Color.Transparent
            )
        )
    }
}

@Composable
private fun RawProfileToneMapSwitches(
    params: RawToneMappingParameters,
    onParamsChange: (RawToneMappingParameters) -> Unit,
    onAdjustmentEnd: () -> Unit
) {
    RawSwitchSettingItem(
        title = stringResource(R.string.settings_raw_google_pixel_tone_map),
        description = stringResource(R.string.settings_raw_google_pixel_tone_map_description),
        checked = params.useGooglePixelToneMap,
        onCheckedChange = { enabled ->
            onParamsChange(params.withGooglePixelToneMap(enabled))
            onAdjustmentEnd()
        }
    )
    RawSwitchSettingItem(
        title = stringResource(R.string.settings_raw_oppo_master_tone_map),
        description = stringResource(R.string.settings_raw_oppo_master_tone_map_description),
        checked = params.useOppoMasterToneMap,
        onCheckedChange = { enabled ->
            onParamsChange(params.withOppoMasterToneMap(enabled))
            onAdjustmentEnd()
        }
    )
}

@Composable
private fun RawToneMappingControls(
    rawRenderingEngine: RawRenderingEngine,
    params: RawToneMappingParameters,
    spectralFilmSelection: SpectralFilmSelection?,
    onParamsChange: (RawToneMappingParameters) -> Unit,
    onSpectralFilmSelectionChange: (SpectralFilmSelection?) -> Unit,
    onAdjustmentStart: () -> Unit,
    onAdjustmentEnd: () -> Unit
) {
    var localSpectralFilmTuning by remember(spectralFilmSelection?.id) {
        mutableStateOf(spectralFilmSelection?.tuning ?: SpectralFilmTuning.DEFAULT)
    }
    var spectralFilmTuningExpanded by remember(spectralFilmSelection?.id) { mutableStateOf(false) }

    LaunchedEffect(spectralFilmSelection) {
        localSpectralFilmTuning = spectralFilmSelection?.tuning ?: SpectralFilmTuning.DEFAULT
    }

    fun updateParams(value: RawToneMappingParameters) {
        onAdjustmentStart()
        onParamsChange(value.normalized())
    }

    fun updateSpectralFilmTuning(value: SpectralFilmTuning) {
        onAdjustmentStart()
        localSpectralFilmTuning = value
    }

    fun commitSpectralFilmDensityGains() {
        val selection = spectralFilmSelection ?: return
        onSpectralFilmSelectionChange(selection.copy(tuning = localSpectralFilmTuning.normalized()))
        onAdjustmentEnd()
    }

    fun formatEv(value: Float): String = String.format("%.2f EV", value)
    fun formatPower(value: Float): String = String.format("%.2f", value)

    when (rawRenderingEngine) {
        RawRenderingEngine.AdobeCurve -> Unit

        RawRenderingEngine.AgX -> {
            SliderSettingItem(
                title = stringResource(R.string.settings_raw_agx_white_relative_exposure),
                value = params.agxWhiteRelativeExposure,
                valueRange = RawToneMappingParameters.AGX_WHITE_RELATIVE_EXPOSURE_MIN..
                    RawToneMappingParameters.AGX_WHITE_RELATIVE_EXPOSURE_MAX,
                resetValue = RawToneMappingParameters.AGX_WHITE_RELATIVE_EXPOSURE_DEFAULT,
                valueTextFormatter = ::formatEv,
                onValueChange = {
                    updateParams(params.copy(agxWhiteRelativeExposure = it))
                },
                onValueChangeFinished = onAdjustmentEnd
            )
            SliderSettingItem(
                title = stringResource(R.string.settings_raw_agx_black_relative_exposure),
                value = params.agxBlackRelativeExposure,
                valueRange = RawToneMappingParameters.AGX_BLACK_RELATIVE_EXPOSURE_MIN..
                    RawToneMappingParameters.AGX_BLACK_RELATIVE_EXPOSURE_MAX,
                resetValue = RawToneMappingParameters.AGX_BLACK_RELATIVE_EXPOSURE_DEFAULT,
                valueTextFormatter = ::formatEv,
                onValueChange = {
                    updateParams(params.copy(agxBlackRelativeExposure = it))
                },
                onValueChangeFinished = onAdjustmentEnd
            )
            SliderSettingItem(
                title = stringResource(R.string.settings_raw_agx_shoulder),
                value = params.agxShoulder,
                valueRange = RawToneMappingParameters.AGX_SHOULDER_MIN..
                    RawToneMappingParameters.AGX_SHOULDER_MAX,
                resetValue = RawToneMappingParameters.AGX_SHOULDER_DEFAULT,
                valueTextFormatter = ::formatPower,
                onValueChange = {
                    updateParams(params.copy(agxShoulder = it))
                },
                onValueChangeFinished = onAdjustmentEnd
            )
            SliderSettingItem(
                title = stringResource(R.string.settings_raw_agx_toe),
                value = params.agxToe,
                valueRange = RawToneMappingParameters.AGX_TOE_MIN..
                    RawToneMappingParameters.AGX_TOE_MAX,
                resetValue = RawToneMappingParameters.AGX_TOE_DEFAULT,
                valueTextFormatter = ::formatPower,
                onValueChange = {
                    updateParams(params.copy(agxToe = it))
                },
                onValueChangeFinished = onAdjustmentEnd
            )
            Spacer(modifier = Modifier.height(8.dp))
        }

        RawRenderingEngine.DarktableFilmic -> {
            SliderSettingItem(
                title = stringResource(R.string.settings_raw_filmic_white_relative_exposure),
                value = params.filmicWhiteRelativeExposure,
                valueRange = RawToneMappingParameters.FILMIC_WHITE_RELATIVE_EXPOSURE_MIN..
                    RawToneMappingParameters.FILMIC_WHITE_RELATIVE_EXPOSURE_MAX,
                resetValue = RawToneMappingParameters.FILMIC_WHITE_RELATIVE_EXPOSURE_DEFAULT,
                valueTextFormatter = ::formatEv,
                onValueChange = {
                    updateParams(params.copy(filmicWhiteRelativeExposure = it))
                },
                onValueChangeFinished = onAdjustmentEnd
            )
            SliderSettingItem(
                title = stringResource(R.string.settings_raw_filmic_black_relative_exposure),
                value = params.filmicBlackRelativeExposure,
                valueRange = RawToneMappingParameters.FILMIC_BLACK_RELATIVE_EXPOSURE_MIN..
                    RawToneMappingParameters.FILMIC_BLACK_RELATIVE_EXPOSURE_MAX,
                resetValue = RawToneMappingParameters.FILMIC_BLACK_RELATIVE_EXPOSURE_DEFAULT,
                valueTextFormatter = ::formatEv,
                onValueChange = {
                    updateParams(params.copy(filmicBlackRelativeExposure = it))
                },
                onValueChangeFinished = onAdjustmentEnd
            )
            Spacer(modifier = Modifier.height(8.dp))
        }

        RawRenderingEngine.Spektrafilm -> {
            if (!SpectralFilmUiInfo.isPositiveFilm(spectralFilmSelection?.id)) {
                RawSpectralFilmTuningHeader(
                    expanded = spectralFilmTuningExpanded,
                    onClick = { spectralFilmTuningExpanded = !spectralFilmTuningExpanded }
                )
                if (spectralFilmTuningExpanded) {
                    SliderSettingItem(
                        title = stringResource(R.string.settings_spectral_film_c_density_gain),
                        value = localSpectralFilmTuning.cDensityGain,
                        valueRange = SpectralFilmTuning.MIN_DENSITY_GAIN..SpectralFilmTuning.MAX_DENSITY_GAIN,
                        resetValue = 1f,
                        valueTextFormatter = { "${(it * 100f).roundToInt()}%" },
                        onValueChange = {
                            updateSpectralFilmTuning(localSpectralFilmTuning.copy(cDensityGain = it))
                        },
                        onValueChangeFinished = ::commitSpectralFilmDensityGains
                    )
                    SliderSettingItem(
                        title = stringResource(R.string.settings_spectral_film_m_density_gain),
                        value = localSpectralFilmTuning.mDensityGain,
                        valueRange = SpectralFilmTuning.MIN_DENSITY_GAIN..SpectralFilmTuning.MAX_DENSITY_GAIN,
                        resetValue = 1f,
                        valueTextFormatter = { "${(it * 100f).roundToInt()}%" },
                        onValueChange = {
                            updateSpectralFilmTuning(localSpectralFilmTuning.copy(mDensityGain = it))
                        },
                        onValueChangeFinished = ::commitSpectralFilmDensityGains
                    )
                    SliderSettingItem(
                        title = stringResource(R.string.settings_spectral_film_y_density_gain),
                        value = localSpectralFilmTuning.yDensityGain,
                        valueRange = SpectralFilmTuning.MIN_DENSITY_GAIN..SpectralFilmTuning.MAX_DENSITY_GAIN,
                        resetValue = 1f,
                        valueTextFormatter = { "${(it * 100f).roundToInt()}%" },
                        onValueChange = {
                            updateSpectralFilmTuning(localSpectralFilmTuning.copy(yDensityGain = it))
                        },
                        onValueChangeFinished = ::commitSpectralFilmDensityGains
                    )
                }
                Spacer(modifier = Modifier.height(8.dp))
            }
        }

        else -> Unit
    }
}

@Composable
private fun RawSpectralFilmTuningHeader(
    expanded: Boolean,
    onClick: () -> Unit
) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .clip(RoundedCornerShape(8.dp))
            .clickable(onClick = onClick)
            .padding(vertical = 10.dp),
        verticalAlignment = Alignment.CenterVertically
    ) {
        Column(modifier = Modifier.weight(1f)) {
            Text(
                text = stringResource(R.string.settings_spectral_film_tuning),
                color = Color.White,
                fontSize = 16.sp,
                fontWeight = FontWeight.Normal
            )
            Spacer(modifier = Modifier.height(4.dp))
            Text(
                text = stringResource(R.string.settings_spectral_film_tuning_description),
                color = Color.White.copy(alpha = 0.55f),
                fontSize = 13.sp,
                lineHeight = 18.sp
            )
        }
        Icon(
            imageVector = AppIcons.ChevronRight,
            contentDescription = null,
            tint = Color.White.copy(alpha = 0.75f),
            modifier = Modifier
                .size(22.dp)
                .rotate(if (expanded) 90f else 0f)
        )
    }
}

@Composable
private fun RawDROModeSettingItem(
    title: String,
    description: String,
    currentMode: DROMode,
    onModeSelected: (DROMode) -> Unit,
    modifier: Modifier = Modifier
) {
    val levels = listOf(
        DROMode.OFF to stringResource(R.string.settings_dro_off),
        DROMode.DR100 to stringResource(R.string.settings_dro_dr100),
        DROMode.DR200 to stringResource(R.string.settings_dro_dr200),
        DROMode.DR400 to stringResource(R.string.settings_dro_dr400)
    )

    Column(
        modifier = modifier
            .fillMaxWidth()
            .padding(vertical = 8.dp)
    ) {
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
        Spacer(modifier = Modifier.height(12.dp))
        FlowRow(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(8.dp),
            verticalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            levels.forEach { (mode, label) ->
                val isSelected = currentMode == mode
                Box(
                    modifier = Modifier
                        .height(36.dp)
                        .clip(RoundedCornerShape(8.dp))
                        .background(
                            if (isSelected) Color(0xFFFF6B35) else Color.White.copy(alpha = 0.1f)
                        )
                        .clickable { onModeSelected(mode) },
                    contentAlignment = Alignment.Center
                ) {
                    Text(
                        text = label,
                        color = Color.White,
                        fontSize = 12.sp,
                        fontWeight = if (isSelected) FontWeight.Bold else FontWeight.Normal,
                        textAlign = TextAlign.Center,
                        modifier = Modifier
                            .padding(horizontal = 8.dp)
                            .widthIn(min = 48.dp)
                    )
                }
            }
        }
    }
}

@Composable
private fun RawSwitchSettingItem(
    title: String,
    description: String,
    checked: Boolean,
    onCheckedChange: (Boolean) -> Unit,
    modifier: Modifier = Modifier
) {
    Row(
        modifier = modifier
            .fillMaxWidth()
            .padding(vertical = 8.dp),
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
                uncheckedThumbColor = Color.Gray,
                uncheckedTrackColor = Color.White.copy(alpha = 0.2f),
                uncheckedBorderColor = Color.Transparent
            )
        )
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
private fun RawRenderingEngineSelector(
    selectedEngine: RawRenderingEngine,
    onSelectEngine: (RawRenderingEngine) -> Unit
) {
    var showSheet by remember { mutableStateOf(false) }

    Row(
        modifier = Modifier
            .fillMaxWidth()
            .clickable { showSheet = true }
            .padding(vertical = 8.dp),
        horizontalArrangement = Arrangement.SpaceBetween,
        verticalAlignment = Alignment.CenterVertically
    ) {
        Column(modifier = Modifier.weight(1f)) {
            Text(
                text = stringResource(R.string.settings_raw_color_engine),
                color = Color.White,
                fontSize = 16.sp,
                fontWeight = FontWeight.Normal
            )
            Spacer(modifier = Modifier.height(4.dp))
            Text(
                text = rawRenderingEngineName(selectedEngine),
                color = Color.White.copy(alpha = 0.6f),
                fontSize = 13.sp,
                lineHeight = 18.sp,
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

    if (showSheet) {
        ModalBottomSheet(
            onDismissRequest = { showSheet = false },
            containerColor = Color(0xFF1E1E1E),
            dragHandle = { BottomSheetDefaults.DragHandle(color = Color.White.copy(alpha = 0.2f)) }
        ) {
            Column(modifier = Modifier.fillMaxWidth().padding(horizontal = 16.dp, vertical = 8.dp)) {
                Text(
                    text = stringResource(R.string.settings_raw_color_engine),
                    color = Color.White,
                    fontSize = 20.sp,
                    fontWeight = FontWeight.Bold
                )
                Spacer(modifier = Modifier.height(16.dp))
                RawRenderingEngine.entries.forEach { engine ->
                    RawColorEngineItem(
                        name = rawRenderingEngineName(engine),
                        description = rawColorEngineDescription(engine),
                        isSelected = selectedEngine == engine,
                        onClick = {
                            onSelectEngine(engine)
                            showSheet = false
                        }
                    )
                }
                Spacer(modifier = Modifier.height(32.dp))
            }
        }
    }
}

@Composable
private fun rawRenderingEngineName(engine: RawRenderingEngine): String {
    return when (engine) {
        RawRenderingEngine.AdobeCurve -> stringResource(R.string.settings_raw_color_engine_adobe_curve)
        RawRenderingEngine.AgX -> stringResource(R.string.settings_raw_color_engine_agx)
        RawRenderingEngine.DarktableSigmoid -> stringResource(R.string.settings_raw_color_engine_darktable_sigmoid)
        RawRenderingEngine.DarktableFilmic -> stringResource(R.string.settings_raw_color_engine_darktable_filmic)
        RawRenderingEngine.Spektrafilm -> stringResource(R.string.settings_raw_color_engine_spectral_film)
    }
}

@Composable
private fun rawColorEngineDescription(engine: RawRenderingEngine): String {
    return when (engine) {
        RawRenderingEngine.AdobeCurve -> stringResource(R.string.settings_raw_color_engine_adobe_curve_description)
        RawRenderingEngine.AgX -> stringResource(R.string.settings_raw_color_engine_agx_description)
        RawRenderingEngine.DarktableSigmoid -> stringResource(R.string.settings_raw_color_engine_darktable_sigmoid_description)
        RawRenderingEngine.DarktableFilmic -> stringResource(R.string.settings_raw_color_engine_darktable_filmic_description)
        RawRenderingEngine.Spektrafilm -> stringResource(R.string.settings_raw_color_engine_spectral_film_description)
    }
}

@Composable
private fun RawColorEngineItem(
    name: String,
    description: String,
    isSelected: Boolean,
    onClick: () -> Unit
) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .clip(RoundedCornerShape(12.dp))
            .background(if (isSelected) Color(0xFFFF6B35).copy(alpha = 0.15f) else Color.Transparent)
            .clickable(onClick = onClick)
            .padding(16.dp),
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.SpaceBetween
    ) {
        Column(modifier = Modifier.weight(1f)) {
            Text(
                text = name,
                color = if (isSelected) Color(0xFFFF6B35) else Color.White,
                fontSize = 14.sp,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis
            )
            Spacer(modifier = Modifier.height(4.dp))
            Text(
                text = description,
                color = Color.White.copy(alpha = 0.55f),
                fontSize = 12.sp,
                lineHeight = 16.sp
            )
        }
        if (isSelected) {
            Spacer(modifier = Modifier.width(12.dp))
            Icon(
                imageVector = Icons.Default.Check,
                contentDescription = null,
                tint = Color(0xFFFF6B35),
                modifier = Modifier.size(20.dp)
            )
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun RawDcpSelector(
    selectedDcpId: String?,
    rawDcpIdsByLens: Map<String, String?> = emptyMap(),
    lensOptions: List<RawDcpLensOption> = emptyList(),
    availableDcps: List<DcpInfo>,
    onSelectDcp: (String?) -> Unit,
    onRawDcpIdsByLensChange: ((Map<String, String?>) -> Unit)? = null,
    onImportDcp: (() -> Unit)? = null,
    onDeleteDcp: ((DcpInfo) -> Unit)? = null
) {
    var showSheet by remember { mutableStateOf(false) }
    var pendingDeleteDcp by remember { mutableStateOf<DcpInfo?>(null) }
    var selectingUnifiedDcp by remember { mutableStateOf(false) }
    var selectingLensId by remember { mutableStateOf<String?>(null) }
    val supportsLensConfiguration = lensOptions.isNotEmpty() && onRawDcpIdsByLensChange != null
    val unifiedDcpName = dcpDisplayName(selectedDcpId, availableDcps)
    val selectedName = unifiedDcpName
    val scopeName = when {
        supportsLensConfiguration && rawDcpIdsByLens.isNotEmpty() -> {
            stringResource(R.string.raw_dcp_summary_with_overrides, rawDcpIdsByLens.size)
        }
        supportsLensConfiguration -> stringResource(R.string.raw_dcp_scope_all_lenses)
        else -> null
    }

    fun selectDcp(dcpId: String?) {
        onSelectDcp(dcpId)
    }

    fun setLensDcp(lensId: String, dcpId: String?) {
        val updated = rawDcpIdsByLens.toMutableMap()
        updated[lensId] = dcpId
        onRawDcpIdsByLensChange?.invoke(updated.toMap())
    }

    fun clearLensDcp(lensId: String) {
        val updated = rawDcpIdsByLens.toMutableMap()
        updated.remove(lensId)
        onRawDcpIdsByLensChange?.invoke(updated.toMap())
    }

    fun closeDcpPicker() {
        selectingUnifiedDcp = false
        selectingLensId = null
    }

    Row(
        modifier = Modifier
            .fillMaxWidth()
            .clickable { showSheet = true }
            .padding(vertical = 8.dp),
        horizontalArrangement = Arrangement.SpaceBetween,
        verticalAlignment = Alignment.CenterVertically
    ) {
        Column(modifier = Modifier.weight(1f)) {
            Text(
                text = stringResource(R.string.raw_dcp_title),
                color = Color.White,
                fontSize = 16.sp,
                fontWeight = FontWeight.Normal
            )
            Spacer(modifier = Modifier.height(4.dp))
            Text(
                    text = selectedName,
                color = Color.White.copy(alpha = 0.6f),
                fontSize = 13.sp,
                lineHeight = 18.sp,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis
            )
            if (scopeName != null) {
                Spacer(modifier = Modifier.height(2.dp))
                Text(
                    text = scopeName,
                    color = Color.White.copy(alpha = 0.45f),
                    fontSize = 12.sp,
                    lineHeight = 16.sp,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis
                )
            }
        }

        Spacer(modifier = Modifier.width(16.dp))

        Icon(
            imageVector = AppIcons.ChevronRight,
            contentDescription = null,
            tint = Color.White.copy(alpha = 0.6f)
        )
    }

    if (showSheet) {
        val selectedLens = lensOptions.firstOrNull { it.id == selectingLensId }
        val isSelectingTarget = selectingUnifiedDcp || selectedLens != null
        ModalBottomSheet(
            onDismissRequest = { showSheet = false },
            containerColor = Color(0xFF1E1E1E),
            dragHandle = { BottomSheetDefaults.DragHandle(color = Color.White.copy(alpha = 0.2f)) }
        ) {
            Column(modifier = Modifier.fillMaxWidth().padding(horizontal = 16.dp, vertical = 8.dp)) {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Row(verticalAlignment = Alignment.CenterVertically, modifier = Modifier.weight(1f)) {
                        if (isSelectingTarget) {
                            IconButton(
                                onClick = { closeDcpPicker() },
                                modifier = Modifier.size(40.dp)
                            ) {
                                Icon(
                                    imageVector = Icons.AutoMirrored.Filled.ArrowBack,
                                    contentDescription = stringResource(R.string.back),
                                    tint = Color.White.copy(alpha = 0.8f)
                                )
                            }
                            Spacer(modifier = Modifier.width(4.dp))
                        }
                        Text(
                            text = when {
                                selectingUnifiedDcp -> stringResource(R.string.raw_dcp_unified_title)
                                selectedLens != null -> selectedLens.label
                                else -> stringResource(R.string.raw_dcp_title)
                            },
                            color = Color.White,
                            fontSize = 20.sp,
                            fontWeight = FontWeight.Bold,
                            maxLines = 1,
                            overflow = TextOverflow.Ellipsis,
                            modifier = Modifier.weight(1f)
                        )
                    }
                    if (!isSelectingTarget && onImportDcp != null) {
                        TextButton(onClick = {
                            showSheet = false
                            onImportDcp()
                        }) {
                            Text(
                                text = stringResource(R.string.raw_dcp_import),
                                color = Color(0xFFFF6B35),
                                fontSize = 14.sp
                            )
                        }
                    }
                }
                Spacer(modifier = Modifier.height(16.dp))
                androidx.compose.foundation.lazy.LazyColumn(
                    modifier = Modifier.fillMaxWidth(),
                    contentPadding = PaddingValues(bottom = 32.dp),
                    verticalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    if (supportsLensConfiguration && !isSelectingTarget) {
                        item {
                            DcpTargetItem(
                                name = stringResource(R.string.raw_dcp_unified_title),
                                description = unifiedDcpName,
                                onClick = { selectingUnifiedDcp = true }
                            )
                        }
                        items(lensOptions.size, key = { lensOptions[it].id }) { index ->
                            val lens = lensOptions[index]
                            val hasOverride = rawDcpIdsByLens.containsKey(lens.id)
                            val dcpId = rawDcpIdsByLens[lens.id]
                            DcpTargetItem(
                                name = lens.label,
                                description = if (hasOverride) {
                                    stringResource(
                                        R.string.raw_dcp_lens_override_value,
                                        dcpDisplayName(dcpId, availableDcps)
                                    )
                                } else {
                                    stringResource(R.string.raw_dcp_lens_uses_unified, unifiedDcpName)
                                },
                                isSelected = hasOverride,
                                onClick = { selectingLensId = lens.id }
                            )
                        }
                    } else {
                        val targetLens = selectedLens
                        if (targetLens != null) {
                            item {
                                DcpItem(
                                    name = stringResource(R.string.raw_dcp_use_unified, unifiedDcpName),
                                    isSelected = !rawDcpIdsByLens.containsKey(targetLens.id),
                                    onClick = {
                                        clearLensDcp(targetLens.id)
                                        closeDcpPicker()
                                    }
                                )
                            }
                        }
                        val currentDcpId = targetLens?.let { rawDcpIdsByLens[it.id] } ?: selectedDcpId
                        val hasLensOverride = targetLens?.let { rawDcpIdsByLens.containsKey(it.id) } == true
                        item {
                            DcpItem(
                                name = stringResource(R.string.none),
                                isSelected = if (targetLens != null) {
                                    hasLensOverride && currentDcpId == null
                                } else {
                                    currentDcpId == null
                                },
                                onClick = {
                                    if (targetLens != null) {
                                        setLensDcp(targetLens.id, null)
                                        closeDcpPicker()
                                    } else {
                                        selectDcp(null)
                                        if (supportsLensConfiguration) closeDcpPicker() else showSheet = false
                                    }
                                }
                            )
                        }
                        items(availableDcps.size, key = { availableDcps[it].id }) { index ->
                            val dcp = availableDcps[index]
                            DcpItem(
                                name = dcp.getName(),
                                isSelected = if (targetLens != null) {
                                    hasLensOverride && currentDcpId == dcp.id
                                } else {
                                    currentDcpId == dcp.id
                                },
                                onClick = {
                                    if (targetLens != null) {
                                        setLensDcp(targetLens.id, dcp.id)
                                        closeDcpPicker()
                                    } else {
                                        selectDcp(dcp.id)
                                        if (supportsLensConfiguration) closeDcpPicker() else showSheet = false
                                    }
                                },
                                isCustom = !dcp.isBuiltIn && onDeleteDcp != null,
                                onDelete = if (onDeleteDcp != null) {
                                    { pendingDeleteDcp = dcp }
                                } else {
                                    null
                                }
                            )
                        }
                    }
                }
            }
        }
    }

    pendingDeleteDcp?.let { dcp ->
        AlertDialog(
            onDismissRequest = { pendingDeleteDcp = null },
            title = { Text(stringResource(R.string.delete_confirm_title)) },
            text = { Text(stringResource(R.string.delete_dcp_confirm_message, dcp.getName())) },
            confirmButton = {
                TextButton(
                    onClick = {
                        onDeleteDcp?.invoke(dcp)
                        pendingDeleteDcp = null
                    }
                ) {
                    Text(stringResource(R.string.delete))
                }
            },
            dismissButton = {
                TextButton(onClick = { pendingDeleteDcp = null }) {
                    Text(stringResource(R.string.cancel))
                }
            }
        )
    }
}

@Composable
private fun dcpDisplayName(dcpId: String?, availableDcps: List<DcpInfo>): String {
    return availableDcps.firstOrNull { it.id == dcpId }?.getName()
        ?: stringResource(R.string.none)
}

@Composable
private fun DcpTargetItem(
    name: String,
    description: String,
    onClick: () -> Unit,
    isSelected: Boolean = false
) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .clip(RoundedCornerShape(12.dp))
            .background(if (isSelected) Color(0xFFFF6B35).copy(alpha = 0.12f) else Color.Transparent)
            .clickable { onClick() }
            .padding(16.dp),
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.SpaceBetween
    ) {
        Column(modifier = Modifier.weight(1f)) {
            Text(
                text = name,
                color = Color.White,
                fontSize = 14.sp,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis
            )
            Spacer(modifier = Modifier.height(4.dp))
            Text(
                text = description,
                color = if (isSelected) Color(0xFFFF6B35) else Color.White.copy(alpha = 0.58f),
                fontSize = 12.sp,
                lineHeight = 16.sp,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis
            )
        }
        Spacer(modifier = Modifier.width(12.dp))
        Icon(
            imageVector = AppIcons.ChevronRight,
            contentDescription = null,
            tint = Color.White.copy(alpha = 0.45f),
            modifier = Modifier.size(20.dp)
        )
    }
}

@Composable
private fun DcpItem(
    name: String,
    isSelected: Boolean,
    onClick: () -> Unit,
    isCustom: Boolean = false,
    onDelete: (() -> Unit)? = null
) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .clip(RoundedCornerShape(12.dp))
            .background(if (isSelected) Color(0xFFFF6B35).copy(alpha = 0.15f) else Color.Transparent)
            .clickable { onClick() }
            .padding(16.dp),
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.SpaceBetween
    ) {
        Text(
            text = name,
            color = if (isSelected) Color(0xFFFF6B35) else Color.White,
            fontSize = 12.sp,
            maxLines = 1,
            overflow = TextOverflow.Ellipsis,
            modifier = Modifier.weight(1f)
        )
        if (isSelected) {
            Icon(
                imageVector = Icons.Default.Check,
                contentDescription = null,
                tint = Color(0xFFFF6B35),
                modifier = Modifier.size(20.dp)
            )
        }
        if (isCustom && onDelete != null) {
            Spacer(modifier = Modifier.width(8.dp))
            IconButton(
                onClick = onDelete,
                modifier = Modifier.size(36.dp)
            ) {
                Icon(
                    imageVector = Icons.Default.Delete,
                    contentDescription = stringResource(R.string.delete),
                    tint = Color.White.copy(alpha = 0.7f),
                    modifier = Modifier.size(18.dp)
                )
            }
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun RawBaselineColorCorrectionSelector(
    selectedLutId: String?,
    availableLuts: List<LutInfo>,
    thumbnail: Bitmap?,
    onSelectLut: (String?) -> Unit,
    title: String = stringResource(R.string.settings_baseline_raw_title),
    onEditRecipe: ((String) -> Unit)? = null,
    onOpenSheet: (() -> Unit)? = null
) {
    var showSheet by remember { mutableStateOf(false) }
    val selectedLut = availableLuts.find { it.id == selectedLutId }
    val selectedName = selectedLut?.getName() ?: stringResource(R.string.none)

    fun openSheet() {
        if (onOpenSheet != null) {
            onOpenSheet()
        } else {
            showSheet = true
        }
    }

    Row(
        modifier = Modifier
            .fillMaxWidth()
            .padding(vertical = 8.dp),
        horizontalArrangement = Arrangement.SpaceBetween,
        verticalAlignment = Alignment.CenterVertically
    ) {
        Column(
            modifier = Modifier
                .weight(1f)
                .clickable { openSheet() }
        ) {
            Text(
                text = title,
                color = Color.White,
                fontSize = 16.sp,
                fontWeight = FontWeight.Normal
            )
            Spacer(modifier = Modifier.height(4.dp))
            Text(
                text = selectedName,
                color = Color.White.copy(alpha = 0.6f),
                fontSize = 13.sp,
                lineHeight = 18.sp,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis
            )
        }

        Spacer(modifier = Modifier.width(16.dp))

        Row(verticalAlignment = Alignment.CenterVertically) {
            Icon(
                imageVector = AppIcons.ChevronRight,
                contentDescription = null,
                tint = Color.White.copy(alpha = 0.6f),
                modifier = Modifier.clickable { openSheet() }
            )
        }
    }

    if (showSheet) {
        RawBaselineColorCorrectionBottomSheet(
            selectedLutId = selectedLutId,
            availableLuts = availableLuts,
            thumbnail = thumbnail,
            title = title,
            onSelectLut = onSelectLut,
            onEditRecipe = onEditRecipe,
            onDismiss = { showSheet = false }
        )
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun RawBaselineColorCorrectionBottomSheet(
    selectedLutId: String?,
    availableLuts: List<LutInfo>,
    thumbnail: Bitmap?,
    title: String = stringResource(R.string.settings_baseline_raw_title),
    containerColor: Color = Color(0xFF1E1E1E),
    onSelectLut: (String?) -> Unit,
    onEditRecipe: ((String) -> Unit)? = null,
    onDismiss: () -> Unit
) {
    ModalBottomSheet(
        onDismissRequest = onDismiss,
        containerColor = containerColor,
        scrimColor = Color.Transparent,
        dragHandle = { BottomSheetDefaults.DragHandle(color = Color.White.copy(alpha = 0.2f)) }
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .navigationBarsPadding()
                .padding(horizontal = 16.dp, vertical = 8.dp)
        ) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Text(
                    text = title,
                    color = Color.White,
                    fontSize = 20.sp,
                    fontWeight = FontWeight.Bold
                )
                IconButton(onClick = onDismiss) {
                    Icon(
                        imageVector = Icons.Default.Close,
                        contentDescription = stringResource(R.string.close),
                        tint = Color.White.copy(alpha = 0.8f)
                    )
                }
            }
            Spacer(modifier = Modifier.height(8.dp))
            Text(
                text = stringResource(R.string.settings_baseline_dialog_description),
                color = Color.White.copy(alpha = 0.7f),
                fontSize = 13.sp,
                modifier = Modifier.padding(bottom = 12.dp)
            )
            LutSelector(
                availableLuts = availableLuts,
                currentLutId = selectedLutId,
                thumbnail = thumbnail,
                onLutSelected = { selected ->
                    onSelectLut(selected)
                }
            )
            Spacer(modifier = Modifier.height(8.dp))
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.End,
                verticalAlignment = Alignment.CenterVertically
            ) {
                TextButton(
                    onClick = {
                        onSelectLut(null)
                    }
                ) {
                    Text(stringResource(R.string.settings_baseline_clear))
                }
                if (onEditRecipe != null) {
                    TextButton(
                        onClick = {
                            if (selectedLutId != null) {
                                onDismiss()
                                onEditRecipe(selectedLutId)
                            }
                        },
                        enabled = selectedLutId != null
                    ) {
                        Text(stringResource(R.string.settings_baseline_edit_recipe))
                    }
                }
            }
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun RawSpectralFilmSelector(
    selectedFilm: String?,
    onSelectFilm: (String?) -> Unit
) {
    var showSheet by remember { mutableStateOf(false) }
    val displayFilm = selectedFilm?.let { SpectralFilmUiInfo.getFilmDisplayName(it) }
        ?: stringResource(R.string.none)

    Row(
        modifier = Modifier
            .fillMaxWidth()
            .clickable { showSheet = true }
            .padding(vertical = 8.dp),
        horizontalArrangement = Arrangement.SpaceBetween,
        verticalAlignment = Alignment.CenterVertically
    ) {
        Column(modifier = Modifier.weight(1f)) {
            Text(
                text = stringResource(R.string.settings_negative_film),
                color = Color.White,
                fontSize = 16.sp,
                fontWeight = FontWeight.Normal
            )
            Spacer(modifier = Modifier.height(4.dp))
            Text(
                text = displayFilm,
                color = Color.White.copy(alpha = 0.6f),
                fontSize = 13.sp,
                lineHeight = 18.sp,
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

    if (showSheet) {
        ModalBottomSheet(
            onDismissRequest = { showSheet = false },
            containerColor = Color(0xFF1E1E1E),
            dragHandle = { BottomSheetDefaults.DragHandle(color = Color.White.copy(alpha = 0.2f)) }
        ) {
            Column(modifier = Modifier.fillMaxWidth().padding(horizontal = 16.dp, vertical = 8.dp)) {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Text(
                        text = stringResource(R.string.settings_negative_film),
                        color = Color.White,
                        fontSize = 20.sp,
                        fontWeight = FontWeight.Bold
                    )
                }
                Spacer(modifier = Modifier.height(16.dp))
                androidx.compose.foundation.lazy.LazyColumn(
                    modifier = Modifier.fillMaxWidth(),
                    contentPadding = PaddingValues(bottom = 32.dp),
                    verticalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    items(SpectralFilmUiInfo.availableFilms.size, key = { SpectralFilmUiInfo.availableFilms[it] }) { index ->
                        val film = SpectralFilmUiInfo.availableFilms[index]
                        val isSelected = selectedFilm == film
                        Row(
                            modifier = Modifier
                                .fillMaxWidth()
                                .clip(RoundedCornerShape(12.dp))
                                .background(if (isSelected) Color(0xFFFF6B35).copy(alpha = 0.15f) else Color.Transparent)
                                .clickable {
                                    onSelectFilm(film)
                                    showSheet = false
                                }
                                .padding(16.dp),
                            verticalAlignment = Alignment.CenterVertically,
                            horizontalArrangement = Arrangement.SpaceBetween
                        ) {
                            Text(
                                text = SpectralFilmUiInfo.getFilmDisplayName(film),
                                color = if (isSelected) Color(0xFFFF6B35) else Color.White,
                                fontSize = 14.sp,
                                maxLines = 1,
                                overflow = TextOverflow.Ellipsis,
                                modifier = Modifier.weight(1f)
                            )
                            if (isSelected) {
                                Icon(
                                    imageVector = Icons.Default.Check,
                                    contentDescription = null,
                                    tint = Color(0xFFFF6B35),
                                    modifier = Modifier.size(20.dp)
                                )
                            }
                        }
                    }
                }
            }
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun RawSpectralPrintSelector(
    selectedPrint: String?,
    onSelectPrint: (String?) -> Unit
) {
    var showSheet by remember { mutableStateOf(false) }
    val displayPrint = selectedPrint?.let { SpectralFilmUiInfo.getPrintDisplayName(it) }
        ?: stringResource(R.string.none)

    Row(
        modifier = Modifier
            .fillMaxWidth()
            .clickable { showSheet = true }
            .padding(vertical = 8.dp),
        horizontalArrangement = Arrangement.SpaceBetween,
        verticalAlignment = Alignment.CenterVertically
    ) {
        Column(modifier = Modifier.weight(1f)) {
            Text(
                text = stringResource(R.string.settings_print_paper),
                color = Color.White,
                fontSize = 16.sp,
                fontWeight = FontWeight.Normal
            )
            Spacer(modifier = Modifier.height(4.dp))
            Text(
                text = displayPrint,
                color = Color.White.copy(alpha = 0.6f),
                fontSize = 13.sp,
                lineHeight = 18.sp,
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

    if (showSheet) {
        ModalBottomSheet(
            onDismissRequest = { showSheet = false },
            containerColor = Color(0xFF1E1E1E),
            dragHandle = { BottomSheetDefaults.DragHandle(color = Color.White.copy(alpha = 0.2f)) }
        ) {
            Column(modifier = Modifier.fillMaxWidth().padding(horizontal = 16.dp, vertical = 8.dp)) {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Text(
                        text = stringResource(R.string.settings_print_paper),
                        color = Color.White,
                        fontSize = 20.sp,
                        fontWeight = FontWeight.Bold
                    )
                }
                Spacer(modifier = Modifier.height(16.dp))
                androidx.compose.foundation.lazy.LazyColumn(
                    modifier = Modifier.fillMaxWidth(),
                    contentPadding = PaddingValues(bottom = 32.dp),
                    verticalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    items(SpectralFilmUiInfo.availablePrints.size, key = { SpectralFilmUiInfo.availablePrints[it] }) { index ->
                        val print = SpectralFilmUiInfo.availablePrints[index]
                        val isSelected = selectedPrint == print
                        Row(
                            modifier = Modifier
                                .fillMaxWidth()
                                .clip(RoundedCornerShape(12.dp))
                                .background(if (isSelected) Color(0xFFFF6B35).copy(alpha = 0.15f) else Color.Transparent)
                                .clickable {
                                    onSelectPrint(print)
                                    showSheet = false
                                }
                                .padding(16.dp),
                            verticalAlignment = Alignment.CenterVertically,
                            horizontalArrangement = Arrangement.SpaceBetween
                        ) {
                            Text(
                                text = SpectralFilmUiInfo.getPrintDisplayName(print),
                                color = if (isSelected) Color(0xFFFF6B35) else Color.White,
                                fontSize = 14.sp,
                                maxLines = 1,
                                overflow = TextOverflow.Ellipsis,
                                modifier = Modifier.weight(1f)
                            )
                            if (isSelected) {
                                Icon(
                                    imageVector = Icons.Default.Check,
                                    contentDescription = null,
                                    tint = Color(0xFFFF6B35),
                                    modifier = Modifier.size(20.dp)
                                )
                            }
                        }
                    }
                }
            }
        }
    }
}
