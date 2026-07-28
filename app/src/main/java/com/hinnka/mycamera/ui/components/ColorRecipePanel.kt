package com.hinnka.mycamera.ui.components

import androidx.compose.animation.animateColorAsState
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.gestures.detectTapGestures
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Refresh
import androidx.compose.material3.Icon
import androidx.compose.material3.Text
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.ui.res.stringResource
import androidx.compose.foundation.text.BasicTextField
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.text.TextStyle
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.ui.text.input.ImeAction
import com.hinnka.mycamera.R
import com.hinnka.mycamera.model.ColorPaletteState
import com.hinnka.mycamera.model.ColorRecipeParams
import com.hinnka.mycamera.model.EffectParams
import com.hinnka.mycamera.model.RecipeParam

private enum class RecipePanelTab {
    PALETTE,
    LIGHT,
    CURVE,
    COLOR,
    TEXTURE,
    LENS,
    EFFECTS,
    REMARKS,
}

private enum class ColorPanelSection {
    BASIC,
    CALIBRATION,
    LCH,
}

/**
 * 色彩配方控制面板
 *
 * 色彩调整与物理效果共用同一组一级菜单。校准和 LCH 收纳在颜色的二级菜单中。
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
    optionControls: (@Composable () -> Unit)? = null,
    modifier: Modifier = Modifier
) {
    val isBakeable: (RecipeParam) -> Boolean = { param ->
        param != RecipeParam.VIGNETTE &&
        param != RecipeParam.FILM_GRAIN &&
        param != RecipeParam.BLOOM &&
        param != RecipeParam.SOFT_LIGHT &&
        param != RecipeParam.HDF &&
        param != RecipeParam.HALATION &&
        param != RecipeParam.CHROMATIC_ABERRATION &&
        param != RecipeParam.NOISE &&
        param != RecipeParam.LOW_RES
    }

    var selectedTab by remember { mutableStateOf(RecipePanelTab.PALETTE) }
    var selectedColorSection by remember { mutableStateOf(ColorPanelSection.BASIC) }
    var selectedLchTabIndex by remember { mutableIntStateOf(0) }
    var selectedCalibrationTabIndex by remember { mutableIntStateOf(0) }
    val showEffects = currentEffects != null && onEffectsChange != null

    val tabs = buildList {
        add(RecipePanelTab.PALETTE to R.string.recipe_tab_palette)
        add(RecipePanelTab.LIGHT to R.string.recipe_tab_light)
        add(RecipePanelTab.CURVE to R.string.recipe_tab_curve)
        add(RecipePanelTab.COLOR to R.string.recipe_tab_color)
        add(RecipePanelTab.TEXTURE to R.string.recipe_tab_texture)
        if (!hideNonBakeable) add(RecipePanelTab.LENS to R.string.recipe_tab_lens)
        if (showEffects) add(RecipePanelTab.EFFECTS to R.string.effects_title)
        if (!hideNonBakeable) add(RecipePanelTab.REMARKS to R.string.recipe_tab_remarks)
    }
    val parameterGroups = mapOf(
        RecipePanelTab.LIGHT to listOf(
            RecipeParam.EXPOSURE,
            RecipeParam.CONTRAST,
            RecipeParam.HIGHLIGHTS,
            RecipeParam.SHADOWS,
        ),
        RecipePanelTab.COLOR to listOf(
            RecipeParam.SATURATION,
            RecipeParam.TEMPERATURE,
            RecipeParam.TINT,
            RecipeParam.COLOR
        ),
        RecipePanelTab.TEXTURE to listOf(
            RecipeParam.VIGNETTE,
            RecipeParam.FILM_GRAIN,
            RecipeParam.FADE,
            RecipeParam.BLEACH_BYPASS,
        ),
        RecipePanelTab.LENS to listOf(
            RecipeParam.HALATION,
            RecipeParam.CHROMATIC_ABERRATION,
            RecipeParam.NOISE,
            RecipeParam.LOW_RES,
        )
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

    fun resetTab(tab: RecipePanelTab) {
        when (tab) {
            RecipePanelTab.PALETTE -> {
                val defaultPaletteState = ColorPaletteState.DEFAULT
                onParamsChange(
                    currentParams.copy(
                        paletteX = defaultPaletteState.x,
                        paletteY = defaultPaletteState.y,
                        paletteDensity = defaultPaletteState.density
                    )
                )
            }
            RecipePanelTab.CURVE -> onParamsChange(
                currentParams.copy(
                    masterCurvePoints = null,
                    redCurvePoints = null,
                    greenCurvePoints = null,
                    blueCurvePoints = null
                )
            )
            RecipePanelTab.COLOR -> onParamsChange(
                resetParams(
                    currentParams,
                    parameterGroups[RecipePanelTab.COLOR].orEmpty() +
                        calibrationGroups.flatMap { it.second } +
                        lchGroups.flatMap { it.second }
                )
            )
            RecipePanelTab.EFFECTS -> onEffectsChange?.invoke(EffectParams.DEFAULT)
            RecipePanelTab.REMARKS -> Unit
            else -> {
                val allParams = parameterGroups[tab].orEmpty()
                val params = if (hideNonBakeable) allParams.filter(isBakeable) else allParams
                if (params.isNotEmpty()) {
                    onParamsChange(resetParams(currentParams, params))
                }
            }
        }
    }

    fun resetAllParams() {
        if (!hideNonBakeable) {
            onParamsChange(ColorRecipeParams.DEFAULT)
            onEffectsChange?.invoke(EffectParams.DEFAULT)
            return
        }

        val defaultPaletteState = ColorPaletteState.DEFAULT
        val visibleParams = parameterGroups
            .values
            .flatten()
            .filter(isBakeable) +
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
                ),
                visibleParams
            )
        )
        onEffectsChange?.invoke(EffectParams.DEFAULT)
    }

    val sectionBackgroundColor = Color.Transparent

    Column(
        modifier = modifier.fillMaxWidth(),
        verticalArrangement = Arrangement.spacedBy(10.dp)
    ) {
        if (showLutIntensity) {
            Column(
                modifier = Modifier
                    .fillMaxWidth()
                    .clip(RoundedCornerShape(10.dp))
                    .background(sectionBackgroundColor)
            ) {
                LutIntensitySlider(
                    intensity = currentParams.lutIntensity,
                    onIntensityChange = {
                        onParamChange(RecipeParam.LUT_INTENSITY, it)
                    }
                )
            }
        }

        optionControls?.let { controls ->
            Column(
                modifier = Modifier
                    .fillMaxWidth()
                    .clip(RoundedCornerShape(10.dp))
                    .background(sectionBackgroundColor)
            ) {
                controls()
            }
        }

        Column(
            modifier = Modifier
                .fillMaxWidth()
                .clip(RoundedCornerShape(10.dp))
                .background(sectionBackgroundColor)
        ) {
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(start = 12.dp, top = 9.dp, end = 8.dp, bottom = 8.dp),
                verticalAlignment = Alignment.CenterVertically
            ) {
                Text(
                    text = stringResource(R.string.edit),
                    color = Color.White.copy(alpha = 0.82f),
                    fontSize = 12.sp,
                    fontWeight = FontWeight.Medium,
                    modifier = Modifier.weight(1f)
                )
                Row(
                    modifier = Modifier
                        .height(28.dp)
                        .clip(RoundedCornerShape(14.dp))
                        .background(Color.White.copy(alpha = 0.1f))
                        .clickable { resetAllParams() }
                        .padding(horizontal = 9.dp),
                    verticalAlignment = Alignment.CenterVertically,
                    horizontalArrangement = Arrangement.spacedBy(4.dp)
                ) {
                    Icon(
                        imageVector = Icons.Default.Refresh,
                        contentDescription = null,
                        tint = Color.White.copy(alpha = 0.78f),
                        modifier = Modifier.size(14.dp)
                    )
                    Text(
                        text = stringResource(R.string.color_recipe_reset_all),
                        color = Color.White.copy(alpha = 0.78f),
                        fontSize = 9.sp,
                        fontWeight = FontWeight.Medium,
                        maxLines = 1
                    )
                }
            }

            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .height(42.dp)
                    .padding(horizontal = 8.dp, vertical = 3.dp),
                horizontalArrangement = Arrangement.spacedBy(4.dp)
            ) {
                tabs.forEach { (tab, title) ->
                    val isSelected = selectedTab == tab
                    val backgroundColor by animateColorAsState(
                        if (isSelected) Color.White.copy(alpha = 0.18f) else Color.Transparent,
                        label = "tabBackground"
                    )

                    Box(
                        modifier = Modifier
                            .weight(1f)
                            .fillMaxHeight()
                            .clip(RoundedCornerShape(6.dp))
                            .background(backgroundColor)
                            .pointerInput(tab, currentParams, currentEffects) {
                                detectTapGestures(
                                    onTap = {
                                        selectedTab = tab
                                    },
                                    onDoubleTap = {
                                        selectedTab = tab
                                        resetTab(tab)
                                    }
                                )
                            },
                        contentAlignment = Alignment.Center
                    ) {
                        Text(
                            text = stringResource(title),
                            fontSize = if (tabs.size > 6) 9.sp else 10.sp,
                            fontWeight = if (isSelected) FontWeight.Bold else FontWeight.Normal,
                            color = if (isSelected) Color.White else Color.White.copy(alpha = 0.58f),
                            textAlign = TextAlign.Center,
                            maxLines = 1,
                            softWrap = false,
                            overflow = TextOverflow.Clip,
                            modifier = Modifier
                                .fillMaxWidth()
                                .padding(horizontal = 1.dp)
                        )
                    }
                }
            }

            Spacer(modifier = Modifier.height(8.dp))

            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(start = 10.dp, end = 10.dp, bottom = 10.dp),
                contentAlignment = Alignment.TopCenter
            ) {
                Column(
                    modifier = Modifier.fillMaxWidth(),
                    verticalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    when (selectedTab) {
                        RecipePanelTab.PALETTE -> {
                            ColorRecipePalettePanel(
                                paletteState = paletteState,
                                onPaletteStateChange = onPaletteStateChange,
                                modifier = Modifier.fillMaxWidth()
                            )
                        }
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
                            when (selectedColorSection) {
                                ColorPanelSection.BASIC -> {
                                    parameterGroups[RecipePanelTab.COLOR].orEmpty().forEach { param ->
                                        RecipeParamSlider(
                                            param = param,
                                            currentParams = currentParams,
                                            onParamChange = onParamChange
                                        )
                                    }
                                }
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
                                    calibrationGroups[selectedCalibrationTabIndex].second.forEach { param ->
                                        RecipeParamSlider(
                                            param = param,
                                            currentParams = currentParams,
                                            onParamChange = onParamChange
                                        )
                                    }
                                }
                                ColorPanelSection.LCH -> {
                                    ColorRingTabs(
                                        count = lchGroups.size,
                                        selectedTabIndex = selectedLchTabIndex,
                                        onTabSelected = { selectedLchTabIndex = it },
                                        getColor = { getLchTabColor(it) }
                                    )
                                    lchGroups[selectedLchTabIndex].second.forEach { param ->
                                        RecipeParamSlider(
                                            param = param,
                                            currentParams = currentParams,
                                            onParamChange = onParamChange
                                        )
                                    }
                                }
                            }
                        }
                        RecipePanelTab.EFFECTS -> {
                            if (currentEffects != null && onEffectsChange != null) {
                                EffectsPanel(
                                    currentParams = currentEffects,
                                    onParamsChange = onEffectsChange,
                                    modifier = Modifier.fillMaxWidth()
                                )
                            }
                        }
                        RecipePanelTab.REMARKS -> {
                            ColorRecipeRemarksBar(
                                remarks = currentParams.remarks ?: "",
                                onRemarksChange = onRemarksChange,
                                modifier = Modifier.fillMaxWidth()
                            )
                        }
                        else -> {
                            val allParams = parameterGroups[selectedTab].orEmpty()
                            val visibleParams = if (hideNonBakeable) {
                                allParams.filter(isBakeable)
                            } else {
                                allParams
                            }
                            visibleParams.forEach { param ->
                                RecipeParamSlider(
                                    param = param,
                                    currentParams = currentParams,
                                    onParamChange = onParamChange
                                )
                            }
                        }
                    }
                }
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
        ColorPanelSection.BASIC to R.string.recipe_color_basic,
        ColorPanelSection.CALIBRATION to R.string.recipe_tab_calibration,
        ColorPanelSection.LCH to R.string.recipe_tab_lch,
    )
    Row(
        modifier = modifier
            .fillMaxWidth()
            .background(Color.White.copy(alpha = 0.04f), RoundedCornerShape(8.dp))
            .padding(3.dp),
        horizontalArrangement = Arrangement.spacedBy(4.dp)
    ) {
        tabs.forEach { (section, title) ->
            val selected = section == selectedSection
            Text(
                text = stringResource(title),
                color = if (selected) Color.White else Color.White.copy(alpha = 0.5f),
                fontSize = 11.sp,
                fontWeight = if (selected) FontWeight.Bold else FontWeight.Normal,
                textAlign = TextAlign.Center,
                modifier = Modifier
                    .weight(1f)
                    .clip(RoundedCornerShape(6.dp))
                    .background(if (selected) Color.White.copy(alpha = 0.14f) else Color.Transparent)
                    .clickable { onSectionSelected(section) }
                    .padding(vertical = 7.dp)
            )
        }
    }
}

@Composable
private fun RecipeParamSlider(
    param: RecipeParam,
    currentParams: ColorRecipeParams,
    onParamChange: (RecipeParam, Float) -> Unit
) {
    key(param) {
        ColorRecipeSlider(
            param = param,
            value = param.getValue(currentParams),
            onValueChange = { onParamChange(param, it) },
            onDoubleTap = { onParamChange(param, param.defaultValue) }
        )
    }
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
                    .padding(6.dp),
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
        modifier = modifier.size(28.dp),
        contentAlignment = Alignment.Center
    ) {
        Box(
            modifier = Modifier
                .size(if (isSelected) 28.dp else 24.dp)
                .border(
                    width = if (isSelected) 3.dp else 2.5.dp,
                    color = color,
                    shape = CircleShape
                )
        )

        if (isSelected) {
            Box(
                modifier = Modifier
                    .size(10.dp)
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
            onRemarksChange(it) // 实时保存
        },
        modifier = Modifier.fillMaxWidth().heightIn(min = 120.dp, max = 300.dp),
        textStyle = TextStyle(
            color = Color.White,
            fontSize = 11.sp,
            lineHeight = 15.sp,
        ),
        cursorBrush = SolidColor(Color.White),
        keyboardOptions = KeyboardOptions(
            imeAction = ImeAction.Default // 允许换行
        ),
        decorationBox = { innerTextField ->
            if (text.isEmpty()) {
                Text(
                    text = stringResource(R.string.recipe_placeholder_remarks),
                    color = Color.White.copy(alpha = 0.25f),
                    fontSize = 11.sp,
                    lineHeight = 15.sp,
                )
            }
            innerTextField()
        }
    )
}

/**
 * 色彩配方参数滑块
 */
@Composable
fun ColorRecipeSlider(
    param: RecipeParam,
    value: Float,
    onValueChange: (Float) -> Unit,
    onDoubleTap: () -> Unit,
    modifier: Modifier = Modifier
) {
    Column(
        modifier = modifier.fillMaxWidth()
    ) {
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Text(
                text = stringResource(param.displayNameRes),
                color = Color.White,
                fontSize = 11.sp,
                modifier = Modifier.weight(1f)
            )

            Text(
                text = formatParamValue(param, value),
                color = Color.White.copy(alpha = 0.8f),
                fontSize = 10.sp,
                fontWeight = FontWeight.Medium,
                textAlign = TextAlign.End,
                modifier = Modifier.width(50.dp)
            )
        }

        CustomSlider(
            value = value,
            onValueChange = onValueChange,
            onDoubleTap = onDoubleTap,
            valueRange = param.minValue..param.maxValue,
            activeTrackColor = getParamColor(param),
            inactiveTrackColor = Color.Gray.copy(alpha = 0.3f),
            thumbColor = Color.White,
            modifier = Modifier.fillMaxWidth()
        )
    }
}

/**
 * 格式化参数值显示
 */
private fun formatParamValue(param: RecipeParam, value: Float): String {
    return when (param) {
        RecipeParam.EXPOSURE -> String.format("%.1f EV", value)
        RecipeParam.CONTRAST,
        RecipeParam.SATURATION,
        RecipeParam.COLOR -> String.format("%.2f", value)

        RecipeParam.TEMPERATURE,
        RecipeParam.TINT,
        RecipeParam.HIGHLIGHTS,
        RecipeParam.SHADOWS,
        RecipeParam.SKIN_HUE,
        RecipeParam.SKIN_CHROMA,
        RecipeParam.SKIN_LIGHTNESS,
        RecipeParam.RED_HUE,
        RecipeParam.RED_CHROMA,
        RecipeParam.RED_LIGHTNESS,
        RecipeParam.ORANGE_HUE,
        RecipeParam.ORANGE_CHROMA,
        RecipeParam.ORANGE_LIGHTNESS,
        RecipeParam.YELLOW_HUE,
        RecipeParam.YELLOW_CHROMA,
        RecipeParam.YELLOW_LIGHTNESS,
        RecipeParam.GREEN_HUE,
        RecipeParam.GREEN_CHROMA,
        RecipeParam.GREEN_LIGHTNESS,
        RecipeParam.CYAN_HUE,
        RecipeParam.CYAN_CHROMA,
        RecipeParam.CYAN_LIGHTNESS,
        RecipeParam.BLUE_HUE,
        RecipeParam.BLUE_CHROMA,
        RecipeParam.BLUE_LIGHTNESS,
        RecipeParam.PURPLE_HUE,
        RecipeParam.PURPLE_CHROMA,
        RecipeParam.PURPLE_LIGHTNESS,
        RecipeParam.MAGENTA_HUE,
        RecipeParam.MAGENTA_CHROMA,
        RecipeParam.MAGENTA_LIGHTNESS,
        RecipeParam.PRIMARY_RED_HUE,
        RecipeParam.PRIMARY_RED_SATURATION,
        RecipeParam.PRIMARY_RED_LIGHTNESS,
        RecipeParam.PRIMARY_GREEN_HUE,
        RecipeParam.PRIMARY_GREEN_SATURATION,
        RecipeParam.PRIMARY_GREEN_LIGHTNESS,
        RecipeParam.PRIMARY_BLUE_HUE,
        RecipeParam.PRIMARY_BLUE_SATURATION,
        RecipeParam.PRIMARY_BLUE_LIGHTNESS,
        RecipeParam.VIGNETTE -> {
            if (value >= 0) {
                String.format("+%.2f", value)
            } else {
                String.format("%.2f", value)
            }
        }

        RecipeParam.FADE,
        RecipeParam.FILM_GRAIN,
        RecipeParam.NOISE,
        RecipeParam.LOW_RES,
        RecipeParam.BLEACH_BYPASS,
        RecipeParam.BLOOM,
        RecipeParam.SOFT_LIGHT,
        RecipeParam.HDF,
        RecipeParam.HALATION,
        RecipeParam.CHROMATIC_ABERRATION -> String.format("%.2f", value)

        RecipeParam.LUT_INTENSITY -> String.format("%.2f", value)
    }
}

/**
 * 获取参数对应的颜色（用于滑块）
 */
private fun getParamColor(param: RecipeParam): Color {
    return when (param) {
        RecipeParam.EXPOSURE -> Color(0xFFFFEB3B) // 黄色
        RecipeParam.CONTRAST -> Color(0xFF9C27B0) // 紫色
        RecipeParam.SATURATION -> Color(0xFFE91E63) // 粉色
        RecipeParam.TEMPERATURE -> Color(0xFFFF9800) // 橙色
        RecipeParam.TINT -> Color(0xFF4CAF50) // 绿色
        RecipeParam.FADE -> Color(0xFF607D8B) // 灰蓝色
        RecipeParam.COLOR -> Color(0xFF2196F3) // 蓝色
        RecipeParam.HIGHLIGHTS -> Color(0xFFF44336) // 红色
        RecipeParam.SHADOWS -> Color(0xFF3F51B5) // 深蓝色
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
        RecipeParam.FILM_GRAIN -> Color(0xFF9E9E9E) // 灰色
        RecipeParam.NOISE -> Color(0xFFA1887F) // 浅棕色
        RecipeParam.VIGNETTE -> Color(0xFF795548) // 棕色
        RecipeParam.BLEACH_BYPASS -> Color(0xFF00BCD4) // 青色
        RecipeParam.BLOOM -> Color(0xFFFFD54F) // 泛光
        RecipeParam.SOFT_LIGHT -> Color(0xFFE8E1D4) // 柔光
        RecipeParam.HDF -> Color(0xFFFFC107) // 暖黄色（高光扩散）
        RecipeParam.HALATION -> Color(0xFFFF7043) // 暖橙色（胶片光晕）
        RecipeParam.CHROMATIC_ABERRATION -> Color(0xFFAB47BC) // 紫色（色散）
        RecipeParam.LOW_RES -> Color(0xFF8D6E63) // 棕灰色（低像素）
        RecipeParam.LUT_INTENSITY -> Color(0xFF9E9E9E) // 灰色
    }
}
