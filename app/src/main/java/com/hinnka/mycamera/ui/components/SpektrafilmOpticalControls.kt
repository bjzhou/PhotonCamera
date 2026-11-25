package com.hinnka.mycamera.ui.components

import androidx.annotation.StringRes
import androidx.compose.runtime.Composable
import androidx.compose.ui.res.stringResource
import com.hinnka.mycamera.R
import com.hinnka.mycamera.raw.SpectralDiffusion
import com.hinnka.mycamera.raw.SpectralFilmStockDefaults
import com.hinnka.mycamera.raw.SpectralGlare
import com.hinnka.mycamera.raw.SpectralHalation
import kotlin.math.roundToInt

@Composable
internal fun SpektrafilmDiffusionSection(
    @StringRes title: Int,
    settings: SpectralDiffusion,
    onCommit: (SpectralDiffusion) -> Unit,
) {
    FilmAdjustmentSection(title) {
        SwitchSettingItem(
            title = stringResource(R.string.spektrafilm_diffusion_enabled),
            checked = settings.enabled,
            onCheckedChange = { onCommit(settings.copy(enabled = it)) },
        )
        if (settings.enabled) {
            SpektrafilmChoiceSetting(
                title = R.string.spektrafilm_diffusion_family,
                value = settings.family,
                choices = listOf(
                    0 to stringResource(R.string.spektrafilm_diffusion_black_pro_mist),
                    1 to stringResource(R.string.spektrafilm_diffusion_pro_mist),
                    2 to stringResource(R.string.spektrafilm_diffusion_glimmerglass),
                    3 to stringResource(R.string.spektrafilm_diffusion_cinebloom),
                ),
                onCommit = { onCommit(settings.copy(family = it)) },
            )
            SpektrafilmNumberControls(diffusionControls, settings, diffusionDefaults, onCommit)
            FilmAdjustmentSection(R.string.recipe_panel_advanced) {
                SpektrafilmNumberControls(diffusionAdvancedControls, settings, diffusionDefaults, onCommit)
            }
        }
    }
}

@Composable
internal fun SpektrafilmHalationSection(
    stock: String,
    settings: SpectralHalation,
    onCommit: (SpectralHalation) -> Unit,
) {
    FilmAdjustmentSection(R.string.recipe_param_halation) {
        SwitchSettingItem(
            title = stringResource(R.string.spektrafilm_halation_enabled),
            checked = settings.enabled,
            onCheckedChange = { onCommit(settings.copy(enabled = it)) },
        )
        SpektrafilmNumberControl(halationBoostControl, settings, halationDefaults, onCommit)
        if (settings.boostEv > 0f) {
            SpektrafilmNumberControls(halationBoostShapeControls, settings, halationDefaults, onCommit)
        }
        if (settings.enabled) {
            val defaults = SpectralFilmStockDefaults.halation(stock, halationDefaults)
            SpektrafilmNumberControls(halationControls, settings, defaults, onCommit)
            FilmAdjustmentSection(R.string.recipe_panel_advanced) {
                SpektrafilmRgbSetting(
                    R.string.spektrafilm_scatter_core, settings.scatterCoreUm, defaults.scatterCoreUm,
                    0f..30f, 0.5f, R.string.spektrafilm_value_um,
                ) { onCommit(settings.copy(scatterCoreUm = it)) }
                SpektrafilmRgbSetting(
                    R.string.spektrafilm_scatter_tail, settings.scatterTailUm, defaults.scatterTailUm,
                    0f..100f, 1f, R.string.spektrafilm_value_um,
                ) { onCommit(settings.copy(scatterTailUm = it)) }
                SpektrafilmRgbSetting(
                    R.string.spektrafilm_scatter_tail_weight, settings.scatterTailWeight, defaults.scatterTailWeight,
                    0f..1f, 0.01f,
                ) { onCommit(settings.copy(scatterTailWeight = it)) }

                val strength = requireNotNull(defaults.strength)
                val sigma = requireNotNull(defaults.firstSigmaUm)
                SpektrafilmRgbSetting(
                    R.string.spektrafilm_halation_channel_strength, settings.strength ?: strength, strength,
                    0f..1f, 0.005f, R.string.spektrafilm_value_precise,
                ) { onCommit(settings.copy(strength = it.takeUnless { value -> value == strength })) }
                SpektrafilmRgbSetting(
                    R.string.spektrafilm_halation_first_sigma, settings.firstSigmaUm ?: sigma, sigma,
                    0f..200f, 1f, R.string.spektrafilm_value_um,
                ) { onCommit(settings.copy(firstSigmaUm = it.takeUnless { value -> value == sigma })) }
                SpektrafilmNumberControls(halationAdvancedControls, settings, defaults, onCommit)
                SwitchSettingItem(
                    title = stringResource(R.string.spektrafilm_halation_renormalize),
                    checked = settings.renormalize,
                    onCheckedChange = { onCommit(settings.copy(renormalize = it)) },
                )
            }
        }
    }
}

@Composable
internal fun SpektrafilmGlareSection(
    settings: SpectralGlare,
    onCommit: (SpectralGlare) -> Unit,
) {
    FilmAdjustmentSection(R.string.spektrafilm_section_glare) {
        SwitchSettingItem(
            title = stringResource(R.string.spektrafilm_glare_enabled),
            checked = settings.enabled,
            onCheckedChange = { onCommit(settings.copy(enabled = it)) },
        )
        if (settings.enabled) {
            SpektrafilmNumberControls(glareControls, settings, glareDefaults, onCommit)
        }
    }
}

private val diffusionDefaults = SpectralDiffusion()
private val halationDefaults = SpectralHalation()
private val glareDefaults = SpectralGlare()

private val diffusionControls = listOf(
    SpektrafilmNumberSpec(
        R.string.spektrafilm_diffusion_strength, 0f..2f, 0.125f, SpectralDiffusion::strength,
    ) { copy(strength = it) },
)

private val diffusionAdvancedControls = listOf(
    SpektrafilmNumberSpec(
        R.string.spektrafilm_diffusion_spatial_scale, 0f..4f, 0.1f, SpectralDiffusion::spatialScale,
    ) { copy(spatialScale = it) },
    SpektrafilmNumberSpec(
        R.string.spektrafilm_diffusion_halo_warmth, -1.5f..1.5f, 0.05f, SpectralDiffusion::haloWarmth,
    ) { copy(haloWarmth = it) },
    SpektrafilmNumberSpec(
        R.string.spektrafilm_diffusion_core_intensity, 0f..4f, 0.05f, SpectralDiffusion::coreIntensity,
    ) { copy(coreIntensity = it) },
    SpektrafilmNumberSpec(
        R.string.spektrafilm_diffusion_core_size, 0.1f..4f, 0.05f, SpectralDiffusion::coreSize,
    ) { copy(coreSize = it) },
    SpektrafilmNumberSpec(
        R.string.spektrafilm_diffusion_halo_intensity, 0f..4f, 0.05f, SpectralDiffusion::haloIntensity,
    ) { copy(haloIntensity = it) },
    SpektrafilmNumberSpec(
        R.string.spektrafilm_diffusion_halo_size, 0.1f..4f, 0.05f, SpectralDiffusion::haloSize,
    ) { copy(haloSize = it) },
    SpektrafilmNumberSpec(
        R.string.spektrafilm_diffusion_bloom_intensity, 0f..4f, 0.05f, SpectralDiffusion::bloomIntensity,
    ) { copy(bloomIntensity = it) },
    SpektrafilmNumberSpec(
        R.string.spektrafilm_diffusion_bloom_size, 0.1f..4f, 0.05f, SpectralDiffusion::bloomSize,
    ) { copy(bloomSize = it) },
)

private val halationControls = listOf(
    SpektrafilmNumberSpec(
        R.string.spektrafilm_scatter_amount, 0f..4f, 0.05f, SpectralHalation::scatterAmount,
    ) { copy(scatterAmount = it) },
    SpektrafilmNumberSpec(
        R.string.spektrafilm_scatter_spatial_scale, 0f..4f, 0.1f, SpectralHalation::scatterSpatialScale,
    ) { copy(scatterSpatialScale = it) },
    SpektrafilmNumberSpec(
        R.string.spektrafilm_halation_amount, 0f..4f, 0.05f, SpectralHalation::halationAmount,
    ) { copy(halationAmount = it) },
    SpektrafilmNumberSpec(
        R.string.spektrafilm_halation_spatial_scale, 0f..4f, 0.1f, SpectralHalation::halationSpatialScale,
    ) { copy(halationSpatialScale = it) },
)

private val halationBoostControl = SpektrafilmNumberSpec(
    R.string.spektrafilm_halation_boost_ev, 0f..12f, 0.5f, SpectralHalation::boostEv,
    R.string.spektrafilm_value_ev,
) { copy(boostEv = it) }

private val halationBoostShapeControls = listOf(
    SpektrafilmNumberSpec(
        R.string.spektrafilm_halation_protect_ev, 0f..12f, 0.5f, SpectralHalation::protectEv,
        R.string.spektrafilm_value_ev,
    ) { copy(protectEv = it) },
    SpektrafilmNumberSpec(
        R.string.spektrafilm_halation_boost_range, 0f..1f, 0.05f, SpectralHalation::boostRange,
    ) { copy(boostRange = it) },
)

private val halationAdvancedControls = listOf(
    SpektrafilmNumberSpec(
        R.string.spektrafilm_halation_bounces, 1f..5f, 1f, { optics: SpectralHalation -> optics.bounces.toFloat() },
        R.string.spektrafilm_value_integer,
    ) { copy(bounces = it.roundToInt()) },
    SpektrafilmNumberSpec(
        R.string.spektrafilm_halation_bounce_decay, 0f..1f, 0.05f, SpectralHalation::bounceDecay,
    ) { copy(bounceDecay = it) },
)

private val glareControls = listOf(
    SpektrafilmNumberSpec(
        R.string.spektrafilm_glare_percent, 0f..1f, 0.01f, SpectralGlare::percent,
        R.string.spektrafilm_value_percent,
    ) { copy(percent = it) },
    SpektrafilmNumberSpec(
        R.string.spektrafilm_glare_roughness, 0f..1f, 0.05f, SpectralGlare::roughness,
    ) { copy(roughness = it) },
    SpektrafilmNumberSpec(
        R.string.spektrafilm_glare_blur, 0f..8f, 0.1f, SpectralGlare::blur,
        R.string.spektrafilm_value_px,
    ) { copy(blur = it) },
)
