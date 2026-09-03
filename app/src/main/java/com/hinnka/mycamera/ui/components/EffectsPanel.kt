package com.hinnka.mycamera.ui.components

import androidx.compose.foundation.layout.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import com.hinnka.mycamera.R
import com.hinnka.mycamera.model.EffectParams
import com.hinnka.mycamera.model.RecipeParam

enum class EffectType(
    val recipeParam: RecipeParam
) {
    FILM_GRAIN(RecipeParam.FILM_GRAIN),
    CLARITY(RecipeParam.CLARITY),
    VIGNETTE(RecipeParam.VIGNETTE),
    FLASH(RecipeParam.FLASH),
    BLOOM(RecipeParam.BLOOM),
    SOFT_LIGHT(RecipeParam.SOFT_LIGHT),
    HALATION(RecipeParam.HALATION),
    CHROMATIC_ABERRATION(RecipeParam.CHROMATIC_ABERRATION),
    NOISE(RecipeParam.NOISE),
    LOW_RES(RecipeParam.LOW_RES);

    val defaultValue: Float
        get() = recipeParam.defaultValue

    fun getValue(params: EffectParams): Float {
        return when (this) {
            FILM_GRAIN -> params.filmGrain
            CLARITY -> params.clarity
            VIGNETTE -> params.vignette
            FLASH -> params.flash
            BLOOM -> params.bloom
            SOFT_LIGHT -> params.softLight
            HALATION -> params.halation
            CHROMATIC_ABERRATION -> params.chromaticAberration
            NOISE -> params.noise
            LOW_RES -> params.lowRes
        }
    }

    fun setValue(params: EffectParams, value: Float): EffectParams {
        val clamped = value.coerceIn(recipeParam.minValue, recipeParam.maxValue)
        return when (this) {
            FILM_GRAIN -> params.copy(filmGrain = clamped)
            CLARITY -> params.copy(clarity = clamped)
            VIGNETTE -> params.copy(vignette = clamped)
            FLASH -> params.copy(flash = clamped)
            BLOOM -> params.copy(bloom = clamped)
            SOFT_LIGHT -> params.copy(softLight = clamped)
            HALATION -> params.copy(halation = clamped)
            CHROMATIC_ABERRATION -> params.copy(chromaticAberration = clamped)
            NOISE -> params.copy(noise = clamped)
            LOW_RES -> params.copy(lowRes = clamped)
        }
    }
}

private enum class EffectGroup {
    LIGHT,
    ATMOSPHERE,
    TEXTURE,
}

private val effectGroups = listOf(
    EffectGroup.LIGHT to listOf(
        EffectType.FLASH,
        EffectType.BLOOM,
        EffectType.SOFT_LIGHT,
    ),
    EffectGroup.ATMOSPHERE to listOf(
        EffectType.VIGNETTE,
        EffectType.HALATION,
        EffectType.CHROMATIC_ABERRATION,
    ),
    EffectGroup.TEXTURE to listOf(
        EffectType.CLARITY,
        EffectType.FILM_GRAIN,
        EffectType.NOISE,
        EffectType.LOW_RES,
    ),
)

private val effectGroupTabs = listOf(
    EffectGroup.LIGHT to R.string.effects_group_light,
    EffectGroup.ATMOSPHERE to R.string.effects_group_optics,
    EffectGroup.TEXTURE to R.string.effects_group_texture,
)

/**
 * 物理画面效果内容，由统一编辑面板作为“效果”参数组承载。
 */
@Composable
fun EffectsPanel(
    currentParams: EffectParams,
    onParamsChange: (EffectParams) -> Unit,
    excludedEffects: Set<EffectType> = emptySet(),
    modifier: Modifier = Modifier
) {
    var selectedGroup by remember {
        mutableStateOf(
            effectGroups.firstOrNull { (_, effects) ->
                effects.any { effect ->
                    effect.getValue(currentParams) != effect.defaultValue
                }
            }?.first ?: EffectGroup.LIGHT
        )
    }
    val visibleEffects = effectGroups
        .first { (group) -> group == selectedGroup }
        .second
        .filterNot(excludedEffects::contains)

    Column(
        modifier = modifier.fillMaxWidth(),
        verticalArrangement = Arrangement.spacedBy(8.dp)
    ) {
        RecipeSectionTabs(
            tabs = effectGroupTabs,
            selectedTab = selectedGroup,
            onTabSelected = { selectedGroup = it },
        )

        visibleEffects.forEach { effect ->
            ColorRecipeSlider(
                param = effect.recipeParam,
                value = effect.getValue(currentParams),
                onValueChange = { newValue ->
                    onParamsChange(effect.setValue(currentParams, newValue))
                },
                onDoubleTap = {
                    onParamsChange(effect.setValue(currentParams, effect.defaultValue))
                },
                modifier = Modifier.fillMaxWidth()
            )
        }
    }
}
