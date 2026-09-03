package com.hinnka.mycamera.ui.components

import androidx.compose.animation.animateColorAsState
import androidx.compose.animation.core.animateFloatAsState
import androidx.compose.foundation.Canvas
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.gestures.detectDragGestures
import androidx.compose.foundation.gestures.detectTapGestures
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.selection.toggleable
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.BasicTextField
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Refresh
import androidx.compose.material3.Icon
import androidx.compose.material3.Text
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.Shape
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap
import androidx.compose.ui.graphics.luminance
import androidx.compose.ui.hapticfeedback.HapticFeedbackType
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.LocalHapticFeedback
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.input.ImeAction
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.hinnka.mycamera.R
import com.hinnka.mycamera.model.ColorPaletteState
import com.hinnka.mycamera.model.ColorRecipeParams
import com.hinnka.mycamera.model.EffectParams
import com.hinnka.mycamera.model.RecipeParam
import java.util.Locale
import kotlin.math.abs
import kotlin.math.round
import kotlin.math.roundToInt

private enum class RecipePanelTab {
    CURVE,
    COLOR,
    EFFECTS,
    REMARKS,
}

private enum class ColorPanelSection {
    CALIBRATION,
    GRADING,
    LCH,
    STYLE,
}

private enum class EffectSection {
    LIGHT,
    OPTICS,
    TEXTURE,
}

private enum class BasicRecipeControl(
    val titleRes: Int,
    val recipeParam: RecipeParam? = null,
    val effectType: EffectType? = null,
) {
    TONE(R.string.recipe_palette_tone),
    SATURATION(R.string.recipe_param_saturation, recipeParam = RecipeParam.SATURATION),
    CONTRAST(R.string.recipe_param_contrast, recipeParam = RecipeParam.CONTRAST),
    EXPOSURE(R.string.recipe_param_exposure, recipeParam = RecipeParam.EXPOSURE),
    TEMPERATURE(R.string.recipe_param_temperature, recipeParam = RecipeParam.TEMPERATURE),
    TINT(R.string.recipe_param_tint, recipeParam = RecipeParam.TINT),
    HIGHLIGHTS(R.string.recipe_param_highlights, recipeParam = RecipeParam.HIGHLIGHTS),
    SHADOWS(R.string.recipe_param_shadows, recipeParam = RecipeParam.SHADOWS),
    VIGNETTE(R.string.recipe_param_vignette, effectType = EffectType.VIGNETTE),
    FILM_GRAIN(R.string.recipe_param_film_grain, effectType = EffectType.FILM_GRAIN),
    CLARITY(R.string.recipe_param_clarity, effectType = EffectType.CLARITY),
    SHARPNESS(R.string.recipe_param_sharpness, recipeParam = RecipeParam.SHARPNESS),
}

private val basicRecipeControls = BasicRecipeControl.entries

/** 曝光参数常见 1/3 EV 档位列表 */
private val exposureSteps = listOf(
    -2.0f, -1.7f, -1.3f, -1.0f, -0.7f, -0.3f,
    0.0f,
    0.3f, 0.7f, 1.0f, 1.3f, 1.7f, 2.0f
)

/**
 * 色彩配方控制面板
 *
 * 基础模式使用 4 x 3 宫格承载最常用的调色项；高级模式保留曲线、校准、LCH 等专业工具。
 * 显示值使用 -10..10 / 0..10 统一量程，底层仍保持旧配方的算法值域。
 */
@Composable
fun ColorRecipePanel(
    currentParams: ColorRecipeParams,
    paletteState: ColorPaletteState,
    onPaletteStateChange: (ColorPaletteState) -> Unit,
    onParamChange: (RecipeParam, Float) -> Unit,
    onParamsChange: (ColorRecipeParams) -> Unit,
    onRemarksChange: (String) -> Unit,
    onCurveChange: (CurveChannel, FloatArray?) -> Unit = { _, _ -> },
    imageHistogram: ImageHistogram? = null,
    hideNonBakeable: Boolean = true,
    showLutIntensity: Boolean = false,
    currentEffects: EffectParams? = null,
    onEffectsChange: ((EffectParams) -> Unit)? = null,
    headerControls: (@Composable () -> Unit)? = null,
    containerShape: Shape = RoundedCornerShape(topStart = 16.dp, topEnd = 16.dp),
    modifier: Modifier = Modifier
) {
    val isBakeable: (RecipeParam) -> Boolean = { param ->
        param != RecipeParam.VIGNETTE &&
        param != RecipeParam.FLASH &&
        param != RecipeParam.FILM_GRAIN &&
        param != RecipeParam.CLARITY &&
        param != RecipeParam.SHARPNESS &&
        param != RecipeParam.BLOOM &&
        param != RecipeParam.SOFT_LIGHT &&
        param != RecipeParam.HDF &&
        param != RecipeParam.HALATION &&
        param != RecipeParam.CHROMATIC_ABERRATION &&
        param != RecipeParam.NOISE &&
        param != RecipeParam.LOW_RES
    }

    var showAdvanced by remember { mutableStateOf(false) }
    var selectedTab by remember { mutableStateOf(RecipePanelTab.CURVE) }
    var selectedBasicControl by remember { mutableStateOf(BasicRecipeControl.EXPOSURE) }
    var selectedColorSection by remember { mutableStateOf(ColorPanelSection.CALIBRATION) }
    var selectedEffectSection by remember { mutableStateOf(EffectSection.LIGHT) }
    var selectedLchTabIndex by remember { mutableIntStateOf(0) }
    var selectedCalibrationTabIndex by remember { mutableIntStateOf(0) }

    val showEffects = !hideNonBakeable || (currentEffects != null && onEffectsChange != null)

    val tabs = buildList {
        add(RecipePanelTab.CURVE to R.string.recipe_tab_curve)
        add(RecipePanelTab.COLOR to R.string.recipe_tab_color)
        if (showEffects) add(RecipePanelTab.EFFECTS to R.string.effects_title)
        if (!hideNonBakeable) add(RecipePanelTab.REMARKS to R.string.recipe_tab_remarks)
    }

    val colorStyleParams = listOf(
        RecipeParam.COLOR,
        RecipeParam.FADE,
        RecipeParam.BLEACH_BYPASS,
    )

    val lchGroups = listOf(
        R.string.recipe_lch_skin to listOf(
            RecipeParam.SKIN_HUE,
            RecipeParam.SKIN_CHROMA,
            RecipeParam.SKIN_LIGHTNESS,
        ),
        R.string.recipe_lch_red to listOf(
            RecipeParam.RED_HUE,
            RecipeParam.RED_CHROMA,
            RecipeParam.RED_LIGHTNESS,
        ),
        R.string.recipe_lch_orange to listOf(
            RecipeParam.ORANGE_HUE,
            RecipeParam.ORANGE_CHROMA,
            RecipeParam.ORANGE_LIGHTNESS,
        ),
        R.string.recipe_lch_yellow to listOf(
            RecipeParam.YELLOW_HUE,
            RecipeParam.YELLOW_CHROMA,
            RecipeParam.YELLOW_LIGHTNESS,
        ),
        R.string.recipe_lch_green to listOf(
            RecipeParam.GREEN_HUE,
            RecipeParam.GREEN_CHROMA,
            RecipeParam.GREEN_LIGHTNESS,
        ),
        R.string.recipe_lch_cyan to listOf(
            RecipeParam.CYAN_HUE,
            RecipeParam.CYAN_CHROMA,
            RecipeParam.CYAN_LIGHTNESS,
        ),
        R.string.recipe_lch_blue to listOf(
            RecipeParam.BLUE_HUE,
            RecipeParam.BLUE_CHROMA,
            RecipeParam.BLUE_LIGHTNESS,
        ),
        R.string.recipe_lch_purple to listOf(
            RecipeParam.PURPLE_HUE,
            RecipeParam.PURPLE_CHROMA,
            RecipeParam.PURPLE_LIGHTNESS,
        ),
        R.string.recipe_lch_magenta to listOf(
            RecipeParam.MAGENTA_HUE,
            RecipeParam.MAGENTA_CHROMA,
            RecipeParam.MAGENTA_LIGHTNESS,
        ),
    )

    val calibrationGroups = listOf(
        R.string.recipe_lch_red to listOf(
            RecipeParam.PRIMARY_RED_HUE,
            RecipeParam.PRIMARY_RED_SATURATION,
        ),
        R.string.recipe_lch_green to listOf(
            RecipeParam.PRIMARY_GREEN_HUE,
            RecipeParam.PRIMARY_GREEN_SATURATION,
        ),
        R.string.recipe_lch_blue to listOf(
            RecipeParam.PRIMARY_BLUE_HUE,
            RecipeParam.PRIMARY_BLUE_SATURATION,
        ),
    )

    val effectGroups = listOf(
        EffectSection.LIGHT to listOf(
            EffectType.FLASH,
            EffectType.BLOOM,
            EffectType.SOFT_LIGHT,
        ),
        EffectSection.OPTICS to listOf(
            EffectType.VIGNETTE,
            EffectType.HALATION,
            EffectType.CHROMATIC_ABERRATION,
        ),
        EffectSection.TEXTURE to listOf(
            EffectType.CLARITY,
            EffectType.FILM_GRAIN,
            EffectType.NOISE,
            EffectType.LOW_RES,
        ),
    )

    fun resetTab(tab: RecipePanelTab) {
        when (tab) {
            RecipePanelTab.CURVE -> onParamsChange(
                currentParams.copy(
                    masterCurvePoints = null,
                    redCurvePoints = null,
                    greenCurvePoints = null,
                    blueCurvePoints = null
                )
            )
            RecipePanelTab.COLOR -> {
                val colorParams = colorStyleParams +
                    calibrationGroups.flatMap { it.second } +
                    lchGroups.flatMap { it.second }
                onParamsChange(
                    resetParams(
                        currentParams.resetColorGrading(),
                        if (hideNonBakeable) colorParams.filter(isBakeable) else colorParams
                    )
                )
            }
            RecipePanelTab.EFFECTS -> {
                if (currentEffects != null && onEffectsChange != null) {
                    onEffectsChange(EffectParams.DEFAULT)
                } else {
                    val effectParams = effectGroups.flatMap { it.second }.map { it.recipeParam }
                    onParamsChange(resetParams(currentParams, effectParams))
                }
            }
            RecipePanelTab.REMARKS -> Unit
        }
    }

    fun resetAllParams() {
        onPaletteStateChange(ColorPaletteState.DEFAULT)
        if (!hideNonBakeable) {
            onParamsChange(ColorRecipeParams.DEFAULT)
            onEffectsChange?.invoke(EffectParams.DEFAULT)
            return
        }

        val defaultPaletteState = ColorPaletteState.DEFAULT
        val basicRecipeParams = listOf(
            RecipeParam.SATURATION,
            RecipeParam.CONTRAST,
            RecipeParam.EXPOSURE,
            RecipeParam.TEMPERATURE,
            RecipeParam.TINT,
            RecipeParam.HIGHLIGHTS,
            RecipeParam.SHADOWS,
            RecipeParam.SHARPNESS,
        )
        val visibleParams = (basicRecipeParams + colorStyleParams).filter(isBakeable) +
            RecipeParam.SHARPNESS +
            calibrationGroups.flatMap { it.second } +
            lchGroups.flatMap { it.second } +
            if (showLutIntensity) listOf(RecipeParam.LUT_INTENSITY) else emptyList()

        onParamsChange(
            resetParams(
                currentParams.copy(
                    paletteX = defaultPaletteState.x,
                    paletteY = defaultPaletteState.y,
                    paletteDensity = defaultPaletteState.density,
                    masterCurvePoints = null,
                    redCurvePoints = null,
                    greenCurvePoints = null,
                    blueCurvePoints = null
                ).resetColorGrading(),
                visibleParams
            )
        )
        onEffectsChange?.invoke(EffectParams.DEFAULT)
    }

    fun basicRawValue(control: BasicRecipeControl): Float {
        if (control == BasicRecipeControl.TONE) {
            return paletteState.toneValue / ColorPaletteState.AXIS_MAX
        }
        control.effectType?.let { effect ->
            return currentEffects?.let(effect::getValue)
                ?: effect.recipeParam.getValue(currentParams)
        }
        return checkNotNull(control.recipeParam).getValue(currentParams)
    }

    fun setBasicRawValue(control: BasicRecipeControl, value: Float) {
        if (control == BasicRecipeControl.TONE) {
            onPaletteStateChange(
                paletteState.withValues(
                    tone = value.coerceIn(-1f, 1f) * ColorPaletteState.AXIS_MAX,
                ).normalized()
            )
            return
        }
        control.effectType?.let { effect ->
            if (currentEffects != null && onEffectsChange != null) {
                onEffectsChange(effect.setValue(currentEffects, value))
            } else {
                onParamChange(effect.recipeParam, value)
            }
            return
        }
        control.recipeParam?.let { onParamChange(it, value) }
    }

    fun getEffectRawValue(effect: EffectType): Float {
        return currentEffects?.let(effect::getValue)
            ?: effect.recipeParam.getValue(currentParams)
    }

    fun setEffectRawValue(effect: EffectType, value: Float) {
        if (currentEffects != null && onEffectsChange != null) {
            onEffectsChange(effect.setValue(currentEffects, value))
        } else {
            onParamChange(effect.recipeParam, value)
        }
    }

    Column(
        modifier = modifier
            .fillMaxWidth()
            .clip(containerShape)
            .background(Color(0xF9121316))
            .border(0.5.dp, Color.White.copy(alpha = 0.08f), containerShape)
            .padding(start = 14.dp, top = 12.dp, end = 14.dp, bottom = 12.dp),
        verticalArrangement = Arrangement.spacedBy(8.dp)
    ) {
        // 最上层：滤镜强度（若启用，无边框极简单行）
        if (showLutIntensity) {
            FlatLutIntensityRow(
                intensity = currentParams.lutIntensity,
                onIntensityChange = { onParamChange(RecipeParam.LUT_INTENSITY, it) },
                modifier = Modifier.fillMaxWidth()
            )
        }

        // 模式切换与重置栏：大圆角胶囊按钮，文字大小统一为 11.sp
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .height(30.dp)
                .padding(horizontal = 2.dp),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.SpaceBetween
        ) {
            RecipeFlatModeToggle(
                isAdvanced = showAdvanced,
                onModeChange = { showAdvanced = it },
            )

            headerControls?.let { controls ->
                Row(
                    modifier = Modifier
                        .weight(1f)
                        .padding(horizontal = 6.dp)
                        .horizontalScroll(rememberScrollState()),
                    horizontalArrangement = Arrangement.spacedBy(4.dp),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    controls()
                }
            }

            Row(
                modifier = Modifier
                    .height(30.dp)
                    .clip(CircleShape)
                    .background(Color.White.copy(alpha = 0.08f))
                    .clickable { resetAllParams() }
                    .padding(horizontal = 12.dp),
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(4.dp)
            ) {
                Icon(
                    imageVector = Icons.Default.Refresh,
                    contentDescription = null,
                    tint = Color(0xFFFFC46B),
                    modifier = Modifier.size(12.dp)
                )
                Text(
                    text = stringResource(R.string.color_recipe_reset_all),
                    color = Color.White.copy(alpha = 0.85f),
                    fontSize = 11.sp,
                    fontWeight = FontWeight.Medium,
                    maxLines = 1
                )
            }
        }

        if (!showAdvanced) {
            // 基础模式：4 x 3 扁平规整矩阵（12 项参数清晰全显）
            BasicRecipeGrid(
                controls = basicRecipeControls,
                selectedControl = selectedBasicControl,
                valueFor = { control -> basicDisplayValue(control, basicRawValue(control)) },
                enabledFor = { true },
                onControlSelected = { selectedBasicControl = it },
                onControlReset = { control ->
                    val defaultVal = basicDefaultRawValue(control)
                    setBasicRawValue(control, defaultVal)
                }
            )

            // 专属精细调参底座（带标题与大刻度尺）
            BasicRecipeAdjuster(
                control = selectedBasicControl,
                displayValue = basicDisplayValue(
                    selectedBasicControl,
                    basicRawValue(selectedBasicControl)
                ),
                onDisplayValueChange = { newDisplayValue ->
                    setBasicRawValue(
                        selectedBasicControl,
                        basicRawValue(selectedBasicControl, newDisplayValue)
                    )
                },
                onReset = {
                    setBasicRawValue(
                        selectedBasicControl,
                        basicDefaultRawValue(selectedBasicControl)
                    )
                },
                modifier = Modifier.fillMaxWidth()
            )

            Spacer(modifier = Modifier.height(6.dp))
        } else {
            // 高级模式主标签栏：曲线、色彩、效果、备注
            RecipeAdvancedTabs(
                tabs = tabs,
                selectedTab = selectedTab,
                onTabSelected = { selectedTab = it },
                onTabReset = ::resetTab,
            )

            Spacer(modifier = Modifier.height(4.dp))

            when (selectedTab) {
                RecipePanelTab.CURVE -> {
                    CurveEditorPanel(
                        currentParams = currentParams,
                        onCurveChange = onCurveChange,
                        imageHistogram = imageHistogram,
                        modifier = Modifier.fillMaxWidth()
                    )
                }
                RecipePanelTab.COLOR -> {
                    ColorSectionTabs(
                        selectedSection = selectedColorSection,
                        onSectionSelected = { selectedColorSection = it }
                    )
                    Spacer(modifier = Modifier.height(4.dp))
                    when (selectedColorSection) {
                        ColorPanelSection.CALIBRATION -> {
                            ColorRingTabs(
                                count = calibrationGroups.size,
                                selectedTabIndex = selectedCalibrationTabIndex,
                                onTabSelected = { selectedCalibrationTabIndex = it },
                                getColor = { index ->
                                    when (index) {
                                        0 -> Color(0xFFE53935)
                                        1 -> Color(0xFF43A047)
                                        2 -> Color(0xFF1E88E5)
                                        else -> Color.White
                                    }
                                }
                            )
                            Spacer(modifier = Modifier.height(4.dp))
                            Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                                calibrationGroups[selectedCalibrationTabIndex].second.forEach { param ->
                                    RecipeIntegerParamItem(
                                        param = param,
                                        value = param.getValue(currentParams),
                                        onValueChange = { onParamChange(param, it) },
                                    )
                                }
                            }
                        }
                        ColorPanelSection.GRADING -> {
                            ColorGradingPanel(
                                currentParams = currentParams,
                                onParamsChange = onParamsChange,
                                modifier = Modifier.fillMaxWidth(),
                            )
                        }
                        ColorPanelSection.LCH -> {
                            ColorRingTabs(
                                count = lchGroups.size,
                                selectedTabIndex = selectedLchTabIndex,
                                onTabSelected = { selectedLchTabIndex = it },
                                getColor = { getLchTabColor(it) }
                            )
                            Spacer(modifier = Modifier.height(4.dp))
                            Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                                lchGroups[selectedLchTabIndex].second.forEach { param ->
                                    RecipeIntegerParamItem(
                                        param = param,
                                        value = param.getValue(currentParams),
                                        onValueChange = { onParamChange(param, it) },
                                    )
                                }
                            }
                        }
                        ColorPanelSection.STYLE -> {
                            val visibleParams = if (hideNonBakeable) {
                                colorStyleParams.filter(isBakeable)
                            } else {
                                colorStyleParams
                            }
                            Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                                visibleParams.forEach { param ->
                                    RecipeIntegerParamItem(
                                        param = param,
                                        value = param.getValue(currentParams),
                                        onValueChange = { onParamChange(param, it) },
                                    )
                                }
                            }
                        }
                    }
                }
                RecipePanelTab.EFFECTS -> {
                    EffectSectionTabs(
                        selectedSection = selectedEffectSection,
                        onSectionSelected = { selectedEffectSection = it }
                    )
                    Spacer(modifier = Modifier.height(4.dp))
                    val visibleEffects = effectGroups
                        .first { it.first == selectedEffectSection }
                        .second

                    Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                        visibleEffects.forEach { effect ->
                            RecipeEffectParamItem(
                                effect = effect,
                                value = getEffectRawValue(effect),
                                onValueChange = { setEffectRawValue(effect, it) },
                            )
                        }
                    }
                }
                RecipePanelTab.REMARKS -> {
                    ColorRecipeRemarksBar(
                        remarks = currentParams.remarks ?: "",
                        onRemarksChange = onRemarksChange,
                        modifier = Modifier.fillMaxWidth()
                    )
                }
            }
        }
    }
}

private fun basicDefaultRawValue(control: BasicRecipeControl): Float = when (control) {
    BasicRecipeControl.TONE -> 0f
    else -> control.effectType?.defaultValue ?: checkNotNull(control.recipeParam).defaultValue
}

private fun basicDisplayRange(
    control: BasicRecipeControl,
): ClosedFloatingPointRange<Float> = when (control) {
    BasicRecipeControl.EXPOSURE -> RecipeParam.EXPOSURE.minValue..RecipeParam.EXPOSURE.maxValue
    BasicRecipeControl.FILM_GRAIN -> 0f..10f
    else -> -10f..10f
}

private fun basicDisplayValue(control: BasicRecipeControl, rawValue: Float): Float = when (control) {
    BasicRecipeControl.TONE -> (rawValue.coerceIn(-1f, 1f) * 10f).roundToInt().toFloat()
    BasicRecipeControl.EXPOSURE -> RecipeParam.EXPOSURE.clamp(rawValue)
    else -> {
        val param = control.effectType?.recipeParam ?: checkNotNull(control.recipeParam)
        param.toDisplayValue(rawValue).roundToInt().toFloat()
    }
}

private fun basicRawValue(control: BasicRecipeControl, displayValue: Float): Float = when (control) {
    BasicRecipeControl.TONE -> (displayValue / 10f).coerceIn(-1f, 1f)
    BasicRecipeControl.EXPOSURE -> RecipeParam.EXPOSURE.clamp(displayValue)
    else -> {
        val param = control.effectType?.recipeParam ?: checkNotNull(control.recipeParam)
        param.fromDisplayValue(displayValue)
    }
}

private fun RecipeParam.usesSignedDisplayScale(): Boolean =
    (minValue < 0f && maxValue > 0f) ||
        (defaultValue > minValue && defaultValue < maxValue)

private fun RecipeParam.displayValueRange(): ClosedFloatingPointRange<Float> = when {
    this == RecipeParam.EXPOSURE -> minValue..maxValue
    usesSignedDisplayScale() -> -10f..10f
    else -> 0f..10f
}

private fun RecipeParam.toDisplayValue(rawValue: Float): Float {
    val value = clamp(rawValue)
    if (this == RecipeParam.EXPOSURE) return value
    if (!usesSignedDisplayScale()) {
        val span = (maxValue - minValue).coerceAtLeast(0.0001f)
        return ((value - minValue) / span * 10f).coerceIn(0f, 10f)
    }
    return if (value >= defaultValue) {
        val positiveSpan = (maxValue - defaultValue).coerceAtLeast(0.0001f)
        ((value - defaultValue) / positiveSpan * 10f).coerceIn(0f, 10f)
    } else {
        val negativeSpan = (defaultValue - minValue).coerceAtLeast(0.0001f)
        ((value - defaultValue) / negativeSpan * 10f).coerceIn(-10f, 0f)
    }
}

private fun RecipeParam.fromDisplayValue(displayValue: Float): Float {
    if (this == RecipeParam.EXPOSURE) return clamp(displayValue)
    if (!usesSignedDisplayScale()) {
        val fraction = (displayValue / 10f).coerceIn(0f, 1f)
        return clamp(minValue + (maxValue - minValue) * fraction)
    }
    val normalized = (displayValue / 10f).coerceIn(-1f, 1f)
    val raw = if (normalized >= 0f) {
        defaultValue + normalized * (maxValue - defaultValue)
    } else {
        defaultValue + normalized * (defaultValue - minValue)
    }
    return clamp(raw)
}

private fun formatBasicDisplayValue(control: BasicRecipeControl, value: Float): String {
    if (control == BasicRecipeControl.EXPOSURE) {
        return formatExposureValue(value)
    }
    val intVal = value.roundToInt()
    return if (intVal > 0 && basicDisplayRange(control).start < 0f) "+$intVal" else "$intVal"
}

private fun formatExposureValue(value: Float): String {
    return if (abs(value) < 0.04f) "0.0" else String.format(Locale.getDefault(), "%+.1f", value)
}

private fun formatIntegerDisplayValue(value: Int, isSigned: Boolean): String {
    return if (isSigned && value > 0) "+$value" else "$value"
}

private fun getBasicControlColor(control: BasicRecipeControl): Color = when (control) {
    BasicRecipeControl.TONE -> Color(0xFFFFC46B)
    BasicRecipeControl.SATURATION -> Color(0xFFFF668D)
    BasicRecipeControl.CONTRAST -> Color(0xFFC18CFF)
    BasicRecipeControl.EXPOSURE -> Color(0xFFFFD45C)
    BasicRecipeControl.TEMPERATURE -> Color(0xFFFF9D57)
    BasicRecipeControl.TINT -> Color(0xFFE56CD8)
    BasicRecipeControl.HIGHLIGHTS -> Color(0xFFFF8D74)
    BasicRecipeControl.SHADOWS -> Color(0xFF748FFF)
    BasicRecipeControl.VIGNETTE -> Color(0xFFB38A74)
    BasicRecipeControl.FILM_GRAIN -> Color(0xFFB7B7B7)
    BasicRecipeControl.CLARITY -> Color(0xFF55D6C2)
    BasicRecipeControl.SHARPNESS -> Color(0xFF7BD7FF)
}

@Composable
private fun RecipeFlatModeToggle(
    isAdvanced: Boolean,
    onModeChange: (Boolean) -> Unit,
    modifier: Modifier = Modifier,
) {
    Row(
        modifier = modifier
            .height(30.dp)
            .clip(CircleShape)
            .background(Color.White.copy(alpha = 0.08f))
            .padding(2.dp),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        Box(
            modifier = Modifier
                .fillMaxHeight()
                .clip(CircleShape)
                .background(if (!isAdvanced) Color.White.copy(alpha = 0.2f) else Color.Transparent)
                .clickable { onModeChange(false) }
                .padding(horizontal = 12.dp),
            contentAlignment = Alignment.Center,
        ) {
            Text(
                text = stringResource(R.string.recipe_color_basic),
                color = if (!isAdvanced) Color.White else Color.White.copy(alpha = 0.5f),
                fontSize = 11.sp,
                fontWeight = if (!isAdvanced) FontWeight.SemiBold else FontWeight.Normal,
                maxLines = 1,
            )
        }
        Box(
            modifier = Modifier
                .fillMaxHeight()
                .clip(CircleShape)
                .background(if (isAdvanced) Color.White.copy(alpha = 0.2f) else Color.Transparent)
                .clickable { onModeChange(true) }
                .padding(horizontal = 12.dp),
            contentAlignment = Alignment.Center,
        ) {
            Text(
                text = stringResource(R.string.recipe_panel_advanced),
                color = if (isAdvanced) Color.White else Color.White.copy(alpha = 0.5f),
                fontSize = 11.sp,
                fontWeight = if (isAdvanced) FontWeight.SemiBold else FontWeight.Normal,
                maxLines = 1,
            )
        }
    }
}

@Composable
private fun FlatLutIntensityRow(
    intensity: Float,
    onIntensityChange: (Float) -> Unit,
    modifier: Modifier = Modifier,
) {
    val displayPercent = (intensity.coerceIn(0f, 1f) * 100f).roundToInt()
    Row(
        modifier = modifier
            .fillMaxWidth()
            .height(28.dp)
            .padding(horizontal = 4.dp),
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.spacedBy(8.dp)
    ) {
        Text(
            text = stringResource(R.string.filter_intensity),
            color = Color.White.copy(alpha = 0.72f),
            fontSize = 11.sp,
            fontWeight = FontWeight.Medium,
            maxLines = 1
        )
        CustomSlider(
            value = intensity.coerceIn(0f, 1f),
            onValueChange = onIntensityChange,
            onDoubleTap = { onIntensityChange(1f) },
            valueRange = 0f..1f,
            activeTrackColor = Color.White,
            inactiveTrackColor = Color.White.copy(alpha = 0.18f),
            thumbColor = Color.White,
            modifier = Modifier
                .weight(1f)
                .height(20.dp)
        )
        Text(
            text = "$displayPercent%",
            color = Color.White,
            fontSize = 12.sp,
            fontFamily = FontFamily.Monospace,
            fontWeight = FontWeight.Bold,
            maxLines = 1
        )
    }
}

@Composable
private fun BasicRecipeGrid(
    controls: List<BasicRecipeControl>,
    selectedControl: BasicRecipeControl,
    valueFor: (BasicRecipeControl) -> Float,
    enabledFor: (BasicRecipeControl) -> Boolean,
    onControlSelected: (BasicRecipeControl) -> Unit,
    onControlReset: (BasicRecipeControl) -> Unit,
    modifier: Modifier = Modifier,
) {
    Column(
        modifier = modifier.fillMaxWidth(),
        verticalArrangement = Arrangement.spacedBy(6.dp)
    ) {
        controls.chunked(4).forEach { rowControls ->
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(6.dp),
            ) {
                rowControls.forEach { control ->
                    BasicRecipeTile(
                        control = control,
                        value = valueFor(control),
                        isSelected = control == selectedControl,
                        enabled = enabledFor(control),
                        onClick = { onControlSelected(control) },
                        onDoubleClick = { onControlReset(control) },
                        modifier = Modifier.weight(1f),
                    )
                }
                repeat(4 - rowControls.size) { Spacer(Modifier.weight(1f)) }
            }
        }
    }
}

@Composable
private fun BasicRecipeTile(
    control: BasicRecipeControl,
    value: Float,
    isSelected: Boolean,
    enabled: Boolean,
    onClick: () -> Unit,
    onDoubleClick: () -> Unit,
    modifier: Modifier = Modifier,
) {
    val defaultDisplayVal = basicDisplayValue(control, basicDefaultRawValue(control))
    val isModified = abs(value - defaultDisplayVal) > 0.05f
    val accent = getBasicControlColor(control)
    val haptic = LocalHapticFeedback.current

    val tileBg = when {
        isSelected -> Color(0xFF242730)
        isModified -> Color(0xFF1B1D22)
        else -> Color(0xFF16171B)
    }

    val borderColor = when {
        isSelected -> accent.copy(alpha = 0.92f)
        isModified -> Color.White.copy(alpha = 0.16f)
        else -> Color.White.copy(alpha = 0.06f)
    }

    Column(
        modifier = modifier
            .height(54.dp)
            .clip(RoundedCornerShape(8.dp))
            .background(tileBg)
            .border(if (isSelected) 1.2.dp else 0.5.dp, borderColor, RoundedCornerShape(8.dp))
            .pointerInput(enabled) {
                if (enabled) {
                    detectTapGestures(
                        onTap = {
                            haptic.performHapticFeedback(HapticFeedbackType.TextHandleMove)
                            onClick()
                        },
                        onDoubleTap = {
                            haptic.performHapticFeedback(HapticFeedbackType.LongPress)
                            onDoubleClick()
                        }
                    )
                }
            }
            .padding(horizontal = 8.dp, vertical = 6.dp),
        verticalArrangement = Arrangement.SpaceBetween,
    ) {
        Row(
            modifier = Modifier.fillMaxWidth(),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.SpaceBetween
        ) {
            Text(
                text = stringResource(control.titleRes),
                color = if (isSelected) accent else Color.White.copy(alpha = if (enabled) 0.68f else 0.28f),
                fontSize = 11.sp,
                fontWeight = if (isSelected) FontWeight.SemiBold else FontWeight.Normal,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis,
            )
            if (isModified && !isSelected) {
                Box(
                    modifier = Modifier
                        .size(4.dp)
                        .clip(CircleShape)
                        .background(accent)
                )
            }
        }

        Text(
            text = formatBasicDisplayValue(control, value),
            color = when {
                isSelected -> accent
                isModified -> Color.White
                else -> Color.White.copy(alpha = 0.35f)
            },
            fontSize = 15.sp,
            fontWeight = FontWeight.Bold,
            fontFamily = FontFamily.Monospace,
            maxLines = 1,
        )
    }
}

@Composable
private fun BasicRecipeAdjuster(
    control: BasicRecipeControl,
    displayValue: Float,
    onDisplayValueChange: (Float) -> Unit,
    onReset: () -> Unit,
    modifier: Modifier = Modifier,
) {
    val range = basicDisplayRange(control)
    val accent = getBasicControlColor(control)
    val haptic = LocalHapticFeedback.current

    Column(
        modifier = modifier
            .fillMaxWidth()
            .clip(RoundedCornerShape(12.dp))
            .background(Color(0xFF181A1F))
            .border(0.5.dp, Color.White.copy(alpha = 0.08f), RoundedCornerShape(12.dp))
            .pointerInput(Unit) {
                detectTapGestures(
                    onDoubleTap = {
                        haptic.performHapticFeedback(HapticFeedbackType.LongPress)
                        onReset()
                    }
                )
            }
            .padding(horizontal = 14.dp, vertical = 8.dp),
        verticalArrangement = Arrangement.spacedBy(4.dp)
    ) {
        Row(
            modifier = Modifier.fillMaxWidth(),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.SpaceBetween
        ) {
            Row(
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(6.dp)
            ) {
                Box(
                    modifier = Modifier
                        .size(6.dp)
                        .clip(CircleShape)
                        .background(accent)
                )
                Text(
                    text = stringResource(control.titleRes),
                    color = Color.White.copy(alpha = 0.88f),
                    fontSize = 12.sp,
                    fontWeight = FontWeight.Medium
                )
            }

            Text(
                text = formatBasicDisplayValue(control, displayValue),
                color = accent,
                fontSize = 16.sp,
                fontWeight = FontWeight.Bold,
                fontFamily = FontFamily.Monospace
            )
        }

        if (control == BasicRecipeControl.EXPOSURE) {
            RecipeScaleRuler(
                values = exposureSteps,
                currentValue = displayValue,
                onValueChange = onDisplayValueChange,
                onDoubleTap = onReset,
                accentColor = accent,
                isMajorTick = { abs(it - round(it)) < 0.05f },
                zeroValue = 0.0f,
                height = 34.dp,
                modifier = Modifier.fillMaxWidth()
            )
        } else {
            val isSigned = range.start < 0f
            val rulerValues = if (isSigned) {
                (-10..10).map { it.toFloat() }
            } else {
                (0..10).map { it.toFloat() }
            }
            RecipeScaleRuler(
                values = rulerValues,
                currentValue = displayValue.roundToInt().toFloat(),
                onValueChange = onDisplayValueChange,
                onDoubleTap = onReset,
                accentColor = accent,
                isMajorTick = { if (isSigned) it.toInt() % 5 == 0 else it.toInt() == 0 || it.toInt() == 5 || it.toInt() == 10 },
                zeroValue = 0f,
                height = 34.dp,
                modifier = Modifier.fillMaxWidth()
            )
        }
    }
}

/**
 * 精致微刻度标尺 (RecipeScaleRuler)
 * 极简现代数码相机取景器风格，纤细雅致，支持横向滑动与点选，双击归零
 */
@Composable
private fun RecipeScaleRuler(
    values: List<Float>,
    currentValue: Float,
    onValueChange: (Float) -> Unit,
    onDoubleTap: () -> Unit,
    accentColor: Color,
    isMajorTick: (Float) -> Boolean,
    modifier: Modifier = Modifier,
    zeroValue: Float = 0f,
    height: Dp = 32.dp,
) {
    val haptic = LocalHapticFeedback.current
    val density = LocalDensity.current
    val valuesState by rememberUpdatedState(values)
    val onValueChangeState by rememberUpdatedState(onValueChange)
    val onDoubleTapState by rememberUpdatedState(onDoubleTap)
    val currentValueState by rememberUpdatedState(currentValue)

    val paddingPx = with(density) { 16.dp.toPx() }

    fun findClosest(x: Float, width: Float): Float {
        val count = valuesState.size
        if (count <= 1) return valuesState.firstOrNull() ?: 0f
        val innerWidth = (width - 2 * paddingPx).coerceAtLeast(1f)
        val clampedX = (x - paddingPx).coerceIn(0f, innerWidth)
        val fraction = clampedX / innerWidth
        val index = (fraction * (count - 1)).roundToInt().coerceIn(0, count - 1)
        return valuesState[index]
    }

    Box(
        modifier = modifier
            .fillMaxWidth()
            .height(height)
            .pointerInput(values) {
                detectTapGestures(
                    onDoubleTap = {
                        haptic.performHapticFeedback(HapticFeedbackType.LongPress)
                        onDoubleTapState()
                    },
                    onTap = { offset ->
                        val target = findClosest(offset.x, size.width.toFloat())
                        if (abs(target - currentValueState) > 0.001f) {
                            haptic.performHapticFeedback(HapticFeedbackType.TextHandleMove)
                            onValueChangeState(target)
                        }
                    }
                )
            }
            .pointerInput(values) {
                detectDragGestures { change, _ ->
                    change.consume()
                    val target = findClosest(change.position.x, size.width.toFloat())
                    if (abs(target - currentValueState) > 0.001f) {
                        haptic.performHapticFeedback(HapticFeedbackType.TextHandleMove)
                        onValueChangeState(target)
                    }
                }
            }
    ) {
        Canvas(modifier = Modifier.fillMaxSize()) {
            val count = values.size
            if (count <= 1) return@Canvas

            val innerWidth = size.width - 2 * paddingPx
            val stepWidth = innerWidth / (count - 1)
            val centerY = size.height / 2f

            val currentIndex = values.indices.minByOrNull { abs(values[it] - currentValue) } ?: 0
            val zeroIndex = values.indices.minByOrNull { abs(values[it] - zeroValue) } ?: 0

            val currentX = paddingPx + currentIndex * stepWidth
            val zeroX = paddingPx + zeroIndex * stepWidth

            // 1. 基准线 (1dp, 干净半透)
            drawLine(
                color = Color.White.copy(alpha = 0.12f),
                start = Offset(paddingPx, centerY),
                end = Offset(size.width - paddingPx, centerY),
                strokeWidth = 1.dp.toPx(),
                cap = StrokeCap.Round
            )

            // 2. 偏移高亮线段（从零点到当前位置）
            if (currentIndex != zeroIndex) {
                drawLine(
                    color = accentColor.copy(alpha = 0.8f),
                    start = Offset(zeroX, centerY),
                    end = Offset(currentX, centerY),
                    strokeWidth = 2.dp.toPx(),
                    cap = StrokeCap.Round
                )
            }

            // 3. 刻度线
            values.forEachIndexed { index, value ->
                if (index != currentIndex) {
                    val x = paddingPx + index * stepWidth
                    val isZero = index == zeroIndex
                    val isMajor = isMajorTick(value)

                    val pipHeight: Float
                    val pipWidth: Float
                    val pipColor: Color

                    when {
                        isZero -> {
                            pipHeight = 11.dp.toPx()
                            pipWidth = 1.5.dp.toPx()
                            pipColor = Color.White.copy(alpha = 0.75f)
                        }
                        isMajor -> {
                            pipHeight = 8.dp.toPx()
                            pipWidth = 1.2.dp.toPx()
                            pipColor = Color.White.copy(alpha = 0.42f)
                        }
                        else -> {
                            pipHeight = 4.5.dp.toPx()
                            pipWidth = 1.dp.toPx()
                            pipColor = Color.White.copy(alpha = 0.2f)
                        }
                    }

                    drawLine(
                        color = pipColor,
                        start = Offset(x, centerY - pipHeight / 2f),
                        end = Offset(x, centerY + pipHeight / 2f),
                        strokeWidth = pipWidth,
                        cap = StrokeCap.Round
                    )
                }
            }

            // 4. 当前选中位置：纯平游标指示针
            val cursorHeight = 16.dp.toPx()
            val cursorWidth = 2.5.dp.toPx()

            drawLine(
                color = accentColor,
                start = Offset(currentX, centerY - cursorHeight / 2f),
                end = Offset(currentX, centerY + cursorHeight / 2f),
                strokeWidth = cursorWidth,
                cap = StrokeCap.Round
            )
        }
    }
}

@Composable
private fun RecipeIntegerParamItem(
    param: RecipeParam,
    value: Float,
    onValueChange: (Float) -> Unit,
    modifier: Modifier = Modifier
) {
    val displayRange = param.displayValueRange()
    val isSigned = displayRange.start < 0f
    val currentInt = param.toDisplayValue(value).roundToInt()
    val accent = getParamColor(param)
    val haptic = LocalHapticFeedback.current

    val rulerValues = if (isSigned) {
        (-10..10).map { it.toFloat() }
    } else {
        (0..10).map { it.toFloat() }
    }

    Column(
        modifier = modifier
            .clip(RoundedCornerShape(10.dp))
            .background(Color(0xFF16171B).copy(alpha = 0.85f))
            .border(0.5.dp, Color.White.copy(alpha = 0.07f), RoundedCornerShape(10.dp))
            .pointerInput(param) {
                detectTapGestures(
                    onDoubleTap = {
                        haptic.performHapticFeedback(HapticFeedbackType.LongPress)
                        onValueChange(param.defaultValue)
                    }
                )
            }
            .padding(horizontal = 10.dp, vertical = 5.dp),
        verticalArrangement = Arrangement.spacedBy(1.dp)
    ) {
        Row(
            modifier = Modifier.fillMaxWidth(),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.SpaceBetween
        ) {
            Row(
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(6.dp)
            ) {
                Box(
                    modifier = Modifier
                        .size(6.dp)
                        .clip(CircleShape)
                        .background(accent)
                )
                Text(
                    text = stringResource(param.displayNameRes),
                    color = Color.White.copy(alpha = 0.8f),
                    fontSize = 11.sp,
                    fontWeight = FontWeight.Medium
                )
            }

            Text(
                text = formatIntegerDisplayValue(currentInt, isSigned),
                color = accent,
                fontSize = 13.sp,
                fontWeight = FontWeight.Bold,
                fontFamily = FontFamily.Monospace
            )
        }

        RecipeScaleRuler(
            values = rulerValues,
            currentValue = currentInt.toFloat(),
            onValueChange = { selectedDisplayVal ->
                onValueChange(param.fromDisplayValue(selectedDisplayVal))
            },
            onDoubleTap = {
                onValueChange(param.defaultValue)
            },
            accentColor = accent,
            isMajorTick = { if (isSigned) it.toInt() % 5 == 0 else it.toInt() == 0 || it.toInt() == 5 || it.toInt() == 10 },
            zeroValue = 0f,
            height = 22.dp,
            modifier = Modifier.fillMaxWidth()
        )
    }
}

@Composable
private fun RecipeEffectParamItem(
    effect: EffectType,
    value: Float,
    onValueChange: (Float) -> Unit,
    modifier: Modifier = Modifier
) {
    RecipeIntegerParamItem(
        param = effect.recipeParam,
        value = value,
        onValueChange = onValueChange,
        modifier = modifier
    )
}

@Composable
private fun RecipeAdvancedTabs(
    tabs: List<Pair<RecipePanelTab, Int>>,
    selectedTab: RecipePanelTab,
    onTabSelected: (RecipePanelTab) -> Unit,
    onTabReset: (RecipePanelTab) -> Unit,
) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .height(36.dp)
            .horizontalScroll(rememberScrollState()),
        horizontalArrangement = Arrangement.spacedBy(5.dp),
    ) {
        tabs.forEach { (tab, title) ->
            val selected = selectedTab == tab
            val backgroundColor by animateColorAsState(
                if (selected) Color.White.copy(alpha = 0.14f) else Color.White.copy(alpha = 0.035f),
                label = "advancedTabBackground",
            )
            Box(
                modifier = Modifier
                    .fillMaxHeight()
                    .clip(RoundedCornerShape(9.dp))
                    .background(backgroundColor)
                    .pointerInput(tab) {
                        detectTapGestures(
                            onTap = { onTabSelected(tab) },
                            onDoubleTap = {
                                onTabSelected(tab)
                                onTabReset(tab)
                            },
                        )
                    }
                    .padding(horizontal = 14.dp),
                contentAlignment = Alignment.Center,
            ) {
                Text(
                    text = stringResource(title),
                    color = if (selected) Color.White else Color.White.copy(alpha = 0.5f),
                    fontSize = 11.sp,
                    fontWeight = if (selected) FontWeight.SemiBold else FontWeight.Normal,
                    maxLines = 1,
                )
            }
        }
    }
}

@Composable
private fun ColorSectionTabs(
    selectedSection: ColorPanelSection,
    onSectionSelected: (ColorPanelSection) -> Unit,
    modifier: Modifier = Modifier
) {
    val tabs = listOf(
        ColorPanelSection.CALIBRATION to R.string.recipe_tab_calibration,
        ColorPanelSection.GRADING to R.string.recipe_color_grading,
        ColorPanelSection.LCH to R.string.recipe_tab_lch,
        ColorPanelSection.STYLE to R.string.recipe_color_style,
    )
    RecipeSectionTabs(
        tabs = tabs,
        selectedTab = selectedSection,
        onTabSelected = onSectionSelected,
        modifier = modifier
    )
}

@Composable
private fun EffectSectionTabs(
    selectedSection: EffectSection,
    onSectionSelected: (EffectSection) -> Unit,
    modifier: Modifier = Modifier
) {
    val tabs = listOf(
        EffectSection.LIGHT to R.string.effects_group_light,
        EffectSection.OPTICS to R.string.effects_group_optics,
        EffectSection.TEXTURE to R.string.effects_group_texture,
    )
    RecipeSectionTabs(
        tabs = tabs,
        selectedTab = selectedSection,
        onTabSelected = onSectionSelected,
        modifier = modifier
    )
}

@Composable
internal fun <T> RecipeSectionTabs(
    tabs: List<Pair<T, Int>>,
    selectedTab: T,
    onTabSelected: (T) -> Unit,
    modifier: Modifier = Modifier
) {
    Row(
        modifier = modifier
            .fillMaxWidth()
            .background(Color.White.copy(alpha = 0.04f), RoundedCornerShape(8.dp))
            .padding(3.dp),
        horizontalArrangement = Arrangement.spacedBy(4.dp)
    ) {
        tabs.forEach { (tab, title) ->
            val selected = tab == selectedTab
            Text(
                text = stringResource(title),
                color = if (selected) Color.White else Color.White.copy(alpha = 0.5f),
                fontSize = if (tabs.size > 3) 10.sp else 11.sp,
                fontWeight = if (selected) FontWeight.Bold else FontWeight.Normal,
                textAlign = TextAlign.Center,
                modifier = Modifier
                    .weight(1f)
                    .clip(RoundedCornerShape(6.dp))
                    .background(if (selected) Color.White.copy(alpha = 0.14f) else Color.Transparent)
                    .clickable { onTabSelected(tab) }
                    .padding(vertical = 6.dp)
            )
        }
    }
}

private fun ColorRecipeParams.resetColorGrading(): ColorRecipeParams {
    return copy(
        gradingShadowHue = 0f,
        gradingShadowAmount = 0f,
        gradingShadowLuminance = 0f,
        gradingMidtoneHue = 0f,
        gradingMidtoneAmount = 0f,
        gradingMidtoneLuminance = 0f,
        gradingHighlightHue = 0f,
        gradingHighlightAmount = 0f,
        gradingHighlightLuminance = 0f,
        gradingBalance = 0f,
        gradingBlending = 0.5f,
    )
}

private fun resetParams(
    currentParams: ColorRecipeParams,
    params: List<RecipeParam>
): ColorRecipeParams {
    return params.fold(currentParams) { updatedParams, param ->
        param.setValue(updatedParams, param.defaultValue)
    }
}

@Composable
private fun ColorRingTabs(
    count: Int,
    selectedTabIndex: Int,
    onTabSelected: (Int) -> Unit,
    getColor: (Int) -> Color,
    modifier: Modifier = Modifier
) {
    Row(
        modifier = modifier.fillMaxWidth(),
        horizontalArrangement = Arrangement.SpaceEvenly
    ) {
        for (indexInRow in 0 until count) {
            val isSelected = selectedTabIndex == indexInRow
            val ringColor = getColor(indexInRow)

            Box(
                modifier = Modifier
                    .weight(1f)
                    .clip(CircleShape)
                    .clickable { onTabSelected(indexInRow) }
                    .padding(5.dp),
                contentAlignment = Alignment.Center
            ) {
                LchColorChip(
                    color = ringColor,
                    isSelected = isSelected
                )
            }
        }
    }
}

@Composable
private fun LchColorChip(
    color: Color,
    isSelected: Boolean,
    modifier: Modifier = Modifier
) {
    Box(
        modifier = modifier.size(26.dp),
        contentAlignment = Alignment.Center
    ) {
        Box(
            modifier = Modifier
                .size(if (isSelected) 26.dp else 22.dp)
                .border(
                    width = if (isSelected) 2.5.dp else 2.dp,
                    color = color,
                    shape = CircleShape
                )
        )

        if (isSelected) {
            Box(
                modifier = Modifier
                    .size(9.dp)
                    .background(color, CircleShape)
                    .border(
                        width = 1.dp,
                        color = Color.White.copy(alpha = 0.9f),
                        shape = CircleShape
                    )
            )
        }
    }
}

private fun getLchTabColor(index: Int): Color {
    return when (index) {
        0 -> Color(0xFFD8A47F)
        1 -> Color(0xFFFF3B30)
        2 -> Color(0xFFFF9F0A)
        3 -> Color(0xFFFFE100)
        4 -> Color(0xFF6BCB3C)
        5 -> Color(0xFF12D7F2)
        6 -> Color(0xFF3D63D8)
        7 -> Color(0xFF9B30FF)
        8 -> Color(0xFFFF2DFF)
        else -> Color.White
    }
}

/**
 * 色彩配方备注栏
 */
@Composable
fun ColorRecipeRemarksBar(
    remarks: String,
    onRemarksChange: (String) -> Unit,
    modifier: Modifier = Modifier
) {
    var text by remember(remarks) { mutableStateOf(remarks) }

    BasicTextField(
        value = text,
        onValueChange = {
            text = it
            onRemarksChange(it)
        },
        modifier = modifier
            .fillMaxWidth()
            .clip(RoundedCornerShape(12.dp))
            .background(Color(0xFF16171B))
            .border(0.5.dp, Color.White.copy(alpha = 0.08f), RoundedCornerShape(12.dp))
            .padding(12.dp)
            .heightIn(min = 100.dp, max = 260.dp),
        textStyle = TextStyle(
            color = Color.White,
            fontSize = 12.sp,
            lineHeight = 16.sp,
        ),
        cursorBrush = SolidColor(Color.White),
        keyboardOptions = KeyboardOptions(
            imeAction = ImeAction.Default
        ),
        decorationBox = { innerTextField ->
            if (text.isEmpty()) {
                Text(
                    text = stringResource(R.string.recipe_placeholder_remarks),
                    color = Color.White.copy(alpha = 0.25f),
                    fontSize = 12.sp,
                    lineHeight = 16.sp,
                )
            }
            innerTextField()
        }
    )
}

/**
 * 色彩配方参数滑块（保持旧版调用兼容性）
 */
@Composable
fun ColorRecipeSlider(
    param: RecipeParam,
    value: Float,
    onValueChange: (Float) -> Unit,
    onDoubleTap: () -> Unit = {},
    modifier: Modifier = Modifier
) {
    RecipeIntegerParamItem(
        param = param,
        value = value,
        onValueChange = onValueChange,
        modifier = modifier
    )
}

/**
 * 获取参数对应的强调色
 */
private fun getParamColor(param: RecipeParam): Color {
    return when (param) {
        RecipeParam.EXPOSURE -> Color(0xFFFFEB3B)
        RecipeParam.CONTRAST -> Color(0xFFC18CFF)
        RecipeParam.SATURATION -> Color(0xFFFF668D)
        RecipeParam.TEMPERATURE -> Color(0xFFFF9800)
        RecipeParam.TINT -> Color(0xFF4CAF50)
        RecipeParam.FADE -> Color(0xFF607D8B)
        RecipeParam.COLOR -> Color(0xFF2196F3)
        RecipeParam.HIGHLIGHTS -> Color(0xFFFF8D74)
        RecipeParam.SHADOWS -> Color(0xFF748FFF)
        RecipeParam.SKIN_HUE,
        RecipeParam.SKIN_CHROMA,
        RecipeParam.SKIN_LIGHTNESS -> Color(0xFFD7A27A)
        RecipeParam.RED_HUE,
        RecipeParam.RED_CHROMA,
        RecipeParam.RED_LIGHTNESS,
        RecipeParam.PRIMARY_RED_HUE,
        RecipeParam.PRIMARY_RED_SATURATION,
        RecipeParam.PRIMARY_RED_LIGHTNESS -> Color(0xFFE53935)
        RecipeParam.ORANGE_HUE,
        RecipeParam.ORANGE_CHROMA,
        RecipeParam.ORANGE_LIGHTNESS -> Color(0xFFFB8C00)
        RecipeParam.YELLOW_HUE,
        RecipeParam.YELLOW_CHROMA,
        RecipeParam.YELLOW_LIGHTNESS -> Color(0xFFFDD835)
        RecipeParam.GREEN_HUE,
        RecipeParam.GREEN_CHROMA,
        RecipeParam.GREEN_LIGHTNESS,
        RecipeParam.PRIMARY_GREEN_HUE,
        RecipeParam.PRIMARY_GREEN_SATURATION,
        RecipeParam.PRIMARY_GREEN_LIGHTNESS -> Color(0xFF43A047)
        RecipeParam.CYAN_HUE,
        RecipeParam.CYAN_CHROMA,
        RecipeParam.CYAN_LIGHTNESS -> Color(0xFF00ACC1)
        RecipeParam.BLUE_HUE,
        RecipeParam.BLUE_CHROMA,
        RecipeParam.BLUE_LIGHTNESS,
        RecipeParam.PRIMARY_BLUE_HUE,
        RecipeParam.PRIMARY_BLUE_SATURATION,
        RecipeParam.PRIMARY_BLUE_LIGHTNESS -> Color(0xFF1E88E5)
        RecipeParam.PURPLE_HUE,
        RecipeParam.PURPLE_CHROMA,
        RecipeParam.PURPLE_LIGHTNESS -> Color(0xFF8E24AA)
        RecipeParam.MAGENTA_HUE,
        RecipeParam.MAGENTA_CHROMA,
        RecipeParam.MAGENTA_LIGHTNESS -> Color(0xFFD81B60)
        RecipeParam.FILM_GRAIN -> Color(0xFFB7B7B7)
        RecipeParam.NOISE -> Color(0xFFA1887F)
        RecipeParam.VIGNETTE -> Color(0xFFB38A74)
        RecipeParam.FLASH -> Color(0xFFE3F2FD)
        RecipeParam.BLEACH_BYPASS -> Color(0xFF00BCD4)
        RecipeParam.CLARITY -> Color(0xFF55D6C2)
        RecipeParam.SHARPNESS -> Color(0xFF7BD7FF)
        RecipeParam.BLOOM -> Color(0xFFFFD54F)
        RecipeParam.SOFT_LIGHT -> Color(0xFFE8E1D4)
        RecipeParam.HDF -> Color(0xFFFFC107)
        RecipeParam.HALATION -> Color(0xFFFF7043)
        RecipeParam.CHROMATIC_ABERRATION -> Color(0xFFAB47BC)
        RecipeParam.LOW_RES -> Color(0xFF8D6E63)
        RecipeParam.LUT_INTENSITY -> Color(0xFF9E9E9E)
    }
}
