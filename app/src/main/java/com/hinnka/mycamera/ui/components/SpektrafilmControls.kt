package com.hinnka.mycamera.ui.components

import androidx.annotation.StringRes
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.text.KeyboardActions
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.key
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalConfiguration
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.input.ImeAction
import androidx.compose.ui.text.input.KeyboardType
import com.hinnka.mycamera.R
import com.hinnka.mycamera.raw.SpectralDyeOrder
import com.hinnka.mycamera.raw.SpectralFilmSelection
import com.hinnka.mycamera.raw.SpectralFilmTuning
import com.hinnka.mycamera.raw.SpectralFilmUiInfo
import java.text.DecimalFormatSymbols

@Composable
internal fun SpektrafilmControls(
    selection: SpectralFilmSelection,
    onSelectionChange: (SpectralFilmSelection) -> Unit,
) {
    val tuning = selection.tuning
    val positive = SpectralFilmUiInfo.isPositiveFilm(selection.id)
    val printsToPaper = !positive && !tuning.scanFilm
    fun commit(next: SpectralFilmTuning) {
        if (next != tuning) onSelectionChange(selection.copy(tuning = next.normalized()))
    }

    val slider: @Composable (SliderSpec) -> Unit = { spec ->
        SpektrafilmNumberControl(spec, tuning, SpectralFilmTuning.DEFAULT, ::commit)
    }

    Column(Modifier.fillMaxWidth()) {
        key(selection.id) {
            SpektrafilmSection(R.string.spektrafilm_section_film) {
                filmSliders.forEach { slider(it) }
                DyeOrderSetting(
                    title = R.string.spektrafilm_film_dye_order,
                    order = tuning.filmDyeOrder,
                    onOrderChange = { commit(tuning.copy(filmDyeOrder = it)) },
                )
            }
            SpektrafilmDiffusionSection(R.string.spektrafilm_section_camera_diffusion, tuning.cameraDiffusion) {
                commit(tuning.copy(cameraDiffusion = it))
            }
            SpektrafilmHalationSection(selection.id, tuning.halation) { commit(tuning.copy(halation = it)) }
            SpektrafilmSection(R.string.spektrafilm_section_couplers) {
                SwitchSettingItem(
                    title = stringResource(R.string.spektrafilm_dir_enabled),
                    description = stringResource(R.string.spektrafilm_dir_description),
                    checked = tuning.dirEnabled,
                    onCheckedChange = { commit(tuning.copy(dirEnabled = it)) },
                )
                if (tuning.dirEnabled) {
                    couplerSliders.forEach { slider(it) }
                    SpektrafilmDirAdvancedControls(selection.id, tuning, ::commit)
                }
            }
            SpektrafilmGrainSection(tuning.grain) { commit(tuning.copy(grain = it)) }
            if (printsToPaper) {
                SpektrafilmSection(R.string.spektrafilm_section_enlarger) {
                    SwitchSettingItem(
                        title = stringResource(R.string.spektrafilm_print_exposure_compensation),
                        description = stringResource(R.string.spektrafilm_print_exposure_compensation_description),
                        checked = tuning.printExposureCompensation,
                        onCheckedChange = { commit(tuning.copy(printExposureCompensation = it)) },
                    )
                    SwitchSettingItem(
                        title = stringResource(R.string.spektrafilm_print_normalize_exposure),
                        description = stringResource(R.string.spektrafilm_print_normalize_exposure_description),
                        checked = tuning.printNormalizeExposure,
                        onCheckedChange = { commit(tuning.copy(printNormalizeExposure = it)) },
                    )
                    printSliders.forEach { slider(it) }
                    DyeOrderSetting(
                        title = R.string.spektrafilm_print_dye_order,
                        order = tuning.printDyeOrder,
                        onOrderChange = { commit(tuning.copy(printDyeOrder = it)) },
                    )
                }
                SpektrafilmDiffusionSection(R.string.spektrafilm_section_enlarger_diffusion, tuning.enlargerDiffusion) {
                    commit(tuning.copy(enlargerDiffusion = it))
                }
                SpektrafilmSection(R.string.spektrafilm_section_preflash) {
                    PreflashExposureSetting(tuning.preflashExposure) {
                        commit(tuning.copy(preflashExposure = it))
                    }
                    if (tuning.preflashExposure > 0f) preflashFilterSliders.forEach { slider(it) }
                }
                SpektrafilmSection(R.string.spektrafilm_section_chemistry) {
                    SwitchSettingItem(
                        title = stringResource(R.string.spektrafilm_print_chemistry_enabled),
                        description = stringResource(R.string.spektrafilm_print_chemistry_description),
                        checked = tuning.printChemistryEnabled,
                        onCheckedChange = { commit(tuning.copy(printChemistryEnabled = it)) },
                    )
                    if (tuning.printChemistryEnabled) chemistrySliders.forEach { slider(it) }
                }
                SpektrafilmGlareSection(tuning.glare) { commit(tuning.copy(glare = it)) }
            }
            SpektrafilmSection(R.string.spektrafilm_section_scanner) {
                scannerSliders.forEach { slider(it) }
                if (tuning.scannerUnsharpAmount > 0f) slider(scannerUnsharpSigmaSlider)
                if (positive || printsToPaper) SpektrafilmScannerLevels(tuning, ::commit)
            }
            SpektrafilmSpectralAndGamutControls(tuning, ::commit)
        }
    }
}

private const val PREFLASH_SLIDER_MAX = 0.04f

@Composable
private fun PreflashExposureSetting(value: Float, onCommit: (Float) -> Unit) {
    var draft by rememberSaveable { mutableStateOf<String?>(null) }
    val inSliderRange = value <= PREFLASH_SLIDER_MAX
    if (inSliderRange) {
        SpektrafilmNumberSetting(
            title = R.string.spektrafilm_preflash_exposure,
            value = value,
            range = 0f..PREFLASH_SLIDER_MAX,
            step = 0.0001f,
            resetValue = 0f,
            format = R.string.spektrafilm_value_preflash_exposure,
            onCommit = onCommit,
        )
    } else {
        Text(
            text = stringResource(R.string.spektrafilm_preflash_high_value, value),
            color = Color.White,
            style = MaterialTheme.typography.bodyLarge,
        )
    }
    Row {
        TextButton(onClick = { draft = value.toBigDecimal().toPlainString() }) {
            Text(stringResource(R.string.spektrafilm_preflash_enter_value))
        }
        if (!inSliderRange) {
            TextButton(onClick = { onCommit(0f) }) {
                Text(stringResource(R.string.spektrafilm_preflash_reset))
            }
        }
    }

    val input = draft ?: return
    val separator = DecimalFormatSymbols.getInstance(LocalConfiguration.current.locales[0]).decimalSeparator
    val dose = input.trim().map { character ->
        when (character) {
            separator, ',' -> '.'
            else -> character.digitToIntOrNull()?.digitToChar() ?: character
        }
    }.joinToString("").toFloatOrNull()?.takeIf { it in 0f..1f }
    fun applyDose() {
        val amount = dose ?: return
        draft = null
        onCommit(if (amount == 0f) 0f else amount)
    }
    AlertDialog(
        onDismissRequest = { draft = null },
        title = { Text(stringResource(R.string.spektrafilm_preflash_exposure)) },
        text = {
            OutlinedTextField(
                value = input,
                onValueChange = { draft = it },
                modifier = Modifier.fillMaxWidth(),
                label = { Text(stringResource(R.string.spektrafilm_preflash_enter_value)) },
                supportingText = { Text(stringResource(R.string.spektrafilm_preflash_input_range)) },
                isError = input.isNotBlank() && dose == null,
                singleLine = true,
                keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Decimal, imeAction = ImeAction.Done),
                keyboardActions = KeyboardActions(onDone = { applyDose() }),
            )
        },
        confirmButton = {
            TextButton(enabled = dose != null, onClick = ::applyDose) { Text(stringResource(R.string.confirm)) }
        },
        dismissButton = {
            TextButton(onClick = { draft = null }) { Text(stringResource(R.string.cancel)) }
        },
    )
}

@Composable
private fun DyeOrderSetting(
    @StringRes title: Int,
    order: SpectralDyeOrder,
    onOrderChange: (SpectralDyeOrder) -> Unit,
) {
    SpektrafilmChoiceSetting(title, order, SpectralDyeOrder.entries.map { it to it.name }, onOrderChange)
}

private typealias SliderSpec = SpektrafilmNumberSpec<SpectralFilmTuning>

private val filmSliders = listOf(
    SliderSpec(
        R.string.spektrafilm_film_format, 8f..120f, 1f,
        SpectralFilmTuning::filmFormatMm, R.string.spektrafilm_value_mm,
    ) { copy(filmFormatMm = it) },
    SliderSpec(
        R.string.spektrafilm_camera_lens_blur, 0f..30f, 0.05f,
        SpectralFilmTuning::cameraLensBlurUm, R.string.spektrafilm_value_um,
    ) { copy(cameraLensBlurUm = it) },
    SliderSpec(
        R.string.spektrafilm_camera_exposure, -5f..5f, 0.25f,
        SpectralFilmTuning::cameraExposureEv, R.string.spektrafilm_value_ev,
    ) { copy(cameraExposureEv = it) },
    SliderSpec(
        R.string.spektrafilm_film_gamma, 0.1f..3f, 0.05f, SpectralFilmTuning::filmGamma,
    ) { copy(filmGamma = it) },
)

private val couplerSliders = listOf(
    SliderSpec(R.string.spektrafilm_dir_amount, 0f..1f, 0.05f, SpectralFilmTuning::dirAmount) {
        copy(dirAmount = it)
    },
    SliderSpec(R.string.spektrafilm_dir_same_layer, 0f..1f, 0.05f, SpectralFilmTuning::dirSameLayer) {
        copy(dirSameLayer = it)
    },
    SliderSpec(R.string.spektrafilm_dir_inter_layer, 0f..1f, 0.05f, SpectralFilmTuning::dirInterLayer) {
        copy(dirInterLayer = it)
    },
)

private val printSliders = listOf(
    SliderSpec(R.string.spektrafilm_print_exposure, 0f..4f, 0.02f, SpectralFilmTuning::printExposure) {
        copy(printExposure = it)
    },
    SliderSpec(
        R.string.spektrafilm_yellow_filter, -200f..200f, 1f,
        SpectralFilmTuning::printYellowShift, R.string.spektrafilm_value_cc,
    ) { copy(printYellowShift = it) },
    SliderSpec(
        R.string.spektrafilm_magenta_filter, -200f..200f, 1f,
        SpectralFilmTuning::printMagentaShift, R.string.spektrafilm_value_cc,
    ) { copy(printMagentaShift = it) },
)

private val preflashFilterSliders = listOf(
    SliderSpec(
        R.string.spektrafilm_yellow_filter, -200f..200f, 1f,
        SpectralFilmTuning::preflashYellowShift, R.string.spektrafilm_value_cc,
        logarithmicScale = 2f,
    ) { copy(preflashYellowShift = it) },
    SliderSpec(
        R.string.spektrafilm_magenta_filter, -200f..200f, 1f,
        SpectralFilmTuning::preflashMagentaShift, R.string.spektrafilm_value_cc,
        logarithmicScale = 2f,
    ) { copy(preflashMagentaShift = it) },
)

private val chemistrySliders = listOf(
    SliderSpec(R.string.spektrafilm_print_gamma, 0.5f..2f, 0.05f, SpectralFilmTuning::printGamma) {
        copy(printGamma = it)
    },
    SliderSpec(R.string.spektrafilm_print_gamma_fast, 0.5f..2f, 0.05f, SpectralFilmTuning::printGammaFast) {
        copy(printGammaFast = it)
    },
    SliderSpec(R.string.spektrafilm_print_gamma_slow, 0.5f..2f, 0.05f, SpectralFilmTuning::printGammaSlow) {
        copy(printGammaSlow = it)
    },
    SliderSpec(R.string.spektrafilm_print_gamma_red, 0.5f..2f, 0.02f, SpectralFilmTuning::printGammaRed) {
        copy(printGammaRed = it)
    },
    SliderSpec(R.string.spektrafilm_print_gamma_green, 0.5f..2f, 0.02f, SpectralFilmTuning::printGammaGreen) {
        copy(printGammaGreen = it)
    },
    SliderSpec(R.string.spektrafilm_print_gamma_blue, 0.5f..2f, 0.02f, SpectralFilmTuning::printGammaBlue) {
        copy(printGammaBlue = it)
    },
    SliderSpec(
        R.string.spektrafilm_print_developer_exhaustion, 0f..1f, 0.02f,
        SpectralFilmTuning::printDeveloperExhaustion, R.string.spektrafilm_value_percent,
    ) { copy(printDeveloperExhaustion = it) },
)

private val scannerSliders = listOf(
    SliderSpec(
        R.string.spektrafilm_scanner_lens_blur, 0f..8f, 0.05f,
        SpectralFilmTuning::scannerLensBlur, R.string.spektrafilm_value_px,
    ) { copy(scannerLensBlur = it) },
    SliderSpec(
        R.string.spektrafilm_scanner_unsharp_amount, 0f..3f, 0.05f, SpectralFilmTuning::scannerUnsharpAmount,
    ) { copy(scannerUnsharpAmount = it) },
)

private val scannerUnsharpSigmaSlider = SliderSpec(
    R.string.spektrafilm_scanner_unsharp_sigma, 0f..8f, 0.05f,
    SpectralFilmTuning::scannerUnsharpSigma, R.string.spektrafilm_value_px,
) { copy(scannerUnsharpSigma = it) }

