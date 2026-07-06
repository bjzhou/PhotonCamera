package com.hinnka.mycamera.ui.components

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material3.BottomSheetDefaults
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.ModalBottomSheet
import androidx.compose.material3.Text
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.hapticfeedback.HapticFeedbackType
import androidx.compose.ui.platform.LocalHapticFeedback
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.hinnka.mycamera.model.EffectParams
import com.hinnka.mycamera.model.RecipeParam
import kotlin.math.abs
import com.hinnka.mycamera.ui.icons.AppIcons

enum class EffectType(
    val recipeParam: RecipeParam,
    val color: Color,
    val minValue: Float,
    val maxValue: Float,
    val defaultValue: Float
) {
    FILM_GRAIN(RecipeParam.FILM_GRAIN, Color(0xFF9E9E9E), 0f, 1f, 0f),
    VIGNETTE(RecipeParam.VIGNETTE, Color(0xFF795548), -1f, 1f, 0f),
    BLOOM(RecipeParam.BLOOM, Color(0xFFFFD54F), 0f, 1f, 0f),
    SOFT_LIGHT(RecipeParam.SOFT_LIGHT, Color(0xFFE8E1D4), 0f, 1f, 0f),
    HALATION(RecipeParam.HALATION, Color(0xFFFF7043), 0f, 1f, 0f),
    CHROMATIC_ABERRATION(RecipeParam.CHROMATIC_ABERRATION, Color(0xFFAB47BC), 0f, 1f, 0f),
    NOISE(RecipeParam.NOISE, Color(0xFFA1887F), 0f, 1f, 0f),
    LOW_RES(RecipeParam.LOW_RES, Color(0xFF8D6E63), 0f, 1f, 0f);

    fun getValue(params: EffectParams): Float {
        return when (this) {
            FILM_GRAIN -> params.filmGrain
            VIGNETTE -> params.vignette
            BLOOM -> params.bloom
            SOFT_LIGHT -> params.softLight
            HALATION -> params.halation
            CHROMATIC_ABERRATION -> params.chromaticAberration
            NOISE -> params.noise
            LOW_RES -> params.lowRes
        }
    }

    fun setValue(params: EffectParams, value: Float): EffectParams {
        val clamped = value.coerceIn(minValue, maxValue)
        return when (this) {
            FILM_GRAIN -> params.copy(filmGrain = clamped)
            VIGNETTE -> params.copy(vignette = clamped)
            BLOOM -> params.copy(bloom = clamped)
            SOFT_LIGHT -> params.copy(softLight = clamped)
            HALATION -> params.copy(halation = clamped)
            CHROMATIC_ABERRATION -> params.copy(chromaticAberration = clamped)
            NOISE -> params.copy(noise = clamped)
            LOW_RES -> params.copy(lowRes = clamped)
        }
    }
}

@Composable
fun EffectsActionChip(
    onClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    Row(
        modifier = modifier
            .clip(RoundedCornerShape(16.dp))
            .background(
                Color(0xFF00FFCC).copy(alpha = 0.15f)
            )
            .clickable(onClick = onClick)
            .padding(horizontal = 12.dp, vertical = 6.dp),
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.spacedBy(4.dp)
    ) {
        Icon(
            imageVector = AppIcons.Layers,
            contentDescription = stringResource(com.hinnka.mycamera.R.string.effects_title),
            tint = Color(0xFF00FFCC),
            modifier = Modifier.size(14.dp)
        )
        Text(
            text = stringResource(com.hinnka.mycamera.R.string.effects_title),
            color = Color.White,
            fontSize = 11.sp,
            fontWeight = FontWeight.Medium
        )
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun EffectsBottomSheet(
    currentParams: EffectParams,
    onParamsChange: (EffectParams) -> Unit,
    onDismiss: () -> Unit,
    modifier: Modifier = Modifier,
    containerColor: Color = Color.Black.copy(alpha = 0.86f)
) {
    ModalBottomSheet(
        onDismissRequest = onDismiss,
        containerColor = containerColor,
        scrimColor = Color.Transparent,
        dragHandle = { BottomSheetDefaults.DragHandle(color = Color.White.copy(alpha = 0.2f)) },
        modifier = modifier
    ) {
        EffectsPanel(
            currentParams = currentParams,
            onParamsChange = onParamsChange,
            modifier = Modifier
                .fillMaxWidth()
                .padding(bottom = 16.dp)
                .navigationBarsPadding()
        )
    }
}

/**
 * 独立的物理画面效果控制面板
 */
@Composable
fun EffectsPanel(
    currentParams: EffectParams,
    onParamsChange: (EffectParams) -> Unit,
    modifier: Modifier = Modifier
) {
    val haptic = LocalHapticFeedback.current

    Column(
        modifier = modifier
            .fillMaxWidth()
            .padding(horizontal = 16.dp, vertical = 8.dp)
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .weight(1f, fill = false)
                .verticalScroll(rememberScrollState()),
            verticalArrangement = Arrangement.spacedBy(4.dp)
        ) {
            EffectType.entries.forEach { effect ->
                val currentValue = effect.getValue(currentParams)
                val isActive = currentValue != effect.defaultValue

                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .height(36.dp)
                        .background(Color.White.copy(alpha = 0.02f), RoundedCornerShape(6.dp))
                        .padding(horizontal = 8.dp),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    // 1. 拟物发光 LED 状态指示灯
                    Box(
                        contentAlignment = Alignment.Center,
                        modifier = Modifier.size(12.dp)
                    ) {
                        if (isActive) {
                            Box(
                                modifier = Modifier
                                    .size(12.dp)
                                    .clip(CircleShape)
                                    .background(effect.color.copy(alpha = 0.25f))
                            )
                        }
                        Box(
                            modifier = Modifier
                                .size(6.dp)
                                .clip(CircleShape)
                                .background(
                                    if (isActive) effect.color else Color.White.copy(alpha = 0.2f)
                                )
                        )
                    }

                    Spacer(modifier = Modifier.width(8.dp))

                    // 2. 效果名 (固定宽度以对齐)
                    Text(
                        text = stringResource(effect.recipeParam.displayNameRes),
                        color = if (isActive) Color.White else Color.White.copy(alpha = 0.6f),
                        fontSize = 11.sp,
                        fontWeight = if (isActive) FontWeight.Bold else FontWeight.Normal,
                        modifier = Modifier.width(72.dp),
                        maxLines = 1
                    )

                    // 3. 滑块
                    CustomSlider(
                        value = currentValue,
                        onValueChange = { newValue ->
                            if (abs(newValue - currentValue) > 0.05f) {
                                haptic.performHapticFeedback(HapticFeedbackType.LongPress)
                            }
                            onParamsChange(effect.setValue(currentParams, newValue))
                        },
                        onDoubleTap = {
                            haptic.performHapticFeedback(HapticFeedbackType.LongPress)
                            val resetParams = effect.setValue(currentParams, effect.defaultValue)
                            onParamsChange(resetParams)
                        },
                        valueRange = effect.minValue..effect.maxValue,
                        activeTrackColor = effect.color,
                        inactiveTrackColor = Color.Gray.copy(alpha = 0.2f),
                        thumbColor = Color.White,
                        thumbRadius = 7.dp,
                        modifier = Modifier
                            .weight(1f)
                            .padding(horizontal = 8.dp)
                    )

                    // 4. 当前数值
                    Text(
                        text = formatEffectValue(effect, currentValue),
                        color = if (isActive) Color.White else Color.White.copy(alpha = 0.4f),
                        fontSize = 10.sp,
                        fontWeight = FontWeight.Medium,
                        textAlign = TextAlign.End,
                        modifier = Modifier.width(42.dp)
                    )
                }
            }
        }
    }
}

private fun formatEffectValue(effect: EffectType, value: Float): String {
    return when (effect) {
        EffectType.VIGNETTE -> {
            if (value >= 0) "+${String.format("%.2f", value)}" else String.format("%.2f", value)
        }
        else -> String.format("%.2f", value)
    }
}
