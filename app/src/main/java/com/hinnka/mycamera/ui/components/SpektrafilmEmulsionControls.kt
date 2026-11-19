package com.hinnka.mycamera.ui.components

import androidx.compose.runtime.Composable
import androidx.compose.ui.res.stringResource
import com.hinnka.mycamera.R
import com.hinnka.mycamera.raw.SpectralDirMatrix
import com.hinnka.mycamera.raw.SpectralFilmStockDefaults
import com.hinnka.mycamera.raw.SpectralFilmTuning
import com.hinnka.mycamera.raw.SpectralGrain
import kotlin.math.roundToInt

@Composable
internal fun SpektrafilmGrainSection(
    settings: SpectralGrain,
    onCommit: (SpectralGrain) -> Unit,
) {
    SpektrafilmSection(R.string.recipe_param_film_grain) {
        SwitchSettingItem(
            title = stringResource(R.string.spektrafilm_grain_enabled),
            checked = settings.enabled,
            onCheckedChange = { onCommit(settings.copy(enabled = it)) },
        )
        if (settings.enabled) {
            SwitchSettingItem(
                title = stringResource(R.string.spektrafilm_grain_sublayers),
                checked = settings.sublayers,
                onCheckedChange = { onCommit(settings.copy(sublayers = it)) },
            )
            SpektrafilmNumberControls(grainControls, settings, grainDefaults, onCommit)
            SpektrafilmSection(R.string.recipe_panel_advanced) {
                SpektrafilmRgbSetting(
                    R.string.spektrafilm_grain_particle_scale, settings.particleScale, grainDefaults.particleScale,
                    0.01f..8f, 0.05f,
                ) { onCommit(settings.copy(particleScale = it)) }
                SpektrafilmRgbSetting(
                    R.string.spektrafilm_grain_density_min, settings.densityMin, grainDefaults.densityMin,
                    0f..1f, 0.005f, R.string.spektrafilm_value_precise,
                ) { onCommit(settings.copy(densityMin = it)) }
                SpektrafilmRgbSetting(
                    R.string.spektrafilm_grain_uniformity, settings.uniformity, grainDefaults.uniformity,
                    0f..1f, 0.01f,
                ) { onCommit(settings.copy(uniformity = it)) }
                if (settings.sublayers) {
                    SpektrafilmRgbSetting(
                        title = R.string.spektrafilm_grain_sublayer_scale,
                        value = settings.particleScaleLayers,
                        defaults = grainDefaults.particleScaleLayers,
                        range = 0.01f..8f,
                        step = 0.05f,
                        redTitle = R.string.spektrafilm_layer_fast,
                        greenTitle = R.string.spektrafilm_layer_mid,
                        blueTitle = R.string.spektrafilm_layer_slow,
                    ) { onCommit(settings.copy(particleScaleLayers = it)) }
                    SpektrafilmNumberControls(grainSublayerControls, settings, grainDefaults, onCommit)
                } else {
                    SpektrafilmNumberSetting(
                        title = R.string.spektrafilm_grain_layer_count,
                        value = settings.subLayerCount.toFloat(),
                        range = 1f..8f,
                        step = 1f,
                        resetValue = grainDefaults.subLayerCount.toFloat(),
                        format = R.string.spektrafilm_value_integer,
                    ) { onCommit(settings.copy(subLayerCount = it.roundToInt())) }
                }
            }
        }
    }
}

@Composable
internal fun SpektrafilmDirAdvancedControls(
    stock: String,
    tuning: SpectralFilmTuning,
    onCommit: (SpectralFilmTuning) -> Unit,
) {
    val stockMatrix = SpectralFilmStockDefaults.dirMatrix(stock)
    val currentMatrix = tuning.dirMatrix?.bounded(stockMatrix) ?: stockMatrix
    fun commitMatrix(value: SpectralDirMatrix) {
        onCommit(tuning.copy(dirMatrix = value.takeUnless { it == stockMatrix }))
    }

    SpektrafilmSection(R.string.recipe_panel_advanced) {
        SpektrafilmNumberControls(dirDiffusionControls, tuning, SpectralFilmTuning.DEFAULT, onCommit)
        SpektrafilmRgbSetting(
            R.string.spektrafilm_dir_from_red, currentMatrix.r, stockMatrix.r,
            0f..1f, 0.005f, R.string.spektrafilm_value_precise, maxAtDefault = true,
        ) { commitMatrix(currentMatrix.copy(r = it)) }
        SpektrafilmRgbSetting(
            R.string.spektrafilm_dir_from_green, currentMatrix.g, stockMatrix.g,
            0f..1f, 0.005f, R.string.spektrafilm_value_precise, maxAtDefault = true,
        ) { commitMatrix(currentMatrix.copy(g = it)) }
        SpektrafilmRgbSetting(
            R.string.spektrafilm_dir_from_blue, currentMatrix.b, stockMatrix.b,
            0f..1f, 0.005f, R.string.spektrafilm_value_precise, maxAtDefault = true,
        ) { commitMatrix(currentMatrix.copy(b = it)) }
    }
}

private val grainDefaults = SpectralGrain()

private val grainControls = listOf(
    SpektrafilmNumberSpec(
        R.string.spektrafilm_grain_particle_area, 0f..4f, 0.02f, SpectralGrain::particleAreaUm2,
        R.string.spektrafilm_value_um2,
    ) { copy(particleAreaUm2 = it) },
    SpektrafilmNumberSpec(
        R.string.spektrafilm_grain_blur, 0f..4f, 0.05f, SpectralGrain::blur,
        R.string.spektrafilm_value_px,
    ) { copy(blur = it) },
)

private val grainSublayerControls = listOf(
    SpektrafilmNumberSpec(
        R.string.spektrafilm_grain_dye_blur, 0f..8f, 0.1f, SpectralGrain::blurDyeCloudsUm,
        R.string.spektrafilm_value_um,
    ) { copy(blurDyeCloudsUm = it) },
    SpektrafilmNumberSpec(
        R.string.spektrafilm_grain_micro_blur, 0f..8f, 0.1f, SpectralGrain::microBlurUm,
        R.string.spektrafilm_value_um,
    ) { copy(microBlurUm = it) },
    SpektrafilmNumberSpec(
        R.string.spektrafilm_grain_clump, 0f..200f, 1f, SpectralGrain::microClumpNm,
        R.string.spektrafilm_value_nm,
    ) { copy(microClumpNm = it) },
)

private val dirDiffusionControls = listOf(
    SpektrafilmNumberSpec(
        R.string.spektrafilm_dir_diffusion, 0f..40f, 1f, SpectralFilmTuning::dirDiffusionUm,
        R.string.spektrafilm_value_um,
    ) { copy(dirDiffusionUm = it) },
    SpektrafilmNumberSpec(
        R.string.spektrafilm_dir_tail, 0f..400f, 5f, SpectralFilmTuning::dirTailUm,
        R.string.spektrafilm_value_um,
    ) { copy(dirTailUm = it) },
    SpektrafilmNumberSpec(
        R.string.spektrafilm_dir_tail_weight, 0f..1f, 0.01f, SpectralFilmTuning::dirTailWeight,
    ) { copy(dirTailWeight = it) },
)
