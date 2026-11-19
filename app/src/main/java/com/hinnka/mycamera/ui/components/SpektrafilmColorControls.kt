package com.hinnka.mycamera.ui.components

import androidx.compose.runtime.Composable
import androidx.compose.ui.res.stringResource
import com.hinnka.mycamera.R
import com.hinnka.mycamera.raw.SpectralFilmTuning
import com.hinnka.mycamera.raw.SpectralKnee

@Composable
internal fun SpektrafilmScannerLevels(
    tuning: SpectralFilmTuning,
    onCommit: (SpectralFilmTuning) -> Unit,
) {
    SwitchSettingItem(
        title = stringResource(R.string.spektrafilm_scanner_white_correction),
        checked = tuning.scanWhiteCorrection,
        onCheckedChange = { onCommit(tuning.copy(scanWhiteCorrection = it)) },
    )
    if (tuning.scanWhiteCorrection) {
        SpektrafilmNumberSetting(
            R.string.spektrafilm_scanner_white_level, tuning.scanWhiteLevel, 0f..1f, 0.005f,
            SpectralFilmTuning.DEFAULT.scanWhiteLevel, R.string.spektrafilm_value_precise,
        ) { onCommit(tuning.copy(scanWhiteLevel = it)) }
    }
    SwitchSettingItem(
        title = stringResource(R.string.spektrafilm_scanner_black_correction),
        checked = tuning.scanBlackCorrection,
        onCheckedChange = { onCommit(tuning.copy(scanBlackCorrection = it)) },
    )
    if (tuning.scanBlackCorrection) {
        SpektrafilmNumberSetting(
            R.string.spektrafilm_scanner_black_level, tuning.scanBlackLevel, 0f..1f, 0.005f,
            SpectralFilmTuning.DEFAULT.scanBlackLevel, R.string.spektrafilm_value_precise,
        ) { onCommit(tuning.copy(scanBlackLevel = it)) }
    }
}

@Composable
internal fun SpektrafilmSpectralAndGamutControls(
    tuning: SpectralFilmTuning,
    onCommit: (SpectralFilmTuning) -> Unit,
) {
    SpektrafilmSection(R.string.spektrafilm_section_spectral) {
        SpektrafilmChoiceSetting(
            title = R.string.spektrafilm_spectral_method,
            value = tuning.spectralMethod,
            choices = listOf(
                0 to stringResource(R.string.spektrafilm_spectral_hanatos),
                1 to stringResource(R.string.spektrafilm_spectral_mallett),
            ),
            onCommit = { onCommit(tuning.copy(spectralMethod = it)) },
        )
        if (tuning.spectralMethod == 0) {
            SwitchSettingItem(
                title = stringResource(R.string.spektrafilm_spectral_adaptation_window),
                checked = tuning.spectralAdaptationWindow,
                onCheckedChange = { onCommit(tuning.copy(spectralAdaptationWindow = it)) },
            )
            SwitchSettingItem(
                title = stringResource(R.string.spektrafilm_spectral_adaptation_surface),
                checked = tuning.spectralAdaptationSurface,
                onCheckedChange = { onCommit(tuning.copy(spectralAdaptationSurface = it)) },
            )
            SpektrafilmNumberSetting(
                R.string.spektrafilm_spectral_blur, tuning.spectralBlur, 0f..5f, 0.1f,
                SpectralFilmTuning.DEFAULT.spectralBlur, R.string.spektrafilm_value_nm,
            ) { onCommit(tuning.copy(spectralBlur = it)) }
        }
    }
    if (tuning.spectralMethod == 0) {
        SpektrafilmSection(R.string.spektrafilm_input_gamut_compression) {
            SwitchSettingItem(
                title = stringResource(R.string.spektrafilm_gamut_enabled),
                description = stringResource(R.string.spektrafilm_input_gamut_compression_description),
                checked = tuning.inputGamutCompression,
                onCheckedChange = { onCommit(tuning.copy(inputGamutCompression = it)) },
            )
            if (tuning.inputGamutCompression) {
                SpektrafilmChoiceSetting(
                    title = R.string.spektrafilm_gamut_algorithm,
                    value = tuning.inputGamutMethod,
                    choices = listOf(
                        0 to stringResource(R.string.spektrafilm_gamut_xy),
                        1 to stringResource(R.string.spektrafilm_gamut_oklch),
                    ),
                    onCommit = { onCommit(tuning.copy(inputGamutMethod = it)) },
                )
                SpektrafilmGamutKnee(tuning.inputGamutKnee) { onCommit(tuning.copy(inputGamutKnee = it)) }
            }
        }
    }
    SpektrafilmSection(R.string.spektrafilm_section_output_gamut) {
        SpektrafilmChoiceSetting(
            title = R.string.spektrafilm_gamut_algorithm,
            value = tuning.outputGamutMethod,
            choices = listOf(
                0 to stringResource(R.string.spektrafilm_gamut_cam16ucs),
                1 to stringResource(R.string.spektrafilm_gamut_off),
                2 to stringResource(R.string.spektrafilm_gamut_oklch),
                3 to stringResource(R.string.spektrafilm_gamut_acesrgc),
                4 to stringResource(R.string.spektrafilm_gamut_oklrab),
                5 to stringResource(R.string.spektrafilm_gamut_jzazbz),
            ),
            onCommit = { onCommit(tuning.copy(outputGamutMethod = it)) },
        )
        if (tuning.outputGamutMethod != 1) {
            SpektrafilmGamutKnee(tuning.outputGamutKnee) { onCommit(tuning.copy(outputGamutKnee = it)) }
        }
    }
}

@Composable
private fun SpektrafilmGamutKnee(settings: SpectralKnee, onCommit: (SpectralKnee) -> Unit) {
    SpektrafilmSection(R.string.recipe_panel_advanced) {
        SpektrafilmNumberControls(gamutKneeControls, settings, gamutKneeDefaults, onCommit)
        SpektrafilmNumberSetting(
            R.string.spektrafilm_gamut_limit, settings.limit, (settings.threshold + 0.01f)..4f, 0.01f,
            gamutKneeDefaults.limit,
        ) { onCommit(settings.copy(limit = it)) }
    }
}

private val gamutKneeDefaults = SpectralKnee()
private val gamutKneeControls = listOf(
    SpektrafilmNumberSpec(R.string.spektrafilm_gamut_threshold, 0f..0.99f, 0.01f, SpectralKnee::threshold) {
        copy(threshold = it)
    },
    SpektrafilmNumberSpec(R.string.spektrafilm_gamut_power, 0.1f..16f, 0.1f, SpectralKnee::power) {
        copy(power = it)
    },
)
